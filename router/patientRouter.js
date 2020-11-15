const e = require('express')
const express = require('express')
const router = express.Router()
const db = require('../database/db')

router.post('/add',(req,res)=>{
  let {name,sex,id,illness} = req.body
  let sql = "insert into patients(name,sex,id,illness) values(?,?,?,?)"
  let sqlParams = [name,sex,id,illness]
  db.query(sql,sqlParams,(err,data)=>{
    if(err){
      res.send({err:-1,msg:"参数错误",list:err})
    }else {
      res.send({err:0,msg:'添加成功'})
    }
  })
  
})

router.post('/getInfoById',(req,res)=>{
    let {pid} = req.body
    let sql = "select * from checkbg where pid= ? "
    let sqlParam = [pid]
    db.query(sql,sqlParam,(err,data)=>{
      if(err){
        res.send({err:-1,msg:"参数错误"})
      }else{
        res.send({err:0,msg:'查询成功',list:data})
        // console.log(data);
      }
    })
})



router.post("/addbslv",(req,res)=>{
  let {pid,checkdate,checktime,bglv,remarks} = req.body
  let sql = "insert into checkbg(bglv,checkdate,checktime,pid,remarks) values(?,?,?,?,?)"
  let sqlParams = [bglv,checkdate,checktime,pid,remarks]
  db.query(sql,sqlParams,(err,data)=>{
    if(err){
      res.send({err:-1,msg:"参数错误"})
    }else {
      res.send({err:0,msg:'添加成功'})
    }
  })
})

router.post('/addbplv',(req,res)=>{
  let {pid,checkdate,remarks,hg1,hg2,bpm} = req.body
  let sql = "insert into checkbp(checkdate,hg1,hg2,bpm,remarks,pid) values(?,?,?,?,?,?)"
  let sqlParams = [checkdate,hg1,hg2,bpm,remarks,pid]
  da.query(sql,sqlParams,(err,data)=>{
    if(err){
      res.send({err:-1,msg:'参数错误!'})
    }else{
      res.send({err:0,msg:'添加成功!'})
    }
  })
})


router.get('/getInfo',(req,res)=>{
  let sql = 'select * from patients'
  db.query(sql,(err,data)=>{
    if(err){
      res.send({err:-1,msg:'查询失败'})
    }else{
      res.send({err:0,msg:"查询成功",list:data})
    }
  })

})

router.get("/getbsInfo",(req,res)=>{
  let sql = 'select * from checkbg'
  db.query(sql,(err,data)=>{
    if(err){
      res.send({err:-1,msg:'查询失败'})
    }else{
      res.send({err:0,msg:"查询成功",list:data})
    }
  })
})

router.get("/getbpInfo",(req,res)=>{
  let sql = 'select * from checkbq'
  db.query(sql,(err,data)=>{
    if(err){
      res.send({err:-1,msg:'查询失败'})
    }else{
      res.send({err:0,msg:"查询成功",list:data})
    }
  })
})


module.exports = router