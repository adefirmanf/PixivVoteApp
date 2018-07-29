const express = require('express')
const cors = require('cors')
const app1 = express()
const app2 = express()

const index = require('../routes/index')

function BackServer(){
    const corsOptions = {
        origin : 'http://localhost:8080',
        optionsSuccessStatus : 200
    }
    app1.use('/', cors(corsOptions), index)    
    app1.listen(3000, ()=>{
        console.log("BackEnd port is listening on 3000")
    })
}

function FrontServer(){
    app2.use(express.static('dist'))
    app2.listen(8080, ()=>{
        console.log("FrontEnd port is listening on 8080")
    })
}

module.exports = {
    BackServer : BackServer,
    FrontServer : FrontServer
}