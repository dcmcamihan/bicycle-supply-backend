const express = require('express');
const router = express.Router();
const productImagesController = require('../controllers/productImagesController');


router.get('/', productImagesController.getAll);
router.get('/product/:product_id', productImagesController.getByProductId);
router.get('/:id', productImagesController.getById);
router.post('/', productImagesController.create);
router.put('/:id', productImagesController.update);
router.delete('/:id', productImagesController.delete);

module.exports = router;
