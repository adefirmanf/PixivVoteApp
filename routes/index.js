const Router = require('express').Router();
const Pixiv = require('pixiv-app-api');

Router.post('/login', (req) => {
  new Pixiv().login(req.body.username, req.body.password)
    .then((response) => {
      console.log(response);
    });
});

Router.get('/', (req, res) => {
  res.json('Hello world');
});

module.exports = Router;
