const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

router.get('/', productController.getAllProducts);
router.get('/:id', productController.getProductById);
router.post('/', productController.createProduct);
router.put('/:id', productController.updateProduct);
router.delete('/:id', productController.deleteProduct);
router.put('/:id/archive', productController.archiveProduct);
router.put('/:id/activate', productController.activateProduct);
router.get('/:product_id/quantity-on-hand', productController.getProductQuantityOnHand);

module.exports = router;