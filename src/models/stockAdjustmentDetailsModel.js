const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const StockAdjustmentDetail = sequelize.define('StockAdjustmentDetail', {
  adjustment_detail_id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  adjustment_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: 'stock_adjustment',
      key: 'adjustment_id',
    },
  },
  product_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: 'product',
      key: 'product_id',
    },
  },
  quantity: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
}, {
  tableName: 'stock_adjustment_details',
  timestamps: false,
});

module.exports = StockAdjustmentDetail;
