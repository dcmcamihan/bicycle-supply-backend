const StockAdjustment = require('../models/stockAdjustmentModel');
const StockAdjustmentDetail = require('../models/stockAdjustmentDetailsModel');
const { Op } = require('sequelize');

exports.getAll = async (req, res) => {
  try {
    const page = Math.max(1, parseInt(req.query.page) || 1);
    const pageSize = Math.min(100, Math.max(1, parseInt(req.query.pageSize) || 20));
    const offset = (page - 1) * pageSize;
    const where = {};
    if (req.query.type) where.adjustment_type = req.query.type;
    if (req.query.from || req.query.to) {
      where.transaction_date = {};
      if (req.query.from) where.transaction_date[Op.gte] = new Date(req.query.from);
      if (req.query.to) where.transaction_date[Op.lt] = new Date(req.query.to);
    }
    const { rows, count } = await StockAdjustment.findAndCountAll({ where, order: [['transaction_date','DESC']], limit: pageSize, offset });
    const ids = rows.map(r => r.adjustment_id);
    const details = ids.length > 0
      ? await StockAdjustmentDetail.findAll({ where: { adjustment_id: { [Op.in]: ids } } })
      : [];
    // optional product filter
    const productId = req.query.product_id ? parseInt(req.query.product_id) : null;
    const byAdj = details.reduce((m, d) => {
      if (productId && parseInt(d.product_id) !== productId) return m;
      const k = d.adjustment_id; (m[k] ||= []).push(d); return m;
    }, {});
    const data = rows.map(r => ({ ...r.toJSON(), details: byAdj[r.adjustment_id] || [] }));
    res.json({ page, pageSize, total: count, data });
  } catch (e) { res.status(500).json({ error: e.message }); }
};

exports.getById = async (req, res) => {
  try {
    const row = await StockAdjustment.findByPk(req.params.id);
    if (!row) return res.status(404).json({ message: 'Not found' });
    const details = await StockAdjustmentDetail.findAll({ where: { adjustment_id: row.adjustment_id } });
    res.json({ ...row.toJSON(), details });
  } catch (e) { res.status(500).json({ error: e.message }); }
};

exports.create = async (req, res) => {
  const { adjustment_type, transaction_date, remarks, processed_by, details, client_request_id, return_id } = req.body || {};
  if (!adjustment_type || !transaction_date || !Array.isArray(details) || details.length === 0) {
    return res.status(400).json({ message: 'Invalid payload' });
  }
  for (const d of details) {
    if (!d || !d.product_id || typeof d.quantity === 'undefined' || Number.isNaN(Number(d.quantity))) {
      return res.status(400).json({ message: 'Invalid detail rows' });
    }
  }
  // Idempotency: if client_request_id exists, return existing
  if (client_request_id) {
    const existing = await StockAdjustment.findOne({ where: { client_request_id } });
    if (existing) {
      const det = await StockAdjustmentDetail.findAll({ where: { adjustment_id: existing.adjustment_id } });
      return res.status(200).json({ ...existing.toJSON(), details: det });
    }
  }
  const t = await StockAdjustment.sequelize.transaction();
  try {
    const header = await StockAdjustment.create({ client_request_id, adjustment_type, transaction_date, remarks, processed_by, return_id: return_id || null }, { transaction: t });
    const rows = details.map(d => ({ adjustment_id: header.adjustment_id, product_id: d.product_id, quantity: Number(d.quantity) }));
    await StockAdjustmentDetail.bulkCreate(rows, { transaction: t });
    await t.commit();
    res.status(201).json({ ...header.toJSON(), details: rows });
  } catch (e) {
    await t.rollback();
    // Duplicate client_request_id
    if (e?.name === 'SequelizeUniqueConstraintError') {
      try {
        const existing = await StockAdjustment.findOne({ where: { client_request_id } });
        if (existing) {
          const det = await StockAdjustmentDetail.findAll({ where: { adjustment_id: existing.adjustment_id } });
          return res.status(200).json({ ...existing.toJSON(), details: det });
        }
      } catch {}
    }
    res.status(500).json({ error: e.message });
  }
};
