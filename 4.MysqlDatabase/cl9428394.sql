-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl9428394
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
-- Current Database: `cl9428394`
--

/*!40000 DROP DATABASE IF EXISTS `cl9428394`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl9428394` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl9428394`;

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
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/1704594798094.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diqu`
--

DROP TABLE IF EXISTS `diqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diqu` (`diqu`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594729629 DEFAULT CHARSET=utf8 COMMENT='地区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diqu`
--

LOCK TABLES `diqu` WRITE;
/*!40000 ALTER TABLE `diqu` DISABLE KEYS */;
INSERT INTO `diqu` VALUES (71,'2024-01-07 02:16:49','地区1'),(72,'2024-01-07 02:16:49','地区2'),(73,'2024-01-07 02:16:49','地区3'),(74,'2024-01-07 02:16:49','地区4'),(75,'2024-01-07 02:16:49','地区5'),(76,'2024-01-07 02:16:49','地区6'),(1704594729628,'2024-01-07 02:32:08','重庆区');
/*!40000 ALTER TABLE `diqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangdong`
--

DROP TABLE IF EXISTS `fangdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) NOT NULL COMMENT '房东账号',
  `fangdongmima` varchar(200) NOT NULL COMMENT '房东密码',
  `fangdongxingming` varchar(200) NOT NULL COMMENT '房东姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdongzhanghao` (`fangdongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594695807 DEFAULT CHARSET=utf8 COMMENT='房东';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangdong`
--

LOCK TABLES `fangdong` WRITE;
/*!40000 ALTER TABLE `fangdong` DISABLE KEYS */;
INSERT INTO `fangdong` VALUES (51,'2024-01-07 02:16:49','房东账号1','123456','房东姓名1','file/fangdongTouxiang1.jpg','男','19819881111','441622200101010001'),(52,'2024-01-07 02:16:49','房东账号2','123456','房东姓名2','file/fangdongTouxiang2.jpg','男','19819881112','441622200202020002'),(53,'2024-01-07 02:16:49','房东账号3','123456','房东姓名3','file/fangdongTouxiang3.jpg','男','19819881113','441622200303030003'),(54,'2024-01-07 02:16:49','房东账号4','123456','房东姓名4','file/fangdongTouxiang4.jpg','男','19819881114','441622200404040004'),(55,'2024-01-07 02:16:49','房东账号5','123456','房东姓名5','file/fangdongTouxiang5.jpg','男','19819881115','441622200505050005'),(56,'2024-01-07 02:16:49','房东账号6','123456','房东姓名6','file/fangdongTouxiang6.jpg','男','19819881116','441622200606060006'),(1704594695806,'2024-01-07 02:31:35','2','2','2','file/1704594680620.jpg','男','13512312312','123123123123123123');
/*!40000 ALTER TABLE `fangdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuleixing`
--

DROP TABLE IF EXISTS `fangwuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwuleixing` varchar(200) DEFAULT NULL COMMENT '房屋类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwuleixing` (`fangwuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594751473 DEFAULT CHARSET=utf8 COMMENT='房屋类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuleixing`
--

LOCK TABLES `fangwuleixing` WRITE;
/*!40000 ALTER TABLE `fangwuleixing` DISABLE KEYS */;
INSERT INTO `fangwuleixing` VALUES (61,'2024-01-07 02:16:49','房屋类型1'),(62,'2024-01-07 02:16:49','房屋类型2'),(63,'2024-01-07 02:16:49','房屋类型3'),(64,'2024-01-07 02:16:49','房屋类型4'),(65,'2024-01-07 02:16:49','房屋类型5'),(66,'2024-01-07 02:16:49','房屋类型6'),(1704594751472,'2024-01-07 02:32:30','2室一厅');
/*!40000 ALTER TABLE `fangwuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangwuzulin`
--

DROP TABLE IF EXISTS `fangwuzulin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangwuzulin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zulinjiage` double DEFAULT NULL COMMENT '租赁价格',
  `yueshu` int(11) DEFAULT NULL COMMENT '月数',
  `zongjia` double DEFAULT NULL COMMENT '总价',
  `zulinshijian` datetime DEFAULT NULL COMMENT '租赁时间',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `zufanghetong` longtext COMMENT '租房合同',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594943687 DEFAULT CHARSET=utf8 COMMENT='房屋租赁';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangwuzulin`
--

LOCK TABLES `fangwuzulin` WRITE;
/*!40000 ALTER TABLE `fangwuzulin` DISABLE KEYS */;
INSERT INTO `fangwuzulin` VALUES (111,'2024-01-07 02:16:50','房屋名称1','房屋地址1','房东账号1','房东姓名1','备注1','用户账号1','用户姓名1','手机号码1',1,1,1,'2024-01-07 10:16:50','未支付','是','',''),(112,'2024-01-07 02:16:50','房屋名称2','房屋地址2','房东账号2','房东姓名2','备注2','用户账号2','用户姓名2','手机号码2',2,2,2,'2024-01-07 10:16:50','未支付','是','',''),(113,'2024-01-07 02:16:50','房屋名称3','房屋地址3','房东账号3','房东姓名3','备注3','用户账号3','用户姓名3','手机号码3',3,3,3,'2024-01-07 10:16:50','未支付','是','',''),(114,'2024-01-07 02:16:50','房屋名称4','房屋地址4','房东账号4','房东姓名4','备注4','用户账号4','用户姓名4','手机号码4',4,4,4,'2024-01-07 10:16:50','未支付','是','',''),(115,'2024-01-07 02:16:50','房屋名称5','房屋地址5','房东账号5','房东姓名5','备注5','用户账号5','用户姓名5','手机号码5',5,5,5,'2024-01-07 10:16:50','未支付','是','',''),(116,'2024-01-07 02:16:50','房屋名称6','房屋地址6','房东账号6','房东姓名6','备注6','用户账号6','用户姓名6','手机号码6',6,6,6,'2024-01-07 10:16:50','未支付','是','',''),(1704594943686,'2024-01-07 02:35:42','和谐小屋','重庆大道2号','2','2','','1','1','13512312312',999,2,1998,'2024-01-07 10:35:28','已支付','是','通过','file/1704594941400.doc');
/*!40000 ALTER TABLE `fangwuzulin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanxinxi`
--

DROP TABLE IF EXISTS `fangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) NOT NULL COMMENT '房屋名称',
  `fangwutupian` longtext COMMENT '房屋图片',
  `fangwuleixing` varchar(200) NOT NULL COMMENT '房屋类型',
  `fangwumianji` double DEFAULT NULL COMMENT '房屋面积',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `zulinjiage` double NOT NULL COMMENT '月/元',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704595288665 DEFAULT CHARSET=utf8 COMMENT='房源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanxinxi`
--

LOCK TABLES `fangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `fangyuanxinxi` DISABLE KEYS */;
INSERT INTO `fangyuanxinxi` VALUES (81,'2024-01-07 02:16:49','房屋名称1','file/fangyuanxinxiFangwutupian1.jpg,file/fangyuanxinxiFangwutupian2.jpg,file/fangyuanxinxiFangwutupian3.jpg','房屋类型1',1,'房屋地址1',1,'房屋介绍1','房东账号1','房东姓名1','已租赁','地区1',1),(82,'2024-01-07 02:16:49','房屋名称2','file/fangyuanxinxiFangwutupian2.jpg,file/fangyuanxinxiFangwutupian3.jpg,file/fangyuanxinxiFangwutupian4.jpg','房屋类型2',2,'房屋地址2',2,'房屋介绍2','房东账号2','房东姓名2','已租赁','地区2',2),(83,'2024-01-07 02:16:49','房屋名称3','file/fangyuanxinxiFangwutupian3.jpg,file/fangyuanxinxiFangwutupian4.jpg,file/fangyuanxinxiFangwutupian5.jpg','房屋类型3',3,'房屋地址3',3,'房屋介绍3','房东账号3','房东姓名3','已租赁','地区3',4),(84,'2024-01-07 02:16:49','房屋名称4','file/fangyuanxinxiFangwutupian4.jpg,file/fangyuanxinxiFangwutupian5.jpg,file/fangyuanxinxiFangwutupian6.jpg','房屋类型4',4,'房屋地址4',4,'房屋介绍4','房东账号4','房东姓名4','已租赁','地区4',4),(85,'2024-01-07 02:16:49','房屋名称5','file/fangyuanxinxiFangwutupian5.jpg,file/fangyuanxinxiFangwutupian6.jpg,file/fangyuanxinxiFangwutupian7.jpg','房屋类型5',5,'房屋地址5',5,'房屋介绍5','房东账号5','房东姓名5','已租赁','地区5',5),(86,'2024-01-07 02:16:49','房屋名称6','file/fangyuanxinxiFangwutupian6.jpg,file/fangyuanxinxiFangwutupian7.jpg,file/fangyuanxinxiFangwutupian8.jpg','房屋类型6',6,'房屋地址6',6,'房屋介绍6','房东账号6','房东姓名6','已租赁','地区6',6),(1704594886715,'2024-01-07 02:34:46','和谐小屋','file/1704594866071.webp','2室一厅',80,'重庆大道2号',999,'<p>详情</p>','2','2','已租赁','重庆区',1),(1704595229992,'2024-01-07 02:40:29','浪漫小屋','file/1704595214072.webp','2室一厅',80,'',1000,'','房东账号1','房东姓名1','未租赁','重庆区',0),(1704595288664,'2024-01-07 02:41:27','4444','','2室一厅',80,'',1000,'','2','2','未租赁','地区2',0);
/*!40000 ALTER TABLE `fangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594640072 DEFAULT CHARSET=utf8 COMMENT='攻略信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (121,'2024-01-07 02:16:50','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(122,'2024-01-07 02:16:50','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(123,'2024-01-07 02:16:50','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(124,'2024-01-07 02:16:50','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(125,'2024-01-07 02:16:50','帖子标题5','帖子内容5',0,'用户名5','file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg','开放',5),(126,'2024-01-07 02:16:50','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6),(1704594600703,'2024-01-07 02:30:00','可以发布','<p>这里可以写内容交流</p>',0,'1',NULL,'开放',1704594568272),(1704594640071,'2024-01-07 02:30:39',NULL,'<p>可以发表评论</p>',121,'1','file/1704594562601.jpg',NULL,1704594568272);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-01-07 02:16:50','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"房屋租赁\",\"menuJump\":\"列表\",\"tableName\":\"fangwuzulin\"}],\"fontClass\":\"icon-common48\",\"menu\":\"房屋租赁管理\",\"unicode\":\"&#xef65;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地区\",\"menuJump\":\"列表\",\"tableName\":\"diqu\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\",\"类型统计\",\"面积统计\",\"价格统计\",\"首页总数\",\"首页统计\",\"面积类型\",\"价格类型\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房屋类型\",\"menuJump\":\"列表\",\"tableName\":\"fangwuleixing\"}],\"fontClass\":\"icon-common22\",\"menu\":\"房源信息管理\",\"unicode\":\"&#xee04;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房东\",\"menuJump\":\"列表\",\"tableName\":\"fangdong\"}],\"fontClass\":\"icon-user1\",\"menu\":\"用户管理\",\"unicode\":\"&#xef97;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房屋资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common15\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"预约看房\",\"menuJump\":\"列表\",\"tableName\":\"yuyuekanfang\"}],\"fontClass\":\"icon-common1\",\"menu\":\"预约看房管理\",\"unicode\":\"&#xeda3;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\"],\"menu\":\"房屋资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"预约\",\"租赁\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"攻略信息\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"menu\":\"论坛管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common15\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedfc;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\",\"租赁\"],\"menu\":\"预约看房\",\"menuJump\":\"列表\",\"tableName\":\"yuyuekanfang\"}],\"fontClass\":\"icon-common1\",\"menu\":\"预约看房管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"支付\"],\"menu\":\"房屋租赁\",\"menuJump\":\"列表\",\"tableName\":\"fangwuzulin\"}],\"fontClass\":\"icon-common48\",\"menu\":\"房屋租赁管理\",\"unicode\":\"&#xef65;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\"],\"menu\":\"房屋资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"预约\",\"租赁\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"攻略信息\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"fontClass\":\"icon-common22\",\"menu\":\"房源信息管理\",\"unicode\":\"&#xee04;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"查看\",\"修改\",\"审核\"],\"menu\":\"预约看房\",\"menuJump\":\"列表\",\"tableName\":\"yuyuekanfang\"}],\"fontClass\":\"icon-common1\",\"menu\":\"预约看房管理\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"删除\",\"修改\",\"审核\"],\"menu\":\"房屋租赁\",\"menuJump\":\"列表\",\"tableName\":\"fangwuzulin\"}],\"fontClass\":\"icon-common48\",\"menu\":\"房屋租赁管理\",\"unicode\":\"&#xef65;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\"],\"menu\":\"房屋资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"新闻资讯管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-rank\",\"buttons\":[\"查看\",\"预约\",\"租赁\"],\"menu\":\"房源信息\",\"menuJump\":\"列表\",\"tableName\":\"fangyuanxinxi\"}],\"menu\":\"房源信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"攻略信息\",\"menuJump\":\"列表\",\"tableName\":\"forum\"}],\"menu\":\"论坛交流\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"房东\",\"tableName\":\"fangdong\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1704594831780 DEFAULT CHARSET=utf8 COMMENT='房屋资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-01-07 02:16:49','这是标题1','这是简介1','file/newsPicture1.jpg','这是内容1'),(32,'2024-01-07 02:16:49','这是标题2','这是简介2','file/newsPicture2.jpg','这是内容2'),(33,'2024-01-07 02:16:49','这是标题3','这是简介3','file/newsPicture3.jpg','这是内容3'),(34,'2024-01-07 02:16:49','这是标题4','这是简介4','file/newsPicture4.jpg','这是内容4'),(35,'2024-01-07 02:16:49','这是标题5','这是简介5','file/newsPicture5.jpg','这是内容5'),(36,'2024-01-07 02:16:49','这是标题6','这是简介6','file/newsPicture6.jpg','这是内容6'),(1704594831779,'2024-01-07 02:33:51','公告信息','简述','file/1704594821845.jpg','<p>详情</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594916433 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1704594655424,'2024-01-07 02:30:55',83,'fangyuanxinxi','房屋名称3','file/fangyuanxinxiFangwutupian3.jpg','1',NULL,NULL,1704594568272),(1704594916432,'2024-01-07 02:35:15',1704594886715,'fangyuanxinxi','和谐小屋','file/1704594866071.webp','1',NULL,NULL,1704594568272);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,41,'用户账号1','yonghu','用户','ccf01puwj3wyq2apzkgtt3zhqjkpdzb3','2024-01-07 02:28:05','2024-01-07 03:28:05'),(2,1704594568272,'1','yonghu','用户','bfu5dfpwpfm89v4eqvfct8gosbtj0gwt','2024-01-07 02:29:33','2024-01-07 03:37:04'),(3,1704594695806,'2','fangdong','房东','3ch3s2k9vp1b8x1w2yx7d15j39rowqvx','2024-01-07 02:31:41','2024-01-07 03:40:55'),(4,1,'admin','users','管理员','g8mbgze7tvgvicr9zm6qfq6r539hpfgl','2024-01-07 02:31:54','2024-01-07 03:41:40'),(5,51,'房东账号1','fangdong','房东','vu0536dvhyejq5yhl48bexm4avz2x1y1','2024-01-07 02:38:58','2024-01-07 03:38:58');
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-01-07 02:16:50','admin','admin','管理员');
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
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594568273 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-01-07 02:16:49','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(42,'2024-01-07 02:16:49','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(43,'2024-01-07 02:16:49','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(44,'2024-01-07 02:16:49','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(45,'2024-01-07 02:16:49','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(46,'2024-01-07 02:16:49','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116'),(1704594568272,'2024-01-07 02:29:28','1','1','1','file/1704594562601.jpg','女','13512312312');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuekanfang`
--

DROP TABLE IF EXISTS `yuyuekanfang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuekanfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `yuyueshijian` datetime NOT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `zulinjiage` double DEFAULT NULL COMMENT '租赁价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704594922523 DEFAULT CHARSET=utf8 COMMENT='预约看房';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuekanfang`
--

LOCK TABLES `yuyuekanfang` WRITE;
/*!40000 ALTER TABLE `yuyuekanfang` DISABLE KEYS */;
INSERT INTO `yuyuekanfang` VALUES (101,'2024-01-07 02:16:49','房屋名称1','房屋地址1','房东账号1','房东姓名1','2024-01-07 10:16:49','备注1','用户账号1','用户姓名1','手机号码1','是','',1),(102,'2024-01-07 02:16:49','房屋名称2','房屋地址2','房东账号2','房东姓名2','2024-01-07 10:16:49','备注2','用户账号2','用户姓名2','手机号码2','是','',2),(103,'2024-01-07 02:16:49','房屋名称3','房屋地址3','房东账号3','房东姓名3','2024-01-07 10:16:49','备注3','用户账号3','用户姓名3','手机号码3','是','',3),(104,'2024-01-07 02:16:49','房屋名称4','房屋地址4','房东账号4','房东姓名4','2024-01-07 10:16:49','备注4','用户账号4','用户姓名4','手机号码4','是','',4),(105,'2024-01-07 02:16:49','房屋名称5','房屋地址5','房东账号5','房东姓名5','2024-01-07 10:16:49','备注5','用户账号5','用户姓名5','手机号码5','是','',5),(106,'2024-01-07 02:16:49','房屋名称6','房屋地址6','房东账号6','房东姓名6','2024-01-07 10:16:49','备注6','用户账号6','用户姓名6','手机号码6','是','',6),(1704594922522,'2024-01-07 02:35:22','和谐小屋','重庆大道2号','2','2','2024-01-26 00:00:00','','1','1','13512312312','是','房东要在后台才能审核  在前台无法审核',999);
/*!40000 ALTER TABLE `yuyuekanfang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 10:28:51
