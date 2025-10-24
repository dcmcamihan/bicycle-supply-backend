const StockAdjustment = require('../models/stockAdjustmentModel');
const StockAdjustmentDetail = require('../models/stockAdjustmentDetailsModel');

exports.getAll = async (req, res) => {
  try {
    const rows = await StockAdjustment.findAll();
    const ids = rows.map(r => r.adjustment_id);
    const details = await StockAdjustmentDetail.findAll({ where: { adjustment_id: ids } });
    const byAdj = details.reduce((m, d) => {
      const k = d.adjustment_id; (m[k] ||= []).push(d); return m;
    }, {});
    const result = rows.map(r => ({ ...r.toJSON(), details: byAdj[r.adjustment_id] || [] }));
    res.json(result);
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
  const { adjustment_type, transaction_date, remarks, processed_by, details } = req.body || {};
  if (!adjustment_type || !transaction_date || !Array.isArray(details) || details.length === 0) {
    return res.status(400).json({ message: 'Invalid payload' });
  }
  const t = await StockAdjustment.sequelize.transaction();
  try {
    const header = await StockAdjustment.create({ adjustment_type, transaction_date, remarks, processed_by }, { transaction: t });
    const rows = details.map(d => ({ adjustment_id: header.adjustment_id, product_id: d.product_id, quantity: Number(d.quantity) }));
    await StockAdjustmentDetail.bulkCreate(rows, { transaction: t });
    await t.commit();
    res.status(201).json({ ...header.toJSON(), details: rows });
  } catch (e) {
    await t.rollback();
    res.status(500).json({ error: e.message });
  }
};
