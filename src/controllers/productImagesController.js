const ProductImages = require('../models/productImagesModel');

const productImagesController = {
    async getAll(req, res) {
        try {
            const images = await ProductImages.findAll();
            res.json(images);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async getById(req, res) {
        try {
            const image = await ProductImages.findByPk(req.params.id);
            if (!image) return res.status(404).json({ error: 'Image not found' });
            res.json(image);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async create(req, res) {
        try {
            const newImage = await ProductImages.create(req.body);
            res.status(201).json(newImage);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async update(req, res) {
        try {
            const [updated] = await ProductImages.update(req.body, {
                where: { product_image_id: req.params.id }
            });
            if (!updated) return res.status(404).json({ error: 'Image not found' });
            const updatedImage = await ProductImages.findByPk(req.params.id);
            res.json(updatedImage);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },

    async delete(req, res) {
        try {
            const deleted = await ProductImages.destroy({
                where: { product_image_id: req.params.id }
            });
            if (!deleted) return res.status(404).json({ error: 'Image not found' });
            res.json({ message: 'Image deleted' });
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    },
    async getByProductId(req, res) {
        try {
            const images = await ProductImages.findAll({
                where: { product_id: req.params.product_id }
            });
            res.json(images);
        } catch (error) {
            res.status(500).json({ error: error.message });
        }
    }
};

module.exports = productImagesController;
