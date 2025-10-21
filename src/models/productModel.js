const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const Product = sequelize.define('Product', {
    product_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    product_name: {
        type: DataTypes.STRING(100),
        allowNull: false
    },
    description: {
        type: DataTypes.STRING(255),
        allowNull: true,
        defaultValue: null
    },
    barcode: {
        type: DataTypes.STRING(45),
        allowNull: true,
        defaultValue: null
    },
    category_code: {
        type: DataTypes.CHAR(8),
        allowNull: false,
        references: {
            model: 'category',
            key: 'category_code'
        }
    },
    brand_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'brand',
            key: 'brand_id'
        }
    },
    price: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: true,
        defaultValue: null
    },
    reorder_level: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 3
    },
    weight: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: true,
        defaultValue: null,
        comment: 'In lbs'
    },
    size: {
        type: DataTypes.STRING(45),
        allowNull: true,
        defaultValue: null
    },
    color: {
        type: DataTypes.STRING(45),
        allowNull: true,
        defaultValue: null
    },
    material: {
        type: DataTypes.STRING(255),
        allowNull: true,
        defaultValue: null
    },
    warranty_period: {
        type: DataTypes.STRING(45),
        allowNull: true,
        defaultValue: null
    },
    image_url: {
        type: DataTypes.STRING(2000),
        allowNull: true,
        defaultValue: null
    }
}, {
    tableName: 'product',
    timestamps: false
});

module.exports = Product;