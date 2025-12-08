const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const SaleDetails = sequelize.define('SaleDetails', {
    sale_detail_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    sale_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'sale',
            key: 'sale_id'
        }
    },
    product_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'product',
            key: 'product_id'
        }
    },
    quantity_sold: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
    ,
    unit_price: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        defaultValue: 0.00
    },
    discount_amount: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
        defaultValue: 0.00
    }
}, {
    tableName: 'sale_details',
    timestamps: false
});

module.exports = SaleDetails;