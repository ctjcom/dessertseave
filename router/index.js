const express = require("express");
const pool = require('../pool.js');
var router = express.Router();

router.get("/index", (req, res) => {
    var data={};
    var sql = `SELECT mid,mname,type,mimg,collect,browse FROM menu WHERE type=? LIMIT ?,?`
        new Promise((resolve,reject)=>{
            pool.query(sql, [1,0,4],(err,result)=>{
                if(err)throw err;
                //早餐
                data.breakfast=result;
                resolve();
            })
        }).then(()=>{
            pool.query(sql, [2,0,4],(err,result)=>{
                if(err)throw err;
                //川菜
                data.siChuan=result;
            })
        }).then(()=>{
            pool.query(sql, [3,0,4],(err,result)=>{
                if(err)throw err;
                //湘菜
                data.xiangcai=result;
            })
        }).then(()=>{
            pool.query(sql, [4,0,4],(err,result)=>{
                if(err)throw err;
                //粤菜
                data.yuecai=result;
            })
        }).then(()=>{
            pool.query(sql, [5,0,4],(err,result)=>{
                if(err)throw err;
                //甜点
                data.dessert=result;  
            })
        }).then(()=>{
            pool.query(`SELECT * FROM recommend`,(err,result)=>{
                //每日推荐
                data.recommend=result;
                res.send(data);
            })
        })
    }
)

module.exports = router;