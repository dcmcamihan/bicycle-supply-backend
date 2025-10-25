const express = require('express');
const router = express.Router();
const returnAndReplacementController = require('../controllers/returnAndReplacementController');

router.get('/', returnAndReplacementController.getAllReturnAndReplacements);
router.get('/:id', returnAndReplacementController.getReturnAndReplacementById);
router.post('/', returnAndReplacementController.createReturnAndReplacement);
router.put('/:id', returnAndReplacementController.updateReturnAndReplacement);
router.delete('/:id', returnAndReplacementController.deleteReturnAndReplacement);
router.post('/:id/approve', returnAndReplacementController.approveReturn);
router.post('/:id/post', returnAndReplacementController.postReturn);

module.exports = router;