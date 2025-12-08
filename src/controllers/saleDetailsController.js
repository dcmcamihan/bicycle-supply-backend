const SaleDetails = require('../models/saleDetailsModel');
const Product = require('../models/productModel');

exports.getAllSaleDetails = async (req, res) => {
    try {
        const saleDetails = await SaleDetails.findAll();
        res.json(saleDetails);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getSaleDetailsById = async (req, res) => {
    try {
        const saleDetails = await SaleDetails.findByPk(req.params.id);
        if (saleDetails) {
            res.json(saleDetails);
        } else {
            res.status(404).json({ message: 'Sale details not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getSaleDetailsBySaleId = async (req, res) => {
    try {
        const saleDetails = await SaleDetails.findAll({
            where: { sale_id: req.params.saleId }
        });
        if (saleDetails.length > 0) {
            res.json(saleDetails);
        } else {
            res.status(404).json({ message: 'Sale details not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createSaleDetails = async (req, res) => {
    try {
        const body = Object.assign({}, req.body);

        // Ensure unit_price is present; fallback to current product price
        let unitPrice = Number(body.unit_price || 0);
        if (!unitPrice) {
            const product = await Product.findByPk(body.product_id);
            unitPrice = product && product.price ? Number(product.price) : 0;
        }

        // Determine discount_amount: prefer explicitly provided amount (assumed to be total for the line),
        // else compute from discount_percent as a total across quantity_sold
        let discountAmount = Number(body.discount_amount || 0);
        if (!discountAmount) {
            const pct = Number(body.discount_percent || 0);
            const qty = Number(body.quantity_sold || 0) || 1;
            if (pct) {
                discountAmount = Number(((unitPrice * qty) * pct / 100).toFixed(2));
            } else {
                discountAmount = 0;
            }
        }

        body.unit_price = unitPrice;
        body.discount_amount = discountAmount;

        const newSaleDetails = await SaleDetails.create(body);
        res.status(201).json(newSaleDetails);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateSaleDetails = async (req, res) => {
    try {
        const body = Object.assign({}, req.body);

        // If updating unit_price or discount info, compute missing fields similarly to create
        let unitPrice = Number(body.unit_price || 0);
        if (!unitPrice && body.product_id) {
            const product = await Product.findByPk(body.product_id);
            unitPrice = product && product.price ? Number(product.price) : 0;
        }

        let discountAmount = Number(body.discount_amount || 0);
        if (!discountAmount) {
            const pct = Number(body.discount_percent || 0);
            const qty = Number(body.quantity_sold || 0) || 1;
            if (pct) {
                discountAmount = Number(((unitPrice * qty) * pct / 100).toFixed(2));
            }
        }

        if (unitPrice !== undefined && unitPrice !== null) body.unit_price = unitPrice;
        // Always set discount_amount (may be zero)
        body.discount_amount = discountAmount;

        const [updated] = await SaleDetails.update(body, {
            where: { sale_detail_id: req.params.id }
        });
        if (updated) {
            const updatedSaleDetails = await SaleDetails.findByPk(req.params.id);
            res.json(updatedSaleDetails);
        } else {
            res.status(404).json({ message: 'Sale details not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteSaleDetails = async (req, res) => {
    try {
        const deleted = await SaleDetails.destroy({
            where: { sale_detail_id: req.params.id }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Sale details not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};