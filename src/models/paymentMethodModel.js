const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const PaymentMethod = sequelize.define('PaymentMethod', {
    payment_method_code: {
        type: DataTypes.STRING(8),
        allowNull: false,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING(45),
        allowNull: false
    },
    description: {
        type: DataTypes.STRING(255),
        allowNull: false
    },
    icon: {
        type: DataTypes.STRING(45),
        allowNull: true,
        defaultValue: null
    }
}, {
    tableName: 'payment_method',
    timestamps: false
});

module.exports = PaymentMethod;