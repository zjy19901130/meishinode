const express=require("express");
const router=express.Router();
var pool=require("../pool");
router.get("/list",(req,res)=>{  
    var sql="SELECT *  FROM   ms_ratings order by rateTime desc";
    pool.query(sql,[],(err,result)=>{   
        if(err) throw err;   
        res.send({code:1,msg:result}); 
    });
});


module.exports=router;
