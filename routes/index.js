const Router = require('express').Router();

Router.post('/', (req, res) => {
  res.json(req.body.username);
});

module.exports = Router;
