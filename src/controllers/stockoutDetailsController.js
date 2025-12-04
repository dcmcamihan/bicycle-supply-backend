const StockoutDetails = require('../models/stockoutDetailsModel');
const Stockout = require('../models/stockoutModel');

// Return a list (up to a sane limit) of stockout details
exports.getAllStockoutDetails = async (req, res) => {
  try {
    const rows = await StockoutDetails.findAll({ limit: 1000 });
    return res.json(rows);
  } catch (err) {
    // Tolerant: return empty array so frontend remains functional
    return res.json([]);
  }
};

exports.getStockoutDetailsById = async (req, res) => {
  try {
    const id = parseInt(req.params.id, 10);
    if (!id) return res.status(400).json({ message: 'Invalid id' });
    const row = await StockoutDetails.findByPk(id);
    if (!row) return res.status(404).json({ message: 'Stockout detail not found' });
    return res.json(row);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
};

exports.createStockoutDetail = async (req, res) => {
  try {
    const payload = req.body || {};
    if (Object.keys(payload).length === 0) return res.status(400).json({ message: 'No payload' });
    const created = await StockoutDetails.create(payload);
    return res.status(201).json(created);
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
};

exports.updateStockoutDetail = async (req, res) => {
  try {
    const id = parseInt(req.params.id, 10);
    if (!id) return res.status(400).json({ message: 'Invalid id' });
    const payload = req.body || {};
    const [updated] = await StockoutDetails.update(payload, { where: { stockout_details_id: id } });
    // Fetch row to return current state; this avoids treating 0 affected rows as 'not found'
    const row = await StockoutDetails.findByPk(id);
    if (row) return res.json(row);
    return res.status(404).json({ message: 'Stockout detail not found' });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
};

exports.deleteStockoutDetail = async (req, res) => {
  try {
    const id = parseInt(req.params.id, 10);
    if (!id) return res.status(400).json({ message: 'Invalid id' });
    const deleted = await StockoutDetails.destroy({ where: { stockout_details_id: id } });
    if (deleted) return res.status(204).send();
    return res.status(404).json({ message: 'Stockout detail not found' });
  } catch (err) {
    return res.status(500).json({ error: err.message });
  }
};

// GET by stockout id — returns an array (possibly empty)
exports.getAllStockoutDetailsByStockoutId = async (req, res) => {
  try {
    const stockoutId = parseInt(req.params.stockoutId, 10);
    if (!stockoutId) return res.status(400).json({ message: 'Invalid stockout id' });
    // Try to read the details table first. If the table doesn't exist in this DB
    // (older dumps), fall back to returning a single row derived from the
    // `stockout` table so the frontend still receives a detail-like payload.
    const rows = await StockoutDetails.findAll({ where: { stockout_id: stockoutId } });
    if (rows && rows.length > 0) return res.json(rows);

    // Fallback: try to find the stockout header and convert to a detail-like
    // response shape expected by the frontend: { product_id, quantity_removed }
    try {
      const so = await Stockout.findByPk(stockoutId);
      if (so && (so.product_id || so.quantity)) {
        return res.json([{
          product_id: so.product_id,
          quantity_removed: so.quantity ?? so.quantity_removed ?? 0,
          stockout_id: so.stockout_id
        }]);
      }
    } catch (fallbackErr) {
      // ignore and continue to final tolerant response
    }

    return res.json([]);
  } catch (err) {
    // Tolerant: return empty array on error
    return res.json([]);
  }
};

module.exports = exports;
