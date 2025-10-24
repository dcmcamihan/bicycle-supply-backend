const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const StockAdjustment = sequelize.define('StockAdjustment', {
  adjustment_id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  return_id: {
    type: DataTypes.INTEGER,
    allowNull: true,
    references: {
      model: 'return_and_replacement',
      key: 'return_id',
    },
  },
  adjustment_type: {
    type: DataTypes.ENUM('return', 'replacement', 'manual'),
    allowNull: false,
  },
  transaction_date: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  remarks: {
    type: DataTypes.STRING(255),
    allowNull: true,
    defaultValue: null,
  },
  processed_by: {
    type: DataTypes.INTEGER,
    allowNull: true,
    references: {
      model: 'employee',
      key: 'employee_id',
    },
  },
}, {
  tableName: 'stock_adjustment',
  timestamps: false,
});

module.exports = StockAdjustment;
