const express = require('express')
const cors = require('cors')
const app = express()
const index = require('../routes/index')
const path = require('path')

const port = process.env.PORT || 3000

app.use('/api', index)
if(process.env.NODE_ENV == 'production'){
    console.log("Production is running")
    app.use(express.static('dist'))
    app.get('*', function(req, res) {
        res.sendFile(path.join(__dirname, 'dist', 'index.html'));
      });
}

app.listen(port, ()=>{
    console.log(`Port is listening on ${port}`)
})

module.exports = app;