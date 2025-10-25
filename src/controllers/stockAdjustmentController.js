const StockAdjustment = require('../models/stockAdjustmentModel');

const stockAdjustmentController = {
    async getAll(req, res) {
        try {
            const adjustments = await StockAdjustment.findAll();
            res.json(adjustments);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async getById(req, res) {
        try {
            const adjustment = await StockAdjustment.findByPk(req.params.id);
            if (!adjustment) return res.status(404).json({ error: 'Stock adjustment not found' });
            res.json(adjustment);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const newAdjustment = await StockAdjustment.create(req.body);
            res.status(201).json(newAdjustment);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async update(req, res) {
        try {
            const [updated] = await StockAdjustment.update(req.body, {
                where: { adjustment_id: req.params.id }
            });
            if (!updated) return res.status(404).json({ error: 'Stock adjustment not found' });
            const updatedAdjustment = await StockAdjustment.findByPk(req.params.id);
            res.json(updatedAdjustment);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async delete(req, res) {
        try {
            const deleted = await StockAdjustment.destroy({
                where: { adjustment_id: req.params.id }
            });
            if (!deleted) return res.status(404).json({ error: 'Stock adjustment not found' });
            res.json({ message: 'Stock adjustment deleted' });
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }
};

module.exports = stockAdjustmentController;
