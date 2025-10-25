const express = require('express');
const router = express.Router();
const stockAdjustmentDetailsController = require('../controllers/stockAdjustmentDetailsController');

router.get('/', stockAdjustmentDetailsController.getAll);
router.get('/:id', stockAdjustmentDetailsController.getById);
router.post('/', stockAdjustmentDetailsController.create);
router.put('/:id', stockAdjustmentDetailsController.update);
router.delete('/:id', stockAdjustmentDetailsController.delete);

module.exports = router;
