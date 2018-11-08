create database lzlj;
use lzlj charset urf8;
-- create table lzlj_user(
--     id int primary key auto_increment,
--     uname varchar(32),
--     upwd varchar(32)
-- )



CREATE TABLE lzlj_product_gj1573(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(128),
    pic VARCHAR(128),
    price VARCHAR(32)
) charset=utf8;

INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");
INSERT INTO lzlj_product_gj1573 VALUES(null,"52度   国窖1573  经典装浓香型高度白酒 500ml  泸州老窖官方商城","img/goods(1).jpg","1099.00");



CREATE TABLE lzlj_product_total(
    pid INT PRIMARY KEY AUTO_INCREMENT,     --商品id
    veriety VARCHAR(32),    --种类
    title VARCHAR(128),     --酒名标题
    pic VARCHAR(128),       --图片路径
    pec VARCHAR(128),       --规格：500ml
    price INT,      --价格
    alcohol VARCHAR(16),    --酒精度
    hasSold INT         --已经出售/销量
) charset=utf8;

-- gj1573系列酒
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573 经典装浓香型高度白酒 500ml 泸州老窖官方商城","img/liquor/gj1573/gj1573(1).jpg","500ml","1099","52度","700");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573 经典装浓香型高度白酒 500ml*6（整箱） 经典装","img/liquor/gj1573/gj1573(2).jpg","500ml","5814","52度","215");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度国窖1573礼盒套装 （500ml*2+一套红釉酒具） 泸州老窖","img/liquor/gj1573/gj1573(3).jpg","500ml","1099","52度","200");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","泸州老窖 国窖1573经典装52度500ml*2+100ml生肖狗酒+生肖杯礼盒 泸州老窖官方商城
","img/liquor/gj1573/gj1573(4).jpg","500ml","1988","52度","684");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573 浓香型高度白酒 375ml 泸州老窖官方商城","img/liquor/gj1573/gj1573(5).jpg","357ml","678","52度","351");  
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573酒（整箱） 375ml*6 浓香型高度白酒 泸州老窖官方商城","img/liquor/gj1573/gj1573(6).jpg","375ml","4944","52度","359");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573 中国品味 限量版 500ml 泸州老窖官方商城","img/liquor/gj1573/gj1573(7).jpg","375ml","2888","52度","359");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","38度 国窖1573 经典装浓香型白酒 500ml 泸州老窖官方商城","img/liquor/gj1573/gj1573(8).jpg","375ml","739","38度","666");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","38度 国窖1573酒 浓香型白酒 （整箱）500ml *6 泸州老窖官方商城","img/liquor/gj1573/gj1573(9).jpg","500ml","4128","38度","854");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573 小酒 50ml*2 礼盒装 泸州老窖官方商城","img/liquor/gj1573/gj1573(10).jpg","500ml","199","52度","854");
INSERT INTO lzlj_product_total VALUES(null,"gj1573","52度 国窖1573酒 鸿运568 500ml 泸州老窖官方商城","img/liquor/gj1573/gj1573(11).jpg","500ml","1289","52度","854");


--特曲
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲 500ml 浓香型白酒 泸州老窖官方商城","img/liquor/tequ/tequ(1).jpg","500ml","228","52度","854");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲 500ml*6 整箱装 泸州老窖官方商城","img/liquor/tequ/tequ(2).jpg","500ml","1308","52度","366");
INSERT INTO lzlj_product_total VALUES(null,"tequ","38度 泸州老窖 特曲 500ml 浓香型白酒 泸州老窖官方商城","img/liquor/tequ/tequ(3).jpg","500ml","198","38度","458");
INSERT INTO lzlj_product_total VALUES(null,"tequ","38度 泸州老窖 特曲(整箱) 500ml*6 浓香型白酒 泸州老窖官方商城","img/liquor/tequ/tequ(4).jpg","500ml","1188","38度","458");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲酒 375ml 泸州老窖官方商城","img/liquor/tequ/tequ(5).jpg","375ml","1188","52度","555");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲酒 375ml*6整箱装 泸州老窖官方商城","img/liquor/tequ/tequ(6).jpg","375ml","999","52度","199");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲·纪念版 500ml 泸州老窖官方商城","img/liquor/tequ/tequ(7).jpg","500ml","198","52度","192");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲酒 晶彩 500ml 泸州老窖官方商城","img/liquor/tequ/tequ(8).jpg","500ml","268","52度","632");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲酒 晶彩 500ml*6 （整箱）泸州老窖官方商城","img/liquor/tequ/tequ(9).jpg","500ml","1608","52度","555");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖三两三酒（礼盒装） 165ml*3（特曲、头曲、 二曲） 泸州","img/liquor/tequ/tequ(10).jpg","165ml","139","52度","555");
INSERT INTO lzlj_product_total VALUES(null,"tequ","52度 泸州老窖 特曲 三两三 165ml版 泸州老窖官方商城","img/liquor/tequ/tequ(11).jpg","165ml","225","52度","555");


--窖龄酒
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄90年（2017版） 500ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(1).jpg","165ml","225","52度","234");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄90年（2017版） 500ml *2 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(2).jpg","165ml","225","52度","841");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄90年（2017版整箱） 500ml*6 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(3).jpg","165ml","225","52度","337");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄90年礼盒（500ml*2+玻璃酒具） 泸州老窖官方","img/liquor/jiaoling/jiaoling(4).jpg","165ml","225","52度","237");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","38度 百年泸州老窖 窖龄30年 500ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(5).jpg","165ml","225","38度","555");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","38度 百年泸州老窖 窖龄30年 （整箱）500ml*6 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(6).jpg","165ml","225","38度","965");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄酒30年 500ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(7).jpg","165ml","225","52度","569");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄酒30年 500ml*2 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(8).jpg","165ml","225","52度","85");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖窖龄酒30年（整箱） 500ml*6 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(9).jpg","165ml","225","52度","585");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度百年泸州老窖窖龄酒30年（二维码） 375ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(10).jpg","165ml","225","52度","675");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖（窖龄30年） 250ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(11).jpg","165ml","225","52度","555");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","38度 百年泸州老窖 窖龄酒60年 500ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(12).jpg","165ml","225","38度","500");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","38度 百年泸州老窖 窖龄酒60年（整箱）500ml*6 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(13).jpg","165ml","225","38度","230");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖 窖龄酒60年 500ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(14).jpg","165ml","225","52度","598");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖 窖龄酒60年 500ml*2 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(15).jpg","165ml","225","52度","1022");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖 窖龄酒60年（整箱） 500ml*6 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(16).jpg","165ml","225","52度","975");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度 百年泸州老窖 窖龄酒60年（二维码） 375ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(17).jpg","165ml","225","52度","131");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","38度 百年泸州老窖 窖龄酒90年 500ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(18).jpg","165ml","225","38度","777");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","38度 百年泸州老窖 窖龄酒90年（整箱） 500ml*6 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(19).jpg","165ml","225","38度","444");
INSERT INTO lzlj_product_total VALUES(null,"jiaolin","52度百年泸州老窖窖龄90年（二维码） 375ml 泸州老窖官方商城","img/liquor/jiaoling/jiaoling(20).jpg","165ml","225","52度","668");


--头曲
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 六年窖 头曲 500ml 浓香型高度白酒 泸州老窖官方商城","img/liquor/touqu/touqu(1).jpg","165ml","414","52度","354");
INSERT INTO lzlj_product_total VALUES(null,"touqu","泸州老窖 头曲酒（2015版） 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(2).jpg","165ml","359","52度","385");
INSERT INTO lzlj_product_total VALUES(null,"touqu","55度 泸州老窖 头曲酒升级装 625ml 泸州老窖官方商城","img/liquor/touqu/touqu(3).jpg","165ml","354","52度","456");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 六年窖 头曲 酒铁盒（2014版）500ml 泸州老窖官方商城","img/liquor/touqu/touqu(4).jpg","165ml","128","52度","852");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 六年窖 头曲 酒铁盒（2014版）500ml*6 （整箱） 泸州老","img/liquor/touqu/touqu(5).jpg","165ml","668","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 精制头曲（手提礼盒） 500ml*2 泸州老窖官方商城","img/liquor/touqu/touqu(6).jpg","165ml","99","52度","555");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 八年陈头曲 红8 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(7).jpg","165ml","258","52度","458");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 精品头曲 500ml*2 （两瓶装）泸州老窖官方商城","img/liquor/touqu/touqu(8).jpg","165ml","268","52度","765");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖六年窖头曲酒 商超版 （两瓶装）500ml*2 泸州老窖官方商城","img/liquor/touqu/touqu(9).jpg","165ml","238","52度","678");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 头曲淡雅 （两瓶装）475ml*2 泸州老窖官方商城","img/liquor/touqu/touqu(10).jpg","165ml","118","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 八年窖头曲 流金版 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(11).jpg","165ml","158","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 八年陈头曲 红8 500ml*6 (整箱) 泸州老窖官方商城","img/liquor/touqu/touqu(12).jpg","165ml","1488","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 八年陈头曲 铁盒装 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(13).jpg","165ml","178","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度泸州老窖头曲酒三两三 165ml版 泸州老窖官方商城","img/liquor/touqu/touqu(14).jpg","165ml","225","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 八年陈头曲祥韵 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(15).jpg","165ml","84","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 精品头曲D6 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(16).jpg","165ml","248","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 精品头曲D9（2013版） 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(17).jpg","165ml","138","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖 精品头曲D12 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(18).jpg","165ml","188","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","52度 泸州老窖八年窖 头曲酒 典藏流金 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(19).jpg","165ml","218","52度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","42度 泸州老窖 精品头曲 铁盒经典装 500ml 泸州老窖官方商城","img/liquor/touqu/touqu(20).jpg","165ml","208","42度","668");
INSERT INTO lzlj_product_total VALUES(null,"touqu","42度 泸州老窖 精品头曲 铁盒经典装 500ml*6(整箱) 泸州老窖官方商城","img/liquor/touqu/touqu(21).jpg","165ml","198","42度","668");


--二曲
INSERT INTO lzlj_product_total VALUES(null,"erqu","52度 泸州老窖二曲白酒（水晶磨砂2017版）500ml*6 泸州老窖官方商城","img/liquor/erqu/erqu(1).jpg","165ml","288","42度","720");
INSERT INTO lzlj_product_total VALUES(null,"erqu","52度 泸州老窖二曲白酒（水晶磨砂2017版）500ml 泸州老窖官方商城","img/liquor/erqu/erqu(2).jpg","165ml","48","42度","388");
INSERT INTO lzlj_product_total VALUES(null,"erqu","52度 泸州老窖二曲白酒（2017版)500ml*12 泸州老窖官方商城","img/liquor/erqu/erqu(3).jpg","165ml","149","42度","110");


--老窖藏品
INSERT INTO lzlj_product_total VALUES(null,"ljcp","52度 老窖藏品 品之福 680ml*6瓶 高度白酒 泸州老窖官方商城","img/liquor/ljcp/ljcp(1).jpg","680ml","339","52度","110");
INSERT INTO lzlj_product_total VALUES(null,"ljcp","52度 老窖藏品 喜庆装 520ml 泸州老窖官方商城","img/liquor/ljcp/ljcp(2).jpg","680ml","69","52度","110");
INSERT INTO lzlj_product_total VALUES(null,"ljcp","【新品首发】52度 老窖藏品 白酒 藏之道 680ml*6 泸州老窖官方商城","img/liquor/ljcp/ljcp(3).jpg","680ml","389","52度","110");
INSERT INTO lzlj_product_total VALUES(null,"ljcp","52度 老窖藏品 喜庆装 520ml*6瓶装 泸州老窖官方商城","img/liquor/ljcp/ljcp(4).jpg","520ml","189","52度","110");
INSERT INTO lzlj_product_total VALUES(null,"ljcp","60度 老窖藏品 珍藏 680ml *6瓶装 泸州老窖官方商城","img/liquor/ljcp/ljcp(5).jpg","680ml","799","60度","110");
INSERT INTO lzlj_product_total VALUES(null,"ljcp","60度 老窖藏品 珍藏 680ml *6瓶装 泸州老窖官方商城","img/liquor/ljcp/ljcp(6).jpg","680ml","208","60度","110");
INSERT INTO lzlj_product_total VALUES(null,"ljcp","【新品首发】52度 老窖藏品 白酒 藏之道 680ml 泸州老窖官方商城","img/liquor/ljcp/ljcp(7).jpg","680ml","109","52度","110");


--桃花醉
INSERT INTO lzlj_product_total VALUES(null,"thz","22度 桃花醉（配制酒） 时尚版玻璃瓶装 500ml 泸州老窖官方商城","img/liquor/thz/thz(1).jpg","500ml","75","22度","2336");
INSERT INTO lzlj_product_total VALUES(null,"thz","22度 桃花醉（配制酒）仙侠版（剧中同款） 500ml 泸州老窖官方商城","img/liquor/thz/thz(2).jpg","500ml","75","22度","1910");
INSERT INTO lzlj_product_total VALUES(null,"thz","12度 桃花醉2018版（红瓶 ）500ml 果酒 泸州老窖官方商城","img/liquor/thz/thz(3).jpg","500ml","139","12度","1110");
INSERT INTO lzlj_product_total VALUES(null,"thz","12度 桃花醉2018版（青瓶 ）500ml 果酒 500ml 泸州老窖官方商城","img/liquor/thz/thz(4).jpg","5000ml","139","12度","1026");
INSERT INTO lzlj_product_total VALUES(null,"thz","12度 桃花醉2018版（红瓶 ）500ml*6 果酒 泸州老窖官方商城","img/liquor/thz/thz(5).jpg","500ml","954","12度","116");
INSERT INTO lzlj_product_total VALUES(null,"thz","12度 桃花醉2018版（青瓶 ）500ml*6 果酒 泸州老窖官方商城","img/liquor/thz/thz(6).jpg","500ml","954","12度","152");
INSERT INTO lzlj_product_total VALUES(null,"thz","12度 泸州老窖桃花果酒2018版（红色版） 500ml + 泸州老窖顽味定制香水 ","img/liquor/thz/thz(7).jpg","500ml","199","12度","2364");
INSERT INTO lzlj_product_total VALUES(null,"thz","12度 泸州老窖桃花果酒2018版（青色版） 500ml + 泸州老窖顽味定制香水 ","img/liquor/thz/thz(8).jpg","500ml","199","12度","2566");


--百调
INSERT INTO lzlj_product_total VALUES(null,"bd","百调·HeartPanda熊猫小酒125ml礼盒+熊猫摆件1个 泸州老窖官方商城","img/liquor/bd/bd(1).jpg","125ml","299","38度","111");
INSERT INTO lzlj_product_total VALUES(null,"bd","【预定特惠销售】40度 百调专业版酒 700ml 泸州老窖官方商城","img/liquor/bd/bd(2).jpg","700ml","126","40度","60");
INSERT INTO lzlj_product_total VALUES(null,"bd","40度 百调专业版调饮套装（试饮装）(168ml+250ml+600ml) 泸州老窖官方","img/liquor/bd/bd(3).jpg","600ml","79","40度","90");
INSERT INTO lzlj_product_total VALUES(null,"bd","42度百调橡木桶酒500ML 泸州老窖官方商城","img/liquor/bd/bd(4).jpg","500ml","1280","42度","55");
INSERT INTO lzlj_product_total VALUES(null,"bd","百调预调酒 275ml*12 十二星座组合装 泸州老窖官方商城","img/liquor/bd/bd(5).jpg","275ml","192","12度","78");
INSERT INTO lzlj_product_total VALUES(null,"bd","4度 百调预调酒 275ml*3 风系星座组合装 泸州老窖官方商城","img/liquor/bd/bd(6).jpg","275ml","48","4度","33");
INSERT INTO lzlj_product_total VALUES(null,"bd","4度 百调预调酒 275ml*3 水系星座组合装 泸州老窖官方商城","img/liquor/bd/bd(7).jpg","275ml","48","4度","33");
INSERT INTO lzlj_product_total VALUES(null,"bd","4度 百调预调酒 275ml*3 风系星座组合装 泸州老窖官方商城","img/liquor/bd/bd(8).jpg","275ml","48","4度","33");
INSERT INTO lzlj_product_total VALUES(null,"bd","4度 百调预调酒 275ml*3 风系星座组合装 泸州老窖官方商城","img/liquor/bd/bd(9).jpg","275ml","48","4度","33");
--















