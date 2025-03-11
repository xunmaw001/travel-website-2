-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm7vtqc
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm7vtqc/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm7vtqc/upload/1617350655749.jpg'),(3,'picture3','http://localhost:8080/jspm7vtqc/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyoujingdian`
--

DROP TABLE IF EXISTS `discusslvyoujingdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617350815904 DEFAULT CHARSET=utf8 COMMENT='旅游景点评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyoujingdian`
--

LOCK TABLES `discusslvyoujingdian` WRITE;
/*!40000 ALTER TABLE `discusslvyoujingdian` DISABLE KEYS */;
INSERT INTO `discusslvyoujingdian` VALUES (71,'2021-04-02 03:13:38',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-04-02 03:13:38',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-04-02 03:13:38',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-04-02 03:13:38',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-04-02 03:13:38',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-04-02 03:13:38',6,6,'用户名6','评论内容6','回复内容6'),(1617350815903,'2021-04-02 08:06:54',1617333733582,11,NULL,'54\n\n54',NULL);
/*!40000 ALTER TABLE `discusslvyoujingdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslvyouxianlu`
--

DROP TABLE IF EXISTS `discusslvyouxianlu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617350850876 DEFAULT CHARSET=utf8 COMMENT='旅游线路评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslvyouxianlu`
--

LOCK TABLES `discusslvyouxianlu` WRITE;
/*!40000 ALTER TABLE `discusslvyouxianlu` DISABLE KEYS */;
INSERT INTO `discusslvyouxianlu` VALUES (81,'2021-04-02 03:13:38',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-02 03:13:38',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-02 03:13:38',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-02 03:13:38',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-02 03:13:38',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-02 03:13:38',6,6,'用户名6','评论内容6','回复内容6'),(1617350850875,'2021-04-02 08:07:30',41,11,NULL,'nb',NULL);
/*!40000 ALTER TABLE `discusslvyouxianlu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanhao` varchar(200) NOT NULL COMMENT '会员号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) NOT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanhao` (`huiyuanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2021-04-02 03:13:38','会员1','654321','会员姓名1','女',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/jspm7vtqc/upload/1617350447763.jpg'),(12,'2021-04-02 03:13:38','会员2','123456','会员姓名2','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/jspm7vtqc/upload/huiyuan_touxiang2.jpg'),(13,'2021-04-02 03:13:38','会员3','123456','会员姓名3','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/jspm7vtqc/upload/huiyuan_touxiang3.jpg'),(15,'2021-04-02 03:13:38','会员5','123456','会员姓名5','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/jspm7vtqc/upload/huiyuan_touxiang5.jpg'),(16,'2021-04-02 03:13:38','会员6','123456','会员姓名6','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/jspm7vtqc/upload/huiyuan_touxiang6.jpg');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianfenlei`
--

DROP TABLE IF EXISTS `jingdianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='景点分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianfenlei`
--

LOCK TABLES `jingdianfenlei` WRITE;
/*!40000 ALTER TABLE `jingdianfenlei` DISABLE KEYS */;
INSERT INTO `jingdianfenlei` VALUES (21,'2021-04-02 03:13:38','12'),(22,'2021-04-02 03:13:38','分类2'),(23,'2021-04-02 03:13:38','分类3'),(24,'2021-04-02 03:13:38','分类4'),(25,'2021-04-02 03:13:38','分类5'),(26,'2021-04-02 03:13:38','分类6');
/*!40000 ALTER TABLE `jingdianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyoujingdian`
--

DROP TABLE IF EXISTS `lvyoujingdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyoujingdian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdianxingji` varchar(200) NOT NULL COMMENT '景点星级',
  `jingdiandizhi` varchar(200) NOT NULL COMMENT '景点地址',
  `yingyeshijian` datetime DEFAULT NULL COMMENT '营业时间',
  `jingdianmenpiao` int(11) NOT NULL COMMENT '景点门票',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `jingdianjieshao` varchar(200) DEFAULT NULL COMMENT '景点介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianmingcheng` (`jingdianmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=1617350507147 DEFAULT CHARSET=utf8 COMMENT='旅游景点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyoujingdian`
--

LOCK TABLES `lvyoujingdian` WRITE;
/*!40000 ALTER TABLE `lvyoujingdian` DISABLE KEYS */;
INSERT INTO `lvyoujingdian` VALUES (31,'2021-04-02 03:13:38','景点名称1','分类1','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian1.jpg','A','景点地址1','2021-04-02 11:13:38',1,'注意事项1','景点介绍1','2021-04-02 11:21:53',3),(32,'2021-04-02 03:13:38','景点名称2','分类2','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian2.jpg','A','景点地址2','2021-04-02 11:13:38',2,'注意事项2','景点介绍2','2021-04-02 11:13:38',2),(33,'2021-04-02 03:13:38','景点名称3','分类3','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian3.jpg','A','景点地址3','2021-04-02 11:13:38',3,'注意事项3','景点介绍3','2021-04-02 16:07:59',4),(34,'2021-04-02 03:13:38','景点名称4','分类4','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian4.jpg','A','景点地址4','2021-04-02 11:13:38',4,'注意事项4','景点介绍4','2021-04-02 11:13:38',4),(35,'2021-04-02 03:13:38','景点名称5','分类5','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian5.jpg','A','景点地址5','2021-04-02 11:13:38',5,'注意事项5','景点介绍5','2021-04-02 11:13:38',5),(36,'2021-04-02 03:13:38','景点名称6','分类6','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian6.jpg','A','景点地址6','2021-04-02 11:13:38',6,'注意事项6','景点介绍6','2021-04-02 11:13:38',6),(1617333733582,'2021-04-02 03:22:12','454','分类4','http://localhost:8080/jspm7vtqc/upload/1617333722063.jpg','AAAAA','5','2021-04-29 06:14:56',1,'1','1','2021-04-02 16:06:59',3),(1617350507146,'2021-04-02 08:01:46','123213123','12','http://localhost:8080/jspm7vtqc/upload/1617350494488.jpg','AAAA','11121312','2021-04-29 18:18:28',111,'11','1111','2021-04-02 16:01:58',4);
/*!40000 ALTER TABLE `lvyoujingdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvyouxianlu`
--

DROP TABLE IF EXISTS `lvyouxianlu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvyouxianlu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) NOT NULL COMMENT '线路名称',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `xianlutupian` varchar(200) DEFAULT NULL COMMENT '线路图片',
  `qidian` varchar(200) DEFAULT NULL COMMENT '起点',
  `tujingluduan` varchar(200) DEFAULT NULL COMMENT '途径路段',
  `zhongdian` varchar(200) DEFAULT NULL COMMENT '终点',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `xianluxiangqing` longtext COMMENT '线路详情',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617350626081 DEFAULT CHARSET=utf8 COMMENT='旅游线路';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvyouxianlu`
--

LOCK TABLES `lvyouxianlu` WRITE;
/*!40000 ALTER TABLE `lvyouxianlu` DISABLE KEYS */;
INSERT INTO `lvyouxianlu` VALUES (41,'2021-04-02 03:13:38','线路名称1','景点名称1','景点地址1','http://localhost:8080/jspm7vtqc/upload/lvyouxianlu_xianlutupian1.jpg','起点1','途径路段17','终点1','交通方式1','线路详情1、745245875<img src=\"http://localhost:8080/jspm7vtqc/upload/1617350586754.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm7vtqc/upload/1617350586754.jpg\">\r\n',8),(42,'2021-04-02 03:13:38','线路名称2','景点名称2','景点地址2','http://localhost:8080/jspm7vtqc/upload/lvyouxianlu_xianlutupian2.jpg','起点2','途径路段2','终点2','交通方式2','线路详情2',5),(43,'2021-04-02 03:13:38','线路名称3','景点名称3','景点地址3','http://localhost:8080/jspm7vtqc/upload/lvyouxianlu_xianlutupian3.jpg','起点3','途径路段3','终点3','交通方式3','线路详情3',3),(44,'2021-04-02 03:13:38','线路名称4','景点名称4','景点地址4','http://localhost:8080/jspm7vtqc/upload/lvyouxianlu_xianlutupian4.jpg','起点4','途径路段4','终点4','交通方式4','线路详情4',4),(45,'2021-04-02 03:13:38','线路名称5','景点名称5','景点地址5','http://localhost:8080/jspm7vtqc/upload/lvyouxianlu_xianlutupian5.jpg','起点5','途径路段5','终点5','交通方式5','线路详情5',5),(46,'2021-04-02 03:13:38','线路名称6','景点名称6','景点地址6','http://localhost:8080/jspm7vtqc/upload/lvyouxianlu_xianlutupian6.jpg','起点6','途径路段6','终点6','交通方式6','线路详情6',6),(1617350626080,'2021-04-02 08:03:45','8754','574','785','http://localhost:8080/jspm7vtqc/upload/1617350623050.jpg','54','1','1','1','21\r\n',1);
/*!40000 ALTER TABLE `lvyouxianlu` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2021-04-02 03:13:38','标题1','简介1','http://localhost:8080/jspm7vtqc/upload/news_picture1.jpg','内容1'),(62,'2021-04-02 03:13:38','标题2','简介2','http://localhost:8080/jspm7vtqc/upload/news_picture2.jpg','内容2'),(63,'2021-04-02 03:13:38','标题3','简介3','http://localhost:8080/jspm7vtqc/upload/news_picture3.jpg','内容3'),(64,'2021-04-02 03:13:38','标题4','简介4','http://localhost:8080/jspm7vtqc/upload/news_picture4.jpg','内容4'),(65,'2021-04-02 03:13:38','标题5','简介5','http://localhost:8080/jspm7vtqc/upload/news_picture5.jpg','内容5'),(66,'2021-04-02 03:13:38','标题6','简介6','http://localhost:8080/jspm7vtqc/upload/news_picture6.jpg','内容6');
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
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617350880017 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1617350880016,'2021-04-02 08:07:59',11,33,'lvyoujingdian','景点名称3','http://localhost:8080/jspm7vtqc/upload/lvyoujingdian_jingdiantupian3.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','yho7y7jtny0k01ib5vqpddargh44b641','2021-04-02 03:20:52','2021-04-02 08:59:57'),(2,11,'会员1','huiyuan','会员','z1t1wu5joy4wy78xcfeqr9u04gf6f5b2','2021-04-02 08:06:38','2021-04-02 09:08:27');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-02 03:13:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05 10:29:41
