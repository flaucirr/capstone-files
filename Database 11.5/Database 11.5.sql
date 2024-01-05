-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: clientdatabase
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
-- Table structure for table `address_info`
--

DROP TABLE IF EXISTS `address_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_info` (
  `transaction_id` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `tel_no` varchar(45) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  `brgy_dist` varchar(45) DEFAULT NULL,
  `house_floor` varchar(45) DEFAULT NULL,
  `bldg_name` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_address_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_info`
--

LOCK TABLES `address_info` WRITE;
/*!40000 ALTER TABLE `address_info` DISABLE KEYS */;
INSERT INTO `address_info` VALUES ('17022151-EFA786D6C',NULL,NULL,NULL,3,'3A3','3A23','MUZON','1234','STRAWBERRY','3023'),('17022636-5F00F5282',NULL,NULL,NULL,14,'14A1','14A15','123123','231','5DFS','1485'),('17023012-42E881DB9',NULL,NULL,NULL,14,'14A3','14A23','DAANGHARI','1026','FDR 2','1485'),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F',NULL,NULL,NULL,15,'15A1','15A16','MOLINO 2','213','FGG','4102'),('17043787-A28FF7476',NULL,NULL,NULL,15,'15A1','15A16','MOLINO 2','213','FGG','4102'),('17043787-C7BBE85CB',NULL,NULL,NULL,3,'3A1','1C2','QQQ','QQQ','QQQ','1231'),('17043789-19E9D4AA0',NULL,NULL,NULL,14,'14A1','14A16','DSAD','WE2','DSSA','DSAD231'),('17043789-9F070B851',NULL,NULL,NULL,1,'1A1','1A15','DSAD','WE2','DSSA','DSAD231'),('17043800-08188E25D',NULL,NULL,NULL,14,'14A1','14A16','DSAD','WE2','DSSA','DSAD231'),('17044366-1949C9A12',NULL,NULL,NULL,15,'15A2','15A33','124ASDASD','12312321','ASDASDASD','213123'),('17044394-8B69F842B',NULL,NULL,NULL,16,'16A4','16A76','ASDASDAS','ASDASDASD','ASDASD','12231');
/*!40000 ALTER TABLE `address_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_cert`
--

DROP TABLE IF EXISTS `birth_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_cert` (
  `transaction_id` varchar(45) NOT NULL,
  `region_id` int DEFAULT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_birth_cert` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_cert`
--

LOCK TABLES `birth_cert` WRITE;
/*!40000 ALTER TABLE `birth_cert` DISABLE KEYS */;
INSERT INTO `birth_cert` VALUES ('17022636-5F00F5282',14,'14A3','14A23'),('17026944-2E7CC2786',NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL),('17043787-50D6C472F',1,'1A1','1A15'),('17043787-A28FF7476',1,'1A1','1A15');
/*!40000 ALTER TABLE `birth_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_doc_owner`
--

DROP TABLE IF EXISTS `birth_doc_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_doc_owner` (
  `transaction_id` varchar(45) NOT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `sex_type` enum('Male','Female') DEFAULT NULL,
  `hospital_name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `birth_reg_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_birth_doc_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_doc_owner`
--

LOCK TABLES `birth_doc_owner` WRITE;
/*!40000 ALTER TABLE `birth_doc_owner` DISABLE KEYS */;
INSERT INTO `birth_doc_owner` VALUES ('17022636-5F00F5282','ASD','ASD','ASD','V','Male','HOME',NULL,NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F','LUNA','MILES','DAA','Sr.','Male','H HOSPITAL','PHILIPPINES','2322'),('17043787-A28FF7476','LUNA','MILES','DAA','Sr.','Male','H HOSPITAL','PHILIPPINES','2322');
/*!40000 ALTER TABLE `birth_doc_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_info`
--

DROP TABLE IF EXISTS `birth_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_info` (
  `transaction_id` varchar(45) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `birth_date` varchar(45) DEFAULT NULL,
  `birth_place` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_birth_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_info`
--

LOCK TABLES `birth_info` WRITE;
/*!40000 ALTER TABLE `birth_info` DISABLE KEYS */;
INSERT INTO `birth_info` VALUES ('17022636-5F00F5282','RL1741','2023-12-20',NULL),('17026944-2E7CC2786','RL1741','2023-12-20',NULL),('17026976-F39895B8C','RL1741','2023-12-20',NULL),('17026979-70D8E665C','RL1741','2023-12-20',NULL),('17043787-50D6C472F','RL1741','2024-01-01',NULL),('17043787-A28FF7476','RL1741','2024-01-01',NULL);
/*!40000 ALTER TABLE `birth_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `birth_requestor`
--

DROP TABLE IF EXISTS `birth_requestor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birth_requestor` (
  `transaction_id` varchar(45) NOT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `owner_relation` varchar(45) DEFAULT NULL,
  `requestor_tin` varchar(45) DEFAULT NULL,
  `tel_no` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_birth_requestor` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_requestor`
--

LOCK TABLES `birth_requestor` WRITE;
/*!40000 ALTER TABLE `birth_requestor` DISABLE KEYS */;
INSERT INTO `birth_requestor` VALUES ('17022636-5F00F5282','ASDASD','ASD','ASDASD','VIII','ASDASDASD','12312312321321','3235235','3423423423423'),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F','LUNA','MILES','DAA',NULL,'DAFA','123123','+639381676352','+63945473174'),('17043787-A28FF7476','LUNA','MILES','DAA',NULL,'DAFA','123123','+639381676352','+63945473174');
/*!40000 ALTER TABLE `birth_requestor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_activity`
--

DROP TABLE IF EXISTS `bus_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_activity` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `bus_office` varchar(45) DEFAULT NULL,
  `bus_line` varchar(45) DEFAULT NULL,
  `bus_psic` int DEFAULT NULL,
  `bus_products` varchar(45) DEFAULT NULL,
  `bus_units_no` int DEFAULT NULL,
  `bus_total_cap` int DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `fk_bus_activity` (`transaction_id`),
  CONSTRAINT `fk_bus_activity` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_activity`
--

LOCK TABLES `bus_activity` WRITE;
/*!40000 ALTER TABLE `bus_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_address`
--

DROP TABLE IF EXISTS `bus_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_address` (
  `transaction_id` varchar(45) NOT NULL,
  `region_id` int DEFAULT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  `brgy_dist` varchar(45) DEFAULT NULL,
  `house_floor` varchar(45) DEFAULT NULL,
  `bldg_name` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_address` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_address`
--

LOCK TABLES `bus_address` WRITE;
/*!40000 ALTER TABLE `bus_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_contact`
--

DROP TABLE IF EXISTS `bus_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_contact` (
  `transaction_id` varchar(45) NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `owner_tel_no` varchar(255) DEFAULT NULL,
  `owner_mob_no` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_contact` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_contact`
--

LOCK TABLES `bus_contact` WRITE;
/*!40000 ALTER TABLE `bus_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_info`
--

DROP TABLE IF EXISTS `bus_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_info` (
  `transaction_id` varchar(45) NOT NULL,
  `bus_reg_no` varchar(45) DEFAULT NULL,
  `bus_tin_no` varchar(45) DEFAULT NULL,
  `bus_name` varchar(45) DEFAULT NULL,
  `bus_fchise` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_info`
--

LOCK TABLES `bus_info` WRITE;
/*!40000 ALTER TABLE `bus_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_operation`
--

DROP TABLE IF EXISTS `bus_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_operation` (
  `transaction_id` varchar(45) NOT NULL,
  `bus_floor` varchar(45) DEFAULT NULL,
  `bus_emp` varchar(45) DEFAULT NULL,
  `bus_male_emp` varchar(45) DEFAULT NULL,
  `bus_female_emp` varchar(45) DEFAULT NULL,
  `bus_van_no` varchar(45) DEFAULT NULL,
  `bus_truck_no` varchar(45) DEFAULT NULL,
  `bus_motor_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_opearation` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_operation`
--

LOCK TABLES `bus_operation` WRITE;
/*!40000 ALTER TABLE `bus_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_owner`
--

DROP TABLE IF EXISTS `bus_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_owner` (
  `transaction_id` varchar(45) NOT NULL,
  `bus_lname` varchar(255) NOT NULL,
  `bus_fname` varchar(255) NOT NULL,
  `bus_mname` varchar(255) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `sex_type` enum('Male','Female') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_owner`
--

LOCK TABLES `bus_owner` WRITE;
/*!40000 ALTER TABLE `bus_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_permit`
--

DROP TABLE IF EXISTS `bus_permit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_permit` (
  `transaction_id` varchar(45) NOT NULL,
  `bus_type` int DEFAULT NULL,
  `bus_name` varchar(45) DEFAULT NULL,
  `bus_franchise` varchar(45) DEFAULT NULL,
  `bus_reg_no` varchar(45) DEFAULT NULL,
  `bus_tin` varchar(45) DEFAULT NULL,
  `bus_lessor` varchar(45) DEFAULT NULL,
  `bus_rent` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_permit` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_permit`
--

LOCK TABLES `bus_permit` WRITE;
/*!40000 ALTER TABLE `bus_permit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_permit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedula_cert`
--

DROP TABLE IF EXISTS `cedula_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedula_cert` (
  `transaction_id` varchar(45) NOT NULL,
  `region_id` int DEFAULT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  `cedula_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_cedula_cert` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_cert`
--

LOCK TABLES `cedula_cert` WRITE;
/*!40000 ALTER TABLE `cedula_cert` DISABLE KEYS */;
INSERT INTO `cedula_cert` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,NULL),('17043789-19E9D4AA0',14,'14A1','14A16','2024-01-04'),('17043789-9F070B851',1,'1A1','1A15','2024-01-04'),('17043800-08188E25D',14,'14A1','14A16','2024-01-04');
/*!40000 ALTER TABLE `cedula_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedula_doc_owner`
--

DROP TABLE IF EXISTS `cedula_doc_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedula_doc_owner` (
  `transaction_id` varchar(45) NOT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `sex_type` enum('Male','Female') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_cedula_doc_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_doc_owner`
--

LOCK TABLES `cedula_doc_owner` WRITE;
/*!40000 ALTER TABLE `cedula_doc_owner` DISABLE KEYS */;
INSERT INTO `cedula_doc_owner` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,NULL,NULL),('17043789-19E9D4AA0','LUNA','MILES','DAA',NULL,'Male'),('17043789-9F070B851','LUNA','MILES','DAA',NULL,'Male'),('17043800-08188E25D','LUNA','MILES','DAA','II','Male');
/*!40000 ALTER TABLE `cedula_doc_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedula_other_info`
--

DROP TABLE IF EXISTS `cedula_other_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedula_other_info` (
  `transaction_id` varchar(45) NOT NULL,
  `cvl_id` varchar(45) DEFAULT NULL,
  `czn_id` varchar(45) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `acr_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_cedula_other_info_cvl_id` (`cvl_id`),
  KEY `fk_cedula_other_info_czn_id` (`czn_id`),
  CONSTRAINT `fk_cedula_other_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_other_info`
--

LOCK TABLES `cedula_other_info` WRITE;
/*!40000 ALTER TABLE `cedula_other_info` DISABLE KEYS */;
INSERT INTO `cedula_other_info` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,NULL,NULL),('17043789-19E9D4AA0','SINGLE','ALBANIA',213,231,'213'),('17043789-9F070B851','SINGLE','ALBANIA',213,231,'213'),('17043800-08188E25D','SINGLE','BELIZE',213,231,'213');
/*!40000 ALTER TABLE `cedula_other_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedula_transaction_info`
--

DROP TABLE IF EXISTS `cedula_transaction_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedula_transaction_info` (
  `transaction_id` varchar(45) NOT NULL,
  `emp_status` varchar(45) DEFAULT NULL,
  `acc_no` int DEFAULT NULL,
  `valid_id` varchar(45) DEFAULT NULL,
  `pob_status` varchar(45) DEFAULT NULL,
  `income_id` int DEFAULT NULL,
  `salary_id` varchar(45) DEFAULT NULL,
  `gross_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_cedula_transaction_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_transaction_info`
--

LOCK TABLES `cedula_transaction_info` WRITE;
/*!40000 ALTER TABLE `cedula_transaction_info` DISABLE KEYS */;
INSERT INTO `cedula_transaction_info` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,'COUNTRY B',23213,'222',23222),('17043789-19E9D4AA0','EMPLOYEE_PARTTIME',3123,'POSTAL ID','ACTUARY',213123,'1323',3123123),('17043789-9F070B851','EMPLOYEE_PARTTIME',3123,'POSTAL ID','ACTUARY',213123,'1323',3123123),('17043800-08188E25D','EMPLOYEE_FULLTIME',3123,'UMID','CLIENT_SERVICES_COORDINATOR',213123,'1323',3123123);
/*!40000 ALTER TABLE `cedula_transaction_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consent_info`
--

DROP TABLE IF EXISTS `consent_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consent_info` (
  `transaction_id` varchar(45) NOT NULL,
  `consent_fname` varchar(45) DEFAULT NULL,
  `consent_mname` varchar(45) DEFAULT NULL,
  `consent_lname` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `addr_info_id` int DEFAULT NULL,
  `owner_rel` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `tel_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_consent_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consent_info`
--

LOCK TABLES `consent_info` WRITE;
/*!40000 ALTER TABLE `consent_info` DISABLE KEYS */;
INSERT INTO `consent_info` VALUES ('17044394-8B69F842B','ASDASD','ASDASDA','ASDASD','IX',NULL,'ASDASD','1231231','123123123');
/*!40000 ALTER TABLE `consent_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_cert`
--

DROP TABLE IF EXISTS `death_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_cert` (
  `transaction_id` varchar(45) NOT NULL,
  `region_id` int DEFAULT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_user_transaction` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_cert`
--

LOCK TABLES `death_cert` WRITE;
/*!40000 ALTER TABLE `death_cert` DISABLE KEYS */;
INSERT INTO `death_cert` VALUES ('17020461-81F3BE299',NULL,NULL,NULL,NULL),('17022151-EFA786D6C',14,'14A3','14A23','2023-12-25'),('17023012-42E881DB9',14,'14A3','14A22','2023-12-26'),('17043787-C7BBE85CB',2,'2A1','1B1','2024-01-01'),('17044366-1949C9A12',5,'5A3','5A29','2024-01-10');
/*!40000 ALTER TABLE `death_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_doc_owner`
--

DROP TABLE IF EXISTS `death_doc_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_doc_owner` (
  `transaction_id` varchar(45) NOT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `f_name` varchar(45) DEFAULT NULL,
  `m_name` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `sex_type` enum('Male','Female') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_death_doc_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_doc_owner`
--

LOCK TABLES `death_doc_owner` WRITE;
/*!40000 ALTER TABLE `death_doc_owner` DISABLE KEYS */;
INSERT INTO `death_doc_owner` VALUES ('17020461-81F3BE299',NULL,NULL,NULL,NULL,NULL),('17022151-EFA786D6C','ALVAREZ','JEREMIAH',NULL,NULL,'Male'),('17023012-42E881DB9','MATIS','MHANDEE','LOUISE','II','Male'),('17043787-C7BBE85CB','LUNA','MILES','DAA','Jr.','Male'),('17044366-1949C9A12','ASDASD','ASDASDQW','QWEQWE','II','Male');
/*!40000 ALTER TABLE `death_doc_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `death_requestor`
--

DROP TABLE IF EXISTS `death_requestor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `death_requestor` (
  `transaction_id` varchar(45) NOT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `owner_rel` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `tel_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_death_requestor` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_requestor`
--

LOCK TABLES `death_requestor` WRITE;
/*!40000 ALTER TABLE `death_requestor` DISABLE KEYS */;
INSERT INTO `death_requestor` VALUES ('17020461-81F3BE299',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17022151-EFA786D6C','LAGARAS','RUFI CARL','PRUDENCIADO',NULL,'SISTER','09454731741','02870000'),('17023012-42E881DB9','MATIS','MHANDEE','LOUISE',NULL,'NONE','09123091232','123213213'),('17043787-C7BBE85CB','LUNA','MILES','DAA',NULL,'FATHER','+639381676352','+639381676352'),('17044366-1949C9A12','WQEQWE','QWASGGA','S','II','QWERQ','123124123','123124123');
/*!40000 ALTER TABLE `death_requestor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `father_info`
--

DROP TABLE IF EXISTS `father_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `father_info` (
  `transaction_id` varchar(45) NOT NULL,
  `father_fname` varchar(45) DEFAULT NULL,
  `father_mname` varchar(45) DEFAULT NULL,
  `father_lname` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `czn_status` enum('Citizen','Permanent Resident','Temporary Resident') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_father_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father_info`
--

LOCK TABLES `father_info` WRITE;
/*!40000 ALTER TABLE `father_info` DISABLE KEYS */;
INSERT INTO `father_info` VALUES ('17022636-5F00F5282','ASDASD','ASDASDA','ASDASD','IX',NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F','MILES','DAA','LUNA',NULL,NULL),('17043787-A28FF7476','MILES','DAA','LUNA',NULL,NULL);
/*!40000 ALTER TABLE `father_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `husband_info`
--

DROP TABLE IF EXISTS `husband_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `husband_info` (
  `transaction_id` varchar(45) NOT NULL,
  `husband_fname` varchar(45) DEFAULT NULL,
  `husband_mname` varchar(45) DEFAULT NULL,
  `husband_lname` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_husband_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `husband_info`
--

LOCK TABLES `husband_info` WRITE;
/*!40000 ALTER TABLE `husband_info` DISABLE KEYS */;
INSERT INTO `husband_info` VALUES ('17044394-8B69F842B','ASDASDAS','DASDASDA','ASDSADA','VI');
/*!40000 ALTER TABLE `husband_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marriage_cert`
--

DROP TABLE IF EXISTS `marriage_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marriage_cert` (
  `transaction_id` varchar(45) NOT NULL,
  `region_id` int NOT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) NOT NULL,
  `marriage_date` date NOT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_marriage_cert` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marriage_cert`
--

LOCK TABLES `marriage_cert` WRITE;
/*!40000 ALTER TABLE `marriage_cert` DISABLE KEYS */;
INSERT INTO `marriage_cert` VALUES ('17044394-8B69F842B',15,'15A3','15A39','2024-01-23');
/*!40000 ALTER TABLE `marriage_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mother_info`
--

DROP TABLE IF EXISTS `mother_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mother_info` (
  `transaction_id` varchar(45) NOT NULL,
  `mother_fname` varchar(45) DEFAULT NULL,
  `mother_mname` varchar(45) DEFAULT NULL,
  `mother_lname` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `czn_status` enum('Citizen','Permanent Resident','Temporary Resident') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_mother_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother_info`
--

LOCK TABLES `mother_info` WRITE;
/*!40000 ALTER TABLE `mother_info` DISABLE KEYS */;
INSERT INTO `mother_info` VALUES ('17022636-5F00F5282','ASDASD','ASDASD','ASD','IX',NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F','MILES','DAA','LUNA',NULL,NULL),('17043787-A28FF7476','MILES','DAA','LUNA',NULL,NULL);
/*!40000 ALTER TABLE `mother_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rp_tax`
--

DROP TABLE IF EXISTS `rp_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rp_tax` (
  `rp_id` int NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(255) NOT NULL,
  `rp_tdn` varchar(255) NOT NULL,
  `rp_pin` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `period_id` int NOT NULL,
  `transaction_id` varchar(45) NOT NULL,
  PRIMARY KEY (`rp_id`,`transaction_id`),
  KEY `idx_transaction_id` (`transaction_id`),
  CONSTRAINT `fk_rp_tax` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rp_tax`
--

LOCK TABLES `rp_tax` WRITE;
/*!40000 ALTER TABLE `rp_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `rp_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptax_clearance`
--

DROP TABLE IF EXISTS `rptax_clearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rptax_clearance` (
  `transaction_id` varchar(255) NOT NULL,
  `rp_tdn` varchar(255) NOT NULL,
  `rp_pin` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_rptax_clearance` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptax_clearance`
--

LOCK TABLES `rptax_clearance` WRITE;
/*!40000 ALTER TABLE `rptax_clearance` DISABLE KEYS */;
INSERT INTO `rptax_clearance` VALUES ('17029679-512296B9B','AA9563759274','43535453435646AAAAA');
/*!40000 ALTER TABLE `rptax_clearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rptax_payment`
--

DROP TABLE IF EXISTS `rptax_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rptax_payment` (
  `transaction_id` varchar(255) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `rp_tdn` varchar(255) NOT NULL,
  `rp_pin` varchar(255) NOT NULL,
  `year_id` int NOT NULL,
  `period_id` enum('1st Quarter','2nd Quarter','3rd Quarter','4th Quarter') NOT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_rptax_payment` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rptax_payment`
--

LOCK TABLES `rptax_payment` WRITE;
/*!40000 ALTER TABLE `rptax_payment` DISABLE KEYS */;
INSERT INTO `rptax_payment` VALUES ('17009060-A708EA32B','RUFI LAGARAS','0343875795934345','0249796345234234',2023,'3rd Quarter'),('17015126-3A70B15A2','CARAMEL','FG3453453454','76879232435435DFGFD',2013,'3rd Quarter'),('17016979-751406E50','HELLO','MM5435534546','34543534423432DGFGD',2010,'4th Quarter'),('17016979-F642485F9','TEST','YT3453453453','45464564565757JGHGH',2014,'2nd Quarter');
/*!40000 ALTER TABLE `rptax_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_info`
--

DROP TABLE IF EXISTS `transaction_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_info` (
  `transaction_id` varchar(255) NOT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `copies` int DEFAULT NULL,
  `print_type` enum('Front','Back','Front and Back') DEFAULT NULL,
  `valid_id` varchar(45) DEFAULT NULL,
  `purpose_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_transaction_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_info`
--

LOCK TABLES `transaction_info` WRITE;
/*!40000 ALTER TABLE `transaction_info` DISABLE KEYS */;
INSERT INTO `transaction_info` VALUES ('17020461-81F3BE299','150',2,'Back','9',3),('17043781-03E18E2C3','4004',NULL,NULL,'UMID',NULL),('17043781-11160693B','4004',NULL,NULL,'UMID',NULL),('17043781-61960C96F','4004',NULL,NULL,'UMID',NULL),('17043781-806401A61','4004',NULL,NULL,'UMID',NULL),('17043781-C0377E244','4004',NULL,NULL,'UMID',NULL),('17043781-C721986ED','4004',NULL,NULL,'UMID',NULL),('17043782-0637BC612','100',1,'Back',NULL,3),('17043782-EC27DA7B5','100',1,'Back',NULL,3),('17043786-50C90DD0F','100',1,'Back',NULL,3),('17043786-6CA4D2923','100',1,'Back',NULL,3),('17043786-7520B157C','100',1,'Back',NULL,3),('17043786-913F49855','100',1,'Back',NULL,3),('17043786-B0F763130','100',1,'Back',NULL,3),('17043786-B2D261C99','100',1,'Back',NULL,3),('17043786-BECE79F53','100',1,'Back',NULL,3),('17043787-02F370971','4004',NULL,NULL,'SSS',NULL),('17043787-0E4B1151E','4004',NULL,NULL,'SSS',NULL),('17043787-177D94916','4004',NULL,NULL,'SSS',NULL),('17043787-50D6C472F','150',2,'Back',NULL,1),('17043787-5AD464C7E','4004',NULL,NULL,'SSS',NULL),('17043787-79B7F8C40','4004',NULL,NULL,'SSS',NULL),('17043787-A28FF7476','150',2,'Back',NULL,1),('17043787-C7BBE85CB','100',1,'Front',NULL,1),('17043787-CAB5B3B49','4004',NULL,NULL,'SSS',NULL),('17043787-F6926CD64','4004',NULL,NULL,'SSS',NULL),('17043788-4F5898C06','4004',NULL,NULL,'POSTAL ID',NULL),('17043788-5A7ED2D6D','4004',NULL,NULL,'POSTAL ID',NULL),('17043788-5BFBEDFF2','4004',NULL,NULL,'POSTAL ID',NULL),('17043788-AEFDBC080','4004',NULL,NULL,'POSTAL ID',NULL),('17043788-F0D8E5FD8','4004',NULL,NULL,'POSTAL ID',NULL),('17043789-19E9D4AA0','4004',NULL,NULL,'POSTAL ID',NULL),('17043789-9F070B851','4004',NULL,NULL,'POSTAL ID',NULL),('17043800-08188E25D','4004',NULL,NULL,'UMID',NULL),('17044366-1949C9A12','500',9,'Front',NULL,2),('17044373-100239EBE','350',3,'Front and Back',NULL,2),('17044373-18FBA7FED','350',3,'Front and Back',NULL,2),('17044373-25213E5A5','350',3,'Front and Back',NULL,2),('17044373-7D2E10872','350',3,'Front and Back',NULL,2),('17044373-827D6323F','350',3,'Front and Back',NULL,2),('17044373-844495E9C','350',3,'Front and Back',NULL,2),('17044373-9A8DE8A6B','350',3,'Front and Back',NULL,2),('17044373-9FE318387','350',3,'Front and Back',NULL,2),('17044373-A5F8C057F','350',3,'Front and Back',NULL,2),('17044373-B5E2F9F82','350',3,'Front and Back',NULL,2),('17044373-CBB4E8886','350',3,'Front and Back',NULL,2),('17044373-D74F3DFCD','350',3,'Front and Back',NULL,2),('17044373-E3847902B','350',3,'Front and Back',NULL,2),('17044394-8B69F842B','450',8,'Back',NULL,4);
/*!40000 ALTER TABLE `transaction_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_transaction`
--

DROP TABLE IF EXISTS `user_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_transaction` (
  `transaction_id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `trans_type_id` int NOT NULL,
  `status_type` enum('Pending','Paid','Canceled','Rejected','Expired') NOT NULL,
  `date_processed` datetime NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_transaction`
--

LOCK TABLES `user_transaction` WRITE;
/*!40000 ALTER TABLE `user_transaction` DISABLE KEYS */;
INSERT INTO `user_transaction` VALUES ('17009060-A708EA32B','RL1741',1,'Pending','2023-11-25 00:00:00'),('17015126-3A70B15A2','RL1741',1,'Expired','2023-12-02 18:23:55'),('17016979-751406E50','RL1741',1,'Rejected','2023-12-04 21:53:04'),('17016979-F642485F9','RL1741',1,'Expired','2023-12-04 21:51:42'),('17020461-81F3BE299','RL1741',6,'Pending','2023-12-08 22:36:06'),('17020917-D40D8493F','RL1741',4,'Pending','2023-12-09 11:16:05'),('17022151-EFA786D6C','RL1741',6,'Pending','2023-12-10 21:32:45'),('17022636-5F00F5282','RL1741',5,'Pending','2023-12-11 11:00:41'),('17023012-42E881DB9','RL1741',6,'Pending','2023-12-11 21:27:10'),('17026944-2E7CC2786','RL1741',5,'Pending','2023-12-16 10:41:19'),('17026976-F39895B8C','RL1741',5,'Pending','2023-12-16 11:33:51'),('17026979-70D8E665C','RL1741',5,'Pending','2023-12-16 11:39:30'),('17029679-512296B9B','RL1741',2,'Pending','2023-12-19 14:39:59'),('17043781-03E18E2C3','RL1741',4,'Pending','2024-01-04 22:23:12'),('17043781-11160693B','RL1741',4,'Pending','2024-01-04 22:23:07'),('17043781-61960C96F','RL1741',4,'Pending','2024-01-04 22:23:11'),('17043781-806401A61','RL1741',4,'Pending','2024-01-04 22:23:09'),('17043781-C0377E244','RL1741',4,'Pending','2024-01-04 22:23:12'),('17043781-C721986ED','RL1741',4,'Pending','2024-01-04 22:23:09'),('17043782-0637BC612','RL1741',7,'Pending','2024-01-04 22:24:00'),('17043782-EC27DA7B5','RL1741',7,'Pending','2024-01-04 22:23:59'),('17043786-50C90DD0F','RL1741',7,'Pending','2024-01-04 22:30:59'),('17043786-6CA4D2923','RL1741',7,'Pending','2024-01-04 22:31:02'),('17043786-7520B157C','RL1741',7,'Pending','2024-01-04 22:30:59'),('17043786-913F49855','RL1741',7,'Pending','2024-01-04 22:31:02'),('17043786-B0F763130','RL1741',7,'Pending','2024-01-04 22:30:58'),('17043786-B2D261C99','RL1741',7,'Pending','2024-01-04 22:31:00'),('17043786-BECE79F53','RL1741',7,'Pending','2024-01-04 22:31:00'),('17043787-02F370971','RL1741',4,'Pending','2024-01-04 22:32:22'),('17043787-0E4B1151E','RL1741',4,'Pending','2024-01-04 22:32:21'),('17043787-177D94916','RL1741',4,'Pending','2024-01-04 22:32:21'),('17043787-50D6C472F','RL1741',5,'Pending','2024-01-04 22:33:14'),('17043787-5AD464C7E','RL1741',4,'Pending','2024-01-04 22:32:22'),('17043787-79B7F8C40','RL1741',4,'Pending','2024-01-04 22:32:24'),('17043787-A28FF7476','RL1741',5,'Pending','2024-01-04 22:33:14'),('17043787-C7BBE85CB','RL1741',6,'Pending','2024-01-04 22:31:49'),('17043787-CAB5B3B49','RL1741',4,'Pending','2024-01-04 22:32:25'),('17043787-F6926CD64','RL1741',4,'Pending','2024-01-04 22:32:25'),('17043788-4F5898C06','RL1741',4,'Pending','2024-01-04 22:33:59'),('17043788-5A7ED2D6D','RL1741',4,'Pending','2024-01-04 22:33:57'),('17043788-5BFBEDFF2','RL1741',4,'Pending','2024-01-04 22:34:27'),('17043788-AEFDBC080','RL1741',4,'Pending','2024-01-04 22:33:58'),('17043788-F0D8E5FD8','RL1741',4,'Pending','2024-01-04 22:33:58'),('17043789-19E9D4AA0','RL1741',4,'Pending','2024-01-04 22:36:31'),('17043789-9F070B851','RL1741',4,'Pending','2024-01-04 22:35:41'),('17043800-08188E25D','RL1741',4,'Pending','2024-01-04 22:54:33'),('17044366-1949C9A12','RL1741',6,'Pending','2024-01-05 14:37:50'),('17044373-100239EBE','RL1741',7,'Pending','2024-01-05 14:49:21'),('17044373-18FBA7FED','RL1741',7,'Pending','2024-01-05 14:49:21'),('17044373-25213E5A5','RL1741',7,'Pending','2024-01-05 14:49:20'),('17044373-7D2E10872','RL1741',7,'Pending','2024-01-05 14:49:21'),('17044373-827D6323F','RL1741',7,'Pending','2024-01-05 14:49:54'),('17044373-844495E9C','RL1741',7,'Pending','2024-01-05 14:49:55'),('17044373-9A8DE8A6B','RL1741',7,'Pending','2024-01-05 14:49:51'),('17044373-9FE318387','RL1741',7,'Pending','2024-01-05 14:49:21'),('17044373-A5F8C057F','RL1741',7,'Pending','2024-01-05 14:49:21'),('17044373-B5E2F9F82','RL1741',7,'Pending','2024-01-05 14:49:55'),('17044373-CBB4E8886','RL1741',7,'Pending','2024-01-05 14:49:51'),('17044373-D74F3DFCD','RL1741',7,'Pending','2024-01-05 14:49:51'),('17044373-E3847902B','RL1741',7,'Pending','2024-01-05 14:49:50'),('17044394-8B69F842B','RL1741',7,'Pending','2024-01-05 15:23:50');
/*!40000 ALTER TABLE `user_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wife_info`
--

DROP TABLE IF EXISTS `wife_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wife_info` (
  `transaction_id` varchar(45) NOT NULL,
  `wife_fname` varchar(45) DEFAULT NULL,
  `wife_mname` varchar(45) DEFAULT NULL,
  `wife_lname` varchar(45) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_wife_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wife_info`
--

LOCK TABLES `wife_info` WRITE;
/*!40000 ALTER TABLE `wife_info` DISABLE KEYS */;
INSERT INTO `wife_info` VALUES ('17044394-8B69F842B','DASDASDAS','SADASD','ASDASDAS','II');
/*!40000 ALTER TABLE `wife_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-05 16:52:55
