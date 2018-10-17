var express=require("express");
var router=express.Router();
var pool=require("../pool");
var query=require("./query");
//cartItems 获得当前用户的购物车项，按编号降序排列
router.get("/list",(req,res)=>{
  var user_id=req.query.user_id;
  var shop_id=req.query.shop_id;
  var sql=
  `select * from  ms_cart  inner join  ms_products on pid=product_id  where user_id=? and shop_id=?  order by cid desc`; 
   // var uid=req.session.uid;
  pool.query(sql,[user_id,shop_id],(err,result)=>{   
    res.send(result);

  })
});

router.get("/addCart",(req,res)=>{
  var {pid,count,user_id}=req.query;
  var sql="select *  from  ms_cart where user_id=? and pid=?";
  query(sql,[user_id,pid])
  .then(result=>{
    if(result.length==0){
      var sql="insert into ms_cart values(null,?,?,?)";
      pool.query(sql,[user_id,pid,count],(err,result)=>{
        res.send();
      })
    }else{
      var sql="update ms_cart set count=count+? where user_id=? and pid=?";
      pool.query(sql,[count,user_id,pid],(err,result)=>{
        res.send();
      })
    }
  })
});

module.exports=router;