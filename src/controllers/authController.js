const crypto = require('crypto');
const bcrypt = require('bcrypt');
const Employee = require('../models/employeeModel');

// In-memory token store for demo. In production, store in DB with expiration.
const resetTokens = new Map(); // token -> { employee_id, exp }

const TOKEN_TTL_MS = 1000 * 60 * 15; // 15 minutes
const SECRET = process.env.RESET_TOKEN_SECRET || 'dev-reset-secret';

function signPayload(payload) {
  const data = Buffer.from(JSON.stringify(payload)).toString('base64url');
  const sig = crypto.createHmac('sha256', SECRET).update(data).digest('base64url');
  return `${data}.${sig}`;
}

function verifyToken(token) {
  const [data, sig] = token.split('.');
  if (!data || !sig) return null;
  const expected = crypto.createHmac('sha256', SECRET).update(data).digest('base64url');
  if (!crypto.timingSafeEqual(Buffer.from(sig), Buffer.from(expected))) return null;
  const payload = JSON.parse(Buffer.from(data, 'base64url').toString('utf8'));
  return payload;
}

exports.requestReset = async (req, res) => {
  try {
    const { username } = req.body;
    if (!username) return res.status(400).json({ message: 'Username is required' });
    const employee = await Employee.findOne({ where: { username } });
    if (!employee) return res.status(404).json({ message: 'Employee not found' });
    const payload = { employee_id: employee.employee_id, ts: Date.now() };
    const token = signPayload(payload);
    resetTokens.set(token, { employee_id: employee.employee_id, exp: Date.now() + TOKEN_TTL_MS });
    // Normally, email/SMS the token link. For demo, return token directly.
    return res.json({ token, expires_in_minutes: TOKEN_TTL_MS / 60000 });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
};

exports.resetPassword = async (req, res) => {
  try {
    const { token, newPassword } = req.body;
    if (!token || !newPassword) return res.status(400).json({ message: 'Token and newPassword are required' });
    const entry = resetTokens.get(token);
    if (!entry) return res.status(400).json({ message: 'Invalid or expired token' });
    if (Date.now() > entry.exp) {
      resetTokens.delete(token);
      return res.status(400).json({ message: 'Invalid or expired token' });
    }
    const payload = verifyToken(token);
    if (!payload || payload.employee_id !== entry.employee_id) {
      resetTokens.delete(token);
      return res.status(400).json({ message: 'Invalid token' });
    }
    const hash = await bcrypt.hash(newPassword, 10);
    await Employee.update({ password: hash }, { where: { employee_id: entry.employee_id } });
    resetTokens.delete(token);
    return res.json({ success: true });
  } catch (e) {
    return res.status(500).json({ error: e.message });
  }
};
