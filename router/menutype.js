const express = require("express");
const pool = require('../pool.js');
var router = express.Router();

router.get("/menutype", (req, res) => {
    var type = req.query.type;
	//console.log(type);
    var sql = `select * from menu where type=?`
    pool.query(sql,[type],(err, result) => {
        if(err)throw err;
	   if(result.length>0){
		   res.send({code:1,data:result});
		   }else{
		   res.send({code:-1,msg:"失败"});
	   }
    });

})

module.exports = router;