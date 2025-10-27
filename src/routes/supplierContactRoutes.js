const express = require('express');
const router = express.Router();
const supplierContactController = require('../controllers/supplierContactController');

router.get('/', supplierContactController.getAllSupplierContacts);
router.get('/:id', supplierContactController.getSupplierContactById);
router.get('/supplier/:id', supplierContactController.getSupplierContactsBySupplier);
router.post('/', supplierContactController.createSupplierContact);
router.put('/:id', supplierContactController.updateSupplierContact);
router.delete('/:id', supplierContactController.deleteSupplierContact);

module.exports = router;