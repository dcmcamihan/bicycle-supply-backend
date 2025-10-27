const { DataTypes, Op } = require('sequelize');
const sequelize = require('../config/db');

const ReturnAndReplacement = sequelize.define('ReturnAndReplacement', {
    return_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    sale_detail_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model: 'sale_details',
            key: 'sale_detail_id'
        }
    },
    quantity: {
        type: DataTypes.INTEGER,
        allowNull: false,
        defaultValue: 1,
        validate: {
            min: 1,
            async quantityNotExceedingSale(value) {
                const saleDetail = await sequelize.models.SaleDetails.findByPk(this.sale_detail_id);
                if (!saleDetail) throw new Error('Invalid sale_detail_id');
                
                // Get total quantity already returned for this sale_detail
                const totalReturned = await sequelize.models.ReturnAndReplacement.sum('quantity', {
                    where: {
                        sale_detail_id: this.sale_detail_id,
                        return_id: { [Op.ne]: this.return_id } // Exclude current return if updating
                    }
                }) || 0;
                
                if (totalReturned + value > saleDetail.quantity_sold) {
                    throw new Error('Total return quantity cannot exceed original sale quantity');
                }
            }
        }
    },
    return_status: {
        type: DataTypes.CHAR(4),
        allowNull: false,
        references: {
            model: 'status',
            key: 'status_code'
        }
    },
    transaction_date: {
        type: DataTypes.DATE,
        allowNull: false
    },
    reason: {
        type: DataTypes.STRING,
        allowNull: true,
        defaultValue: null
    },
    // new: action type to indicate refund or replacement
    action_type: {
        type: DataTypes.STRING,
        allowNull: false,
        defaultValue: 'refund',
        validate: {
            isIn: [['refund', 'replacement']]
        }
    },
    replacement_product_id: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: { model: 'product', key: 'product_id' },
        validate: {
            async replacementRequired() {
                if (this.action_type === 'replacement' && !this.replacement_product_id) {
                    throw new Error('Replacement product is required for replacement returns');
                }
            }
        }
    }
}, {
    tableName: 'return_and_replacement',
    timestamps: false
});

module.exports = ReturnAndReplacement;