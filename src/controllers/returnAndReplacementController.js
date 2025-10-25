const ReturnAndReplacement = require('../models/returnAndReplacementModel');
const SaleDetails = require('../models/saleDetailsModel');
const StockAdjustment = require('../models/stockAdjustmentModel');
const StockAdjustmentDetail = require('../models/stockAdjustmentDetailsModel');

exports.getAllReturnAndReplacements = async (req, res) => {
    try {
        const returnAndReplacements = await ReturnAndReplacement.findAll();
        res.json(returnAndReplacements);
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
        await ReturnAndReplacement.update({ return_status: 'APPR' }, { where: { return_id: id } });
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
        if (r.return_status !== 'APPR') { await t.rollback(); return res.status(400).json({ message: 'Return must be approved before posting' }); }

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

        const header = await StockAdjustment.create({
            client_request_id: req.body?.client_request_id || null,
            return_id: r.return_id,
            adjustment_type: r.replacement_product_id ? 'replacement' : 'return',
            transaction_date: new Date(),
            remarks: r.remarks || null,
            processed_by: null
        }, { transaction: t });
        const rows = details.map(d => ({ adjustment_id: header.adjustment_id, product_id: d.product_id, quantity: d.quantity }));
        await StockAdjustmentDetail.bulkCreate(rows, { transaction: t });
        await ReturnAndReplacement.update({ return_status: 'POST' }, { where: { return_id: id }, transaction: t });
        await t.commit();
        res.json({ ...header.toJSON(), details: rows });
    } catch (error) {
        await t.rollback();
        res.status(500).json({ error: error.message });
    }
};