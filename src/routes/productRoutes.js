const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

router.get('/', productController.getAllProducts);
router.post('/', productController.createProduct);
// IMPORTANT: Place specific routes (with /path segments) BEFORE generic :id routes
// so that /quantity-on-hand and /latest-supplier are matched first
router.get('/:product_id/quantity-on-hand', productController.getProductQuantityOnHand);
router.get('/:product_id/latest-supplier', productController.getLatestSupplier);
// Generic :id routes come after specific routes
router.get('/:id', productController.getProductById);
router.put('/:id', productController.updateProduct);
router.delete('/:id', productController.deleteProduct);
router.put('/:id/archive', productController.archiveProduct);
router.put('/:id/activate', productController.activateProduct);

module.exports = router;