const SupplierAddress = require('../models/supplierAddressModel');

exports.getAllSupplierAddresses = async (req, res) => {
    try {
        const supplierAddresses = await SupplierAddress.findAll();
        res.json(supplierAddresses);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getSupplierAddressById = async (req, res) => {
    try {
        const supplierAddress = await SupplierAddress.findByPk(req.params.id);
        if (supplierAddress) {
            res.json(supplierAddress);
        } else {
            res.status(404).json({ message: 'Supplier address not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getSupplierAddressesBySupplier = async (req, res) => {
    try {
        const supplierId = req.params.id;
        const addresses = await SupplierAddress.findAll({ where: { supplier_id: supplierId } });
        res.json(addresses);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createSupplierAddress = async (req, res) => {
    try {
        // Accept frontend-friendly field names and normalize to DB column names
        const payload = { ...req.body };
        // frontend uses address_line1, postal_code, state
        if (payload.address_line1 !== undefined) {
            payload.street = payload.address_line1;
            delete payload.address_line1;
        }
        if (payload.postal_code !== undefined) {
            payload.zip_code = payload.postal_code;
            delete payload.postal_code;
        }
        if (payload.state !== undefined) {
            payload.province = payload.state;
            delete payload.state;
        }

        // Ensure required DB fields are present (city, country, zip_code, province)
        // If some are missing, return a 400 with a helpful message
        const required = ['supplier_id', 'city', 'country', 'zip_code', 'province'];
        const missing = required.filter(k => payload[k] === undefined || payload[k] === '');
        if (missing.length > 0) {
            return res.status(400).json({ error: `Missing required supplier address fields: ${missing.join(', ')}` });
        }

        const newSupplierAddress = await SupplierAddress.create(payload);
        res.status(201).json(newSupplierAddress);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateSupplierAddress = async (req, res) => {
    try {
        // Normalize frontend-friendly keys to DB column names for updates as well
        const payload = { ...req.body };
        if (payload.address_line1 !== undefined) {
            payload.street = payload.address_line1;
            delete payload.address_line1;
        }
        if (payload.postal_code !== undefined) {
            payload.zip_code = payload.postal_code;
            delete payload.postal_code;
        }
        if (payload.state !== undefined) {
            payload.province = payload.state;
            delete payload.state;
        }

        const [updated] = await SupplierAddress.update(payload, {
            where: { supplier_address_id: req.params.id }
        });
        if (updated) {
            const updatedSupplierAddress = await SupplierAddress.findByPk(req.params.id);
            res.json(updatedSupplierAddress);
        } else {
            res.status(404).json({ message: 'Supplier address not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteSupplierAddress = async (req, res) => {
    try {
        const deleted = await SupplierAddress.destroy({
            where: { supplier_address_id: req.params.id }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Supplier address not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};