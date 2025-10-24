const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');

router.post('/request-reset', authController.requestReset);
router.post('/reset', authController.resetPassword);

module.exports = router;
