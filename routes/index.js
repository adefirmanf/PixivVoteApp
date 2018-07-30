const Router = require('express').Router();

Router.get('/', (req, res) => {
  res.json('Hello world');
});

module.exports = Router;
