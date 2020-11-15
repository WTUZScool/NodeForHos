var mysql = require('mysql')
var dbConfig = require('./db.config')

let db = mysql.createConnection(dbConfig);

db.connect((err)=>{
  if(err){
    console.log('连接失败!');
  }else {
    console.log("连接成功!");
  }
})

module.exports = db