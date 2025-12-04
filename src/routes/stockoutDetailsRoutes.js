const express = require('express');
const router = express.Router();
const stockoutDetailsController = require('../controllers/stockoutDetailsController');

router.get('/', stockoutDetailsController.getAllStockoutDetails);
router.get('/:id', stockoutDetailsController.getStockoutDetailsById);
router.post('/', stockoutDetailsController.createStockoutDetail);
router.put('/:id', stockoutDetailsController.updateStockoutDetail);
router.delete('/:id', stockoutDetailsController.deleteStockoutDetail);
// Frontend expects this route:
router.get('/stockout/:stockoutId', stockoutDetailsController.getAllStockoutDetailsByStockoutId);

module.exports = router;
