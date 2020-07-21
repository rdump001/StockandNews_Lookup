CREATE DATABASE  IF NOT EXISTS `HR_COMPANY_DATA` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `HR_COMPANY_DATA`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: HR_COMPANY_DATA
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `COMPANY_DETAILS`
--

DROP TABLE IF EXISTS `COMPANY_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPANY_DETAILS` (
  `COMPANY_ID` mediumint NOT NULL AUTO_INCREMENT,
  `COMPANY_NAME` varchar(255) NOT NULL,
  `COMPANY_STOCK_SYM` varchar(255) NOT NULL,
  `PUBLIC_IND` varchar(10) DEFAULT NULL,
  UNIQUE KEY `COMPANY_ID` (`COMPANY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY_DETAILS`
--

LOCK TABLES `COMPANY_DETAILS` WRITE;
/*!40000 ALTER TABLE `COMPANY_DETAILS` DISABLE KEYS */;
INSERT INTO `COMPANY_DETAILS` VALUES (1,'Ace Hardware','ACES.JK','public'),(2,'CMA CGM America, Inc.',' ','private'),(3,'Cost Plus, Inc.',' ','private'),(4,'CP&O LLC',' ','private'),(5,'Dollar Tree Distribution, Inc.',' ','private'),(6,'Maersk Line Limited',' ','private'),(7,'Navy Exchange Services Command',' ','private'),(8,'QVC. Suffolk, Inc.',' ','private'),(9,'Target Corporation','TGT','public'),(10,'Zim American Integrated Shipping',' ','private'),(11,'Advanced Data Processing, Inc',' ','private'),(12,'Anthem, Inc.',' ','private'),(13,'Atlantic Bay Mortgage Group',' ','private'),(14,'Bank of America','BAC','public'),(15,'Capital One','COF','public'),(16,'Dollar Tree Management, Inc',' ','private'),(17,'Ferguson Enterprises',' ','private'),(18,'Geico',' ','private'),(19,'PRA Group, Inc.',' ','private'),(20,'New York Times Shared Services',' ','private'),(21,'Bauer Compressors, Inc.',' ','private'),(22,'Canon Virginia, Inc.',' ','private'),(23,'General Dynamics','GD','public'),(24,'Howmet Aerospace','HWM','public'),(25,'Huntington Ingalls Industries',' ','private'),(26,'Liebherr Mining Equipment Co.',' ','private'),(27,'Measurement Specialties, Inc.',' ','private'),(28,'STIHL, Inc.',' ','private'),(29,'Sumitomo Drive Technologies',' ','private'),(30,'Anheuser-Busch InBev','BUD','public'),(31,'Birdsong Peanuts Corporation',' ','private'),(32,'High Liner Foods, Inc.',' ','private'),(33,'Keurig Dr Pepper','KDP','public'),(34,'Kraft/Heinz Company',' ','private'),(35,'La Tienda Specialty Foods',' ','private'),(36,'Marva Maid',' ','private'),(37,'Massimo Zanetti Beverages, USA',' ','private'),(38,'Unilever / Lipton',' ','private'),(39,'Booze Allen Hamilton',' ','private'),(40,'CACI','CACI','public'),(41,'General Dynamics','GD','public'),(42,'Lockheed Martin','LMT','public'),(43,'Northrop Grumman','NOC','public'),(44,'Raytheon','RTX','public'),(45,'SAIC','SAIC','public'),(46,'Serco, Inc.',' ','private'),(47,'Valkyrie Enterprises',' ','private'),(48,'WR Systems',' ','private');
/*!40000 ALTER TABLE `COMPANY_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 15:48:12
