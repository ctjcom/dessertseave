const express = require("express");
const pool = require('../pool.js');
var router = express.Router();
/*根据菜单id查询*/
router.get("/menu", (req, res) => {
    var mid = req.query.mid;
    var sql = `SELECT * FROM menu WHERE mid=?`
    pool.query(sql, [mid], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

module.exports = router;