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
  `mobile_no` varchar(45) NOT NULL,
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
INSERT INTO `admin_auth` VALUES ('bpadmin','!@f*95Dq),bPkS','business_admin'),('chiefadmin','OpThmED2&,]qjq','chief_admin'),('ctcadmin',')fk%dBZ$d1)zyr','cedula_admin'),('lcradmin','y@0jn?itT|C{qN','lcr_admin'),('registryadmin','%7U;Vq6t4)>@V>','registry_admin'),('rptaxadmin','(X@H_VkZAT)gN.','rptax_admin'),('rptaxadmin1','Ffbm59W1k|C|]t','rptax_admin');
/*!40000 ALTER TABLE `admin_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profile` (
  `mobile_no` varchar(45) NOT NULL,
  `admin_image` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mobile_no`),
  CONSTRAINT `mobile_no` FOREIGN KEY (`mobile_no`) REFERENCES `admin_auth` (`mobile_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profile`
--

LOCK TABLES `admin_profile` WRITE;
/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
INSERT INTO `admin_profile` VALUES ('rptaxadmin',NULL,'RUFI CARL LAGARAS','rptax_admin'),('rptaxadmin1',NULL,'DANILO TORRES','rptax_admin');
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
  `admin_name` varchar(255) DEFAULT NULL,
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
INSERT INTO `audit_trail` VALUES ('2024-01-23 21:29:22','Rejected Transaction','BUSINESS ADMIN',NULL,'January 29, 2024','9:29 PM','17047822-0CDA67EC9','Updated Status - Rejected'),('2024-01-28 21:21:36','Completed Transaction','RPTAX ADMIN',NULL,'January 29, 2024','9:21 PM','17047805-3DC6065C8','Updated Status - Complete'),('2024-01-29 05:19:45','Completed Transaction','RPTAX ADMIN',NULL,'January 29, 2024','9:19 PM','17047805-3474DC7CB','Updated Status - Complete'),('2024-01-30 11:09:27','Processing Transaction','LCR ADMIN',NULL,'January 30, 2024','11:09 AM','17059121-0174C3AF2','Updated Status - Processing'),('2024-01-30 11:46:15','Updated Information','UR ADMIN',NULL,'January 30, 2024','11:46 AM','AB7348','Updated User Information'),('2024-01-30 11:53:34','Declined Verification','UR ADMIN',NULL,'January 30, 2024','11:53 AM','RL1741','Updated Status - Unverified/Declined'),('2024-01-30 12:58:06','Completed Transaction','LCR ADMIN',NULL,'January 30, 2024','12:58 PM','17059121-0174C3AF2','Updated Status - Complete'),('2024-01-30 14:36:58','Rejected Transaction','RPTAX ADMIN',NULL,'January 30, 2024','2:36 PM','17060365-A07F9A322','Updated Status - Rejected'),('2024-01-30 14:38:59','Rejected Transaction','RPTAX ADMIN',NULL,'January 30, 2024','2:38 PM','17060365-A07F9A322','Updated Status - Rejected'),('2024-01-31 13:23:58','Declined Verification','UR ADMIN',NULL,'January 31, 2024','1:23 PM','RL1741','Updated Status - Unverified/Declined'),('2024-01-31 13:31:10','Processing Transaction','RPTAX ADMIN',NULL,'January 31, 2024','1:31 PM','17066787-18916B92F','Updated Status - Processing'),('2024-01-31 13:31:48','Completed Transaction','RPTAX ADMIN',NULL,'January 31, 2024','1:31 PM','17066787-18916B92F','Updated Status - Complete'),('2024-01-31 21:18:39','Approved Verification','UR ADMIN',NULL,'January 31, 2024','9:18 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:23:55','Approved Verification','UR ADMIN',NULL,'January 31, 2024','9:23 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:25:59','Approved Verification','UR ADMIN',NULL,'January 31, 2024','9:25 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:27:04','Approved Verification','UR ADMIN',NULL,'January 31, 2024','9:27 PM','RL1741','Updated Status - Verified/Complete'),('2024-01-31 21:27:32','Updated Information','UR ADMIN',NULL,'January 31, 2024','9:27 PM','RL1741','Updated User Information'),('2024-02-01 16:02:00','Approved Verification','UR ADMIN',NULL,'February 1, 2024','4:02 PM','RL1741','Updated Status - Verified/Complete'),('2024-02-01 16:07:21','Processing Transaction','RPTAX ADMIN',NULL,'February 1, 2024','4:07 PM','17047805-1D3838B47','Updated Status - Processing'),('2024-02-01 16:07:31','Rejected Transaction','RPTAX ADMIN',NULL,'February 1, 2024','4:07 PM','17047805-1D3838B47','Updated Status - Rejected'),('2024-05-15 01:32:54','Pending Transaction','RPTAX ADMIN',NULL,'May 15, 2024','1:32 AM','17144825-7984EEDDA','Updated Status - Pending'),('2024-05-15 01:33:43','Pending Transaction','BUSINESS ADMIN',NULL,'May 15, 2024','1:33 AM','17154240-3FAE9F3D9','Updated Status - Pending'),('2024-05-15 01:34:15','Processing Transaction','CTC ADMIN',NULL,'May 15, 2024','1:34 AM','17150986-3432EDD1F','Updated Status - Processing'),('2024-05-15 01:34:23','Rejected Transaction','CTC ADMIN',NULL,'May 15, 2024','1:34 AM','17150982-67E0C7A82','Updated Status - Rejected'),('2024-05-15 01:34:55','Processing Transaction','LCR ADMIN',NULL,'May 15, 2024','1:34 AM','17154109-AA3C3233B','Updated Status - Processing'),('2024-05-15 01:35:01','Completed Transaction','LCR ADMIN',NULL,'May 15, 2024','1:35 AM','17154109-AA3C3233B','Updated Status - Complete'),('2024-05-15 01:36:07','Updated Information','UR ADMIN',NULL,'May 15, 2024','1:36 AM','DT3980','Updated User Information'),('2024-05-15 01:36:08','Updated Information','UR ADMIN',NULL,'May 15, 2024','1:36 AM','DT3980','Updated User Information'),('2024-05-17 01:46:19','Pending Transaction','RPTAX ADMIN',NULL,'May 17, 2024','1:46 AM','17158799-27B9889CE','Updated Status - Pending'),('2024-05-17 01:48:51','Completed Transaction','RPTAX ADMIN',NULL,'May 17, 2024','1:48 AM','17151141-3DC68974B','Updated Status - Complete'),('2024-05-17 21:16:31','Processing Transaction','LCR ADMIN',NULL,'May 17, 2024','9:16 PM','17151132-150A096E1','Updated Status - Processing'),('2024-05-17 21:16:49','Rejected Transaction','LCR ADMIN',NULL,'May 17, 2024','9:16 PM','17151132-150A096E1','Updated Status - Rejected'),('2024-05-17 21:23:57','Pending Transaction','RPTAX ADMIN',NULL,'May 17, 2024','9:23 PM','17158827-A8AB7C86C','Updated Status - Pending'),('2024-05-20 22:36:14','Approved Verification','UR ADMIN',NULL,'May 20, 2024','10:36 PM','TT6010','Updated Status - Verified/Complete'),('2024-05-20 22:38:46','Updated Information','UR ADMIN',NULL,'May 20, 2024','10:38 PM','DT3980','Updated User Information'),('2024-05-20 22:38:55','Updated Information','UR ADMIN',NULL,'May 20, 2024','10:38 PM','DT3980','Updated User Information'),('2024-05-20 22:43:15','Pending Transaction','RPTAX ADMIN',NULL,'May 20, 2024','10:43 PM','17162160-252F6C8F2','Updated Status - Pending'),('2024-05-20 22:46:11','Completed Transaction','RPTAX ADMIN',NULL,'May 20, 2024','10:46 PM','17162160-252F6C8F2','Updated Status - Complete'),('2024-05-21 19:44:07','Pending Transaction','BUSINESS ADMIN',NULL,'May 21, 2024','7:44 PM','17162178-F8896BD02','Updated Status - Pending'),('2024-05-21 22:09:18','Rejected Transaction','BUSINESS ADMIN',NULL,'May 21, 2024','10:09 PM','17162984-5D9CB0811','Updated Status - Rejected'),('2024-05-21 22:11:21','Rejected Transaction','RPTAX ADMIN',NULL,'May 21, 2024','10:11 PM','17162992-684DB93DA','Updated Status - Rejected'),('2024-05-21 22:14:55','Pending Transaction','BUSINESS ADMIN',NULL,'May 21, 2024','10:14 PM','17163008-F8244AD78','Updated Status - Pending'),('2024-05-21 22:52:33','Rejected Transaction','BUSINESS ADMIN',NULL,'May 21, 2024','10:52 PM','17162962-460B677DD','Updated Status - Rejected'),('2024-05-21 22:59:20','Rejected Transaction','RPTAX ADMIN',NULL,'May 21, 2024','10:59 PM','17144825-7984EEDDA','Updated Status - Rejected'),('2024-05-21 23:18:45','Rejected Transaction','BUSINESS ADMIN',NULL,'May 21, 2024','11:18 PM','17162966-0A6A63B34','Updated Status - Rejected'),('2024-05-21 23:28:09','Completed Transaction','BUSINESS ADMIN',NULL,'May 21, 2024','11:28 PM','17145339-60F752E0D','Updated Status - Complete');
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_data`
--

DROP TABLE IF EXISTS `report_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_data` (
  `report_no` varchar(45) NOT NULL,
  `admin_type` enum('chief_admin','rptax_admin','business_admin','cedula_admin','lcr_admin','registry_admin') DEFAULT NULL,
  `date_processed` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`report_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_data`
--

LOCK TABLES `report_data` WRITE;
/*!40000 ALTER TABLE `report_data` DISABLE KEYS */;
INSERT INTO `report_data` VALUES ('BP-0428-8884','business_admin','2024-04-28 15:48:20'),('BP-0519-0890','business_admin','2024-05-19 15:45:51'),('BP-0519-3996','business_admin','2024-05-19 15:05:10'),('BP-0521-1260','business_admin','2024-05-21 15:43:34'),('BP-0525-3864','business_admin','2024-05-24 17:02:25'),('CA-0428-6624','chief_admin','2024-04-28 15:40:31'),('CA-0515-7471','chief_admin','2024-05-14 17:37:23'),('CA-0519-8634','chief_admin','2024-05-19 15:38:45'),('CTC-0428-2076','cedula_admin','2024-04-28 15:47:18'),('CTC-0519-1596','cedula_admin','2024-05-19 15:46:33'),('LCR-0428-5703','lcr_admin','2024-04-28 15:47:44'),('LCR-0519-8298','lcr_admin','2024-05-19 15:43:57'),('RA-0428-3849','registry_admin','2024-04-28 15:46:45'),('RA-0428-5141','registry_admin','2024-04-28 15:39:37'),('RP-0428-7459','rptax_admin','2024-04-28 15:41:18'),('RP-0519-1353','rptax_admin','2024-05-19 15:43:12'),('RP-0520-7746','rptax_admin','2024-05-20 14:46:58');
/*!40000 ALTER TABLE `report_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 14:44:27
