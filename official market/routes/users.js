var express = require("express");
var router = express.Router();
var pool=require("../pool");

router.post("/signin",(req,res)=>{
    // console.log(req.body)
    var {uname,upwd}=req.body;
    var sql="select * from lzlj_user where uname=? and upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
        err&&console.log(err);
        res.writeHeader(200,{
            "Access-Control-Allow-Origin":"*"
        });
        console.log(result);
        if(result.length>0){
            req.session.uid=result[0].uid;
            // console.log(req.session);
            res.write(JSON.stringify({ok:1}));
        }else{
            res.write(JSON.stringify({ok:0,msg:"用户名或密码错误"}));
        }
        res.end();
    })
})

router.get("/islogin",(req,res)=>{
    // console.log(111);
    if(req.session.uid==null){
        res.send({ok:0})
    }else{
        // console.log(666);
        var sql = "select * from lzlj_user where uid = ?"
        pool.query(sql,[req.session.uid],(err,result)=>{
            // console.log(result);
            // console.log(req.session.uid)
            res.send({ok:1,uname:result[0].uname});
        })
    }
})

router.get("/signout",(req,res)=>{
    delete req.session.uid;
    console.log(111);
    res.send(222);
})

router.post("/signup",(req,res)=>{
    // console.log(req.body);
    var uname = req.body.$uname;
    var upwd = req.body.$upwd;
    var email = req.body.$email;
    var phone = req.body.$phone;
    var user_name = req.body.$user_name;
    var birthday = req.body.$birthday;
    var gender = req.body.$gender;

    var sql = "INSERT INTO `lzlj_user` VALUES(null,?,?,?,?,?,?,?)"
    pool.query(sql,[uname,upwd,email,phone,user_name,birthday,gender],(err,result)=>{
        if(err) throw err;
        res.send({ok:1,msg:"注册成功"});
    })
    // console.log({uname,upwd,email,phone,user_name,birthday,gender});
    
})

router.get("/uname",(req,res)=>{
    var uname = req.query.$uname;
    var sql = "select * from lzlj_user where uname = ?";
    pool.query(sql,uname,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,msg:"用户名已存在",result})
        }else{
            res.send({code:0,msg:"用户名可用",result})
        }
    })
})



module.exports=router;