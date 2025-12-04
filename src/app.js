const express = require('express');
const employeeRoutes = require('./routes/employeeRoutes');
const customerRoutes = require('./routes/customerRoutes');
const productRoutes = require('./routes/productRoutes');
const saleRoutes = require('./routes/saleRoutes');
const brandRoutes = require('./routes/brandRoutes');
const customerContactRoutes = require('./routes/customerContactRoutes');
const employeeContactRoutes = require('./routes/employeeContactRoutes');
const paymentMethodRoutes = require('./routes/paymentMethodRoutes');
const supplierRoutes = require('./routes/supplierRoutes');
const supplyRoutes = require('./routes/supplyRoutes');
const supplierContactRoutes = require('./routes/supplierContactRoutes');
const attendanceDetailsRoutes = require('./routes/attendanceDetailsRoutes');
const productImagesRoutes = require('./routes/productImagesRoutes');
const categoryRoutes = require('./routes/categoryRoutes');
const contactTypeRoutes = require('./routes/contactTypeRoutes');
const employeeAttendanceRoutes = require('./routes/employeeAttendanceRoutes');
const employeeRoleRoutes = require('./routes/employeeRoleRoutes');
const employeeRoleHistoryRoutes = require('./routes/employeeRoleHistoryRoutes');
const returnAndReplacementRoutes = require('./routes/returnAndReplacementRoutes');
const roleTypeRoutes = require('./routes/roleTypeRoutes');
const authRoutes = require('./routes/authRoutes');
const saleDetailsRoutes = require('./routes/saleDetailsRoutes');
const salePaymentTypeRoutes = require('./routes/salePaymentTypeRoutes');
const statusRoutes = require('./routes/statusRoutes');
const statusReferenceCodeRoutes = require('./routes/statusReferenceCodeRoutes');
const stockoutRoutes = require('./routes/stockoutRoutes');
const stockoutDetailsRoutes = require('./routes/stockoutDetailsRoutes');
const supplierAddressRoutes = require('./routes/supplierAddressRoutes');
const supplyDetailsRoutes = require('./routes/supplyDetailsRoutes');
const stockAdjustmentRoutes = require('./routes/stockAdjustmentRoutes');
const stockAdjustmentDetailsRoutes = require('./routes/stockAdjustmentDetailsRoutes');

const app = express();
const cors = require('cors');
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(cors()); // Enable CORS for all routes

// Ensure CORS headers are set as early as possible. This helps ensure
// even error responses from Express include CORS headers when possible.
app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
    res.setHeader('Access-Control-Allow-Methods', 'GET,POST,PUT,PATCH,DELETE,OPTIONS');
    if (req.method === 'OPTIONS') return res.sendStatus(204);
    next();
});

// Log and surface unhandled rejections/exceptions so platform logs show root cause
process.on('unhandledRejection', (reason, promise) => {
    console.error('Unhandled Rejection at:', promise, 'reason:', reason);
});
process.on('uncaughtException', (err) => {
    console.error('Uncaught Exception:', err);
});

app.use('/api/employees', employeeRoutes);
app.use('/api/customers', customerRoutes);
app.use('/api/products', productRoutes);
app.use('/api/sales', saleRoutes);
app.use('/api/brands', brandRoutes);
app.use('/api/customer-contacts', customerContactRoutes);
app.use('/api/employee-contacts', employeeContactRoutes);
app.use('/api/payment-methods', paymentMethodRoutes);
app.use('/api/suppliers', supplierRoutes);
app.use('/api/supplies', supplyRoutes);
app.use('/api/supplier-contacts', supplierContactRoutes);
app.use('/api/attendance-details', attendanceDetailsRoutes);
app.use('/api/product-images', productImagesRoutes);
app.use('/api/categories', categoryRoutes);
app.use('/api/contact-types', contactTypeRoutes);
app.use('/api/employee-attendances', employeeAttendanceRoutes);
app.use('/api/employee-roles', employeeRoleRoutes);
app.use('/api/employee-role-histories', employeeRoleHistoryRoutes);
app.use('/api/return-and-replacements', returnAndReplacementRoutes);
app.use('/api/role-types', roleTypeRoutes);
app.use('/api/auth', authRoutes);
app.use('/api/sale-details', saleDetailsRoutes);
app.use('/api/sale-payment-types', salePaymentTypeRoutes);
app.use('/api/statuses', statusRoutes);
app.use('/api/status-reference-codes', statusReferenceCodeRoutes);
app.use('/api/stockouts', stockoutRoutes);
app.use('/api/stockout-details', stockoutDetailsRoutes);
app.use('/api/supplier-addresses', supplierAddressRoutes);
app.use('/api/supply-details', supplyDetailsRoutes);
app.use('/api/stock-adjustments', stockAdjustmentRoutes);
app.use('/api/stock-adjustment-details', stockAdjustmentDetailsRoutes);

// Generic error handler — returns JSON and ensures CORS headers are present
app.use((err, req, res, next) => {
    console.error('Express error handler caught:', err && err.stack ? err.stack : err);
    try { res.setHeader('Access-Control-Allow-Origin', '*'); } catch (e) {}
    if (res.headersSent) return next(err);
    res.status(500).json({ error: 'Internal server error' });
});

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server is running on port ${PORT}`);
});