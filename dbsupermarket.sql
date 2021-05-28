-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarketdb
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `admintbl`
--

DROP TABLE IF EXISTS `admintbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admintbl` (
  `ID` int NOT NULL,
  `ADMINNAME` varchar(10) NOT NULL,
  `ADMINPASS` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admintbl`
--

LOCK TABLES `admintbl` WRITE;
/*!40000 ALTER TABLE `admintbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `admintbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorytbl`
--

DROP TABLE IF EXISTS `categorytbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorytbl` (
  `CATID` int NOT NULL,
  `CATNAME` varchar(20) DEFAULT NULL,
  `CATDESC` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorytbl`
--

LOCK TABLES `categorytbl` WRITE;
/*!40000 ALTER TABLE `categorytbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorytbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttbl`
--

DROP TABLE IF EXISTS `producttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttbl` (
  `PRODID` int NOT NULL,
  `PRODNAME` varchar(20) DEFAULT NULL,
  `PRODQTY` int DEFAULT NULL,
  `PRODPRICE` double DEFAULT NULL,
  `PRODCAT` int DEFAULT NULL,
  PRIMARY KEY (`PRODID`),
  KEY `PRODCAT` (`PRODCAT`),
  CONSTRAINT `producttbl_ibfk_1` FOREIGN KEY (`PRODCAT`) REFERENCES `categorytbl` (`CATID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttbl`
--

LOCK TABLES `producttbl` WRITE;
/*!40000 ALTER TABLE `producttbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `producttbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellertbl`
--

DROP TABLE IF EXISTS `sellertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellertbl` (
  `SELID` int NOT NULL,
  `SELNAME` varchar(20) NOT NULL,
  `SELPASS` varchar(20) NOT NULL,
  `SELGENDER` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`SELID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellertbl`
--

LOCK TABLES `sellertbl` WRITE;
/*!40000 ALTER TABLE `sellertbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellertbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-19 23:49:15
