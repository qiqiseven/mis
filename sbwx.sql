CREATE DATABASE  IF NOT EXISTS `shebeiweixiu` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shebeiweixiu`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: shebeiweixiu
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `byjl`
--

DROP TABLE IF EXISTS `byjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `byjl` (
  `byjlid` int(20) NOT NULL,
  `sbno` int(20) NOT NULL,
  `xm` varchar(45) NOT NULL,
  `woker` varchar(45) NOT NULL,
  `time` date NOT NULL,
  `wcqk` varchar(45) NOT NULL,
  PRIMARY KEY (`byjlid`),
  KEY `i_idx` (`sbno`),
  CONSTRAINT `i` FOREIGN KEY (`sbno`) REFERENCES `sbb` (`sbno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `byjl`
--

LOCK TABLES `byjl` WRITE;
/*!40000 ALTER TABLE `byjl` DISABLE KEYS */;
INSERT INTO `byjl` VALUES (1,1,'检查6000V接线盒内瓷瓶、端子','王明','2016-02-09','完成');
/*!40000 ALTER TABLE `byjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `byxh`
--

DROP TABLE IF EXISTS `byxh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `byxh` (
  `byxhid` int(11) NOT NULL,
  `xhnr` varchar(45) NOT NULL,
  `xhnumber` int(11) NOT NULL,
  PRIMARY KEY (`byxhid`),
  CONSTRAINT `a` FOREIGN KEY (`byxhid`) REFERENCES `byjl` (`byjlid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `byxh`
--

LOCK TABLES `byxh` WRITE;
/*!40000 ALTER TABLE `byxh` DISABLE KEYS */;
INSERT INTO `byxh` VALUES (1,'瓷瓶',1);
/*!40000 ALTER TABLE `byxh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `byxm`
--

DROP TABLE IF EXISTS `byxm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `byxm` (
  `sbid` int(20) NOT NULL,
  `xmname` varchar(45) NOT NULL,
  `xmid` int(11) NOT NULL,
  PRIMARY KEY (`xmid`),
  CONSTRAINT `q` FOREIGN KEY (`xmid`) REFERENCES `sblb` (`sbid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `byxm`
--

LOCK TABLES `byxm` WRITE;
/*!40000 ALTER TABLE `byxm` DISABLE KEYS */;
INSERT INTO `byxm` VALUES (1,'检查6000V接线盒内瓷瓶、端子',1);
/*!40000 ALTER TABLE `byxm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sbb`
--

DROP TABLE IF EXISTS `sbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sbb` (
  `sbno` int(20) NOT NULL,
  `sbid` int(20) NOT NULL,
  PRIMARY KEY (`sbno`),
  KEY `ed_idx` (`sbid`),
  CONSTRAINT `ed` FOREIGN KEY (`sbid`) REFERENCES `sblb` (`sbid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbb`
--

LOCK TABLES `sbb` WRITE;
/*!40000 ALTER TABLE `sbb` DISABLE KEYS */;
INSERT INTO `sbb` VALUES (1,1),(2,1),(3,2),(4,2);
/*!40000 ALTER TABLE `sbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sblb`
--

DROP TABLE IF EXISTS `sblb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sblb` (
  `sbid` int(20) NOT NULL,
  `sbname` varchar(45) NOT NULL,
  `byzq` varchar(45) NOT NULL,
  PRIMARY KEY (`sbid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sblb`
--

LOCK TABLES `sblb` WRITE;
/*!40000 ALTER TABLE `sblb` DISABLE KEYS */;
INSERT INTO `sblb` VALUES (1,'6000V电机','年  检'),(2,'6000V以下不带振动电机','年  检'),(3,'6000V以下带振动电机',' 半年检 '),(4,'CST','月  检'),(5,'PLC','月  检'),(6,'比重计、液位仪','月  检');
/*!40000 ALTER TABLE `sblb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-16 23:24:04
