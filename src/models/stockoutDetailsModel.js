const { DataTypes } = require('sequelize');
const sequelize = require('../config/db');

const StockoutDetails = sequelize.define('StockoutDetails', {
  stockout_details_id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  stockout_id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: 'stockout',
      key: 'stockout_id'
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
  quantity_removed: {
    type: DataTypes.INTEGER,
    allowNull: true,
    defaultValue: null
  }
}, {
  tableName: 'stockout_details',
  timestamps: false
});

module.exports = StockoutDetails;
