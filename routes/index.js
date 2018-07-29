const Router = require('express').Router();

Router.get('/', (req, res, next)=>{
    res.json("Hello world")
})

module.exports = Router;