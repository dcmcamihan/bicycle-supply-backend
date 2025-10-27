const Supplier = require('../models/supplierModel');
const SupplierContact = require('../models/supplierContactModel');
const SupplierAddress = require('../models/supplierAddressModel');

// Helper: normalize address shape from DB to frontend-friendly keys
function normalizeAddresses(addresses = []) {
    return addresses.map(a => ({
        supplier_address_id: a.supplier_address_id,
        address_line1: a.street || '',
        city: a.city || '',
        state: a.province || '',
        country: a.country || '',
        postal_code: a.zip_code || ''
    }));
}

function normalizeContacts(contacts = []) {
    return contacts.map(c => ({
        contact_type_code: c.contact_type_code,
        contact_value: c.contact_value,
        is_primary: c.is_primary
    }));
}

function normalizeSupplierInstance(supplierInstance) {
    const plain = supplierInstance && supplierInstance.get ? supplierInstance.get({ plain: true }) : supplierInstance || {};
    return {
        ...plain,
        contacts: normalizeContacts(plain.contacts || []),
        addresses: normalizeAddresses(plain.addresses || [])
    };
}

exports.getAllSuppliers = async (req, res) => {
    try {
        const suppliers = await Supplier.findAll({
            include: [
                {
                    model: SupplierContact,
                    as: 'contacts',
                    attributes: ['contact_type_code', 'contact_value', 'is_primary', 'supplier_id']
                },
                {
                    model: SupplierAddress,
                    as: 'addresses',
                    attributes: ['supplier_address_id', 'supplier_id', 'country', 'zip_code', 'province', 'city', 'barangay', 'street']
                }
            ]
        });

        const normalized = suppliers.map(s => normalizeSupplierInstance(s));
        return res.json(normalized);
    } catch (error) {
        return res.status(500).json({ error: error.message });
    }
};

exports.getSupplierById = async (req, res) => {
    try {
        const supplier = await Supplier.findByPk(req.params.id, {
            include: [
                { model: SupplierContact, as: 'contacts', attributes: ['contact_type_code', 'contact_value', 'is_primary', 'supplier_id'] },
                { model: SupplierAddress, as: 'addresses', attributes: ['supplier_address_id', 'supplier_id', 'country', 'zip_code', 'province', 'city', 'barangay', 'street'] }
            ]
        });

        if (!supplier) return res.status(404).json({ message: 'Supplier not found' });
        return res.json(normalizeSupplierInstance(supplier));
    } catch (error) {
        return res.status(500).json({ error: error.message });
    }
};

exports.createSupplier = async (req, res) => {
    try {
        // Expecting supplier fields in req.body; contacts/addresses are created by separate endpoints in this app
        const payload = req.body || {};
        const created = await Supplier.create(payload);
        // Return created supplier in normalized shape (empty contacts/addresses)
        const plain = created.get ? created.get({ plain: true }) : created;
        return res.status(201).json({ ...plain, contacts: [], addresses: [] });
    } catch (error) {
        return res.status(500).json({ error: error.message });
    }
};

exports.updateSupplier = async (req, res) => {
    try {
        const supplier = await Supplier.findByPk(req.params.id);
        if (!supplier) return res.status(404).json({ message: 'Supplier not found' });

        await supplier.update(req.body || {});
        // reload with associations
        const reloaded = await Supplier.findByPk(req.params.id, {
            include: [
                { model: SupplierContact, as: 'contacts', attributes: ['contact_type_code', 'contact_value', 'is_primary', 'supplier_id'] },
                { model: SupplierAddress, as: 'addresses', attributes: ['supplier_address_id', 'supplier_id', 'country', 'zip_code', 'province', 'city', 'barangay', 'street'] }
            ]
        });

        return res.json(normalizeSupplierInstance(reloaded));
    } catch (error) {
        return res.status(500).json({ error: error.message });
    }
};

exports.deleteSupplier = async (req, res) => {
    try {
        const supplier = await Supplier.findByPk(req.params.id, {
            include: [
                { model: SupplierContact, as: 'contacts' },
                { model: SupplierAddress, as: 'addresses' }
            ]
        });

        if (!supplier) return res.status(404).json({ message: 'Supplier not found' });

        const plainBefore = normalizeSupplierInstance(supplier);

        // delete contacts and addresses first to keep data consistent
        await SupplierContact.destroy({ where: { supplier_id: req.params.id } });
        await SupplierAddress.destroy({ where: { supplier_id: req.params.id } });
        await supplier.destroy();

        return res.json(plainBefore);
    } catch (error) {
        return res.status(500).json({ error: error.message });
    }
};