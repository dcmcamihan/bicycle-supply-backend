const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');
const ContactType = require('./contactTypeModel');

const SupplierContact = sequelize.define('SupplierContact', {
    supplier_contact_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    contact_type_code: {
        type: DataTypes.CHAR(8),
        allowNull: false
    },
    supplier_id: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    contact_value: {
        type: DataTypes.STRING,
        allowNull: false
    },
    is_active: {
        type: DataTypes.CHAR(1),
        allowNull: false,
        defaultValue: 'Y'
    },
    is_primary: {
        type: DataTypes.CHAR(1),
        allowNull: false,
        defaultValue: 'Y'
    }
}, {
    tableName: 'supplier_contact',
    timestamps: false
});

// Define association with ContactType
SupplierContact.belongsTo(ContactType, {
    foreignKey: 'contact_type_code',
    targetKey: 'contact_type_code'
});

module.exports = SupplierContact;