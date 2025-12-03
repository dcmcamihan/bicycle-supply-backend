const Product = require('../models/productModel');
const SupplyDetails = require('../models/supplyDetailsModel');
const SaleDetails = require('../models/saleDetailsModel');
const Supply = require('../models/supplyModel');
const Supplier = require('../models/supplierModel');
const SupplierAddress = require('../models/supplierAddressModel');
const SupplierContact = require('../models/supplierContactModel');
const sequelize = require('../config/db');
const { QueryTypes } = require('sequelize');

exports.getProductQuantityOnHand = async (req, res) => {
    try {
        const productId = req.params.product_id;

        // Sum of quantity_supplied for the given product_id
        const supplySum = await SupplyDetails.sum('quantity_supplied', {
            where: { product_id: productId }
        });

        // Sum of quantity_sold for the given product_id
        const saleSum = await SaleDetails.sum('quantity_sold', {
            where: { product_id: productId }
        });

        // Calculate quantity on hand
        const quantityOnHand = (supplySum || 0) - (saleSum || 0);

        res.json(quantityOnHand);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.archiveProduct = async (req, res) => {
    try {
        const [updated] = await Product.update({ is_active: false }, {
            where: { product_id: req.params.id }
        });
        if (updated) {
            const product = await Product.findByPk(req.params.id);
            res.json(product);
        } else {
            res.status(404).json({ message: 'Product not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.activateProduct = async (req, res) => {
    try {
        const [updated] = await Product.update({ is_active: true }, {
            where: { product_id: req.params.id }
        });
        if (updated) {
            const product = await Product.findByPk(req.params.id);
            res.json(product);
        } else {
            res.status(404).json({ message: 'Product not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getAllProducts = async (req, res) => {
    try {
        const includeInactive = String(req.query.includeInactive || 'false').toLowerCase() === 'true';
        const where = includeInactive ? {} : { is_active: true };
        const products = await Product.findAll({ where });
        res.json(products);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getProductById = async (req, res) => {
    try {
        const product = await Product.findByPk(req.params.id);
        if (product) {
            res.json(product);
        } else {
            res.status(404).json({ message: 'Product not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createProduct = async (req, res) => {
    try {
        const newProduct = await Product.create(req.body);
        res.status(201).json(newProduct);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateProduct = async (req, res) => {
    try {
        const [updated] = await Product.update(req.body, {
            where: { product_id: req.params.id }
        });
        if (updated) {
            const updatedProduct = await Product.findByPk(req.params.id);
            res.json(updatedProduct);
        } else {
            res.status(404).json({ message: 'Product not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteProduct = async (req, res) => {
    try {
        const deleted = await Product.destroy({
            where: { product_id: req.params.id }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Product not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Get latest supplier for a given product based on supply_date
exports.getLatestSupplier = async (req, res) => {
    try {
        const productId = Number(req.params.product_id);
        if (!productId) return res.status(400).json({ message: 'Invalid product id' });

        // Join supplies and supply_details to find the most recent supply for this product
        const sql = `SELECT s.supplier_id, s.supply_date, s.supply_id
                     FROM supply s
                     JOIN supply_details sd ON s.supply_id = sd.supply_id
                     WHERE sd.product_id = :productId
                     ORDER BY s.supply_date DESC
                     LIMIT 1`;

        const results = await sequelize.query(sql, {
            replacements: { productId },
            type: QueryTypes.SELECT
        });

        if (!results || results.length === 0) return res.json(null);

        const row = results[0];
        const supplier = await Supplier.findByPk(row.supplier_id);

        return res.json({
            supplier_id: row.supplier_id,
            supply_id: row.supply_id,
            supply_date: row.supply_date,
            supplier: supplier || null
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};