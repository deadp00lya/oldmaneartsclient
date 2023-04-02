CREATE DATABASE  IF NOT EXISTS `newmanearts` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `newmanearts`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: newmanearts
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_mas_customer`
--

DROP TABLE IF EXISTS `tb_mas_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mas_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customerName` varchar(200) NOT NULL,
  `mailId` varchar(50) DEFAULT NULL,
  `mobileNumber` varchar(15) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `profession` varchar(200) DEFAULT NULL,
  `professionCode` varchar(100) DEFAULT NULL,
  `isVendor` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mas_customer`
--

LOCK TABLES `tb_mas_customer` WRITE;
/*!40000 ALTER TABLE `tb_mas_customer` DISABLE KEYS */;
INSERT INTO `tb_mas_customer` VALUES (12,'Ganesh Mane','ganrajmane143@gmail.com','8459467267','Flat No. 201, Vinay Heights, Bhosari, Pune - 411039','2021-04-03 19:01:35','Admin',NULL,NULL,_binary '','Software Engineer','job',_binary ''),(13,'Shree Mane','shreeyash@gmail.com','8767311313','Pandurang niwas, sarve no.218/1  bhosari alandi road gavhane petrol pampa mage shree krushna mandirasamor mathoshree park bhosarigav pune pune city bhosarigoaon pune city pune maharastra 411039','2021-04-03 23:00:44','Admin',NULL,NULL,_binary '','Printing Press','business',_binary ''),(16,'Kuldeep','tft','8459467267','bh','2021-09-26 14:36:03','Admin',NULL,NULL,_binary '','it',NULL,_binary '');
/*!40000 ALTER TABLE `tb_mas_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mas_professions`
--

DROP TABLE IF EXISTS `tb_mas_professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mas_professions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `professionCode` varchar(100) DEFAULT NULL,
  `professionName` varchar(200) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mas_professions`
--

LOCK TABLES `tb_mas_professions` WRITE;
/*!40000 ALTER TABLE `tb_mas_professions` DISABLE KEYS */;
INSERT INTO `tb_mas_professions` VALUES (1,'business','Business',_binary ''),(2,'teacher','Teacher',_binary ''),(3,'job','Job',_binary ''),(4,'student','Student',_binary '');
/*!40000 ALTER TABLE `tb_mas_professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mas_servicetype`
--

DROP TABLE IF EXISTS `tb_mas_servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mas_servicetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  `serviceCode` varchar(100) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `hasQuantity` bit(1) DEFAULT NULL,
  `hasSize` bit(1) DEFAULT NULL,
  `sizeIn` varchar(45) DEFAULT NULL,
  `totalWastageSquareFoot` double DEFAULT NULL,
  `totalSquareFoot` double DEFAULT NULL,
  `totalUsedSquareFoot` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `servicekey` (`serviceCode`,`size`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mas_servicetype`
--

LOCK TABLES `tb_mas_servicetype` WRITE;
/*!40000 ALTER TABLE `tb_mas_servicetype` DISABLE KEYS */;
INSERT INTO `tb_mas_servicetype` VALUES (6,'Regular Flex','R-Flex',_binary '',_binary '',_binary '','feet',0,47740,52260,10,10),(7,'Regular Flex','R-Flex',_binary '',_binary '',_binary '','feet',0,10000,0,5,4);
/*!40000 ALTER TABLE `tb_mas_servicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mas_user`
--

DROP TABLE IF EXISTS `tb_mas_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mas_user` (
  `id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `userAcess` varchar(50) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mas_user`
--

LOCK TABLES `tb_mas_user` WRITE;
/*!40000 ALTER TABLE `tb_mas_user` DISABLE KEYS */;
INSERT INTO `tb_mas_user` VALUES (1,'Admin','$2a$10$zqqOOkzJ3iUAzb/MdFXp6ezkxgR51qwbqVRrckAiONLkdmIv2VM0W','ADMIN',_binary '');
/*!40000 ALTER TABLE `tb_mas_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mas_vendor`
--

DROP TABLE IF EXISTS `tb_mas_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_mas_vendor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(200) DEFAULT NULL,
  `vendorCode` varchar(50) DEFAULT NULL,
  `vendorId` bigint DEFAULT NULL,
  `serviceTypeCode` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `actualSize` varchar(50) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `advance` double DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `updatedBy` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mas_vendor`
--

LOCK TABLES `tb_mas_vendor` WRITE;
/*!40000 ALTER TABLE `tb_mas_vendor` DISABLE KEYS */;
INSERT INTO `tb_mas_vendor` VALUES (12,NULL,NULL,12,'R-Flex',10,'10 x 1000',10000,100000,100000,'2021-04-10 18:53:28','Admin',NULL,NULL),(15,NULL,NULL,13,'R-Flex',5,'4 x 500',500,2500,2500,'2021-04-29 21:02:39','Admin',NULL,NULL);
/*!40000 ALTER TABLE `tb_mas_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_trns_invoice`
--

DROP TABLE IF EXISTS `tb_trns_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_trns_invoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `enabled` bit(11) DEFAULT NULL,
  `invoiceNumber` varchar(100) DEFAULT NULL,
  `gstNumber` varchar(50) DEFAULT NULL,
  `deliveryDate` datetime DEFAULT NULL,
  `invoiceName` varchar(200) DEFAULT NULL,
  `customerId` bigint DEFAULT NULL,
  `finalTotal` double DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `advance` double DEFAULT NULL,
  `paymentClearance` bit(1) DEFAULT NULL,
  `paymentBy` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_trns_invoice`
--

LOCK TABLES `tb_trns_invoice` WRITE;
/*!40000 ALTER TABLE `tb_trns_invoice` DISABLE KEYS */;
INSERT INTO `tb_trns_invoice` VALUES (5,'Admin','2021-04-10 18:55:12',_binary '\0','MDA0',NULL,'2021-04-30 00:00:00','Mane Arts',12,10000,0,10000,_binary '','Online'),(6,'Admin','2021-04-29 21:04:34',_binary '\0','MDA1',NULL,'2021-04-30 00:00:00','Mane Invitation card',12,360,10,360,_binary '','Online'),(8,'Admin','2021-09-26 14:03:40',_binary '\0','MDA2','2665465456','2021-09-07 00:00:00','Mane Invitation card',12,100,0,100,_binary '','Online'),(10,'Admin','2021-09-26 14:36:03',_binary '\0','MDA3',NULL,'2021-09-07 00:00:00','inininin',16,404040,0,0,_binary '','Online'),(11,'Admin','2021-09-26 14:39:54',_binary '\0','MDA3','2665465456','2021-09-06 00:00:00','Mane Invitation card',12,5000,0,100,_binary '','Card');
/*!40000 ALTER TABLE `tb_trns_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_trns_services`
--

DROP TABLE IF EXISTS `tb_trns_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_trns_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoiceId` bigint NOT NULL,
  `serviceTypeCode` varchar(100) DEFAULT NULL,
  `actualSize` varchar(100) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `size` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_trns_services`
--

LOCK TABLES `tb_trns_services` WRITE;
/*!40000 ALTER TABLE `tb_trns_services` DISABLE KEYS */;
INSERT INTO `tb_trns_services` VALUES (4,5,'R-Flex','10 x 10','with frame',5,1000,5000,10),(5,5,'R-Flex','5 x 10','flex only',10,500,5000,10),(6,6,'R-Flex','5 x 2',NULL,2,200,400,10),(8,8,'R-Flex','10 x 10','hghg',10,10,100,10),(10,10,'R-Flex','3 x 4','customerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerId',20,20202,404040,10),(11,11,'R-Flex','10 x 10','customerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerIdcustomerId',500,10,5000,10);
/*!40000 ALTER TABLE `tb_trns_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'newmanearts'
--

--
-- Dumping routines for database 'newmanearts'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 11:29:08
