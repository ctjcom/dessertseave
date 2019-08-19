const express=require("express")
const cors=require("cors")
const session=require('express-session');
const menu=require("./router/menu");
const index=require("./router/index");
var app=express();

//配置跨域
app.use(cors({
    origin:"*",//允许所有的跨域资源访问
    credentials:true,//请求验证
}))

//配置session模块
app.use(session({
    secret:'128位安全字符串',
    resave:true,//请求时更新数据
    saveUninitialized:true,//保存初始数据
}))

//配置项目静态目录
app.use(express.static("public"));
//配置路由
app.use("/menu",menu);
app.use("/",index);


app.listen(8080,()=>{
   console.log("创建8080成功") 
});

