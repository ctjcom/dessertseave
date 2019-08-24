const express = require("express");
const pool = require('../pool.js');
var router = express.Router();
/*根据菜单id查询*/
router.get("/menu", (req, res) => {
    var mid = req.query.mid;
    //console.log(mid);
    var data = {};
    var sqla = `SELECT * FROM menu WHERE mid=?`
    pool.query(sqla, [mid], (err, result) => {
        if (err) throw err;
        //console.log(result);
        data.menu = result[0]; 
        var sqlb = `SELECT * FROM materials WHERE mid=?`
        pool.query(sqlb, [mid], (err, result) => {
            if (err) throw err;
            data.materials = result;
            var sqlc = `SELECT * FROM step WHERE mid=?`
            pool.query(sqlc, [mid], (err, result) => {
                if (err) throw err;
                data.step = result;
                if (result.length > 0) {
                    console.log(data)
                    res.send(data);
                } else {
                    res.send({ code: 1, msg: "shibai" });
                }
        
                // res.send(result);
            })
            // res.send(result);
        })



        
    })


})

module.exports = router;