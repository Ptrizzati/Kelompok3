const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const laporanRoutes = require('./routes/laporan');

const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());
app.use('/api', laporanRoutes);

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
