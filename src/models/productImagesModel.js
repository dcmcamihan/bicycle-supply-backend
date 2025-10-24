const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const ProductImages = sequelize.define('ProductImages', {
    product_image_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    product_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'product',
            key: 'product_id'
        }
    },
    image_url: {
        type: DataTypes.STRING(5000),
        allowNull: true,
        defaultValue: null
    }
}, {
    tableName: 'product_images',
    timestamps: false
});

module.exports = ProductImages;
