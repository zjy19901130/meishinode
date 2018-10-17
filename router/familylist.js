const express=require("express");
const router=express.Router();
var pool=require("../pool");
router.get("/list",(req,res)=>{
    var sql="SELECT family_id,img_url,name FROM ms_index_family";
    pool.query(sql,[],(err,result)=>{
        //判断查询结果是否出现错误，如果出现直接抛出。
        if(err) throw err;
        // console.log(result); //数组
        //将结果返回客户端
        //返回数据 1.告诉客户成功还是失败 （ 1成功  -1失败）
        
        res.send({code:1,msg:result});         
      
    });
});
router.get("/familydetail",(req,res)=>{
    //http://127.0.0.1:3000/family/familydetail?fid=1
    var family_id=req.query.fid;
    var sql="SELECT shop_id,family_id,shopname, address,space ,origin_cost,carry_cost ,score , carry_time ,sold_count  ,details ,img_url,promotion       FROM   ms_shops    where family_id=? ";
    pool.query(sql,[family_id],(err,result)=>{
        //判断查询结果是否出现错误，如果出现直接抛出。
        if(err) throw err;
        // console.log(result); //数组
        //将结果返回客户端
        //返回数据 1.告诉客户成功还是失败 （ 1成功  -1失败）
        
        res.send({code:1,msg:result});         
      
    });
});
module.exports=router;
