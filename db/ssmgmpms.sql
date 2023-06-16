-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmgmpms
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssmgmpms`
--

/*!40000 DROP DATABASE IF EXISTS `ssmgmpms`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmgmpms` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmgmpms`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-04-19 06:58:20','关于我们','ABOUT US','<p>测试11</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888081045 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2023-04-19 06:58:19',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2023-04-19 06:58:19',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2023-04-19 06:58:19',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2023-04-19 06:58:19',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2023-04-19 06:58:19',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2023-04-19 06:58:19',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2023-04-19 06:58:19',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2023-04-19 06:58:20',18,'宇宙银河系地球1号','地某','13823888888','是'),(1681888081044,'2023-04-19 07:08:00',1681888052479,'某某地址1','张三','13111111111','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caipinfenlei`
--

DROP TABLE IF EXISTS `caipinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888280990 DEFAULT CHARSET=utf8 COMMENT='菜品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caipinfenlei`
--

LOCK TABLES `caipinfenlei` WRITE;
/*!40000 ALTER TABLE `caipinfenlei` DISABLE KEYS */;
INSERT INTO `caipinfenlei` VALUES (51,'2023-04-19 06:58:19','菜品分类1'),(52,'2023-04-19 06:58:19','菜品分类2'),(53,'2023-04-19 06:58:19','菜品分类3'),(54,'2023-04-19 06:58:19','菜品分类4'),(55,'2023-04-19 06:58:19','菜品分类5'),(56,'2023-04-19 06:58:19','菜品分类6'),(57,'2023-04-19 06:58:19','菜品分类7'),(58,'2023-04-19 06:58:19','菜品分类8'),(1681888280989,'2023-04-19 07:11:20','油炸类');
/*!40000 ALTER TABLE `caipinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yuzhicai' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888129582 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chushifuwu`
--

DROP TABLE IF EXISTS `chushifuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chushifuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) NOT NULL COMMENT '服务名称',
  `fuwufengmian` longtext COMMENT '服务封面',
  `shoufeibiaozhun` varchar(200) DEFAULT NULL COMMENT '收费标准',
  `fuwuneirong` longtext COMMENT '服务内容',
  `chushixingming` varchar(200) NOT NULL COMMENT '厨师姓名',
  `gengxinriqi` date DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888261911 DEFAULT CHARSET=utf8 COMMENT='厨师服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chushifuwu`
--

LOCK TABLES `chushifuwu` WRITE;
/*!40000 ALTER TABLE `chushifuwu` DISABLE KEYS */;
INSERT INTO `chushifuwu` VALUES (31,'2023-04-19 06:58:19','服务名称1','upload/chushifuwu_fuwufengmian1.jpg,upload/chushifuwu_fuwufengmian2.jpg,upload/chushifuwu_fuwufengmian3.jpg','收费标准1','服务内容1','厨师姓名1','2023-04-19'),(32,'2023-04-19 06:58:19','服务名称2','upload/chushifuwu_fuwufengmian2.jpg,upload/chushifuwu_fuwufengmian3.jpg,upload/chushifuwu_fuwufengmian4.jpg','收费标准2','服务内容2','厨师姓名2','2023-04-19'),(33,'2023-04-19 06:58:19','服务名称3','upload/chushifuwu_fuwufengmian3.jpg,upload/chushifuwu_fuwufengmian4.jpg,upload/chushifuwu_fuwufengmian5.jpg','收费标准3','服务内容3','厨师姓名3','2023-04-19'),(34,'2023-04-19 06:58:19','服务名称4','upload/chushifuwu_fuwufengmian4.jpg,upload/chushifuwu_fuwufengmian5.jpg,upload/chushifuwu_fuwufengmian6.jpg','收费标准4','服务内容4','厨师姓名4','2023-04-19'),(35,'2023-04-19 06:58:19','服务名称5','upload/chushifuwu_fuwufengmian5.jpg,upload/chushifuwu_fuwufengmian6.jpg,upload/chushifuwu_fuwufengmian7.jpg','收费标准5','服务内容5','厨师姓名5','2023-04-19'),(36,'2023-04-19 06:58:19','服务名称6','upload/chushifuwu_fuwufengmian6.jpg,upload/chushifuwu_fuwufengmian7.jpg,upload/chushifuwu_fuwufengmian8.jpg','收费标准6','服务内容6','厨师姓名6','2023-04-19'),(37,'2023-04-19 06:58:19','服务名称7','upload/chushifuwu_fuwufengmian7.jpg,upload/chushifuwu_fuwufengmian8.jpg,upload/chushifuwu_fuwufengmian9.jpg','收费标准7','服务内容7','厨师姓名7','2023-04-19'),(38,'2023-04-19 06:58:19','服务名称8','upload/chushifuwu_fuwufengmian8.jpg,upload/chushifuwu_fuwufengmian9.jpg,upload/chushifuwu_fuwufengmian10.jpg','收费标准8','服务内容8','厨师姓名8','2023-04-19'),(1681888261910,'2023-04-19 07:11:01','某服务','upload/1681888259856.jpg','188一次','<p>测试1111</p><p><img src=\"http://localhost:8080/ssmgmpms/upload/1681888255003.jpg\"></p>','某厨师','2023-04-19');
/*!40000 ALTER TABLE `chushifuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chushixinxi`
--

DROP TABLE IF EXISTS `chushixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chushixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chushixingming` varchar(200) NOT NULL COMMENT '厨师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `jiguan` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `gongzuojingyan` varchar(200) DEFAULT NULL COMMENT '工作经验',
  `touxiang` longtext COMMENT '头像',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `pengrenjineng` varchar(200) DEFAULT NULL COMMENT '烹饪技能',
  `gongzuolvli` longtext COMMENT '工作履历',
  `rongyujiangxiang` longtext COMMENT '荣誉奖项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888206041 DEFAULT CHARSET=utf8 COMMENT='厨师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chushixinxi`
--

LOCK TABLES `chushixinxi` WRITE;
/*!40000 ALTER TABLE `chushixinxi` DISABLE KEYS */;
INSERT INTO `chushixinxi` VALUES (21,'2023-04-19 06:58:19','厨师姓名1','男',1,'13823888881','籍贯1','工作经验1','upload/chushixinxi_touxiang1.jpg,upload/chushixinxi_touxiang2.jpg,upload/chushixinxi_touxiang3.jpg','初中','烹饪技能1','工作履历1','荣誉奖项1'),(22,'2023-04-19 06:58:19','厨师姓名2','男',2,'13823888882','籍贯2','工作经验2','upload/chushixinxi_touxiang2.jpg,upload/chushixinxi_touxiang3.jpg,upload/chushixinxi_touxiang4.jpg','初中','烹饪技能2','工作履历2','荣誉奖项2'),(23,'2023-04-19 06:58:19','厨师姓名3','男',3,'13823888883','籍贯3','工作经验3','upload/chushixinxi_touxiang3.jpg,upload/chushixinxi_touxiang4.jpg,upload/chushixinxi_touxiang5.jpg','初中','烹饪技能3','工作履历3','荣誉奖项3'),(24,'2023-04-19 06:58:19','厨师姓名4','男',4,'13823888884','籍贯4','工作经验4','upload/chushixinxi_touxiang4.jpg,upload/chushixinxi_touxiang5.jpg,upload/chushixinxi_touxiang6.jpg','初中','烹饪技能4','工作履历4','荣誉奖项4'),(25,'2023-04-19 06:58:19','厨师姓名5','男',5,'13823888885','籍贯5','工作经验5','upload/chushixinxi_touxiang5.jpg,upload/chushixinxi_touxiang6.jpg,upload/chushixinxi_touxiang7.jpg','初中','烹饪技能5','工作履历5','荣誉奖项5'),(26,'2023-04-19 06:58:19','厨师姓名6','男',6,'13823888886','籍贯6','工作经验6','upload/chushixinxi_touxiang6.jpg,upload/chushixinxi_touxiang7.jpg,upload/chushixinxi_touxiang8.jpg','初中','烹饪技能6','工作履历6','荣誉奖项6'),(27,'2023-04-19 06:58:19','厨师姓名7','男',7,'13823888887','籍贯7','工作经验7','upload/chushixinxi_touxiang7.jpg,upload/chushixinxi_touxiang8.jpg,upload/chushixinxi_touxiang9.jpg','初中','烹饪技能7','工作履历7','荣誉奖项7'),(28,'2023-04-19 06:58:19','厨师姓名8','男',8,'13823888888','籍贯8','工作经验8','upload/chushixinxi_touxiang8.jpg,upload/chushixinxi_touxiang9.jpg,upload/chushixinxi_touxiang10.jpg','初中','烹饪技能8','工作履历8','荣誉奖项8'),(1681888206040,'2023-04-19 07:10:05','某厨师','女',18,'13232232213','测试1','测试222','upload/1681888202213.jpg','大专','测试444','测试11','<p>测试11112</p><p><br></p>');
/*!40000 ALTER TABLE `chushixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1681888335538.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschushifuwu`
--

DROP TABLE IF EXISTS `discusschushifuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschushifuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='厨师服务评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschushifuwu`
--

LOCK TABLES `discusschushifuwu` WRITE;
/*!40000 ALTER TABLE `discusschushifuwu` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusschushifuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschushixinxi`
--

DROP TABLE IF EXISTS `discusschushixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschushixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888094107 DEFAULT CHARSET=utf8 COMMENT='厨师信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschushixinxi`
--

LOCK TABLES `discusschushixinxi` WRITE;
/*!40000 ALTER TABLE `discusschushixinxi` DISABLE KEYS */;
INSERT INTO `discusschushixinxi` VALUES (1681888094106,'2023-04-19 07:08:13',22,1681888052479,'upload/1681888051202.jpg','11','111',NULL);
/*!40000 ALTER TABLE `discusschushixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyuzhicai`
--

DROP TABLE IF EXISTS `discussyuzhicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyuzhicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888436429 DEFAULT CHARSET=utf8 COMMENT='预制菜评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyuzhicai`
--

LOCK TABLES `discussyuzhicai` WRITE;
/*!40000 ALTER TABLE `discussyuzhicai` DISABLE KEYS */;
INSERT INTO `discussyuzhicai` VALUES (1681888436428,'2023-04-19 07:13:55',66,1681888052479,'upload/1681888051202.jpg','11','1111',NULL);
/*!40000 ALTER TABLE `discussyuzhicai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwudingdan`
--

DROP TABLE IF EXISTS `fuwudingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwudingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fuwumingcheng` varchar(200) DEFAULT NULL COMMENT '服务名称',
  `shoufeibiaozhun` varchar(200) DEFAULT NULL COMMENT '收费标准',
  `chushixingming` varchar(200) DEFAULT NULL COMMENT '厨师姓名',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yuyueneirong` longtext COMMENT '预约内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888115468 DEFAULT CHARSET=utf8 COMMENT='服务订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwudingdan`
--

LOCK TABLES `fuwudingdan` WRITE;
/*!40000 ALTER TABLE `fuwudingdan` DISABLE KEYS */;
INSERT INTO `fuwudingdan` VALUES (41,'2023-04-19 06:58:19','1111111111','服务名称1','收费标准1','厨师姓名1','2023-04-19 14:58:19','预约内容1','账号1','姓名1','手机号码1','2023-04-19 14:58:19','是','','未支付'),(42,'2023-04-19 06:58:19','2222222222','服务名称2','收费标准2','厨师姓名2','2023-04-19 14:58:19','预约内容2','账号2','姓名2','手机号码2','2023-04-19 14:58:19','是','','未支付'),(43,'2023-04-19 06:58:19','3333333333','服务名称3','收费标准3','厨师姓名3','2023-04-19 14:58:19','预约内容3','账号3','姓名3','手机号码3','2023-04-19 14:58:19','是','','未支付'),(44,'2023-04-19 06:58:19','4444444444','服务名称4','收费标准4','厨师姓名4','2023-04-19 14:58:19','预约内容4','账号4','姓名4','手机号码4','2023-04-19 14:58:19','是','','未支付'),(45,'2023-04-19 06:58:19','5555555555','服务名称5','收费标准5','厨师姓名5','2023-04-19 14:58:19','预约内容5','账号5','姓名5','手机号码5','2023-04-19 14:58:19','是','','未支付'),(46,'2023-04-19 06:58:19','6666666666','服务名称6','收费标准6','厨师姓名6','2023-04-19 14:58:19','预约内容6','账号6','姓名6','手机号码6','2023-04-19 14:58:19','是','','未支付'),(47,'2023-04-19 06:58:19','7777777777','服务名称7','收费标准7','厨师姓名7','2023-04-19 14:58:19','预约内容7','账号7','姓名7','手机号码7','2023-04-19 14:58:19','是','','未支付'),(48,'2023-04-19 06:58:19','8888888888','服务名称8','收费标准8','厨师姓名8','2023-04-19 14:58:19','预约内容8','账号8','姓名8','手机号码8','2023-04-19 14:58:19','是','','未支付'),(1681888115467,'2023-04-19 07:08:34','1681888101285','服务名称2','收费标准2','厨师姓名2','2023-04-20 02:00:00','<p>这里是预约服务的地方1</p>','11','张三','13111111111','2023-04-19 15:08:21','是','审核服务预约订单的地方1','已支付');
/*!40000 ALTER TABLE `fuwudingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888358669 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-04-19 06:58:20','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(112,'2023-04-19 06:58:20','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(113,'2023-04-19 06:58:20','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2023-04-19 06:58:20','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2023-04-19 06:58:20','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2023-04-19 06:58:20','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1681888358668,'2023-04-19 07:12:38','某某公告','测试1','upload/1681888357022.jpg','<p>测试2</p><p><img src=\"http://localhost:8080/ssmgmpms/upload/1681888354440.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yuzhicai' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `logistics` longtext COMMENT '物流',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888140767 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1681888123858,'2023-04-19 07:08:43','202341915843680','yuzhicai',1681888052479,62,'菜品名称2','upload/yuzhicai_caipintupian2.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','某某地址1','13111111111','张三','测试1',NULL),(1681888140766,'2023-04-19 07:09:00','20234191590643','yuzhicai',1681888052479,66,'菜品名称6','upload/yuzhicai_caipintupian6.jpg',3,99.9,99.9,299.7,299.7,1,'已完成','某某地址1','13111111111','张三','测试44',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888091857 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-04-19 06:58:20','系统简介','SYSTEM INTRODUCTION','<p>测试333</p>','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1681888052479,'11','yonghu','用户','sorf9mk8uh4i8el7mc7wbggl3uarmms4','2023-04-19 07:07:35','2023-04-19 08:13:10'),(2,1,'admin','users','管理员','chj3t5r82bbfbx8x5ssw1byiv8028ppc','2023-04-19 07:09:29','2023-04-19 08:09:30');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-19 06:58:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `touxiang` longtext COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888052480 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2023-04-19 06:58:19','账号1','123456','姓名1','男',1,'13823888881','upload/yonghu_touxiang1.jpg',200),(12,'2023-04-19 06:58:19','账号2','123456','姓名2','男',2,'13823888882','upload/yonghu_touxiang2.jpg',200),(13,'2023-04-19 06:58:19','账号3','123456','姓名3','男',3,'13823888883','upload/yonghu_touxiang3.jpg',200),(14,'2023-04-19 06:58:19','账号4','123456','姓名4','男',4,'13823888884','upload/yonghu_touxiang4.jpg',200),(15,'2023-04-19 06:58:19','账号5','123456','姓名5','男',5,'13823888885','upload/yonghu_touxiang5.jpg',200),(16,'2023-04-19 06:58:19','账号6','123456','姓名6','男',6,'13823888886','upload/yonghu_touxiang6.jpg',200),(17,'2023-04-19 06:58:19','账号7','123456','姓名7','男',7,'13823888887','upload/yonghu_touxiang7.jpg',200),(18,'2023-04-19 06:58:19','账号8','123456','姓名8','男',8,'13823888888','upload/yonghu_touxiang8.jpg',200),(1681888052479,'2023-04-19 07:07:32','11','11','张三','男',22,'13111111111','upload/1681888051202.jpg',200.3);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuzhicai`
--

DROP TABLE IF EXISTS `yuzhicai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuzhicai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinmingcheng` varchar(200) NOT NULL COMMENT '菜品名称',
  `caipintupian` longtext COMMENT '菜品图片',
  `caipinfenlei` varchar(200) NOT NULL COMMENT '菜品分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `yuancailiao` varchar(200) NOT NULL COMMENT '原材料',
  `zhizuoshizhang` varchar(200) DEFAULT NULL COMMENT '制作时长',
  `caipinjianjie` longtext COMMENT '菜品简介',
  `caipinxiangqing` longtext COMMENT '菜品详情',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681888312721 DEFAULT CHARSET=utf8 COMMENT='预制菜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuzhicai`
--

LOCK TABLES `yuzhicai` WRITE;
/*!40000 ALTER TABLE `yuzhicai` DISABLE KEYS */;
INSERT INTO `yuzhicai` VALUES (61,'2023-04-19 06:58:19','菜品名称1','upload/yuzhicai_caipintupian1.jpg,upload/yuzhicai_caipintupian2.jpg,upload/yuzhicai_caipintupian3.jpg','菜品分类1','口味1','原材料1','制作时长1','菜品简介1','菜品详情1','2023-04-19',99.9),(62,'2023-04-19 06:58:19','菜品名称2','upload/yuzhicai_caipintupian2.jpg,upload/yuzhicai_caipintupian3.jpg,upload/yuzhicai_caipintupian4.jpg','菜品分类2','口味2','原材料2','制作时长2','菜品简介2','菜品详情2','2023-04-19',99.9),(63,'2023-04-19 06:58:19','菜品名称3','upload/yuzhicai_caipintupian3.jpg,upload/yuzhicai_caipintupian4.jpg,upload/yuzhicai_caipintupian5.jpg','菜品分类3','口味3','原材料3','制作时长3','菜品简介3','菜品详情3','2023-04-19',99.9),(64,'2023-04-19 06:58:19','菜品名称4','upload/yuzhicai_caipintupian4.jpg,upload/yuzhicai_caipintupian5.jpg,upload/yuzhicai_caipintupian6.jpg','菜品分类4','口味4','原材料4','制作时长4','菜品简介4','菜品详情4','2023-04-19',99.9),(65,'2023-04-19 06:58:19','菜品名称5','upload/yuzhicai_caipintupian5.jpg,upload/yuzhicai_caipintupian6.jpg,upload/yuzhicai_caipintupian7.jpg','菜品分类5','口味5','原材料5','制作时长5','菜品简介5','菜品详情5','2023-04-19',99.9),(66,'2023-04-19 06:58:19','菜品名称6','upload/yuzhicai_caipintupian6.jpg,upload/yuzhicai_caipintupian7.jpg,upload/yuzhicai_caipintupian8.jpg','菜品分类6','口味6','原材料6','制作时长6','菜品简介6','菜品详情6','2023-04-19',99.9),(67,'2023-04-19 06:58:19','菜品名称7','upload/yuzhicai_caipintupian7.jpg,upload/yuzhicai_caipintupian8.jpg,upload/yuzhicai_caipintupian9.jpg','菜品分类7','口味7','原材料7','制作时长7','菜品简介7','菜品详情7','2023-04-19',99.9),(68,'2023-04-19 06:58:19','菜品名称8','upload/yuzhicai_caipintupian8.jpg,upload/yuzhicai_caipintupian9.jpg,upload/yuzhicai_caipintupian10.jpg','菜品分类8','口味8','原材料8','制作时长8','菜品简介8','菜品详情8','2023-04-19',99.9),(1681888312720,'2023-04-19 07:11:51','某菜品','upload/1681888310133.jpg','油炸类','测试2','测试1','5分钟','测试11','<p>测试222</p><p><img src=\"http://localhost:8080/ssmgmpms/upload/1681888307407.jpg\"></p>','2023-04-19',68);
/*!40000 ALTER TABLE `yuzhicai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 20:19:14
