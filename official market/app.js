const express = require('express');
const bodyParser = require('body-parser');
const pool = require("./pool");
const session = require("express-session");

var users = require("./routes/users")



var app =express();
var server=app.listen(3030);
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('../official market/public'));
app.use(session({
    secret:"随机字符串",
    cookie:{maxAge:60*1000*30},
    resave:false,
    saveUninitialized:true
}))

app.get("/product",(req,res)=>{
    var $veriety =req.query.veriety;
    if(!$veriety||$veriety=="all"){
        $veriety = ["gj1573","tequ","jiaolin","touqu","erqu","ljcp","thz","bd"]
    }
    var limit1 = 0;
    var limit2 = 20;
    var dataNum ;
    //查询一共有多少条数据
    var sql = "SELECT * FROM lzlj_product_total where veriety in (?)";
    pool.query(sql,[$veriety],(err,result)=>{
        if(err) throw err;
        dataNum=result.length;
        console.log(dataNum);
    })
    setTimeout(() => {
        if(!$veriety||$veriety=="all"){     //如果veriety为空或等于all查询全部
            console.log("查询所有")
            var sql = "SELECT * FROM lzlj_product_total limit "+limit1+","+limit2;
            pool.query(sql,(err,result)=>{
                if(err) throw err;
                // console.log(result);
                // console.log({data:result,$length:dataNum});
                console.log(dataNum);
                res.send({data:result,$length:dataNum});
            })
        }else{
            console.log("查询特定参数的商品");
            console.log($veriety)
            var sql = "SELECT * FROM lzlj_product_total where veriety in (?) order by pid limit "+limit1+","+limit2;
            pool.query(sql,[$veriety],(err,result)=>{
                if(err) throw err;
                // console.log(result);
                // console.log({data:result,$length:dataNum});
                console.log(dataNum);
                res.send({data:result,$length:dataNum});
            })   
        }
    }, 500);
})

app.get("/product_filter",(req,res)=>{
    var $req =req.query;
    var $obj =$req.obj;
    console.log($obj);
    var $veriety = $obj.veriety;
    // console.log($veriety);
    var $pec = $obj.pec;
    // console.log($pec);
    var $price = $obj.price;
    // console.log($price);
    var $alcohol = $obj.alcohol;
    // console.log($alcohol);
    var $hasSold = $obj.hasSold;
    // console.log($hassold);
    if(!$veriety||$veriety=="all"){
        $veriety = ["gj1573","tequ","jiaolin","touqu","erqu","ljcp","thz","bd"]
    }
    // console.log($veriety);
    if(!$pec||$pec=="all"){
        $pec = ["5000ml","3000ml","2500ml","1500ml","700ml","750ml","680ml","625ml","600ml","520ml","500ml","375ml","300ml","275ml","165ml","125ml","100ml","50ml"]
    }
    // console.log($pec);
    if(!$alcohol||$alcohol=="all"){
        $alcohol = ["4度","12度","22度","38度","42度","45度","46度","50度","52度","53度","55度","60度"]
    }
    // var pageNum = $obj.pageNum[0];
    var limit1 = 0 + 20*($obj.pageNum[0]-1);
    var limit2 = 20;
    // console.log($price[2]);
    // console.log($hasSold);
    // console.log($price[2]=="none"&&$hasSold=="none");
    console.log(limit1,limit2);
    var dataNum ;
    //查询一共有多少条数据
    var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ?";
    pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
        if(err) throw err;
        dataNum=result.length;
        console.log("dataNum:"+dataNum);
    })
    setTimeout(function(){
        //执行语句前的price和hasSold排序条件--关键字没办法传参
        if($price[2]=="none"&&$hasSold=="none"){
            var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ? limit "+limit1+","+limit2;
            pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
                if(err) throw err;
                console.log([$veriety,$pec,$alcohol,$price[0],$price[1]]);
                // console.log(result.dataNum);
                // console.log(123);
                // console.log(333);
                // console.log({data:result,$length:dataNum});
                res.send({data:result,$length:dataNum});
            })
        }else if($price[2]!="none"&&$hasSold=="none"){
            if($price[2]=="DESC"){
                var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ? order by price DESC limit "+limit1+","+limit2;
                pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
                    if(err) throw err;
                    console.log(result.length);
                    // console.log(123);
                    res.send({data:result,$length:dataNum});
                })
            }else{
                var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ? order by price ASC limit "+limit1+","+limit2;
                pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
                    if(err) throw err;
                    console.log(result.length);
                    // console.log(123);
                    res.send({data:result,$length:dataNum});
                })
            }
        }else if($price[2]=="none"&&$hasSold!="none"){
            if($hasSold=="DESC"){
                var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ? order by hasSold DESC limit "+limit1+","+limit2;
                pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
                    if(err) throw err;
                    console.log(result.length);
                    // console.log(123);
                    res.send({data:result,$length:dataNum});
                })
            }else{
                var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ? order by hasSold ASC limit "+limit1+","+limit2;
                pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
                    if(err) throw err;
                    console.log(result.length);
                    // console.log(123);
                    res.send({data:result,$length:dataNum});
                })
            }
        }else{
            var sql = "SELECT * FROM lzlj_product_total where veriety in (?) and pec in (?) and alcohol in (?) and price between ? and ? order by price DESC,hasSold DESC limit "+limit1+","+limit2;
            pool.query(sql,[$veriety,$pec,$alcohol,$price[0],$price[1]],(err,result)=>{
                if(err) throw err;
                console.log(result.length);
                // console.log(123);
                res.send({data:result,$length:dataNum});
            })
        }
    },200);
})

app.get("/details",(req,res)=>{
    var r = req.query;
    var $pid = r.pid;
    console.log(req.query)
    var sql = "SELECT * FROM lzlj_product_total WHERE pid = ?";
    pool.query(sql,[$pid],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send(result);
    })
})





app.get("/fenye",(req,res)=>{
    var r = req.query;
    var $pid = r.pid;
    
    var limit1 = 0;
    var limit2 = 30;
    console.log(limit1,limit2)
    var sql = "SELECT * FROM lzlj_product_total limit ?,?";
    pool.query(sql,[limit1,limit2],(err,result)=>{
        if(err) throw err;
        // console.log(result);
        res.send(result);
    })
})



app.use("/users",users);