const express = require('express');
const router = express.Router();
const db = require('../database/db');

// Test database connection
router.get('/test-connection', async (req, res) => {
  try {
    const [rows, fields] = await db.execute('SELECT 1 + 1 AS solution');
    res.json({ message: 'Database connection successful!', solution: rows[0].solution });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

// Existing CRUD routes
router.post('/laporan', async (req, res) => {
  const { kecamatan, desa, alamat, laporan, foto } = req.body;
  try {
    const [result] = await db.execute(
      'INSERT INTO laporan (kecamatan, desa, alamat, laporan, foto) VALUES (?, ?, ?, ?, ?)',
      [kecamatan, desa, alamat, laporan, foto]
    );
    res.status(201).json({ id: result.insertId });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.get('/laporan', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM laporan');
    res.json(rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.get('/laporan/:id', async (req, res) => {
  try {
    const [rows] = await db.execute('SELECT * FROM laporan WHERE id = ?', [req.params.id]);
    res.json(rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.put('/laporan/:id', async (req, res) => {
  const { kecamatan, desa, alamat, laporan, foto } = req.body;
  try {
    const [result] = await db.execute(
      'UPDATE laporan SET kecamatan = ?, desa = ?, alamat = ?, laporan = ?, foto = ? WHERE id = ?',
      [kecamatan, desa, alamat, laporan, foto, req.params.id]
    );
    res.json({ changes: result.affectedRows });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

router.delete('/laporan/:id', async (req, res) => {
  try {
    const [result] = await db.execute('DELETE FROM laporan WHERE id = ?', [req.params.id]);
    res.json({ changes: result.affectedRows });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

module.exports = router;
