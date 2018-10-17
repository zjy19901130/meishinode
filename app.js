const express=require("express");
const bodyParser = require('body-parser');
const cors=require("cors");
const session = require("express-session");
var cookieParser=require("cookie-parser");

var swipe=require("./router/swipe");
var familylist=require("./router/familylist");
var indexShop=require("./router/indexShop");
var shopdetails=require("./router/shopdetails");
var cart=require("./router/cart");
var user=require("./router/user");

var ratings=require("./router/ratings");
//2.创建express对象
var app=express();
//3.绑定监听端口3000
var server=app.listen(3000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static(__dirname+'/public'));
app.use(cors({
  orign:["http://127.0.0.1:8080","http://localhost:8080","http://192.168.1.11:8080", "http://0.0.0.0:8080"],
  credentials:true
}));
app.use(cookieParser());
app.use(session({
  secret:'12345',
  cookie:{maxAge:60*1000*30},//过期时间ms
  resave:false,
  saveUninitialized:true
}));//将服务器的session，放在req.session中

app.use("/swipe",swipe);
app.use("/family",familylist);
app.use("/indexShop",indexShop);
app.use("/shopdetails",shopdetails);
app.use("/cart",cart);
app.use("/user",user);
app.use("/ratings",ratings);