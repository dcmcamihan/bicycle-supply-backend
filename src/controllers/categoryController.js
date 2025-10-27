const Category = require('../models/categoryModel');

exports.getAllCategories = async (req, res) => {
    try {
        const categories = await Category.findAll();
        res.json(categories);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getCategoryByCode = async (req, res) => {
    try {
        const category = await Category.findByPk(req.params.category_code);
        if (category) {
            res.json(category);
        } else {
            res.status(404).json({ message: 'Category not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createCategory = async (req, res) => {
    try {
        // normalize and validate input
        const payload = {
            category_code: (req.body.category_code || '').toString().trim(),
            category_name: (req.body.category_name || '').toString().trim()
        };

        console.log('createCategory payload:', payload);

        // category_code in DB is CHAR(8) so enforce max length
        if (payload.category_code.length === 0 || payload.category_name.length === 0) {
            return res.status(400).json({ error: 'category_code and category_name are required' });
        }
        if (payload.category_code.length > 8) {
            return res.status(400).json({ error: 'category_code must be 8 characters or fewer' });
        }

        const newCategory = await Category.create(payload);
        res.status(201).json(newCategory);
    } catch (error) {
        console.error('createCategory error:', error);
        res.status(500).json({ error: error.message });
    }
};

exports.updateCategory = async (req, res) => {
    try {
        // normalize and validate incoming update payload
        const payload = { ...req.body };
        if (payload.category_code !== undefined) payload.category_code = payload.category_code.toString().trim();
        if (payload.category_name !== undefined) payload.category_name = payload.category_name.toString().trim();

        if (payload.category_code && payload.category_code.length > 8) {
            return res.status(400).json({ error: 'category_code must be 8 characters or fewer' });
        }

        // Do not allow changing the primary key (category_code) because other tables (e.g. product)
        // reference it via foreign keys. Require clients to create a new category or update dependent
        // products first if they want to change the code.
        if (payload.category_code && payload.category_code !== req.params.category_code) {
            return res.status(400).json({ error: 'Changing category_code is not allowed while products reference it. Create a new category or update related products first.' });
        }

        const [updated] = await Category.update(payload, {
            where: { category_code: req.params.category_code }
        });
        if (updated) {
            const updatedCategory = await Category.findByPk(req.params.category_code);
            res.json(updatedCategory);
        } else {
            res.status(404).json({ message: 'Category not found' });
        }
    } catch (error) {
        // Surface a more helpful message when delete/update fails due to FK constraints
        if (error && error.message && error.message.includes('Cannot delete or update a parent row')) {
            return res.status(409).json({ error: 'Category cannot be modified because there are products referencing it. Remove or reassign dependent products first.' });
        }

        res.status(500).json({ error: error.message });
    }
};

exports.deleteCategory = async (req, res) => {
    try {
        const deleted = await Category.destroy({
            where: { category_code: req.params.category_code }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Category not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};