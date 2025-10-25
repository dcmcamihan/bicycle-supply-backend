const StockAdjustmentDetail = require('../models/stockAdjustmentDetailsModel');

const stockAdjustmentDetailsController = {
    async getAll(req, res) {
        try {
            const details = await StockAdjustmentDetail.findAll();
            res.json(details);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async getById(req, res) {
        try {
            const detail = await StockAdjustmentDetail.findByPk(req.params.id);
            if (!detail) return res.status(404).json({ error: 'Stock adjustment detail not found' });
            res.json(detail);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const newDetail = await StockAdjustmentDetail.create(req.body);
            res.status(201).json(newDetail);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async update(req, res) {
        try {
            const [updated] = await StockAdjustmentDetail.update(req.body, {
                where: { adjustment_detail_id: req.params.id }
            });
            if (!updated) return res.status(404).json({ error: 'Stock adjustment detail not found' });
            const updatedDetail = await StockAdjustmentDetail.findByPk(req.params.id);
            res.json(updatedDetail);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async delete(req, res) {
        try {
            const deleted = await StockAdjustmentDetail.destroy({
                where: { adjustment_detail_id: req.params.id }
            });
            if (!deleted) return res.status(404).json({ error: 'Stock adjustment detail not found' });
            res.json({ message: 'Stock adjustment detail deleted' });
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }
};

module.exports = stockAdjustmentDetailsController;
