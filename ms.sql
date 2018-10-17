-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-15 10:00:29
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms`
--

-- --------------------------------------------------------

--
-- 表的结构 `ms_cart`
--

CREATE TABLE `ms_cart` (
  `cid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_cart`
--

INSERT INTO `ms_cart` (`cid`, `user_id`, `pid`, `count`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 2, 1, 1),
(5, 2, 2, 1),
(6, 2, 3, 1),
(7, 2, 8, 1),
(8, 2, 9, 1),
(9, 1, 10, 10);

-- --------------------------------------------------------

--
-- 表的结构 `ms_index_family`
--

CREATE TABLE `ms_index_family` (
  `family_id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_index_family`
--

INSERT INTO `ms_index_family` (`family_id`, `name`, `img_url`) VALUES
(1, '美食', 'http://127.0.0.1:3000/index/menu1.png'),
(2, '商超便利', 'http://127.0.0.1:3000/index/menu2.png'),
(3, '水果', 'http://127.0.0.1:3000/index/menu3.png'),
(4, '早餐', 'http://127.0.0.1:3000/index/menu4.png'),
(5, '医药健康', 'http://127.0.0.1:3000/index/menu5.png'),
(6, '浪漫鲜花', 'http://127.0.0.1:3000/index/menu6.png'),
(7, '厨房生鲜', 'http://127.0.0.1:3000/index/menu7.png'),
(8, '跑腿代购', 'http://127.0.0.1:3000/index/menu8.png'),
(9, '地方小吃', 'http://127.0.0.1:3000/index/menu9.png'),
(10, '麻辣烫', 'http://127.0.0.1:3000/index/menu10.png');

-- --------------------------------------------------------

--
-- 表的结构 `ms_index_swipe`
--

CREATE TABLE `ms_index_swipe` (
  `s_id` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_index_swipe`
--

INSERT INTO `ms_index_swipe` (`s_id`, `img`, `title`) VALUES
(1, 'http://127.0.0.1:3000/index/imglist0.png', 'img1'),
(2, 'http://127.0.0.1:3000/index/imglist1.png', 'img2'),
(3, 'http://127.0.0.1:3000/index/imglist2.png', 'img3'),
(4, 'http://127.0.0.1:3000/index/imglist3.png', 'img4');

-- --------------------------------------------------------

--
-- 表的结构 `ms_products`
--

CREATE TABLE `ms_products` (
  `product_id` int(11) NOT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `pro_details` varchar(1024) DEFAULT NULL,
  `pro_sales` int(11) DEFAULT NULL,
  `is_onsale` int(11) DEFAULT NULL,
  `opinion` int(11) NOT NULL,
  `pro_family_name` varchar(255) NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_products`
--

INSERT INTO `ms_products` (`product_id`, `shop_id`, `name`, `price`, `pro_details`, `pro_sales`, `is_onsale`, `opinion`, `pro_family_name`, `img_url`) VALUES
(1, 1, '孜然烤肉饭', '29.90', '', 100, 1, 98, '烤肉饭', 'http://127.0.0.1:3000/products/sd/01.jpg'),
(2, 1, '黑椒牛柳芝士焗饭', '29.90', '', 105, 1, 98, '满满芝士焗饭', 'http://127.0.0.1:3000/products/sd/02.jpg'),
(3, 1, '咖喱鸡肉芝士焗饭', '110.00', '', 50, 1, 98, '满满芝士焗饭', 'http://127.0.0.1:3000/products/sd/03.jpg'),
(4, 1, '法式黑椒鸡焗饭+味.海藻', '29.90', '', 139, 1, 99, '夏日冰饮+焗饭', 'http://127.0.0.1:3000/products/sd/04.jpg'),
(5, 1, '椒盐烤肉饭+台湾盐酥', '41.90', '', 5, 1, 100, '孤独的美食家', 'http://127.0.0.1:3000/products/sd/05.jpg'),
(6, 1, '孜然烤肉饭+川香鸡柳', '41.90', '', 250, 1, 100, '孤独的美食家', 'http://127.0.0.1:3000/products/sd/06.jpg'),
(7, 1, '沙拉烤肉饭', '41.80', '', 150, 1, 99, '孤独的美食家', 'http://127.0.0.1:3000/products/sd/07.jpg'),
(8, 2, '啤酒鸭', '39.00', '', 26, 1, 98, '招牌', 'http://127.0.0.1:3000/products/sd/0201.jpg'),
(9, 2, '干豆角红烧肉', '40.00', '', 50, 1, 98, '特色小炒', 'http://127.0.0.1:3000/products/sd/0202.jpg'),
(10, 2, '毛血旺', '40.00', '', 18, 1, 99, '特色小炒', 'http://127.0.0.1:3000/products/sd/0203.jpg'),
(11, 2, '鲜椒鸡', '45.00', '', 5, 1, 100, '干锅类', 'http://127.0.0.1:3000/products/sd/0204.jpg'),
(12, 2, '梅菜扣肉', '39.00', '', 31, 1, 100, '干锅类', 'http://127.0.0.1:3000/products/sd/0205.jpg'),
(13, 2, '辣子鸡', '38.00', '', 40, 1, 99, '招牌', 'http://127.0.0.1:3000/products/sd/0206.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `ms_shops`
--

CREATE TABLE `ms_shops` (
  `shop_id` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `shopname` varchar(64) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `space` varchar(128) DEFAULT NULL,
  `origin_cost` decimal(10,2) DEFAULT NULL,
  `carry_cost` decimal(10,2) DEFAULT NULL,
  `score` decimal(10,2) DEFAULT NULL,
  `carry_time` int(11) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL,
  `promotion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_shops`
--

INSERT INTO `ms_shops` (`shop_id`, `family_id`, `shopname`, `address`, `space`, `origin_cost`, `carry_cost`, `score`, `carry_time`, `sold_count`, `details`, `img_url`, `promotion`) VALUES
(1, 1, '芝遇精品焗饭(罗锦路店)', '上海', '500', '15.00', '2.80', '4.70', 27, 10, '上海', 'http://127.0.0.1:3000/shop/logo/img01.jpg', '满18减16，满35减18，满50减27'),
(2, 1, '川香人家(罗锦路店)', '上海', '2500', '15.00', '4.00', '4.80', 27, 20, '上海', 'http://127.0.0.1:3000/shop/logo/img02.jpg', '满35减20，满65减25，满85减27'),
(3, 1, '必胜客(南方城店)', '上海', '296', '15.00', '5.00', '4.60', 30, 10, '上海', 'http://127.0.0.1:3000/shop/logo/img03.jpg', '满25减25，满50减28，满90减35'),
(4, 1, '东北菜(龙茗路店)', '上海', '2660', '15.00', '3.00', '4.90', 40, 50, '上海', 'http://127.0.0.1:3000/shop/logo/img04.jpg', '满30减28，满35减18，满50减27'),
(5, 1, '永和大王', '上海', '2800', '15.00', '5.00', '4.70', 30, 1000, '上海', 'http://127.0.0.1:3000/shop/logo/img05.jpg', '满24减23，满48减37'),
(6, 1, '鲜粥道', '上海', '2300', '15.00', '4.50', '4.90', 20, 100, '上海', 'http://127.0.0.1:3000/shop/logo/img06.jpg', '满30减8');

-- --------------------------------------------------------

--
-- 表的结构 `ms_user`
--

CREATE TABLE `ms_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_user`
--

INSERT INTO `ms_user` (`uid`, `uname`, `upwd`, `phone`) VALUES
(1, 'tom', '123456', '15256324568'),
(2, 'lily', '111111', '13127578698'),
(3, 'lucy', '222222', '18565338529');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ms_cart`
--
ALTER TABLE `ms_cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `ms_index_family`
--
ALTER TABLE `ms_index_family`
  ADD PRIMARY KEY (`family_id`);

--
-- Indexes for table `ms_index_swipe`
--
ALTER TABLE `ms_index_swipe`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `ms_products`
--
ALTER TABLE `ms_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `ms_shops`
--
ALTER TABLE `ms_shops`
  ADD PRIMARY KEY (`shop_id`),
  ADD KEY `family_id` (`family_id`);

--
-- Indexes for table `ms_user`
--
ALTER TABLE `ms_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ms_cart`
--
ALTER TABLE `ms_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `ms_index_family`
--
ALTER TABLE `ms_index_family`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `ms_index_swipe`
--
ALTER TABLE `ms_index_swipe`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `ms_products`
--
ALTER TABLE `ms_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `ms_shops`
--
ALTER TABLE `ms_shops`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `ms_user`
--
ALTER TABLE `ms_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 限制导出的表
--

--
-- 限制表 `ms_products`
--
ALTER TABLE `ms_products`
  ADD CONSTRAINT `ms_products_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `ms_shops` (`shop_id`);

--
-- 限制表 `ms_shops`
--
ALTER TABLE `ms_shops`
  ADD CONSTRAINT `ms_shops_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `ms_index_family` (`family_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
