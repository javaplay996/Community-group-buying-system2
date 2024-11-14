/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmj0a47
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmj0a47` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmj0a47`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-15 11:23:19',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-15 11:23:19',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-15 11:23:19',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-15 11:23:19',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-15 11:23:19',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-15 11:23:19',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpintuangou' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmj0a47/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmj0a47/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmj0a47/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshangpintuangou` */

DROP TABLE IF EXISTS `discussshangpintuangou`;

CREATE TABLE `discussshangpintuangou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品团购评论表';

/*Data for the table `discussshangpintuangou` */

insert  into `discussshangpintuangou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-15 11:23:19',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpintuangou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-15 11:23:19',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpintuangou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-15 11:23:19',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpintuangou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-15 11:23:19',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpintuangou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-15 11:23:19',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpintuangou`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-15 11:23:19',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-15 11:23:19',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-15 11:23:19',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-15 11:23:19',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-15 11:23:19',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-15 11:23:19',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-15 11:23:19',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='社区资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-05-15 11:23:19','标题1','简介1','http://localhost:8080/ssmj0a47/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-05-15 11:23:19','标题2','简介2','http://localhost:8080/ssmj0a47/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-05-15 11:23:19','标题3','简介3','http://localhost:8080/ssmj0a47/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-05-15 11:23:19','标题4','简介4','http://localhost:8080/ssmj0a47/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-05-15 11:23:19','标题5','简介5','http://localhost:8080/ssmj0a47/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-05-15 11:23:19','标题6','简介6','http://localhost:8080/ssmj0a47/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpintuangou' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (21,'2021-05-15 11:23:18','商家1','123456','商家名称1','http://localhost:8080/ssmj0a47/upload/shangjia_touxiang1.jpg','13823888881','地址1',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (22,'2021-05-15 11:23:18','商家2','123456','商家名称2','http://localhost:8080/ssmj0a47/upload/shangjia_touxiang2.jpg','13823888882','地址2',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (23,'2021-05-15 11:23:18','商家3','123456','商家名称3','http://localhost:8080/ssmj0a47/upload/shangjia_touxiang3.jpg','13823888883','地址3',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (24,'2021-05-15 11:23:18','商家4','123456','商家名称4','http://localhost:8080/ssmj0a47/upload/shangjia_touxiang4.jpg','13823888884','地址4',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (25,'2021-05-15 11:23:18','商家5','123456','商家名称5','http://localhost:8080/ssmj0a47/upload/shangjia_touxiang5.jpg','13823888885','地址5',100);
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiamingcheng`,`touxiang`,`lianxidianhua`,`dizhi`,`money`) values (26,'2021-05-15 11:23:18','商家6','123456','商家名称6','http://localhost:8080/ssmj0a47/upload/shangjia_touxiang6.jpg','13823888886','地址6',100);

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (31,'2021-05-15 11:23:18','商品分类1');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (32,'2021-05-15 11:23:18','商品分类2');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (33,'2021-05-15 11:23:18','商品分类3');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (34,'2021-05-15 11:23:18','商品分类4');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (35,'2021-05-15 11:23:18','商品分类5');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (36,'2021-05-15 11:23:18','商品分类6');

/*Table structure for table `shangpintuangou` */

DROP TABLE IF EXISTS `shangpintuangou`;

CREATE TABLE `shangpintuangou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiamingcheng` varchar(200) DEFAULT NULL COMMENT '商家名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shangpinbianma` varchar(200) DEFAULT NULL COMMENT '商品编码',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shangpintupian` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianma` (`shangpinbianma`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品团购';

/*Data for the table `shangpintuangou` */

insert  into `shangpintuangou`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`shangpinfenlei`,`shangpinbianma`,`shangpinmingcheng`,`shangpinxiangqing`,`shangpintupian`,`beizhu`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (41,'2021-05-15 11:23:18','商家账号1','商家名称1','商品分类1','商品编码1','商品名称1','商品详情1','http://localhost:8080/ssmj0a47/upload/shangpintuangou_shangpintupian1.jpg','备注1',1,1,'2021-05-15 11:23:18',99.9);
insert  into `shangpintuangou`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`shangpinfenlei`,`shangpinbianma`,`shangpinmingcheng`,`shangpinxiangqing`,`shangpintupian`,`beizhu`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (42,'2021-05-15 11:23:18','商家账号2','商家名称2','商品分类2','商品编码2','商品名称2','商品详情2','http://localhost:8080/ssmj0a47/upload/shangpintuangou_shangpintupian2.jpg','备注2',2,2,'2021-05-15 11:23:18',99.9);
insert  into `shangpintuangou`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`shangpinfenlei`,`shangpinbianma`,`shangpinmingcheng`,`shangpinxiangqing`,`shangpintupian`,`beizhu`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (43,'2021-05-15 11:23:18','商家账号3','商家名称3','商品分类3','商品编码3','商品名称3','商品详情3','http://localhost:8080/ssmj0a47/upload/shangpintuangou_shangpintupian3.jpg','备注3',3,3,'2021-05-15 11:23:18',99.9);
insert  into `shangpintuangou`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`shangpinfenlei`,`shangpinbianma`,`shangpinmingcheng`,`shangpinxiangqing`,`shangpintupian`,`beizhu`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (44,'2021-05-15 11:23:18','商家账号4','商家名称4','商品分类4','商品编码4','商品名称4','商品详情4','http://localhost:8080/ssmj0a47/upload/shangpintuangou_shangpintupian4.jpg','备注4',4,4,'2021-05-15 11:23:18',99.9);
insert  into `shangpintuangou`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`shangpinfenlei`,`shangpinbianma`,`shangpinmingcheng`,`shangpinxiangqing`,`shangpintupian`,`beizhu`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (45,'2021-05-15 11:23:18','商家账号5','商家名称5','商品分类5','商品编码5','商品名称5','商品详情5','http://localhost:8080/ssmj0a47/upload/shangpintuangou_shangpintupian5.jpg','备注5',5,5,'2021-05-15 11:23:18',99.9);
insert  into `shangpintuangou`(`id`,`addtime`,`shangjiazhanghao`,`shangjiamingcheng`,`shangpinfenlei`,`shangpinbianma`,`shangpinmingcheng`,`shangpinxiangqing`,`shangpintupian`,`beizhu`,`thumbsupnum`,`crazilynum`,`clicktime`,`price`) values (46,'2021-05-15 11:23:18','商家账号6','商家名称6','商品分类6','商品编码6','商品名称6','商品详情6','http://localhost:8080/ssmj0a47/upload/shangpintuangou_shangpintupian6.jpg','备注6',6,6,'2021-05-15 11:23:18',99.9);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `tuangougonggao` */

DROP TABLE IF EXISTS `tuangougonggao`;

CREATE TABLE `tuangougonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `gonggaofengmian` varchar(200) DEFAULT NULL COMMENT '公告封面',
  `gonggaoshijian` datetime DEFAULT NULL COMMENT '公告时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='团购公告';

/*Data for the table `tuangougonggao` */

insert  into `tuangougonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`gonggaofengmian`,`gonggaoshijian`) values (51,'2021-05-15 11:23:19','公告标题1','公告内容1','http://localhost:8080/ssmj0a47/upload/tuangougonggao_gonggaofengmian1.jpg','2021-05-15 11:23:19');
insert  into `tuangougonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`gonggaofengmian`,`gonggaoshijian`) values (52,'2021-05-15 11:23:19','公告标题2','公告内容2','http://localhost:8080/ssmj0a47/upload/tuangougonggao_gonggaofengmian2.jpg','2021-05-15 11:23:19');
insert  into `tuangougonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`gonggaofengmian`,`gonggaoshijian`) values (53,'2021-05-15 11:23:19','公告标题3','公告内容3','http://localhost:8080/ssmj0a47/upload/tuangougonggao_gonggaofengmian3.jpg','2021-05-15 11:23:19');
insert  into `tuangougonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`gonggaofengmian`,`gonggaoshijian`) values (54,'2021-05-15 11:23:19','公告标题4','公告内容4','http://localhost:8080/ssmj0a47/upload/tuangougonggao_gonggaofengmian4.jpg','2021-05-15 11:23:19');
insert  into `tuangougonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`gonggaofengmian`,`gonggaoshijian`) values (55,'2021-05-15 11:23:19','公告标题5','公告内容5','http://localhost:8080/ssmj0a47/upload/tuangougonggao_gonggaofengmian5.jpg','2021-05-15 11:23:19');
insert  into `tuangougonggao`(`id`,`addtime`,`gonggaobiaoti`,`gonggaoneirong`,`gonggaofengmian`,`gonggaoshijian`) values (56,'2021-05-15 11:23:19','公告标题6','公告内容6','http://localhost:8080/ssmj0a47/upload/tuangougonggao_gonggaofengmian6.jpg','2021-05-15 11:23:19');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-15 11:23:19');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (11,'2021-05-15 11:23:18','用户1','123456','姓名1','男','13823888881','440300199101010001','773890001@qq.com','http://localhost:8080/ssmj0a47/upload/yonghu_zhaopian1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (12,'2021-05-15 11:23:18','用户2','123456','姓名2','男','13823888882','440300199202020002','773890002@qq.com','http://localhost:8080/ssmj0a47/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (13,'2021-05-15 11:23:18','用户3','123456','姓名3','男','13823888883','440300199303030003','773890003@qq.com','http://localhost:8080/ssmj0a47/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (14,'2021-05-15 11:23:18','用户4','123456','姓名4','男','13823888884','440300199404040004','773890004@qq.com','http://localhost:8080/ssmj0a47/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (15,'2021-05-15 11:23:18','用户5','123456','姓名5','男','13823888885','440300199505050005','773890005@qq.com','http://localhost:8080/ssmj0a47/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`shenfenzheng`,`youxiang`,`zhaopian`,`money`) values (16,'2021-05-15 11:23:18','用户6','123456','姓名6','男','13823888886','440300199606060006','773890006@qq.com','http://localhost:8080/ssmj0a47/upload/yonghu_zhaopian6.jpg',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
