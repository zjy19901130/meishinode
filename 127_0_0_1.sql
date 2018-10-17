-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-05 17:08:08
-- 服务器版本： 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- 表的结构 `cds`
--

CREATE TABLE `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- 转存表中的数据 `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;--
-- Database: `ms`
--
CREATE DATABASE IF NOT EXISTS `ms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ms`;

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
(1, 31, 1, 1),
(2, 31, 2, 1),
(3, 31, 3, 1),
(4, 1, 1, 1),
(5, 1, 2, 1),
(6, 1, 3, 1),
(7, 1, 8, 1),
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
  `img_url` varchar(255) NOT NULL,
  `md_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_products`
--

INSERT INTO `ms_products` (`product_id`, `shop_id`, `name`, `price`, `pro_details`, `pro_sales`, `is_onsale`, `opinion`, `pro_family_name`, `img_url`, `md_img`) VALUES
(null, 8, '菜品辣&必选', 0, '', 10, 1, 99, '必须品', 'http://127.0.0.1:3000/products/sd/08001.webp', 'http://127.0.0.1:3000/products/md/08001.webp'),
(null, 8, '菜品辣&必选', 0, '', 102, 1, 99, '热销', 'http://127.0.0.1:3000/products/sd/08002.webp', 'http://127.0.0.1:3000/products/md/08002.webp'),
(null, 8, '韭菜串', 4, '', 112, 1, 98, '阿狸招牌', 'http://127.0.0.1:3000/products/sd/08003.webp', 'http://127.0.0.1:3000/products/md/08003.webp'),
(null, 8, '热狗肠',5, '', 10, 1, 99, '肉串烤类', 'http://127.0.0.1:3000/products/sd/08004.webp', 'http://127.0.0.1:3000/products/md/08004.webp'),
(null, 8, '年糕', 3, '', 10, 1, 99, '素串烤类', 'http://127.0.0.1:3000/products/sd/08005.webp', 'http://127.0.0.1:3000/products/md/08005.webp'),
(null,8, '烤花菜',2.5, '', 10, 1, 99, '蔬菜烤类', 'http://127.0.0.1:3000/products/sd/08006.webp', 'http://127.0.0.1:3000/products/md/08006.webp'),
(null, 8, '烤臭豆腐', 5, '', 10, 1, 99, '素串烤类', 'http://127.0.0.1:3000/products/sd/08007.webp', 'http://127.0.0.1:3000/products/md/08007.webp'),
(null, 8, '里脊小串/20串', 19, '', 10, 1, 99, '肉串考类', 'http://127.0.0.1:3000/products/sd/08008.webp', 'http://127.0.0.1:3000/products/md/08008.webp'),
(null, 8, '烤翅中', 12, '', 10, 1, 99, '特色烤类', 'http://127.0.0.1:3000/products/sd/08009.webp', 'http://127.0.0.1:3000/products/md/08009.webp');
(null, 8, '秋刀鱼', 10, '', 10, 1, 99, '海鲜烤类', 'http://127.0.0.1:3000/products/sd/08010.webp', 'http://127.0.0.1:3000/products/md/08010.webp'),
(null, 8, '奶香馒头', 4, '', 10, 1, 99, '阿狸招牌', 'http://127.0.0.1:3000/products/sd/08011.webp', 'http://127.0.0.1:3000/products/md/08011.webp');
----------------------------------------------

--
-- 表的结构 `ms_ratings`
--

CREATE TABLE `ms_ratings` (
  `rid` int(11) NOT NULL,
  `user_uname` varchar(64) DEFAULT NULL,
  `rateTime` datetime DEFAULT NULL,
  `score` decimal(10,2) DEFAULT NULL,
  `rateType` varchar(32) DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `ms_ratings`
--

INSERT INTO `ms_ratings` (`rid`, `user_uname`, `rateTime`, `score`, `rateType`, `text`, `avatar`, `recommend`) VALUES
(1, 'lucy', '2018-10-04 22:28:55', '4.80', '0', '不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '炒饭'),
(2, 'licly', '2018-10-04 22:35:58', '4.90', '1', '不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '口水鸡'),
(3, 'dfdcf', '2018-10-04 22:35:58', '4.50', '2', '不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '金针菇'),
(4, 'tobvm', '2018-10-04 22:36:31', '4.20', '1', '不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '蛋炒饭'),
(5, 'juerry', '2018-10-04 22:36:59', '2.00', '2', '不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '炒鸡'),
(6, 'mark', '2018-10-04 22:37:29', '3.00', '0', '不错非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '酸菜鱼'),
(7, 'nnfgfgh', '2018-10-04 22:37:49', '5.00', '1', '不错我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', 'http://127.0.0.1:3000/userImg/1538574894192.jpg', '酸辣土豆丝');

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
  `serviceScore` decimal(10,2) NOT NULL,
  `foodScore` decimal(10,2) NOT NULL,
  `carry_time` int(11) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL,
  `promotion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_shops`
--

INSERT INTO `ms_shops` (`shop_id`, `family_id`, `shopname`, `address`, `space`, `origin_cost`, `carry_cost`, `score`, `serviceScore`, `foodScore`, `carry_time`, `sold_count`, `details`, `img_url`, `promotion`) VALUES
(1, 1, '芝遇精品焗饭(罗锦路店)', '上海', '500', '15.00', '2.80', '4.70', '4.10', '4.90', 27, 10, '上海', 'http://127.0.0.1:3000/shop/logo/img01.jpg', '满18减16，满35减18，满50减27'),
(2, 1, '川香人家(罗锦路店)', '上海', '2500', '15.00', '4.00', '4.80', '4.90', '4.30', 27, 20, '上海', 'http://127.0.0.1:3000/shop/logo/img02.jpg', '满35减20，满65减25，满85减27'),
(3, 1, '必胜客(南方城店)', '上海', '296', '15.00', '5.00', '4.60', '4.70', '4.30', 30, 10, '上海', 'http://127.0.0.1:3000/shop/logo/img03.jpg', '满25减25，满50减28，满90减35'),
(4, 1, '东北菜(龙茗路店)', '上海', '2660', '15.00', '3.00', '4.90', '4.90', '4.80', 40, 50, '上海', 'http://127.0.0.1:3000/shop/logo/img04.jpg', '满30减28，满35减18，满50减27'),
(5, 1, '永和大王', '上海', '2800', '15.00', '5.00', '4.70', '4.30', '4.80', 30, 1000, '上海', 'http://127.0.0.1:3000/shop/logo/img05.jpg', '满24减23，满48减37'),
(6, 1, '鲜粥道', '上海', '2300', '15.00', '4.50', '4.90', '4.90', '4.60', 20, 100, '上海', 'http://127.0.0.1:3000/shop/logo/img06.jpg', '满30减8');


INSERT INTO `ms_shops` (`shop_id`, `family_id`, `shopname`, `address`, `space`, `origin_cost`, `carry_cost`, `score`, `serviceScore`, `foodScore`, `carry_time`, `sold_count`, `details`, `img_url`, `promotion`) VALUES
(null, 1, '漫玲粥店(江文路店)', '上海江文路', '500', '16.00', '5.00', '4.90', '4.70', '4.30', 30, 10, '上海', 'http://127.0.0.1:3000/shop/shop/04.webp', '满25减15，满50减28，满90减35'),
(null, 1, '沙县小吃', '上海市闵行区浦江镇8号', '2500', '19', '5.8', '4.8', '4.30', '4.20', 25, 50, '粥店', 'http://127.0.0.1:3000/shop/05.webp', '满30减6，满60减28'),
(null, 1, '阿姨炒饭', '上海江月路', '3100', '15.00', '4.00', '4.50', '4.90', '4.30', 27, 20, '炒饭', 'http://127.0.0.1:3000/shop/06.webp', '满30减15，满65减25'),
(null, 1, '汉霸汉堡', '上海市赵楼店', '2400', '15.00', '3.00', '4.80', '4.90', '4.80', 40, 50, '上海', 'http://127.0.0.1:3000/shop/07.webp', '满30减28，满35减18，满50减27'),
(null, 1, '蜀地源麻辣香锅', '上海', '2800', '15.00', '5.00', '4.60', '4.30', '4.80', 30, 170, '上海', 'http://127.0.0.1:3000/shop/08.webp', '满24减23，满48减37'),
(null, 1, '沙县小吃', '上海江协路', '1800', '15.00', '4.60', '4.30', '4.90', '4.60', 20, 100, '上海', 'http://127.0.0.1:3000/shop/08.webp', '满30减8'),
(null, 1, '兰州拉面', '浦航路店', '1200', '15.00', '4.70', '4.30', '4.90', '4.60', 20, 100, '上海', 'http://127.0.0.1:3000/shop/09.webp', '满20减2，满30减3');
-- --------------------------------------------------------

--
-- 表的结构 `ms_user`
--

CREATE TABLE `ms_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `u_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ms_user`
--

INSERT INTO `ms_user` (`uid`, `uname`, `upwd`, `phone`, `u_img`) VALUES
(1, 'tom', '123456', '15256324568', 'http://127.0.0.1:3000/login/loginname.png'),
(2, 'lily', '111111', '13127578698', 'http://127.0.0.1:3000/login/loginname.png'),
(3, 'lucy', '222222', '18565338529', 'http://127.0.0.1:3000/login/loginname.png'),
(4, 'e341162', '1122', '123', 'http://127.0.0.1:3000/login/loginname.png'),
(5, 'e6781464', '3333', '15263205230', 'http://127.0.0.1:3000/login/loginname.png'),
(6, 'e9711728', '3333', '15263205231', 'http://127.0.0.1:3000/login/loginname.png'),
(7, 'e5661816', '123', '15226131230', 'http://127.0.0.1:3000/login/loginname.png'),
(22, 'e5527675', '123', '15226131252', 'http://127.0.0.1:3000/login/loginname.png'),
(23, 'e8439226', '123', '15226131253', 'http://127.0.0.1:3000/login/loginname.png'),
(24, 'e7353736', '123', '15226131254', 'http://127.0.0.1:3000/login/loginname.png'),
(25, 'e1934345', '123', '15226131255', 'http://127.0.0.1:3000/login/loginname.png'),
(26, 'e5981294', '123', '15226131256', 'http://127.0.0.1:3000/login/loginname.png'),
(27, 'e716336', '123', '15226131257', 'http://127.0.0.1:3000/login/loginname.png'),
(28, 'e366261', '123', '15226131258', 'http://127.0.0.1:3000/login/loginname.png'),
(29, 'e167039', '123', '15226131259', 'http://127.0.0.1:3000/login/loginname.png'),
(30, 'e1632785', '12523', '15226032151', 'http://127.0.0.1:3000/login/loginname.png'),
(31, 'e570379', '123456', '13127574403', ' http://127.0.0.1:3000/userImg/1538735251728.jpg'),
(32, 'e9841536', '13127574403', '13127574405', 'http://127.0.0.1:3000/login/loginname.png'),
(33, 'e9436168', '13127574403', '13127574406', 'http://127.0.0.1:3000/login/loginname.png'),
(34, 'e4450935', '123456', '13127574409', 'http://127.0.0.1:3000/login/loginname.png'),
(35, 'e3539317', '123456', '15688298859', 'http://127.0.0.1:3000/login/loginname.png'),
(36, 'e7846575', '123456', '15248598977', 'http://127.0.0.1:3000/login/loginname.png'),
(37, 'e6802238', '123456', '18339782912', 'http://127.0.0.1:3000/login/loginname.png'),
(38, 'e6962728', '123456', '18956238956', 'http://127.0.0.1:3000/login/loginname.png'),
(39, 'e7888089', '123456', '131275774403', 'http://127.0.0.1:3000/login/loginname.png'),
(40, 'e7960370', '123456_', '15123568578', 'http://127.0.0.1:3000/login/loginname.png'),
(41, 'e6748865', '132153421532', '13225556559', ' http://127.0.0.1:3000/userImg/1538365318606.jpg');

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
-- Indexes for table `ms_ratings`
--
ALTER TABLE `ms_ratings`
  ADD PRIMARY KEY (`rid`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ms_cart`
--
ALTER TABLE `ms_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ms_index_family`
--
ALTER TABLE `ms_index_family`
  MODIFY `family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ms_index_swipe`
--
ALTER TABLE `ms_index_swipe`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ms_products`
--
ALTER TABLE `ms_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ms_ratings`
--
ALTER TABLE `ms_ratings`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ms_shops`
--
ALTER TABLE `ms_shops`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ms_user`
--
ALTER TABLE `ms_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
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
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 表的结构 `pma_bookmark`
--

CREATE TABLE `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 表的结构 `pma_column_info`
--

CREATE TABLE `pma_column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_designer_coords`
--

CREATE TABLE `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- 表的结构 `pma_history`
--

CREATE TABLE `pma_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_navigationhiding`
--

CREATE TABLE `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 表的结构 `pma_pdf_pages`
--

CREATE TABLE `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_recent`
--

CREATE TABLE `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 转存表中的数据 `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"ms","table":"ms_shops"},{"db":"ms","table":"ms_ratings"},{"db":"ms","table":"ms_products"},{"db":"ms","table":"ms_user"},{"db":"phpmyadmin","table":"pma_column_info"},{"db":"phpmyadmin","table":"pma_designer_coords"},{"db":"phpmyadmin","table":"pma_history"},{"db":"phpmyadmin","table":"pma_pdf_pages"},{"db":"phpmyadmin","table":"pma_recent"},{"db":"phpmyadmin","table":"pma_relation"}]');

-- --------------------------------------------------------

--
-- 表的结构 `pma_relation`
--

CREATE TABLE `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 表的结构 `pma_savedsearches`
--

CREATE TABLE `pma_savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_coords`
--

CREATE TABLE `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_info`
--

CREATE TABLE `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 表的结构 `pma_table_uiprefs`
--

CREATE TABLE `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 转存表中的数据 `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ms', 'ms_products', '{"sorted_col":"`ms_products`.`pro_sales` ASC"}', '2018-10-04 11:31:45'),
('root', 'ms', 'ms_shops', '{"sorted_col":"`ms_shops`.`details` ASC"}', '2018-10-05 09:33:33'),
('root', 'ms', 'ms_ratings', '{"sorted_col":"`ms_ratings`.`rateTime` DESC"}', '2018-10-05 06:33:35');

-- --------------------------------------------------------

--
-- 表的结构 `pma_tracking`
--

CREATE TABLE `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `pma_userconfig`
--

CREATE TABLE `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 转存表中的数据 `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-01 03:37:35', '{"lang":"zh_CN","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- 表的结构 `pma_usergroups`
--

CREATE TABLE `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 表的结构 `pma_users`
--

CREATE TABLE `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- 表的结构 `user_pwd`
--

CREATE TABLE `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- 转存表中的数据 `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
