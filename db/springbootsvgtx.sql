-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootsvgtx
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springbootsvgtx/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootsvgtx/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootsvgtx/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgangweixinxi`
--

DROP TABLE IF EXISTS `discussgangweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgangweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='岗位信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgangweixinxi`
--

LOCK TABLES `discussgangweixinxi` WRITE;
/*!40000 ALTER TABLE `discussgangweixinxi` DISABLE KEYS */;
INSERT INTO `discussgangweixinxi` VALUES (101,'2021-03-18 14:51:05',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-18 14:51:05',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-18 14:51:05',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-18 14:51:05',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-18 14:51:05',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-18 14:51:05',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgangweixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangweileixing`
--

DROP TABLE IF EXISTS `gangweileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangweileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweileixing` varchar(200) NOT NULL COMMENT '岗位类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='岗位类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangweileixing`
--

LOCK TABLES `gangweileixing` WRITE;
/*!40000 ALTER TABLE `gangweileixing` DISABLE KEYS */;
INSERT INTO `gangweileixing` VALUES (41,'2021-03-18 14:51:05','岗位类型1'),(42,'2021-03-18 14:51:05','岗位类型2'),(43,'2021-03-18 14:51:05','岗位类型3'),(44,'2021-03-18 14:51:05','岗位类型4'),(45,'2021-03-18 14:51:05','岗位类型5'),(46,'2021-03-18 14:51:05','岗位类型6');
/*!40000 ALTER TABLE `gangweileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangweixinxi`
--

DROP TABLE IF EXISTS `gangweixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangweixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) NOT NULL COMMENT '职位名称',
  `gongzuohuanjing` varchar(200) DEFAULT NULL COMMENT '工作环境',
  `gangweileixing` varchar(200) DEFAULT NULL COMMENT '岗位类型',
  `jinengyaoqiu` varchar(200) NOT NULL COMMENT '技能要求',
  `xinzifanwei` varchar(200) NOT NULL COMMENT '薪资范围',
  `gongzuoxingzhi` varchar(200) NOT NULL COMMENT '工作性质',
  `gongzuodidian` varchar(200) NOT NULL COMMENT '工作地点',
  `jingyanyaoqiu` varchar(200) DEFAULT NULL COMMENT '经验要求',
  `zuidixueli` varchar(200) DEFAULT NULL COMMENT '最低学历',
  `qiyeyouxiang` varchar(200) NOT NULL COMMENT '企业邮箱',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhiweimiaoshu` longtext COMMENT '职位描述',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='岗位信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangweixinxi`
--

LOCK TABLES `gangweixinxi` WRITE;
/*!40000 ALTER TABLE `gangweixinxi` DISABLE KEYS */;
INSERT INTO `gangweixinxi` VALUES (31,'2021-03-18 14:51:05','职位名称1','http://localhost:8080/springbootsvgtx/upload/gangweixinxi_gongzuohuanjing1.jpg','岗位类型1','技能要求1','薪资范围1','全职','工作地点1','经验要求1','最低学历1','773890001@qq.com','企业账号1','企业名称1','负责人1','联系方式1','职位描述1','是','','2021-03-18 22:51:05',1),(32,'2021-03-18 14:51:05','职位名称2','http://localhost:8080/springbootsvgtx/upload/gangweixinxi_gongzuohuanjing2.jpg','岗位类型2','技能要求2','薪资范围2','全职','工作地点2','经验要求2','最低学历2','773890002@qq.com','企业账号2','企业名称2','负责人2','联系方式2','职位描述2','是','','2021-03-18 22:51:05',2),(33,'2021-03-18 14:51:05','职位名称3','http://localhost:8080/springbootsvgtx/upload/gangweixinxi_gongzuohuanjing3.jpg','岗位类型3','技能要求3','薪资范围3','全职','工作地点3','经验要求3','最低学历3','773890003@qq.com','企业账号3','企业名称3','负责人3','联系方式3','职位描述3','是','','2021-03-18 22:51:05',3),(34,'2021-03-18 14:51:05','职位名称4','http://localhost:8080/springbootsvgtx/upload/gangweixinxi_gongzuohuanjing4.jpg','岗位类型4','技能要求4','薪资范围4','全职','工作地点4','经验要求4','最低学历4','773890004@qq.com','企业账号4','企业名称4','负责人4','联系方式4','职位描述4','是','','2021-03-18 22:51:05',4),(35,'2021-03-18 14:51:05','职位名称5','http://localhost:8080/springbootsvgtx/upload/gangweixinxi_gongzuohuanjing5.jpg','岗位类型5','技能要求5','薪资范围5','全职','工作地点5','经验要求5','最低学历5','773890005@qq.com','企业账号5','企业名称5','负责人5','联系方式5','职位描述5','是','','2021-03-18 22:51:05',5),(36,'2021-03-18 14:51:05','职位名称6','http://localhost:8080/springbootsvgtx/upload/gangweixinxi_gongzuohuanjing6.jpg','岗位类型6','技能要求6','薪资范围6','全职','工作地点6','经验要求6','最低学历6','773890006@qq.com','企业账号6','企业名称6','负责人6','联系方式6','职位描述6','是','','2021-03-18 22:51:05',6);
/*!40000 ALTER TABLE `gangweixinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-03-18 14:51:05','标题1','简介1','http://localhost:8080/springbootsvgtx/upload/news_picture1.jpg','内容1'),(92,'2021-03-18 14:51:05','标题2','简介2','http://localhost:8080/springbootsvgtx/upload/news_picture2.jpg','内容2'),(93,'2021-03-18 14:51:05','标题3','简介3','http://localhost:8080/springbootsvgtx/upload/news_picture3.jpg','内容3'),(94,'2021-03-18 14:51:05','标题4','简介4','http://localhost:8080/springbootsvgtx/upload/news_picture4.jpg','内容4'),(95,'2021-03-18 14:51:05','标题5','简介5','http://localhost:8080/springbootsvgtx/upload/news_picture5.jpg','内容5'),(96,'2021-03-18 14:51:05','标题6','简介6','http://localhost:8080/springbootsvgtx/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingtaifeiyong`
--

DROP TABLE IF EXISTS `pingtaifeiyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingtaifeiyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiyongbianhao` varchar(200) DEFAULT NULL COMMENT '费用编号',
  `nianyue` varchar(200) DEFAULT NULL COMMENT '年月',
  `feiyongleixing` varchar(200) DEFAULT NULL COMMENT '费用类型',
  `feiyongjine` int(11) DEFAULT NULL COMMENT '费用金额',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `feiyongbianhao` (`feiyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='平台费用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingtaifeiyong`
--

LOCK TABLES `pingtaifeiyong` WRITE;
/*!40000 ALTER TABLE `pingtaifeiyong` DISABLE KEYS */;
INSERT INTO `pingtaifeiyong` VALUES (71,'2021-03-18 14:51:05','费用编号1','年月1','费用类型1',1,'企业账号1','企业名称1','负责人1','联系方式1','未支付'),(72,'2021-03-18 14:51:05','费用编号2','年月2','费用类型2',2,'企业账号2','企业名称2','负责人2','联系方式2','未支付'),(73,'2021-03-18 14:51:05','费用编号3','年月3','费用类型3',3,'企业账号3','企业名称3','负责人3','联系方式3','未支付'),(74,'2021-03-18 14:51:05','费用编号4','年月4','费用类型4',4,'企业账号4','企业名称4','负责人4','联系方式4','未支付'),(75,'2021-03-18 14:51:05','费用编号5','年月5','费用类型5',5,'企业账号5','企业名称5','负责人5','联系方式5','未支付'),(76,'2021-03-18 14:51:05','费用编号6','年月6','费用类型6',6,'企业账号6','企业名称6','负责人6','联系方式6','未支付');
/*!40000 ALTER TABLE `pingtaifeiyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `qiyetupian` varchar(200) DEFAULT NULL COMMENT '企业图片',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyejianjie` longtext COMMENT '企业简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2021-03-18 14:51:05','企业1','123456','企业名称1','企业地址1','企业规模1','负责人1','13823888881','http://localhost:8080/springbootsvgtx/upload/qiye_qiyetupian1.jpg','773890001@qq.com','企业简介1'),(22,'2021-03-18 14:51:05','企业2','123456','企业名称2','企业地址2','企业规模2','负责人2','13823888882','http://localhost:8080/springbootsvgtx/upload/qiye_qiyetupian2.jpg','773890002@qq.com','企业简介2'),(23,'2021-03-18 14:51:05','企业3','123456','企业名称3','企业地址3','企业规模3','负责人3','13823888883','http://localhost:8080/springbootsvgtx/upload/qiye_qiyetupian3.jpg','773890003@qq.com','企业简介3'),(24,'2021-03-18 14:51:05','企业4','123456','企业名称4','企业地址4','企业规模4','负责人4','13823888884','http://localhost:8080/springbootsvgtx/upload/qiye_qiyetupian4.jpg','773890004@qq.com','企业简介4'),(25,'2021-03-18 14:51:05','企业5','123456','企业名称5','企业地址5','企业规模5','负责人5','13823888885','http://localhost:8080/springbootsvgtx/upload/qiye_qiyetupian5.jpg','773890005@qq.com','企业简介5'),(26,'2021-03-18 14:51:05','企业6','123456','企业名称6','企业地址6','企业规模6','负责人6','13823888886','http://localhost:8080/springbootsvgtx/upload/qiye_qiyetupian6.jpg','773890006@qq.com','企业简介6');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-18 14:51:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpinxinxi`
--

DROP TABLE IF EXISTS `yingpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `gangweileixing` varchar(200) DEFAULT NULL COMMENT '岗位类型',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `biyeyuanxiao` varchar(200) DEFAULT NULL COMMENT '毕业院校',
  `zuigaoxueli` varchar(200) DEFAULT NULL COMMENT '最高学历',
  `gerenjianli` varchar(200) DEFAULT NULL COMMENT '个人简历',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='应聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpinxinxi`
--

LOCK TABLES `yingpinxinxi` WRITE;
/*!40000 ALTER TABLE `yingpinxinxi` DISABLE KEYS */;
INSERT INTO `yingpinxinxi` VALUES (51,'2021-03-18 14:51:05','职位名称1','岗位类型1','企业账号1','企业名称1','负责人1','联系方式1','用户账号1','姓名1','用户手机1','性别1','年龄1','毕业院校1','最高学历1',''),(52,'2021-03-18 14:51:05','职位名称2','岗位类型2','企业账号2','企业名称2','负责人2','联系方式2','用户账号2','姓名2','用户手机2','性别2','年龄2','毕业院校2','最高学历2',''),(53,'2021-03-18 14:51:05','职位名称3','岗位类型3','企业账号3','企业名称3','负责人3','联系方式3','用户账号3','姓名3','用户手机3','性别3','年龄3','毕业院校3','最高学历3',''),(54,'2021-03-18 14:51:05','职位名称4','岗位类型4','企业账号4','企业名称4','负责人4','联系方式4','用户账号4','姓名4','用户手机4','性别4','年龄4','毕业院校4','最高学历4',''),(55,'2021-03-18 14:51:05','职位名称5','岗位类型5','企业账号5','企业名称5','负责人5','联系方式5','用户账号5','姓名5','用户手机5','性别5','年龄5','毕业院校5','最高学历5',''),(56,'2021-03-18 14:51:05','职位名称6','岗位类型6','企业账号6','企业名称6','负责人6','联系方式6','用户账号6','姓名6','用户手机6','性别6','年龄6','毕业院校6','最高学历6','');
/*!40000 ALTER TABLE `yingpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingpinzhuangkuang`
--

DROP TABLE IF EXISTS `yingpinzhuangkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingpinzhuangkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `gangweileixing` varchar(200) DEFAULT NULL COMMENT '岗位类型',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `neirong` longtext COMMENT '内容',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='应聘状况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingpinzhuangkuang`
--

LOCK TABLES `yingpinzhuangkuang` WRITE;
/*!40000 ALTER TABLE `yingpinzhuangkuang` DISABLE KEYS */;
INSERT INTO `yingpinzhuangkuang` VALUES (61,'2021-03-18 14:51:05','职位名称1','岗位类型1','企业账号1','企业名称1','负责人1','联系方式1','用户账号1','姓名1','用户手机1','待处理','内容1','2021-03-18 22:51:05'),(62,'2021-03-18 14:51:05','职位名称2','岗位类型2','企业账号2','企业名称2','负责人2','联系方式2','用户账号2','姓名2','用户手机2','待处理','内容2','2021-03-18 22:51:05'),(63,'2021-03-18 14:51:05','职位名称3','岗位类型3','企业账号3','企业名称3','负责人3','联系方式3','用户账号3','姓名3','用户手机3','待处理','内容3','2021-03-18 22:51:05'),(64,'2021-03-18 14:51:05','职位名称4','岗位类型4','企业账号4','企业名称4','负责人4','联系方式4','用户账号4','姓名4','用户手机4','待处理','内容4','2021-03-18 22:51:05'),(65,'2021-03-18 14:51:05','职位名称5','岗位类型5','企业账号5','企业名称5','负责人5','联系方式5','用户账号5','姓名5','用户手机5','待处理','内容5','2021-03-18 22:51:05'),(66,'2021-03-18 14:51:05','职位名称6','岗位类型6','企业账号6','企业名称6','负责人6','联系方式6','用户账号6','姓名6','用户手机6','待处理','内容6','2021-03-18 22:51:05');
/*!40000 ALTER TABLE `yingpinzhuangkuang` ENABLE KEYS */;
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
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `biyeyuanxiao` varchar(200) DEFAULT NULL COMMENT '毕业院校',
  `zuigaoxueli` varchar(200) DEFAULT NULL COMMENT '最高学历',
  `qiwangzhiwei` varchar(200) DEFAULT NULL COMMENT '期望职位',
  `xinziyaoqiu` varchar(200) DEFAULT NULL COMMENT '薪资要求',
  `qiwangchengshi` varchar(200) DEFAULT NULL COMMENT '期望城市',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-18 14:51:05','用户1','123456','姓名1','男','年龄1','http://localhost:8080/springbootsvgtx/upload/yonghu_touxiang1.jpg','13823888881','毕业院校1','最高学历1','期望职位1','薪资要求1','期望城市1'),(12,'2021-03-18 14:51:05','用户2','123456','姓名2','男','年龄2','http://localhost:8080/springbootsvgtx/upload/yonghu_touxiang2.jpg','13823888882','毕业院校2','最高学历2','期望职位2','薪资要求2','期望城市2'),(13,'2021-03-18 14:51:05','用户3','123456','姓名3','男','年龄3','http://localhost:8080/springbootsvgtx/upload/yonghu_touxiang3.jpg','13823888883','毕业院校3','最高学历3','期望职位3','薪资要求3','期望城市3'),(14,'2021-03-18 14:51:05','用户4','123456','姓名4','男','年龄4','http://localhost:8080/springbootsvgtx/upload/yonghu_touxiang4.jpg','13823888884','毕业院校4','最高学历4','期望职位4','薪资要求4','期望城市4'),(15,'2021-03-18 14:51:05','用户5','123456','姓名5','男','年龄5','http://localhost:8080/springbootsvgtx/upload/yonghu_touxiang5.jpg','13823888885','毕业院校5','最高学历5','期望职位5','薪资要求5','期望城市5'),(16,'2021-03-18 14:51:05','用户6','123456','姓名6','男','年龄6','http://localhost:8080/springbootsvgtx/upload/yonghu_touxiang6.jpg','13823888886','毕业院校6','最高学历6','期望职位6','薪资要求6','期望城市6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19  9:43:51
