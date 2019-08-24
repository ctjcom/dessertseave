const express = require("express");
const pool = require('../pool.js');
var router = express.Router();

router.get("/menutype", (req, res) => {
	var type = req.query.type;
	var start=parseInt(req.query.start);
	var count=parseInt(req.query.count);
	//console.log(type);
    var sql = `select * from menu where type=? LIMIT ?,?`
    pool.query(sql,[type,start,count],(err, result) => {
        if(err)throw err;
	   if(result.length>0){
		   res.send({code:1,data:result});
		   }else{
		   res.send({code:-1,msg:"失败"});
	   }
    });

})

module.exports = router;