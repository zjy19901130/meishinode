const express=require("express");
const router=express.Router();
var pool=require("../pool");
var query=require("./query");
router.get("/shop",(req,res)=>{
    var  shop_id=req.query.shop_id;    
    var sql="SELECT shop_id,family_id,shopname, address,space ,origin_cost,carry_cost ,score ,serviceScore,foodScore, carry_time ,sold_count  ,details ,img_url,promotion       FROM   ms_shops    where shop_id=?";
    pool.query(sql,[shop_id],(err,result)=>{   
        if(err) throw err;   
        res.send({code:1,msg:result}); 
    });
});

router.get("/products",(req,res)=>{
    var  shop_id=req.query.shop_id;    
    var sql="SELECT product_id ,shop_id,name,price,pro_details,pro_sales,is_onsale,opinion,pro_family_name,img_url,md_img,( select count from ms_cart   where product_id=pid    limit 1) as count FROM ms_products where shop_id=?";  
    pool.query(sql,[shop_id],(err,result)=>{  
        res.send({code:1,msg:result});        
    });
});
router.get("/proRec",(req,res)=>{
    var  shop_id=req.query.shop_id;    
    var sql="SELECT product_id ,shop_id,name,price,pro_details,pro_sales,is_onsale,opinion,pro_family_name,img_url,( select count from ms_cart   where product_id=pid    limit 1) as count FROM ms_products   where shop_id=? ORDER BY pro_sales  ASC  limit 5 ";  
    pool.query(sql,[shop_id],(err,result)=>{  
        res.send({code:1,msg:result});        
    });
});

router.get("/foods",(req,res)=>{
    var  shop_id=req.query.shop_id;    
    var sql="select distinct(pro_family_name) FROM ms_products   where shop_id=?";  
    pool.query(sql,[shop_id],(err,result)=>{             
        res.send({code:1,msg:result}); 
    });
});



module.exports=router;
