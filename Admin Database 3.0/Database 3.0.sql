-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: admindatabase
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `admin_auth`
--

DROP TABLE IF EXISTS `admin_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_auth` (
  `mobile_no` int NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admin_type` enum('chief_admin','rptax_admin','business_admin','cedula_admin','lcr_admin','registry_admin') DEFAULT NULL,
  PRIMARY KEY (`mobile_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_auth`
--

LOCK TABLES `admin_auth` WRITE;
/*!40000 ALTER TABLE `admin_auth` DISABLE KEYS */;
INSERT INTO `admin_auth` VALUES (123,'123','chief_admin'),(124,'123','rptax_admin'),(125,'123','business_admin'),(126,'123','cedula_admin'),(127,'123','lcr_admin'),(128,'123','registry_admin');
/*!40000 ALTER TABLE `admin_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profile` (
  `admin_type` enum('chief_admin','rptax_admin','business_admin','cedula_admin','lcr_admin','registry_admin') NOT NULL,
  `admin_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profile`
--

LOCK TABLES `admin_profile` WRITE;
/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
INSERT INTO `admin_profile` VALUES ('chief_admin',NULL);
/*!40000 ALTER TABLE `admin_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_trail` (
  `time_stamp` datetime NOT NULL,
  `activity` varchar(45) DEFAULT NULL,
  `admin` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `id_no` varchar(45) DEFAULT NULL,
  `changes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`time_stamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
INSERT INTO `audit_trail` VALUES ('2024-01-23 21:29:22','Rejected Transaction','BUSINESS ADMIN','January 29, 2024','9:29 PM','17047822-0CDA67EC9','Updated Status - Rejected'),('2024-01-28 21:21:36','Completed Transaction','RPTAX ADMIN','January 29, 2024','9:21 PM','17047805-3DC6065C8','Updated Status - Complete'),('2024-01-29 05:19:45','Completed Transaction','RPTAX ADMIN','January 29, 2024','9:19 PM','17047805-3474DC7CB','Updated Status - Complete'),('2024-01-30 11:09:27','Processing Transaction','LCR ADMIN','January 30, 2024','11:09 AM','17059121-0174C3AF2','Updated Status - Processing'),('2024-01-30 11:46:15','Updated Information','UR ADMIN','January 30, 2024','11:46 AM','AB7348','Updated User Information'),('2024-01-30 11:53:34','Declined Verification','UR ADMIN','January 30, 2024','11:53 AM','RL1741','Updated Status - Unverified/Declined'),('2024-01-30 12:58:06','Completed Transaction','LCR ADMIN','January 30, 2024','12:58 PM','17059121-0174C3AF2','Updated Status - Complete'),('2024-01-30 14:36:58','Rejected Transaction','RPTAX ADMIN','January 30, 2024','2:36 PM','17060365-A07F9A322','Updated Status - Rejected'),('2024-01-30 14:38:59','Rejected Transaction','RPTAX ADMIN','January 30, 2024','2:38 PM','17060365-A07F9A322','Updated Status - Rejected'),('2024-01-31 13:23:58','Declined Verification','UR ADMIN','January 31, 2024','1:23 PM','RL1741','Updated Status - Unverified/Declined'),('2024-01-31 13:31:10','Processing Transaction','RPTAX ADMIN','January 31, 2024','1:31 PM','17066787-18916B92F','Updated Status - Processing'),('2024-01-31 13:31:48','Completed Transaction','RPTAX ADMIN','January 31, 2024','1:31 PM','17066787-18916B92F','Updated Status - Complete'),('2024-01-31 21:18:39','Approved Verification','UR ADMIN','January 31, 2024','9:18 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:23:55','Approved Verification','UR ADMIN','January 31, 2024','9:23 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:25:59','Approved Verification','UR ADMIN','January 31, 2024','9:25 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:27:04','Approved Verification','UR ADMIN','January 31, 2024','9:27 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:27:32','Updated Information','UR ADMIN','January 31, 2024','9:27 PM','RL1741','Updated User Information'),('2024-02-01 16:02:00','Approved Verification','UR ADMIN','February 1, 2024','4:02 PM','RL1741','Updated Status - Verified/Complete'),('2024-02-01 16:07:21','Processing Transaction','RPTAX ADMIN','February 1, 2024','4:07 PM','17047805-1D3838B47','Updated Status - Processing'),('2024-02-01 16:07:31','Rejected Transaction','RPTAX ADMIN','February 1, 2024','4:07 PM','17047805-1D3838B47','Updated Status - Rejected');
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 18:24:13
