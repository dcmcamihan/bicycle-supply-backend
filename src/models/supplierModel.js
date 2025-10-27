const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');
const SupplierContact = require('./supplierContactModel');
const SupplierAddress = require('./supplierAddressModel');

const Supplier = sequelize.define('Supplier', {
    supplier_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    supplier_name: {
        type: DataTypes.STRING(255),
        allowNull: false
    }
}, {
    tableName: 'supplier',
    timestamps: false
});

// Define associations
Supplier.hasMany(SupplierContact, {
    foreignKey: 'supplier_id',
    as: 'contacts'
});

Supplier.hasMany(SupplierAddress, {
    foreignKey: 'supplier_id',
    as: 'addresses'
});

module.exports = Supplier;