//创建mysql连接池
const mysql = require('mysql');
var pool = mysql.createPool({
  host: '127.0.0.1',    //连接mysql数据库地址
  user: 'root',         //连接mysql数据库用户名
  password: '',         //连接mysql数据库密码
  database: 'ms',  //操作的 数据库
  port:3306,            //端口号3306
  connectionLimit: 10   //活动连接数量
});

//把创建好的连接池导出
module.exports = pool;

