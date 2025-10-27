const ReturnAndReplacement = require('../models/returnAndReplacementModel');
const SaleDetails = require('../models/saleDetailsModel');
const StockAdjustment = require('../models/stockAdjustmentModel');
const StockAdjustmentDetail = require('../models/stockAdjustmentDetailsModel');
const { QueryTypes } = require('sequelize');

exports.getAllReturnAndReplacements = async (req, res) => {
    try {
        // Return enriched payload joining related tables so frontend can render a full history view
        const sql = `
        SELECT
            r.return_id,
            r.sale_detail_id,
            r.quantity,
            r.reason,
            r.action_type,
            r.return_status,
            r.transaction_date,
            s.sale_id,
            s.sale_date,
            s.cashier,
            s.manager,
            sd.product_id AS original_product_id,
            sd.quantity_sold AS original_quantity,
            p.product_name AS original_product_name,
            p.price AS original_price,
            rp.product_id AS replacement_product_id,
            rp.product_name AS replacement_product_name,
            st.description AS status_description,
            src.status_reference_code AS status_type,
            sa.adjustment_id,
            sa.adjustment_type,
            sa.transaction_date AS adjustment_date,
            sa.processed_by AS adjustment_processor
        FROM return_and_replacement r
        JOIN sale_details sd ON r.sale_detail_id = sd.sale_detail_id
        JOIN sale s ON sd.sale_id = s.sale_id
        JOIN product p ON sd.product_id = p.product_id
        LEFT JOIN product rp ON r.replacement_product_id = rp.product_id
        LEFT JOIN stock_adjustment sa ON sa.return_id = r.return_id
        LEFT JOIN status st ON r.return_status = st.status_code
        LEFT JOIN status_reference_code src ON st.status_reference_code = src.status_reference_code
        ORDER BY r.transaction_date DESC
        `;

        const rows = await ReturnAndReplacement.sequelize.query(sql, { type: QueryTypes.SELECT });
        res.json(rows);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getReturnAndReplacementById = async (req, res) => {
    try {
        const returnAndReplacement = await ReturnAndReplacement.findByPk(req.params.id);
        if (returnAndReplacement) {
            res.json(returnAndReplacement);
        } else {
            res.status(404).json({ message: 'Return and replacement not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createReturnAndReplacement = async (req, res) => {
    try {
        const newReturnAndReplacement = await ReturnAndReplacement.create(req.body);
        res.status(201).json(newReturnAndReplacement);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateReturnAndReplacement = async (req, res) => {
    try {
        const [updated] = await ReturnAndReplacement.update(req.body, {
            where: { return_and_replacement_id: req.params.id }
        });
        if (updated) {
            const updatedReturnAndReplacement = await ReturnAndReplacement.findByPk(req.params.id);
            res.json(updatedReturnAndReplacement);
        } else {
            res.status(404).json({ message: 'Return and replacement not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteReturnAndReplacement = async (req, res) => {
    try {
        const deleted = await ReturnAndReplacement.destroy({
            where: { return_and_replacement_id: req.params.id }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Return and replacement not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Approve a pending return (sets status to APPR)
exports.approveReturn = async (req, res) => {
    try {
        const id = req.params.id;
        const row = await ReturnAndReplacement.findByPk(id);
        if (!row) return res.status(404).json({ message: 'Return not found' });
        // Use numeric Sales Return Status code for Approved
        await ReturnAndReplacement.update({ return_status: '2002' }, { where: { return_id: id } });
        const updated = await ReturnAndReplacement.findByPk(id);
        res.json(updated);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Post an approved return: creates stock adjustment and marks POST
exports.postReturn = async (req, res) => {
    const id = req.params.id;
    const t = await StockAdjustment.sequelize.transaction();
    try {
        const r = await ReturnAndReplacement.findByPk(id);
        if (!r) { await t.rollback(); return res.status(404).json({ message: 'Return not found' }); }
        // Accept either the numeric sales-return Approved code or the legacy 'APPR' token
        if (r.return_status !== '2002' && r.return_status !== 'APPR') {
            await t.rollback();
            return res.status(400).json({ message: 'Return must be approved before posting' });
        }

        const sd = await SaleDetails.findByPk(r.sale_detail_id);
        if (!sd) { await t.rollback(); return res.status(400).json({ message: 'Sale detail not found' }); }

        const details = [];
        const qty = Number(r.quantity || sd.quantity_sold || 0);
        if (qty <= 0) { await t.rollback(); return res.status(400).json({ message: 'Invalid return quantity' }); }
        // Positive for returned item
        details.push({ product_id: sd.product_id, quantity: qty });
        // If replacement_product_id, add negative for replacement
        if (r.replacement_product_id) {
            details.push({ product_id: r.replacement_product_id, quantity: -qty });
        }

        // adjustment_type is an enum('return','replacement','manual') in the DB; map our action_type accordingly
        const adjType = (r.action_type === 'replacement') ? 'replacement' : 'return';
        const header = await StockAdjustment.create({
            client_request_id: req.body?.client_request_id || null,
            return_id: r.return_id,
            adjustment_type: adjType,
            transaction_date: new Date(),
            remarks: r.reason || r.remarks || null,
            processed_by: null
        }, { transaction: t });
        const rows = details.map(d => ({ adjustment_id: header.adjustment_id, product_id: d.product_id, quantity: d.quantity }));
        await StockAdjustmentDetail.bulkCreate(rows, { transaction: t });
        // Use numeric Sales Return Status code for Completed
        await ReturnAndReplacement.update({ return_status: '2009' }, { where: { return_id: id }, transaction: t });
        await t.commit();
        res.json({ ...header.toJSON(), details: rows });
    } catch (error) {
        await t.rollback();
        res.status(500).json({ error: error.message });
    }
};