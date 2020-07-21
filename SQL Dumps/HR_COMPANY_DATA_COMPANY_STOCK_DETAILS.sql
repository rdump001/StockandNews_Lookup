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
-- Table structure for table `COMPANY_STOCK_DETAILS`
--

DROP TABLE IF EXISTS `COMPANY_STOCK_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPANY_STOCK_DETAILS` (
  `COMPANY_ID` int DEFAULT NULL,
  `COMPANY_STOCK_TITLE` varchar(150) DEFAULT NULL,
  `COMPANY_STOCK_VALUE` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY_STOCK_DETAILS`
--

LOCK TABLES `COMPANY_STOCK_DETAILS` WRITE;
/*!40000 ALTER TABLE `COMPANY_STOCK_DETAILS` DISABLE KEYS */;
INSERT INTO `COMPANY_STOCK_DETAILS` VALUES (1,'Previous Close','1,680.00'),(1,'Open','1,680.00'),(1,'Bid','1,645.00 x 0'),(1,'Ask','1,650.00 x 0'),(1,'Day\'s Range','1,630.00 - 1,685.00'),(1,'52 Week Range','970.00 - 1,890.00'),(1,'Volume','10,489,400'),(1,'Avg. Volume','14,724,053'),(1,'Market Cap','28.243T'),(1,'Beta (5Y Monthly)','0.70'),(1,'PE Ratio (TTM)','27.37'),(1,'EPS (TTM)','60.29'),(1,'Earnings Date','Oct 29, 2015 - Nov 03, 2015'),(1,'Forward Dividend & Yield','N/A (N/A)'),(1,'Ex-Dividend Date','May 24, 2019'),(1,'1y Target Est','1,588.20'),(9,'Previous Close','121.67'),(9,'Open','121.26'),(9,'Bid','122.42 x 800'),(9,'Ask','122.42 x 1300'),(9,'Day\'s Range','121.15 - 122.99'),(9,'52 Week Range','80.03 - 130.24'),(9,'Volume','1,431,706'),(9,'Avg. Volume','5,212,026'),(9,'Market Cap','61.342B'),(9,'Beta (5Y Monthly)','0.79'),(9,'PE Ratio (TTM)','22.71'),(9,'EPS (TTM)','5.40'),(9,'Earnings Date','Aug 19, 2020'),(9,'Forward Dividend & Yield','2.72 (2.24%)'),(9,'Ex-Dividend Date','Aug 18, 2020'),(9,'1y Target Est','129.59'),(14,'Previous Close','24.60'),(14,'Open','23.75'),(14,'Bid','24.00 x 1400'),(14,'Ask','24.01 x 2900'),(14,'Day\'s Range','23.55 - 24.22'),(14,'52 Week Range','17.95 - 35.72'),(14,'Volume','49,110,820'),(14,'Avg. Volume','73,633,630'),(14,'Market Cap','208.196B'),(14,'Beta (5Y Monthly)','1.59'),(14,'PE Ratio (TTM)','9.76'),(14,'EPS (TTM)','2.46'),(14,'Earnings Date','Oct 14, 2020'),(14,'Forward Dividend & Yield','0.72 (2.93%)'),(14,'Ex-Dividend Date','Jun 04, 2020'),(14,'1y Target Est','28.53'),(15,'Previous Close','63.68'),(15,'Open','62.76'),(15,'Bid','62.93 x 800'),(15,'Ask','62.92 x 800'),(15,'Day\'s Range','62.41 - 64.54'),(15,'52 Week Range','38.00 - 107.59'),(15,'Volume','1,830,735'),(15,'Avg. Volume','5,208,657'),(15,'Market Cap','28.744B'),(15,'Beta (5Y Monthly)','1.75'),(15,'PE Ratio (TTM)','12.16'),(15,'EPS (TTM)','5.19'),(15,'Earnings Date','Jul 21, 2020'),(15,'Forward Dividend & Yield','1.60 (2.51%)'),(15,'Ex-Dividend Date','May 08, 2020'),(15,'1y Target Est','80.07'),(23,'Previous Close','145.79'),(23,'Open','145.52'),(23,'Bid','148.79 x 3200'),(23,'Ask','148.84 x 900'),(23,'Day\'s Range','144.56 - 149.55'),(23,'52 Week Range','100.55 - 193.76'),(23,'Volume','1,004,219'),(23,'Avg. Volume','1,798,425'),(23,'Market Cap','42.826B'),(23,'Beta (5Y Monthly)','N/A'),(23,'PE Ratio (TTM)','12.60'),(23,'EPS (TTM)','N/A'),(23,'Earnings Date','Jul 29, 2020'),(23,'Forward Dividend & Yield','N/A (N/A)'),(23,'Ex-Dividend Date','N/A'),(23,'1y Target Est','169.24'),(24,'Previous Close','16.70'),(24,'Open','16.61'),(24,'Bid','16.33 x 800'),(24,'Ask','16.33 x 900'),(24,'Day\'s Range','16.12 - 16.61'),(24,'52 Week Range','9.87 - 31.99'),(24,'Volume','1,056,938'),(24,'Avg. Volume','3,932,666'),(24,'Market Cap','7.111B'),(24,'Beta (5Y Monthly)','1.55'),(24,'PE Ratio (TTM)','N/A'),(24,'EPS (TTM)','N/A'),(24,'Earnings Date','Jul 31, 2020 - Aug 04, 2020'),(24,'Forward Dividend & Yield','N/A (N/A)'),(24,'Ex-Dividend Date','Feb 06, 2020'),(24,'1y Target Est','17.33'),(30,'Previous Close','54.16'),(30,'Open','53.51'),(30,'Bid','54.12 x 900'),(30,'Ask','54.15 x 1200'),(30,'Day\'s Range','53.30 - 54.44'),(30,'52 Week Range','32.58 - 102.70'),(30,'Volume','663,784'),(30,'Avg. Volume','2,934,498'),(30,'Market Cap','106.136B'),(30,'Beta (5Y Monthly)','1.13'),(30,'PE Ratio (TTM)','32.74'),(30,'EPS (TTM)','1.65'),(30,'Earnings Date','N/A'),(30,'Forward Dividend & Yield','1.45 (2.68%)'),(30,'Ex-Dividend Date','Jun 09, 2020'),(30,'1y Target Est','58.22'),(33,'Previous Close','29.42'),(33,'Open','29.45'),(33,'Bid','29.53 x 1000'),(33,'Ask','29.54 x 1000'),(33,'Day\'s Range','29.32 - 29.66'),(33,'52 Week Range','18.98 - 32.00'),(33,'Volume','625,227'),(33,'Avg. Volume','4,331,593'),(33,'Market Cap','41.595B'),(33,'Beta (5Y Monthly)','0.51'),(33,'PE Ratio (TTM)','35.61'),(33,'EPS (TTM)','0.83'),(33,'Earnings Date','Aug 06, 2020 - Aug 10, 2020'),(33,'Forward Dividend & Yield','0.60 (2.04%)'),(33,'Ex-Dividend Date','Jul 01, 2020'),(33,'1y Target Est','31.40'),(40,'Previous Close','199.35'),(40,'Open','198.56'),(40,'Bid','194.52 x 800'),(40,'Ask','195.72 x 800'),(40,'Day\'s Range','195.29 - 199.46'),(40,'52 Week Range','156.15 - 288.59'),(40,'Volume','74,174'),(40,'Avg. Volume','194,728'),(40,'Market Cap','4.903B'),(40,'Beta (5Y Monthly)','1.24'),(40,'PE Ratio (TTM)','17.93'),(40,'EPS (TTM)','10.90'),(40,'Earnings Date','Aug 12, 2020'),(40,'Forward Dividend & Yield','N/A (N/A)'),(40,'Ex-Dividend Date','N/A'),(40,'1y Target Est','295.00'),(41,'Previous Close','145.79'),(41,'Open','145.52'),(41,'Bid','148.79 x 3200'),(41,'Ask','148.84 x 900'),(41,'Day\'s Range','144.56 - 149.55'),(41,'52 Week Range','100.55 - 193.76'),(41,'Volume','1,005,203'),(41,'Avg. Volume','1,798,425'),(41,'Market Cap','42.812B'),(41,'Beta (5Y Monthly)','N/A'),(41,'PE Ratio (TTM)','12.59'),(41,'EPS (TTM)','N/A'),(41,'Earnings Date','Jul 29, 2020'),(41,'Forward Dividend & Yield','N/A (N/A)'),(41,'Ex-Dividend Date','N/A'),(41,'1y Target Est','169.24'),(42,'Previous Close','364.56'),(42,'Open','362.30'),(42,'Bid','363.65 x 1000'),(42,'Ask','363.87 x 900'),(42,'Day\'s Range','359.02 - 365.94'),(42,'52 Week Range','266.11 - 442.53'),(42,'Volume','428,160'),(42,'Avg. Volume','1,537,793'),(42,'Market Cap','102.275B'),(42,'Beta (5Y Monthly)','0.96'),(42,'PE Ratio (TTM)','16.55'),(42,'EPS (TTM)','22.04'),(42,'Earnings Date','Jul 21, 2020'),(42,'Forward Dividend & Yield','9.60 (2.63%)'),(42,'Ex-Dividend Date','Aug 31, 2020'),(42,'1y Target Est','433.72'),(43,'Previous Close','300.76'),(43,'Open','299.47'),(43,'Bid','302.04 x 1000'),(43,'Ask','302.27 x 900'),(43,'Day\'s Range','296.53 - 303.35'),(43,'52 Week Range','263.31 - 385.01'),(43,'Volume','331,119'),(43,'Avg. Volume','961,222'),(43,'Market Cap','50.564B'),(43,'Beta (5Y Monthly)','0.79'),(43,'PE Ratio (TTM)','22.83'),(43,'EPS (TTM)','13.29'),(43,'Earnings Date','Jul 30, 2020'),(43,'Forward Dividend & Yield','5.80 (1.93%)'),(43,'Ex-Dividend Date','May 29, 2020'),(43,'1y Target Est','393.18'),(44,'Previous Close','62.94'),(44,'Open','62.30'),(44,'Bid','62.25 x 1100'),(44,'Ask','62.28 x 900'),(44,'Day\'s Range','61.45 - 62.79'),(44,'52 Week Range','43.44 - 99.71'),(44,'Volume','2,696,372'),(44,'Avg. Volume','11,708,871'),(44,'Market Cap','94.576B'),(44,'Beta (5Y Monthly)','0.85'),(44,'PE Ratio (TTM)','N/A'),(44,'EPS (TTM)','N/A'),(44,'Earnings Date','Jul 28, 2020'),(44,'Forward Dividend & Yield','1.90 (3.02%)'),(44,'Ex-Dividend Date','Aug 13, 2020'),(44,'1y Target Est','76.25'),(45,'Previous Close','72.74'),(45,'Open','72.31'),(45,'Bid','71.45 x 3200'),(45,'Ask','71.53 x 1100'),(45,'Day\'s Range','71.35 - 72.80'),(45,'52 Week Range','45.45 - 96.80'),(45,'Volume','92,920'),(45,'Avg. Volume','801,623'),(45,'Market Cap','4.164B'),(45,'Beta (5Y Monthly)','1.04'),(45,'PE Ratio (TTM)','20.28'),(45,'EPS (TTM)','3.53'),(45,'Earnings Date','Sep 03, 2020 - Sep 07, 2020'),(45,'Forward Dividend & Yield','1.48 (2.02%)'),(45,'Ex-Dividend Date','Jul 16, 2020'),(45,'1y Target Est','103.50');
/*!40000 ALTER TABLE `COMPANY_STOCK_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-16 15:48:10
