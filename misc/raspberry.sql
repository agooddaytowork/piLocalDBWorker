-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: raspberry
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `a`
--

DROP TABLE IF EXISTS `a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a` (
  `Pressure` double NOT NULL,
  PRIMARY KEY (`Pressure`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a`
--

LOCK TABLES `a` WRITE;
/*!40000 ALTER TABLE `a` DISABLE KEYS */;
INSERT INTO `a` VALUES (100),(200);
/*!40000 ALTER TABLE `a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control`
--

DROP TABLE IF EXISTS `control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control` (
  `GlobalID` int(11) NOT NULL,
  `HV` tinyint(1) DEFAULT NULL,
  `Valve` tinyint(1) DEFAULT NULL,
  `Time` datetime DEFAULT NULL,
  PRIMARY KEY (`GlobalID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control`
--

LOCK TABLES `control` WRITE;
/*!40000 ALTER TABLE `control` DISABLE KEYS */;
/*!40000 ALTER TABLE `control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frus`
--

DROP TABLE IF EXISTS `frus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frus` (
  `LPN` varchar(60) NOT NULL,
  `PN` varchar(60) NOT NULL,
  `Serial` varchar(60) DEFAULT NULL,
  `TestDate` date DEFAULT NULL,
  `MFGPressure` varchar(45) DEFAULT NULL,
  `PO` varchar(45) DEFAULT NULL,
  `DateInStock` date NOT NULL,
  `DateShipped` date DEFAULT NULL,
  `RFID` varchar(8) NOT NULL DEFAULT '00000000',
  PRIMARY KEY (`LPN`),
  UNIQUE KEY `LPN_UNIQUE` (`LPN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frus`
--

LOCK TABLES `frus` WRITE;
/*!40000 ALTER TABLE `frus` DISABLE KEYS */;
/*!40000 ALTER TABLE `frus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r166c218e`
--

DROP TABLE IF EXISTS `r166c218e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r166c218e` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r166c218e`
--

LOCK TABLES `r166c218e` WRITE;
/*!40000 ALTER TABLE `r166c218e` DISABLE KEYS */;
INSERT INTO `r166c218e` VALUES ('2017-06-10 01:21:43',100,200,300,0),('2017-06-10 10:17:36',100,200,300,0),('2017-06-10 10:18:25',100,200,300,0),('2017-06-10 10:19:09',100,200,300,0),('2017-06-10 10:20:00',100,200,300,0),('2017-06-10 10:20:56',100,200,300,0);
/*!40000 ALTER TABLE `r166c218e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r166c219e`
--

DROP TABLE IF EXISTS `r166c219e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r166c219e` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r166c219e`
--

LOCK TABLES `r166c219e` WRITE;
/*!40000 ALTER TABLE `r166c219e` DISABLE KEYS */;
INSERT INTO `r166c219e` VALUES ('2017-05-07 01:45:33',8978,0,0,1),('2017-05-07 01:45:49',9,0,0,1),('2017-05-07 01:46:08',9,0,0,1),('2017-08-11 09:10:46',3.54,8000,0.025,1),('2017-08-11 09:24:35',3.54,5200,0.025,1),('2017-08-11 09:25:54',3.54,5200,0.025,1),('2017-08-11 09:27:20',3.54,5200,0.025,1);
/*!40000 ALTER TABLE `r166c219e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r2ae3f7e`
--

DROP TABLE IF EXISTS `r2ae3f7e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r2ae3f7e` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r2ae3f7e`
--

LOCK TABLES `r2ae3f7e` WRITE;
/*!40000 ALTER TABLE `r2ae3f7e` DISABLE KEYS */;
INSERT INTO `r2ae3f7e` VALUES ('2017-05-07 01:45:33',8978,0,0,1),('2017-05-07 01:45:49',80,0,0,1),('2017-05-07 01:46:08',0.0000000034,9,0,1);
/*!40000 ALTER TABLE `r2ae3f7e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r56a0119e`
--

DROP TABLE IF EXISTS `r56a0119e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r56a0119e` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r56a0119e`
--

LOCK TABLES `r56a0119e` WRITE;
/*!40000 ALTER TABLE `r56a0119e` DISABLE KEYS */;
INSERT INTO `r56a0119e` VALUES ('2017-05-07 01:45:33',8978,0,0,1),('2017-05-07 01:45:49',8678,0,0,1),('2017-05-07 01:46:08',86899,0,0,1);
/*!40000 ALTER TABLE `r56a0119e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r56a039e`
--

DROP TABLE IF EXISTS `r56a039e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r56a039e` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r56a039e`
--

LOCK TABLES `r56a039e` WRITE;
/*!40000 ALTER TABLE `r56a039e` DISABLE KEYS */;
INSERT INTO `r56a039e` VALUES ('2017-05-07 01:45:33',8978,0,0,1),('2017-05-07 01:45:49',788,0,0,1),('2017-05-07 01:46:08',890,0,0,1);
/*!40000 ALTER TABLE `r56a039e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r6698ff9d`
--

DROP TABLE IF EXISTS `r6698ff9d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r6698ff9d` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r6698ff9d`
--

LOCK TABLES `r6698ff9d` WRITE;
/*!40000 ALTER TABLE `r6698ff9d` DISABLE KEYS */;
INSERT INTO `r6698ff9d` VALUES ('2017-05-07 01:45:33',8978,0,0,1),('2017-05-07 01:45:49',4574,0,0,1),('2017-05-07 01:46:08',576765,0,0,1);
/*!40000 ALTER TABLE `r6698ff9d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ra1b1c1d1`
--

DROP TABLE IF EXISTS `ra1b1c1d1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ra1b1c1d1` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ra1b1c1d1`
--

LOCK TABLES `ra1b1c1d1` WRITE;
/*!40000 ALTER TABLE `ra1b1c1d1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ra1b1c1d1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ra1b2c3d4`
--

DROP TABLE IF EXISTS `ra1b2c3d4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ra1b2c3d4` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ra1b2c3d4`
--

LOCK TABLES `ra1b2c3d4` WRITE;
/*!40000 ALTER TABLE `ra1b2c3d4` DISABLE KEYS */;
INSERT INTO `ra1b2c3d4` VALUES ('2017-08-14 10:07:11',222,33,44.4,1);
/*!40000 ALTER TABLE `ra1b2c3d4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ra2b1c3d4`
--

DROP TABLE IF EXISTS `ra2b1c3d4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ra2b1c3d4` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ra2b1c3d4`
--

LOCK TABLES `ra2b1c3d4` WRITE;
/*!40000 ALTER TABLE `ra2b1c3d4` DISABLE KEYS */;
INSERT INTO `ra2b1c3d4` VALUES ('2017-08-14 11:23:35',125.5,23.1,14.2,1),('2017-08-14 11:28:55',125.5,23.1,14.2,1);
/*!40000 ALTER TABLE `ra2b1c3d4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ra4b3c2d1`
--

DROP TABLE IF EXISTS `ra4b3c2d1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ra4b3c2d1` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ra4b3c2d1`
--

LOCK TABLES `ra4b3c2d1` WRITE;
/*!40000 ALTER TABLE `ra4b3c2d1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ra4b3c2d1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ra63d359e`
--

DROP TABLE IF EXISTS `ra63d359e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ra63d359e` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  `isSent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ra63d359e`
--

LOCK TABLES `ra63d359e` WRITE;
/*!40000 ALTER TABLE `ra63d359e` DISABLE KEYS */;
INSERT INTO `ra63d359e` VALUES ('2017-05-07 01:45:33',8978,0,0,1),('2017-05-07 01:45:49',6786,0,0,1),('2017-05-07 01:46:08',2514,0,0,1);
/*!40000 ALTER TABLE `ra63d359e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rar`
--

DROP TABLE IF EXISTS `rar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rar` (
  `Time` datetime NOT NULL,
  `Pressure` double DEFAULT NULL,
  `Voltage` double DEFAULT NULL,
  `Current` double DEFAULT NULL,
  PRIMARY KEY (`Time`),
  UNIQUE KEY `Time_UNIQUE` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rar`
--

LOCK TABLES `rar` WRITE;
/*!40000 ALTER TABLE `rar` DISABLE KEYS */;
/*!40000 ALTER TABLE `rar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfids`
--

DROP TABLE IF EXISTS `rfids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfids` (
  `RFID` varchar(20) NOT NULL DEFAULT '00000000',
  `frus_LPN` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`RFID`),
  UNIQUE KEY `RFID_UNIQUE` (`RFID`),
  KEY `fk_rfids_frus_idx` (`frus_LPN`),
  CONSTRAINT `fk_rfids_frus` FOREIGN KEY (`frus_LPN`) REFERENCES `frus` (`LPN`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfids`
--

LOCK TABLES `rfids` WRITE;
/*!40000 ALTER TABLE `rfids` DISABLE KEYS */;
INSERT INTO `rfids` VALUES ('R166c218e',NULL),('R9938293',NULL),('Ra1b1c1d1',NULL),('Ra1b2c3d4',NULL),('Ra2b1c3d4',NULL),('Ra4b3c2d1',NULL);
/*!40000 ALTER TABLE `rfids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `LocalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `GlobalID` int(10) unsigned NOT NULL,
  `stationName` varchar(45) NOT NULL DEFAULT '0',
  `isEmpty` tinyint(1) DEFAULT '0',
  `setRoughValveOn` tinyint(1) DEFAULT '0',
  `setHVOn` tinyint(1) DEFAULT '0',
  `setStationON` tinyint(1) DEFAULT '0',
  `pumpType` int(8) DEFAULT '0',
  `pumpAddr` int(8) DEFAULT NULL,
  `pumpCH` int(8) DEFAULT NULL,
  `sdcsAddr` int(8) DEFAULT NULL,
  `sdcsCH` int(8) DEFAULT NULL,
  `thresholdDownP` double DEFAULT '0.000000001',
  `thresholdUpP` double DEFAULT '0.000000002',
  `thresholdUpI` double DEFAULT NULL,
  `thresholdDownI` double DEFAULT NULL,
  `RFID` varchar(12) DEFAULT NULL,
  `warehouseName` varchar(45) NOT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`LocalID`),
  UNIQUE KEY `id_UNIQUE` (`GlobalID`),
  UNIQUE KEY `Local ID_UNIQUE` (`LocalID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,4,'0',0,0,0,0,1,3,4,3,4,0.000000001,0.000000002,NULL,NULL,'Ra2b1c3d4','USA','2017-08-14 10:49:11'),(2,2,'0',0,0,0,0,1,4,3,5,6,0.000000001,0.000000002,NULL,NULL,'R2ae3f7e','USA',NULL),(3,9,'0',0,0,0,0,0,NULL,NULL,7,6,0.000000001,0.000000002,NULL,NULL,'R56a0119e','USA',NULL),(4,8,'0',0,0,0,0,0,NULL,NULL,1,1,0.000000001,0.000000002,NULL,NULL,'R56a039e','USA',NULL),(5,3,'0',0,7,4,0,0,1,2,1,2,0.000000001,0.000000002,NULL,NULL,'R6698ff9d','USA','2017-08-14 09:46:02'),(6,6,'0',0,0,0,0,0,6,7,3,5,0.000000001,0.000000002,NULL,NULL,'Ra63d359e','USA',NULL);
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-07 11:52:46
