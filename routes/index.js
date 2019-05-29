const Router = require('express').Router();
const Pixiv = require('pixiv-app-api');
const axios = require('axios');

Router.get('/login', () => {
  const Username = process.env.USERNAME;
  const Password = process.env.PASSWORD;
  new Pixiv(Username, Password)
    .searchIllust('艦これ10000users入り')
    .then((response) => {
      console.log(JSON.stringify(response));
    });
});

Router.get('/', ({ res }) => {
  const URL = 'https://i.pximg.net/c/360x360_70/img-master/img/2018/01/18/08/34/39/66850430_p0_square1200.jpg';
  const config = {
    url: URL,
    method: 'get',
    responseType: 'arraybuffer',
    headers: { referer: 'https://pixiv.net' },
  };
  axios(config).then((response) => {
    const Test = Buffer.from(response.data, 'binary').toString('base64');
    res.end(Test);
  });
});

module.exports = Router;
