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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_info`
--

LOCK TABLES `address_info` WRITE;
/*!40000 ALTER TABLE `address_info` DISABLE KEYS */;
INSERT INTO `address_info` VALUES ('17022151-EFA786D6C',NULL,NULL,NULL,3,'3A3','3A23','MUZON','1234','STRAWBERRY','3023'),('17022636-5F00F5282',NULL,NULL,NULL,14,'14A1','14A15','123123','231','5DFS','1485'),('17023012-42E881DB9',NULL,NULL,NULL,14,'14A3','14A23','DAANGHARI','1026','FDR 2','1485'),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17029994-FBD6DDD7B',NULL,NULL,NULL,15,'15A3','15A37','DSASDAS','213123','SDAD','1231');
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_cert`
--

LOCK TABLES `birth_cert` WRITE;
/*!40000 ALTER TABLE `birth_cert` DISABLE KEYS */;
INSERT INTO `birth_cert` VALUES ('17019936-51C07D067',NULL,NULL,NULL),('17022636-5F00F5282',14,'14A3','14A23'),('17026944-2E7CC2786',NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL);
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_doc_owner`
--

LOCK TABLES `birth_doc_owner` WRITE;
/*!40000 ALTER TABLE `birth_doc_owner` DISABLE KEYS */;
INSERT INTO `birth_doc_owner` VALUES ('17019936-51C07D067',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17022636-5F00F5282','ASD','ASD','ASD','V','Male','HOME',NULL,NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_info`
--

LOCK TABLES `birth_info` WRITE;
/*!40000 ALTER TABLE `birth_info` DISABLE KEYS */;
INSERT INTO `birth_info` VALUES ('17019936-51C07D067','RL1741',NULL,NULL),('17022636-5F00F5282','RL1741','2001-11-26',NULL),('17026944-2E7CC2786','RL1741',NULL,NULL),('17026976-F39895B8C','RL1741',NULL,NULL),('17026979-70D8E665C','RL1741',NULL,NULL);
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_requestor`
--

LOCK TABLES `birth_requestor` WRITE;
/*!40000 ALTER TABLE `birth_requestor` DISABLE KEYS */;
INSERT INTO `birth_requestor` VALUES ('17019936-51C07D067',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17022636-5F00F5282','ASDASD','ASD','ASDASD','VIII','ASDASDASD','12312312321321','3235235','3423423423423'),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `birth_requestor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_address`
--

DROP TABLE IF EXISTS `bus_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_address` (
  `bus_addr_id` int NOT NULL AUTO_INCREMENT,
  `cvl_status` enum('Single','Married','Separated','Widowed') NOT NULL,
  `brgy_id` int NOT NULL,
  `addr_info_id` int NOT NULL,
  `bus_type` enum('Sole Proprietorship','One person Corporation','Partnership','Corporation','Cooperative') NOT NULL,
  PRIMARY KEY (`bus_addr_id`)
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
  `bus_contact_id` int NOT NULL,
  `owner_email` varchar(255) NOT NULL,
  `owner_tel_no` varchar(255) DEFAULT NULL,
  `owner_mob_no` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_contact_id`)
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
  `bus_info_id` int NOT NULL AUTO_INCREMENT,
  `bus_reg_no` varchar(45) DEFAULT NULL,
  `bus_tin_no` varchar(45) DEFAULT NULL,
  `bus_name` varchar(45) DEFAULT NULL,
  `bus_fchise` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bus_info_id`)
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
-- Table structure for table `bus_owner`
--

DROP TABLE IF EXISTS `bus_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_owner` (
  `bus_owner_id` int NOT NULL AUTO_INCREMENT,
  `owner_lname` varchar(255) NOT NULL,
  `owner_fname` varchar(255) NOT NULL,
  `owner_mname` varchar(255) NOT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') NOT NULL,
  PRIMARY KEY (`bus_owner_id`)
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
  `sex_type` enum('Male','Female') NOT NULL,
  `bus_info_id` int NOT NULL,
  `bus_owner_id` int NOT NULL,
  `bus_contact_id` int NOT NULL,
  `bus_addr_id` int NOT NULL,
  PRIMARY KEY (`transaction_id`)
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
-- Table structure for table `bus_type`
--

DROP TABLE IF EXISTS `bus_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_type` (
  `bus_type_id` int NOT NULL AUTO_INCREMENT,
  `bus_type` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_type`
--

LOCK TABLES `bus_type` WRITE;
/*!40000 ALTER TABLE `bus_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_type` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_cert`
--

LOCK TABLES `cedula_cert` WRITE;
/*!40000 ALTER TABLE `cedula_cert` DISABLE KEYS */;
INSERT INTO `cedula_cert` VALUES ('17020917-D40D8493F',NULL,NULL,NULL);
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_doc_owner`
--

LOCK TABLES `cedula_doc_owner` WRITE;
/*!40000 ALTER TABLE `cedula_doc_owner` DISABLE KEYS */;
INSERT INTO `cedula_doc_owner` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,NULL,NULL);
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
  KEY `fk_cedula_other_info_czn_id` (`czn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_other_info`
--

LOCK TABLES `cedula_other_info` WRITE;
/*!40000 ALTER TABLE `cedula_other_info` DISABLE KEYS */;
INSERT INTO `cedula_other_info` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_transaction_info`
--

LOCK TABLES `cedula_transaction_info` WRITE;
/*!40000 ALTER TABLE `cedula_transaction_info` DISABLE KEYS */;
INSERT INTO `cedula_transaction_info` VALUES ('17020917-D40D8493F',NULL,NULL,NULL,'COUNTRY B',23213,'222',23222);
/*!40000 ALTER TABLE `cedula_transaction_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `church_info`
--

DROP TABLE IF EXISTS `church_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `church_info` (
  `church_id` int NOT NULL,
  `church_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`church_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `church_info`
--

LOCK TABLES `church_info` WRITE;
/*!40000 ALTER TABLE `church_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `church_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `city_id` varchar(45) NOT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('10A1','Baliguian'),('10A10','Liloy'),('10A11','Manukan'),('10A12','Mutia'),('10A13','Piñan'),('10A14','Polanco'),('10A15','President Manuel A. Roxas'),('10A16','Rizal'),('10A17','Salug'),('10A18','Sergio Osmeña Sr.'),('10A19','Siayan'),('10A2','Godod'),('10A20','Sibuco'),('10A21','Sibutad'),('10A22','Sindangan'),('10A23','Siocon'),('10A24','Sirawai'),('10A25','Tampilisan'),('10A26','Aurora'),('10A27','Bayog'),('10A28','Dimataling'),('10A29','Dinas'),('10A3','Gutalac'),('10A30','Dumalinao'),('10A31','Dumingag'),('10A32','Guipos'),('10A33','Josefina'),('10A34','Kumalarang'),('10A35','Labangan'),('10A36','Lakewood'),('10A37','Lapuyan'),('10A38','Mahayag'),('10A39','Margosatubig'),('10A4','Jose Dalman'),('10A40','Midsalip'),('10A41','Molave'),('10A42','Pagadian City'),('10A43','Pitogo'),('10A44','Ramon Magsaysay'),('10A45','San Miguel'),('10A46','San Pablo'),('10A47','Sominot'),('10A48','Tabina'),('10A49','Tambulig'),('10A5','Kalawit'),('10A50','Tigbao'),('10A51','Vincenzo A. Sagun'),('10A52','Alicia'),('10A53','Buug'),('10A54','Diplahan'),('10A55','Imelda'),('10A56','Ipil'),('10A57','Kabasalan'),('10A58','Mabuhay'),('10A59','Malangas'),('10A6','Katipunan'),('10A60','Naga'),('10A61','Olutanga'),('10A62','Payao'),('10A63','Roseller Lim'),('10A64','Siay'),('10A65','Talusan'),('10A66','Titay'),('10A67','Tungawan'),('10A7','La Libertad'),('10A8','Labason'),('10A9','Leon B. Postigo'),('11A1','Baungon'),('11A10','Kitaotao'),('11A11','Lantapan'),('11A12','Libona '),('11A13','Malaybalay City'),('11A14','Malitbog'),('11A15','Manolo Fortich'),('11A16','Maramag'),('11A17','Pangantucan'),('11A18','Quezon'),('11A19','San Fernando'),('11A2','Cabanglasan'),('11A20','Sumilao'),('11A21','Talakag'),('11A22','Valencia City'),('11A23','Catarman'),('11A24','Guinsiliban'),('11A25','Mahinog'),('11A26','Mambajao'),('11A27','Sagay'),('11A28','Bacolod'),('11A29','Baloi'),('11A3','Damulog'),('11A30','Baroy'),('11A31','Kapatagan'),('11A32','Kauswagan'),('11A33','Kolambugan'),('11A34','Lala'),('11A35','Linamon'),('11A36','Magsaysay'),('11A37','Maigo'),('11A38','Matungao'),('11A39','Munai'),('11A4','Dangcagan'),('11A40','Nunungan'),('11A41','Pantao Ragat'),('11A42','Pantar'),('11A43','Poona Piagapo'),('11A44','Salvador'),('11A45','Sapad'),('11A46','Sultan Naga Dimaporo'),('11A47','Tagoloan'),('11A48','Tangcal'),('11A49','Tubod'),('11A5','Don Carlos'),('11A50','Aloran'),('11A51','Baliangao'),('11A52','Bonifacio'),('11A53','Calamba'),('11A54','Clarin'),('11A55','Concepcion'),('11A56','Don Victoriano Chiongbian'),('11A57','Jimenez'),('11A58','Lopez Jaena'),('11A59','Oroquieta City'),('11A6','Impasugong'),('11A60','Ozamiz City'),('11A61','Panaon'),('11A62','Plaridel'),('11A63','Sapang Dalaga'),('11A64','Sinacaban'),('11A65','Tangub City'),('11A66','Tudela'),('11A67','Alubijid'),('11A68','Balingasag'),('11A69','Balingoan'),('11A7','Kadingilan'),('11A70','Binuangan'),('11A71','Cagayan de Oro City '),('11A72','Claveria'),('11A73','El Salvador City'),('11A74','Gingoog City'),('11A75','Gitagum'),('11A76','Initao'),('11A77','Jasaan'),('11A78','Kinoguitan'),('11A79','Lagonglong'),('11A8','Kalilangan'),('11A80','Laguindingan'),('11A81','Libertad'),('11A82','Lugait'),('11A83','Magsaysay'),('11A84','Manticao'),('11A85','Medina'),('11A86','Naawan'),('11A87','Opol'),('11A88','Salay'),('11A89','Sugbongcogon'),('11A9','Kibawe'),('11A90','Tagoloan'),('11A91','Talisayan'),('11A92','Villanueva'),('12A1','Compostela'),('12A10','New Bataan'),('12A11','Pantukan'),('12A12','Asuncion'),('12A13','Braulio E. Dujali'),('12A14','Carmen'),('12A15','Kapalong'),('12A16','New Corella'),('12A17','Panabo City'),('12A18','Samal City'),('12A19','San Isidro'),('12A2','Laak '),('12A20','Santo Tomas'),('12A21','Tagum City '),('12A22','Talaingod'),('12A23','Bansalan'),('12A24','Davao City'),('12A25','Digos City '),('12A26','Hagonoy'),('12A27','Kiblawan'),('12A28','Magsaysay'),('12A29','Malalag'),('12A3','Mabini'),('12A30','Matanao'),('12A31','Padada'),('12A32','Santa Cruz'),('12A33','Sulop'),('12A34','Don Marcelino'),('12A35','Jose Abad Santos '),('12A36','Malita '),('12A37','Santa Maria'),('12A38','Sarangani'),('12A39','Baganga'),('12A4','Maco'),('12A40','Banaybanay'),('12A41','Boston'),('12A42','Caraga'),('12A43','Cateel'),('12A44','Governor Generoso'),('12A45','Lupon'),('12A46','Manay'),('12A47','Mati City '),('12A48','San Isidro'),('12A49','Tarragona'),('12A5','Maragusan'),('12A6','Mawab'),('12A7','Monkayo'),('12A8','Montevista'),('12A9','Nabunturan '),('13A1','Alamada'),('13A10','M lang'),('13A11','Magpet'),('13A12','Makilala'),('13A13','Matalam'),('13A14','Midsayap'),('13A15','Pigkawayan'),('13A16','Pikit'),('13A17','President Roxas'),('13A18','Tulunan'),('13A19','Alabel '),('13A2','Aleosan'),('13A20','Glan'),('13A21','Kiamba'),('13A22','Maasim'),('13A23','Maitum'),('13A24','Malapatan'),('13A25','Banga'),('13A26','Lake Sebu'),('13A27','Norala'),('13A28','Polomolok'),('13A29','Santo Niño'),('13A3','Antipas'),('13A30','Surallah'),('13A31','T Boli'),('13A32','Tampakan'),('13A33','Tantangan'),('13A34','Tupi'),('13A35','Bagumbayan'),('13A36','Columbio'),('13A37','Esperanza'),('13A38','Isulan '),('13A39','Kalamansig'),('13A4','Arakan'),('13A40','Lambayong '),('13A41','Lebak'),('13A42','Lutayan'),('13A43','Palimbang'),('13A44','President Quirino'),('13A45','Senator Ninoy Aquino'),('13A5','Banisilan'),('13A6','Carmen'),('13A7','Kabacan'),('13A8','Kidapawan City '),('13A9','Libungan'),('14A1','Binondo'),('14A10','Malate'),('14A11','Paco'),('14A12','Pandacan'),('14A13','Port Area'),('14A14','Santa Ana'),('14A15','Tondo I/II'),('14A16','City of Mandaluyong'),('14A17','City of Marikina'),('14A18','City of Pasig'),('14A19','Quezon City'),('14A2','Quiapo'),('14A20','City of San Juan'),('14A21','City of Caloocan'),('14A22','City of Malabon'),('14A23','City of Navotas'),('14A24','City of Valenzuela'),('14A25','City of Las Pinas'),('14A26','City of Makati'),('14A27','City of Muntinlupa'),('14A28','City of Paranaque'),('14A29','Pasay City'),('14A3','San Nicolas'),('14A30','Pateros'),('14A4','Santa Cruz'),('14A5','Sampaloc'),('14A6','San Miguel'),('14A7','Ermita'),('14A8','Intramuros'),('15A1','Bangued '),('15A10','Lagangilang'),('15A11','Lagayan'),('15A12','Langiden'),('15A13','Licuan-Baay'),('15A14','Luba'),('15A15','Malibcong'),('15A16','Manabo'),('15A17','Peñarrubia'),('15A18','Pidigan'),('15A19','Pilar'),('15A2','Boliney'),('15A20','Sallapadan'),('15A21','San Isidro'),('15A22','San Juan'),('15A23','San Quintin'),('15A24','Tayum'),('15A25','Tineg'),('15A26','Tubo'),('15A27','Villaviciosa'),('15A28','Calanasan '),('15A29','Conner'),('15A3','Bucay'),('15A30','Flora'),('15A31','Kabugao'),('15A32','Luna'),('15A33','Pudtol'),('15A34','Santa Marcela'),('15A35','Atok'),('15A36','Bakun'),('15A37','Bokod'),('15A38','Buguias'),('15A39','Itogon'),('15A4','Bucloc'),('15A40','Kabayan'),('15A41','Kapangan'),('15A42','Kibungan'),('15A43','La Trinidad '),('15A44','Mankayan'),('15A45','Sablan'),('15A46','Tuba'),('15A47','Tublay'),('15A48','Aguinaldo'),('15A49','Alfonso Lista'),('15A5','Daguioman'),('15A50','Asipulo'),('15A51','Banaue'),('15A52','Hingyon'),('15A53','Hungduan'),('15A54','Kiangan'),('15A55','Lagawe '),('15A56','Lamut'),('15A57','Mayoyao'),('15A58','Tinoc'),('15A59','Balbalan'),('15A6','Danglas'),('15A60','Calanasan '),('15A61','Conner'),('15A62','Flora'),('15A63','Kabugao'),('15A64','Luna'),('15A65','Pudtol'),('15A66','Santa Marcela'),('15A67','Barlig'),('15A68','Bontoc '),('15A69','Natonin'),('15A7','Dolores'),('15A70','Paracelis'),('15A71','Sabangan'),('15A72','Sadanga'),('15A73','Sagada'),('15A74','Tadian'),('15A8','La Paz'),('15A9','Lacub'),('16A1','City of Lamitan'),('16A10','Hadji Mohammad Ajul'),('16A11','Hadji Muhtamad'),('16A12','Tabuan-Lasa'),('16A13','Bacolod-Kalawi'),('16A14','Balabagan'),('16A15','Balindong'),('16A16','Bayang'),('16A17','Binidayan'),('16A18','Buadiposo-Buntong'),('16A19','Bubong'),('16A2','Isabela City'),('16A20','Bumbaran'),('16A21','Butig'),('16A22','Calanogas'),('16A23','Ditsaan-Ramain'),('16A24','Ganassi'),('16A25','Kapai'),('16A26','Kapatagan'),('16A27','Lumba-Bayabao'),('16A28','Lumbaca-Unayan'),('16A29','Lumbatan'),('16A3','Lantawan'),('16A30','Lumbayanague'),('16A31','Madalum'),('16A32','Madamba'),('16A33','Maguing'),('16A34','Malabang'),('16A35','Marantao'),('16A36','Marawi City'),('16A37','Marogong'),('16A38','Masiu'),('16A39','Mulondo'),('16A4','Maluso'),('16A40','Pagayawan'),('16A41','Piagapo'),('16A42','Poona Bayabao'),('16A43','Pualas'),('16A44','Saguiaran'),('16A45','Sultan Dumalondong'),('16A46','Ampatuan'),('16A47','Barira'),('16A48','Buldon'),('16A49','Buluan'),('16A5','Sumisip'),('16A50','Datu Abdullah Sangki'),('16A51','Datu Anggal Midtimbang'),('16A52','Datu Bai Ali'),('16A53','Datu Hoffer Ampatuan'),('16A54','Datu Montawal'),('16A55','Datu Odin Sinsuat'),('16A56','Datu Paglas'),('16A57','Datu Piang'),('16A58','Datu Salibo'),('16A59','Datu Saudi-Ampatuan'),('16A6','Tipo-Tipo'),('16A60','Datu Unsay'),('16A61','General Salipada K. Pendatun'),('16A62','Guindulungan'),('16A63','Kabuntalan'),('16A64','Mamasapano'),('16A65','Mangudadatu'),('16A66','Matanog'),('16A67','Northern Kabuntalan'),('16A68','Pagalungan'),('16A69','Paglat'),('16A7','Tuburan'),('16A70','Pandag'),('16A71','Parang'),('16A72','Rajah Buayan'),('16A73','Shariff Aguak'),('16A74','Shariff Saydona Mustapha'),('16A75','Indanan'),('16A76','Jolo'),('16A77','Kalingalan Caluang'),('16A78','Lugus'),('16A79','Luuk'),('16A8','Ungkaya Pukan'),('16A80','Maimbung'),('16A81','Old Panamao'),('16A82','Omar'),('16A83','Panglima Sugala'),('16A84','Bongao'),('16A85','Mapun'),('16A86','Simunul'),('16A87','Sitangkal'),('16A88','South Ubian'),('16A89','Tandubas'),('16A9','Akbar'),('16A90','Turtle Islands'),('16A91','Languyan'),('16A92','Sapa-sapa'),('16A93','Sibutu'),('17A1','Buenavista'),('17A10','Remedios T. Romualdez'),('17A11','Bunawan'),('17A12','Esperanza'),('17A13','La Paz'),('17A14','Loreto'),('17A15','Prosperidad'),('17A16','Rosario'),('17A17','San Francisco'),('17A18','San Luis'),('17A19','Santa Josefa'),('17A2','Butuan City'),('17A20','Sibagat'),('17A21','Talacogon'),('17A22','Trento'),('17A23','Veruela'),('17A24','Alegria'),('17A25','Bacuag'),('17A26','Burgos'),('17A27','Claver'),('17A28','Dapa'),('17A29','Del Carmen'),('17A3','Cabadbaran City'),('17A30','General Luna'),('17A31','Gigaquit'),('17A32','Mainit'),('17A33','Malimono'),('17A34','Pilar'),('17A35','Placer'),('17A36','San Benito'),('17A37','San Francisco'),('17A38','San Isidro'),('17A39','Santa Monica'),('17A4','Carmen'),('17A40','Sison'),('17A41','Socorro'),('17A42','Surigao City'),('17A43','Tubod'),('17A44','Tubojan'),('17A45','Tuburan'),('17A46','Tubud'),('17A47','Barobo'),('17A48','Bayabas'),('17A49','Cagwait'),('17A5','Jabonga'),('17A50','Cantilan'),('17A51','Carmen'),('17A52','Carrascal'),('17A53','Cortes'),('17A54','Hinatuan'),('17A55','Lanuza'),('17A56','Lianga'),('17A57','Lingig'),('17A58','Madrid'),('17A59','Marihatag'),('17A6','Kitcharao'),('17A60','San Agustin'),('17A61','San Miguel'),('17A62','Tagbina'),('17A63','Tago'),('17A64','Tandag City'),('17A65','Basilisa'),('17A66','Cagdianao'),('17A67','Dinagat'),('17A68','Libjo (Albor)'),('17A69','Loreto'),('17A7','Las Nieves'),('17A70','San Jose'),('17A71','Tubajon'),('17A8','Magallanes'),('17A9','Nasipit'),('1A1','Adams'),('1A10','Dumalneg'),('1A100','Malasiqui'),('1A101','Manaoag'),('1A102','Mangaldan'),('1A103','Mangatarem'),('1A104','Mapandan'),('1A105','Natividad'),('1A106','Pozzorubio'),('1A107','Rosales'),('1A108','San Carlos City'),('1A109','San Fabian'),('1A11','Espiritu'),('1A110','San Jacinto'),('1A111','San Manuel'),('1A112','San Nicolas'),('1A113','San Quintin'),('1A114','Santa Barbara'),('1A115','Santa Maria'),('1A116','Santo Tomas'),('1A117','Sison'),('1A118','Sual'),('1A119','Tayug'),('1A12','Laoag City'),('1A120','Umingan'),('1A121','Urbiztondo'),('1A122','Villasis'),('1A13','Marcos'),('1A14','Neuva Era'),('1A15','Pagudpud'),('1A16','Paoay'),('1A17','Pasuquin'),('1A18','Piddig'),('1A19','Pinili'),('1A2','Bacarra'),('1A20','San Nicolas'),('1A21','Sarrat'),('1A22','Solsona'),('1A23','Vintar'),('1A24','Alilem'),('1A25','Banayoyo'),('1A26','Bantay'),('1A27','Burgos'),('1A28','Cabugao'),('1A29','Caoayan'),('1A3','Badoc'),('1A30','Cervantes'),('1A31','Galimuyod'),('1A32','Gregorio del Pilar'),('1A33','Lidlidda'),('1A34','Magsingal'),('1A35','Nagbukel'),('1A36','Narvacan'),('1A37','Quirino'),('1A38','Salcedo'),('1A39','San Emilio'),('1A4','Bangui'),('1A40','San Esteban'),('1A41','San Ildefonso'),('1A42','San Juan'),('1A43','San Vicente'),('1A44','Santa'),('1A45','Santa Catalina'),('1A46','Santa Cruz'),('1A47','Santa Lucia'),('1A48','Santa Maria'),('1A49','Santiago'),('1A5','City of Batac'),('1A50','Santo Domingo'),('1A51','Sigay'),('1A52','Sinait'),('1A53','Sugpon'),('1A54','Suyo'),('1A55','Tagudin'),('1A56','Vigan City'),('1A57','Agoo'),('1A58','Aringay'),('1A59','Bacnotan'),('1A6','Burgos'),('1A60','Bagulin'),('1A61','Balaoan'),('1A62','Bangar'),('1A63','Bauang'),('1A64','Burgos'),('1A65','Caba'),('1A66','Luna'),('1A67','Naguilian'),('1A68','Pugo'),('1A69','Rosario'),('1A7','Carasi'),('1A70','San Fernando City'),('1A71','San Gabriel'),('1A72','San Juan'),('1A73','Santo Tomas'),('1A74','Santol'),('1A75','Sudipen'),('1A76','Tubao'),('1A77','Agno'),('1A78','Alaminos City'),('1A79','Alcala'),('1A8','Currimao'),('1A80','Anda'),('1A81','Asingan'),('1A82','Balungao'),('1A83','Bani'),('1A84','Basista'),('1A85','Bautista'),('1A86','Bayambang'),('1A87','Binalonan'),('1A88','Binmaley'),('1A89','Bolinao'),('1A9','Dingras'),('1A90','Bugallon'),('1A91','Burgos'),('1A92','Calasiao'),('1A93','Dagupan City'),('1A94','Dasol'),('1A95','Infanta'),('1A96','Labrador'),('1A97','Laoac'),('1A98','Lingayen'),('1A99','Mabini'),('1B1','Basco'),('1B10','Camalaniugan'),('1B11','Claveria'),('1B119','Peñablanca'),('1B12','Enrile'),('1B13','Gattaran'),('1B14','Gonzaga'),('1B15','Iguig'),('1B16','Lal-lo'),('1B17','Lasam'),('1B18','Pamplona'),('1B2','Itbayat'),('1B20','Piat'),('1B21','Rizal'),('1B22','Sanchez-Mira'),('1B23','Santa Ana'),('1B24','Santa Praxedes'),('1B25','Santa Teresita'),('1B26','Santo Niño'),('1B27','Solana'),('1B28','Tuao'),('1B29','Tuguegarao City'),('1B3','Ivana'),('1B30','Alicia'),('1B31','Alicia'),('1B32','Angadanan'),('1B33','Aurora'),('1B34','Benito Soliven'),('1B35','Burgos'),('1B36','Cabagan'),('1B37','Cabatuan'),('1B38','Cauayan City'),('1B39','Cordon'),('1B4','Mahatao'),('1B40','Delfin Albano'),('1B41','Dinapigue'),('1B42','Divilacan'),('1B43','Echague'),('1B44','Gamu'),('1B45','Ilagan City'),('1B46','Jones'),('1B47','Luna'),('1B48','Maconacon'),('1B49','Dela Cruz (Cambaog)'),('1B5','Sabtang'),('1B50','Mallig'),('1B51','Naguilian'),('1B52','Palanan'),('1B53','Quezon'),('1B54','Quirino'),('1B55','Ramon'),('1B56','Reina Mercedes'),('1B57','Roxas'),('1B58','San Agustin'),('1B59','San Guillermo'),('1B6','Uyugan'),('1B60','San Isidro'),('1B61','San Manuel'),('1B62','San Mariano'),('1B63','San Mateo'),('1B64','San Pablo'),('1B65','Santa Maria'),('1B66','Santiago City'),('1B67','Santo Tomas'),('1B68','Tumauini'),('1B69','Ambaguio'),('1B7','Abulug'),('1B70','Aritao'),('1B71','Bagabag'),('1B72','Bambang'),('1B73','Bayombong'),('1B74','Diadi'),('1B75','Dupax del Norte'),('1B76','Dupax del Sur'),('1B77','Kasibu'),('1B78','Kayapa'),('1B79','Quezon'),('1B8','Abulug'),('1B80','Santa Fe'),('1B81','Solano'),('1B82','Villaverde'),('1B83','Alfonso Castaneda'),('1B84','Aglipay'),('1B85','Cabarroguis'),('1B86','Diffun'),('1B87','Maddela'),('1B88','Nagtipunan'),('1B9','Calayan'),('1C1','Baler'),('1C10','Bagac'),('1C11','Balanga'),('1C12','Dinalupihan'),('1C13','Hermosa'),('1C14','Limay'),('1C15','Mariveles'),('1C16','Morong'),('1C17','Orani'),('1C18','Orion'),('1C19','Pilar'),('1C2','Casiguran'),('1C20','Samal'),('1C3','Dilasag'),('1C4','Dinalungan'),('1C5','Dingalan'),('1C6','Dipaculao'),('1C7','Maria Aurora'),('1C8','San Luis'),('1C9','Abucay'),('3A10','Dona Remedios Trinidad'),('3A100','Castillejos'),('3A101','Iba'),('3A102','Masinloc'),('3A103','Olongapo City'),('3A104','Palauig'),('3A105','San Antonio'),('3A106','San Felipe'),('3A107','San Marcelino'),('3A108','San Narciso'),('3A109','Santa Cruz'),('3A11','Guiguinto'),('3A110','Subic'),('3A12','Hagonoy'),('3A13','Malolos'),('3A14','Marilao'),('3A15','Meycauayan'),('3A16','Norzagaray'),('3A17','Obando'),('3A18','Pandi'),('3A19','Paombong'),('3A20','Plaridel'),('3A21','Pulilan'),('3A22','San Ildefonso'),('3A23','San Jose del Monte'),('3A24','San Miguel'),('3A25','San Rafael'),('3A26','Santa Maria'),('3A27','Aliaga'),('3A28','Bongabon'),('3A29','Cabiao'),('3A3','Angat'),('3A30','Carranglan'),('3A31','Cuyapo'),('3A32','Gabaldon'),('3A33','Gapan'),('3A34','General Mamerto Natividad'),('3A35','General Tinio'),('3A36','Guimba'),('3A37','Jaen'),('3A38','Laur'),('3A39','Licab'),('3A4','Balagtas'),('3A40','Llanera'),('3A41','Lupao'),('3A42','Nampicuan'),('3A43','Palayan'),('3A44','Pantabangan'),('3A45','Peñaranda'),('3A46','Quezon'),('3A47','Rizal'),('3A48','San Antonio'),('3A49','San Isidro'),('3A5','Baliuag'),('3A50','San Jose'),('3A51','San Leonardo'),('3A52','Santa Rosa'),('3A53','Santo Domingo'),('3A54','Talavera'),('3A55','Talugtug'),('3A56','Zaragoza'),('3A57','Angeles City'),('3A58','Apalit'),('3A59','Arayat'),('3A6','Bocaue'),('3A60','Bacolor'),('3A61','Candaba'),('3A62','Floridablanca'),('3A63','Guagua'),('3A64','Lubao'),('3A65','Mabalacat'),('3A66','Macabebe'),('3A67','Magalang'),('3A68','Masantol'),('3A69','Mexico'),('3A7','Bulakan'),('3A70','Minalin'),('3A71','Porac'),('3A72','San Fernando'),('3A73','San Luis'),('3A74','San Simon'),('3A75','Santa Ana'),('3A76','Santa Rita'),('3A77','Santo Tomas'),('3A78','Sasmuan'),('3A79','Anao'),('3A8','Bustos'),('3A80','Bamban'),('3A81','Camiling'),('3A82','Capas'),('3A83','Concepcion'),('3A84','Gerona'),('3A85','La Paz'),('3A86','Mayantoc'),('3A87','Moncada'),('3A88','Paniqui'),('3A89','Pura'),('3A9','Calumpit'),('3A90','Ramos'),('3A91','San Clemente'),('3A92','San Jose'),('3A93','San Manuel'),('3A94','Santa Ignacia'),('3A95','Tarlac City'),('3A96','Victoria'),('3A97','Botolan'),('3A98','Cabangan'),('3A99','Candelaria'),('4A1','Agoncillo'),('4A10','Ibaan'),('4A100','Teresa'),('4A101','Agdangan'),('4A102','Alabat'),('4A103','Atimonan'),('4A104','Buenavista'),('4A105','Burdeos'),('4A106','Calauag'),('4A107','Candelaria'),('4A108','Catanauan'),('4A109','Dolores'),('4A11','Laurel'),('4A110','General Luna'),('4A111','General Nakar'),('4A112','Guinayangan'),('4A113','Gumaca'),('4A114','Infanta'),('4A115','Jomalig'),('4A116','Lopez'),('4A117','Lucban'),('4A118','Lucena City'),('4A119','Macalelon'),('4A12','Lemery'),('4A120','Mauban'),('4A121','Mulanay'),('4A122','Padre Burgos'),('4A123','Pagbilao'),('4A124','Panukulan'),('4A125','Patnanungan'),('4A126','Perez'),('4A127','Pitogo'),('4A128','Plaridel'),('4A129','Polillo'),('4A13','Lian'),('4A130','Quezon'),('4A131','Real'),('4A132','Sampaloc'),('4A133','San Andres'),('4A134','San Antonio'),('4A135','San Francisco'),('4A136','San Narciso'),('4A137','Sariaya'),('4A138','Tagkawayan'),('4A139','Tiaong'),('4A14','Lipa City'),('4A140','Unisan'),('4A15','Lobo'),('4A16','Mabini'),('4A17','Malvar'),('4A18','Mataasnakahoy'),('4A19','Nasugbu'),('4A2','Alitagtag'),('4A20','Padre Garcia'),('4A21','Rosario'),('4A22','San Jose'),('4A23','San Juan'),('4A24','San Luis'),('4A25','San Nicolas'),('4A26','San Pascual'),('4A27','Santa Teresita'),('4A28','Santo Tomas'),('4A29','Taal'),('4A3','Balayan'),('4A30','Talisay'),('4A31','Tanauan City'),('4A32','Taysan'),('4A33','Tingloy'),('4A34','Tuy'),('4A35','Alfonso'),('4A36','Amadeo'),('4A37','Bacoor'),('4A38','Carmona'),('4A39','Cavite City'),('4A4','Balete'),('4A40','Dasmarinas City'),('4A41','General Emilio Aguinaldo'),('4A42','General Mariano Alvarez'),('4A43','General Trias'),('4A44','Imus'),('4A45','Indang'),('4A46','Kawit'),('4A47','Magallanes'),('4A48','Maragondon'),('4A49','Mendez-Nunez'),('4A5','Batangas City'),('4A50','Naic'),('4A51','Noveleta'),('4A52','Rosario'),('4A53','Silang'),('4A54','Tagaytay City'),('4A55','Tanza'),('4A56','Ternate'),('4A57','Trece Martires City'),('4A58','Alaminos'),('4A59','Bay'),('4A6','Bauan'),('4A60','Biñan City'),('4A61','Cabuyao City'),('4A62','Calamba City'),('4A63','Calauan'),('4A64','Cavinti'),('4A65','Famy'),('4A66','Kalayaan'),('4A67','Liliw'),('4A68','Los Baños'),('4A69','Luisiana'),('4A7','Calaca'),('4A70','Lumban'),('4A71','Mabitac'),('4A72','Magdalena'),('4A73','Majayjay'),('4A74','Nagcarlan'),('4A75','Paete'),('4A76','Pagsanjan'),('4A77','Pakil'),('4A78','Pangil'),('4A79','Pila'),('4A8','Calatagan'),('4A80','Rizal'),('4A81','San Pablo City'),('4A82','San Pedro City'),('4A83','Santa Cruz'),('4A84','Santa Maria'),('4A85','Santa Rosa City'),('4A86','Siniloan'),('4A87','Victoria'),('4A88','Angono'),('4A89','Antipolo City'),('4A9','Cuenca'),('4A90','Baras'),('4A91','Binangonan'),('4A92','Cainta'),('4A93','Cardona'),('4A94','Jalajala'),('4A95','Morong'),('4A96','Pililla'),('4A97','Rodriguez (Montalban)'),('4A98','San Mateo'),('4A99','Taytay'),('5A1','Abra De Ilog'),('5A10','San Jose'),('5A11','Santa Cruz'),('5A12','Baco'),('5A13','Bansud'),('5A14','Bongabong'),('5A15','Bulalacao'),('5A16','Calapan City'),('5A17','Gloria'),('5A18','Mansalay'),('5A19','Naujan'),('5A2','Calintaan'),('5A20','Pinamalayan'),('5A21','Pola'),('5A22','Puerto Galera'),('5A23','Roxas'),('5A24','San Teodoro'),('5A25','Socorro'),('5A26','Victoria'),('5A27','Boac'),('5A28','Buenavista'),('5A29','Gasan'),('5A3','Looc'),('5A30','Mogpog'),('5A31','Santa Cruz'),('5A32','Torrijos'),('5A34','Alcantara'),('5A35','Banton'),('5A36','Cajidiocan'),('5A37','Calatrava'),('5A38','Concepcion'),('5A39','Corcuera'),('5A4','Lubang'),('5A40','Ferrol'),('5A41','Looc'),('5A42','Magdiwang'),('5A43','Odiongan'),('5A44','Romblon'),('5A45','San Agustin'),('5A46','San Andres'),('5A47','San Fernando'),('5A48','San Jose'),('5A49','Santa Fe'),('5A5','Magsaysay'),('5A50','Santa Maria'),('5A51','Aborlan'),('5A52','Agutaya'),('5A53','Araceli'),('5A54','Balabac'),('5A55','Bataraza'),('5A56','Brookes Point'),('5A57','Busuanga'),('5A58','Cagayancillo'),('5A59','Coron'),('5A6','Mamburao'),('5A60','Culion'),('5A61','Cuyo'),('5A62','Dumaran'),('5A63','El Nido'),('5A64','Kalayaan'),('5A65','Linapacan'),('5A66','Magsaysay'),('5A67','Narra'),('5A68','Puerto Princesa'),('5A69','Quezon'),('5A7','Paluan'),('5A70','Rizal'),('5A71','Roxas'),('5A72','San Vicente'),('5A73','Sofronio Española'),('5A8','Rizal'),('5A9','Sablayan'),('6A1','Bacacay'),('6A10','Capalonga'),('6A100','Pilar'),('6A101','Prieto Diaz'),('6A102','Santa Magdalena'),('6A103','City of Sorsogon'),('6A11','Daet'),('6A12','Jose Panganiban'),('6A13','Labo'),('6A14','Mercedes'),('6A15','Paracale'),('6A16','San Lorenzo Ruiz'),('6A17','San Vicente'),('6A18','Santa Elena'),('6A19','Talisay'),('6A2','Camalig'),('6A20','Vinzons'),('6A21','Baao'),('6A22','Balatan'),('6A23','Bato'),('6A24','Bombon'),('6A25','Buhi'),('6A26','Bula'),('6A27','Cabusao'),('6A28','Calabanga'),('6A29','Camaligan'),('6A3','Daraga'),('6A30','Canaman'),('6A31','Caramoan'),('6A32','Del Gallego'),('6A33','Gainza'),('6A34','Garchitorena'),('6A35','Goa'),('6A36','Lagonoy'),('6A37','Libmanan'),('6A38','Lupi'),('6A39','Magarao'),('6A4','Guinobatan'),('6A40','Milaor'),('6A41','Minalabac'),('6A42','Nabua'),('6A43','Naga City'),('6A44','Ocampo'),('6A45','Pamplona'),('6A46','Pasacao'),('6A47','Pili'),('6A48','Presentacion'),('6A49','Ragay'),('6A5','Jovellar'),('6A50','Sagnay'),('6A51','San Fernando'),('6A52','San Jose'),('6A53','Sipocot'),('6A54','Siruma'),('6A55','Tigaon'),('6A56','Tinambac'),('6A57','Bagamanoc'),('6A58','Baras'),('6A59','Bato'),('6A6','Legazpi City'),('6A60','Caramoran'),('6A61','Gigmoto'),('6A62','Pandan'),('6A63','Panganiban'),('6A64','San Andres'),('6A65','San Miguel'),('6A66','Viga'),('6A67','Virac'),('6A68','Aroroy'),('6A69','Baleno'),('6A7','Libon'),('6A70','Balud'),('6A71','Batuan'),('6A72','Cataingan'),('6A73','Cawayan'),('6A74','Claveria'),('6A75','Dimasalang'),('6A76','Esperanza'),('6A77','Mandaon'),('6A78','Masbate City'),('6A79','Milagros'),('6A8','City of Ligao'),('6A80','Mobo'),('6A81','Monreal'),('6A82','Palanas'),('6A83','Pio V. Corpus'),('6A84','Placer'),('6A85','San Fernando'),('6A86','San Jacinto'),('6A87','San Pascual'),('6A88','Uson'),('6A89','Barcelona'),('6A9','Basud'),('6A90','Bulan'),('6A91','Bulusan'),('6A92','Casiguran'),('6A93','Castilla'),('6A94','Donsol'),('6A95','Gubat'),('6A96','Irosin'),('6A97','Juban'),('6A98','Magallanes'),('6A99','Matnog'),('7A1','Atlavas'),('7A10','Madalag'),('7A11','Makato'),('7A12','Malay'),('7A13','Malinao'),('7A14','Nabas'),('7A15','New Washington'),('7A16','Numancia'),('7A17','Tangalan'),('7A18','Anini-y'),('7A19','Barbaza'),('7A2','Balete'),('7A20','Belison'),('7A21','Bugasong'),('7A22','Caluya'),('7A23','Culasi'),('7A24','Hamtic'),('7A25','Laua-an'),('7A26','Libertad'),('7A27','Pandan'),('7A28','Patnongon'),('7A29','San Jose de Buenavista'),('7A3','Banga'),('7A30','San Remigio'),('7A31','Sebaste'),('7A32','Sibalom'),('7A33','Tibiao'),('7A34','Tobias Fornier'),('7A35','Valderrama'),('7A36','Cuartero'),('7A37','Dao'),('7A38','Dumalag'),('7A39','Dumarao'),('7A4','Batan'),('7A40','Ivisan'),('7A41','Jamindan'),('7A42','Maayon'),('7A43','Mambusao'),('7A44','Panay'),('7A45','Panitan'),('7A46','Pilar'),('7A47','Pontevedra'),('7A48','President Roxas'),('7A49','Roxas City'),('7A5','Buruanga'),('7A50','Sapi-an'),('7A51','Sigma'),('7A52','Tapaz'),('7A53','Ajuy'),('7A54','Alimodian'),('7A55','Anilao'),('7A56','Badiangan'),('7A57','Balasan'),('7A58','Banate'),('7A59','Barotac Nuevo'),('7A6','Ibajay'),('7A60','Barotac Viejo'),('7A61','Batad'),('7A62','Bingawan'),('7A63','Cabatuan'),('7A64','Calinog'),('7A65','Carles'),('7A66','Concepcion'),('7A67','Dingle'),('7A68','Dueñas'),('7A69','Dumangas'),('7A7','Kalibo'),('7A70','Estancia'),('7A71','Guimbal'),('7A72','Igbaras'),('7A73','Janiuay'),('7A74','Lambunao'),('7A75','Leganes'),('7A76','Lemery'),('7A77','Leon'),('7A78','Maasin'),('7A79','Miagao'),('7A8','Lezo'),('7A80','Mina'),('7A81','New Lucena'),('7A82','Oton'),('7A83','Pavia'),('7A84','Pototan'),('7A85','San Dionisio'),('7A86','San Enrique'),('7A87','San Joaquin'),('7A88','San Miguel'),('7A89','San Rafael'),('7A9','Libacao'),('7A90','Santa Barbara'),('7A91','Sara'),('7A92','Tigbauan'),('7A93','Tubungan'),('7A94','Zarraga'),('7A95','Buenavista'),('7A96','Jordan'),('7A97','Nueva Valencia'),('7A98','San Lorenzo'),('7A99','Sibunag'),('8A1','Alburquerque'),('8A10','Buenavista'),('8A100','Tudela'),('8A101','Enrique Villanueva'),('8A102','Larena'),('8A103','Lazi'),('8A104','Maria'),('8A105','San Juan'),('8A106','Siquijor'),('8A11','Calape'),('8A12','Candijay'),('8A13','Carmen'),('8A14','Catigbian'),('8A15','Clarin'),('8A16','Corella'),('8A17','Cortes'),('8A18','Dagohoy'),('8A19','Danao'),('8A2','Alicia'),('8A20','Dauis'),('8A21','Dimiao'),('8A22','Duero'),('8A23','Garcia Hernandez'),('8A24','Guindulman'),('8A25','Inabanga'),('8A26','Jagna'),('8A27','Lila'),('8A28','Loay'),('8A29','Loboc'),('8A3','Anda'),('8A30','Loon'),('8A31','Mabini'),('8A32','Maribojoc'),('8A33','Panglao'),('8A34','Pilar'),('8A35','Pres. Carlos P. Garcia'),('8A36','Sagbayan'),('8A37','San Isidro'),('8A38','San Miguel'),('8A39','Sevilla'),('8A4','Antequera'),('8A40','Sierra Bullones'),('8A41','Sikatuna'),('8A42','Tagbilaran City'),('8A43','Talibon'),('8A44','Trinidad'),('8A45','Tubigon'),('8A46','Ubay'),('8A47','Valencia'),('8A48','Alcantara'),('8A49','Alcoy'),('8A5','Baclayon'),('8A50','Alegria'),('8A51','Aloguinsan'),('8A52','Argao'),('8A53','Asturias'),('8A54','Badian'),('8A55','Balamban'),('8A56','Bantayan'),('8A57','Barili'),('8A58','Bogo City'),('8A59','Boljoon'),('8A6','Balilihan'),('8A60','Borbon'),('8A61','Carcar City'),('8A62','Carmen'),('8A63','Catmon'),('8A64','Cebu City'),('8A65','Compostela'),('8A66','Consolacion'),('8A67','Cordova'),('8A68','Daanbantayan'),('8A69','Dalaguete'),('8A7','Batuan'),('8A70','Danao City'),('8A71','Dumanjug'),('8A72','Ginatilan'),('8A73','Lapu-Lapu City'),('8A74','Liloan'),('8A75','Madridejos'),('8A76','Malabuyoc'),('8A77','Mandaue City'),('8A78','Medellin'),('8A79','Minglanilla'),('8A8','Bien Unido'),('8A80','Moalboal'),('8A81','Naga City'),('8A82','Oslob'),('8A83','Pilar'),('8A84','Pinamungahan'),('8A85','Poro'),('8A86','Ronda'),('8A87','Samboan'),('8A88','San Fernando'),('8A89','San Francisco'),('8A9','Bilar'),('8A90','San Remigio'),('8A91','Santa Fe'),('8A92','Santander'),('8A93','Sibonga'),('8A94','Sogod'),('8A95','Tabogon'),('8A96','Tabuelan'),('8A97','Talisay City'),('8A98','Toledo City'),('8A99','Tuburan'),('9A1','Arteche'),('9A10','Hernani'),('9A100','Marabut'),('9A101','Matuguinao'),('9A102','Motiong'),('9A103','Pagsanghan'),('9A104','Paranas'),('9A105','Pinabacdao'),('9A106','San Jorge'),('9A107','Anahawan'),('9A108','Bontoc'),('9A109','Hinunangan'),('9A11','Jipapad'),('9A110','Hinundayan'),('9A111','Libagon'),('9A112','Liloan'),('9A113','Limasawa'),('9A114','Maasin City'),('9A115','Macrohon'),('9A116','Malitbog'),('9A117','Padre Burgos'),('9A118','Pintuyan'),('9A119','Saint Bernard'),('9A12','Lawaan'),('9A120','San Francisco'),('9A121','San Juan'),('9A122','San Ricardo'),('9A123','Silago'),('9A124','Sogod'),('9A125','Tomas Oppus'),('9A126','Almeria'),('9A127','Biliran'),('9A128','Cabucgayan'),('9A129','Caibiran'),('9A13','Llorente'),('9A130','Culaba'),('9A131','Kawayan'),('9A132','Maripipi'),('9A133','Naval'),('9A14','Maslog'),('9A15','Maydolong'),('9A16','Mercedes'),('9A17','Oras'),('9A18','Quinapondan'),('9A19','Salcedo'),('9A2','Balangiga'),('9A20','San Julian'),('9A21','San Policarpo'),('9A22','Sulat'),('9A23','Taft'),('9A24','Abuyog'),('9A25','Alangalang'),('9A26','Albuera'),('9A27','Babatngon'),('9A28','Barugo'),('9A29','Bato'),('9A3','Balangkayan'),('9A30','Baybay'),('9A31','Burauen'),('9A32','Calubian'),('9A33','Capoocan'),('9A34','Carigara'),('9A35','Dagami'),('9A36','Dulag'),('9A37','Hilongos'),('9A38','Hindang'),('9A39','Inopacan'),('9A4','Borongan'),('9A40','Isabel'),('9A41','Jaro'),('9A42','Javier'),('9A43','Julita'),('9A44','Kananga'),('9A45','La Paz'),('9A46','Leyte'),('9A47','MacArthur'),('9A48','Mahaplag'),('9A49','Matag-ob'),('9A5','Can-avid'),('9A50','Matalom'),('9A51','Mayorga'),('9A52','Merida'),('9A53','Ormoc'),('9A54','Palo'),('9A55','Palompon'),('9A56','Pastrana'),('9A57','San Isidro'),('9A58','San Miguel'),('9A59','Santa Fe'),('9A6','Dolores'),('9A60','Tabango'),('9A61','Tabontabon'),('9A62','Tacloban'),('9A63','Tanauan'),('9A64','Tolosa'),('9A65','Tunga'),('9A66','Villaba'),('9A67','Allen'),('9A68','Biri'),('9A69','Bobon'),('9A7','General MacArthur'),('9A70','Capul'),('9A71','Catarman'),('9A72','Catubig'),('9A73','Gamay'),('9A74','Laoang'),('9A75','Lapinig'),('9A76','Las Navas'),('9A77','Lavezares'),('9A78','Lope de Vega'),('9A79','Mapanas'),('9A8','Giporlos'),('9A80','Mondragon'),('9A81','Palapag'),('9A82','Pambujan'),('9A83','Rosario'),('9A84','San Antonio'),('9A85','San Isidro'),('9A86','San Jose'),('9A87','San Roque'),('9A88','San Vicente'),('9A89','Silvino Lobos'),('9A9','Guiuan'),('9A90','Victoria'),('9A91','Almagro'),('9A92','Basey'),('9A93','Calbayog City'),('9A94','Calbiga'),('9A95','Catbalogan City'),('9A96','Daram'),('9A97','Gandara'),('9A98','Hinabangan'),('9A99','Jiabong');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consent_info`
--

LOCK TABLES `consent_info` WRITE;
/*!40000 ALTER TABLE `consent_info` DISABLE KEYS */;
INSERT INTO `consent_info` VALUES ('17029994-FBD6DDD7B','ASDASD','ASDASD','12312','VIII',NULL,'ASDASD','45435353','1231312312312');
/*!40000 ALTER TABLE `consent_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copies_number`
--

DROP TABLE IF EXISTS `copies_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copies_number` (
  `copies_id` int NOT NULL,
  `copies_no` int NOT NULL,
  PRIMARY KEY (`copies_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copies_number`
--

LOCK TABLES `copies_number` WRITE;
/*!40000 ALTER TABLE `copies_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `copies_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvl_status`
--

DROP TABLE IF EXISTS `cvl_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cvl_status` (
  `cvl_id` int NOT NULL,
  `cvl_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cvl_id`),
  KEY `idx_cvl_id` (`cvl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvl_status`
--

LOCK TABLES `cvl_status` WRITE;
/*!40000 ALTER TABLE `cvl_status` DISABLE KEYS */;
INSERT INTO `cvl_status` VALUES (0,NULL),(1,'Single'),(2,'Married'),(3,'Divorced'),(4,'Widowed');
/*!40000 ALTER TABLE `cvl_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `czn_status`
--

DROP TABLE IF EXISTS `czn_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czn_status` (
  `czn_id` int NOT NULL,
  `czn_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`czn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czn_status`
--

LOCK TABLES `czn_status` WRITE;
/*!40000 ALTER TABLE `czn_status` DISABLE KEYS */;
INSERT INTO `czn_status` VALUES (0,NULL),(1,'Citizen'),(2,'Permanent Resident'),(3,'Temporary Resident');
/*!40000 ALTER TABLE `czn_status` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_cert`
--

LOCK TABLES `death_cert` WRITE;
/*!40000 ALTER TABLE `death_cert` DISABLE KEYS */;
INSERT INTO `death_cert` VALUES ('17020461-81F3BE299',NULL,NULL,NULL,NULL),('17022151-EFA786D6C',14,'14A3','14A23','2023-12-25'),('17023012-42E881DB9',14,'14A3','14A22','2023-12-26');
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_doc_owner`
--

LOCK TABLES `death_doc_owner` WRITE;
/*!40000 ALTER TABLE `death_doc_owner` DISABLE KEYS */;
INSERT INTO `death_doc_owner` VALUES ('17020461-81F3BE299',NULL,NULL,NULL,NULL,NULL),('17022151-EFA786D6C','ALVAREZ','JEREMIAH',NULL,NULL,'Male'),('17023012-42E881DB9','MATIS','MHANDEE','LOUISE','II','Male');
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_requestor`
--

LOCK TABLES `death_requestor` WRITE;
/*!40000 ALTER TABLE `death_requestor` DISABLE KEYS */;
INSERT INTO `death_requestor` VALUES ('17020461-81F3BE299',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17022151-EFA786D6C','LAGARAS','RUFI CARL','PRUDENCIADO',NULL,'SISTER','09454731741','02870000'),('17023012-42E881DB9','MATIS','MHANDEE','LOUISE',NULL,'NONE','09123091232','123213213');
/*!40000 ALTER TABLE `death_requestor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_type`
--

DROP TABLE IF EXISTS `emp_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_type` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_type` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_type`
--

LOCK TABLES `emp_type` WRITE;
/*!40000 ALTER TABLE `emp_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_type` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father_info`
--

LOCK TABLES `father_info` WRITE;
/*!40000 ALTER TABLE `father_info` DISABLE KEYS */;
INSERT INTO `father_info` VALUES ('1','Rufino','P.','Collantes',NULL,NULL),('17019893-300D8D9FB','YUSAKU','M','KUDO','Sr.',NULL),('17019936-51C07D067',NULL,NULL,NULL,NULL,NULL),('17020137-A05C9E724','MILES','SDAS','LUNA','III',NULL),('17020144-BFF97EECD','MILES','SDAS','LUNA',NULL,NULL),('17020442-40C40DD99','MILES','SDAS','LUNA',NULL,NULL),('17022636-5F00F5282','ASDASD','ASDASDA','ASDASD','IX',NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `husband_info`
--

LOCK TABLES `husband_info` WRITE;
/*!40000 ALTER TABLE `husband_info` DISABLE KEYS */;
INSERT INTO `husband_info` VALUES ('17029994-FBD6DDD7B','DASDAD','ADADA','ASDASDAS','III');
/*!40000 ALTER TABLE `husband_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_claim`
--

DROP TABLE IF EXISTS `id_claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `id_claim` (
  `claim_id` int NOT NULL AUTO_INCREMENT,
  `id_type` varchar(45) NOT NULL,
  PRIMARY KEY (`claim_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_claim`
--

LOCK TABLES `id_claim` WRITE;
/*!40000 ALTER TABLE `id_claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manila_brgy`
--

DROP TABLE IF EXISTS `manila_brgy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_brgy` (
  `brgy_id` int NOT NULL AUTO_INCREMENT,
  `brgy_name` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`brgy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_brgy`
--

LOCK TABLES `manila_brgy` WRITE;
/*!40000 ALTER TABLE `manila_brgy` DISABLE KEYS */;
INSERT INTO `manila_brgy` VALUES (1,'Barangay 773'),(2,'Barangay 774'),(3,'Barangay 775'),(4,'Barangay 776'),(5,'Barangay63'),(6,'Barangay 777'),(7,'Barangay 778'),(8,'Barangay 779'),(9,'Barangay 78'),(10,'Barangay 780'),(11,'Barangay64'),(12,'Barangay 781'),(13,'Barangay65'),(14,'Barangay 475'),(15,'Barangay 782'),(16,'Almanza Dos'),(17,'Barangay 783'),(18,'Almanza Uno'),(19,'Barangay 476'),(20,'Barangay 784'),(21,'Barangay 477'),(22,'Barangay 785'),(23,'B. F. International Village'),(24,'Barangay 786'),(25,'Barangay 787'),(26,'Barangay 788'),(27,'Barangay 789'),(28,'Barangay 79'),(29,'Barangay 790'),(30,'Barangay66'),(31,'Barangay 791'),(32,'Barangay 792'),(33,'Barangay67'),(34,'Barangay 793'),(35,'Barangay 794'),(36,'Barangay 795'),(37,'Barangay68'),(38,'Barangay69'),(39,'Barangay7'),(40,'Barangay 478'),(41,'Barangay70'),(42,'Barangay71'),(43,'Barangay 479'),(44,'Barangay 48'),(45,'Barangay 480'),(46,'Barangay 481'),(47,'Barangay 482'),(48,'Barangay72'),(49,'Barangay 483'),(50,'Barangay73'),(51,'Barangay74'),(52,'Barangay 484'),(53,'Barangay75'),(54,'Daniel Fajardo'),(55,'Barangay 485'),(56,'Barangay76'),(57,'Elias Aldana'),(58,'Barangay77'),(59,'Ilaya'),(60,'Manuyo Dos'),(61,'Barangay 486'),(62,'Manuyo Uno'),(63,'Barangay 487'),(64,'Barangay78'),(65,'Barangay 488'),(66,'Barangay79'),(67,'Barangay 489'),(68,'Barangay8'),(69,'Barangay 796'),(70,'Barangay 797'),(71,'Barangay80'),(72,'Pamplona Dos'),(73,'Barangay 798'),(74,'Barangay81'),(75,'Barangay 799'),(76,'Pamplona Tres'),(77,'Barangay 49'),(78,'Barangay 8'),(79,'Barangay82'),(80,'Barangay 490'),(81,'Barangay 80'),(82,'Barangay83'),(83,'Barangay 800'),(84,'Barangay 491'),(85,'Barangay84'),(86,'Barangay 801'),(87,'Barangay 492'),(88,'Barangay 802'),(89,'Barangay85'),(90,'Barangay 493'),(91,'Barangay 803'),(92,'Barangay 494'),(93,'Barangay 804'),(94,'Barangay 805'),(95,'Barangay 495'),(96,'Barangay 806'),(97,'Barangay 496'),(98,'Barangay 497'),(99,'Barangay 807'),(100,'Barangay 808'),(101,'Barangay 809'),(102,'Barangay 81'),(103,'Barangay 810'),(104,'Barangay 811'),(105,'Barangay 812'),(106,'Barangay 813'),(107,'Barangay 814'),(108,'Barangay 815'),(109,'Barangay 816'),(110,'Barangay 817'),(111,'Barangay 818'),(112,'Barangay 818-A'),(113,'Barangay 819'),(114,'Barangay 82'),(115,'Barangay 820'),(116,'Barangay 821'),(117,'Barangay 822'),(118,'Barangay 823'),(119,'Barangay 824'),(120,'Barangay 825'),(121,'Barangay 826'),(122,'Barangay 827'),(123,'Barangay 828'),(124,'Barangay 829'),(125,'Barangay 83'),(126,'Pamplona Uno'),(127,'Barangay 830'),(128,'Barangay 831'),(129,'Barangay 832'),(130,'Barangay 833'),(131,'Barangay 834'),(132,'Barangay 835'),(133,'Pilar'),(134,'Barangay 836'),(135,'Pulang Lupa Dos'),(136,'Barangay 837'),(137,'Barangay 838'),(138,'Pulang Lupa Uno'),(139,'Barangay 839'),(140,'Talon Dos'),(141,'Barangay 84'),(142,'Barangay 840'),(143,'Talon Kuatro'),(144,'Talon Singko'),(145,'Barangay 841'),(146,'Talon Tres'),(147,'Barangay 842'),(148,'Talon Uno'),(149,'Barangay 843'),(150,'Barangay 844'),(151,'Zapote'),(152,'Barangay 845'),(153,'Barangay 846'),(154,'Bangkal'),(155,'Barangay 847'),(156,'Bel-Air'),(157,'Barangay 848'),(158,'Barangay 849'),(159,'Carmona'),(160,'Barangay 85'),(161,'Cembo'),(162,'Barangay 850'),(163,'Barangay 851'),(164,'Barangay 852'),(165,'Comembo'),(166,'Barangay 853'),(167,'Barangay 855'),(168,'Barangay 856'),(169,'Barangay 857'),(170,'Barangay 858'),(171,'Barangay 859'),(172,'Barangay 86'),(173,'Barangay 860'),(174,'Barangay 861'),(175,'Barangay 862'),(176,'Barangay 863'),(177,'Barangay 864'),(178,'Barangay 865'),(179,'Barangay86'),(180,'Barangay 866'),(181,'Barangay87'),(182,'Barangay 867'),(183,'Barangay 868'),(184,'Barangay88'),(185,'Barangay 869'),(186,'Barangay89'),(187,'Barangay 87'),(188,'Barangay 870'),(189,'Barangay9'),(190,'Barangay 871'),(191,'Barangay90'),(192,'Barangay91'),(193,'Barangay92'),(194,'Barangay93'),(195,'Barangay 498'),(196,'Barangay94'),(197,'Barangay 499'),(198,'Barangay95'),(199,'Barangay 5'),(200,'Barangay 872'),(201,'Barangay96'),(202,'Barangay 873'),(203,'Barangay 50'),(204,'Barangay97'),(205,'Barangay 874'),(206,'Barangay 875'),(207,'Dasmariñas'),(208,'Barangay 876'),(209,'East Rembo'),(210,'Barangay 877'),(211,'Forbes Park'),(212,'Barangay98'),(213,'Guadalupe Nuevo'),(214,'Barangay99'),(215,'Guadalupe Viejo'),(216,'Barangay 2'),(217,'Kasilawan'),(218,'Barangay 20'),(219,'La Paz'),(220,'Magallanes'),(221,'Barangay 200'),(222,'Olympia'),(223,'Barangay 201'),(224,'Palanan'),(225,'Barangay 202'),(226,'Pembo'),(227,'Barangay 202-A'),(228,'Pinagkaisahan'),(229,'Barangay 203'),(230,'Pio del Pilar'),(231,'Barangay 204'),(232,'Pitogo'),(233,'Barangay 205'),(234,'Poblacion'),(235,'Barangay 206'),(236,'Post Proper Northside'),(237,'Barangay 207'),(238,'Post Proper Southside'),(239,'Rizal'),(240,'San Antonio'),(241,'Barangay 500'),(242,'San Isidro'),(243,'San Lorenzo'),(244,'Barangay 501'),(245,'Santa Cruz'),(246,'Barangay 502'),(247,'Singkamas'),(248,'Barangay 208'),(249,'South Cembo'),(250,'Barangay 209'),(251,'Tejeros'),(252,'Barangay 210'),(253,'Urdaneta'),(254,'Barangay 211'),(255,'Barangay 212'),(256,'Barangay 213'),(257,'Valenzuela'),(258,'West Rembo'),(259,'Acacia'),(260,'Baritan'),(261,'Barangay 214'),(262,'Bayan-bayanan'),(263,'Barangay 215'),(264,'Catmon'),(265,'Barangay 216'),(266,'Concepcion'),(267,'Barangay 217'),(268,'Dampalit'),(269,'Barangay 218'),(270,'Flores'),(271,'Barangay 219'),(272,'Hulong Duhat'),(273,'Barangay 503'),(274,'Ibaba'),(275,'Barangay 504'),(276,'Longos'),(277,'Barangay 505'),(278,'Maysilo'),(279,'Barangay 506'),(280,'Barangay 220'),(281,'Barangay 507'),(282,'Barangay 508'),(283,'Muzon'),(284,'Niugan'),(285,'Barangay 221'),(286,'Panghulo'),(287,'Barangay 222'),(288,'Potrero'),(289,'Barangay 223'),(290,'San Agustin'),(291,'Barangay 878'),(292,'Barangay 224'),(293,'Santolan'),(294,'Barangay 879'),(295,'Barangay 509'),(296,'Barangay 225'),(297,'Barangay 88'),(298,'Tañong'),(299,'Barangay 226'),(300,'Barangay 51'),(301,'Tinajeros'),(302,'Barangay 227'),(303,'Tonsuya'),(304,'Barangay 228'),(305,'Tugatog'),(306,'Barangay 229'),(307,'Addition Hills'),(308,'Barangay 230'),(309,'Bagong Silang'),(310,'Barangay 231'),(311,'Barangay 880'),(312,'Barangay 232'),(313,'Barangay 881'),(314,'Barangay 882'),(315,'Barangka Drive'),(316,'Barangay 883'),(317,'Barangay 884'),(318,'Barangay 885'),(319,'Barangay 886'),(320,'Barangay 887'),(321,'Barangay 233'),(322,'Barangka Ibaba'),(323,'Barangay 888'),(324,'Barangay 889'),(325,'Barangka Ilaya'),(326,'Barangka Itaas'),(327,'Buayang Bato'),(328,'Burol'),(329,'Barangay 89'),(330,'Daang Bakal'),(331,'Barangay 234'),(332,'Barangay 890'),(333,'Hagdang Bato Itaas'),(334,'Barangay 891'),(335,'Barangay 235'),(336,'Barangay 510'),(337,'Hagdang Bato Libis'),(338,'Barangay 892'),(339,'Barangay 236'),(340,'Harapin Ang Bukas'),(341,'Barangay 237'),(342,'Highway Hills'),(343,'Barangay 893'),(344,'Barangay 238'),(345,'Barangay 894'),(346,'Barangay 895'),(347,'Barangay 239'),(348,'Barangay 511'),(349,'Barangay 896'),(350,'Barangay 897'),(351,'Barangay 240'),(352,'Barangay 512'),(353,'Barangay 898'),(354,'Barangay 241'),(355,'Barangay 513'),(356,'Barangay 899'),(357,'Barangay 242'),(358,'Barangay 9'),(359,'Barangay 514'),(360,'Barangay 243'),(361,'Barangay 515'),(362,'Barangay 244'),(363,'Barangay 516'),(364,'Barangay 245'),(365,'Barangay 246'),(366,'Barangay 247'),(367,'Barangay 248'),(368,'Barangay 249'),(369,'Barangay 25'),(370,'Barangay 250'),(371,'Hulo'),(372,'Barangay 251'),(373,'Mabini-J. Rizal'),(374,'Barangay 252'),(375,'Malamig'),(376,'Barangay 90'),(377,'Barangay 253'),(378,'Barangay 254'),(379,'Barangay 255'),(380,'Barangay 900'),(381,'Mauway'),(382,'Barangay 901'),(383,'Barangay 256'),(384,'Namayan'),(385,'Barangay 902'),(386,'Barangay 257'),(387,'Barangay 903'),(388,'New Zañiga'),(389,'Barangay 904'),(390,'Barangay 517'),(391,'Old Zañiga'),(392,'Barangay 905'),(393,'Barangay 91'),(394,'Barangay 518'),(395,'Barangay 92'),(396,'Barangay 519'),(397,'Barangay 93'),(398,'Barangay 94'),(399,'Barangay 52'),(400,'Barangay 95'),(401,'Barangay 96'),(402,'Barangay 520'),(403,'Barangay 97'),(404,'Barangay 521'),(405,'Barangay 522'),(406,'Barangay 258'),(407,'Barangay 523'),(408,'Pag-asa'),(409,'Barangay 524'),(410,'Barangay 525'),(411,'Plainview'),(412,'Barangay 259'),(413,'Pleasant Hills'),(414,'Barangay 526'),(415,'Barangay 26'),(416,'Poblacion'),(417,'Barangay 527'),(418,'Barangay 260'),(419,'San Jose'),(420,'Barangay 528'),(421,'Barangay 261'),(422,'Barangay 529'),(423,'Barangay 98'),(424,'Barangay 262'),(425,'Barangay 99'),(426,'Barangay 263'),(427,'Barangka'),(428,'Calumpang'),(429,'Concepcion Dos'),(430,'Concepcion Uno'),(431,'Fortune'),(432,'Industrial Valley'),(433,'Jesus de La Peña'),(434,'Malanday'),(435,'Marikina Heights'),(436,'Nangka'),(437,'Parang'),(438,'San Roque'),(439,'Santa Elena'),(440,'Santo Niño'),(441,'Barangay 264'),(442,'Tañong'),(443,'Barangay 53'),(444,'Tumana'),(445,'Barangay 265'),(446,'Barangay 530'),(447,'Alabang'),(448,'Barangay 266'),(449,'Barangay 531'),(450,'Bayanan'),(451,'Barangay 267'),(452,'Buli'),(453,'Cupang'),(454,'Barangay 268'),(455,'New Alabang Village'),(456,'Vergara'),(457,'Barangay 532'),(458,'Poblacion'),(459,'Wack-wack Greenhills'),(460,'Barangay 533'),(461,'Barangay'),(462,'Barangay 534'),(463,'Barangay 269'),(464,'Barangay 535'),(465,'Barangay 270'),(466,'Barangay 536'),(467,'Barangay 537'),(468,'Barangay 538'),(469,'Barangay 539'),(470,'Barangay 271'),(471,'Barangay 54'),(472,'Barangay 272'),(473,'Barangay 540'),(474,'Barangay 273'),(475,'Barangay 541'),(476,'Barangay0'),(477,'Barangay 274'),(478,'Barangay 542'),(479,'Barangay 275'),(480,'Barangay 276'),(481,'Barangay00'),(482,'Barangay 28'),(483,'Barangay01'),(484,'Barangay 281'),(485,'Barangay 543'),(486,'Barangay02'),(487,'Barangay 282'),(488,'Barangay03'),(489,'Barangay 283'),(490,'Barangay04'),(491,'Barangay 284'),(492,'Barangay 544'),(493,'Barangay05'),(494,'Barangay 285'),(495,'Barangay 545'),(496,'Barangay06'),(497,'Barangay 286'),(498,'Barangay07'),(499,'Barangay08'),(500,'Barangay09'),(501,'Barangay1'),(502,'Barangay 546'),(503,'Barangay 287'),(504,'Barangay 547'),(505,'Barangay 288'),(506,'Barangay 548'),(507,'Barangay 289'),(508,'Barangay 549'),(509,'Barangay 29'),(510,'Barangay 55'),(511,'Barangay 550'),(512,'Barangay 551'),(513,'Barangay 552'),(514,'Barangay 290'),(515,'Barangay 553'),(516,'Putatan'),(517,'Barangay 291'),(518,'Barangay 554'),(519,'Barangay 292'),(520,'Barangay 555'),(521,'Barangay 293'),(522,'Barangay 294'),(523,'Barangay 295'),(524,'Barangay 556'),(525,'Barangay 296'),(526,'Barangay 557'),(527,'Barangay 297'),(528,'Barangay 558'),(529,'Barangay 559'),(530,'Barangay 298'),(531,'Barangay 56'),(532,'Barangay 560'),(533,'Sucat'),(534,'Barangay 561'),(535,'Barangay 562'),(536,'Barangay 563'),(537,'Barangay 564'),(538,'Barangay 299'),(539,'Barangay 3'),(540,'Barangay 30'),(541,'Barangay 300'),(542,'Barangay10'),(543,'Barangay 301'),(544,'Barangay11'),(545,'Barangay 302'),(546,'Barangay 303'),(547,'Barangay 304'),(548,'Barangay12'),(549,'Barangay 305'),(550,'Barangay16'),(551,'Barangay 306'),(552,'Barangay17'),(553,'Barangay18'),(554,'Barangay19'),(555,'Barangay2'),(556,'Barangay20'),(557,'Barangay 307'),(558,'Barangay21'),(559,'Barangay22'),(560,'Barangay 308'),(561,'Barangay23'),(562,'Barangay 565'),(563,'Barangay 309'),(564,'Barangay 566'),(565,'Barangay 567'),(566,'Tunasan'),(567,'Bagumbayan North'),(568,'Bagumbayan South'),(569,'Barangay 31'),(570,'Bangculasi'),(571,'Barangay 568'),(572,'Barangay 310'),(573,'Barangay 569'),(574,'Barangay 311'),(575,'Barangay 57'),(576,'Barangay 312'),(577,'Barangay 570'),(578,'Barangay 313'),(579,'Barangay 571'),(580,'Barangay 314'),(581,'Barangay 572'),(582,'Barangay 315'),(583,'Barangay 573'),(584,'Barangay 316'),(585,'Barangay 317'),(586,'Barangay 318'),(587,'Barangay 319'),(588,'Barangay24'),(589,'Barangay 32'),(590,'Barangay25'),(591,'Barangay26'),(592,'Barangay27'),(593,'Barangay28'),(594,'Barangay29'),(595,'Barangay3'),(596,'Barangay30'),(597,'Daanghari'),(598,'Barangay31'),(599,'NBBS Dagat-dagatan'),(600,'Barangay32'),(601,'NBBS Kaunlaran'),(602,'NBBS Proper'),(603,'Barangay33'),(604,'Navotas East'),(605,'Barangay34'),(606,'Barangay35'),(607,'Barangay36'),(608,'Barangay 574'),(609,'Navotas West'),(610,'Barangay37'),(611,'Barangay 575'),(612,'North Bay Boulevard North'),(613,'Barangay38'),(614,'Barangay 576'),(615,'Barangay 577'),(616,'Barangay39'),(617,'Barangay4'),(618,'Barangay 578'),(619,'Barangay40'),(620,'Barangay 320'),(621,'Barangay41'),(622,'Barangay 579'),(623,'Barangay42'),(624,'Barangay43'),(625,'Barangay44'),(626,'San Jose'),(627,'Barangay 321'),(628,'Barangay45'),(629,'Barangay 58'),(630,'Barangay 322'),(631,'Barangay46'),(632,'Barangay 580'),(633,'Barangay 323'),(634,'Barangay47'),(635,'Barangay 581'),(636,'Barangay 582'),(637,'Barangay 583'),(638,'Barangay 584'),(639,'Barangay 324'),(640,'Barangay 585'),(641,'Barangay48'),(642,'Barangay 325'),(643,'Barangay 586'),(644,'Barangay49'),(645,'Barangay 326'),(646,'Barangay5'),(647,'Barangay 327'),(648,'Barangay 328'),(649,'Barangay 329'),(650,'Barangay50'),(651,'Barangay 33'),(652,'Barangay51'),(653,'Barangay 330'),(654,'Barangay52'),(655,'Barangay 331'),(656,'Barangay53'),(657,'Barangay 332'),(658,'Barangay54'),(659,'Barangay55'),(660,'Barangay56'),(661,'Barangay57'),(662,'Barangay58'),(663,'Barangay59'),(664,'Barangay6'),(665,'Barangay60'),(666,'Barangay 587'),(667,'Barangay61'),(668,'Barangay 587-A'),(669,'Barangay 588'),(670,'Barangay 589'),(671,'Barangay 59'),(672,'Barangay62'),(673,'San Rafael Village'),(674,'Barangay 590'),(675,'San Roque'),(676,'Barangay 591'),(677,'Sipac-Almacen'),(678,'Barangay 592'),(679,'Tangos North'),(680,'Barangay 593'),(681,'Tangos South'),(682,'Tanza 1'),(683,'Tanza 2'),(684,'B. F. Homes'),(685,'Baclaran'),(686,'Don Bosco'),(687,'Barangay 594'),(688,'Don Galo'),(689,'La Huerta'),(690,'Barangay 595'),(691,'Marcelo Green Village'),(692,'Barangay 30'),(693,'Barangay 596'),(694,'Merville'),(695,'Barangay 597'),(696,'Barangay 31'),(697,'Barangay 598'),(698,'Barangay 599'),(699,'Moonwalk'),(700,'Barangay 6'),(701,'Barangay 60'),(702,'Barangay 32'),(703,'San Antonio'),(704,'Barangay 600'),(705,'Barangay 33'),(706,'San Dionisio'),(707,'Barangay 34'),(708,'San Isidro'),(709,'San Martin de Porres'),(710,'Barangay 35'),(711,'Santo Niño'),(712,'Barangay 601'),(713,'Barangay 36'),(714,'Sun Valley'),(715,'Barangay 602'),(716,'Tambo'),(717,'Vitalez'),(718,'Barangay'),(719,'Barangay0'),(720,'Barangay00'),(721,'Barangay01'),(722,'Barangay 603'),(723,'Barangay 604'),(724,'Barangay 605'),(725,'Barangay 606'),(726,'Barangay 607'),(727,'Barangay 608'),(728,'Barangay 609'),(729,'Barangay 333'),(730,'Barangay 61'),(731,'Barangay 334'),(732,'Barangay 37'),(733,'Barangay 335'),(734,'Barangay 38'),(735,'Barangay 610'),(736,'Barangay 336'),(737,'Barangay 39'),(738,'Barangay 337'),(739,'Barangay 4'),(740,'Barangay 338'),(741,'Barangay 40'),(742,'Barangay 339'),(743,'Barangay 41'),(744,'Barangay 34'),(745,'Barangay 42'),(746,'Barangay 340'),(747,'Barangay 43'),(748,'Barangay02'),(749,'Barangay 44'),(750,'Barangay03'),(751,'Barangay 45'),(752,'Barangay 46'),(753,'Barangay 341'),(754,'Barangay 47'),(755,'Barangay 342'),(756,'Barangay 48'),(757,'Barangay 343'),(758,'Barangay 344'),(759,'Barangay 345'),(760,'Barangay04'),(761,'Barangay 346'),(762,'Barangay05'),(763,'Barangay 347'),(764,'Barangay06'),(765,'Barangay07'),(766,'Barangay 348'),(767,'Barangay08'),(768,'Barangay09'),(769,'Barangay 349'),(770,'Barangay 35'),(771,'Barangay 350'),(772,'Barangay1'),(773,'Barangay 351'),(774,'Barangay 352'),(775,'Barangay 353'),(776,'Barangay 49'),(777,'Barangay 354'),(778,'Barangay 5'),(779,'Barangay 50'),(780,'Barangay 51'),(781,'Barangay 52'),(782,'Barangay 53'),(783,'Barangay 54'),(784,'Barangay10'),(785,'Barangay 611'),(786,'Barangay11'),(787,'Barangay 612'),(788,'Barangay12'),(789,'Barangay13'),(790,'Barangay 613'),(791,'Barangay 55'),(792,'Barangay14'),(793,'Barangay 614'),(794,'Barangay 56'),(795,'Barangay15'),(796,'Barangay 57'),(797,'Barangay 58'),(798,'Barangay 59'),(799,'Barangay 6'),(800,'Barangay 60'),(801,'Barangay 61'),(802,'Barangay 62'),(803,'Barangay 63'),(804,'Barangay 64'),(805,'Barangay 65'),(806,'Barangay 66'),(807,'Barangay 67'),(808,'Barangay 68'),(809,'Barangay 69'),(810,'Barangay 7'),(811,'Barangay 70'),(812,'Barangay 71'),(813,'Barangay 72'),(814,'Barangay 73'),(815,'Barangay 74'),(816,'Barangay 75'),(817,'Barangay 615'),(818,'Barangay 76'),(819,'Barangay 616'),(820,'Barangay 77'),(821,'Barangay 617'),(822,'Barangay16'),(823,'Barangay 78'),(824,'Barangay 618'),(825,'Barangay17'),(826,'Barangay 79'),(827,'Barangay18'),(828,'Barangay 619'),(829,'Barangay 8'),(830,'Barangay19'),(831,'Barangay 80'),(832,'Barangay2'),(833,'Barangay20'),(834,'Barangay 81'),(835,'Barangay 355'),(836,'Barangay21'),(837,'Barangay 82'),(838,'Barangay22'),(839,'Barangay 356'),(840,'Barangay 83'),(841,'Barangay 84'),(842,'Barangay 85'),(843,'Barangay 86'),(844,'Barangay 357'),(845,'Barangay 87'),(846,'Barangay 88'),(847,'Barangay 358'),(848,'Barangay 89'),(849,'Barangay 9'),(850,'Barangay 90'),(851,'Barangay 359'),(852,'Barangay 91'),(853,'Barangay 92'),(854,'Barangay 36'),(855,'Barangay 93'),(856,'Barangay 360'),(857,'Barangay 94'),(858,'Barangay 361'),(859,'Barangay 95'),(860,'Barangay 362'),(861,'Barangay 363'),(862,'Barangay 364'),(863,'Barangay 365'),(864,'Barangay 366'),(865,'Barangay 367'),(866,'Barangay23'),(867,'Barangay 368'),(868,'Barangay24'),(869,'Barangay25'),(870,'Barangay 62'),(871,'Barangay 369'),(872,'Barangay 96'),(873,'Barangay26'),(874,'Barangay 620'),(875,'Barangay 37'),(876,'Barangay 97'),(877,'Barangay 621'),(878,'Barangay 370'),(879,'Barangay27'),(880,'Barangay 98'),(881,'Barangay 622'),(882,'Barangay 371'),(883,'Barangay28'),(884,'Barangay 99'),(885,'Barangay 623'),(886,'Barangay 372'),(887,'Bagong Ilog'),(888,'Barangay 373'),(889,'Bagong Katipunan'),(890,'Barangay 374'),(891,'Bambang'),(892,'Barangay 375'),(893,'Barangay 624'),(894,'Buting'),(895,'Caniogan'),(896,'Dela Paz'),(897,'Kalawaan'),(898,'Barangay 625'),(899,'Barangay 376'),(900,'Kapasigan'),(901,'Barangay 626'),(902,'Barangay 377'),(903,'Kapitolyo'),(904,'Barangay 378'),(905,'Malinao'),(906,'Barangay 379'),(907,'Manggahan'),(908,'Barangay 38'),(909,'Maybunga'),(910,'Oranbo'),(911,'Palatiw'),(912,'Pinagbuhatan'),(913,'Barangay 627'),(914,'Pineda'),(915,'Barangay 380'),(916,'Barangay29'),(917,'Barangay 381'),(918,'Barangay3'),(919,'Barangay 628'),(920,'Barangay30'),(921,'Rosario'),(922,'Barangay31'),(923,'Barangay 629'),(924,'Sagad'),(925,'Barangay32'),(926,'Barangay 63'),(927,'San Antonio'),(928,'Barangay33'),(929,'Barangay34'),(930,'Barangay 630'),(931,'Barangay35'),(932,'Barangay36'),(933,'Barangay 631'),(934,'Barangay37'),(935,'Barangay 632'),(936,'Barangay 633'),(937,'Barangay 634'),(938,'Barangay38'),(939,'Barangay 635'),(940,'Barangay39'),(941,'Barangay 636'),(942,'Barangay4'),(943,'Barangay40'),(944,'Barangay41'),(945,'Barangay42'),(946,'Barangay43'),(947,'Barangay 382'),(948,'Barangay 383'),(949,'Barangay44'),(950,'Barangay45'),(951,'Barangay 384'),(952,'Barangay46'),(953,'Barangay 385'),(954,'San Joaquin'),(955,'Barangay 386'),(956,'San Jose'),(957,'Barangay 387'),(958,'Barangay47'),(959,'Barangay 388'),(960,'San Miguel'),(961,'Barangay48'),(962,'Barangay 389'),(963,'Barangay49'),(964,'San Nicolas'),(965,'Barangay 39'),(966,'Santa Cruz'),(967,'Barangay 390'),(968,'Barangay5'),(969,'Santa Lucia'),(970,'Barangay50'),(971,'Santa Rosa'),(972,'Barangay51'),(973,'Barangay52'),(974,'Santo Tomas'),(975,'Barangay53'),(976,'Barangay54'),(977,'Barangay55'),(978,'Barangay56'),(979,'Barangay57'),(980,'Barangay58'),(981,'Barangay59'),(982,'Barangay6'),(983,'Barangay 391'),(984,'Barangay60'),(985,'Barangay 392'),(986,'Barangay61'),(987,'Barangay 637'),(988,'Barangay62'),(989,'Barangay63'),(990,'Barangay 638'),(991,'Barangay 393'),(992,'Barangay64'),(993,'Barangay 639'),(994,'Barangay 394'),(995,'Barangay65'),(996,'Barangay66'),(997,'Barangay 64'),(998,'Barangay67'),(999,'Barangay68'),(1000,'Barangay 640'),(1001,'Barangay69'),(1002,'Barangay7'),(1003,'Barangay 641'),(1004,'Barangay70'),(1005,'Barangay71'),(1006,'Barangay 642'),(1007,'Barangay72'),(1008,'Barangay 643'),(1009,'Barangay 644'),(1010,'Barangay73'),(1011,'Barangay74'),(1012,'Barangay75'),(1013,'Barangay76'),(1014,'Barangay77'),(1015,'Barangay78'),(1016,'Barangay 645'),(1017,'Barangay 395'),(1018,'Barangay 646'),(1019,'Barangay 396'),(1020,'Barangay 647'),(1021,'Barangay79'),(1022,'Barangay 397'),(1023,'Santolan'),(1024,'Barangay8'),(1025,'Barangay 648'),(1026,'Barangay 398'),(1027,'Barangay80'),(1028,'Sumilang'),(1029,'Barangay 399'),(1030,'Barangay81'),(1031,'Ugong'),(1032,'Barangay 4'),(1033,'Barangay 649'),(1034,'Aguho'),(1035,'Barangay 400'),(1036,'Barangay 65'),(1037,'Magtanggol'),(1038,'Barangay 401'),(1039,'Barangay 650'),(1040,'Barangay 402'),(1041,'Barangay 651'),(1042,'Barangay 403'),(1043,'Barangay 652'),(1044,'Barangay 653'),(1045,'Barangay 654'),(1046,'Barangay 655'),(1047,'Barangay 656'),(1048,'Barangay 404'),(1049,'Barangay 657'),(1050,'Barangay 658'),(1051,'Barangay 405'),(1052,'Barangay 659'),(1053,'Barangay 406'),(1054,'Barangay 659-A'),(1055,'Barangay 407'),(1056,'Barangay 408'),(1057,'Barangay 409'),(1058,'Barangay82'),(1059,'Barangay 66'),(1060,'Barangay 41'),(1061,'Barangay83'),(1062,'Barangay84'),(1063,'Barangay 660'),(1064,'Barangay 410'),(1065,'Barangay 660-A'),(1066,'Barangay 411'),(1067,'Barangay 661'),(1068,'Barangay 412'),(1069,'Barangay 662'),(1070,'Barangay 413'),(1071,'Barangay 663'),(1072,'Barangay 414'),(1073,'Barangay 663-A'),(1074,'Barangay 415'),(1075,'Barangay 664'),(1076,'Barangay 664-A'),(1077,'Barangay 666'),(1078,'Barangay 667'),(1079,'Barangay 416'),(1080,'Barangay 668'),(1081,'Barangay 417'),(1082,'Barangay 669'),(1083,'Barangay 418'),(1084,'Barangay 419'),(1085,'Barangay85'),(1086,'Barangay 67'),(1087,'Barangay86'),(1088,'Barangay 670'),(1089,'Barangay87'),(1090,'Barangay88'),(1091,'Martires del 96'),(1092,'Barangay89'),(1093,'Poblacion'),(1094,'Barangay9'),(1095,'Barangay90'),(1096,'San Pedro'),(1097,'Barangay91'),(1098,'San Roque'),(1099,'Barangay92'),(1100,'Barangay93'),(1101,'Santa Ana'),(1102,'Barangay94'),(1103,'Santo Rosario-Kanluran'),(1104,'Barangay95'),(1105,'Santo Rosario-Silangan'),(1106,'Tabacalera'),(1107,'Barangay96'),(1108,'Barangay 42'),(1109,'Alicia'),(1110,'Barangay97'),(1111,'Barangay 420'),(1112,'Barangay98'),(1113,'Barangay99'),(1114,'Barangay 421'),(1115,'Barangay 2'),(1116,'Barangay 422'),(1117,'Amihan'),(1118,'Barangay 423'),(1119,'Barangay 671'),(1120,'Barangay 424'),(1121,'Barangay 672'),(1122,'Barangay 20'),(1123,'Barangay 425'),(1124,'Barangay 673'),(1125,'Barangay 200'),(1126,'Barangay 426'),(1127,'Barangay 674'),(1128,'Barangay 427'),(1129,'Barangay 675'),(1130,'Barangay 676'),(1131,'Barangay 677'),(1132,'Barangay 678'),(1133,'Barangay 679'),(1134,'Barangay 428'),(1135,'Barangay 68'),(1136,'Barangay 429'),(1137,'Barangay 680'),(1138,'Barangay 43'),(1139,'Barangay 430'),(1140,'Apolonio Samson'),(1141,'Barangay 431'),(1142,'Barangay 681'),(1143,'Aurora'),(1144,'Barangay 432'),(1145,'Barangay 682'),(1146,'Baesa'),(1147,'Barangay 433'),(1148,'Barangay 201'),(1149,'Barangay 683'),(1150,'Barangay 434'),(1151,'Barangay 21'),(1152,'Barangay 684'),(1153,'Barangay 435'),(1154,'Barangay 22'),(1155,'Barangay 685'),(1156,'Barangay 23'),(1157,'Barangay 686'),(1158,'Barangay 24'),(1159,'Barangay 25'),(1160,'Barangay 687'),(1161,'Barangay 26'),(1162,'Barangay 688'),(1163,'Barangay 689'),(1164,'Barangay 69'),(1165,'Barangay 690'),(1166,'Barangay 691'),(1167,'Barangay 692'),(1168,'Bagbag'),(1169,'Barangay 436'),(1170,'Barangay 693'),(1171,'Barangay 437'),(1172,'Barangay 438'),(1173,'Barangay 439'),(1174,'Barangay 694'),(1175,'Barangay 695'),(1176,'Barangay 696'),(1177,'Barangay 697'),(1178,'Barangay 44'),(1179,'Barangay 698'),(1180,'Barangay 440'),(1181,'Barangay 699'),(1182,'Barangay 441'),(1183,'Barangay 7'),(1184,'Barangay 70'),(1185,'Barangay 442'),(1186,'Barangay 700'),(1187,'Barangay 443'),(1188,'Bagong Lipunan ng Crame'),(1189,'Barangay 444'),(1190,'Bagong Pag-asa'),(1191,'Barangay 27'),(1192,'Bagong Silangan'),(1193,'Barangay 28'),(1194,'Barangay 701'),(1195,'Barangay 29'),(1196,'Bagumbayan'),(1197,'Barangay 3'),(1198,'Bagumbuhay'),(1199,'Barangay 445'),(1200,'Bahay Toro'),(1201,'Barangay 446'),(1202,'Balingasa'),(1203,'Barangay 702'),(1204,'Barangay 703'),(1205,'Balong Bato'),(1206,'Batasan Hills'),(1207,'Barangay 704'),(1208,'Bayanihan'),(1209,'Barangay 705'),(1210,'Barangay 447'),(1211,'Barangay 706'),(1212,'Barangay 707'),(1213,'Barangay 448'),(1214,'Barangay 708'),(1215,'Barangay 709'),(1216,'Barangay 449'),(1217,'Barangay 71'),(1218,'Barangay 45'),(1219,'Barangay 450'),(1220,'Barangay 710'),(1221,'Barangay 711'),(1222,'Barangay 712'),(1223,'Blue Ridge A'),(1224,'Barangay 713'),(1225,'Barangay 714'),(1226,'Blue Ridge B'),(1227,'Barangay 451'),(1228,'Barangay 715'),(1229,'Botocan'),(1230,'Barangay 452'),(1231,'Barangay 453'),(1232,'Barangay 454'),(1233,'Barangay 716'),(1234,'Barangay 455'),(1235,'Barangay 717'),(1236,'Bungad'),(1237,'Barangay 456'),(1238,'Barangay 718'),(1239,'Barangay 457'),(1240,'Barangay 719'),(1241,'Barangay 458'),(1242,'Pariancillo Villa'),(1243,'Barangay 72'),(1244,'Barangay 459'),(1245,'Paso de Blas'),(1246,'Barangay 720'),(1247,'Barangay 46'),(1248,'Pasolo'),(1249,'Barangay 721'),(1250,'Barangay 460'),(1251,'Poblacion'),(1252,'Barangay 722'),(1253,'Barangay 461'),(1254,'Pulo'),(1255,'Barangay 723'),(1256,'Punturin'),(1257,'Rincon'),(1258,'Barangay 724'),(1259,'Tagalag'),(1260,'Barangay 462'),(1261,'Ugong'),(1262,'Barangay 725'),(1263,'Viente Reales'),(1264,'Barangay 726'),(1265,'Barangay 463'),(1266,'Wawang Pulo'),(1267,'Barangay 727'),(1268,'Barangay 464'),(1269,'Barangay0'),(1270,'Barangay 465'),(1271,'Barangay00'),(1272,'Barangay 466'),(1273,'Barangay01'),(1274,'Barangay 467'),(1275,'Barangay 468'),(1276,'Barangay 728'),(1277,'Camp Aguinaldo'),(1278,'Barangay 469'),(1279,'Barangay 729'),(1280,'Barangay 47'),(1281,'Barangay 73'),(1282,'Barangay 470'),(1283,'Barangay 730'),(1284,'Barangay 471'),(1285,'Capri'),(1286,'Barangay 731'),(1287,'Barangay 472'),(1288,'Central'),(1289,'Barangay 473'),(1290,'Claro'),(1291,'Barangay 474'),(1292,'Commonwealth'),(1293,'Culiat'),(1294,'Barangay02'),(1295,'Barangay03'),(1296,'Barangay04'),(1297,'Damar'),(1298,'Barangay05'),(1299,'Damayan'),(1300,'Barangay06'),(1301,'Barangay07'),(1302,'Damayang Lagi'),(1303,'Barangay08'),(1304,'Del Monte'),(1305,'Barangay09'),(1306,'Dioquino Zobel'),(1307,'Barangay1'),(1308,'Barangay10'),(1309,'Don Manuel'),(1310,'Barangay 732'),(1311,'Barangay11'),(1312,'Doña Imelda'),(1313,'Barangay 733'),(1314,'Barangay12'),(1315,'Doña Josefa'),(1316,'Barangay 734'),(1317,'Barangay13'),(1318,'Duyan-duyan'),(1319,'Barangay 735'),(1320,'Barangay14'),(1321,'Barangay 736'),(1322,'Barangay15'),(1323,'Barangay 737'),(1324,'Barangay 738'),(1325,'Barangay 739'),(1326,'Barangay32'),(1327,'Barangay33'),(1328,'Barangay 74'),(1329,'Barangay34'),(1330,'Barangay 740'),(1331,'Barangay35'),(1332,'Barangay 741'),(1333,'Barangay36'),(1334,'Barangay 742'),(1335,'Barangay 743'),(1336,'Barangay37'),(1337,'Barangay 744'),(1338,'Barangay38'),(1339,'Barangay16'),(1340,'Barangay39'),(1341,'Barangay17'),(1342,'E. Rodriguez'),(1343,'Barangay 745'),(1344,'Barangay18'),(1345,'East Kamias'),(1346,'Barangay19'),(1347,'Barangay2'),(1348,'Escopa I'),(1349,'Barangay20'),(1350,'Barangay21'),(1351,'Barangay22'),(1352,'Barangay23'),(1353,'Barangay 746'),(1354,'Escopa II'),(1355,'Barangay24'),(1356,'Barangay 747'),(1357,'Barangay25'),(1358,'Barangay26'),(1359,'Barangay 748'),(1360,'Escopa III'),(1361,'Barangay27'),(1362,'Barangay4'),(1363,'Escopa IV'),(1364,'Barangay 749'),(1365,'Barangay40'),(1366,'Barangay 75'),(1367,'Barangay 750'),(1368,'Barangay41'),(1369,'Barangay28'),(1370,'Barangay42'),(1371,'Barangay29'),(1372,'Barangay3'),(1373,'Barangay43'),(1374,'Barangay 751'),(1375,'Barangay30'),(1376,'Barangay44'),(1377,'Barangay 752'),(1378,'Barangay45'),(1379,'Barangay 753'),(1380,'Barangay46'),(1381,'Barangay 754'),(1382,'Barangay47'),(1383,'Barangay 755'),(1384,'Barangay48'),(1385,'Barangay 756'),(1386,'Barangay49'),(1387,'Barangay 757'),(1388,'Barangay5'),(1389,'Barangay 758'),(1390,'Barangay50'),(1391,'Barangay 759'),(1392,'Barangay51'),(1393,'Barangay 76'),(1394,'Barangay52'),(1395,'Barangay 760'),(1396,'Barangay53'),(1397,'Barangay54'),(1398,'Barangay55'),(1399,'Barangay56'),(1400,'Barangay57'),(1401,'Barangay31'),(1402,'Fairview'),(1403,'Barangay32'),(1404,'Greater Lagro'),(1405,'Barangay33'),(1406,'Barangay34'),(1407,'Gulod'),(1408,'Barangay35'),(1409,'Holy Spirit'),(1410,'Barangay36'),(1411,'Horseshoe'),(1412,'Barangay37'),(1413,'Barangay58'),(1414,'Immaculate Concepcion'),(1415,'Barangay38'),(1416,'Barangay59'),(1417,'Barangay6'),(1418,'Barangay60'),(1419,'Barangay61'),(1420,'Barangay62'),(1421,'Barangay63'),(1422,'Barangay39'),(1423,'Barangay64'),(1424,'Barangay4'),(1425,'Barangay65'),(1426,'Barangay40'),(1427,'Barangay66'),(1428,'Barangay41'),(1429,'Barangay42'),(1430,'Barangay67'),(1431,'Barangay43'),(1432,'Barangay68'),(1433,'Kaligayahan'),(1434,'Barangay69'),(1435,'Kalusugan'),(1436,'Barangay7'),(1437,'Kamuning'),(1438,'Katipunan'),(1439,'Barangay70'),(1440,'Kaunlaran'),(1441,'Barangay71'),(1442,'Barangay72'),(1443,'Kristong Hari'),(1444,'Barangay73'),(1445,'Krus na Ligas'),(1446,'Barangay74'),(1447,'Laging Handa'),(1448,'Barangay75'),(1449,'Libis'),(1450,'Barangay76'),(1451,'Lourdes'),(1452,'Barangay77'),(1453,'Barangay78'),(1454,'Barangay44'),(1455,'Loyola Heights'),(1456,'Barangay45'),(1457,'Maharlika'),(1458,'Barangay46'),(1459,'Barangay47'),(1460,'Malaya'),(1461,'Barangay48'),(1462,'Mangga'),(1463,'Barangay49'),(1464,'Manresa'),(1465,'Barangay 761'),(1466,'Mariana'),(1467,'Mariblo'),(1468,'Marilag'),(1469,'Barangay 762'),(1470,'Masagana'),(1471,'Barangay 763'),(1472,'Masambong'),(1473,'Barangay 764'),(1474,'Matandang Balara'),(1475,'Barangay 765'),(1476,'Barangay5'),(1477,'Milagrosa'),(1478,'Barangay 766'),(1479,'Barangay50'),(1480,'N. S. Amoranto'),(1481,'Barangay 767'),(1482,'Barangay51'),(1483,'Nagkaisang Nayon'),(1484,'Barangay52'),(1485,'Barangay53'),(1486,'Barangay54'),(1487,'Barangay55'),(1488,'Barangay56'),(1489,'Barangay57'),(1490,'Barangay58'),(1491,'Barangay59'),(1492,'Barangay6'),(1493,'Barangay79'),(1494,'Barangay60'),(1495,'Barangay61'),(1496,'Barangay8'),(1497,'Barangay62'),(1498,'Barangay80'),(1499,'Barangay81'),(1500,'Barangay82'),(1501,'Barangay83'),(1502,'Barangay 768'),(1503,'Barangay84'),(1504,'Barangay 769'),(1505,'Barangay85'),(1506,'Barangay 77'),(1507,'Barangay86'),(1508,'Barangay 770'),(1509,'Nayong Kanluran'),(1510,'Barangay87'),(1511,'Barangay 771'),(1512,'New Era'),(1513,'Barangay88'),(1514,'North Fairview'),(1515,'Barangay89'),(1516,'Novaliches Proper'),(1517,'Barangay9'),(1518,'Barangay90'),(1519,'Obrero'),(1520,'Barangay91'),(1521,'Barangay63'),(1522,'Old Capitol Site'),(1523,'Barangay92'),(1524,'Barangay64'),(1525,'Barangay 772'),(1526,'Barangay65'),(1527,'Barangay66'),(1528,'Barangay67'),(1529,'Barangay68'),(1530,'Paang Bundok'),(1531,'Barangay69'),(1532,'Barangay7'),(1533,'Barangay70'),(1534,'Pag-ibig sa Nayon'),(1535,'Barangay71'),(1536,'Barangay72'),(1537,'Paligsahan'),(1538,'Barangay73'),(1539,'Paltok'),(1540,'Pansol'),(1541,'Paraiso'),(1542,'Pasong Putik Proper'),(1543,'Barangay74'),(1544,'Barangay 445'),(1545,'Pasong Tamo'),(1546,'Barangay75'),(1547,'Payatas'),(1548,'Barangay 446'),(1549,'Barangay76'),(1550,'Phil-Am'),(1551,'Barangay 447'),(1552,'Pinagkaisahan'),(1553,'Barangay 448'),(1554,'Pinyahan'),(1555,'Barangay 449'),(1556,'Project 6'),(1557,'Barangay93'),(1558,'Quirino 2-A'),(1559,'Barangay94'),(1560,'Barangay95'),(1561,'Barangay96'),(1562,'Quirino 2-B'),(1563,'Barangay97'),(1564,'Quirino 2-C'),(1565,'Quirino 3-A'),(1566,'Ramon Magsaysay'),(1567,'Roxas'),(1568,'Sacred Heart'),(1569,'Barangay77'),(1570,'Saint Ignatius'),(1571,'Barangay78'),(1572,'Barangay 45'),(1573,'Saint Peter'),(1574,'Barangay79'),(1575,'Barangay8'),(1576,'Salvacion'),(1577,'Barangay 450'),(1578,'Barangay98'),(1579,'San Agustin'),(1580,'Barangay 451'),(1581,'Barangay99'),(1582,'Barangay 452'),(1583,'Barangay 2'),(1584,'Barangay 453'),(1585,'Barangay 20'),(1586,'Barangay 454'),(1587,'Barangay 200'),(1588,'Barangay 455'),(1589,'Barangay80'),(1590,'Barangay 201'),(1591,'Barangay81'),(1592,'Barangay82'),(1593,'Barangay 202'),(1594,'Barangay83'),(1595,'Barangay 202-A'),(1596,'Barangay84'),(1597,'San Antonio'),(1598,'Barangay 203'),(1599,'San Bartolome'),(1600,'Barangay 204'),(1601,'San Isidro'),(1602,'Barangay 205'),(1603,'Barangay 206'),(1604,'San Isidro Labrador'),(1605,'Barangay 207'),(1606,'San Jose'),(1607,'Barangay 208'),(1608,'San Martin de Porres'),(1609,'Barangay 209'),(1610,'San Roque'),(1611,'Barangay85'),(1612,'Barangay 210'),(1613,'Barangay86'),(1614,'Barangay 211'),(1615,'Barangay 212'),(1616,'Barangay 213'),(1617,'Barangay87'),(1618,'Barangay 214'),(1619,'Barangay88'),(1620,'Barangay 215'),(1621,'Barangay9'),(1622,'Barangay 2'),(1623,'Barangay 216'),(1624,'Barangay 20'),(1625,'San Vicente'),(1626,'Barangay 217'),(1627,'Sangandaan'),(1628,'Barangay 218'),(1629,'Santa Cruz'),(1630,'Barangay 219'),(1631,'Santa Lucia'),(1632,'Barangay 220'),(1633,'Barangay 221'),(1634,'Santa Monica'),(1635,'Barangay 222'),(1636,'Santa Teresita'),(1637,'Barangay 223'),(1638,'Santo Cristo'),(1639,'Barangay 21'),(1640,'Barangay 224'),(1641,'Santo Domingo'),(1642,'Barangay 22'),(1643,'Barangay 225'),(1644,'Santo Niño'),(1645,'Barangay 23'),(1646,'Barangay 24'),(1647,'Barangay 226'),(1648,'Barangay 25'),(1649,'Barangay 26'),(1650,'Barangay 227'),(1651,'Santol'),(1652,'Barangay 228'),(1653,'Sauyo'),(1654,'Barangay 229'),(1655,'Barangay 230'),(1656,'Barangay 231'),(1657,'Barangay 232'),(1658,'Barangay 233'),(1659,'Barangay 234'),(1660,'Barangay 235'),(1661,'Barangay 236'),(1662,'Barangay 237'),(1663,'Barangay 238'),(1664,'Barangay 239'),(1665,'Barangay 240'),(1666,'Barangay 241'),(1667,'Barangay 242'),(1668,'Sienna'),(1669,'Barangay 456'),(1670,'Sikatuna Village'),(1671,'Barangay 457'),(1672,'Silangan'),(1673,'Barangay 458'),(1674,'Socorro'),(1675,'Barangay 459'),(1676,'South Triangle'),(1677,'Barangay 46'),(1678,'Tagumpay'),(1679,'Barangay 460'),(1680,'Talayan'),(1681,'Barangay 461'),(1682,'Talipapa'),(1683,'Barangay 462'),(1684,'Tandang Sora'),(1685,'Barangay 463'),(1686,'Tatalon'),(1687,'Barangay 464'),(1688,'Teachers Village East'),(1689,'Barangay 465'),(1690,'Barangay 466'),(1691,'Barangay 27'),(1692,'Barangay 467'),(1693,'Barangay 28'),(1694,'Teachers Village West'),(1695,'Barangay 468'),(1696,'Barangay 469'),(1697,'Barangay 47'),(1698,'U.P. Campus'),(1699,'Barangay 243'),(1700,'Barangay 29'),(1701,'Barangay 470'),(1702,'U.P. Village'),(1703,'Barangay 244'),(1704,'Barangay 3'),(1705,'Barangay 471'),(1706,'Barangay 245'),(1707,'Barangay 30'),(1708,'Barangay 472'),(1709,'Barangay 246'),(1710,'Barangay 473'),(1711,'Barangay 247'),(1712,'Barangay 474'),(1713,'Barangay 248'),(1714,'Barangay 475'),(1715,'Barangay 249'),(1716,'Barangay 476'),(1717,'Barangay 25'),(1718,'Barangay 477'),(1719,'Barangay 250'),(1720,'Barangay 251'),(1721,'Barangay 252'),(1722,'Barangay 253'),(1723,'Barangay 254'),(1724,'Barangay 255'),(1725,'Barangay 256'),(1726,'Ugong Norte'),(1727,'Barangay 257'),(1728,'Unang Sigaw'),(1729,'Barangay 31'),(1730,'Barangay 258'),(1731,'Valencia'),(1732,'Barangay 259'),(1733,'Vasra'),(1734,'Barangay 26'),(1735,'Veterans Village'),(1736,'Villa Maria Clara'),(1737,'West Kamias'),(1738,'West Triangle'),(1739,'White Plains'),(1740,'Barangay 478'),(1741,'Addition Hills'),(1742,'Barangay 479'),(1743,'Barangay 48'),(1744,'Barangay 480'),(1745,'Barangay 481'),(1746,'Barangay 482'),(1747,'Barangay 483'),(1748,'Barangay 484'),(1749,'Barangay 485'),(1750,'Barangay 486'),(1751,'Barangay 32'),(1752,'Barangay 487'),(1753,'Barangay 33'),(1754,'Barangay 34'),(1755,'Barangay 488'),(1756,'Barangay 489'),(1757,'Barangay 49'),(1758,'Barangay 260'),(1759,'Barangay 490'),(1760,'Barangay 261'),(1761,'Barangay 491'),(1762,'Barangay 262'),(1763,'Barangay 492'),(1764,'Barangay 263'),(1765,'Barangay 493'),(1766,'Barangay 264'),(1767,'Barangay 35'),(1768,'Barangay 494'),(1769,'Barangay 265'),(1770,'Barangay 36'),(1771,'Barangay 266'),(1772,'Barangay 495'),(1773,'Barangay 37'),(1774,'Barangay 267'),(1775,'Barangay 496'),(1776,'Barangay 38'),(1777,'Barangay 268'),(1778,'Barangay 39'),(1779,'Barangay 497'),(1780,'Barangay 269'),(1781,'Barangay 4'),(1782,'Barangay 498'),(1783,'Barangay 270'),(1784,'Barangay 40'),(1785,'Barangay 499'),(1786,'Barangay 271'),(1787,'Barangay 41'),(1788,'Barangay 5'),(1789,'Barangay 272'),(1790,'Barangay 42'),(1791,'Barangay 50'),(1792,'Barangay 273'),(1793,'Barangay 43'),(1794,'Barangay 500'),(1795,'Barangay 274'),(1796,'Barangay 501'),(1797,'Barangay 275'),(1798,'Barangay 502'),(1799,'Balong-Bato'),(1800,'Barangay 276'),(1801,'Barangay 503'),(1802,'Barangay 28'),(1803,'Barangay 504'),(1804,'Barangay 505'),(1805,'Barangay 44'),(1806,'Barangay 506'),(1807,'Barangay 45'),(1808,'Barangay 507'),(1809,'Barangay 46'),(1810,'Barangay 508'),(1811,'Batis'),(1812,'Barangay 47'),(1813,'Barangay 48'),(1814,'Barangay 509'),(1815,'Barangay 49'),(1816,'Barangay 51'),(1817,'Barangay 5'),(1818,'Barangay 50'),(1819,'Barangay 510'),(1820,'Barangay 51'),(1821,'Barangay 511'),(1822,'Barangay 52'),(1823,'Barangay 53'),(1824,'Barangay 512'),(1825,'Barangay 54'),(1826,'Barangay 513'),(1827,'Barangay 514'),(1828,'Barangay 281'),(1829,'Barangay 282'),(1830,'Corazon de Jesus'),(1831,'Barangay 283'),(1832,'Ermitaño'),(1833,'Barangay 284'),(1834,'Greenhills'),(1835,'Barangay 285'),(1836,'Halo-halo'),(1837,'Barangay 286'),(1838,'Barangay 515'),(1839,'Barangay 287'),(1840,'Barangay 516'),(1841,'Barangay 288'),(1842,'Barangay 517'),(1843,'Barangay 289'),(1844,'Barangay 518'),(1845,'Barangay 29'),(1846,'Barangay 519'),(1847,'Barangay 290'),(1848,'Barangay 52'),(1849,'Barangay 291'),(1850,'Barangay 520'),(1851,'Barangay 292'),(1852,'Barangay 521'),(1853,'Barangay 522'),(1854,'Barangay 293'),(1855,'Barangay 523'),(1856,'Barangay 294'),(1857,'Barangay 524'),(1858,'Barangay 295'),(1859,'Barangay 525'),(1860,'Barangay 296'),(1861,'Barangay 55'),(1862,'Barangay 297'),(1863,'Barangay 56'),(1864,'Barangay 298'),(1865,'Barangay 299'),(1866,'Barangay 3'),(1867,'Isabelita'),(1868,'Barangay 30'),(1869,'Barangay 526'),(1870,'Kabayanan'),(1871,'Barangay 300'),(1872,'Barangay 527'),(1873,'Barangay 301'),(1874,'Barangay 528'),(1875,'Barangay 529'),(1876,'Barangay 302'),(1877,'Barangay 53'),(1878,'Barangay 303'),(1879,'Barangay 530'),(1880,'Barangay 304'),(1881,'Barangay 531'),(1882,'Little Baguio'),(1883,'Barangay 305'),(1884,'Barangay 532'),(1885,'Maytunas'),(1886,'Barangay 306'),(1887,'Onse'),(1888,'Barangay 307'),(1889,'Pasadeña'),(1890,'Pedro Cruz'),(1891,'Barangay 308'),(1892,'Barangay 309'),(1893,'Barangay 31'),(1894,'Progreso'),(1895,'Barangay 310'),(1896,'Rivera'),(1897,'Barangay 311'),(1898,'Salapan'),(1899,'Barangay 312'),(1900,'San Perfecto'),(1901,'Barangay 533'),(1902,'Barangay 313'),(1903,'Santa Lucia'),(1904,'Barangay 534'),(1905,'Barangay 314'),(1906,'Tibagan'),(1907,'West Crame'),(1908,'Bagumbayan'),(1909,'Bambang'),(1910,'Calzada'),(1911,'Central Bicutan'),(1912,'Central Signal Village'),(1913,'Barangay 57'),(1914,'Fort Bonifacio'),(1915,'Barangay 58'),(1916,'Barangay 59'),(1917,'Barangay 6'),(1918,'Barangay 60'),(1919,'Barangay 61'),(1920,'Barangay 62'),(1921,'Barangay 63'),(1922,'Barangay 64'),(1923,'Barangay 65'),(1924,'Hagonoy'),(1925,'Barangay 66'),(1926,'Barangay 535'),(1927,'Barangay 67'),(1928,'Ibayo-Tipas'),(1929,'Barangay 68'),(1930,'Barangay 536'),(1931,'Barangay 69'),(1932,'Barangay 7'),(1933,'Barangay 70'),(1934,'Barangay 71'),(1935,'Barangay 72'),(1936,'Barangay 73'),(1937,'Barangay 74'),(1938,'Barangay 75'),(1939,'Barangay 76'),(1940,'Barangay 77'),(1941,'Katuparan'),(1942,'Barangay 78'),(1943,'Barangay 79'),(1944,'Ligid-Tipas'),(1945,'Barangay 537'),(1946,'Barangay 8'),(1947,'Lower Bicutan'),(1948,'Barangay 538'),(1949,'Maharlika Village'),(1950,'Barangay 539'),(1951,'Napindan'),(1952,'Barangay 54'),(1953,'New Lower Bicutan'),(1954,'Barangay 540'),(1955,'North Daang Hari'),(1956,'Barangay 541'),(1957,'North Signal Village'),(1958,'Barangay 542'),(1959,'Palingon'),(1960,'Barangay 543'),(1961,'Pinagsama'),(1962,'Barangay 544'),(1963,'San Miguel'),(1964,'Barangay 545'),(1965,'Barangay 546'),(1966,'Barangay 547'),(1967,'Barangay 315'),(1968,'Barangay 548'),(1969,'Santa Ana'),(1970,'Barangay 316'),(1971,'Barangay 549'),(1972,'Barangay 317'),(1973,'Barangay 55'),(1974,'Barangay 318'),(1975,'Barangay 550'),(1976,'Barangay 319'),(1977,'Barangay 551'),(1978,'Barangay 32'),(1979,'Barangay 552'),(1980,'Barangay 320'),(1981,'Barangay 553'),(1982,'Barangay 321'),(1983,'Barangay 554'),(1984,'Barangay 322'),(1985,'Barangay 555'),(1986,'South Daang Hari'),(1987,'Barangay 323'),(1988,'Barangay 556'),(1989,'Barangay 324'),(1990,'Barangay 557'),(1991,'Barangay 325'),(1992,'Barangay 558'),(1993,'Barangay 559'),(1994,'Barangay 56'),(1995,'Barangay 560'),(1996,'Barangay 561'),(1997,'Barangay 562'),(1998,'Barangay 326'),(1999,'Barangay 563'),(2000,'Barangay 327'),(2001,'Barangay 564'),(2002,'Barangay 328'),(2003,'Barangay 565'),(2004,'Barangay 329'),(2005,'Barangay 566'),(2006,'Barangay 33'),(2007,'Barangay 567'),(2008,'Barangay 330'),(2009,'Barangay 331'),(2010,'Barangay 80'),(2011,'Barangay 81'),(2012,'Barangay 82'),(2013,'Barangay 332'),(2014,'Barangay 83'),(2015,'Barangay 333'),(2016,'Barangay 84'),(2017,'Barangay 85'),(2018,'Barangay 334'),(2019,'Barangay 86'),(2020,'Barangay 335'),(2021,'Barangay 87'),(2022,'Barangay 88'),(2023,'Barangay 336'),(2024,'Barangay 89'),(2025,'Barangay 337'),(2026,'Barangay 9'),(2027,'Barangay 568'),(2028,'Barangay 90'),(2029,'Barangay 91'),(2030,'Barangay 569'),(2031,'Barangay 92'),(2032,'Barangay 338'),(2033,'Barangay 57'),(2034,'Barangay 339'),(2035,'Barangay 570'),(2036,'South Signal Village'),(2037,'Barangay 34'),(2038,'Barangay 571'),(2039,'Barangay 340'),(2040,'Barangay 93'),(2041,'Barangay 572'),(2042,'Barangay 341'),(2043,'Barangay 94'),(2044,'Barangay 573'),(2045,'Barangay 342'),(2046,'Barangay 95'),(2047,'Barangay 574'),(2048,'Barangay 343'),(2049,'Barangay 575'),(2050,'Barangay 344'),(2051,'Barangay 576'),(2052,'Barangay 345'),(2053,'Barangay 96'),(2054,'Barangay 577'),(2055,'Barangay 346'),(2056,'Barangay 97'),(2057,'Barangay 578'),(2058,'Barangay 347'),(2059,'Barangay 98'),(2060,'Barangay 579'),(2061,'Barangay 348'),(2062,'Barangay 99'),(2063,'Barangay 349'),(2064,'Almanza Dos'),(2065,'Almanza Uno'),(2066,'B. F. International Village'),(2067,'Tanyag'),(2068,'Daniel Fajardo'),(2069,'Elias Aldana'),(2070,'Tuktukan'),(2071,'Ilaya'),(2072,'Upper Bicutan'),(2073,'Manuyo Dos'),(2074,'Manuyo Uno'),(2075,'Pamplona Dos'),(2076,'Barangay 35'),(2077,'Barangay 350'),(2078,'Ususan'),(2079,'Barangay 351'),(2080,'Pamplona Tres'),(2081,'Wawa'),(2082,'Barangay 352'),(2083,'Pamplona Uno'),(2084,'Western Bicutan'),(2085,'Barangay 353'),(2086,'Arkong Bato'),(2087,'Barangay 354'),(2088,'Bagbaguin'),(2089,'Barangay 355'),(2090,'Balangkas'),(2091,'Barangay 58'),(2092,'Barangay 356'),(2093,'Bignay'),(2094,'Barangay 580'),(2095,'Barangay 357'),(2096,'Barangay 581'),(2097,'Barangay 358'),(2098,'Barangay 582'),(2099,'Barangay 359'),(2100,'Barangay 583'),(2101,'Barangay 36'),(2102,'Barangay 584'),(2103,'Barangay 360'),(2104,'Barangay 585'),(2105,'Barangay 586'),(2106,'Barangay 587'),(2107,'Barangay 587-A'),(2108,'Barangay 361'),(2109,'Barangay 588'),(2110,'Barangay 362'),(2111,'Barangay 589'),(2112,'Barangay 363'),(2113,'Barangay 59'),(2114,'Bisig'),(2115,'Barangay 364'),(2116,'Barangay 590'),(2117,'Canumay East'),(2118,'Barangay 365'),(2119,'Barangay 591'),(2120,'Barangay 366'),(2121,'Barangay 592'),(2122,'Barangay 593'),(2123,'Barangay 594'),(2124,'Pilar'),(2125,'Barangay 595'),(2126,'Barangay 367'),(2127,'Pulang Lupa Dos'),(2128,'Barangay 368'),(2129,'Pulang Lupa Uno'),(2130,'Barangay 369'),(2131,'Talon Dos'),(2132,'Barangay 37'),(2133,'Talon Kuatro'),(2134,'Barangay 596'),(2135,'Barangay 370'),(2136,'Barangay 597'),(2137,'Barangay 371'),(2138,'Barangay 598'),(2139,'Barangay 372'),(2140,'Talon Singko'),(2141,'Barangay 599'),(2142,'Talon Tres'),(2143,'Barangay 6'),(2144,'Talon Uno'),(2145,'Barangay 373'),(2146,'Barangay 60'),(2147,'Zapote'),(2148,'Barangay 374'),(2149,'Bangkal'),(2150,'Barangay 600'),(2151,'Barangay 375'),(2152,'Bel-Air'),(2153,'Barangay 601'),(2154,'Barangay 376'),(2155,'Barangay 602'),(2156,'Barangay 377'),(2157,'Barangay 603'),(2158,'Carmona'),(2159,'Barangay 378'),(2160,'Barangay 604'),(2161,'Cembo'),(2162,'Barangay 379'),(2163,'Comembo'),(2164,'Barangay 605'),(2165,'Dasmariñas'),(2166,'Barangay 606'),(2167,'East Rembo'),(2168,'Forbes Park'),(2169,'Barangay 607'),(2170,'Guadalupe Nuevo'),(2171,'Guadalupe Viejo'),(2172,'Barangay 608'),(2173,'Barangay 38'),(2174,'Barangay 609'),(2175,'Barangay 380'),(2176,'Kasilawan'),(2177,'Barangay 381'),(2178,'La Paz'),(2179,'Magallanes'),(2180,'Barangay 382'),(2181,'Olympia'),(2182,'Barangay 383'),(2183,'Palanan'),(2184,'Canumay West'),(2185,'Coloong'),(2186,'Dalandanan'),(2187,'Gen. T. de Leon'),(2188,'Isla'),(2189,'Barangay 384'),(2190,'Pembo'),(2191,'Karuhatan'),(2192,'Barangay 61'),(2193,'Pinagkaisahan'),(2194,'Lawang Bato'),(2195,'Pio del Pilar'),(2196,'Lingunan'),(2197,'Pitogo'),(2198,'Barangay 385'),(2199,'Mabolo'),(2200,'Poblacion'),(2201,'Barangay 386'),(2202,'Post Proper Northside'),(2203,'Barangay 387'),(2204,'Post Proper Southside'),(2205,'Rizal'),(2206,'Barangay 388'),(2207,'San Antonio'),(2208,'Barangay 389'),(2209,'San Isidro'),(2210,'San Lorenzo'),(2211,'Barangay 39'),(2212,'Santa Cruz'),(2213,'Barangay 390'),(2214,'Singkamas'),(2215,'Barangay 391'),(2216,'Barangay 392'),(2217,'South Cembo'),(2218,'Barangay 393'),(2219,'Barangay 610'),(2220,'Tejeros'),(2221,'Barangay 394'),(2222,'Barangay 611'),(2223,'Barangay 395'),(2224,'Barangay 612'),(2225,'Urdaneta'),(2226,'Barangay 396'),(2227,'Valenzuela'),(2228,'West Rembo'),(2229,'Acacia'),(2230,'Baritan'),(2231,'Bayan-bayanan'),(2232,'Catmon'),(2233,'Barangay 397'),(2234,'Concepcion'),(2235,'Malanday'),(2236,'Barangay 398'),(2237,'Barangay 399'),(2238,'Barangay 4'),(2239,'Barangay 400'),(2240,'Malinta'),(2241,'Barangay 401'),(2242,'Mapulang Lupa'),(2243,'Barangay 402'),(2244,'Marulas'),(2245,'Barangay 403'),(2246,'Maysan'),(2247,'Barangay 404'),(2248,'Palasan'),(2249,'Barangay 405'),(2250,'Parada'),(2251,'Barangay 406'),(2252,'Barangay 407'),(2253,'Dampalit'),(2254,'Flores'),(2255,'Hulong Duhat'),(2256,'Ibaba'),(2257,'Longos'),(2258,'Maysilo'),(2259,'Muzon'),(2260,'Niugan'),(2261,'Panghulo'),(2262,'Barangay 613'),(2263,'Potrero'),(2264,'San Agustin'),(2265,'Barangay 614'),(2266,'Santolan'),(2267,'Barangay 615'),(2268,'Barangay 616'),(2269,'Tañong'),(2270,'Barangay 617'),(2271,'Tinajeros'),(2272,'Barangay 618'),(2273,'Tonsuya'),(2274,'Tugatog'),(2275,'Barangay 619'),(2276,'Barangay 62'),(2277,'Addition Hills'),(2278,'Bagong Silang'),(2279,'Barangka Drive'),(2280,'Barangka Ibaba'),(2281,'Barangka Ilaya'),(2282,'Barangka Itaas'),(2283,'Buayang Bato'),(2284,'Burol'),(2285,'Daang Bakal'),(2286,'Hagdang Bato Itaas'),(2287,'Hagdang Bato Libis'),(2288,'Harapin Ang Bukas'),(2289,'Highway Hills'),(2290,'Barangay 408'),(2291,'Barangay 620'),(2292,'Hulo'),(2293,'Barangay 409'),(2294,'Mabini-J. Rizal'),(2295,'Barangay 41'),(2296,'Malamig'),(2297,'Mauway'),(2298,'Barangay 410'),(2299,'Namayan'),(2300,'New Zañiga'),(2301,'Old Zañiga'),(2302,'Barangay 411'),(2303,'Pag-asa'),(2304,'Plainview'),(2305,'Barangay 412'),(2306,'Pleasant Hills'),(2307,'Barangay 413'),(2308,'Poblacion'),(2309,'San Jose'),(2310,'Barangay 414'),(2311,'Vergara'),(2312,'Barangay 415'),(2313,'Barangay 416'),(2314,'Wack-wack Greenhills'),(2315,'Barangay 417'),(2316,'Barangay'),(2317,'Barangay 418'),(2318,'Barangay0'),(2319,'Barangay00'),(2320,'Barangay01'),(2321,'Barangay02'),(2322,'Barangay03'),(2323,'Barangay 419'),(2324,'Barangay04'),(2325,'Barangay05'),(2326,'Barangay 42'),(2327,'Barangay06'),(2328,'Barangay07'),(2329,'Barangay08'),(2330,'Barangay09'),(2331,'Barangay 420'),(2332,'Barangay1'),(2333,'Barangay 421'),(2334,'Barangay10'),(2335,'Barangay 422'),(2336,'Barangay11'),(2337,'Barangay12'),(2338,'Barangay 423'),(2339,'Barangay16'),(2340,'Barangay 424'),(2341,'Barangay 425'),(2342,'Barangay 621'),(2343,'Barangay 426'),(2344,'Barangay17'),(2345,'Barangay 622'),(2346,'Barangay 427'),(2347,'Barangay18'),(2348,'Barangay 623'),(2349,'Barangay 428'),(2350,'Barangay 624'),(2351,'Barangay 429'),(2352,'Barangay 625'),(2353,'Barangay 43'),(2354,'Barangay 626'),(2355,'Barangay 430'),(2356,'Barangay 627'),(2357,'Barangay 431'),(2358,'Barangay 628'),(2359,'Barangay 629'),(2360,'Barangay 63'),(2361,'Barangay19'),(2362,'Barangay2'),(2363,'Barangay20'),(2364,'Barangay21'),(2365,'Barangay22'),(2366,'Barangay23'),(2367,'Barangay 630'),(2368,'Barangay 631'),(2369,'Barangay24'),(2370,'Barangay 632'),(2371,'Barangay25'),(2372,'Barangay 633'),(2373,'Barangay26'),(2374,'Barangay27'),(2375,'Barangay 634'),(2376,'Barangay28'),(2377,'Barangay29'),(2378,'Barangay 635'),(2379,'Barangay 636'),(2380,'Barangay 637'),(2381,'Barangay 638'),(2382,'Barangay3'),(2383,'Barangay 432'),(2384,'Barangay 639'),(2385,'Barangay30'),(2386,'Barangay 433'),(2387,'Barangay 64'),(2388,'Barangay31'),(2389,'Barangay 434'),(2390,'Barangay 640'),(2391,'Barangay 435'),(2392,'Barangay 641'),(2393,'Barangay 642'),(2394,'Barangay 436'),(2395,'Barangay 643'),(2396,'Barangay 437'),(2397,'Barangay 644'),(2398,'Barangay 438'),(2399,'Barangay 645'),(2400,'Barangay 439'),(2401,'Barangay 646'),(2402,'Barangay 647'),(2403,'Barangay 648'),(2404,'Barangay 649'),(2405,'Barangay 65'),(2406,'Barangay 650'),(2407,'Barangay 651'),(2408,'Barangay 652'),(2409,'Barangay 743'),(2410,'Barangay 653'),(2411,'Barangay 744'),(2412,'Barangay80'),(2413,'Barangay 745'),(2414,'Barangay81'),(2415,'Barangay82'),(2416,'Barangay 746'),(2417,'Barangay83'),(2418,'Barangay 747'),(2419,'Barangay84'),(2420,'Barangay 654'),(2421,'Barangay85'),(2422,'Barangay 748'),(2423,'Barangay86'),(2424,'Barangay 655'),(2425,'Barangay87'),(2426,'Barangay 749'),(2427,'Barangay88'),(2428,'Barangay89'),(2429,'Barangay 75'),(2430,'Barangay9'),(2431,'Barangay90'),(2432,'Barangay 750'),(2433,'Barangay 656'),(2434,'Barangay91'),(2435,'Barangay 751'),(2436,'Barangay92'),(2437,'Barangay 657'),(2438,'Barangay 752'),(2439,'Barangay 658'),(2440,'Barangay 753'),(2441,'Barangay 659'),(2442,'Barangay 754'),(2443,'Barangay 659-A'),(2444,'Barangay 66'),(2445,'Barangay 660'),(2446,'Barangay 660-A'),(2447,'Barangay 755'),(2448,'Barangay 661'),(2449,'Barangay 756'),(2450,'Barangay 662'),(2451,'Barangay 757'),(2452,'Barangay 663'),(2453,'Barangay 758'),(2454,'Barangay 759'),(2455,'Barangay93'),(2456,'Barangay 76'),(2457,'Barangay94'),(2458,'Barangay 663-A'),(2459,'Barangay95'),(2460,'Barangay 760'),(2461,'Barangay96'),(2462,'Barangay 44'),(2463,'Barangay 664'),(2464,'Barangay 761'),(2465,'Barangay97'),(2466,'Barangay 440'),(2467,'Barangay98'),(2468,'Barangay 441'),(2469,'Barangay 664-A'),(2470,'Barangay 762'),(2471,'Barangay99'),(2472,'Barangay 442'),(2473,'Barangay 443'),(2474,'Barangay 2'),(2475,'Barangay 666'),(2476,'Barangay 763'),(2477,'Barangay 20'),(2478,'Barangay 667'),(2479,'Barangay 200'),(2480,'Barangay 201'),(2481,'Barangay 444'),(2482,'Barangay 668'),(2483,'Barangay 669'),(2484,'Barangay 21'),(2485,'Barangay 22'),(2486,'Barangay 23'),(2487,'Barangay 24'),(2488,'Barangay 25'),(2489,'Barangay 26'),(2490,'Barangay 27'),(2491,'Barangay 28'),(2492,'Barangay 29'),(2493,'Barangay 3'),(2494,'Barangay 30'),(2495,'Barangay 31'),(2496,'Barangay 32'),(2497,'Barangay 764'),(2498,'Barangay 765'),(2499,'Barangay 33'),(2500,'Barangay 34'),(2501,'Barangay 766'),(2502,'Barangay 35'),(2503,'Barangay 67'),(2504,'Barangay 767'),(2505,'Barangay 36'),(2506,'Barangay 37'),(2507,'Barangay 768'),(2508,'Barangay 38'),(2509,'Barangay 769'),(2510,'Barangay 39'),(2511,'Barangay 670'),(2512,'Barangay 4'),(2513,'Barangay 77'),(2514,'Barangay 671'),(2515,'Barangay 40'),(2516,'Barangay 770'),(2517,'Barangay 672'),(2518,'Barangay 771'),(2519,'Pinagsama'),(2520,'Barangay 673'),(2521,'San Miguel'),(2522,'Barangay 772'),(2523,'Santa Ana'),(2524,'Barangay 674'),(2525,'South Daang Hari'),(2526,'Barangay 773'),(2527,'South Signal Village'),(2528,'Tanyag'),(2529,'Barangay 774'),(2530,'Tuktukan'),(2531,'Upper Bicutan'),(2532,'Ususan'),(2533,'Barangay 775'),(2534,'Barangay 675'),(2535,'Wawa'),(2536,'Barangay 776'),(2537,'Western Bicutan'),(2538,'Barangay 676'),(2539,'Arkong Bato'),(2540,'Bagbaguin'),(2541,'Barangay 777'),(2542,'Balangkas'),(2543,'Barangay 677'),(2544,'Bignay'),(2545,'Barangay 778'),(2546,'Bisig'),(2547,'Barangay 678'),(2548,'Canumay East'),(2549,'Canumay West'),(2550,'Barangay 779'),(2551,'Coloong'),(2552,'Barangay 679'),(2553,'Dalandanan'),(2554,'Barangay 78'),(2555,'Gen. T. de Leon'),(2556,'Barangay 68'),(2557,'Isla'),(2558,'Karuhatan'),(2559,'Barangay 780'),(2560,'Lawang Bato'),(2561,'Barangay 680'),(2562,'Lingunan'),(2563,'Barangay 781'),(2564,'Mabolo'),(2565,'Barangay 681'),(2566,'Malanday'),(2567,'Barangay 782'),(2568,'Malinta'),(2569,'Barangay 41'),(2570,'Barangay 682'),(2571,'Mapulang Lupa'),(2572,'Marulas'),(2573,'Barangay 783'),(2574,'Barangay 42'),(2575,'Maysan'),(2576,'Barangay 683'),(2577,'Palasan'),(2578,'Barangay 784'),(2579,'Parada'),(2580,'Barangay 43'),(2581,'Barangay 684'),(2582,'Pariancillo Villa'),(2583,'Paso de Blas'),(2584,'Barangay 44'),(2585,'Barangay 785'),(2586,'Pasolo'),(2587,'Barangay 685'),(2588,'Poblacion'),(2589,'Barangay 45'),(2590,'Pulo'),(2591,'Barangay 786'),(2592,'Barangay 686'),(2593,'Barangay 46'),(2594,'Punturin'),(2595,'Rincon'),(2596,'Barangay 787'),(2597,'Barangay 47'),(2598,'Barangay 48'),(2599,'Barangay 788'),(2600,'Barangay 49'),(2601,'Barangay 687'),(2602,'Barangay 789'),(2603,'Barangay 5'),(2604,'Tagalag'),(2605,'Barangay 50'),(2606,'Ugong'),(2607,'Barangay 79'),(2608,'Viente Reales'),(2609,'Barangay 51'),(2610,'Wawang Pulo'),(2611,'Barangay 52'),(2612,'Barangay 790'),(2613,'Barangay 688'),(2614,'Barangay 53'),(2615,'Barangay 791'),(2616,'Barangay 689'),(2617,'Barangay 54'),(2618,'Barangay 792'),(2619,'Barangay 69'),(2620,'Barangay 793'),(2621,'Barangay 690'),(2622,'Barangay 794'),(2623,'Barangay 691'),(2624,'Barangay 55'),(2625,'Barangay 795'),(2626,'Barangay 692'),(2627,'Barangay 56'),(2628,'Barangay 796'),(2629,'Barangay 693'),(2630,'Barangay 57'),(2631,'Barangay 797'),(2632,'Barangay 58'),(2633,'Barangay 694'),(2634,'Barangay 59'),(2635,'Barangay 798'),(2636,'Barangay 695'),(2637,'Barangay 6'),(2638,'Barangay 799'),(2639,'Barangay 696'),(2640,'Barangay 60'),(2641,'Barangay 8'),(2642,'Barangay 697'),(2643,'Barangay 61'),(2644,'Barangay 80'),(2645,'Barangay 62'),(2646,'Barangay 698'),(2647,'Barangay 63'),(2648,'Barangay 800'),(2649,'Barangay 64'),(2650,'Barangay 801'),(2651,'Barangay 65'),(2652,'Barangay 802'),(2653,'Barangay 66'),(2654,'Barangay 699'),(2655,'Barangay 67'),(2656,'Barangay 803'),(2657,'Barangay 7'),(2658,'Barangay 68'),(2659,'Barangay 804'),(2660,'Barangay 70'),(2661,'Barangay 69'),(2662,'Barangay 805'),(2663,'Barangay 700'),(2664,'Barangay 7'),(2665,'Barangay 806'),(2666,'Barangay 701'),(2667,'Barangay 807'),(2668,'Barangay 702'),(2669,'Barangay 808'),(2670,'Barangay 703'),(2671,'Barangay 809'),(2672,'Barangay 81'),(2673,'Barangay 704'),(2674,'Barangay 810'),(2675,'Barangay 811'),(2676,'Barangay 705'),(2677,'Barangay 706'),(2678,'Barangay 812'),(2679,'Barangay 707'),(2680,'Barangay 813'),(2681,'Barangay 708'),(2682,'Barangay 814'),(2683,'Barangay 709'),(2684,'Barangay 815'),(2685,'Barangay 816'),(2686,'Barangay 817'),(2687,'Barangay 71'),(2688,'Barangay 818'),(2689,'Barangay 710'),(2690,'Barangay 70'),(2691,'Barangay 818-A'),(2692,'Barangay 711'),(2693,'Barangay 71'),(2694,'Barangay 819'),(2695,'Barangay 72'),(2696,'Barangay 712'),(2697,'Barangay 73'),(2698,'Barangay 82'),(2699,'Barangay 713'),(2700,'Barangay 74'),(2701,'Barangay 820'),(2702,'Barangay 714'),(2703,'Barangay 75'),(2704,'Barangay 715'),(2705,'Barangay 821'),(2706,'Barangay 76'),(2707,'Barangay 77'),(2708,'Barangay 822'),(2709,'Barangay 716'),(2710,'Barangay 78'),(2711,'Barangay 823'),(2712,'Barangay 717'),(2713,'Barangay 79'),(2714,'Barangay 824'),(2715,'Barangay 8'),(2716,'Barangay 718'),(2717,'Barangay 80'),(2718,'Barangay 825'),(2719,'Barangay 719'),(2720,'Barangay 81'),(2721,'Barangay 826'),(2722,'Barangay 72'),(2723,'Barangay 82'),(2724,'Barangay 827'),(2725,'Barangay 720'),(2726,'Barangay 828'),(2727,'Barangay 829'),(2728,'Barangay 83'),(2729,'Barangay 830'),(2730,'Barangay 831'),(2731,'Barangay 721'),(2732,'Barangay 832'),(2733,'Barangay 833'),(2734,'Barangay 722'),(2735,'Barangay 834'),(2736,'Barangay 723'),(2737,'Barangay 724'),(2738,'Barangay 835'),(2739,'Barangay 725'),(2740,'Barangay 836'),(2741,'Barangay 726'),(2742,'Barangay 837'),(2743,'Barangay 727'),(2744,'Barangay 838'),(2745,'Barangay 83'),(2746,'Barangay 728'),(2747,'Barangay 84'),(2748,'Barangay 839'),(2749,'Barangay 85'),(2750,'Barangay 729'),(2751,'Barangay 86'),(2752,'Barangay 87'),(2753,'Barangay 84'),(2754,'Barangay 88'),(2755,'Barangay 73'),(2756,'Barangay 89'),(2757,'Barangay 840'),(2758,'Barangay 9'),(2759,'Barangay 730'),(2760,'Barangay 90'),(2761,'Barangay 841'),(2762,'Barangay 91'),(2763,'Barangay 731'),(2764,'Barangay 842'),(2765,'Barangay 843'),(2766,'Barangay 732'),(2767,'Barangay 844'),(2768,'Barangay 92'),(2769,'Barangay 93'),(2770,'Barangay 845'),(2771,'Barangay 94'),(2772,'Barangay 733'),(2773,'Barangay 95'),(2774,'Barangay 846'),(2775,'Barangay 96'),(2776,'Barangay 97'),(2777,'Barangay 734'),(2778,'Barangay 98'),(2779,'Barangay 847'),(2780,'Barangay 99'),(2781,'Barangay 735'),(2782,'Bagong Ilog'),(2783,'Barangay 848'),(2784,'Bagong Katipunan'),(2785,'Bambang'),(2786,'Barangay 736'),(2787,'Barangay 849'),(2788,'Buting'),(2789,'Caniogan'),(2790,'Barangay 85'),(2791,'Barangay 737'),(2792,'Dela Paz'),(2793,'Kalawaan'),(2794,'Barangay 850'),(2795,'Barangay 738'),(2796,'Kapasigan'),(2797,'Kapitolyo'),(2798,'Barangay 851'),(2799,'Barangay 852'),(2800,'Barangay 739'),(2801,'Barangay 853'),(2802,'Barangay 74'),(2803,'Barangay 855'),(2804,'Barangay 740'),(2805,'Barangay 856'),(2806,'Malinao'),(2807,'Barangay 741'),(2808,'Barangay 857'),(2809,'Barangay 742'),(2810,'Barangay 858'),(2811,'Barangay 859'),(2812,'Barangay 86'),(2813,'Barangay 860'),(2814,'Barangay 861'),(2815,'Barangay 862'),(2816,'Barangay 863'),(2817,'Barangay 864'),(2818,'Barangay 865'),(2819,'Barangay 866'),(2820,'Barangay 867'),(2821,'Barangay 868'),(2822,'Manggahan'),(2823,'Barangay 869'),(2824,'Maybunga'),(2825,'Oranbo'),(2826,'Barangay 87'),(2827,'Palatiw'),(2828,'Barangay 870'),(2829,'Pinagbuhatan'),(2830,'Pineda'),(2831,'Barangay 871'),(2832,'Rosario'),(2833,'Sagad'),(2834,'Barangay 872'),(2835,'San Antonio'),(2836,'Barangay 873'),(2837,'San Joaquin'),(2838,'San Jose'),(2839,'San Miguel'),(2840,'San Nicolas'),(2841,'Santa Cruz'),(2842,'Santa Lucia'),(2843,'Santa Rosa'),(2844,'Santo Tomas'),(2845,'Santolan'),(2846,'Sumilang'),(2847,'Ugong'),(2848,'Aguho'),(2849,'Magtanggol'),(2850,'Martires del 96'),(2851,'Poblacion'),(2852,'San Pedro'),(2853,'San Roque'),(2854,'Santa Ana'),(2855,'Santo Rosario-Kanluran'),(2856,'Santo Rosario-Silangan'),(2857,'Tabacalera'),(2858,'Alicia'),(2859,'Amihan'),(2860,'Apolonio Samson'),(2861,'Barangay 874'),(2862,'Aurora'),(2863,'Baesa'),(2864,'Bagbag'),(2865,'Barangay 875'),(2866,'Bagong Lipunan ng Crame'),(2867,'Barangay 876'),(2868,'Bagong Pag-asa'),(2869,'Bagong Silangan'),(2870,'Bagumbayan'),(2871,'Bagumbuhay'),(2872,'Bahay Toro'),(2873,'Balingasa'),(2874,'Balong Bato'),(2875,'Batasan Hills'),(2876,'Bayanihan'),(2877,'Blue Ridge A'),(2878,'Blue Ridge B'),(2879,'Botocan'),(2880,'Bungad'),(2881,'Camp Aguinaldo'),(2882,'Capri'),(2883,'Central'),(2884,'Claro'),(2885,'Commonwealth'),(2886,'Culiat'),(2887,'Damar'),(2888,'Damayan'),(2889,'Damayang Lagi'),(2890,'Del Monte'),(2891,'Dioquino Zobel'),(2892,'Don Manuel'),(2893,'Doña Imelda'),(2894,'Doña Josefa'),(2895,'Duyan-duyan'),(2896,'E. Rodriguez'),(2897,'East Kamias'),(2898,'Escopa I'),(2899,'Escopa II'),(2900,'Escopa III'),(2901,'Escopa IV'),(2902,'Fairview'),(2903,'Barangay 877'),(2904,'Greater Lagro'),(2905,'Gulod'),(2906,'Barangay 878'),(2907,'Holy Spirit'),(2908,'Barangay 879'),(2909,'Horseshoe'),(2910,'Barangay 88'),(2911,'Immaculate Concepcion'),(2912,'Barangay 880'),(2913,'Kaligayahan'),(2914,'Kalusugan'),(2915,'Barangay 881'),(2916,'Kamuning'),(2917,'Barangay 882'),(2918,'Barangay 883'),(2919,'Barangay 884'),(2920,'Barangay 885'),(2921,'Katipunan'),(2922,'Barangay 886'),(2923,'Kaunlaran'),(2924,'Barangay 887'),(2925,'Kristong Hari'),(2926,'Krus na Ligas'),(2927,'Barangay 888'),(2928,'Laging Handa'),(2929,'Barangay 889'),(2930,'Libis'),(2931,'Barangay 89'),(2932,'Barangay 890'),(2933,'Barangay 891'),(2934,'Barangay 892'),(2935,'Barangay 893'),(2936,'Barangay 894'),(2937,'Barangay 895'),(2938,'Barangay 896'),(2939,'Barangay 897'),(2940,'Barangay 898'),(2941,'Barangay 899'),(2942,'Barangay 9'),(2943,'Barangay 90'),(2944,'Barangay 900'),(2945,'Barangay 901'),(2946,'Barangay 902'),(2947,'Barangay 903'),(2948,'Barangay 904'),(2949,'Barangay 905'),(2950,'Barangay 91'),(2951,'Barangay 92'),(2952,'Barangay 93'),(2953,'Barangay 94'),(2954,'Barangay 95'),(2955,'Barangay 96'),(2956,'Barangay 97'),(2957,'Barangay 98'),(2958,'Barangay 99'),(2959,'Barangka'),(2960,'Calumpang'),(2961,'Concepcion Dos'),(2962,'Concepcion Uno'),(2963,'Fortune'),(2964,'Industrial Valley'),(2965,'Jesus de La Peña'),(2966,'Lourdes'),(2967,'Malanday'),(2968,'Loyola Heights'),(2969,'Marikina Heights'),(2970,'Maharlika'),(2971,'Nangka'),(2972,'Malaya'),(2973,'Mangga'),(2974,'Manresa'),(2975,'Parang'),(2976,'Mariana'),(2977,'Mariblo'),(2978,'San Roque'),(2979,'Marilag'),(2980,'Masagana'),(2981,'Santa Elena'),(2982,'Masambong'),(2983,'Matandang Balara'),(2984,'Santo Niño'),(2985,'Tañong'),(2986,'Milagrosa'),(2987,'Tumana'),(2988,'Alabang'),(2989,'N. S. Amoranto'),(2990,'Nagkaisang Nayon'),(2991,'Nayong Kanluran'),(2992,'New Era'),(2993,'North Fairview'),(2994,'Novaliches Proper'),(2995,'Bayanan'),(2996,'Obrero'),(2997,'Old Capitol Site'),(2998,'Paang Bundok'),(2999,'Buli'),(3000,'Pag-ibig sa Nayon'),(3001,'Paligsahan'),(3002,'Paltok'),(3003,'Cupang'),(3004,'Pansol'),(3005,'New Alabang Village'),(3006,'Paraiso'),(3007,'Poblacion'),(3008,'Pasong Putik Proper'),(3009,'Pasong Tamo'),(3010,'Putatan'),(3011,'Payatas'),(3012,'Phil-Am'),(3013,'Sucat'),(3014,'Tunasan'),(3015,'Pinagkaisahan'),(3016,'Bagumbayan North'),(3017,'Pinyahan'),(3018,'Project 6'),(3019,'Quirino 2-A'),(3020,'Bagumbayan South'),(3021,'Quirino 2-B'),(3022,'Quirino 2-C'),(3023,'Bangculasi'),(3024,'Quirino 3-A'),(3025,'Daanghari'),(3026,'Ramon Magsaysay'),(3027,'NBBS Dagat-dagatan'),(3028,'Roxas'),(3029,'Sacred Heart'),(3030,'Saint Ignatius'),(3031,'Saint Peter'),(3032,'Salvacion'),(3033,'NBBS Kaunlaran'),(3034,'NBBS Proper'),(3035,'San Agustin'),(3036,'San Antonio'),(3037,'San Bartolome'),(3038,'San Isidro'),(3039,'San Isidro Labrador'),(3040,'Navotas East'),(3041,'Navotas West'),(3042,'North Bay Boulevard North'),(3043,'San Jose'),(3044,'San Jose'),(3045,'San Martin de Porres'),(3046,'San Rafael Village'),(3047,'San Roque'),(3048,'San Roque'),(3049,'Sipac-Almacen'),(3050,'San Vicente'),(3051,'Sangandaan'),(3052,'Santa Cruz'),(3053,'Santa Lucia'),(3054,'Tangos North'),(3055,'Santa Monica'),(3056,'Santa Teresita'),(3057,'Santo Cristo'),(3058,'Tangos South'),(3059,'Santo Domingo'),(3060,'Santo Niño'),(3061,'Santol'),(3062,'Tanza 1'),(3063,'Sauyo'),(3064,'Sienna'),(3065,'Tanza 2'),(3066,'Sikatuna Village'),(3067,'Silangan'),(3068,'Socorro'),(3069,'South Triangle'),(3070,'B. F. Homes'),(3071,'Baclaran'),(3072,'Don Bosco'),(3073,'Tagumpay'),(3074,'Talayan'),(3075,'Don Galo'),(3076,'Talipapa'),(3077,'La Huerta'),(3078,'Tandang Sora'),(3079,'Tatalon'),(3080,'Marcelo Green Village'),(3081,'Teachers Village East'),(3082,'Merville'),(3083,'Teachers Village West'),(3084,'U.P. Campus'),(3085,'U.P. Village'),(3086,'Ugong Norte'),(3087,'Moonwalk'),(3088,'Unang Sigaw'),(3089,'San Antonio'),(3090,'Valencia'),(3091,'San Dionisio'),(3092,'San Isidro'),(3093,'San Martin de Porres'),(3094,'Santo Niño'),(3095,'Vasra'),(3096,'Veterans Village'),(3097,'Sun Valley'),(3098,'Villa Maria Clara'),(3099,'Tambo'),(3100,'West Kamias'),(3101,'West Triangle'),(3102,'White Plains'),(3103,'Vitalez'),(3104,'Barangay'),(3105,'Addition Hills'),(3106,'Balong-Bato'),(3107,'Barangay0'),(3108,'Batis'),(3109,'Corazon de Jesus'),(3110,'Barangay00'),(3111,'Ermitaño'),(3112,'Barangay01'),(3113,'Greenhills'),(3114,'Halo-halo'),(3115,'Barangay02'),(3116,'Isabelita'),(3117,'Barangay03'),(3118,'Kabayanan'),(3119,'Barangay04'),(3120,'Little Baguio'),(3121,'Barangay05'),(3122,'Maytunas'),(3123,'Barangay06'),(3124,'Onse'),(3125,'Barangay07'),(3126,'Pasadeña'),(3127,'Pedro Cruz'),(3128,'Progreso'),(3129,'Rivera'),(3130,'Salapan'),(3131,'San Perfecto'),(3132,'Barangay08'),(3133,'Santa Lucia'),(3134,'Barangay09'),(3135,'Tibagan'),(3136,'Barangay1'),(3137,'Barangay10'),(3138,'West Crame'),(3139,'Barangay11'),(3140,'Bagumbayan'),(3141,'Bambang'),(3142,'Barangay12'),(3143,'Calzada'),(3144,'Central Bicutan'),(3145,'Barangay13'),(3146,'Central Signal Village'),(3147,'Fort Bonifacio'),(3148,'Barangay14'),(3149,'Hagonoy'),(3150,'Ibayo-Tipas'),(3151,'Barangay15'),(3152,'Katuparan'),(3153,'Barangay16'),(3154,'Ligid-Tipas'),(3155,'Barangay17'),(3156,'Lower Bicutan'),(3157,'Barangay18'),(3158,'Maharlika Village'),(3159,'Napindan'),(3160,'Barangay19'),(3161,'New Lower Bicutan'),(3162,'North Daang Hari'),(3163,'North Signal Village'),(3164,'Palingon'),(3165,'Barangay2'),(3166,'Barangay20'),(3167,'Barangay21'),(3168,'Barangay22'),(3169,'Barangay23'),(3170,'Barangay24'),(3171,'Barangay25'),(3172,'Barangay26'),(3173,'Barangay27'),(3174,'Barangay28'),(3175,'Barangay29'),(3176,'Barangay3'),(3177,'Barangay30'),(3178,'Barangay31'),(3179,'Barangay32'),(3180,'Barangay33'),(3181,'Barangay34'),(3182,'Barangay35'),(3183,'Barangay36'),(3184,'Barangay37'),(3185,'Barangay38'),(3186,'Barangay39'),(3187,'Barangay4'),(3188,'Barangay40'),(3189,'Barangay41'),(3190,'Barangay42'),(3191,'Barangay43'),(3192,'Barangay44'),(3193,'Barangay45'),(3194,'Barangay46'),(3195,'Barangay47'),(3196,'Barangay48'),(3197,'Barangay49'),(3198,'Barangay5'),(3199,'Barangay50'),(3200,'Barangay51'),(3201,'Barangay52'),(3202,'Barangay53'),(3203,'Barangay54'),(3204,'Barangay55'),(3205,'Barangay56'),(3206,'Barangay57'),(3207,'Barangay58'),(3208,'Barangay59'),(3209,'Barangay6'),(3210,'Barangay60'),(3211,'Barangay61'),(3212,'Barangay62'),(3213,'Barangay63'),(3214,'Barangay64'),(3215,'Barangay65'),(3216,'Barangay66'),(3217,'Barangay67'),(3218,'Barangay68'),(3219,'Barangay69'),(3220,'Barangay7'),(3221,'Barangay70'),(3222,'Barangay71'),(3223,'Barangay72'),(3224,'Barangay73'),(3225,'Barangay74'),(3226,'Barangay75'),(3227,'Barangay76'),(3228,'Barangay77'),(3229,'Barangay78'),(3230,'Barangay79'),(3231,'Barangay8');
/*!40000 ALTER TABLE `manila_brgy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manila_cities`
--

DROP TABLE IF EXISTS `manila_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_cities` (
  `city_id` varchar(45) NOT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_cities`
--

LOCK TABLES `manila_cities` WRITE;
/*!40000 ALTER TABLE `manila_cities` DISABLE KEYS */;
INSERT INTO `manila_cities` VALUES ('10A1','Baliguian'),('10A10','Liloy'),('10A11','Manukan'),('10A12','Mutia'),('10A13','Piñan'),('10A14','Polanco'),('10A15','President Manuel A. Roxas'),('10A16','Rizal'),('10A17','Salug'),('10A18','Sergio Osmeña Sr.'),('10A19','Siayan'),('10A2','Godod'),('10A20','Sibuco'),('10A21','Sibutad'),('10A22','Sindangan'),('10A23','Siocon'),('10A24','Sirawai'),('10A25','Tampilisan'),('10A26','Aurora'),('10A27','Bayog'),('10A28','Dimataling'),('10A29','Dinas'),('10A3','Gutalac'),('10A30','Dumalinao'),('10A31','Dumingag'),('10A32','Guipos'),('10A33','Josefina'),('10A34','Kumalarang'),('10A35','Labangan'),('10A36','Lakewood'),('10A37','Lapuyan'),('10A38','Mahayag'),('10A39','Margosatubig'),('10A4','Jose Dalman'),('10A40','Midsalip'),('10A41','Molave'),('10A42','Pagadian City'),('10A43','Pitogo'),('10A44','Ramon Magsaysay'),('10A45','San Miguel'),('10A46','San Pablo'),('10A47','Sominot'),('10A48','Tabina'),('10A49','Tambulig'),('10A5','Kalawit'),('10A50','Tigbao'),('10A51','Vincenzo A. Sagun'),('10A52','Alicia'),('10A53','Buug'),('10A54','Diplahan'),('10A55','Imelda'),('10A56','Ipil'),('10A57','Kabasalan'),('10A58','Mabuhay'),('10A59','Malangas'),('10A6','Katipunan'),('10A60','Naga'),('10A61','Olutanga'),('10A62','Payao'),('10A63','Roseller Lim'),('10A64','Siay'),('10A65','Talusan'),('10A66','Titay'),('10A67','Tungawan'),('10A7','La Libertad'),('10A8','Labason'),('10A9','Leon B. Postigo'),('11A1','Baungon'),('11A10','Kitaotao'),('11A11','Lantapan'),('11A12','Libona '),('11A13','Malaybalay City'),('11A14','Malitbog'),('11A15','Manolo Fortich'),('11A16','Maramag'),('11A17','Pangantucan'),('11A18','Quezon'),('11A19','San Fernando'),('11A2','Cabanglasan'),('11A20','Sumilao'),('11A21','Talakag'),('11A22','Valencia City'),('11A23','Catarman'),('11A24','Guinsiliban'),('11A25','Mahinog'),('11A26','Mambajao'),('11A27','Sagay'),('11A28','Bacolod'),('11A29','Baloi'),('11A3','Damulog'),('11A30','Baroy'),('11A31','Kapatagan'),('11A32','Kauswagan'),('11A33','Kolambugan'),('11A34','Lala'),('11A35','Linamon'),('11A36','Magsaysay'),('11A37','Maigo'),('11A38','Matungao'),('11A39','Munai'),('11A4','Dangcagan'),('11A40','Nunungan'),('11A41','Pantao Ragat'),('11A42','Pantar'),('11A43','Poona Piagapo'),('11A44','Salvador'),('11A45','Sapad'),('11A46','Sultan Naga Dimaporo'),('11A47','Tagoloan'),('11A48','Tangcal'),('11A49','Tubod'),('11A5','Don Carlos'),('11A50','Aloran'),('11A51','Baliangao'),('11A52','Bonifacio'),('11A53','Calamba'),('11A54','Clarin'),('11A55','Concepcion'),('11A56','Don Victoriano Chiongbian'),('11A57','Jimenez'),('11A58','Lopez Jaena'),('11A59','Oroquieta City'),('11A6','Impasugong'),('11A60','Ozamiz City'),('11A61','Panaon'),('11A62','Plaridel'),('11A63','Sapang Dalaga'),('11A64','Sinacaban'),('11A65','Tangub City'),('11A66','Tudela'),('11A67','Alubijid'),('11A68','Balingasag'),('11A69','Balingoan'),('11A7','Kadingilan'),('11A70','Binuangan'),('11A71','Cagayan de Oro City '),('11A72','Claveria'),('11A73','El Salvador City'),('11A74','Gingoog City'),('11A75','Gitagum'),('11A76','Initao'),('11A77','Jasaan'),('11A78','Kinoguitan'),('11A79','Lagonglong'),('11A8','Kalilangan'),('11A80','Laguindingan'),('11A81','Libertad'),('11A82','Lugait'),('11A83','Magsaysay'),('11A84','Manticao'),('11A85','Medina'),('11A86','Naawan'),('11A87','Opol'),('11A88','Salay'),('11A89','Sugbongcogon'),('11A9','Kibawe'),('11A90','Tagoloan'),('11A91','Talisayan'),('11A92','Villanueva'),('12A1','Compostela'),('12A10','New Bataan'),('12A11','Pantukan'),('12A12','Asuncion'),('12A13','Braulio E. Dujali'),('12A14','Carmen'),('12A15','Kapalong'),('12A16','New Corella'),('12A17','Panabo City'),('12A18','Samal City'),('12A19','San Isidro'),('12A2','Laak '),('12A20','Santo Tomas'),('12A21','Tagum City '),('12A22','Talaingod'),('12A23','Bansalan'),('12A24','Davao City'),('12A25','Digos City '),('12A26','Hagonoy'),('12A27','Kiblawan'),('12A28','Magsaysay'),('12A29','Malalag'),('12A3','Mabini'),('12A30','Matanao'),('12A31','Padada'),('12A32','Santa Cruz'),('12A33','Sulop'),('12A34','Don Marcelino'),('12A35','Jose Abad Santos '),('12A36','Malita '),('12A37','Santa Maria'),('12A38','Sarangani'),('12A39','Baganga'),('12A4','Maco'),('12A40','Banaybanay'),('12A41','Boston'),('12A42','Caraga'),('12A43','Cateel'),('12A44','Governor Generoso'),('12A45','Lupon'),('12A46','Manay'),('12A47','Mati City '),('12A48','San Isidro'),('12A49','Tarragona'),('12A5','Maragusan'),('12A6','Mawab'),('12A7','Monkayo'),('12A8','Montevista'),('12A9','Nabunturan '),('13A1','Alamada'),('13A10','M lang'),('13A11','Magpet'),('13A12','Makilala'),('13A13','Matalam'),('13A14','Midsayap'),('13A15','Pigkawayan'),('13A16','Pikit'),('13A17','President Roxas'),('13A18','Tulunan'),('13A19','Alabel '),('13A2','Aleosan'),('13A20','Glan'),('13A21','Kiamba'),('13A22','Maasim'),('13A23','Maitum'),('13A24','Malapatan'),('13A25','Banga'),('13A26','Lake Sebu'),('13A27','Norala'),('13A28','Polomolok'),('13A29','Santo Niño'),('13A3','Antipas'),('13A30','Surallah'),('13A31','T Boli'),('13A32','Tampakan'),('13A33','Tantangan'),('13A34','Tupi'),('13A35','Bagumbayan'),('13A36','Columbio'),('13A37','Esperanza'),('13A38','Isulan '),('13A39','Kalamansig'),('13A4','Arakan'),('13A40','Lambayong '),('13A41','Lebak'),('13A42','Lutayan'),('13A43','Palimbang'),('13A44','President Quirino'),('13A45','Senator Ninoy Aquino'),('13A5','Banisilan'),('13A6','Carmen'),('13A7','Kabacan'),('13A8','Kidapawan City '),('13A9','Libungan'),('14A1','Binondo'),('14A10','Malate'),('14A11','Paco'),('14A12','Pandacan'),('14A13','Port Area'),('14A14','Santa Ana'),('14A15','Tondo I/II'),('14A16','City of Mandaluyong'),('14A17','City of Marikina'),('14A18','City of Pasig'),('14A19','Quezon City'),('14A2','Quiapo'),('14A20','City of San Juan'),('14A21','City of Caloocan'),('14A22','City of Malabon'),('14A23','City of Navotas'),('14A24','City of Valenzuela'),('14A25','City of Las Pinas'),('14A26','City of Makati'),('14A27','City of Muntinlupa'),('14A28','City of Paranaque'),('14A29','Pasay City'),('14A3','San Nicolas'),('14A30','Pateros'),('14A4','Santa Cruz'),('14A5','Sampaloc'),('14A6','San Miguel'),('14A7','Ermita'),('14A8','Intramuros'),('15A1','Bangued '),('15A10','Lagangilang'),('15A11','Lagayan'),('15A12','Langiden'),('15A13','Licuan-Baay'),('15A14','Luba'),('15A15','Malibcong'),('15A16','Manabo'),('15A17','Peñarrubia'),('15A18','Pidigan'),('15A19','Pilar'),('15A2','Boliney'),('15A20','Sallapadan'),('15A21','San Isidro'),('15A22','San Juan'),('15A23','San Quintin'),('15A24','Tayum'),('15A25','Tineg'),('15A26','Tubo'),('15A27','Villaviciosa'),('15A28','Calanasan '),('15A29','Conner'),('15A3','Bucay'),('15A30','Flora'),('15A31','Kabugao'),('15A32','Luna'),('15A33','Pudtol'),('15A34','Santa Marcela'),('15A35','Atok'),('15A36','Bakun'),('15A37','Bokod'),('15A38','Buguias'),('15A39','Itogon'),('15A4','Bucloc'),('15A40','Kabayan'),('15A41','Kapangan'),('15A42','Kibungan'),('15A43','La Trinidad '),('15A44','Mankayan'),('15A45','Sablan'),('15A46','Tuba'),('15A47','Tublay'),('15A48','Aguinaldo'),('15A49','Alfonso Lista'),('15A5','Daguioman'),('15A50','Asipulo'),('15A51','Banaue'),('15A52','Hingyon'),('15A53','Hungduan'),('15A54','Kiangan'),('15A55','Lagawe '),('15A56','Lamut'),('15A57','Mayoyao'),('15A58','Tinoc'),('15A59','Balbalan'),('15A6','Danglas'),('15A60','Calanasan '),('15A61','Conner'),('15A62','Flora'),('15A63','Kabugao'),('15A64','Luna'),('15A65','Pudtol'),('15A66','Santa Marcela'),('15A67','Barlig'),('15A68','Bontoc '),('15A69','Natonin'),('15A7','Dolores'),('15A70','Paracelis'),('15A71','Sabangan'),('15A72','Sadanga'),('15A73','Sagada'),('15A74','Tadian'),('15A8','La Paz'),('15A9','Lacub'),('16A1','City of Lamitan'),('16A10','Hadji Mohammad Ajul'),('16A11','Hadji Muhtamad'),('16A12','Tabuan-Lasa'),('16A13','Bacolod-Kalawi'),('16A14','Balabagan'),('16A15','Balindong'),('16A16','Bayang'),('16A17','Binidayan'),('16A18','Buadiposo-Buntong'),('16A19','Bubong'),('16A2','Isabela City'),('16A20','Bumbaran'),('16A21','Butig'),('16A22','Calanogas'),('16A23','Ditsaan-Ramain'),('16A24','Ganassi'),('16A25','Kapai'),('16A26','Kapatagan'),('16A27','Lumba-Bayabao'),('16A28','Lumbaca-Unayan'),('16A29','Lumbatan'),('16A3','Lantawan'),('16A30','Lumbayanague'),('16A31','Madalum'),('16A32','Madamba'),('16A33','Maguing'),('16A34','Malabang'),('16A35','Marantao'),('16A36','Marawi City'),('16A37','Marogong'),('16A38','Masiu'),('16A39','Mulondo'),('16A4','Maluso'),('16A40','Pagayawan'),('16A41','Piagapo'),('16A42','Poona Bayabao'),('16A43','Pualas'),('16A44','Saguiaran'),('16A45','Sultan Dumalondong'),('16A46','Ampatuan'),('16A47','Barira'),('16A48','Buldon'),('16A49','Buluan'),('16A5','Sumisip'),('16A50','Datu Abdullah Sangki'),('16A51','Datu Anggal Midtimbang'),('16A52','Datu Bai Ali'),('16A53','Datu Hoffer Ampatuan'),('16A54','Datu Montawal'),('16A55','Datu Odin Sinsuat'),('16A56','Datu Paglas'),('16A57','Datu Piang'),('16A58','Datu Salibo'),('16A59','Datu Saudi-Ampatuan'),('16A6','Tipo-Tipo'),('16A60','Datu Unsay'),('16A61','General Salipada K. Pendatun'),('16A62','Guindulungan'),('16A63','Kabuntalan'),('16A64','Mamasapano'),('16A65','Mangudadatu'),('16A66','Matanog'),('16A67','Northern Kabuntalan'),('16A68','Pagalungan'),('16A69','Paglat'),('16A7','Tuburan'),('16A70','Pandag'),('16A71','Parang'),('16A72','Rajah Buayan'),('16A73','Shariff Aguak'),('16A74','Shariff Saydona Mustapha'),('16A75','Indanan'),('16A76','Jolo'),('16A77','Kalingalan Caluang'),('16A78','Lugus'),('16A79','Luuk'),('16A8','Ungkaya Pukan'),('16A80','Maimbung'),('16A81','Old Panamao'),('16A82','Omar'),('16A83','Panglima Sugala'),('16A84','Bongao'),('16A85','Mapun'),('16A86','Simunul'),('16A87','Sitangkal'),('16A88','South Ubian'),('16A89','Tandubas'),('16A9','Akbar'),('16A90','Turtle Islands'),('16A91','Languyan'),('16A92','Sapa-sapa'),('16A93','Sibutu'),('17A1','Buenavista'),('17A10','Remedios T. Romualdez'),('17A11','Bunawan'),('17A12','Esperanza'),('17A13','La Paz'),('17A14','Loreto'),('17A15','Prosperidad'),('17A16','Rosario'),('17A17','San Francisco'),('17A18','San Luis'),('17A19','Santa Josefa'),('17A2','Butuan City'),('17A20','Sibagat'),('17A21','Talacogon'),('17A22','Trento'),('17A23','Veruela'),('17A24','Alegria'),('17A25','Bacuag'),('17A26','Burgos'),('17A27','Claver'),('17A28','Dapa'),('17A29','Del Carmen'),('17A3','Cabadbaran City'),('17A30','General Luna'),('17A31','Gigaquit'),('17A32','Mainit'),('17A33','Malimono'),('17A34','Pilar'),('17A35','Placer'),('17A36','San Benito'),('17A37','San Francisco'),('17A38','San Isidro'),('17A39','Santa Monica'),('17A4','Carmen'),('17A40','Sison'),('17A41','Socorro'),('17A42','Surigao City'),('17A43','Tubod'),('17A44','Tubojan'),('17A45','Tuburan'),('17A46','Tubud'),('17A47','Barobo'),('17A48','Bayabas'),('17A49','Cagwait'),('17A5','Jabonga'),('17A50','Cantilan'),('17A51','Carmen'),('17A52','Carrascal'),('17A53','Cortes'),('17A54','Hinatuan'),('17A55','Lanuza'),('17A56','Lianga'),('17A57','Lingig'),('17A58','Madrid'),('17A59','Marihatag'),('17A6','Kitcharao'),('17A60','San Agustin'),('17A61','San Miguel'),('17A62','Tagbina'),('17A63','Tago'),('17A64','Tandag City'),('17A65','Basilisa'),('17A66','Cagdianao'),('17A67','Dinagat'),('17A68','Libjo (Albor)'),('17A69','Loreto'),('17A7','Las Nieves'),('17A70','San Jose'),('17A71','Tubajon'),('17A8','Magallanes'),('17A9','Nasipit'),('1A1','Adams'),('1A10','Dumalneg'),('1A100','Malasiqui'),('1A101','Manaoag'),('1A102','Mangaldan'),('1A103','Mangatarem'),('1A104','Mapandan'),('1A105','Natividad'),('1A106','Pozzorubio'),('1A107','Rosales'),('1A108','San Carlos City'),('1A109','San Fabian'),('1A11','Espiritu'),('1A110','San Jacinto'),('1A111','San Manuel'),('1A112','San Nicolas'),('1A113','San Quintin'),('1A114','Santa Barbara'),('1A115','Santa Maria'),('1A116','Santo Tomas'),('1A117','Sison'),('1A118','Sual'),('1A119','Tayug'),('1A12','Laoag City'),('1A120','Umingan'),('1A121','Urbiztondo'),('1A122','Villasis'),('1A13','Marcos'),('1A14','Neuva Era'),('1A15','Pagudpud'),('1A16','Paoay'),('1A17','Pasuquin'),('1A18','Piddig'),('1A19','Pinili'),('1A2','Bacarra'),('1A20','San Nicolas'),('1A21','Sarrat'),('1A22','Solsona'),('1A23','Vintar'),('1A24','Alilem'),('1A25','Banayoyo'),('1A26','Bantay'),('1A27','Burgos'),('1A28','Cabugao'),('1A29','Caoayan'),('1A3','Badoc'),('1A30','Cervantes'),('1A31','Galimuyod'),('1A32','Gregorio del Pilar'),('1A33','Lidlidda'),('1A34','Magsingal'),('1A35','Nagbukel'),('1A36','Narvacan'),('1A37','Quirino'),('1A38','Salcedo'),('1A39','San Emilio'),('1A4','Bangui'),('1A40','San Esteban'),('1A41','San Ildefonso'),('1A42','San Juan'),('1A43','San Vicente'),('1A44','Santa'),('1A45','Santa Catalina'),('1A46','Santa Cruz'),('1A47','Santa Lucia'),('1A48','Santa Maria'),('1A49','Santiago'),('1A5','City of Batac'),('1A50','Santo Domingo'),('1A51','Sigay'),('1A52','Sinait'),('1A53','Sugpon'),('1A54','Suyo'),('1A55','Tagudin'),('1A56','Vigan City'),('1A57','Agoo'),('1A58','Aringay'),('1A59','Bacnotan'),('1A6','Burgos'),('1A60','Bagulin'),('1A61','Balaoan'),('1A62','Bangar'),('1A63','Bauang'),('1A64','Burgos'),('1A65','Caba'),('1A66','Luna'),('1A67','Naguilian'),('1A68','Pugo'),('1A69','Rosario'),('1A7','Carasi'),('1A70','San Fernando City'),('1A71','San Gabriel'),('1A72','San Juan'),('1A73','Santo Tomas'),('1A74','Santol'),('1A75','Sudipen'),('1A76','Tubao'),('1A77','Agno'),('1A78','Alaminos City'),('1A79','Alcala'),('1A8','Currimao'),('1A80','Anda'),('1A81','Asingan'),('1A82','Balungao'),('1A83','Bani'),('1A84','Basista'),('1A85','Bautista'),('1A86','Bayambang'),('1A87','Binalonan'),('1A88','Binmaley'),('1A89','Bolinao'),('1A9','Dingras'),('1A90','Bugallon'),('1A91','Burgos'),('1A92','Calasiao'),('1A93','Dagupan City'),('1A94','Dasol'),('1A95','Infanta'),('1A96','Labrador'),('1A97','Laoac'),('1A98','Lingayen'),('1A99','Mabini'),('1B1','Basco'),('1B10','Camalaniugan'),('1B11','Claveria'),('1B119','Peñablanca'),('1B12','Enrile'),('1B13','Gattaran'),('1B14','Gonzaga'),('1B15','Iguig'),('1B16','Lal-lo'),('1B17','Lasam'),('1B18','Pamplona'),('1B2','Itbayat'),('1B20','Piat'),('1B21','Rizal'),('1B22','Sanchez-Mira'),('1B23','Santa Ana'),('1B24','Santa Praxedes'),('1B25','Santa Teresita'),('1B26','Santo Niño'),('1B27','Solana'),('1B28','Tuao'),('1B29','Tuguegarao City'),('1B3','Ivana'),('1B30','Alicia'),('1B31','Alicia'),('1B32','Angadanan'),('1B33','Aurora'),('1B34','Benito Soliven'),('1B35','Burgos'),('1B36','Cabagan'),('1B37','Cabatuan'),('1B38','Cauayan City'),('1B39','Cordon'),('1B4','Mahatao'),('1B40','Delfin Albano'),('1B41','Dinapigue'),('1B42','Divilacan'),('1B43','Echague'),('1B44','Gamu'),('1B45','Ilagan City'),('1B46','Jones'),('1B47','Luna'),('1B48','Maconacon'),('1B49','Dela Cruz (Cambaog)'),('1B5','Sabtang'),('1B50','Mallig'),('1B51','Naguilian'),('1B52','Palanan'),('1B53','Quezon'),('1B54','Quirino'),('1B55','Ramon'),('1B56','Reina Mercedes'),('1B57','Roxas'),('1B58','San Agustin'),('1B59','San Guillermo'),('1B6','Uyugan'),('1B60','San Isidro'),('1B61','San Manuel'),('1B62','San Mariano'),('1B63','San Mateo'),('1B64','San Pablo'),('1B65','Santa Maria'),('1B66','Santiago City'),('1B67','Santo Tomas'),('1B68','Tumauini'),('1B69','Ambaguio'),('1B7','Abulug'),('1B70','Aritao'),('1B71','Bagabag'),('1B72','Bambang'),('1B73','Bayombong'),('1B74','Diadi'),('1B75','Dupax del Norte'),('1B76','Dupax del Sur'),('1B77','Kasibu'),('1B78','Kayapa'),('1B79','Quezon'),('1B8','Abulug'),('1B80','Santa Fe'),('1B81','Solano'),('1B82','Villaverde'),('1B83','Alfonso Castaneda'),('1B84','Aglipay'),('1B85','Cabarroguis'),('1B86','Diffun'),('1B87','Maddela'),('1B88','Nagtipunan'),('1B9','Calayan'),('1C1','Baler'),('1C10','Bagac'),('1C11','Balanga'),('1C12','Dinalupihan'),('1C13','Hermosa'),('1C14','Limay'),('1C15','Mariveles'),('1C16','Morong'),('1C17','Orani'),('1C18','Orion'),('1C19','Pilar'),('1C2','Casiguran'),('1C20','Samal'),('1C3','Dilasag'),('1C4','Dinalungan'),('1C5','Dingalan'),('1C6','Dipaculao'),('1C7','Maria Aurora'),('1C8','San Luis'),('1C9','Abucay'),('3A10','Dona Remedios Trinidad'),('3A100','Castillejos'),('3A101','Iba'),('3A102','Masinloc'),('3A103','Olongapo City'),('3A104','Palauig'),('3A105','San Antonio'),('3A106','San Felipe'),('3A107','San Marcelino'),('3A108','San Narciso'),('3A109','Santa Cruz'),('3A11','Guiguinto'),('3A110','Subic'),('3A12','Hagonoy'),('3A13','Malolos'),('3A14','Marilao'),('3A15','Meycauayan'),('3A16','Norzagaray'),('3A17','Obando'),('3A18','Pandi'),('3A19','Paombong'),('3A20','Plaridel'),('3A21','Pulilan'),('3A22','San Ildefonso'),('3A23','San Jose del Monte'),('3A24','San Miguel'),('3A25','San Rafael'),('3A26','Santa Maria'),('3A27','Aliaga'),('3A28','Bongabon'),('3A29','Cabiao'),('3A3','Angat'),('3A30','Carranglan'),('3A31','Cuyapo'),('3A32','Gabaldon'),('3A33','Gapan'),('3A34','General Mamerto Natividad'),('3A35','General Tinio'),('3A36','Guimba'),('3A37','Jaen'),('3A38','Laur'),('3A39','Licab'),('3A4','Balagtas'),('3A40','Llanera'),('3A41','Lupao'),('3A42','Nampicuan'),('3A43','Palayan'),('3A44','Pantabangan'),('3A45','Peñaranda'),('3A46','Quezon'),('3A47','Rizal'),('3A48','San Antonio'),('3A49','San Isidro'),('3A5','Baliuag'),('3A50','San Jose'),('3A51','San Leonardo'),('3A52','Santa Rosa'),('3A53','Santo Domingo'),('3A54','Talavera'),('3A55','Talugtug'),('3A56','Zaragoza'),('3A57','Angeles City'),('3A58','Apalit'),('3A59','Arayat'),('3A6','Bocaue'),('3A60','Bacolor'),('3A61','Candaba'),('3A62','Floridablanca'),('3A63','Guagua'),('3A64','Lubao'),('3A65','Mabalacat'),('3A66','Macabebe'),('3A67','Magalang'),('3A68','Masantol'),('3A69','Mexico'),('3A7','Bulakan'),('3A70','Minalin'),('3A71','Porac'),('3A72','San Fernando'),('3A73','San Luis'),('3A74','San Simon'),('3A75','Santa Ana'),('3A76','Santa Rita'),('3A77','Santo Tomas'),('3A78','Sasmuan'),('3A79','Anao'),('3A8','Bustos'),('3A80','Bamban'),('3A81','Camiling'),('3A82','Capas'),('3A83','Concepcion'),('3A84','Gerona'),('3A85','La Paz'),('3A86','Mayantoc'),('3A87','Moncada'),('3A88','Paniqui'),('3A89','Pura'),('3A9','Calumpit'),('3A90','Ramos'),('3A91','San Clemente'),('3A92','San Jose'),('3A93','San Manuel'),('3A94','Santa Ignacia'),('3A95','Tarlac City'),('3A96','Victoria'),('3A97','Botolan'),('3A98','Cabangan'),('3A99','Candelaria'),('4A1','Agoncillo'),('4A10','Ibaan'),('4A100','Teresa'),('4A101','Agdangan'),('4A102','Alabat'),('4A103','Atimonan'),('4A104','Buenavista'),('4A105','Burdeos'),('4A106','Calauag'),('4A107','Candelaria'),('4A108','Catanauan'),('4A109','Dolores'),('4A11','Laurel'),('4A110','General Luna'),('4A111','General Nakar'),('4A112','Guinayangan'),('4A113','Gumaca'),('4A114','Infanta'),('4A115','Jomalig'),('4A116','Lopez'),('4A117','Lucban'),('4A118','Lucena City'),('4A119','Macalelon'),('4A12','Lemery'),('4A120','Mauban'),('4A121','Mulanay'),('4A122','Padre Burgos'),('4A123','Pagbilao'),('4A124','Panukulan'),('4A125','Patnanungan'),('4A126','Perez'),('4A127','Pitogo'),('4A128','Plaridel'),('4A129','Polillo'),('4A13','Lian'),('4A130','Quezon'),('4A131','Real'),('4A132','Sampaloc'),('4A133','San Andres'),('4A134','San Antonio'),('4A135','San Francisco'),('4A136','San Narciso'),('4A137','Sariaya'),('4A138','Tagkawayan'),('4A139','Tiaong'),('4A14','Lipa City'),('4A140','Unisan'),('4A15','Lobo'),('4A16','Mabini'),('4A17','Malvar'),('4A18','Mataasnakahoy'),('4A19','Nasugbu'),('4A2','Alitagtag'),('4A20','Padre Garcia'),('4A21','Rosario'),('4A22','San Jose'),('4A23','San Juan'),('4A24','San Luis'),('4A25','San Nicolas'),('4A26','San Pascual'),('4A27','Santa Teresita'),('4A28','Santo Tomas'),('4A29','Taal'),('4A3','Balayan'),('4A30','Talisay'),('4A31','Tanauan City'),('4A32','Taysan'),('4A33','Tingloy'),('4A34','Tuy'),('4A35','Alfonso'),('4A36','Amadeo'),('4A37','Bacoor'),('4A38','Carmona'),('4A39','Cavite City'),('4A4','Balete'),('4A40','Dasmarinas City'),('4A41','General Emilio Aguinaldo'),('4A42','General Mariano Alvarez'),('4A43','General Trias'),('4A44','Imus'),('4A45','Indang'),('4A46','Kawit'),('4A47','Magallanes'),('4A48','Maragondon'),('4A49','Mendez-Nunez'),('4A5','Batangas City'),('4A50','Naic'),('4A51','Noveleta'),('4A52','Rosario'),('4A53','Silang'),('4A54','Tagaytay City'),('4A55','Tanza'),('4A56','Ternate'),('4A57','Trece Martires City'),('4A58','Alaminos'),('4A59','Bay'),('4A6','Bauan'),('4A60','Biñan City'),('4A61','Cabuyao City'),('4A62','Calamba City'),('4A63','Calauan'),('4A64','Cavinti'),('4A65','Famy'),('4A66','Kalayaan'),('4A67','Liliw'),('4A68','Los Baños'),('4A69','Luisiana'),('4A7','Calaca'),('4A70','Lumban'),('4A71','Mabitac'),('4A72','Magdalena'),('4A73','Majayjay'),('4A74','Nagcarlan'),('4A75','Paete'),('4A76','Pagsanjan'),('4A77','Pakil'),('4A78','Pangil'),('4A79','Pila'),('4A8','Calatagan'),('4A80','Rizal'),('4A81','San Pablo City'),('4A82','San Pedro City'),('4A83','Santa Cruz'),('4A84','Santa Maria'),('4A85','Santa Rosa City'),('4A86','Siniloan'),('4A87','Victoria'),('4A88','Angono'),('4A89','Antipolo City'),('4A9','Cuenca'),('4A90','Baras'),('4A91','Binangonan'),('4A92','Cainta'),('4A93','Cardona'),('4A94','Jalajala'),('4A95','Morong'),('4A96','Pililla'),('4A97','Rodriguez (Montalban)'),('4A98','San Mateo'),('4A99','Taytay'),('5A1','Abra De Ilog'),('5A10','San Jose'),('5A11','Santa Cruz'),('5A12','Baco'),('5A13','Bansud'),('5A14','Bongabong'),('5A15','Bulalacao'),('5A16','Calapan City'),('5A17','Gloria'),('5A18','Mansalay'),('5A19','Naujan'),('5A2','Calintaan'),('5A20','Pinamalayan'),('5A21','Pola'),('5A22','Puerto Galera'),('5A23','Roxas'),('5A24','San Teodoro'),('5A25','Socorro'),('5A26','Victoria'),('5A27','Boac'),('5A28','Buenavista'),('5A29','Gasan'),('5A3','Looc'),('5A30','Mogpog'),('5A31','Santa Cruz'),('5A32','Torrijos'),('5A34','Alcantara'),('5A35','Banton'),('5A36','Cajidiocan'),('5A37','Calatrava'),('5A38','Concepcion'),('5A39','Corcuera'),('5A4','Lubang'),('5A40','Ferrol'),('5A41','Looc'),('5A42','Magdiwang'),('5A43','Odiongan'),('5A44','Romblon'),('5A45','San Agustin'),('5A46','San Andres'),('5A47','San Fernando'),('5A48','San Jose'),('5A49','Santa Fe'),('5A5','Magsaysay'),('5A50','Santa Maria'),('5A51','Aborlan'),('5A52','Agutaya'),('5A53','Araceli'),('5A54','Balabac'),('5A55','Bataraza'),('5A56','Brookes Point'),('5A57','Busuanga'),('5A58','Cagayancillo'),('5A59','Coron'),('5A6','Mamburao'),('5A60','Culion'),('5A61','Cuyo'),('5A62','Dumaran'),('5A63','El Nido'),('5A64','Kalayaan'),('5A65','Linapacan'),('5A66','Magsaysay'),('5A67','Narra'),('5A68','Puerto Princesa'),('5A69','Quezon'),('5A7','Paluan'),('5A70','Rizal'),('5A71','Roxas'),('5A72','San Vicente'),('5A73','Sofronio Española'),('5A8','Rizal'),('5A9','Sablayan'),('6A1','Bacacay'),('6A10','Capalonga'),('6A100','Pilar'),('6A101','Prieto Diaz'),('6A102','Santa Magdalena'),('6A103','City of Sorsogon'),('6A11','Daet'),('6A12','Jose Panganiban'),('6A13','Labo'),('6A14','Mercedes'),('6A15','Paracale'),('6A16','San Lorenzo Ruiz'),('6A17','San Vicente'),('6A18','Santa Elena'),('6A19','Talisay'),('6A2','Camalig'),('6A20','Vinzons'),('6A21','Baao'),('6A22','Balatan'),('6A23','Bato'),('6A24','Bombon'),('6A25','Buhi'),('6A26','Bula'),('6A27','Cabusao'),('6A28','Calabanga'),('6A29','Camaligan'),('6A3','Daraga'),('6A30','Canaman'),('6A31','Caramoan'),('6A32','Del Gallego'),('6A33','Gainza'),('6A34','Garchitorena'),('6A35','Goa'),('6A36','Lagonoy'),('6A37','Libmanan'),('6A38','Lupi'),('6A39','Magarao'),('6A4','Guinobatan'),('6A40','Milaor'),('6A41','Minalabac'),('6A42','Nabua'),('6A43','Naga City'),('6A44','Ocampo'),('6A45','Pamplona'),('6A46','Pasacao'),('6A47','Pili'),('6A48','Presentacion'),('6A49','Ragay'),('6A5','Jovellar'),('6A50','Sagnay'),('6A51','San Fernando'),('6A52','San Jose'),('6A53','Sipocot'),('6A54','Siruma'),('6A55','Tigaon'),('6A56','Tinambac'),('6A57','Bagamanoc'),('6A58','Baras'),('6A59','Bato'),('6A6','Legazpi City'),('6A60','Caramoran'),('6A61','Gigmoto'),('6A62','Pandan'),('6A63','Panganiban'),('6A64','San Andres'),('6A65','San Miguel'),('6A66','Viga'),('6A67','Virac'),('6A68','Aroroy'),('6A69','Baleno'),('6A7','Libon'),('6A70','Balud'),('6A71','Batuan'),('6A72','Cataingan'),('6A73','Cawayan'),('6A74','Claveria'),('6A75','Dimasalang'),('6A76','Esperanza'),('6A77','Mandaon'),('6A78','Masbate City'),('6A79','Milagros'),('6A8','City of Ligao'),('6A80','Mobo'),('6A81','Monreal'),('6A82','Palanas'),('6A83','Pio V. Corpus'),('6A84','Placer'),('6A85','San Fernando'),('6A86','San Jacinto'),('6A87','San Pascual'),('6A88','Uson'),('6A89','Barcelona'),('6A9','Basud'),('6A90','Bulan'),('6A91','Bulusan'),('6A92','Casiguran'),('6A93','Castilla'),('6A94','Donsol'),('6A95','Gubat'),('6A96','Irosin'),('6A97','Juban'),('6A98','Magallanes'),('6A99','Matnog'),('7A1','Atlavas'),('7A10','Madalag'),('7A11','Makato'),('7A12','Malay'),('7A13','Malinao'),('7A14','Nabas'),('7A15','New Washington'),('7A16','Numancia'),('7A17','Tangalan'),('7A18','Anini-y'),('7A19','Barbaza'),('7A2','Balete'),('7A20','Belison'),('7A21','Bugasong'),('7A22','Caluya'),('7A23','Culasi'),('7A24','Hamtic'),('7A25','Laua-an'),('7A26','Libertad'),('7A27','Pandan'),('7A28','Patnongon'),('7A29','San Jose de Buenavista'),('7A3','Banga'),('7A30','San Remigio'),('7A31','Sebaste'),('7A32','Sibalom'),('7A33','Tibiao'),('7A34','Tobias Fornier'),('7A35','Valderrama'),('7A36','Cuartero'),('7A37','Dao'),('7A38','Dumalag'),('7A39','Dumarao'),('7A4','Batan'),('7A40','Ivisan'),('7A41','Jamindan'),('7A42','Maayon'),('7A43','Mambusao'),('7A44','Panay'),('7A45','Panitan'),('7A46','Pilar'),('7A47','Pontevedra'),('7A48','President Roxas'),('7A49','Roxas City'),('7A5','Buruanga'),('7A50','Sapi-an'),('7A51','Sigma'),('7A52','Tapaz'),('7A53','Ajuy'),('7A54','Alimodian'),('7A55','Anilao'),('7A56','Badiangan'),('7A57','Balasan'),('7A58','Banate'),('7A59','Barotac Nuevo'),('7A6','Ibajay'),('7A60','Barotac Viejo'),('7A61','Batad'),('7A62','Bingawan'),('7A63','Cabatuan'),('7A64','Calinog'),('7A65','Carles'),('7A66','Concepcion'),('7A67','Dingle'),('7A68','Dueñas'),('7A69','Dumangas'),('7A7','Kalibo'),('7A70','Estancia'),('7A71','Guimbal'),('7A72','Igbaras'),('7A73','Janiuay'),('7A74','Lambunao'),('7A75','Leganes'),('7A76','Lemery'),('7A77','Leon'),('7A78','Maasin'),('7A79','Miagao'),('7A8','Lezo'),('7A80','Mina'),('7A81','New Lucena'),('7A82','Oton'),('7A83','Pavia'),('7A84','Pototan'),('7A85','San Dionisio'),('7A86','San Enrique'),('7A87','San Joaquin'),('7A88','San Miguel'),('7A89','San Rafael'),('7A9','Libacao'),('7A90','Santa Barbara'),('7A91','Sara'),('7A92','Tigbauan'),('7A93','Tubungan'),('7A94','Zarraga'),('7A95','Buenavista'),('7A96','Jordan'),('7A97','Nueva Valencia'),('7A98','San Lorenzo'),('7A99','Sibunag'),('8A1','Alburquerque'),('8A10','Buenavista'),('8A100','Tudela'),('8A101','Enrique Villanueva'),('8A102','Larena'),('8A103','Lazi'),('8A104','Maria'),('8A105','San Juan'),('8A106','Siquijor'),('8A11','Calape'),('8A12','Candijay'),('8A13','Carmen'),('8A14','Catigbian'),('8A15','Clarin'),('8A16','Corella'),('8A17','Cortes'),('8A18','Dagohoy'),('8A19','Danao'),('8A2','Alicia'),('8A20','Dauis'),('8A21','Dimiao'),('8A22','Duero'),('8A23','Garcia Hernandez'),('8A24','Guindulman'),('8A25','Inabanga'),('8A26','Jagna'),('8A27','Lila'),('8A28','Loay'),('8A29','Loboc'),('8A3','Anda'),('8A30','Loon'),('8A31','Mabini'),('8A32','Maribojoc'),('8A33','Panglao'),('8A34','Pilar'),('8A35','Pres. Carlos P. Garcia'),('8A36','Sagbayan'),('8A37','San Isidro'),('8A38','San Miguel'),('8A39','Sevilla'),('8A4','Antequera'),('8A40','Sierra Bullones'),('8A41','Sikatuna'),('8A42','Tagbilaran City'),('8A43','Talibon'),('8A44','Trinidad'),('8A45','Tubigon'),('8A46','Ubay'),('8A47','Valencia'),('8A48','Alcantara'),('8A49','Alcoy'),('8A5','Baclayon'),('8A50','Alegria'),('8A51','Aloguinsan'),('8A52','Argao'),('8A53','Asturias'),('8A54','Badian'),('8A55','Balamban'),('8A56','Bantayan'),('8A57','Barili'),('8A58','Bogo City'),('8A59','Boljoon'),('8A6','Balilihan'),('8A60','Borbon'),('8A61','Carcar City'),('8A62','Carmen'),('8A63','Catmon'),('8A64','Cebu City'),('8A65','Compostela'),('8A66','Consolacion'),('8A67','Cordova'),('8A68','Daanbantayan'),('8A69','Dalaguete'),('8A7','Batuan'),('8A70','Danao City'),('8A71','Dumanjug'),('8A72','Ginatilan'),('8A73','Lapu-Lapu City'),('8A74','Liloan'),('8A75','Madridejos'),('8A76','Malabuyoc'),('8A77','Mandaue City'),('8A78','Medellin'),('8A79','Minglanilla'),('8A8','Bien Unido'),('8A80','Moalboal'),('8A81','Naga City'),('8A82','Oslob'),('8A83','Pilar'),('8A84','Pinamungahan'),('8A85','Poro'),('8A86','Ronda'),('8A87','Samboan'),('8A88','San Fernando'),('8A89','San Francisco'),('8A9','Bilar'),('8A90','San Remigio'),('8A91','Santa Fe'),('8A92','Santander'),('8A93','Sibonga'),('8A94','Sogod'),('8A95','Tabogon'),('8A96','Tabuelan'),('8A97','Talisay City'),('8A98','Toledo City'),('8A99','Tuburan'),('9A1','Arteche'),('9A10','Hernani'),('9A100','Marabut'),('9A101','Matuguinao'),('9A102','Motiong'),('9A103','Pagsanghan'),('9A104','Paranas'),('9A105','Pinabacdao'),('9A106','San Jorge'),('9A107','Anahawan'),('9A108','Bontoc'),('9A109','Hinunangan'),('9A11','Jipapad'),('9A110','Hinundayan'),('9A111','Libagon'),('9A112','Liloan'),('9A113','Limasawa'),('9A114','Maasin City'),('9A115','Macrohon'),('9A116','Malitbog'),('9A117','Padre Burgos'),('9A118','Pintuyan'),('9A119','Saint Bernard'),('9A12','Lawaan'),('9A120','San Francisco'),('9A121','San Juan'),('9A122','San Ricardo'),('9A123','Silago'),('9A124','Sogod'),('9A125','Tomas Oppus'),('9A126','Almeria'),('9A127','Biliran'),('9A128','Cabucgayan'),('9A129','Caibiran'),('9A13','Llorente'),('9A130','Culaba'),('9A131','Kawayan'),('9A132','Maripipi'),('9A133','Naval'),('9A14','Maslog'),('9A15','Maydolong'),('9A16','Mercedes'),('9A17','Oras'),('9A18','Quinapondan'),('9A19','Salcedo'),('9A2','Balangiga'),('9A20','San Julian'),('9A21','San Policarpo'),('9A22','Sulat'),('9A23','Taft'),('9A24','Abuyog'),('9A25','Alangalang'),('9A26','Albuera'),('9A27','Babatngon'),('9A28','Barugo'),('9A29','Bato'),('9A3','Balangkayan'),('9A30','Baybay'),('9A31','Burauen'),('9A32','Calubian'),('9A33','Capoocan'),('9A34','Carigara'),('9A35','Dagami'),('9A36','Dulag'),('9A37','Hilongos'),('9A38','Hindang'),('9A39','Inopacan'),('9A4','Borongan'),('9A40','Isabel'),('9A41','Jaro'),('9A42','Javier'),('9A43','Julita'),('9A44','Kananga'),('9A45','La Paz'),('9A46','Leyte'),('9A47','MacArthur'),('9A48','Mahaplag'),('9A49','Matag-ob'),('9A5','Can-avid'),('9A50','Matalom'),('9A51','Mayorga'),('9A52','Merida'),('9A53','Ormoc'),('9A54','Palo'),('9A55','Palompon'),('9A56','Pastrana'),('9A57','San Isidro'),('9A58','San Miguel'),('9A59','Santa Fe'),('9A6','Dolores'),('9A60','Tabango'),('9A61','Tabontabon'),('9A62','Tacloban'),('9A63','Tanauan'),('9A64','Tolosa'),('9A65','Tunga'),('9A66','Villaba'),('9A67','Allen'),('9A68','Biri'),('9A69','Bobon'),('9A7','General MacArthur'),('9A70','Capul'),('9A71','Catarman'),('9A72','Catubig'),('9A73','Gamay'),('9A74','Laoang'),('9A75','Lapinig'),('9A76','Las Navas'),('9A77','Lavezares'),('9A78','Lope de Vega'),('9A79','Mapanas'),('9A8','Giporlos'),('9A80','Mondragon'),('9A81','Palapag'),('9A82','Pambujan'),('9A83','Rosario'),('9A84','San Antonio'),('9A85','San Isidro'),('9A86','San Jose'),('9A87','San Roque'),('9A88','San Vicente'),('9A89','Silvino Lobos'),('9A9','Guiuan'),('9A90','Victoria'),('9A91','Almagro'),('9A92','Basey'),('9A93','Calbayog City'),('9A94','Calbiga'),('9A95','Catbalogan City'),('9A96','Daram'),('9A97','Gandara'),('9A98','Hinabangan'),('9A99','Jiabong');
/*!40000 ALTER TABLE `manila_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manila_district`
--

DROP TABLE IF EXISTS `manila_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_district` (
  `dist_id` int NOT NULL,
  `dist_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_district`
--

LOCK TABLES `manila_district` WRITE;
/*!40000 ALTER TABLE `manila_district` DISABLE KEYS */;
INSERT INTO `manila_district` VALUES (1,'Third District'),(2,'Fourth District');
/*!40000 ALTER TABLE `manila_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manila_province`
--

DROP TABLE IF EXISTS `manila_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_province` (
  `prov_id` varchar(45) NOT NULL,
  `prov_name` varchar(45) DEFAULT NULL,
  `region_used` int DEFAULT NULL,
  PRIMARY KEY (`prov_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_province`
--

LOCK TABLES `manila_province` WRITE;
/*!40000 ALTER TABLE `manila_province` DISABLE KEYS */;
INSERT INTO `manila_province` VALUES ('10A1','Zamboanga del Norte',10),('10A2','Zamboanga del Sur',10),('10A3','Zamboanga Sibugay',10),('11A1','Bukidnon',11),('11A2','Camiguin',11),('11A3','Lanao Del Norte',11),('11A4','Misamis Occidental',11),('11A5','Misamis Oriental',11),('12A2','Davao Del Norte',12),('12A3','Davao Del Sur',12),('12A4','Davao Oriental',12),('12A5','Davao De Oro',12),('13A1','Cotabato',13),('13A2','Sarangani',13),('13A3','South Cotabato',13),('13A4','Sultan Kudarat',13),('14A1','First District',14),('14A2','Second District',14),('14A3','Third District',14),('14A4','Fourth District',14),('15A1','Abra',15),('15A2','Apayao',15),('15A3','Benguet',15),('15A4','Ifugao',15),('16A1','Basilan',16),('16A2','Lanao del Sur',16),('16A3','Maguindanao',16),('16A4','Sulu',16),('16A5','Tawi-Tawi',16),('17A1','Agusan del Norte',17),('17A2','Agusan del Sur',17),('17A3','Surigao del Norte',17),('17A4','Surigao del Sur',17),('17A5','Dinagat Islands',17),('1A1','Ilocos Norte',1),('1A2','Ilocos Sur',1),('1A3','La Union',1),('1A4','Pangasinan',1),('2A1','Batanes',2),('2A2','Cagayan',2),('2A3','Isabela',2),('2A4','Nueva Viscaya',2),('2A5','Quirino',2),('3A1','Aurora',3),('3A2','Bataan',3),('3A3','Bulacan',3),('3A4','Nueva Ecija',3),('3A5','Pampanga',3),('3A6','Tarlac',3),('3A7','Zambales',3),('4A1','Batangas',4),('4A2','Cavite',4),('4A3','Laguna',4),('4A4','Rizal',4),('4A5','Quezon',4),('5A1','Occidental Mindoro',5),('5A2','Oriental Mindoro',5),('5A3','Marinduque',5),('5A4','Romblon',5),('5A5','Palawan',5),('6A1','Albay',6),('6A2','Camarines Norte',6),('6A3','Camarines Sur',6),('6A4','Catanduanes',6),('6A5','Masbate',6),('6A6','Sorsogon',6),('7A1','Aklan',7),('7A2','Antique',7),('7A3','Capiz',7),('7A4','Ilo-ilo',7),('7A5','Guimaras',7),('8A1','Bohol',8),('8A2','Cebu',8),('8A3','Siquijor',8),('9A1','Eastern Samar',9),('9A2','Leyte',9),('9A3','Northern Samar',9),('9A4','Western Samar (Samar)',9),('9A5','Southern Leyte',9),('9A6','Biliran',9);
/*!40000 ALTER TABLE `manila_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manila_region`
--

DROP TABLE IF EXISTS `manila_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_region` (
  `region_id` int NOT NULL,
  `region_name` text,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_region`
--

LOCK TABLES `manila_region` WRITE;
/*!40000 ALTER TABLE `manila_region` DISABLE KEYS */;
INSERT INTO `manila_region` VALUES (1,'Region I - Ilocos Region'),(2,'Region II - Cagayan Valley'),(3,'Region III - Central Luzon'),(4,'Region IV-A - Calabarzon'),(5,'Mimaropa'),(6,'Region V - Bicol Region'),(7,'Region VI - Western Visayas'),(8,'Region VII - Central Visayas'),(9,'Region VIII - Eastern Visayas'),(10,'Region IX - Northern Mindanao'),(11,'Region X - Zamboanga Peninsula'),(12,'Region XI - Davao Region'),(13,'Region XII - Soccksargen'),(14,'National Capital Region (NCR)'),(15,'Cordillera Administrative Region (CAR) '),(16,'Autonomous Region in Muslim Mindanao (ARMM)'),(17,'Region XIII (Caraga) ');
/*!40000 ALTER TABLE `manila_region` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marriage_cert`
--

LOCK TABLES `marriage_cert` WRITE;
/*!40000 ALTER TABLE `marriage_cert` DISABLE KEYS */;
INSERT INTO `marriage_cert` VALUES ('17029994-FBD6DDD7B',15,'15A3','15A40','2020-12-08');
/*!40000 ALTER TABLE `marriage_cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metromanila_cities`
--

DROP TABLE IF EXISTS `metromanila_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metromanila_cities` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(1024) NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `idx_city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metromanila_cities`
--

LOCK TABLES `metromanila_cities` WRITE;
/*!40000 ALTER TABLE `metromanila_cities` DISABLE KEYS */;
INSERT INTO `metromanila_cities` VALUES (1,'Manila'),(2,'Quezon City'),(3,'Davao'),(4,'Caloocan City'),(5,'Canagatan'),(6,'Taguig City'),(7,'Pasig City'),(8,'Valenzuela'),(9,'City of Parañaque'),(10,'Bacoor'),(11,'Tondo'),(12,'Las Piñas City'),(13,'Pasay City'),(14,'Mandaluyong City'),(15,'Malabon'),(16,'San Pedro'),(17,'Navotas'),(18,'Santa Ana'),(19,'General Mariano Alvarez'),(20,'Payatas'),(21,'San Andres'),(22,'Santa Cruz'),(23,'San Juan'),(24,'Poblacion'),(25,'Santa Mesa'),(26,'Bagong Silangan'),(27,'Putatan'),(28,'Western Bicutan'),(29,'Banco Filipino International Village'),(30,'Paco'),(31,'Malate'),(32,'Pandacan'),(33,'San Isidro'),(34,'San Antonio'),(35,'Pateros'),(36,'Tatalon'),(37,'Sucat'),(38,'Don Bosco'),(39,'Lower Bicutan'),(40,'Bignay'),(41,'Bagumbayan'),(42,'Upper Bicutan'),(43,'Marikina Heights'),(44,'Central Signal Village'),(45,'Bayanan'),(46,'Karuhatan'),(47,'Bel-Air'),(48,'Santo Niño'),(49,'Pansol'),(50,'Baclaran'),(51,'West Rembo'),(52,'Bagong Pag-Asa'),(53,'Pinyahan');
/*!40000 ALTER TABLE `metromanila_cities` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother_info`
--

LOCK TABLES `mother_info` WRITE;
/*!40000 ALTER TABLE `mother_info` DISABLE KEYS */;
INSERT INTO `mother_info` VALUES ('1','Celestine','P.','Lagaras',NULL,NULL),('17019893-300D8D9FB','YUKIKO','M','SHINICHI','II',NULL),('17019936-51C07D067',NULL,NULL,NULL,NULL,NULL),('17020137-A05C9E724','MILES','DAA','LUNA','IV',NULL),('17020144-BFF97EECD','MILES','DAA','LUNA',NULL,NULL),('17020442-40C40DD99','MILES','DAA','LUNA',NULL,NULL),('17022636-5F00F5282','ASDASD','ASDASD','ASD','IX',NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mother_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `period` (
  `period_id` int NOT NULL AUTO_INCREMENT,
  `period_time` varchar(255) NOT NULL,
  PRIMARY KEY (`period_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession_type`
--

DROP TABLE IF EXISTS `profession_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profession_type` (
  `prof_id` int NOT NULL AUTO_INCREMENT,
  `prof_type` varchar(255) NOT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession_type`
--

LOCK TABLES `profession_type` WRITE;
/*!40000 ALTER TABLE `profession_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `profession_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `prov_id` varchar(45) NOT NULL,
  `prov_name` varchar(45) DEFAULT NULL,
  `region_used` int DEFAULT NULL,
  PRIMARY KEY (`prov_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES ('10A1','Zamboanga del Norte',10),('10A2','Zamboanga del Sur',10),('10A3','Zamboanga Sibugay',10),('11A1','Bukidnon',11),('11A2','Camiguin',11),('11A3','Lanao Del Norte',11),('11A4','Misamis Occidental',11),('11A5','Misamis Oriental',11),('12A2','Davao Del Norte',12),('12A3','Davao Del Sur',12),('12A4','Davao Oriental',12),('12A5','Davao De Oro',12),('13A1','Cotabato',13),('13A2','Sarangani',13),('13A3','South Cotabato',13),('13A4','Sultan Kudarat',13),('14A1','First District',14),('14A2','Second District',14),('14A3','Third District',14),('14A4','Fourth District',14),('15A1','Abra',15),('15A2','Apayao',15),('15A3','Benguet',15),('15A4','Ifugao',15),('16A1','Basilan',16),('16A2','Lanao del Sur',16),('16A3','Maguindanao',16),('16A4','Sulu',16),('16A5','Tawi-Tawi',16),('17A1','Agusan del Norte',17),('17A2','Agusan del Sur',17),('17A3','Surigao del Norte',17),('17A4','Surigao del Sur',17),('17A5','Dinagat Islands',17),('1A1','Ilocos Norte',1),('1A2','Ilocos Sur',1),('1A3','La Union',1),('1A4','Pangasinan',1),('2A1','Batanes',2),('2A2','Cagayan',2),('2A3','Isabela',2),('2A4','Nueva Viscaya',2),('2A5','Quirino',2),('3A1','Aurora',3),('3A2','Bataan',3),('3A3','Bulacan',3),('3A4','Nueva Ecija',3),('3A5','Pampanga',3),('3A6','Tarlac',3),('3A7','Zambales',3),('4A1','Batangas',4),('4A2','Cavite',4),('4A3','Laguna',4),('4A4','Rizal',4),('4A5','Quezon',4),('5A1','Occidental Mindoro',5),('5A2','Oriental Mindoro',5),('5A3','Marinduque',5),('5A4','Romblon',5),('5A5','Palawan',5),('6A1','Albay',6),('6A2','Camarines Norte',6),('6A3','Camarines Sur',6),('6A4','Catanduanes',6),('6A5','Masbate',6),('6A6','Sorsogon',6),('7A1','Aklan',7),('7A2','Antique',7),('7A3','Capiz',7),('7A4','Ilo-ilo',7),('7A5','Guimaras',7),('8A1','Bohol',8),('8A2','Cebu',8),('8A3','Siquijor',8),('9A1','Eastern Samar',9),('9A2','Leyte',9),('9A3','Northern Samar',9),('9A4','Western Samar (Samar)',9),('9A5','Southern Leyte',9),('9A6','Biliran',9);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purpose_type`
--

DROP TABLE IF EXISTS `purpose_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purpose_type` (
  `purpose_id` int NOT NULL,
  `purpose_type` varchar(45) NOT NULL,
  PRIMARY KEY (`purpose_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purpose_type`
--

LOCK TABLES `purpose_type` WRITE;
/*!40000 ALTER TABLE `purpose_type` DISABLE KEYS */;
INSERT INTO `purpose_type` VALUES (1,'Claim Benefits / Loan'),(2,'Passport / Travel'),(3,'School Requirements'),(4,'Employment Local'),(5,'Employment Abroad');
/*!40000 ALTER TABLE `purpose_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int NOT NULL,
  `region_name` text,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Region I - Ilocos Region'),(2,'Region II - Cagayan Valley'),(3,'Region III - Central Luzon'),(4,'Region IV-A - Calabarzon'),(5,'Mimaropa'),(6,'Region V - Bicol Region'),(7,'Region VI - Western Visayas'),(8,'Region VII - Central Visayas'),(9,'Region VIII - Eastern Visayas'),(10,'Region IX - Northern Mindanao'),(11,'Region X - Zamboanga Peninsula'),(12,'Region XI - Davao Region'),(13,'Region XII - Soccksargen'),(14,'National Capital Region (NCR)'),(15,'Cordillera Administrative Region (CAR) '),(16,'Autonomous Region in Muslim Mindanao (ARMM)'),(17,'Region XIII (Caraga) ');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_period`
--

DROP TABLE IF EXISTS `register_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_period` (
  `reg_id` int NOT NULL,
  `reg_period` varchar(255) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_period`
--

LOCK TABLES `register_period` WRITE;
/*!40000 ALTER TABLE `register_period` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `religion_type`
--

DROP TABLE IF EXISTS `religion_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `religion_type` (
  `religion_id` int NOT NULL AUTO_INCREMENT,
  `religion_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`religion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religion_type`
--

LOCK TABLES `religion_type` WRITE;
/*!40000 ALTER TABLE `religion_type` DISABLE KEYS */;
INSERT INTO `religion_type` VALUES (1,'Roman Catholic'),(2,'Islam'),(3,'Iglesia ni Cristo'),(4,'Seventh Day Adventist'),(5,'Aglipay'),(6,'Iglesia Filipina Independiente'),(7,'Bible Baptist Church'),(8,'UCCP'),(9,'Jehova\'s Witness'),(10,'Church of Christ'),(11,'MCGI');
/*!40000 ALTER TABLE `religion_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_status`
--

DROP TABLE IF EXISTS `res_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_status` (
  `res_id` int NOT NULL,
  `res_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_status`
--

LOCK TABLES `res_status` WRITE;
/*!40000 ALTER TABLE `res_status` DISABLE KEYS */;
INSERT INTO `res_status` VALUES (0,NULL),(1,'Resident'),(2,'Non-resident');
/*!40000 ALTER TABLE `res_status` ENABLE KEYS */;
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
  `transaction_id` int NOT NULL,
  PRIMARY KEY (`rp_id`)
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
  PRIMARY KEY (`transaction_id`)
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
  PRIMARY KEY (`transaction_id`)
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
-- Table structure for table `sex_type`
--

DROP TABLE IF EXISTS `sex_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sex_type` (
  `sex_id` int NOT NULL,
  `sex_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sex_id`),
  KEY `idx_sex_id` (`sex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sex_type`
--

LOCK TABLES `sex_type` WRITE;
/*!40000 ALTER TABLE `sex_type` DISABLE KEYS */;
INSERT INTO `sex_type` VALUES (0,NULL),(1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `sex_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_type`
--

DROP TABLE IF EXISTS `status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_type` (
  `status_id` int NOT NULL,
  `status_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_type`
--

LOCK TABLES `status_type` WRITE;
/*!40000 ALTER TABLE `status_type` DISABLE KEYS */;
INSERT INTO `status_type` VALUES (1,'Pending'),(2,'Paid'),(3,'Completed'),(4,'Cancelled'),(5,'Rejected');
/*!40000 ALTER TABLE `status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suffix_type`
--

DROP TABLE IF EXISTS `suffix_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suffix_type` (
  `suffix_id` int NOT NULL,
  `suffix_type` varchar(255) NOT NULL,
  PRIMARY KEY (`suffix_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suffix_type`
--

LOCK TABLES `suffix_type` WRITE;
/*!40000 ALTER TABLE `suffix_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `suffix_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_amount`
--

DROP TABLE IF EXISTS `trans_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_amount` (
  `amount_id` int NOT NULL,
  `amount_value` int DEFAULT NULL,
  PRIMARY KEY (`amount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_amount`
--

LOCK TABLES `trans_amount` WRITE;
/*!40000 ALTER TABLE `trans_amount` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans_status`
--

DROP TABLE IF EXISTS `trans_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trans_status` (
  `status_id` int NOT NULL,
  `status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_status`
--

LOCK TABLES `trans_status` WRITE;
/*!40000 ALTER TABLE `trans_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `trans_status` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_info`
--

LOCK TABLES `transaction_info` WRITE;
/*!40000 ALTER TABLE `transaction_info` DISABLE KEYS */;
INSERT INTO `transaction_info` VALUES ('17020413-5ABCB8C21',NULL,NULL,NULL,NULL,NULL),('17020416-1F6B6670E',NULL,NULL,NULL,NULL,NULL),('17020416-A4845FC12',NULL,NULL,NULL,NULL,NULL),('17020417-A54694761',NULL,NULL,NULL,NULL,NULL),('17020419-DA950D3B8',NULL,NULL,NULL,'1',NULL),('17020421-C255FFEC1',NULL,NULL,NULL,'PHILHEALTH',NULL),('17020424-62CFA8BD5',NULL,NULL,NULL,NULL,NULL),('17020424-895E5BD47',NULL,NULL,NULL,NULL,NULL),('17020424-AA050D8E2',NULL,NULL,NULL,NULL,NULL),('17020425-065E991E5',NULL,NULL,NULL,'SSS',NULL),('17020425-F04B6D097',NULL,NULL,NULL,'SSS',NULL),('17020428-9202CDE90',NULL,NULL,NULL,'UMID',NULL),('17020430-DF4BA6C30',NULL,NULL,NULL,NULL,NULL),('17020435-C0B97A87A',NULL,NULL,NULL,NULL,NULL),('17020436-2E5B1019F',NULL,NULL,NULL,NULL,NULL),('17020437-679260968','1',NULL,NULL,NULL,NULL),('17020440-91A45CC94',NULL,NULL,NULL,NULL,NULL),('17020441-D3F7827FF',NULL,NULL,NULL,NULL,NULL),('17020442-40C40DD99','150',2,'Back',NULL,NULL),('17020442-539F81560','100',1,'Back',NULL,NULL),('17020444-72867D68E',NULL,NULL,NULL,NULL,NULL),('17020446-B24E6B13C',NULL,NULL,NULL,NULL,NULL),('17020446-CD2B8C39B',NULL,NULL,NULL,NULL,NULL),('17020447-2EDAE2864',NULL,NULL,NULL,'PHILHEALTH',NULL),('17020448-AF753405B',NULL,NULL,NULL,'PHILHEALTH',NULL),('17020450-DD4CE44AE',NULL,NULL,NULL,NULL,NULL),('17020454-7EEAB7D97',NULL,NULL,NULL,NULL,NULL),('17020455-3BA3B8883',NULL,NULL,NULL,NULL,NULL),('17020457-CF3680A23',NULL,NULL,NULL,NULL,NULL),('17020460-6B044F290',NULL,NULL,NULL,NULL,NULL),('17020461-81F3BE299','150',2,'Back','9',3),('17020463-E45AEAADA',NULL,NULL,NULL,NULL,NULL),('17020466-119320C82',NULL,NULL,NULL,NULL,NULL),('17020466-FE90278AF',NULL,NULL,NULL,NULL,NULL),('17020466-FF91A5FB9',NULL,NULL,NULL,NULL,NULL),('17020467-1E08D1D30',NULL,NULL,NULL,NULL,NULL),('17020468-A547987EB',NULL,NULL,NULL,NULL,NULL),('17020470-6425F8373',NULL,NULL,NULL,NULL,NULL),('17020473-18E1B1749',NULL,NULL,NULL,NULL,NULL),('17020473-7DD9CA7F8',NULL,NULL,NULL,NULL,NULL),('17020475-1DD3557F1',NULL,NULL,NULL,NULL,NULL),('17020476-8F78476DF',NULL,NULL,NULL,NULL,NULL),('17020479-CAECCF834',NULL,NULL,NULL,NULL,NULL),('17020482-FA2810045',NULL,NULL,NULL,NULL,NULL),('17020881-584A7F49E',NULL,NULL,NULL,NULL,NULL),('17020886-0A09A4BDA',NULL,NULL,NULL,NULL,NULL),('17020888-3B914FDF6','',NULL,NULL,NULL,NULL),('17020890-490E9D40B','',NULL,NULL,NULL,NULL),('17020890-F3C3DFBD8','',NULL,NULL,NULL,NULL),('17020892-1312F7206','',NULL,NULL,NULL,NULL),('17020893-CB538B206',NULL,NULL,NULL,NULL,NULL),('17020899-AB82EE4A3',NULL,NULL,NULL,NULL,NULL),('17020900-DF78237D1',NULL,NULL,NULL,NULL,NULL),('17020924-383DC64E7','0',NULL,NULL,NULL,NULL),('17022151-EFA786D6C','200',3,'Front','10',2),('17022636-5F00F5282','850',8,'Front and Back','4',2),('17023012-42E881DB9','450',4,'Front and Back','10',1),('17026944-2E7CC2786','850',8,'Front and Back','9',4),('17026976-F39895B8C','850',8,'Front and Back','9',4),('17026979-70D8E665C','850',8,'Front and Back','9',4),('17029679-512296B9B','100',NULL,NULL,NULL,NULL),('17029994-FBD6DDD7B','500',9,'Back','9',2);
/*!40000 ALTER TABLE `transaction_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_type` (
  `trans_type_id` int NOT NULL,
  `trans_type` varchar(45) NOT NULL,
  PRIMARY KEY (`trans_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,'Real Property Tax Payment'),(2,'Real Property Tax Clearance'),(3,'Business Permit'),(4,'Community Tax Certificate'),(5,'Birth Certificate'),(6,'Death Certificate'),(7,'Marriage Certificate');
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_auth` (
  `mobile_no` varchar(45) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES ('09987764531','ancheta','AA4531'),('1234235385','Anna1@','AA5385'),('09887456654','aguilar','AA6654'),('1234237563','Annalyn123@','AA7563'),('09754137348','basa','AB7348'),('09998774654','luro','AL4654'),('09987745634','labindalawa','AL5634'),('1234561213','Paolo123@','AP1213'),('09963541268','rodrigo','AR1268'),('09852456323','enriquez','BE6323'),('09112354786','aleta','CA4786'),('09997786523','cristobal','CC6523'),('09987456312','manjares','CM6312'),('9326436427','fsfdsffdd','CM6427'),('09639765413','manapol','DM5413'),('09636163980','torres','DT3980'),('09877886546','sagadraca','GS6546'),('09756184906','dones','JD4906'),('09687465321','mendoza','JM5321'),('09998746533','pacris','JP6533'),('0996654123','camigla','LC4123'),('09778546322','alcala','MA6322'),('09233376652','alvarez','MA6652'),('09381676352','luna','ML6352'),('09761793284','matis','MM3284'),('12345612345','naomi123','NC2345'),('12345678901','ppaa','PA8901'),('09770210586','maghirang','PM0586'),('09770987654','maghirang','PM7654'),('9454731741','lagaras','RL1741'),('09874456321','aquino','SA6321'),('1234455567','fsfdsffdd','TT5567'),('09866531565','villaflor','TV1565');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_contact`
--

DROP TABLE IF EXISTS `user_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contact` (
  `user_id` varchar(45) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(45) NOT NULL,
  `tel_no` varchar(45) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `prov_id` varchar(45) DEFAULT NULL,
  `city_id` varchar(45) DEFAULT NULL,
  `house_floor` varchar(45) DEFAULT NULL,
  `bldg_name` varchar(45) DEFAULT NULL,
  `brgy_dist` varchar(45) DEFAULT NULL,
  `zip_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_contact_user_city_idx` (`region_id`),
  KEY `fk_user_contact_user_prov_idx` (`prov_id`),
  KEY `fk_user_contact_city_idx` (`city_id`),
  CONSTRAINT `fk_user_contact_city` FOREIGN KEY (`city_id`) REFERENCES `cities` (`city_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_contact_province` FOREIGN KEY (`prov_id`) REFERENCES `province` (`prov_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_contact_region` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_contact`
--

LOCK TABLES `user_contact` WRITE;
/*!40000 ALTER TABLE `user_contact` DISABLE KEYS */;
INSERT INTO `user_contact` VALUES ('AA4531',NULL,'09987764531',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AA6654',NULL,'09887456654',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AB7348',NULL,'09754137348',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AL4654',NULL,'09998774654',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AL5634',NULL,'09987745634',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AP1213',NULL,'123 - 456 - 1213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AR1268',NULL,'09963541268',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('BE6323',NULL,'09852456323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CA4786',NULL,'09112354786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CC6523',NULL,'09997786523',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CM6312',NULL,'09987456312',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DM5413',NULL,'09639765413',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DT3980',NULL,'09636163980',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('GS6546',NULL,'09877886546',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('JD4906',NULL,'09756184906',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('JM5321',NULL,'09687465321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('JP6533',NULL,'09998746533',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('LC4123',NULL,'0996654123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MA6322',NULL,'09778546322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MA6652',NULL,'09233376652',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ML6352',NULL,'09381676352',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PM0586',NULL,'09770210586',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RL1741','ruficarllagaras@gmail.com','09454731741','02178167',3,'3A3','3A23','1st Floor','Zobel Street','Brgy. Dimagiba','1772'),('SA6321',NULL,'09874456321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('TV1565',NULL,'09866531565',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_gov_id`
--

DROP TABLE IF EXISTS `user_gov_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_gov_id` (
  `user_id` varchar(255) NOT NULL,
  `user_tin_id` varchar(255) DEFAULT NULL,
  `user_pgb_id` varchar(255) DEFAULT NULL,
  `user_philh_id` varchar(255) DEFAULT NULL,
  `user_sss_id` varchar(255) DEFAULT NULL,
  `user_gsis_id` varchar(255) DEFAULT NULL,
  `user_natl_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_gov_id`
--

LOCK TABLES `user_gov_id` WRITE;
/*!40000 ALTER TABLE `user_gov_id` DISABLE KEYS */;
INSERT INTO `user_gov_id` VALUES ('AP1213',NULL,NULL,NULL,NULL,NULL,NULL),('RL1741','12345','12345','12345','12345','12345','12345');
/*!40000 ALTER TABLE `user_gov_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_personal`
--

DROP TABLE IF EXISTS `user_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_personal` (
  `user_id` varchar(45) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) NOT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `sex_type` enum('Male','Female') DEFAULT NULL,
  `cvl_status` enum('Single','Married','Separated','Widowed') DEFAULT NULL,
  `res_status` enum('Resident','Non-Resident') DEFAULT NULL,
  `czn_status` enum('Citizen','Permanent Resident','Temporary Resident') DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_personal`
--

LOCK TABLES `user_personal` WRITE;
/*!40000 ALTER TABLE `user_personal` DISABLE KEYS */;
INSERT INTO `user_personal` VALUES ('AP1213','ADRIAN',NULL,'PAO',NULL,NULL,NULL,NULL,NULL),('MM3284','Mhandee Louise','Bautista','Matis',NULL,'Female','Married',NULL,NULL),('RL1741','Rufi Carl','Prudenciado','Lagaras','IX','Female','Single','Resident','Citizen');
/*!40000 ALTER TABLE `user_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_reg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) NOT NULL,
  `l_name` varchar(45) NOT NULL,
  `mobile_no` varchar(45) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reg`
--

LOCK TABLES `user_reg` WRITE;
/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` VALUES (1,'Rufi Carl','Lagaras','09454731741','RL1741'),(4,'Atanacio Devinz','Basa','09754137348','AB7348'),(5,'Paolo','Maghirang','09770210586','PM0586'),(6,'Danilo','Torres','09636163980','DT3980'),(10,'Miles','Luna','09381676352','ML6352'),(11,'Jule','Dones','09756184906','JD4906'),(12,'Miah','Alvarez','09233376652','MA6652'),(13,'Dann Gabriel','Manapol','09639765413','DM5413'),(14,'Judgeson','Mendoza','09687465321','JM5321'),(15,'Maxine','Alcala','09778546322','MA6322'),(16,'Joyce','Pacris','09998746533','JP6533'),(17,'Christine','Cristobal','09997786523','CC6523'),(18,'Sandra','Aquino','09874456321','SA6321'),(19,'Lucky','Camigla','0996654123','LC4123'),(20,'Tristan','Villaflor','09866531565','TV1565'),(21,'Golden','Sagadraca','09877886546','GS6546'),(22,'Aepreha','Labindalawa','09987745634','AL5634'),(23,'Ailah','Rodrigo','09963541268','AR1268'),(24,'Andrea','Aguilar','09887456654','AA6654'),(25,'Angelene','Luro','09998774654','AL4654'),(26,'Ara Lou','Ancheta','09987764531','AA4531'),(27,'Bart Joshua','Enriquez','09852456323','BE6323'),(28,'Chrystal Zhane','Aleta','09112354786','CA4786'),(29,'Coline','Manjares','09987456312','CM6312'),(35,'Naomi','Campbell','12345612345','NC2345'),(36,'CHRISTINE','MARIE','9326436427','CM6427'),(47,'ADRIAN','PAO','1234561213','AP1213');
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;
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
INSERT INTO `user_transaction` VALUES ('17009060-A708EA32B','RL1741',1,'Pending','2023-11-25 00:00:00'),('17015126-3A70B15A2','RL1741',1,'Expired','2023-12-02 18:23:55'),('17016979-751406E50','RL1741',1,'Rejected','2023-12-04 21:53:04'),('17016979-F642485F9','RL1741',1,'Expired','2023-12-04 21:51:42'),('17019936-51C07D067','RL1741',5,'Pending','2023-12-08 08:01:30'),('17020461-81F3BE299','RL1741',6,'Pending','2023-12-08 22:36:06'),('17020917-D40D8493F','RL1741',4,'Pending','2023-12-09 11:16:05'),('17022151-EFA786D6C','RL1741',6,'Pending','2023-12-10 21:32:45'),('17022636-5F00F5282','RL1741',5,'Pending','2023-12-11 11:00:41'),('17023012-42E881DB9','RL1741',6,'Pending','2023-12-11 21:27:10'),('17026944-2E7CC2786','RL1741',5,'Pending','2023-12-16 10:41:19'),('17026976-F39895B8C','RL1741',5,'Pending','2023-12-16 11:33:51'),('17026979-70D8E665C','RL1741',5,'Pending','2023-12-16 11:39:30'),('17029679-512296B9B','RL1741',2,'Pending','2023-12-19 14:39:59'),('17029994-FBD6DDD7B','RL1741',7,'Pending','2023-12-19 23:23:31');
/*!40000 ALTER TABLE `user_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valid_id_type`
--

DROP TABLE IF EXISTS `valid_id_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valid_id_type` (
  `valid_id` int NOT NULL,
  `valid_id_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`valid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valid_id_type`
--

LOCK TABLES `valid_id_type` WRITE;
/*!40000 ALTER TABLE `valid_id_type` DISABLE KEYS */;
INSERT INTO `valid_id_type` VALUES (1,'Passport'),(2,'SSS'),(3,'UMID'),(4,'Philhealth'),(5,'Driver\'s License'),(6,'Voter\'s ID'),(7,'Senior Citizen\'s ID'),(8,'Postal ID'),(9,'Barangay ID'),(10,'National ID'),(11,'Authorization Letter');
/*!40000 ALTER TABLE `valid_id_type` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wife_info`
--

LOCK TABLES `wife_info` WRITE;
/*!40000 ALTER TABLE `wife_info` DISABLE KEYS */;
INSERT INTO `wife_info` VALUES ('17029994-FBD6DDD7B','ASDASD','ASDASDASD','ASDASDAD','IV');
/*!40000 ALTER TABLE `wife_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `year` (
  `year_id` int NOT NULL,
  `year_period` int NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `year`
--

LOCK TABLES `year` WRITE;
/*!40000 ALTER TABLE `year` DISABLE KEYS */;
INSERT INTO `year` VALUES (1,2024),(2,2023),(3,2022),(4,2021),(5,2020),(6,2019),(7,2018),(8,2017),(9,2016),(10,2015),(11,2014),(12,2013),(13,2012),(14,2011),(15,2010),(16,2009),(17,2008),(18,2007),(19,2006),(20,2005),(21,2004),(22,2003),(23,2002),(24,2001),(25,2000),(26,1999),(27,1998),(28,1997),(29,1996),(30,1995),(31,1994),(32,1993),(33,1992),(34,1991),(35,1990),(36,1989),(37,1988),(38,1987),(39,1986),(40,1985),(41,1984),(42,1983),(43,1982),(44,1981),(45,1980),(46,1979),(47,1978),(48,1977),(49,1976),(50,1975),(51,1974),(52,1973),(53,1972),(54,1971),(55,1970),(56,1969),(57,1968),(58,1967),(59,1966),(60,1965),(61,1964),(62,1963),(63,1962),(64,1961),(65,1960),(66,1959),(67,1958),(68,1957);
/*!40000 ALTER TABLE `year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19 23:24:10
