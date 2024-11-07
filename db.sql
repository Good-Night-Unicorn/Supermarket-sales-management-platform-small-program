/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chaoshishouhuoguanlipingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chaoshishouhuoguanlipingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chaoshishouhuoguanlipingtai`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-13 15:17:27'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-13 15:17:27'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-13 15:17:27'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-13 15:17:27'),(5,'gongyingshang_types','供应商类型',1,'供应商类型1',NULL,NULL,'2023-04-13 15:17:27'),(6,'gongyingshang_types','供应商类型',2,'供应商类型2',NULL,NULL,'2023-04-13 15:17:27'),(7,'gongyingshang_xinyongdengji_types','供应商信用等级类型',1,'一级',NULL,NULL,'2023-04-13 15:17:27'),(8,'gongyingshang_xinyongdengji_types','供应商信用等级类型',2,'二级',NULL,NULL,'2023-04-13 15:17:27'),(9,'gongyingshang_xinyongdengji_types','供应商信用等级类型',3,'三级',NULL,NULL,'2023-04-13 15:17:27'),(10,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-13 15:17:27'),(11,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-13 15:17:27'),(12,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-13 15:17:27'),(13,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2023-04-13 15:17:27'),(14,'shangpin_churu_inout_types','出入库类型',1,'报损',NULL,NULL,'2023-04-13 15:17:28'),(15,'shangpin_churu_inout_types','出入库类型',2,'进货',NULL,NULL,'2023-04-13 15:17:28'),(16,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-13 15:17:28');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-13 15:17:59','公告详情1','2023-04-13 15:17:59'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-13 15:17:59','公告详情2','2023-04-13 15:17:59'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-13 15:17:59','公告详情3','2023-04-13 15:17:59'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-13 15:17:59','公告详情4','2023-04-13 15:17:59'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-13 15:17:59','公告详情5','2023-04-13 15:17:59'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-13 15:17:59','公告详情6','2023-04-13 15:17:59'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-13 15:17:59','公告详情7','2023-04-13 15:17:59'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-13 15:17:59','公告详情8','2023-04-13 15:17:59'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-13 15:17:59','公告详情9','2023-04-13 15:17:59'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-13 15:17:59','公告详情10','2023-04-13 15:17:59'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-13 15:17:59','公告详情11','2023-04-13 15:17:59'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-13 15:17:59','公告详情12','2023-04-13 15:17:59'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-13 15:17:59','公告详情13','2023-04-13 15:17:59'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-13 15:17:59','公告详情14','2023-04-13 15:17:59');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_uuid_number` varchar(200) DEFAULT NULL COMMENT '供应商唯一编号',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商名称  Search111 ',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人姓名 Search111 ',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系人手机号',
  `lianxiren_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商类型',
  `gongyingshang_xinyongdengji_types` int(11) DEFAULT NULL COMMENT '信用等级 Search111 ',
  `gongyingshang_content` longtext COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='供应商信息';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_uuid_number`,`gongyingshang_name`,`lianxiren_name`,`lianxiren_phone`,`lianxiren_address`,`gongyingshang_types`,`gongyingshang_xinyongdengji_types`,`gongyingshang_content`,`create_time`) values (1,'1681370279703','供应商名称1','联系人姓名1','17703786901','地址1',2,2,'供应商详情1','2023-04-13 15:17:59'),(2,'1681370279734','供应商名称2','联系人姓名2','17703786902','地址2',1,3,'供应商详情2','2023-04-13 15:17:59'),(3,'1681370279741','供应商名称3','联系人姓名3','17703786903','地址3',1,2,'供应商详情3','2023-04-13 15:17:59'),(4,'1681370279777','供应商名称4','联系人姓名4','17703786904','地址4',1,3,'供应商详情4','2023-04-13 15:17:59'),(5,'1681370279699','供应商名称5','联系人姓名5','17703786905','地址5',1,3,'供应商详情5','2023-04-13 15:17:59'),(6,'1681370279764','供应商名称6','联系人姓名6','17703786906','地址6',2,3,'供应商详情6','2023-04-13 15:17:59'),(7,'1681370279718','供应商名称7','联系人姓名7','17703786907','地址7',1,2,'供应商详情7','2023-04-13 15:17:59'),(8,'1681370279695','供应商名称8','联系人姓名8','17703786908','地址8',2,2,'供应商详情8','2023-04-13 15:17:59'),(9,'1681370279778','供应商名称9','联系人姓名9','17703786909','地址9',1,2,'供应商详情9','2023-04-13 15:17:59'),(10,'1681370279745','供应商名称10','联系人姓名10','17703786910','地址10',1,1,'供应商详情10','2023-04-13 15:17:59'),(11,'1681370279759','供应商名称11','联系人姓名11','17703786911','地址11',2,2,'供应商详情11','2023-04-13 15:17:59'),(12,'1681370279730','供应商名称12','联系人姓名12','17703786912','地址12',1,2,'供应商详情12','2023-04-13 15:17:59'),(13,'1681370279759','供应商名称13','联系人姓名13','17703786913','地址13',2,3,'供应商详情13','2023-04-13 15:17:59'),(14,'1681370279773','供应商名称14','联系人姓名14','17703786914','地址14',2,2,'供应商详情14','2023-04-13 15:17:59');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '会员编号 Search111 ',
  `huiyuan_name` varchar(200) DEFAULT NULL COMMENT '会员姓名 Search111 ',
  `huiyuan_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号',
  `huiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号',
  `huiyuan_photo` varchar(200) DEFAULT NULL COMMENT '会员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `huiyuan_email` varchar(200) DEFAULT NULL COMMENT '会员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`huiyuan_uuid_number`,`huiyuan_name`,`huiyuan_phone`,`huiyuan_id_number`,`huiyuan_photo`,`sex_types`,`new_money`,`huiyuan_email`,`create_time`) values (1,'1681370279733','会员姓名1','17703786901','410224199010102001','upload/huiyuan1.jpg',2,'817.96','1@qq.com','2023-04-13 15:17:59'),(2,'1681370279733','会员姓名2','17703786902','410224199010102002','upload/huiyuan2.jpg',1,'772.16','2@qq.com','2023-04-13 15:17:59'),(3,'1681370279709','会员姓名3','17703786903','410224199010102003','upload/huiyuan3.jpg',1,'313.65','3@qq.com','2023-04-13 15:17:59'),(4,'1681370279764','会员姓名4','17703786904','410224199010102004','upload/huiyuan4.jpg',1,'99.41','4@qq.com','2023-04-13 15:17:59'),(5,'1681370279733','会员姓名5','17703786905','410224199010102005','upload/huiyuan5.jpg',2,'625.42','5@qq.com','2023-04-13 15:17:59'),(6,'1681370279737','会员姓名6','17703786906','410224199010102006','upload/huiyuan6.jpg',1,'426.33','6@qq.com','2023-04-13 15:17:59'),(7,'1681370279760','会员姓名7','17703786907','410224199010102007','upload/huiyuan7.jpg',1,'72.36','7@qq.com','2023-04-13 15:17:59'),(8,'1681370279720','会员姓名8','17703786908','410224199010102008','upload/huiyuan8.jpg',2,'893.49','8@qq.com','2023-04-13 15:17:59'),(9,'1681370279746','会员姓名9','17703786909','410224199010102009','upload/huiyuan9.jpg',1,'337.45','9@qq.com','2023-04-13 15:17:59'),(10,'1681370279771','会员姓名10','17703786910','410224199010102010','upload/huiyuan10.jpg',1,'363.46','10@qq.com','2023-04-13 15:17:59'),(11,'1681370279739','会员姓名11','17703786911','410224199010102011','upload/huiyuan11.jpg',1,'203.29','11@qq.com','2023-04-13 15:17:59'),(12,'1681370279689','会员姓名12','17703786912','410224199010102012','upload/huiyuan12.jpg',2,'490.51','12@qq.com','2023-04-13 15:17:59'),(13,'1681370279721','会员姓名13','17703786913','410224199010102013','upload/huiyuan13.jpg',1,'114.54','13@qq.com','2023-04-13 15:17:59'),(14,'1681370279704','会员姓名14','17703786914','410224199010102014','upload/huiyuan14.jpg',2,'34.24','14@qq.com','2023-04-13 15:17:59');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`gongyingshang_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,1,'商品名称1','1681370279693','upload/shangpin1.jpg',4,101,'332.67','商品介绍1',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(2,2,'商品名称2','1681370279753','upload/shangpin2.jpg',2,102,'351.62','商品介绍2',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(3,3,'商品名称3','1681370279783','upload/shangpin3.jpg',2,103,'184.27','商品介绍3',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(4,4,'商品名称4','1681370279770','upload/shangpin4.jpg',3,104,'482.18','商品介绍4',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(5,5,'商品名称5','1681370279690','upload/shangpin5.jpg',3,105,'176.96','商品介绍5',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(6,6,'商品名称6','1681370279736','upload/shangpin6.jpg',4,106,'466.91','商品介绍6',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(7,7,'商品名称7','1681370279714','upload/shangpin7.jpg',3,107,'481.74','商品介绍7',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(8,8,'商品名称8','1681370279711','upload/shangpin8.jpg',1,108,'339.21','商品介绍8',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(9,9,'商品名称9','1681370279735','upload/shangpin9.jpg',3,109,'282.37','商品介绍9',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(10,10,'商品名称10','1681370279699','upload/shangpin10.jpg',2,1010,'498.96','商品介绍10',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(11,11,'商品名称11','1681370279754','upload/shangpin11.jpg',4,1010,'143.43','商品介绍11',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(12,12,'商品名称12','1681370279716','upload/shangpin12.jpg',2,1011,'17.30','商品介绍12',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(13,13,'商品名称13','1681370279769','upload/shangpin13.jpg',3,911,'399.37','商品介绍13',1,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(14,14,'商品名称14','1681370279744','upload/shangpin14.jpg',4,1007,'430.65','商品介绍14',1,'2023-04-13 15:17:59','2023-04-13 15:17:59');

/*Table structure for table `shangpin_churu_inout` */

DROP TABLE IF EXISTS `shangpin_churu_inout`;

CREATE TABLE `shangpin_churu_inout` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_uuid_number` varchar(200) DEFAULT NULL COMMENT '出入库流水号',
  `shangpin_churu_inout_name` varchar(200) DEFAULT NULL COMMENT '出入库名称  Search111 ',
  `shangpin_churu_inout_types` int(11) DEFAULT NULL COMMENT '出入库类型  Search111 ',
  `shangpin_churu_inout_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='出入库';

/*Data for the table `shangpin_churu_inout` */

insert  into `shangpin_churu_inout`(`id`,`shangpin_churu_inout_uuid_number`,`shangpin_churu_inout_name`,`shangpin_churu_inout_types`,`shangpin_churu_inout_content`,`insert_time`,`create_time`) values (1,'1681370279724','出入库名称1',2,'备注1','2023-04-13 15:17:59','2023-04-13 15:17:59'),(2,'1681370279735','出入库名称2',1,'备注2','2023-04-13 15:17:59','2023-04-13 15:17:59'),(3,'1681370279699','出入库名称3',1,'备注3','2023-04-13 15:17:59','2023-04-13 15:17:59'),(4,'1681370279696','出入库名称4',2,'备注4','2023-04-13 15:17:59','2023-04-13 15:17:59'),(5,'1681370279720','出入库名称5',1,'备注5','2023-04-13 15:17:59','2023-04-13 15:17:59'),(6,'1681370279740','出入库名称6',1,'备注6','2023-04-13 15:17:59','2023-04-13 15:17:59'),(7,'1681370279697','出入库名称7',1,'备注7','2023-04-13 15:17:59','2023-04-13 15:17:59'),(8,'1681370279732','出入库名称8',2,'备注8','2023-04-13 15:17:59','2023-04-13 15:17:59'),(9,'1681370279745','出入库名称9',1,'备注9','2023-04-13 15:17:59','2023-04-13 15:17:59'),(10,'1681370279768','出入库名称10',1,'备注10','2023-04-13 15:17:59','2023-04-13 15:17:59'),(11,'1681370279767','出入库名称11',2,'备注11','2023-04-13 15:17:59','2023-04-13 15:17:59'),(12,'1681370279720','出入库名称12',2,'备注12','2023-04-13 15:17:59','2023-04-13 15:17:59'),(13,'1681370279698','出入库名称13',1,'备注13','2023-04-13 15:17:59','2023-04-13 15:17:59'),(14,'1681370279778','出入库名称14',2,'备注14','2023-04-13 15:17:59','2023-04-13 15:17:59'),(15,'1681373572539','213',1,'','2023-04-13 16:12:53','2023-04-13 16:12:53'),(16,'1681374100666','2131',1,'','2023-04-13 16:21:41','2023-04-13 16:21:41');

/*Table structure for table `shangpin_churu_inout_list` */

DROP TABLE IF EXISTS `shangpin_churu_inout_list`;

CREATE TABLE `shangpin_churu_inout_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_churu_inout_id` int(11) DEFAULT NULL COMMENT '出入库',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `shangpin_churu_inout_list_number` int(11) DEFAULT NULL COMMENT '操作数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='出入库详情';

/*Data for the table `shangpin_churu_inout_list` */

insert  into `shangpin_churu_inout_list`(`id`,`shangpin_churu_inout_id`,`shangpin_id`,`shangpin_churu_inout_list_number`,`insert_time`,`create_time`) values (1,1,1,250,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(2,2,2,330,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(3,3,3,134,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(4,4,4,121,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(5,5,5,412,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(6,6,6,331,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(7,7,7,290,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(8,8,8,121,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(9,9,9,153,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(10,10,10,56,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(11,11,11,230,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(12,12,12,450,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(13,13,13,105,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(14,14,14,181,'2023-04-13 15:17:59','2023-04-13 15:17:59'),(15,15,14,1,'2023-04-13 16:12:53','2023-04-13 16:12:53'),(16,16,13,100,'2023-04-13 16:21:41','2023-04-13 16:21:41');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huiyuan_id` int(11) DEFAULT NULL COMMENT '会员',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`shangpin_id`,`yonghu_id`,`huiyuan_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`insert_time`,`create_time`) values (6,'1681373209582',14,1,11,1,'430.65',101,'2023-04-13 16:06:50','2023-04-13 16:06:50'),(7,'1681373649255',13,1,12,1,'399.37',101,'2023-04-13 16:14:09','2023-04-13 16:14:09'),(8,'1681373669710',13,1,12,1,'399.37',101,'2023-04-13 16:14:30','2023-04-13 16:14:30'),(9,'1681373669710',14,1,12,1,'430.65',101,'2023-04-13 16:14:30','2023-04-13 16:14:30'),(10,'1681373669710',11,1,12,1,'143.43',101,'2023-04-13 16:14:30','2023-04-13 16:14:30'),(11,'1681373669710',12,1,12,1,'17.30',101,'2023-04-13 16:14:30','2023-04-13 16:14:30');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','diqpknokio5974kdzxsgr63ov2bq2nbb','2023-04-13 15:34:00','2023-04-13 17:21:58'),(2,1,'a1','yonghu','用户','wjujvhozk4lqzsx4e5yptkol60kbwy5n','2023-04-13 15:40:33','2023-04-13 17:20:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-13 15:17:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','1681370279732','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-04-13 15:17:59'),(2,'a2','123456','1681370279754','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-04-13 15:17:59'),(3,'a3','123456','1681370279784','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-13 15:17:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
