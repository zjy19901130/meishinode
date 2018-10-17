SET NAMES UTF8;
DROP DATABASE IF EXISTS ms;
CREATE DATABASE ms CHARSET=UTF8;
USE ms;
CREATE TABLE ms_index_swipe(
    s_id    INT  PRIMARY KEY AUTO_INCREMENT,
    img   VARCHAR(128),
    title   VARCHAR(64)
);
INSERT INTO  ms_index_swipe VALUES(null,"http://127.0.0.1:3000/index/imglist0.png","img1");
INSERT INTO  ms_index_swipe VALUES(null,"http://127.0.0.1:3000/index/imglist1.png","img2");
INSERT INTO  ms_index_swipe VALUES(null,"http://127.0.0.1:3000/index/imglist2.png","img3");
INSERT INTO  ms_index_swipe VALUES(null,"http://127.0.0.1:3000/index/imglist3.png","img4");

CREATE TABLE ms_index_family(
    family_id        INT                   PRIMARY KEY  AUTO_INCREMENT,
    name            VARCHAR(32),
     img_url   VARCHAR(128)
);

INSERT INTO  ms_index_family VALUES(null,"美食","http://127.0.0.1:3000/index/menu1.png");
INSERT INTO  ms_index_family VALUES(null,"商超便利","http://127.0.0.1:3000/index/menu2.png");
INSERT INTO  ms_index_family VALUES(null,"水果","http://127.0.0.1:3000/index/menu3.png");
INSERT INTO  ms_index_family VALUES(null,"早餐","http://127.0.0.1:3000/index/menu4.png");
INSERT INTO  ms_index_family VALUES(null,"医药健康","http://127.0.0.1:3000/index/menu5.png");
INSERT INTO  ms_index_family VALUES(null,"浪漫鲜花","http://127.0.0.1:3000/index/menu6.png");
INSERT INTO  ms_index_family VALUES(null,"厨房生鲜","http://127.0.0.1:3000/index/menu7.png");
INSERT INTO  ms_index_family VALUES(null,"跑腿代购","http://127.0.0.1:3000/index/menu8.png");
INSERT INTO  ms_index_family VALUES(null,"地方小吃","http://127.0.0.1:3000/index/menu9.png");
INSERT INTO  ms_index_family VALUES(null,"麻辣烫","http://127.0.0.1:3000/index/menu10.png");


CREATE TABLE ms_shops(
     shop_id              INT     PRIMARY KEY AUTO_INCREMENT,
     family_id            INT,	
     shopname          VARCHAR(64),
     address             VARCHAR(128),   
     space                INT,	
     origin_cost         DECIMAL(10,2),
     carry_cost          DECIMAL(10,2),    
     score                 DECIMAL(10,2),    
     carry_time          VARCHAR(64),
     sold_count         INT,
     details               VARCHAR(1024),  
     img_url              VARCHAR(128),
     promotion          VARCHAR(128)
);

INSERT INTO  ms_shops VALUES(null,1,"芝遇精品焗饭(罗锦路店)","上海","2.03km",15,2.8,4.7,"27",10,"上海","http://127.0.0.1:3000/shop/logo/img01.jpg","满18减16，满35减18，满50减27，满98减40");
INSERT INTO  ms_shops VALUES(null,1,"川香人家(罗锦路店)","上海","2.05km",15,4,4.7,"27",20,"上海","http://127.0.0.1:3000/shop/logo/img02.jpg","满35减20，满65减25，满85减27");
INSERT INTO  ms_shops VALUES(null,1,"必胜客(南方城店)","上海","284m",15,5,4.7,"30",10,"上海","http://127.0.0.1:3000/shop/logo/img03.jpg","满25减25，满50减28，满90减35");
INSERT INTO  ms_shops VALUES(null,1,"东北菜(龙茗路店)","上海","266km",15,3,4.7,"40",50,"上海","http://127.0.0.1:3000/shop/logo/img04.jpg","满30减28，满35减18，满50减27");
INSERT INTO  ms_shops VALUES(null,1,"永和大王","上海","2.03km",15,5,4.7,"30",1000,"上海","http://127.0.0.1:3000/shop/logo/img05.jpg","满24减23，满48减37");
INSERT INTO  ms_shops VALUES(null,1,"鲜粥道","上海","2.03km",15,4.5,4.7,"20",100,"上海","http://127.0.0.1:3000/shop/logo/img06.jpg","满30减8");




CREATE TABLE ms_products(
     product_id         INT     PRIMARY KEY AUTO_INCREMENT,
     shop_id             INT,
     FOREIGN KEY(family_id) REFERENCES ms_shop_products_family(family_id),  
     name                 VARCHAR(128),    
     price                  DECIMAL(10,2),    
     pro_details           VARCHAR(1024),  
     pro_sales            INT
     is_onsale             INT,
     opinion                INT,
     pro_family_name        INT,
     img_url                 VARCHAR(128)

);

INSERT INTO  ms_products VALUES(null,1,"黑椒牛柳芝士焗饭","29.9","",50,"1",98,"满满芝士焗饭","");
INSERT INTO  ms_products VALUES(null,1,"咖喱鸡肉芝士焗饭","29.9","",50,"1",98,"满满芝士焗饭","");
INSERT INTO  ms_products VALUES(null,1,"法式黑椒鸡焗饭+味.海藻","29.9","",50,"1",99,"夏日冰饮+焗饭","");
INSERT INTO  ms_products VALUES(null,1,"椒盐烤肉饭+台湾盐酥","41.9","",5,"1",100,"孤独的美食家","");
INSERT INTO  ms_products VALUES(null,1,"孜然烤肉饭+川香鸡柳","41.9","",250,"1",100,"孤独的美食家","");
INSERT INTO  ms_products VALUES(null,1,"沙拉烤肉饭","41.8","",150,"1",99,"孤独的美食家","");

INSERT INTO  ms_products VALUES(null,2,"啤酒鸭","39","",26,"1",98,"招牌","http://127.0.0.1:3000/products/sd/0201.jpg");
INSERT INTO  ms_products VALUES(null,2,"干豆角红烧肉","40","",50,"1",98,"特色小炒","http://127.0.0.1:3000/products/sd/0202.jpg");
INSERT INTO  ms_products VALUES(null,2,"毛血旺","40","",18,"1",99,"特色小炒","http://127.0.0.1:3000/products/sd/0203.jpg");
INSERT INTO  ms_products VALUES(null,2,"鲜椒鸡","45","",5,"1",100,"干锅类","http://127.0.0.1:3000/products/sd/0204.jpg");
INSERT INTO  ms_products VALUES(null,2,"梅菜扣肉","39","",31,"1",100,"干锅类","http://127.0.0.1:3000/products/sd/0205.jpg");
INSERT INTO  ms_products VALUES(null,2,"辣子鸡","38","",40,"1",99,"招牌","http://127.0.0.1:3000/products/sd/0206.jpg");
#创建购物车表
CREATE TABLE ms_cart(
    cid  INT     PRIMARY KEY AUTO_INCREMENT,
    user_id       INT,
    product_id   INT,
    count       INT
);

INSERT INTO  ms_cart VALUES(null,"1","1",1);
INSERT INTO   ms_cart VALUES(null,"1","2",1);
INSERT INTO  ms_cart VALUES(null,"1","3",1);
INSERT INTO  ms_cart VALUES(null,"2","1",1);
INSERT INTO  ms_cart VALUES(null,"2","2",1);
INSERT INTO  ms_cart VALUES(null,"2","3",1);
INSERT INTO  ms_cart VALUES(null,"2","8",1);
INSERT INTO  ms_cart VALUES(null,"2","9",1);




#创建用户表
CREATE TABLE ms_user(
     uid         INT     PRIMARY KEY NOT NULL AUTO_INCREMENT,
     uname       VARCHAR(32),
     upwd        VARCHAR(32),  
     phone       VARCHAR(16) NOT NULL UNIQUE
   
);

INSERT INTO  ms_user VALUES(null,"tom","123456","15256324568");
INSERT INTO  ms_user VALUES(null,"lily","111111","13127578698");
INSERT INTO  ms_user VALUES(null,"lucy","222222","18565338529");

CREATE TABLE ms_ratings(
    rid  INT      PRIMARY KEY AUTO_INCREMENT,
    user_uname    VARCHAR(64),  
    rateTime      DATETIME,
    score         DECIMAL(10,2),
    rateType      VARCHAR(32),
    text          VARCHAR(255),
    avatar        VARCHAR(255),
    recommend     VARCHAR(255)
);
INSERT INTO  ms_ratings VALUES(null,"lucy",now(),"4.8","0","不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","炒饭");
INSERT INTO  ms_ratings VALUES(null,"licly",now(),"4.9","1","不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","口水鸡");
INSERT INTO  ms_ratings VALUES(null,"dfdcf",now(),"4.5","2","不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","金针菇");
INSERT INTO  ms_ratings VALUES(null,"tobvm",now(),"4.2","1","不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","蛋炒饭");
INSERT INTO  ms_ratings VALUES(null,"juerry",now(),"2.0","2","不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","炒鸡");
INSERT INTO  ms_ratings VALUES(null,"mark",now(),"3.0","0","不错非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","酸菜鱼");
INSERT INTO  ms_ratings VALUES(null,"nnfgfgh",now(),"5.0","1","不错我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.","http://127.0.0.1:3000/userImg/1538574894192.jpg","酸辣土豆丝");

CREATE TABLE  xz_receiver_address(
     aid           INT    PRIMARY KEY NOT NULL AUTO_INCREMENT,
     user_id      INT,
     receiver      VARCHAR(16),
     province    VARCHAR(16),
     city            VARCHAR(16),
     country       VARCHAR(16),
     address       VARCHAR(128),
     cellphone    VARCHAR(16),
     fixedphone  VARCHAR(16),
     postcode     CHAR(6),
     tag              VARCHAR(16),
     is_default    BOOL  
);

#创建购物车表
CREATE TABLE xz_shopping_cart(
    cid  INT  PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_id INT,
    count  INT
);

#订单表
CREATE TABLE xz_order(
    aid INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    address_id  INT,
    status    INT,
    order_time  BIGINT,
    pay_time   BIGINT ,
    deliver_time   BIGINT,
    received_time BIGINT
 );

CREATE TABLE xz_order_detail(
    did    INT  PRIMARY KEY AUTO_INCREMENT,
    order_id  INT,
    product_id INT,
    count  INT
);

#首页表

CREATE TABLE xz_index_carousel(
    cid    INT  PRIMARY KEY AUTO_INCREMENT,
    img   VARCHAR(128),
    title   VARCHAR(64),
    href   VARCHAR(128)
 );

CREATE TABLE xz_index_product(
    pid INT   PRIMARY KEY AUTO_INCREMENT,
    title   VARCHAR(64),
    details  VARCHAR(128),
    pic   VARCHAR(128),
    price  DECIMAL(10,2),
    href  VARCHAR(128),
    seq_recommended TINYINT,
    seq_new_arrival TINYINT,
    seq_top_sale TINYINT
);