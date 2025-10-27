const bcrypt = require('bcrypt');
const Employee = require('../models/employeeModel');
const EmployeeContact = require('../models/employeeContactModel');

exports.getAllEmployees = async (req, res) => {
    try {
        const employees = await Employee.findAll({
            include: [
                {
                    model: EmployeeContact,
                    as: 'contacts',
                    attributes: ['contact_type_code', 'contact_value', 'is_primary']
                }
            ]
        });
        res.json(employees);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

// Re-hash any employee records that still have plaintext passwords
exports.rehashPlaintextPasswords = async (req, res) => {
    try {
        const employees = await Employee.findAll();
        let updatedCount = 0;
        for (const emp of employees) {
            const pwd = String(emp.password || '');
            if (!pwd.startsWith('$2a$') && !pwd.startsWith('$2b$')) {
                const hashed = await bcrypt.hash(pwd, 10);
                await Employee.update({ password: hashed }, { where: { employee_id: emp.employee_id } });
                updatedCount++;
            }
        }
        res.json({ updated: updatedCount });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.getEmployeeById = async (req, res) => {
    try {
        const employee = await Employee.findByPk(req.params.id, {
            include: [
                {
                    model: EmployeeContact,
                    as: 'contacts',
                    attributes: ['contact_type_code', 'contact_value', 'is_primary']
                }
            ]
        });
        if (employee) {
            res.json(employee);
        } else {
            res.status(404).json({ message: 'Employee not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.createEmployee = async (req, res) => {
    try {
        // If no password provided, set a temporary default password
        const plainPassword = req.body.password || 'ChangeMe123!';
        const hashedPassword = await bcrypt.hash(plainPassword, 10);

        // Ensure required fields with sensible defaults if missing
        const first = (req.body.first_name || '').trim();
        const last = (req.body.last_name || '').trim();
        const generatedUsername = req.body.username || (`${first}.${last}`.replace(/\s+/g, '_').toLowerCase() || `user${Date.now()}`);
        const gender = req.body.gender || 'M';
        const employee_status = req.body.employee_status || '0001'; // default to Active

        const payload = {
            ...req.body,
            password: hashedPassword,
            username: generatedUsername,
            gender,
            employee_status
        };

        const newEmployee = await Employee.create(payload);
        res.status(201).json(newEmployee);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.updateEmployee = async (req, res) => {
    try {
        if (req.body.password) {
            req.body.password = await bcrypt.hash(req.body.password, 10);
        }
        const [updated] = await Employee.update(req.body, {
            where: { employee_id: req.params.id }
        });
        if (updated) {
            const updatedEmployee = await Employee.findByPk(req.params.id);
            res.json(updatedEmployee);
        } else {
            res.status(404).json({ message: 'Employee not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.deleteEmployee = async (req, res) => {
    try {
        const deleted = await Employee.destroy({
            where: { employee_id: req.params.id }
        });
        if (deleted) {
            res.status(204).json();
        } else {
            res.status(404).json({ message: 'Employee not found' });
        }
    } catch (error) {
        // If there are dependent rows (attendances, role history, etc.) the DB will refuse
        // the delete with a FK constraint error. Return a 409 with a helpful message.
        if (error && error.message && error.message.includes('Cannot delete or update a parent row')) {
            return res.status(409).json({ error: 'Employee cannot be deleted because there are dependent records (attendances, role history, etc.). Remove or reassign dependent records first.' });
        }
        res.status(500).json({ error: error.message });
    }
};

exports.findEmployeeByUsernameAndPassword = async (req, res) => {
    try {
        const { username, password } = req.body;
        const employee = await Employee.findOne({ where: { username } });
        if (employee) {
            const isPasswordValid = await bcrypt.compare(password, employee.password);
            if (isPasswordValid) {
                res.json(employee);
            } else {
                res.status(401).json({ message: 'Invalid password' });
            }
        } else {
            res.status(404).json({ message: 'Employee not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

exports.validateSession = async (req, res) => {
    try {
        const { sessionToken } = req.body;
        const [employee_id, base64Password] = sessionToken.split(':');
        const password = Buffer.from(base64Password, 'base64').toString('utf-8');

        const employee = await Employee.findByPk(employee_id);
        if (employee) {
            if (password === employee.password) {
                res.json({ valid: true });
            } else {
                res.status(401).json({ valid: false });
            }
        } else {
            res.status(404).json({ message: 'Employee not found' });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};