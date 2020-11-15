const express = require('express')
// const db = require('./db/connect')  //mongo
// const db = require("./database/db") //mysql
const app = express()
const bodyparser = require('body-parser')
app.use(bodyparser.urlencoded({extended: false}))
//解析json
app.use(bodyparser.json())

const patientRouter = require('./router/patientRouter')

app.use('/patient',patientRouter)

app.listen(8080,()=>{
  console.log('服务器启动!');
})