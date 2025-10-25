const Sale = require('../models/saleModel');

exports.getAllSales = async (req, res) => {
    try {
        const paged = req.query.page || req.query.pageSize;
        const where = {};
        if (req.query.status) where.status = req.query.status;
        if (!paged) {
            const sales = await Sale.findAll({ where, order: [['sale_id','DESC']] });
            return res.json(sales);
        }
        const page = Math.max(1, parseInt(req.query.page) || 1);
        const pageSize = Math.min(100, Math.max(1, parseInt(req.query.pageSize) || 20));
        const offset = (page - 1) * pageSize;
        const { rows, count } = await Sale.findAndCountAll({ where, limit: pageSize, offset, order: [['sale_id','DESC']] });
        res.json({ page, pageSize, total: count, data: rows });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getSaleById = async (req, res) => {
    try {
        const sale = await Sale.findByPk(req.params.id);
        if (sale) {
            res.json(sale);
        } else {
            res.status(404).json({ message: 'Sale not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createSale = async (req, res) => {
    try {
        const newSale = await Sale.create(req.body);
        res.status(201).json(newSale);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateSale = async (req, res) => {
    try {
        const [updated] = await Sale.update(req.body, {
            where: { sale_id: req.params.id }
        });
        if (updated) {
            const updatedSale = await Sale.findByPk(req.params.id);
            res.json(updatedSale);
        } else {
            res.status(404).json({ message: 'Sale not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteSale = async (req, res) => {
    try {
        const deleted = await Sale.destroy({
            where: { sale_id: req.params.id }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Sale not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Mark a sale as Completed
exports.completeSale = async (req, res) => {
    try {
        const id = req.params.id;
        const sale = await Sale.findByPk(id);
        if (!sale) return res.status(404).json({ message: 'Sale not found' });
        await Sale.update({ status: 'Completed' }, { where: { sale_id: id } });
        const updated = await Sale.findByPk(id);
        res.json(updated);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};