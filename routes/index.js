const Router = require('express').Router();
const Pixiv = require('pixiv-app-api');
const axios = require('axios');

Router.post('/login', (req) => {
  new Pixiv().login(req.body.username, req.body.password)
    .then((response) => {
      console.log(response);
    });
});

Router.get('/', ({ res }) => {
  const URL = 'https://i.pximg.net/img-original/img/2016/12/15/00/02/42/60380013_p0.png';
  const config = {
    url: URL,
    method: 'get',
    responseType: 'arraybuffer',
    headers: { referer: 'https://pixiv.net' },
  };
  axios(config).then((response) => {
    console.log(response.status);
    const headers = { 'Content-Type': 'image/png' };
    res.writeHead(200, headers);
    res.end(response.data, 'binary');
  });
});

module.exports = Router;
