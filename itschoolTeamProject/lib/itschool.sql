-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: itschool
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Current Database: `itschool`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `itschool` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `itschool`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `code` int(11) NOT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `postno` varchar(7) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `isnewaddress` int(11) DEFAULT NULL,
  `isdefault` int(11) DEFAULT NULL,
  `receivername` varchar(45) DEFAULT NULL,
  `tell` varchar(11) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `code` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `discription` longtext,
  `birthyear` int(11) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'김승호','저자 김승호입니다.',19901012,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket` (
  `userid` varchar(100) DEFAULT NULL,
  `bookcode` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`bookcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `code` int(11) NOT NULL,
  `boardname` varchar(45) NOT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `content` longtext,
  `title` varchar(1000) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `attachfile` varchar(200) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(20) DEFAULT NULL,
  `ref` int(11) NOT NULL,
  `bookcode` int(11) DEFAULT NULL,
  `isreview` int(11) DEFAULT NULL,
  `ismanageronly` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `likecount` int(11) DEFAULT NULL,
  `dislikecount` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`,`boardname`,`ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardlike`
--

DROP TABLE IF EXISTS `boardlike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardlike` (
  `boardcode` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `eval` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardlike`
--

LOCK TABLES `boardlike` WRITE;
/*!40000 ALTER TABLE `boardlike` DISABLE KEYS */;
/*!40000 ALTER TABLE `boardlike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `code` int(11) NOT NULL,
  `authorcode` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `realprice` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `discription` longtext,
  `publisher` varchar(45) DEFAULT NULL,
  `contentlist` longtext,
  `sellerdiscription` longtext,
  `cat1` varchar(45) DEFAULT NULL,
  `cat2` varchar(45) DEFAULT NULL,
  `publishyear` int(11) DEFAULT NULL,
  `publishmonth` int(11) DEFAULT NULL,
  `publishday` int(11) NOT NULL,
  `splashtext` varchar(200) DEFAULT NULL,
  `booktype` varchar(45) DEFAULT NULL,
  `pagenumber` int(11) DEFAULT NULL,
  `scale` varchar(45) DEFAULT NULL,
  `isbn` varchar(45) DEFAULT NULL,
  `trailer` varchar(45) DEFAULT NULL,
  `averagescore` float DEFAULT NULL,
  `evaluaternum` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`,`publishday`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,'돈의 속성',10000,10000,8,'돈에 관한 책입니다.','창비','1. 돈이란','돈에 대해서 잘 썼습니다.','컴퓨터공학',NULL,2020,10,3,'돈이 최고다','1',290,'a4','1345za12','돈',4,10);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookevaluate`
--

DROP TABLE IF EXISTS `bookevaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookevaluate` (
  `code` int(11) NOT NULL,
  `bookcode` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `content` longtext,
  `score` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `likecount` int(11) DEFAULT NULL,
  `dislikecount` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookevaluate`
--

LOCK TABLES `bookevaluate` WRITE;
/*!40000 ALTER TABLE `bookevaluate` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookevaluate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyrequest`
--

DROP TABLE IF EXISTS `buyrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyrequest` (
  `code` int(11) NOT NULL,
  `buyerid` varchar(45) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `completeday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usedpoint` int(11) DEFAULT NULL,
  `couponcode` int(11) DEFAULT NULL,
  `finalprice` int(11) DEFAULT NULL,
  `returnfinance` varchar(100) DEFAULT NULL,
  `returnbank` varchar(45) DEFAULT NULL,
  `receivertell` varchar(11) DEFAULT NULL,
  `receiverphone` varchar(100) DEFAULT NULL,
  `postno` varchar(200) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `getpoint` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `shippingprice` int(11) DEFAULT NULL,
  `receivername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyrequest`
--

LOCK TABLES `buyrequest` WRITE;
/*!40000 ALTER TABLE `buyrequest` DISABLE KEYS */;
INSERT INTO `buyrequest` VALUES (1,'admin@nullpointers.com','입금대기','2020-09-21 20:23:20',0,NULL,9900,'55-55555555-55','국민은행','01011111111','01011111111','13494','경기 성남시 분당구 판교역로 235 (삼평동， 에이치스퀘어 엔동)','101호',198,'2020-09-20 05:23:19',2000,'김영호'),(2,'admin@nullpointers.com','입금대기','2020-09-21 20:26:32',0,NULL,10000,'55-55555555-55','국민은행','01012341234','01012341234','13494','경기 성남시 분당구 판교역로 235 (삼평동， 에이치스퀘어 엔동)','101호',200,'2020-09-20 05:26:32',2000,'김삿갓');
/*!40000 ALTER TABLE `buyrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyrequestproduct`
--

DROP TABLE IF EXISTS `buyrequestproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyrequestproduct` (
  `ordercode` int(11) DEFAULT NULL,
  `coupon` int(11) DEFAULT NULL,
  `bookcode` int(11) DEFAULT NULL,
  `usedpoint` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `finalprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyrequestproduct`
--

LOCK TABLES `buyrequestproduct` WRITE;
/*!40000 ALTER TABLE `buyrequestproduct` DISABLE KEYS */;
INSERT INTO `buyrequestproduct` VALUES (1,1,1,0,1,10000,9900),(2,NULL,1,0,1,10000,10000);
/*!40000 ALTER TABLE `buyrequestproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `name` varchar(45) NOT NULL,
  `discription` longtext,
  `upname` varchar(45) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('컴퓨터공학','컴퓨터에 관한 책',NULL,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `code` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `fixedsale` int(11) DEFAULT NULL,
  `percentsale` int(11) DEFAULT NULL,
  `percentmaxsale` int(11) DEFAULT NULL,
  `moneycondition` int(11) DEFAULT NULL,
  `catcondition` varchar(45) DEFAULT NULL,
  `imglink` varchar(45) DEFAULT NULL,
  `isfreeshiping` int(11) DEFAULT NULL,
  `exfireday` int(11) DEFAULT NULL,
  `acceptnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (1,'기본쿠폰',100,10,10,10000,NULL,'',0,20200910,1);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluatelike`
--

DROP TABLE IF EXISTS `evaluatelike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluatelike` (
  `evaluatecode` int(11) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `eval` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluatelike`
--

LOCK TABLES `evaluatelike` WRITE;
/*!40000 ALTER TABLE `evaluatelike` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluatelike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `code` int(11) NOT NULL,
  `picturelink` varchar(200) DEFAULT NULL,
  `pagelink` varchar(200) DEFAULT NULL,
  `startday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `endday` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `getcoupon`
--

DROP TABLE IF EXISTS `getcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `getcoupon` (
  `id` varchar(45) DEFAULT NULL,
  `couponcode` int(11) DEFAULT NULL,
  `exfireday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` int(11) NOT NULL,
  `isusing` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `getcoupon`
--

LOCK TABLES `getcoupon` WRITE;
/*!40000 ALTER TABLE `getcoupon` DISABLE KEYS */;
INSERT INTO `getcoupon` VALUES ('admin@nullpointers.com',1,'2020-09-19 20:23:19',1,1);
/*!40000 ALTER TABLE `getcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `getnewbook`
--

DROP TABLE IF EXISTS `getnewbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `getnewbook` (
  `code` int(11) NOT NULL,
  `bookcode` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `timeyear` int(11) DEFAULT NULL,
  `timemonth` int(11) DEFAULT NULL,
  `timeday` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `getnewbook`
--

LOCK TABLES `getnewbook` WRITE;
/*!40000 ALTER TABLE `getnewbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `getnewbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `code` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `monthcoupon` int(11) DEFAULT NULL,
  `monthcouponamount` int(11) DEFAULT NULL,
  `discription` varchar(45) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `paycondition` int(11) DEFAULT NULL,
  `levelupcoupon` int(11) DEFAULT NULL,
  `levelupcouponcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,'브론즈',1,1,'낮은 등급입니다',2,100000,1,2);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usedbasket`
--

DROP TABLE IF EXISTS `usedbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usedbasket` (
  `userid` varchar(45) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `usedsellcode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usedbasket`
--

LOCK TABLES `usedbasket` WRITE;
/*!40000 ALTER TABLE `usedbasket` DISABLE KEYS */;
/*!40000 ALTER TABLE `usedbasket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usedsell`
--

DROP TABLE IF EXISTS `usedsell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usedsell` (
  `code` int(11) NOT NULL,
  `sellerid` varchar(45) DEFAULT NULL,
  `bookcode` int(11) DEFAULT NULL,
  `bookname` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `discription` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usedsell`
--

LOCK TABLES `usedsell` WRITE;
/*!40000 ALTER TABLE `usedsell` DISABLE KEYS */;
/*!40000 ALTER TABLE `usedsell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usedtrade`
--

DROP TABLE IF EXISTS `usedtrade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usedtrade` (
  `code` int(11) NOT NULL,
  `buyerid` varchar(45) DEFAULT NULL,
  `sellerid` varchar(45) DEFAULT NULL,
  `shippingprice` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `evaltext` varchar(1000) DEFAULT NULL,
  `evaldate` datetime DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `receivertell` int(11) DEFAULT NULL,
  `receiverphone` int(11) DEFAULT NULL,
  `receivername` varchar(45) DEFAULT NULL,
  `postno` int(11) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `returnfinance` varchar(45) DEFAULT NULL,
  `returnbank` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `finalprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usedtrade`
--

LOCK TABLES `usedtrade` WRITE;
/*!40000 ALTER TABLE `usedtrade` DISABLE KEYS */;
/*!40000 ALTER TABLE `usedtrade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usedtradeproduct`
--

DROP TABLE IF EXISTS `usedtradeproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usedtradeproduct` (
  `usedtradecode` int(11) DEFAULT NULL,
  `usedsell` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `finalprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`usedsell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usedtradeproduct`
--

LOCK TABLES `usedtradeproduct` WRITE;
/*!40000 ALTER TABLE `usedtradeproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `usedtradeproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone1` varchar(3) DEFAULT NULL,
  `phone2` varchar(5) DEFAULT NULL,
  `phone3` varchar(4) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `jointime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `connecttime` datetime DEFAULT NULL,
  `returnfinance` varchar(100) DEFAULT NULL,
  `returnbank` varchar(45) DEFAULT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `averagescore` int(11) DEFAULT NULL,
  `buycount` int(11) DEFAULT NULL,
  `sellcount` int(11) DEFAULT NULL,
  `totalsum` int(11) DEFAULT NULL,
  `threemonthsum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin@nullpointers.com','1234','kimyungho','010','1234','5678',1,498,'2020-09-19 20:26:32','2020-09-20 05:25:33','55-55555555-55','국민은행','영호부동산',1000,0,0,0,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20  5:53:36
