var express = require("express");
var router = express.Router();
var pool = require("../pool");

router.get("/addcart",(req,res)=>{
    var $uid = req.query.uid;
    var $pid = req.query.pid;
    var $pcount = req.query.pcount;
    console.log($uid,$pid,$pcount);
    //先查询购物车表里是否存在该用户的该商品，如果存在则更新其数量
    var isproduct;
    var sql1 = "SELECT * from `lzlj_cart` where uid = ? and pid=?";
    pool.query(sql1,[$uid,$pid],(err,result)=>{
        if(err) throw err;
        // console.log(result[0].RowDataPacket=={'count(uid)':0});
        isproduct = result[0];
        console.log(result[0]);
    })
    //若存在 则更新数据
    setTimeout(() => {
        console.log("存在不"+isproduct);
        if(isproduct){
            var sql2 = "UPDATE `lzlj_cart` SET `pcount`=? where uid = ? and pid=?";
            pool.query(sql2,[$pcount,$uid,$pid],(err,result)=>{
                if(err) throw err;
                res.send({ok:1,msg:"添加成功"});
            })
        }else{
            //若不存在则添加
            var sql = "INSERT INTO `lzlj_cart` VALUES(null,?,?,?)";
            pool.query(sql,[$uid,$pid,$pcount],(err,result)=>{
                if(err)console.log(err);
                console.log(result);
                res.send({ok:1,msg:"添加成功"})
            })
        }
    }, 500);
   

})


router.get("/loadcart",(req,res)=>{
    var $uid = req.query.uid;   //传入uid
    // var $pid = req.query.pid;
    // var $pcount = req.query.pcount;
    //先查询该用户购物车里的商品id有哪些
    var sql = "SELECT pid,pcount from `lzlj_cart` where uid = ?";
    var pid_total=[];
    var product_details=[];
    console.log($uid);
    pool.query(sql,[$uid],(err,result)=>{   //通过uid查询该用户的购物车有哪些商品
        if(err) throw err;
        //把商品
        for(var i=0;i<result.length;i++){
            pid_total.push(result[i].pid);
            product_details.push(result[i].pcount);
        }
        console.log(result);
        console.log(pid_total);
        console.log(product_details);
    })
    console.log(pid_total);
    setTimeout(() => {
        var sql1 = "SELECT * from `lzlj_product_total` where pid in (?)";
        pool.query(sql1,[pid_total],(err,result)=>{
            if(err) throw err;
            var obj = [result,product_details];
            res.send(obj);
        })
    }, 500);


    //     //要返回所有商品的信息和数量
    //     //数组，[0]为商品信息，[1]为商品数量
    //     //
    //     //
    
})



module.exports=router;