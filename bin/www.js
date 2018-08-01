const express = require('express');
const cors = require('cors');
const path = require('path');

const app = express();
const index = require('../routes/index');

const port = process.env.PORT || 3000;

const corsOptions = {
  origin: 'http://localhost:8080', // Development URL using localhost
  optionsSuccessStatus: 200, // some legacy browsers (IE11, various SmartTVs) choke on 204
};

app.use('/api', cors(corsOptions), index);
if (process.env.NODE_ENV === 'production') {
  console.log('Production is running');
  app.use(express.static('dist'));
  app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'dist', 'index.html'));
  });
}

app.listen(port, () => {
  console.log(`Port is listening on ${port}`);
});

module.exports = app;
