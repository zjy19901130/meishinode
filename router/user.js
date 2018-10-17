const express=require("express");
var router=express.Router();
var query=require("./query");
var pool=require("../pool");
const fs = require("fs");        //使用文件移动功能
const multer = require("multer");//上传模块
router.post("/signin",(req,res)=>{
  var {phone,upwd}=req.body;
  if(phone==null){
    res.send({ok:201,msg:"电话不能为空"})
    return;
  }
  if(upwd==null){
    res.send({ok:202,msg:"密码不能为空"})
    return;
  }
  var k=0;
  var sql="select * from ms_user where phone=?";
  query(sql,[phone])  
  .then(result=>{   
    if(result.length>0){ 
      k=1;
     // console.log(2);
      var sql="select * from ms_user where phone=? AND upwd=?";            
      return query(sql,[phone,upwd])//return Promise 
      
    }
    else{
      var u_img="http://127.0.0.1:3000/login/loginname.png";
      var sql="insert into ms_user values(null,?,?,?,?)";
      var uname="e"+Math.floor(Math.random()*10000000);  
      k=0;
      //console.log(1);
      return query(sql,[uname,upwd,phone,u_img]);
    } 
  }).then(result=>{
      if(k==1){           
        
        res.send({code:1,msg:result});
      } 
      if(k==0){
       // console.log(3);
        var sql="select * from ms_user where phone=?";
        return query(sql,[phone]);
      }    
  }).then(result=>{
    if(k==0){
      console.log(result[0].uid);    
      console.log(req.session);
      res.send({code:1,msg:result});
    }   
  }).catch(error=>console.log(error));
   
});
router.get("/userInfo",(req,res)=>{ 
  var uid=req.query.uid;  
  if(uid=="")
    res.send({code:0});
  else{
    var sql="select * from ms_user where uid=?";
    pool.query(sql,[uid],(err,result)=>{   
      res.send({code:1,msg:result[0]});
    })
  }
})

var storage = multer.diskStorage({
  destination: function (req, file, cb){
      //文件上传成功后会放入public下的userImg文件夹
      cb(null, './public/userImg')
  },
  filename: function (req, file, cb){
      //设置文件的名字为其原本的名字，也可以添加其他字符，来区别相同文件，例如file.originalname+new Date().getTime();利用时间来区分
    
      cb(null, file.originalname)
  }
});
var upload = multer({
  storage: storage
});
//处理来自页面的ajax请求。single文件上传
router.post('/upload', upload.single('file'), function (req, res, next) {  
  var file = req.file;
  console.log(req.body);
  var uid=req.body.uid;
  //拼接文件上传后的网络路径，
  var srcFile = file.originalname;
  var i1 = srcFile.lastIndexOf(".");
  var len = srcFile.length;
  var suffix = srcFile.substring(i1,len);
  //1.2:时间戳+随机数+后缀 
  var newFileName =new Date().getTime()+Math.floor(Math.random()*9999)+suffix; 
  var newPath= "./public/userImg/"+newFileName;
  fs.renameSync(file.path,newPath); 
  //将其发回客户端
  var u_img=" http://127.0.0.1:3000/userImg/"+newFileName;
  var sql="update ms_user set u_img=? where uid=?";
  pool.query(sql,[u_img,uid],(err,result)=>{   
    res.send({code:1,msg:u_img});
  })   
});

/*
router.get("/islogin",(req,res)=>{
  if(req.session.uid==null)
    res.send({ok:0});
  else{
    var sql="select * from ms_user where uid=?";
    pool.query(sql,[req.session.uid],(err,result)=>{
      console.log(result);
      res.send({ok:1,msg:result[0]});
    })
  }
})*/

router.get("/signout",(req,res)=>{
  delete req.session.uid;
  res.send();
})

module.exports=router;