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
  KEY `fk_address_info_region_id` (`region_id`),
  CONSTRAINT `fk_address_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_address_info_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_info`
--

LOCK TABLES `address_info` WRITE;
/*!40000 ALTER TABLE `address_info` DISABLE KEYS */;
INSERT INTO `address_info` VALUES ('17047822-0CDA67EC9','maria.reyes@outlook.com','09171234567','021234567',14,'14A2','14A21','BARANGAY 234','22','MAIN STREET','1100'),('17047827-B72708D86','john.limjoco@gmail.com','09189876543','029876543',4,'4A2','4A54','BARANGAY TRES','26','SECOND STREET','4100'),('17047830-4DB8D3625','andres.gonzales@gmail.com','09203456789','023456789',3,'3A5','3A72','TEXAS','12','THIRD STREET','2000'),('17047835-742F92DC9','patricia.tan@outlook.com','09222345678','022345678',9,'9A2','9A62','PASCUAL','8','BAHAGHARI','6500'),('17047840-6E61E82C9','maryann.ramirez@email.com','09219876543','029876543',4,'4A2','4A37','MOLINO','20','ORCHID ST.','4102'),('17047868-CCA552F32',NULL,NULL,NULL,7,'7A4','7A72','MOLO','11','ORCHID STREET','5101'),('17047883-51B7F99E3',NULL,NULL,NULL,15,'15A3','15A35','IRISAN','08','SUNFLOWER STREET','2600'),('17047884-AFA5CB3FE',NULL,NULL,NULL,12,'12A3','12A24','MATINA','56','ACACIA STREET','8008'),('17047885-804EF01E1',NULL,NULL,NULL,14,'14A3','14A25','SANJOSE','89','A.PASCUAL','1485'),('17047887-7BE9D5D1E',NULL,NULL,NULL,14,'14A2','14A21','BARANGAY 2','12','BACOG','2345'),('17047892-91FE1980D',NULL,NULL,NULL,14,'14A2','14A21','BANGUS','22','ORCHID STREET','1123'),('17047934-D690A114E',NULL,NULL,NULL,14,'14A1','14A10','PINABUHATAN','22','BAGONG SILANG','1202'),('17047951-6B9A3F671',NULL,NULL,NULL,14,'14A3','14A25','SANJOSE','87','TUAZON','2234'),('17047955-36486A467',NULL,NULL,NULL,14,'14A1','14A15','UGBO','22','BARANGGAY 2','1923'),('17047961-ACC6DDBBC',NULL,NULL,NULL,17,'17A2','17A21','ALWAS','201','RAHA BAGINDA','2211'),('17047981-C3805DC53',NULL,NULL,NULL,14,'14A1','14A16','BARANGGAY DOS','221','LITTLE SAMAR','2122'),('17048000-243B301A7',NULL,NULL,NULL,14,'14A1','14A17','BONIFACIO','23','RIZAL','1126'),('17048010-BEF3D5071',NULL,NULL,NULL,14,'14A1','14A10','POBLASCION','21','LOT 1','2124'),('17048020-AD3785399',NULL,NULL,NULL,14,'14A1','14A4','ROBLES','01','LOT 2','1922'),('17048034-284929F51',NULL,NULL,NULL,14,'14A1','14A7','TANGOS','22','BAGONG KALSADA','1223'),('17048043-0908C698A',NULL,NULL,NULL,15,'15A2','15A30','REMEDIOS','291','LOT 24','8772'),('17048090-8DE4FDFEF',NULL,NULL,NULL,14,'14A2','14A21','REMEDIOS','54A','BLOCK 2','1241'),('17048093-2136D88EA',NULL,NULL,NULL,6,'6A3','6A24','PAGSANHAN','12','TALON','2123'),('17048095-E67CED1A5',NULL,NULL,NULL,14,'14A1','14A3','SAN ILDEFONSO','77','IGNACIO','2261'),('17048098-192B3DC18',NULL,NULL,NULL,14,'14A1','14A14','FLORENTINO','88A','48TH ST.','8817'),('17059044-0315A9883',NULL,NULL,NULL,4,'4A3','4A61','ASDASDAS','DASDASDASD','ASDASDASD','1232'),('17059113-FD9F78EE1',NULL,NULL,NULL,4,'4A3','4A59','ASDASD','ASDASD','ASD','231'),('17059121-0174C3AF2',NULL,NULL,NULL,13,'13A3','13A33','ASDASDASD','ASDASDAS','ASDASDAS','2311'),('17059121-1BD871F23',NULL,NULL,NULL,13,'13A3','13A33','ASDASDASD','ASDASDAS','ASDASDAS','2311'),('17059162-A89EFA0E7',NULL,NULL,NULL,2,'2A2','1B8','ASSDASD','ASDASD','ASDASD','212'),('17059958-E1AA605E9',NULL,NULL,NULL,14,'14A2','14A20','DASDSAD','ASDASD','ASDASDA','2312');
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
INSERT INTO `birth_cert` VALUES ('17047892-91FE1980D',14,'14A2','14A21'),('17047934-D690A114E',4,'4A2','4A45'),('17047951-6B9A3F671',14,'14A3','14A24'),('17047955-36486A467',14,'14A1','14A15'),('17047961-ACC6DDBBC',9,'9A3','9A70'),('17059044-0315A9883',16,'16A2','16A13'),('17059958-E1AA605E9',15,'15A2','15A30');
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
  `sex_id` int DEFAULT NULL,
  `hospital_name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `birth_reg_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_birth_doc_owner_sex_id` (`sex_id`),
  CONSTRAINT `fk_birth_doc_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_birth_doc_owner_sex_id` FOREIGN KEY (`sex_id`) REFERENCES `sex_type` (`sex_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_doc_owner`
--

LOCK TABLES `birth_doc_owner` WRITE;
/*!40000 ALTER TABLE `birth_doc_owner` DISABLE KEYS */;
INSERT INTO `birth_doc_owner` VALUES ('17047892-91FE1980D','CRUZ','MARIA ANGELA','GONZALES',NULL,2,'ST. LUKE\'S MEDICAL CENTER',NULL,NULL),('17047934-D690A114E','ROBLES','NICHOLAS','DE LEON',NULL,1,'TONDO HOSPITAL',NULL,NULL),('17047951-6B9A3F671','PIOZON','FRANZ KELVIN','POLICARPIO',NULL,1,'NAVOTAS HOSPITAL',NULL,NULL),('17047955-36486A467','DELA CRUZ','MIKAELLA MAE','AQUINO',NULL,2,'MANILA DOCTORS CLINIC',NULL,NULL),('17047961-ACC6DDBBC','ROWELO','MARK JAYSON','CARLOS',NULL,1,'CAPUL GENERAL HOSPITAL',NULL,NULL),('17059044-0315A9883','ASDASDAS','ASDASDASD','ASDASDAS','III',1,'NACOTAS',NULL,NULL),('17059958-E1AA605E9','ASDASD','ASDASD','ASDASD',NULL,1,'ASDASD','',NULL);
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
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_birth_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birth_info`
--

LOCK TABLES `birth_info` WRITE;
/*!40000 ALTER TABLE `birth_info` DISABLE KEYS */;
INSERT INTO `birth_info` VALUES ('17047892-91FE1980D','RL1741','1992-06-15'),('17047934-D690A114E','RL1741','2006-07-14'),('17047951-6B9A3F671','RL1741','2001-11-19'),('17047955-36486A467','RL1741','1994-05-24'),('17047961-ACC6DDBBC','RL1741','2004-04-19'),('17059044-0315A9883','AB7348','2024-01-10'),('17059958-E1AA605E9','RL1741','2024-01-09');
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
INSERT INTO `birth_requestor` VALUES ('17047892-91FE1980D','CRUZ','MARIA ANGELA','GONZALES',NULL,'OWNER',NULL,NULL,'09123456789'),('17047934-D690A114E','ROBLES','NICHOLAS','DE LEON',NULL,'OWNER',NULL,NULL,'0928124772012'),('17047951-6B9A3F671','POLICARPIO','VHONNALYN','PEREZ',NULL,'MOTHER',NULL,'','09252315723'),('17047955-36486A467','DELA CRUZ','MIKAELLA MAE','AQUINO',NULL,'OWNER',NULL,NULL,'09724612834'),('17047961-ACC6DDBBC','ROWELO','MIKE','CALAW',NULL,'FATHER','23456789012345',NULL,'092932172442'),('17059044-0315A9883','ASDASDAS','ASDASDASD','ASDASDASDASD','III','ASDASADS','ASDAS','31232123123','123123123123'),('17059958-E1AA605E9','MARIE','CHRISTINE','PRUDENCIADO','IV','SDAS',NULL,'+639454731741','321312312322');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_activity`
--

LOCK TABLES `bus_activity` WRITE;
/*!40000 ALTER TABLE `bus_activity` DISABLE KEYS */;
INSERT INTO `bus_activity` VALUES (31,'MAIN OFFICE','AGRICULTURE',62011,'ORGANIC PRODUCE AND FARMING SERVICES',10,1500000,'17047822-0CDA67EC9'),(32,'MAIN OFFICE','INFORMATION TECHNOLOGY',62011,'SOFTWARE DEVELOPMENT',1,5000000,'17047827-B72708D86'),(33,'BRANCH OFFICE',' CONSTRUCTION',43991,'RESIDENTIAL BUILDING CONSTRUCTION',4,6000000,'17047830-4DB8D3625'),(34,'MAIN OFFICE','MANUFACTURING - ELECTRONICS',2653,'CIRCUIT BOARDS AND ELECTRONIC COMPONENTS',5,10000000,'17047835-742F92DC9'),(35,'MAIN OFFICE','FASHION',4771,'CLOTHING AND ACCESSORIES',10,5000000,'17047840-6E61E82C9');
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
INSERT INTO `bus_address` VALUES ('17047822-0CDA67EC9',14,'14A2','14A21','BARANGAY 234','22','MAIN STREET','1100'),('17047827-B72708D86',4,'4A2','4A54','BARANGAY TRES','26','SECOND STREET','4100'),('17047830-4DB8D3625',3,'3A5','3A72','TEXAS','12','THIRD STREET','2000'),('17047835-742F92DC9',9,'9A2','9A62','PASCUAL','8','BAHAGHARI','6500'),('17047840-6E61E82C9',4,'4A2','4A37','MOLINO','20','ORCHID ST.','4102');
/*!40000 ALTER TABLE `bus_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_images`
--

DROP TABLE IF EXISTS `bus_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_images` (
  `transaction_id` varchar(45) NOT NULL,
  `bus_tax_incentives` varchar(255) DEFAULT NULL,
  `bus_dti_reg` varchar(255) DEFAULT NULL,
  `bus_rptax_decbldg` varchar(255) DEFAULT NULL,
  `bus_sec_paid` varchar(255) DEFAULT NULL,
  `bus_sec_articles` varchar(255) DEFAULT NULL,
  `bus_nga` varchar(255) DEFAULT NULL,
  `bus_sec_front` varchar(255) DEFAULT NULL,
  `bus_rptax_decland` varchar(255) DEFAULT NULL,
  `bus_fire` varchar(255) DEFAULT NULL,
  `bus_page2` varchar(255) DEFAULT NULL,
  `bus_page3` varchar(255) DEFAULT NULL,
  `bus_page4` varchar(255) DEFAULT NULL,
  `bus_page5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_images` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_images`
--

LOCK TABLES `bus_images` WRITE;
/*!40000 ALTER TABLE `bus_images` DISABLE KEYS */;
INSERT INTO `bus_images` VALUES ('17047822-0CDA67EC9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17047827-B72708D86',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17047830-4DB8D3625',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17047835-742F92DC9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17047840-6E61E82C9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bus_images` ENABLE KEYS */;
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
INSERT INTO `bus_operation` VALUES ('17047822-0CDA67EC9','300','10','5','6','2','1','3'),('17047827-B72708D86','500','15','8','7','3','2','4'),('17047830-4DB8D3625','400','12','6','6','4','1','2'),('17047835-742F92DC9','600','20','12','8','1','3','5'),('17047840-6E61E82C9','700','15','8','7','2','1','8');
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
  `sex_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_bus_owner_sex_id` (`sex_id`),
  CONSTRAINT `fk_bus_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_bus_owner_sex_id` FOREIGN KEY (`sex_id`) REFERENCES `sex_type` (`sex_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_owner`
--

LOCK TABLES `bus_owner` WRITE;
/*!40000 ALTER TABLE `bus_owner` DISABLE KEYS */;
INSERT INTO `bus_owner` VALUES ('17047822-0CDA67EC9','REYES','MARIA ANGELA','SANTOS',NULL,2),('17047827-B72708D86','LIMJOCO','JOHN MICHAEL','DELOS SANTOS','Jr.',1),('17047830-4DB8D3625','GONZALES',' ANDRES','CRUZ','II',1),('17047835-742F92DC9','TAN','PATRICIA MARIE','ZARATE',NULL,2),('17047840-6E61E82C9','RAMIREZ','MARY ANN','BAUTISTA',NULL,2);
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
  `owned` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_bus_permit` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_permit`
--

LOCK TABLES `bus_permit` WRITE;
/*!40000 ALTER TABLE `bus_permit` DISABLE KEYS */;
INSERT INTO `bus_permit` VALUES ('17047822-0CDA67EC9',2,'GREEN HARVEST ENTERPRISES','ECOFOODS','987654321','321654987000',NULL,NULL,NULL),('17047827-B72708D86',3,'SWIFT TECH SOLUTIONS','TECHWIZARDS','202123456','987654321000','JASON ANDERSON',50000,NULL),('17047830-4DB8D3625',1,'COASTAL VENTURES COOPERATIVE','SEATREASURES','20217890123','456789012000',NULL,NULL,NULL),('17047835-742F92DC9',4,'METROTECH SOLUTIONS, INC.','TECHXPRESS','123456789','123456789000','PURING CRUZ',20000,NULL),('17047840-6E61E82C9',4,'VOGUE COLLECTIONS PH','GLAMOUR HAVEN','202112345','987654321000','ROSALY ALEJANDRINO',26000,NULL);
/*!40000 ALTER TABLE `bus_permit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_type`
--

DROP TABLE IF EXISTS `bus_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_type` (
  `bus_type` int NOT NULL AUTO_INCREMENT,
  `bus_type_label` varchar(255) NOT NULL,
  PRIMARY KEY (`bus_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_type`
--

LOCK TABLES `bus_type` WRITE;
/*!40000 ALTER TABLE `bus_type` DISABLE KEYS */;
INSERT INTO `bus_type` VALUES (1,'Sole Proprietorship'),(2,'One Person Corporation'),(3,'Partnership'),(4,'Corporation'),(5,'Cooperative');
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
INSERT INTO `cedula_cert` VALUES ('17047868-CCA552F32',7,'7A4','7A72','2024-01-26'),('17047883-51B7F99E3',15,'15A3','15A35','2024-10-18'),('17047884-AFA5CB3FE',12,'12A3','12A24',NULL),('17047885-804EF01E1',14,'14A3','14A25',NULL),('17047887-7BE9D5D1E',14,'14A2','14A21',NULL),('17059113-FD9F78EE1',4,'4A3','4A59','2024-01-08'),('17059162-A89EFA0E7',2,'2A2','1B8',NULL);
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
INSERT INTO `cedula_doc_owner` VALUES ('17047868-CCA552F32','HERNANDEZ','ALEJANDRO','LOPEZ','III','Male'),('17047883-51B7F99E3','CRUZ','FATIMA',NULL,'','Female'),('17047884-AFA5CB3FE','PUING','ALBERTO','SANTOS','Jr.','Male'),('17047885-804EF01E1','ALEJANDRINO','RENCE AARON','BATERZAL',NULL,'Male'),('17047887-7BE9D5D1E','MALABANAN','SHAUN','VOLUNTAD',NULL,'Male'),('17059113-FD9F78EE1','ASDASD','ASDASD','ASDASD','Jr.','Male'),('17059162-A89EFA0E7','ASDASD','ASDASD',NULL,NULL,'Male');
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
  `cvl_id` int DEFAULT NULL,
  `czn_id` varchar(45) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `acr_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_cedula_other_info_cvl_id` (`cvl_id`),
  KEY `fk_cedula_other_info_czn_id` (`czn_id`),
  CONSTRAINT `fk_cedula_other_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cedula_other_info_cvl_id` FOREIGN KEY (`cvl_id`) REFERENCES `cvl_status` (`cvl_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_other_info`
--

LOCK TABLES `cedula_other_info` WRITE;
/*!40000 ALTER TABLE `cedula_other_info` DISABLE KEYS */;
INSERT INTO `cedula_other_info` VALUES ('17047868-CCA552F32',2,'PHILIPPINES',6,68,NULL),('17047883-51B7F99E3',3,'PHILIPPINES',5,55,NULL),('17047884-AFA5CB3FE',4,'PHILIPPINES',6,75,NULL),('17047885-804EF01E1',1,'PHILIPPINES',6,75,NULL),('17047887-7BE9D5D1E',1,'PHILIPPINES',5,55,NULL),('17059113-FD9F78EE1',3,'ALBANIA',212,21,'ASDAS'),('17059162-A89EFA0E7',3,'AUSTRIA',22,22,NULL);
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
  `acc_no` varchar(45) DEFAULT NULL,
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
INSERT INTO `cedula_transaction_info` VALUES ('17047868-CCA552F32','EMPLOYEE_FULLTIME','23123123122','DRIVER\'S LICENSE','CIVIL_ENGINEER',1100,'3000',36000),('17047883-51B7F99E3','UNEMPLOYED','TP-789-012-345','PHILHEALTH','UNEMPLOYED',1000,'2500',5000),('17047884-AFA5CB3FE','WORKER',NULL,'POSTAL ID','LAWYER',4000,'35000',80000),('17047885-804EF01E1','UNEMPLOYED',NULL,'DRIVER\'S LICENSE','STUDENT',500,'0',7000),('17047887-7BE9D5D1E','UNEMPLOYED',NULL,'PHILHEALTH','VENDOR',1500,'10000',55000),('17059113-FD9F78EE1','EMPLOYEE_FULLTIME','12412','PHILHEALTH','CLIENT_SERVICES_COORDINATOR',2231,'2321',3322),('17059162-A89EFA0E7','EMPLOYEE_PARTTIME',NULL,'5','ART_DIRECTOR',4114,'2211',4122);
/*!40000 ALTER TABLE `cedula_transaction_info` ENABLE KEYS */;
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
INSERT INTO `cities` VALUES ('10A1','Baliguian'),('10A10','Liloy'),('10A11','Manukan'),('10A12','Mutia'),('10A13','Piñan'),('10A14','Polanco'),('10A15','President Manuel A. Roxas'),('10A16','Rizal'),('10A17','Salug'),('10A18','Sergio Osmeña Sr.'),('10A19','Siayan'),('10A2','Godod'),('10A20','Sibuco'),('10A21','Sibutad'),('10A22','Sindangan'),('10A23','Siocon'),('10A24','Sirawai'),('10A25','Tampilisan'),('10A26','Aurora'),('10A27','Bayog'),('10A28','Dimataling'),('10A29','Dinas'),('10A3','Gutalac'),('10A30','Dumalinao'),('10A31','Dumingag'),('10A32','Guipos'),('10A33','Josefina'),('10A34','Kumalarang'),('10A35','Labangan'),('10A36','Lakewood'),('10A37','Lapuyan'),('10A38','Mahayag'),('10A39','Margosatubig'),('10A4','Jose Dalman'),('10A40','Midsalip'),('10A41','Molave'),('10A42','Pagadian City'),('10A43','Pitogo'),('10A44','Ramon Magsaysay'),('10A45','San Miguel'),('10A46','San Pablo'),('10A47','Sominot'),('10A48','Tabina'),('10A49','Tambulig'),('10A5','Kalawit'),('10A50','Tigbao'),('10A51','Vincenzo A. Sagun'),('10A52','Alicia'),('10A53','Buug'),('10A54','Diplahan'),('10A55','Imelda'),('10A56','Ipil'),('10A57','Kabasalan'),('10A58','Mabuhay'),('10A59','Malangas'),('10A6','Katipunan'),('10A60','Naga'),('10A61','Olutanga'),('10A62','Payao'),('10A63','Roseller Lim'),('10A64','Siay'),('10A65','Talusan'),('10A66','Titay'),('10A67','Tungawan'),('10A7','La Libertad'),('10A8','Labason'),('10A9','Leon B. Postigo'),('11A1','Baungon'),('11A10','Kitaotao'),('11A11','Lantapan'),('11A12','Libona '),('11A13','Malaybalay City'),('11A14','Malitbog'),('11A15','Manolo Fortich'),('11A16','Maramag'),('11A17','Pangantucan'),('11A18','Quezon'),('11A19','San Fernando'),('11A2','Cabanglasan'),('11A20','Sumilao'),('11A21','Talakag'),('11A22','Valencia City'),('11A23','Catarman'),('11A24','Guinsiliban'),('11A25','Mahinog'),('11A26','Mambajao'),('11A27','Sagay'),('11A28','Bacolod'),('11A29','Baloi'),('11A3','Damulog'),('11A30','Baroy'),('11A31','Kapatagan'),('11A32','Kauswagan'),('11A33','Kolambugan'),('11A34','Lala'),('11A35','Linamon'),('11A36','Magsaysay'),('11A37','Maigo'),('11A38','Matungao'),('11A39','Munai'),('11A4','Dangcagan'),('11A40','Nunungan'),('11A41','Pantao Ragat'),('11A42','Pantar'),('11A43','Poona Piagapo'),('11A44','Salvador'),('11A45','Sapad'),('11A46','Sultan Naga Dimaporo'),('11A47','Tagoloan'),('11A48','Tangcal'),('11A49','Tubod'),('11A5','Don Carlos'),('11A50','Aloran'),('11A51','Baliangao'),('11A52','Bonifacio'),('11A53','Calamba'),('11A54','Clarin'),('11A55','Concepcion'),('11A56','Don Victoriano Chiongbian'),('11A57','Jimenez'),('11A58','Lopez Jaena'),('11A59','Oroquieta City'),('11A6','Impasugong'),('11A60','Ozamiz City'),('11A61','Panaon'),('11A62','Plaridel'),('11A63','Sapang Dalaga'),('11A64','Sinacaban'),('11A65','Tangub City'),('11A66','Tudela'),('11A67','Alubijid'),('11A68','Balingasag'),('11A69','Balingoan'),('11A7','Kadingilan'),('11A70','Binuangan'),('11A71','Cagayan de Oro City '),('11A72','Claveria'),('11A73','El Salvador City'),('11A74','Gingoog City'),('11A75','Gitagum'),('11A76','Initao'),('11A77','Jasaan'),('11A78','Kinoguitan'),('11A79','Lagonglong'),('11A8','Kalilangan'),('11A80','Laguindingan'),('11A81','Libertad'),('11A82','Lugait'),('11A83','Magsaysay'),('11A84','Manticao'),('11A85','Medina'),('11A86','Naawan'),('11A87','Opol'),('11A88','Salay'),('11A89','Sugbongcogon'),('11A9','Kibawe'),('11A90','Tagoloan'),('11A91','Talisayan'),('11A92','Villanueva'),('12A1','Compostela'),('12A10','New Bataan'),('12A11','Pantukan'),('12A12','Asuncion'),('12A13','Braulio E. Dujali'),('12A14','Carmen'),('12A15','Kapalong'),('12A16','New Corella'),('12A17','Panabo City'),('12A18','Samal City'),('12A19','San Isidro'),('12A2','Laak '),('12A20','Santo Tomas'),('12A21','Tagum City '),('12A22','Talaingod'),('12A23','Bansalan'),('12A24','Davao City'),('12A25','Digos City '),('12A26','Hagonoy'),('12A27','Kiblawan'),('12A28','Magsaysay'),('12A29','Malalag'),('12A3','Mabini'),('12A30','Matanao'),('12A31','Padada'),('12A32','Santa Cruz'),('12A33','Sulop'),('12A34','Don Marcelino'),('12A35','Jose Abad Santos '),('12A36','Malita '),('12A37','Santa Maria'),('12A38','Sarangani'),('12A39','Baganga'),('12A4','Maco'),('12A40','Banaybanay'),('12A41','Boston'),('12A42','Caraga'),('12A43','Cateel'),('12A44','Governor Generoso'),('12A45','Lupon'),('12A46','Manay'),('12A47','Mati City '),('12A48','San Isidro'),('12A49','Tarragona'),('12A5','Maragusan'),('12A6','Mawab'),('12A7','Monkayo'),('12A8','Montevista'),('12A9','Nabunturan '),('13A1','Alamada'),('13A10','M lang'),('13A11','Magpet'),('13A12','Makilala'),('13A13','Matalam'),('13A14','Midsayap'),('13A15','Pigkawayan'),('13A16','Pikit'),('13A17','President Roxas'),('13A18','Tulunan'),('13A19','Alabel '),('13A2','Aleosan'),('13A20','Glan'),('13A21','Kiamba'),('13A22','Maasim'),('13A23','Maitum'),('13A24','Malapatan'),('13A25','Banga'),('13A26','Lake Sebu'),('13A27','Norala'),('13A28','Polomolok'),('13A29','Santo Niño'),('13A3','Antipas'),('13A30','Surallah'),('13A31','T Boli'),('13A32','Tampakan'),('13A33','Tantangan'),('13A34','Tupi'),('13A35','Bagumbayan'),('13A36','Columbio'),('13A37','Esperanza'),('13A38','Isulan '),('13A39','Kalamansig'),('13A4','Arakan'),('13A40','Lambayong '),('13A41','Lebak'),('13A42','Lutayan'),('13A43','Palimbang'),('13A44','President Quirino'),('13A45','Senator Ninoy Aquino'),('13A5','Banisilan'),('13A6','Carmen'),('13A7','Kabacan'),('13A8','Kidapawan City '),('13A9','Libungan'),('14A1','Binondo'),('14A10','Malate'),('14A11','Paco'),('14A12','Pandacan'),('14A13','Port Area'),('14A14','Santa Ana'),('14A15','Tondo I/II'),('14A16','Santa Mesa'),('14A17','San Andres Bukid'),('14A18','City of Mandaluyong'),('14A19','City of Marikina'),('14A2','Quiapo'),('14A20','City of Pasig'),('14A21','Quezon City'),('14A22','City of San Juan'),('14A23','City of Caloocan'),('14A24','City of Malabon'),('14A25','City of Navotas'),('14A26','City of Valenzuela'),('14A27','City of Las Pinas'),('14A28','City of Makati'),('14A29','City of Muntinlupa'),('14A3','San Nicolas'),('14A30','City of Paranaque'),('14A31','Pasay City'),('14A32','Pateros'),('14A33','Taguig'),('14A4','Santa Cruz'),('14A5','Sampaloc'),('14A6','San Miguel'),('14A7','Ermita'),('14A8','Intramuros'),('15A1','Bangued '),('15A10','Lagangilang'),('15A11','Lagayan'),('15A12','Langiden'),('15A13','Licuan-Baay'),('15A14','Luba'),('15A15','Malibcong'),('15A16','Manabo'),('15A17','Peñarrubia'),('15A18','Pidigan'),('15A19','Pilar'),('15A2','Boliney'),('15A20','Sallapadan'),('15A21','San Isidro'),('15A22','San Juan'),('15A23','San Quintin'),('15A24','Tayum'),('15A25','Tineg'),('15A26','Tubo'),('15A27','Villaviciosa'),('15A28','Calanasan '),('15A29','Conner'),('15A3','Bucay'),('15A30','Flora'),('15A31','Kabugao'),('15A32','Luna'),('15A33','Pudtol'),('15A34','Santa Marcela'),('15A35','Atok'),('15A36','Bakun'),('15A37','Bokod'),('15A38','Buguias'),('15A39','Itogon'),('15A4','Bucloc'),('15A40','Kabayan'),('15A41','Kapangan'),('15A42','Kibungan'),('15A43','La Trinidad '),('15A44','Mankayan'),('15A45','Sablan'),('15A46','Tuba'),('15A47','Tublay'),('15A48','Aguinaldo'),('15A49','Alfonso Lista'),('15A5','Daguioman'),('15A50','Asipulo'),('15A51','Banaue'),('15A52','Hingyon'),('15A53','Hungduan'),('15A54','Kiangan'),('15A55','Lagawe '),('15A56','Lamut'),('15A57','Mayoyao'),('15A58','Tinoc'),('15A59','Balbalan'),('15A6','Danglas'),('15A60','Calanasan '),('15A61','Conner'),('15A62','Flora'),('15A63','Kabugao'),('15A64','Luna'),('15A65','Pudtol'),('15A66','Santa Marcela'),('15A67','Barlig'),('15A68','Bontoc '),('15A69','Natonin'),('15A7','Dolores'),('15A70','Paracelis'),('15A71','Sabangan'),('15A72','Sadanga'),('15A73','Sagada'),('15A74','Tadian'),('15A8','La Paz'),('15A9','Lacub'),('16A1','City of Lamitan'),('16A10','Hadji Mohammad Ajul'),('16A11','Hadji Muhtamad'),('16A12','Tabuan-Lasa'),('16A13','Bacolod-Kalawi'),('16A14','Balabagan'),('16A15','Balindong'),('16A16','Bayang'),('16A17','Binidayan'),('16A18','Buadiposo-Buntong'),('16A19','Bubong'),('16A2','Isabela City'),('16A20','Bumbaran'),('16A21','Butig'),('16A22','Calanogas'),('16A23','Ditsaan-Ramain'),('16A24','Ganassi'),('16A25','Kapai'),('16A26','Kapatagan'),('16A27','Lumba-Bayabao'),('16A28','Lumbaca-Unayan'),('16A29','Lumbatan'),('16A3','Lantawan'),('16A30','Lumbayanague'),('16A31','Madalum'),('16A32','Madamba'),('16A33','Maguing'),('16A34','Malabang'),('16A35','Marantao'),('16A36','Marawi City'),('16A37','Marogong'),('16A38','Masiu'),('16A39','Mulondo'),('16A4','Maluso'),('16A40','Pagayawan'),('16A41','Piagapo'),('16A42','Poona Bayabao'),('16A43','Pualas'),('16A44','Saguiaran'),('16A45','Sultan Dumalondong'),('16A46','Ampatuan'),('16A47','Barira'),('16A48','Buldon'),('16A49','Buluan'),('16A5','Sumisip'),('16A50','Datu Abdullah Sangki'),('16A51','Datu Anggal Midtimbang'),('16A52','Datu Bai Ali'),('16A53','Datu Hoffer Ampatuan'),('16A54','Datu Montawal'),('16A55','Datu Odin Sinsuat'),('16A56','Datu Paglas'),('16A57','Datu Piang'),('16A58','Datu Salibo'),('16A59','Datu Saudi-Ampatuan'),('16A6','Tipo-Tipo'),('16A60','Datu Unsay'),('16A61','General Salipada K. Pendatun'),('16A62','Guindulungan'),('16A63','Kabuntalan'),('16A64','Mamasapano'),('16A65','Mangudadatu'),('16A66','Matanog'),('16A67','Northern Kabuntalan'),('16A68','Pagalungan'),('16A69','Paglat'),('16A7','Tuburan'),('16A70','Pandag'),('16A71','Parang'),('16A72','Rajah Buayan'),('16A73','Shariff Aguak'),('16A74','Shariff Saydona Mustapha'),('16A75','Indanan'),('16A76','Jolo'),('16A77','Kalingalan Caluang'),('16A78','Lugus'),('16A79','Luuk'),('16A8','Ungkaya Pukan'),('16A80','Maimbung'),('16A81','Old Panamao'),('16A82','Omar'),('16A83','Panglima Sugala'),('16A84','Bongao'),('16A85','Mapun'),('16A86','Simunul'),('16A87','Sitangkal'),('16A88','South Ubian'),('16A89','Tandubas'),('16A9','Akbar'),('16A90','Turtle Islands'),('16A91','Languyan'),('16A92','Sapa-sapa'),('16A93','Sibutu'),('17A1','Buenavista'),('17A10','Remedios T. Romualdez'),('17A11','Bunawan'),('17A12','Esperanza'),('17A13','La Paz'),('17A14','Loreto'),('17A15','Prosperidad'),('17A16','Rosario'),('17A17','San Francisco'),('17A18','San Luis'),('17A19','Santa Josefa'),('17A2','Butuan City'),('17A20','Sibagat'),('17A21','Talacogon'),('17A22','Trento'),('17A23','Veruela'),('17A24','Alegria'),('17A25','Bacuag'),('17A26','Burgos'),('17A27','Claver'),('17A28','Dapa'),('17A29','Del Carmen'),('17A3','Cabadbaran City'),('17A30','General Luna'),('17A31','Gigaquit'),('17A32','Mainit'),('17A33','Malimono'),('17A34','Pilar'),('17A35','Placer'),('17A36','San Benito'),('17A37','San Francisco'),('17A38','San Isidro'),('17A39','Santa Monica'),('17A4','Carmen'),('17A40','Sison'),('17A41','Socorro'),('17A42','Surigao City'),('17A43','Tubod'),('17A44','Tubojan'),('17A45','Tuburan'),('17A46','Tubud'),('17A47','Barobo'),('17A48','Bayabas'),('17A49','Cagwait'),('17A5','Jabonga'),('17A50','Cantilan'),('17A51','Carmen'),('17A52','Carrascal'),('17A53','Cortes'),('17A54','Hinatuan'),('17A55','Lanuza'),('17A56','Lianga'),('17A57','Lingig'),('17A58','Madrid'),('17A59','Marihatag'),('17A6','Kitcharao'),('17A60','San Agustin'),('17A61','San Miguel'),('17A62','Tagbina'),('17A63','Tago'),('17A64','Tandag City'),('17A65','Basilisa'),('17A66','Cagdianao'),('17A67','Dinagat'),('17A68','Libjo (Albor)'),('17A69','Loreto'),('17A7','Las Nieves'),('17A70','San Jose'),('17A71','Tubajon'),('17A8','Magallanes'),('17A9','Nasipit'),('1A1','Adams'),('1A10','Dumalneg'),('1A100','Malasiqui'),('1A101','Manaoag'),('1A102','Mangaldan'),('1A103','Mangatarem'),('1A104','Mapandan'),('1A105','Natividad'),('1A106','Pozzorubio'),('1A107','Rosales'),('1A108','San Carlos City'),('1A109','San Fabian'),('1A11','Espiritu'),('1A110','San Jacinto'),('1A111','San Manuel'),('1A112','San Nicolas'),('1A113','San Quintin'),('1A114','Santa Barbara'),('1A115','Santa Maria'),('1A116','Santo Tomas'),('1A117','Sison'),('1A118','Sual'),('1A119','Tayug'),('1A12','Laoag City'),('1A120','Umingan'),('1A121','Urbiztondo'),('1A122','Villasis'),('1A13','Marcos'),('1A14','Neuva Era'),('1A15','Pagudpud'),('1A16','Paoay'),('1A17','Pasuquin'),('1A18','Piddig'),('1A19','Pinili'),('1A2','Bacarra'),('1A20','San Nicolas'),('1A21','Sarrat'),('1A22','Solsona'),('1A23','Vintar'),('1A24','Alilem'),('1A25','Banayoyo'),('1A26','Bantay'),('1A27','Burgos'),('1A28','Cabugao'),('1A29','Caoayan'),('1A3','Badoc'),('1A30','Cervantes'),('1A31','Galimuyod'),('1A32','Gregorio del Pilar'),('1A33','Lidlidda'),('1A34','Magsingal'),('1A35','Nagbukel'),('1A36','Narvacan'),('1A37','Quirino'),('1A38','Salcedo'),('1A39','San Emilio'),('1A4','Bangui'),('1A40','San Esteban'),('1A41','San Ildefonso'),('1A42','San Juan'),('1A43','San Vicente'),('1A44','Santa'),('1A45','Santa Catalina'),('1A46','Santa Cruz'),('1A47','Santa Lucia'),('1A48','Santa Maria'),('1A49','Santiago'),('1A5','City of Batac'),('1A50','Santo Domingo'),('1A51','Sigay'),('1A52','Sinait'),('1A53','Sugpon'),('1A54','Suyo'),('1A55','Tagudin'),('1A56','Vigan City'),('1A57','Agoo'),('1A58','Aringay'),('1A59','Bacnotan'),('1A6','Burgos'),('1A60','Bagulin'),('1A61','Balaoan'),('1A62','Bangar'),('1A63','Bauang'),('1A64','Burgos'),('1A65','Caba'),('1A66','Luna'),('1A67','Naguilian'),('1A68','Pugo'),('1A69','Rosario'),('1A7','Carasi'),('1A70','San Fernando City'),('1A71','San Gabriel'),('1A72','San Juan'),('1A73','Santo Tomas'),('1A74','Santol'),('1A75','Sudipen'),('1A76','Tubao'),('1A77','Agno'),('1A78','Alaminos City'),('1A79','Alcala'),('1A8','Currimao'),('1A80','Anda'),('1A81','Asingan'),('1A82','Balungao'),('1A83','Bani'),('1A84','Basista'),('1A85','Bautista'),('1A86','Bayambang'),('1A87','Binalonan'),('1A88','Binmaley'),('1A89','Bolinao'),('1A9','Dingras'),('1A90','Bugallon'),('1A91','Burgos'),('1A92','Calasiao'),('1A93','Dagupan City'),('1A94','Dasol'),('1A95','Infanta'),('1A96','Labrador'),('1A97','Laoac'),('1A98','Lingayen'),('1A99','Mabini'),('1B1','Basco'),('1B10','Camalaniugan'),('1B11','Claveria'),('1B119','Peñablanca'),('1B12','Enrile'),('1B13','Gattaran'),('1B14','Gonzaga'),('1B15','Iguig'),('1B16','Lal-lo'),('1B17','Lasam'),('1B18','Pamplona'),('1B2','Itbayat'),('1B20','Piat'),('1B21','Rizal'),('1B22','Sanchez-Mira'),('1B23','Santa Ana'),('1B24','Santa Praxedes'),('1B25','Santa Teresita'),('1B26','Santo Niño'),('1B27','Solana'),('1B28','Tuao'),('1B29','Tuguegarao City'),('1B3','Ivana'),('1B30','Alicia'),('1B31','Alicia'),('1B32','Angadanan'),('1B33','Aurora'),('1B34','Benito Soliven'),('1B35','Burgos'),('1B36','Cabagan'),('1B37','Cabatuan'),('1B38','Cauayan City'),('1B39','Cordon'),('1B4','Mahatao'),('1B40','Delfin Albano'),('1B41','Dinapigue'),('1B42','Divilacan'),('1B43','Echague'),('1B44','Gamu'),('1B45','Ilagan City'),('1B46','Jones'),('1B47','Luna'),('1B48','Maconacon'),('1B49','Dela Cruz (Cambaog)'),('1B5','Sabtang'),('1B50','Mallig'),('1B51','Naguilian'),('1B52','Palanan'),('1B53','Quezon'),('1B54','Quirino'),('1B55','Ramon'),('1B56','Reina Mercedes'),('1B57','Roxas'),('1B58','San Agustin'),('1B59','San Guillermo'),('1B6','Uyugan'),('1B60','San Isidro'),('1B61','San Manuel'),('1B62','San Mariano'),('1B63','San Mateo'),('1B64','San Pablo'),('1B65','Santa Maria'),('1B66','Santiago City'),('1B67','Santo Tomas'),('1B68','Tumauini'),('1B69','Ambaguio'),('1B7','Abulug'),('1B70','Aritao'),('1B71','Bagabag'),('1B72','Bambang'),('1B73','Bayombong'),('1B74','Diadi'),('1B75','Dupax del Norte'),('1B76','Dupax del Sur'),('1B77','Kasibu'),('1B78','Kayapa'),('1B79','Quezon'),('1B8','Abulug'),('1B80','Santa Fe'),('1B81','Solano'),('1B82','Villaverde'),('1B83','Alfonso Castaneda'),('1B84','Aglipay'),('1B85','Cabarroguis'),('1B86','Diffun'),('1B87','Maddela'),('1B88','Nagtipunan'),('1B9','Calayan'),('1C1','Baler'),('1C10','Bagac'),('1C11','Balanga'),('1C12','Dinalupihan'),('1C13','Hermosa'),('1C14','Limay'),('1C15','Mariveles'),('1C16','Morong'),('1C17','Orani'),('1C18','Orion'),('1C19','Pilar'),('1C2','Casiguran'),('1C20','Samal'),('1C3','Dilasag'),('1C4','Dinalungan'),('1C5','Dingalan'),('1C6','Dipaculao'),('1C7','Maria Aurora'),('1C8','San Luis'),('1C9','Abucay'),('3A10','Dona Remedios Trinidad'),('3A100','Castillejos'),('3A101','Iba'),('3A102','Masinloc'),('3A103','Olongapo City'),('3A104','Palauig'),('3A105','San Antonio'),('3A106','San Felipe'),('3A107','San Marcelino'),('3A108','San Narciso'),('3A109','Santa Cruz'),('3A11','Guiguinto'),('3A110','Subic'),('3A12','Hagonoy'),('3A13','Malolos'),('3A14','Marilao'),('3A15','Meycauayan'),('3A16','Norzagaray'),('3A17','Obando'),('3A18','Pandi'),('3A19','Paombong'),('3A20','Plaridel'),('3A21','Pulilan'),('3A22','San Ildefonso'),('3A23','San Jose del Monte'),('3A24','San Miguel'),('3A25','San Rafael'),('3A26','Santa Maria'),('3A27','Aliaga'),('3A28','Bongabon'),('3A29','Cabiao'),('3A3','Angat'),('3A30','Carranglan'),('3A31','Cuyapo'),('3A32','Gabaldon'),('3A33','Gapan'),('3A34','General Mamerto Natividad'),('3A35','General Tinio'),('3A36','Guimba'),('3A37','Jaen'),('3A38','Laur'),('3A39','Licab'),('3A4','Balagtas'),('3A40','Llanera'),('3A41','Lupao'),('3A42','Nampicuan'),('3A43','Palayan'),('3A44','Pantabangan'),('3A45','Peñaranda'),('3A46','Quezon'),('3A47','Rizal'),('3A48','San Antonio'),('3A49','San Isidro'),('3A5','Baliuag'),('3A50','San Jose'),('3A51','San Leonardo'),('3A52','Santa Rosa'),('3A53','Santo Domingo'),('3A54','Talavera'),('3A55','Talugtug'),('3A56','Zaragoza'),('3A57','Angeles City'),('3A58','Apalit'),('3A59','Arayat'),('3A6','Bocaue'),('3A60','Bacolor'),('3A61','Candaba'),('3A62','Floridablanca'),('3A63','Guagua'),('3A64','Lubao'),('3A65','Mabalacat'),('3A66','Macabebe'),('3A67','Magalang'),('3A68','Masantol'),('3A69','Mexico'),('3A7','Bulakan'),('3A70','Minalin'),('3A71','Porac'),('3A72','San Fernando'),('3A73','San Luis'),('3A74','San Simon'),('3A75','Santa Ana'),('3A76','Santa Rita'),('3A77','Santo Tomas'),('3A78','Sasmuan'),('3A79','Anao'),('3A8','Bustos'),('3A80','Bamban'),('3A81','Camiling'),('3A82','Capas'),('3A83','Concepcion'),('3A84','Gerona'),('3A85','La Paz'),('3A86','Mayantoc'),('3A87','Moncada'),('3A88','Paniqui'),('3A89','Pura'),('3A9','Calumpit'),('3A90','Ramos'),('3A91','San Clemente'),('3A92','San Jose'),('3A93','San Manuel'),('3A94','Santa Ignacia'),('3A95','Tarlac City'),('3A96','Victoria'),('3A97','Botolan'),('3A98','Cabangan'),('3A99','Candelaria'),('4A1','Agoncillo'),('4A10','Ibaan'),('4A100','Teresa'),('4A101','Agdangan'),('4A102','Alabat'),('4A103','Atimonan'),('4A104','Buenavista'),('4A105','Burdeos'),('4A106','Calauag'),('4A107','Candelaria'),('4A108','Catanauan'),('4A109','Dolores'),('4A11','Laurel'),('4A110','General Luna'),('4A111','General Nakar'),('4A112','Guinayangan'),('4A113','Gumaca'),('4A114','Infanta'),('4A115','Jomalig'),('4A116','Lopez'),('4A117','Lucban'),('4A118','Lucena City'),('4A119','Macalelon'),('4A12','Lemery'),('4A120','Mauban'),('4A121','Mulanay'),('4A122','Padre Burgos'),('4A123','Pagbilao'),('4A124','Panukulan'),('4A125','Patnanungan'),('4A126','Perez'),('4A127','Pitogo'),('4A128','Plaridel'),('4A129','Polillo'),('4A13','Lian'),('4A130','Quezon'),('4A131','Real'),('4A132','Sampaloc'),('4A133','San Andres'),('4A134','San Antonio'),('4A135','San Francisco'),('4A136','San Narciso'),('4A137','Sariaya'),('4A138','Tagkawayan'),('4A139','Tiaong'),('4A14','Lipa City'),('4A140','Unisan'),('4A15','Lobo'),('4A16','Mabini'),('4A17','Malvar'),('4A18','Mataasnakahoy'),('4A19','Nasugbu'),('4A2','Alitagtag'),('4A20','Padre Garcia'),('4A21','Rosario'),('4A22','San Jose'),('4A23','San Juan'),('4A24','San Luis'),('4A25','San Nicolas'),('4A26','San Pascual'),('4A27','Santa Teresita'),('4A28','Santo Tomas'),('4A29','Taal'),('4A3','Balayan'),('4A30','Talisay'),('4A31','Tanauan City'),('4A32','Taysan'),('4A33','Tingloy'),('4A34','Tuy'),('4A35','Alfonso'),('4A36','Amadeo'),('4A37','Bacoor'),('4A38','Carmona'),('4A39','Cavite City'),('4A4','Balete'),('4A40','Dasmarinas City'),('4A41','General Emilio Aguinaldo'),('4A42','General Mariano Alvarez'),('4A43','General Trias'),('4A44','Imus'),('4A45','Indang'),('4A46','Kawit'),('4A47','Magallanes'),('4A48','Maragondon'),('4A49','Mendez-Nunez'),('4A5','Batangas City'),('4A50','Naic'),('4A51','Noveleta'),('4A52','Rosario'),('4A53','Silang'),('4A54','Tagaytay City'),('4A55','Tanza'),('4A56','Ternate'),('4A57','Trece Martires City'),('4A58','Alaminos'),('4A59','Bay'),('4A6','Bauan'),('4A60','Biñan City'),('4A61','Cabuyao City'),('4A62','Calamba City'),('4A63','Calauan'),('4A64','Cavinti'),('4A65','Famy'),('4A66','Kalayaan'),('4A67','Liliw'),('4A68','Los Baños'),('4A69','Luisiana'),('4A7','Calaca'),('4A70','Lumban'),('4A71','Mabitac'),('4A72','Magdalena'),('4A73','Majayjay'),('4A74','Nagcarlan'),('4A75','Paete'),('4A76','Pagsanjan'),('4A77','Pakil'),('4A78','Pangil'),('4A79','Pila'),('4A8','Calatagan'),('4A80','Rizal'),('4A81','San Pablo City'),('4A82','San Pedro City'),('4A83','Santa Cruz'),('4A84','Santa Maria'),('4A85','Santa Rosa City'),('4A86','Siniloan'),('4A87','Victoria'),('4A88','Angono'),('4A89','Antipolo City'),('4A9','Cuenca'),('4A90','Baras'),('4A91','Binangonan'),('4A92','Cainta'),('4A93','Cardona'),('4A94','Jalajala'),('4A95','Morong'),('4A96','Pililla'),('4A97','Rodriguez (Montalban)'),('4A98','San Mateo'),('4A99','Taytay'),('5A1','Abra De Ilog'),('5A10','San Jose'),('5A11','Santa Cruz'),('5A12','Baco'),('5A13','Bansud'),('5A14','Bongabong'),('5A15','Bulalacao'),('5A16','Calapan City'),('5A17','Gloria'),('5A18','Mansalay'),('5A19','Naujan'),('5A2','Calintaan'),('5A20','Pinamalayan'),('5A21','Pola'),('5A22','Puerto Galera'),('5A23','Roxas'),('5A24','San Teodoro'),('5A25','Socorro'),('5A26','Victoria'),('5A27','Boac'),('5A28','Buenavista'),('5A29','Gasan'),('5A3','Looc'),('5A30','Mogpog'),('5A31','Santa Cruz'),('5A32','Torrijos'),('5A34','Alcantara'),('5A35','Banton'),('5A36','Cajidiocan'),('5A37','Calatrava'),('5A38','Concepcion'),('5A39','Corcuera'),('5A4','Lubang'),('5A40','Ferrol'),('5A41','Looc'),('5A42','Magdiwang'),('5A43','Odiongan'),('5A44','Romblon'),('5A45','San Agustin'),('5A46','San Andres'),('5A47','San Fernando'),('5A48','San Jose'),('5A49','Santa Fe'),('5A5','Magsaysay'),('5A50','Santa Maria'),('5A51','Aborlan'),('5A52','Agutaya'),('5A53','Araceli'),('5A54','Balabac'),('5A55','Bataraza'),('5A56','Brookes Point'),('5A57','Busuanga'),('5A58','Cagayancillo'),('5A59','Coron'),('5A6','Mamburao'),('5A60','Culion'),('5A61','Cuyo'),('5A62','Dumaran'),('5A63','El Nido'),('5A64','Kalayaan'),('5A65','Linapacan'),('5A66','Magsaysay'),('5A67','Narra'),('5A68','Puerto Princesa'),('5A69','Quezon'),('5A7','Paluan'),('5A70','Rizal'),('5A71','Roxas'),('5A72','San Vicente'),('5A73','Sofronio Española'),('5A8','Rizal'),('5A9','Sablayan'),('6A1','Bacacay'),('6A10','Capalonga'),('6A100','Pilar'),('6A101','Prieto Diaz'),('6A102','Santa Magdalena'),('6A103','City of Sorsogon'),('6A11','Daet'),('6A12','Jose Panganiban'),('6A13','Labo'),('6A14','Mercedes'),('6A15','Paracale'),('6A16','San Lorenzo Ruiz'),('6A17','San Vicente'),('6A18','Santa Elena'),('6A19','Talisay'),('6A2','Camalig'),('6A20','Vinzons'),('6A21','Baao'),('6A22','Balatan'),('6A23','Bato'),('6A24','Bombon'),('6A25','Buhi'),('6A26','Bula'),('6A27','Cabusao'),('6A28','Calabanga'),('6A29','Camaligan'),('6A3','Daraga'),('6A30','Canaman'),('6A31','Caramoan'),('6A32','Del Gallego'),('6A33','Gainza'),('6A34','Garchitorena'),('6A35','Goa'),('6A36','Lagonoy'),('6A37','Libmanan'),('6A38','Lupi'),('6A39','Magarao'),('6A4','Guinobatan'),('6A40','Milaor'),('6A41','Minalabac'),('6A42','Nabua'),('6A43','Naga City'),('6A44','Ocampo'),('6A45','Pamplona'),('6A46','Pasacao'),('6A47','Pili'),('6A48','Presentacion'),('6A49','Ragay'),('6A5','Jovellar'),('6A50','Sagnay'),('6A51','San Fernando'),('6A52','San Jose'),('6A53','Sipocot'),('6A54','Siruma'),('6A55','Tigaon'),('6A56','Tinambac'),('6A57','Bagamanoc'),('6A58','Baras'),('6A59','Bato'),('6A6','Legazpi City'),('6A60','Caramoran'),('6A61','Gigmoto'),('6A62','Pandan'),('6A63','Panganiban'),('6A64','San Andres'),('6A65','San Miguel'),('6A66','Viga'),('6A67','Virac'),('6A68','Aroroy'),('6A69','Baleno'),('6A7','Libon'),('6A70','Balud'),('6A71','Batuan'),('6A72','Cataingan'),('6A73','Cawayan'),('6A74','Claveria'),('6A75','Dimasalang'),('6A76','Esperanza'),('6A77','Mandaon'),('6A78','Masbate City'),('6A79','Milagros'),('6A8','City of Ligao'),('6A80','Mobo'),('6A81','Monreal'),('6A82','Palanas'),('6A83','Pio V. Corpus'),('6A84','Placer'),('6A85','San Fernando'),('6A86','San Jacinto'),('6A87','San Pascual'),('6A88','Uson'),('6A89','Barcelona'),('6A9','Basud'),('6A90','Bulan'),('6A91','Bulusan'),('6A92','Casiguran'),('6A93','Castilla'),('6A94','Donsol'),('6A95','Gubat'),('6A96','Irosin'),('6A97','Juban'),('6A98','Magallanes'),('6A99','Matnog'),('7A1','Atlavas'),('7A10','Madalag'),('7A11','Makato'),('7A12','Malay'),('7A13','Malinao'),('7A14','Nabas'),('7A15','New Washington'),('7A16','Numancia'),('7A17','Tangalan'),('7A18','Anini-y'),('7A19','Barbaza'),('7A2','Balete'),('7A20','Belison'),('7A21','Bugasong'),('7A22','Caluya'),('7A23','Culasi'),('7A24','Hamtic'),('7A25','Laua-an'),('7A26','Libertad'),('7A27','Pandan'),('7A28','Patnongon'),('7A29','San Jose de Buenavista'),('7A3','Banga'),('7A30','San Remigio'),('7A31','Sebaste'),('7A32','Sibalom'),('7A33','Tibiao'),('7A34','Tobias Fornier'),('7A35','Valderrama'),('7A36','Cuartero'),('7A37','Dao'),('7A38','Dumalag'),('7A39','Dumarao'),('7A4','Batan'),('7A40','Ivisan'),('7A41','Jamindan'),('7A42','Maayon'),('7A43','Mambusao'),('7A44','Panay'),('7A45','Panitan'),('7A46','Pilar'),('7A47','Pontevedra'),('7A48','President Roxas'),('7A49','Roxas City'),('7A5','Buruanga'),('7A50','Sapi-an'),('7A51','Sigma'),('7A52','Tapaz'),('7A53','Ajuy'),('7A54','Alimodian'),('7A55','Anilao'),('7A56','Badiangan'),('7A57','Balasan'),('7A58','Banate'),('7A59','Barotac Nuevo'),('7A6','Ibajay'),('7A60','Barotac Viejo'),('7A61','Batad'),('7A62','Bingawan'),('7A63','Cabatuan'),('7A64','Calinog'),('7A65','Carles'),('7A66','Concepcion'),('7A67','Dingle'),('7A68','Dueñas'),('7A69','Dumangas'),('7A7','Kalibo'),('7A70','Estancia'),('7A71','Guimbal'),('7A72','Igbaras'),('7A73','Janiuay'),('7A74','Lambunao'),('7A75','Leganes'),('7A76','Lemery'),('7A77','Leon'),('7A78','Maasin'),('7A79','Miagao'),('7A8','Lezo'),('7A80','Mina'),('7A81','New Lucena'),('7A82','Oton'),('7A83','Pavia'),('7A84','Pototan'),('7A85','San Dionisio'),('7A86','San Enrique'),('7A87','San Joaquin'),('7A88','San Miguel'),('7A89','San Rafael'),('7A9','Libacao'),('7A90','Santa Barbara'),('7A91','Sara'),('7A92','Tigbauan'),('7A93','Tubungan'),('7A94','Zarraga'),('7A95','Buenavista'),('7A96','Jordan'),('7A97','Nueva Valencia'),('7A98','San Lorenzo'),('7A99','Sibunag'),('8A1','Alburquerque'),('8A10','Buenavista'),('8A100','Tudela'),('8A101','Enrique Villanueva'),('8A102','Larena'),('8A103','Lazi'),('8A104','Maria'),('8A105','San Juan'),('8A106','Siquijor'),('8A11','Calape'),('8A12','Candijay'),('8A13','Carmen'),('8A14','Catigbian'),('8A15','Clarin'),('8A16','Corella'),('8A17','Cortes'),('8A18','Dagohoy'),('8A19','Danao'),('8A2','Alicia'),('8A20','Dauis'),('8A21','Dimiao'),('8A22','Duero'),('8A23','Garcia Hernandez'),('8A24','Guindulman'),('8A25','Inabanga'),('8A26','Jagna'),('8A27','Lila'),('8A28','Loay'),('8A29','Loboc'),('8A3','Anda'),('8A30','Loon'),('8A31','Mabini'),('8A32','Maribojoc'),('8A33','Panglao'),('8A34','Pilar'),('8A35','Pres. Carlos P. Garcia'),('8A36','Sagbayan'),('8A37','San Isidro'),('8A38','San Miguel'),('8A39','Sevilla'),('8A4','Antequera'),('8A40','Sierra Bullones'),('8A41','Sikatuna'),('8A42','Tagbilaran City'),('8A43','Talibon'),('8A44','Trinidad'),('8A45','Tubigon'),('8A46','Ubay'),('8A47','Valencia'),('8A48','Alcantara'),('8A49','Alcoy'),('8A5','Baclayon'),('8A50','Alegria'),('8A51','Aloguinsan'),('8A52','Argao'),('8A53','Asturias'),('8A54','Badian'),('8A55','Balamban'),('8A56','Bantayan'),('8A57','Barili'),('8A58','Bogo City'),('8A59','Boljoon'),('8A6','Balilihan'),('8A60','Borbon'),('8A61','Carcar City'),('8A62','Carmen'),('8A63','Catmon'),('8A64','Cebu City'),('8A65','Compostela'),('8A66','Consolacion'),('8A67','Cordova'),('8A68','Daanbantayan'),('8A69','Dalaguete'),('8A7','Batuan'),('8A70','Danao City'),('8A71','Dumanjug'),('8A72','Ginatilan'),('8A73','Lapu-Lapu City'),('8A74','Liloan'),('8A75','Madridejos'),('8A76','Malabuyoc'),('8A77','Mandaue City'),('8A78','Medellin'),('8A79','Minglanilla'),('8A8','Bien Unido'),('8A80','Moalboal'),('8A81','Naga City'),('8A82','Oslob'),('8A83','Pilar'),('8A84','Pinamungahan'),('8A85','Poro'),('8A86','Ronda'),('8A87','Samboan'),('8A88','San Fernando'),('8A89','San Francisco'),('8A9','Bilar'),('8A90','San Remigio'),('8A91','Santa Fe'),('8A92','Santander'),('8A93','Sibonga'),('8A94','Sogod'),('8A95','Tabogon'),('8A96','Tabuelan'),('8A97','Talisay City'),('8A98','Toledo City'),('8A99','Tuburan'),('9A1','Arteche'),('9A10','Hernani'),('9A100','Marabut'),('9A101','Matuguinao'),('9A102','Motiong'),('9A103','Pagsanghan'),('9A104','Paranas'),('9A105','Pinabacdao'),('9A106','San Jorge'),('9A107','Anahawan'),('9A108','Bontoc'),('9A109','Hinunangan'),('9A11','Jipapad'),('9A110','Hinundayan'),('9A111','Libagon'),('9A112','Liloan'),('9A113','Limasawa'),('9A114','Maasin City'),('9A115','Macrohon'),('9A116','Malitbog'),('9A117','Padre Burgos'),('9A118','Pintuyan'),('9A119','Saint Bernard'),('9A12','Lawaan'),('9A120','San Francisco'),('9A121','San Juan'),('9A122','San Ricardo'),('9A123','Silago'),('9A124','Sogod'),('9A125','Tomas Oppus'),('9A126','Almeria'),('9A127','Biliran'),('9A128','Cabucgayan'),('9A129','Caibiran'),('9A13','Llorente'),('9A130','Culaba'),('9A131','Kawayan'),('9A132','Maripipi'),('9A133','Naval'),('9A14','Maslog'),('9A15','Maydolong'),('9A16','Mercedes'),('9A17','Oras'),('9A18','Quinapondan'),('9A19','Salcedo'),('9A2','Balangiga'),('9A20','San Julian'),('9A21','San Policarpo'),('9A22','Sulat'),('9A23','Taft'),('9A24','Abuyog'),('9A25','Alangalang'),('9A26','Albuera'),('9A27','Babatngon'),('9A28','Barugo'),('9A29','Bato'),('9A3','Balangkayan'),('9A30','Baybay'),('9A31','Burauen'),('9A32','Calubian'),('9A33','Capoocan'),('9A34','Carigara'),('9A35','Dagami'),('9A36','Dulag'),('9A37','Hilongos'),('9A38','Hindang'),('9A39','Inopacan'),('9A4','Borongan'),('9A40','Isabel'),('9A41','Jaro'),('9A42','Javier'),('9A43','Julita'),('9A44','Kananga'),('9A45','La Paz'),('9A46','Leyte'),('9A47','MacArthur'),('9A48','Mahaplag'),('9A49','Matag-ob'),('9A5','Can-avid'),('9A50','Matalom'),('9A51','Mayorga'),('9A52','Merida'),('9A53','Ormoc'),('9A54','Palo'),('9A55','Palompon'),('9A56','Pastrana'),('9A57','San Isidro'),('9A58','San Miguel'),('9A59','Santa Fe'),('9A6','Dolores'),('9A60','Tabango'),('9A61','Tabontabon'),('9A62','Tacloban'),('9A63','Tanauan'),('9A64','Tolosa'),('9A65','Tunga'),('9A66','Villaba'),('9A67','Allen'),('9A68','Biri'),('9A69','Bobon'),('9A7','General MacArthur'),('9A70','Capul'),('9A71','Catarman'),('9A72','Catubig'),('9A73','Gamay'),('9A74','Laoang'),('9A75','Lapinig'),('9A76','Las Navas'),('9A77','Lavezares'),('9A78','Lope de Vega'),('9A79','Mapanas'),('9A8','Giporlos'),('9A80','Mondragon'),('9A81','Palapag'),('9A82','Pambujan'),('9A83','Rosario'),('9A84','San Antonio'),('9A85','San Isidro'),('9A86','San Jose'),('9A87','San Roque'),('9A88','San Vicente'),('9A89','Silvino Lobos'),('9A9','Guiuan'),('9A90','Victoria'),('9A91','Almagro'),('9A92','Basey'),('9A93','Calbayog City'),('9A94','Calbiga'),('9A95','Catbalogan City'),('9A96','Daram'),('9A97','Gandara'),('9A98','Hinabangan'),('9A99','Jiabong');
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
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_consent_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consent_info`
--

LOCK TABLES `consent_info` WRITE;
/*!40000 ALTER TABLE `consent_info` DISABLE KEYS */;
INSERT INTO `consent_info` VALUES ('17048043-0908C698A','MARIFEL','PERALTA','GINO GINO',NULL,NULL,'WIFE','09276543526','02788462'),('17048090-8DE4FDFEF','CHARLIE','ALARCON','BERDOS',NULL,NULL,'HUSBAND','09264552342',NULL),('17048093-2136D88EA','ALFRED','CAYETANO','CRISOSTOMO',NULL,NULL,'SON','09228471467',NULL),('17048095-E67CED1A5','VINCENT','ALONSO','HALILI',NULL,NULL,'BROTHER OF HUSBAND','09283471362',NULL),('17048098-192B3DC18','JOHN MARK','AMOS','HECHANOVA','VI',NULL,'SON','09998876521','088277123'),('17059121-0174C3AF2','ASDASD','ASDASD','ASDASD','Jr.',NULL,'ASDASD','123123','123123123'),('17059121-1BD871F23','ASDASD','ASDASD','ASDASD','Jr.',NULL,'ASDASD','123123','123123123');
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
INSERT INTO `cvl_status` VALUES (0,NULL),(1,'Single'),(2,'Married'),(3,'Separated'),(4,'Widowed');
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
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_death_cert` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_cert`
--

LOCK TABLES `death_cert` WRITE;
/*!40000 ALTER TABLE `death_cert` DISABLE KEYS */;
INSERT INTO `death_cert` VALUES ('17047981-C3805DC53',14,'14A1','14A16','2023-11-06'),('17048000-243B301A7',15,'15A3','15A37','2004-01-15'),('17048010-BEF3D5071',2,'2A2','1B8','2024-01-10'),('17048020-AD3785399',6,'6A4','6A60','2023-01-05'),('17048034-284929F51',2,'2A2','1B8','2016-01-08');
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
INSERT INTO `death_doc_owner` VALUES ('17047981-C3805DC53','FERNANDEZ','ROMEO','VEGAS',NULL,'Male'),('17048000-243B301A7','ZULUETA','FRANCIS','WEST','II','Male'),('17048010-BEF3D5071','ROXAS','ALBERTO','SAN PEDRO',NULL,'Male'),('17048020-AD3785399','MERCADO','FLORENTINA','PEREZ',NULL,'Female'),('17048034-284929F51','CIPRIANO','MARICRIS','SAN PEDRO',NULL,'Female');
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
INSERT INTO `death_requestor` VALUES ('17047981-C3805DC53','FERNANZED','ROMEO','VEGAS','Jr.','SON','09284172334','02428127'),('17048000-243B301A7','ZULUETA','JOY MARIE','WEST',NULL,'DAUGHTER','09241582395',NULL),('17048010-BEF3D5071','ROXAS','FLOURICE','MENDOZA','','DAUGHTER','09241726355',NULL),('17048020-AD3785399','AGUSTIN','AGUSTA','PEREZ',NULL,'SIBLING','09224284591',NULL),('17048034-284929F51','CIPRIANO','ALFRED','PEREZ',NULL,'HUSBAND','09248174624',NULL);
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
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_father_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `father_info`
--

LOCK TABLES `father_info` WRITE;
/*!40000 ALTER TABLE `father_info` DISABLE KEYS */;
INSERT INTO `father_info` VALUES ('17047892-91FE1980D','JOSE MIGUEL','TONDO','CRUZ',NULL,NULL),('17047934-D690A114E','ALVIN','CRUZ','ROBLES',NULL,NULL),('17047951-6B9A3F671','ELVIN','NAVAS','PIOZON',NULL,NULL),('17047955-36486A467','JOSE MARI','YABUT','DELA CRUZ',NULL,NULL),('17047961-ACC6DDBBC','MIKE','CALAW','ROWELO',NULL,NULL),('17059044-0315A9883','ASDASD','ASDASDASD','ASDASD','II',NULL),('17059958-E1AA605E9','SADASD','ASDASD','ASDASD','Jr.',NULL);
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
INSERT INTO `husband_info` VALUES ('17048043-0908C698A','CHRISTIAN','VICENTE','MENDOZA',NULL),('17048090-8DE4FDFEF','CHARLIE','ALARCON','BERDOS',NULL),('17048093-2136D88EA','REGALATO','PONSE','CRISOSTOMO','Jr.'),('17048095-E67CED1A5','RAINER','ALONSO','HALILI',NULL),('17048098-192B3DC18','JOHN MARK','AMOS','HECHANOVA','V'),('17059121-0174C3AF2','ASDASDASD','ASDASD','ASDASDASD','V'),('17059121-1BD871F23','ASDASDASD','ASDASD','ASDASDASD','V');
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
INSERT INTO `marriage_cert` VALUES ('17048043-0908C698A',14,'14A1','14A15','2021-11-10'),('17048090-8DE4FDFEF',14,'14A3','14A25','2020-12-16'),('17048093-2136D88EA',16,'16A1','16A1','1983-09-06'),('17048095-E67CED1A5',9,'9A5','9A121','2004-01-03'),('17048098-192B3DC18',9,'9A4','9A102','1997-02-14'),('17059121-0174C3AF2',3,'3A7','3A98','2024-01-09'),('17059121-1BD871F23',3,'3A7','3A98','2024-01-09');
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
  CONSTRAINT `fk_mother_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_mother_info1` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mother_info`
--

LOCK TABLES `mother_info` WRITE;
/*!40000 ALTER TABLE `mother_info` DISABLE KEYS */;
INSERT INTO `mother_info` VALUES ('17019936-51C07D067',NULL,NULL,NULL,NULL,NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F','MILES','DAA','LUNA',NULL,NULL),('17047892-91FE1980D','SOFIA','REYES','GONZALES',NULL,NULL),('17047934-D690A114E','MENDELINE','RELOSA','DE LEON',NULL,NULL),('17047951-6B9A3F671','VHONNALYN','PEREZ','POLICARPIO',NULL,NULL),('17047955-36486A467','ALLIYA','CASTRO','AQUINO',NULL,NULL),('17047961-ACC6DDBBC','KATE','SANTOS','CARLOS',NULL,NULL),('17059044-0315A9883','ASDASDASDASD','ASDASASD','ASDASDASD','III',NULL),('17059958-E1AA605E9','CHRISTINE','PRUDENCIADO','MARIE','III',NULL);
/*!40000 ALTER TABLE `mother_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `print_type`
--

DROP TABLE IF EXISTS `print_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `print_type` (
  `print_id` int NOT NULL,
  `print_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`print_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `print_type`
--

LOCK TABLES `print_type` WRITE;
/*!40000 ALTER TABLE `print_type` DISABLE KEYS */;
INSERT INTO `print_type` VALUES (1,'Front'),(2,'Back'),(3,'Front and Back');
/*!40000 ALTER TABLE `print_type` ENABLE KEYS */;
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
INSERT INTO `rptax_clearance` VALUES ('17047805-1D3838B47','CD-87654-32109','876-54-321-098-765'),('17047805-3474DC7CB','GH-65432-10987','654-32-109-876-543'),('17047805-3DC6065C8','AB-98765-43210','987-65-432-101-234'),('17047805-6B01D0F65','EF-76543-21098','765-43-210-987-654'),('17047805-D5F839C39','IJ-54321-09876','543-21-098-765-432');
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
INSERT INTO `rptax_payment` VALUES ('17047802-3FFE1CD07','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',2,'1st Quarter'),('17059006-35DE81921','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',3,'4th Quarter'),('17059006-8ECE0703D','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',2,'2nd Quarter'),('17059006-C25027F8C','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',2,'4th Quarter'),('17059006-D00B17FB4','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',2,'3rd Quarter'),('17059007-DD1436218','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',1,'1st Quarter'),('17059007-F177AB582','MHANDEE LOUISE MATIS','MC-11260-11208','111-90-121-208-208',3,'3rd Quarter'),('17059011-2D391B1D4','DANILO TORRES','SA-21234-12221','002-22-003-441-991',3,'2nd Quarter'),('17059011-428F4F56B','DANILO TORRES','SA-21234-12221','002-22-003-441-991',2,'4th Quarter'),('17059011-5ED687F07','DANILO TORRES','SA-21234-12221','002-22-003-441-991',3,'1st Quarter'),('17059011-A6C5DEA80','DANILO TORRES','SA-21234-12221','002-22-003-441-991',2,'1st Quarter'),('17059011-B3D8E5DD1','DANILO TORRES','SA-21234-12221','002-22-003-441-991',3,'4th Quarter'),('17059011-C4B6859A5','DANILO TORRES','SA-21234-12221','002-22-003-441-991',2,'2nd Quarter'),('17059011-D9D71B5AE','DANILO TORRES','SA-21234-12221','002-22-003-441-991',2,'3rd Quarter'),('17059011-F5C307DDA','DANILO TORRES','SA-21234-12221','002-22-003-441-991',1,'1st Quarter'),('17059011-F6A5A592F','DANILO TORRES','SA-21234-12221','002-22-003-441-991',3,'3rd Quarter'),('17059012-21E6DE4A6','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',2,'2nd Quarter'),('17059012-2E7B97ADC','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',2,'1st Quarter'),('17059012-61A601211','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',4,'4th Quarter'),('17059012-666279BA4','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',3,'3rd Quarter'),('17059012-838E6163D','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',2,'3rd Quarter'),('17059012-9E21A7D42','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',4,'3rd Quarter'),('17059012-9F56D78A2','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',3,'2nd Quarter'),('17059012-C43C9FF62','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',3,'4th Quarter'),('17059012-C67F07C7A','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',3,'1st Quarter'),('17059013-35023F468','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',1,'1st Quarter'),('17059013-9008B515D','ATANACIO DEVINZ BASA III','AW-21231-09545','021-02-030-104-500',2,'4th Quarter');
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
  PRIMARY KEY (`sex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sex_type`
--

LOCK TABLES `sex_type` WRITE;
/*!40000 ALTER TABLE `sex_type` DISABLE KEYS */;
INSERT INTO `sex_type` VALUES (1,'Male'),(2,'Female');
/*!40000 ALTER TABLE `sex_type` ENABLE KEYS */;
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
  `print_id` int DEFAULT NULL,
  `valid_id` int DEFAULT NULL,
  `purpose_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_transaction_info_purpose_id` (`purpose_id`),
  KEY `fk_transaction_info_valid_id` (`valid_id`),
  KEY `fk_transaction_info_print_id` (`print_id`),
  CONSTRAINT `fk_transaction_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_info_print_id` FOREIGN KEY (`print_id`) REFERENCES `print_type` (`print_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_info_purpose_id` FOREIGN KEY (`purpose_id`) REFERENCES `purpose_type` (`purpose_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_transaction_info_valid_id` FOREIGN KEY (`valid_id`) REFERENCES `valid_id_type` (`valid_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_info`
--

LOCK TABLES `transaction_info` WRITE;
/*!40000 ALTER TABLE `transaction_info` DISABLE KEYS */;
INSERT INTO `transaction_info` VALUES ('17047802-3FFE1CD07','1500',NULL,NULL,NULL,NULL),('17047805-1D3838B47','100',NULL,NULL,NULL,NULL),('17047805-3474DC7CB','100',NULL,NULL,NULL,NULL),('17047805-3DC6065C8','100',NULL,NULL,NULL,NULL),('17047805-6B01D0F65','100',NULL,NULL,NULL,NULL),('17047805-D5F839C39','100',NULL,NULL,NULL,NULL),('17047822-0CDA67EC9','250',4,2,5,4),('17047827-B72708D86','450',4,3,5,1),('17047830-4DB8D3625','550',10,1,2,5),('17047835-742F92DC9','350',3,3,5,4),('17047840-6E61E82C9','300',5,1,6,1),('17047868-CCA552F32','48',NULL,NULL,5,NULL),('17047883-51B7F99E3','11',NULL,NULL,4,NULL),('17047884-AFA5CB3FE','143',NULL,NULL,8,NULL),('17047885-804EF01E1','10',NULL,NULL,5,NULL),('17047887-7BE9D5D1E','80',NULL,NULL,4,NULL),('17047892-91FE1980D','150',2,1,NULL,2),('17047934-D690A114E','100',1,1,NULL,3),('17047951-6B9A3F671','100',1,2,NULL,3),('17047955-36486A467','450',4,3,NULL,2),('17047961-ACC6DDBBC','150',2,1,NULL,2),('17047981-C3805DC53','300',5,2,NULL,2),('17048000-243B301A7','350',3,3,NULL,1),('17048010-BEF3D5071','200',3,1,NULL,2),('17048020-AD3785399','350',3,3,NULL,3),('17048034-284929F51','250',4,1,NULL,4),('17048043-0908C698A','350',3,3,NULL,2),('17048090-8DE4FDFEF','350',3,3,NULL,2),('17048093-2136D88EA','450',4,3,NULL,2),('17048095-E67CED1A5','850',8,3,NULL,1),('17048098-192B3DC18','650',6,3,NULL,1),('17059006-35DE81921','1500',NULL,NULL,NULL,NULL),('17059006-8ECE0703D','1500',NULL,NULL,NULL,NULL),('17059006-C25027F8C','1500',NULL,NULL,NULL,NULL),('17059006-D00B17FB4','1500',NULL,NULL,NULL,NULL),('17059007-DD1436218','1500',NULL,NULL,NULL,NULL),('17059007-F177AB582','1500',NULL,NULL,NULL,NULL),('17059011-2D391B1D4','800',NULL,NULL,NULL,NULL),('17059011-428F4F56B','800',NULL,NULL,NULL,NULL),('17059011-5ED687F07','800',NULL,NULL,NULL,NULL),('17059011-A6C5DEA80','800',NULL,NULL,NULL,NULL),('17059011-B3D8E5DD1','800',NULL,NULL,NULL,NULL),('17059011-C4B6859A5','800',NULL,NULL,NULL,NULL),('17059011-D9D71B5AE','800',NULL,NULL,NULL,NULL),('17059011-F5C307DDA','800',NULL,NULL,NULL,NULL),('17059011-F6A5A592F','800',NULL,NULL,NULL,NULL),('17059012-21E6DE4A6','1000',NULL,NULL,NULL,NULL),('17059012-2E7B97ADC','1000',NULL,NULL,NULL,NULL),('17059012-61A601211','1000',NULL,NULL,NULL,NULL),('17059012-666279BA4','1000',NULL,NULL,NULL,NULL),('17059012-838E6163D','1000',NULL,NULL,NULL,NULL),('17059012-9E21A7D42','1000',NULL,NULL,NULL,NULL),('17059012-9F56D78A2','1000',NULL,NULL,NULL,NULL),('17059012-C43C9FF62','1000',NULL,NULL,NULL,NULL),('17059012-C67F07C7A','1000',NULL,NULL,NULL,NULL),('17059013-35023F468','1000',NULL,NULL,NULL,NULL),('17059013-9008B515D','1000',NULL,NULL,NULL,NULL),('17059044-0315A9883','450',4,3,NULL,3),('17059113-FD9F78EE1','8',NULL,NULL,4,NULL),('17059121-0174C3AF2','550',5,3,11,2),('17059121-1BD871F23','550',5,3,5,2),('17059162-A89EFA0E7','12',NULL,NULL,5,NULL),('17059958-E1AA605E9','250',4,2,10,2);
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
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_auth` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES ('09987764531','ancheta','AA4531'),('09887456654','aguilar','AA6654'),('9754137348','basa','AB7348'),('09998774654','luro','AL4654'),('09987745634','labindalawa','AL5634'),('9424234234','Lasj2j%js','AM4234'),('1234561213','Paolo123@','AP1213'),('9963541268','rodrigo','AR1268'),('09852456323','enriquez','BE6323'),('09112354786','aleta','CA4786'),('09997786523','cristobal','CC6523'),('09987456312','manjares','CM6312'),('9326436427','fsfdsffdd','CM6427'),('9639765413','manapol','DM5413'),('9636163980','torres','DT3980'),('09877886546','sagadraca','GS6546'),('9756184906','dones','JD4906'),('09687465321','mendoza','JM5321'),('09998746533','pacris','JP6533'),('996654123','camigla','LC4123'),('9778546322','alcala','MA6322'),('9233376652','alvarez','MA6652'),('9381676352','luna','ML6352'),('9761793284','matis','MM3284'),('12345612345','naomi123','NC2345'),('9324234422','Newuser123@','NU4422'),('9770210586','maghirang','PM0586'),('9454731741','$2b$10$zoCcrw8aaW8aKFJqGyr6ieW0jsuMEs.pphmPRr.P1O5ugBeCRP.5.','RL1741'),('09874456321','aquino','SA6321'),('09866531565','villaflor','TV1565');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_birth`
--

DROP TABLE IF EXISTS `user_birth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_birth` (
  `user_id` varchar(45) NOT NULL,
  `birth_date` varchar(45) DEFAULT NULL,
  `birth_place` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_birth` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_birth`
--

LOCK TABLES `user_birth` WRITE;
/*!40000 ALTER TABLE `user_birth` DISABLE KEYS */;
INSERT INTO `user_birth` VALUES ('AB7348','2001-12-16','PASAY'),('AM4234','2002-05-21','MALABON'),('AP1213','2001-02-28','NAVOTAS'),('AR1268','2003-01-01','PAMPANGA'),('DT3980','2001-12-25','MANILA'),('JD4906','2001-02-14','PARANAQUE'),('KN7123','2006-04-06','MANILA'),('MA6652',NULL,NULL),('ML6352','2001-05-11','CAVITE'),('MM3284','2001-11-26','NAVOTAS'),('RL1741','2002-02-17','NAVOTAS');
/*!40000 ALTER TABLE `user_birth` ENABLE KEYS */;
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
  `mobile_no` varchar(45) DEFAULT NULL,
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
  CONSTRAINT `fk_user_contact` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
INSERT INTO `user_contact` VALUES ('AA4531',NULL,'09987764531',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AA6654',NULL,'09887456654',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AB7348','atanaciodevinz.basa@tup.edu.ph','09123424521','29031231',14,'14A4','14A31','11','Pinagsabugan','Villamor ','2912'),('AL4654',NULL,'09998774654',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AL5634',NULL,'09987745634',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AM4234',NULL,'09424234234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('AP1213','paolo@gmail.com','0943223432','270162512',14,'14A1','14A10','1201','Vito','Cruz','2312'),('AR1268','ailahrodrigo.duterte@tup.edu.ph','09963541268','2323112',3,'3A5','3A72','65','TEXAS','ST.LUIS','2112'),('BE6323',NULL,'09852456323',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CA4786',NULL,'09112354786',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CC6523',NULL,'09997786523',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('CM6312',NULL,'09987456312',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DM5413',NULL,'09639765413',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('DT3980','danilo.torresjr@tup.edu.ph','09636163980','212312314',14,'14A3','14A25','2123412','tumana','dagat-dagtan','1485'),('GS6546',NULL,'09877886546',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('JD4906','julemichael.dones@tup.edu.ph','09756184906','23124112',14,'14A1','14A7','67B','LOT 4 BLOCK 2','ANTIPOLO ST..','2141'),('JM5321',NULL,'09687465321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('JP6533',NULL,'09998746533',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('KN7123','karen.nina@gmail.com','09234182742','21231231',14,'14A2','14A20','212','Lot 23 block 2','Pinagbuhatan','2881'),('LC4123',NULL,'0996654123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MA6322',NULL,'09778546322',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('MA6652',NULL,NULL,'55555',NULL,NULL,NULL,NULL,NULL,'LAS VEGAS',NULL),('ML6352','johnmiles.luna@tup.edu.ph','09381676352','29310931',14,'14A1','14A4','77A','Molino','Cavite','8231'),('MM3284','mhandeelouise.matis@tup.edu.ph','0976193284','27018982',14,'14A3','14A25','1026','A. Ignacio St.','Daanghari','1485'),('NU4422',NULL,'932 - 423 - 4422',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('PM0586',NULL,'09770210586',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RL1741','ruficarllagaras@gmail.com','09454731741','02178167',3,'3A3','3A23','1st Floor','Zobel Street','Brgy. Dimagiba','1772'),('SA6321',NULL,'09874456321',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('TV1565',NULL,'09866531565',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_gov_id` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_gov_id`
--

LOCK TABLES `user_gov_id` WRITE;
/*!40000 ALTER TABLE `user_gov_id` DISABLE KEYS */;
INSERT INTO `user_gov_id` VALUES ('AB7348','1234123','123124','314','23452345','2345','23452345'),('AM4234','123123','123123','123123','123123','123123','123123'),('AP1213','123123','123123','123123','123123','123123','123123'),('AR1268','000203001000201','00023001054001','00233100500100','0002040010050010','00020300401020000','0020300104505101050'),('DT3980','11122311','22311555','7856567856785678','5654545645','56756785678567','8567856785678'),('JD4906','0120312301203012300','0000203010020','120030010030041','000120030010','00230012031203120300','0050654500654034'),('KN7123','123123','123','123','1231','123123','123123'),('MA6652',NULL,NULL,NULL,NULL,NULL,NULL),('ML6352','23112331441','2231124512','333445124500078','88007780077','067867867055000','0005600560705060'),('MM3284','123123213','123123','312321','12321','12321','12321'),('NU4422','123123','123123','123123','123','123123','123123'),('RL1741','12345','12345','12345','12345','12345','12345');
/*!40000 ALTER TABLE `user_gov_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_image`
--

DROP TABLE IF EXISTS `user_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_image` (
  `user_id` varchar(45) NOT NULL,
  `user_image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_image` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_image`
--

LOCK TABLES `user_image` WRITE;
/*!40000 ALTER TABLE `user_image` DISABLE KEYS */;
INSERT INTO `user_image` VALUES ('RL1741','IMG_20240112_225213_RL1741.jpg');
/*!40000 ALTER TABLE `user_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notif`
--

DROP TABLE IF EXISTS `user_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notif` (
  `id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notif`
--

LOCK TABLES `user_notif` WRITE;
/*!40000 ALTER TABLE `user_notif` DISABLE KEYS */;
INSERT INTO `user_notif` VALUES ('1','RL1741','2024-01-10 14:08:39','Hello Notif','Hello there',0),('2','RL1741','2024-01-09 14:08:39','Testing Notif','This is a test for a long message notification. This is a testing.',0);
/*!40000 ALTER TABLE `user_notif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_personal`
--

DROP TABLE IF EXISTS `user_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_personal` (
  `user_id` varchar(45) NOT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `suffix_type` enum('Sr.','Jr.','I','II','III','IV','V','VI','VII','VIII','IX','X') DEFAULT NULL,
  `sex_id` int DEFAULT NULL,
  `cvl_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `czn_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_personal_cvl_id` (`cvl_id`),
  KEY `fk_user_personal_res_id` (`res_id`),
  KEY `fk_user_personal_czn_id` (`czn_id`),
  KEY `fk_user_personal_sex_id` (`sex_id`),
  CONSTRAINT `fk_user_personal` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_personal_cvl_id` FOREIGN KEY (`cvl_id`) REFERENCES `cvl_status` (`cvl_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_personal_czn_id` FOREIGN KEY (`czn_id`) REFERENCES `czn_status` (`czn_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_personal_res_id` FOREIGN KEY (`res_id`) REFERENCES `res_status` (`res_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_personal_sex_id` FOREIGN KEY (`sex_id`) REFERENCES `sex_type` (`sex_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_personal`
--

LOCK TABLES `user_personal` WRITE;
/*!40000 ALTER TABLE `user_personal` DISABLE KEYS */;
INSERT INTO `user_personal` VALUES ('AB7348','ATANACIO ','DEVINZ','BASA','III',1,1,2,2),('AM4234','ANNA','MENDOZA','MARIE',NULL,2,1,1,2),('AP1213','ADRIAN','MAGHIRANG','PAO',NULL,1,1,1,2),('AR1268','AILAH','DUTERTE','RODRIGO',NULL,2,1,2,1),('DT3980','DANILO','MIRANDA','TORRES','Jr.',1,2,1,1),('JD4906','JULE MICHAEL',NULL,'DONES',NULL,1,3,1,1),('KN7123','KAREN','DAVILLA','NINA',NULL,2,2,1,1),('MA6652',NULL,'PAULINA',NULL,'III',NULL,NULL,NULL,NULL),('ML6352','MILES','JOHN','LUNA',NULL,1,4,1,1),('MM3284','MHANDEE LOUISE','BAUTISTA','MATIS',NULL,1,1,1,2),('NU4422','NEW',NULL,'USER',NULL,NULL,NULL,NULL,NULL),('RL1741','ATANACIO','','LAGARAS',NULL,2,2,1,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reg`
--

LOCK TABLES `user_reg` WRITE;
/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` VALUES (1,'Rufi Carl','Lagaras','09454731741','RL1741'),(4,'Atanacio Devinz','Basa','09754137348','AB7348'),(5,'Paolo','Maghirang','09770210586','PM0586'),(6,'Danilo','Torres','09636163980','DT3980'),(10,'Miles','Luna','09381676352','ML6352'),(11,'Jule','Dones','09756184906','JD4906'),(12,'Miah','Alvarez','09233376652','MA6652'),(13,'Dann Gabriel','Manapol','09639765413','DM5413'),(14,'Judgeson','Mendoza','09687465321','JM5321'),(15,'Maxine','Alcala','09778546322','MA6322'),(16,'Joyce','Pacris','09998746533','JP6533'),(17,'Christine','Cristobal','09997786523','CC6523'),(18,'Sandra','Aquino','09874456321','SA6321'),(19,'Lucky','Camigla','0996654123','LC4123'),(20,'Tristan','Villaflor','09866531565','TV1565'),(21,'Golden','Sagadraca','09877886546','GS6546'),(22,'Aepreha','Labindalawa','09987745634','AL5634'),(23,'Ailah','Rodrigo','09963541268','AR1268'),(24,'Andrea','Aguilar','09887456654','AA6654'),(25,'Angelene','Luro','09998774654','AL4654'),(26,'Ara Lou','Ancheta','09987764531','AA4531'),(27,'Bart Joshua','Enriquez','09852456323','BE6323'),(28,'Chrystal Zhane','Aleta','09112354786','CA4786'),(29,'Coline','Manjares','09987456312','CM6312'),(35,'Naomi','Campbell','12345612345','NC2345'),(36,'CHRISTINE','MARIE','9326436427','CM6427'),(47,'ADRIAN','PAO','1234561213','AP1213'),(49,'NEW','USER','9324234422','NU4422'),(50,'ANNA','MARIE','9424234234','AM4234'),(51,'KAREN','NINA','1234567123','KN7123'),(52,'Mhandee Louise','Matis','09761793284','MM3284');
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
  `status_type` enum('Pending','Paid','Canceled','Rejected','Expired','Complete') NOT NULL,
  `date_processed` datetime NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_transaction`
--

LOCK TABLES `user_transaction` WRITE;
/*!40000 ALTER TABLE `user_transaction` DISABLE KEYS */;
INSERT INTO `user_transaction` VALUES ('17047802-3FFE1CD07','RL1741',1,'Complete','2023-01-10 08:30:00'),('17047805-1D3838B47','RL1741',2,'Pending','2023-10-15 15:45:30'),('17047805-3474DC7CB','RL1741',2,'Paid','2023-11-25 05:10:45'),('17047805-3DC6065C8','RL1741',2,'Pending','2024-01-09 14:08:39'),('17047805-6B01D0F65','RL1741',2,'Paid','2023-12-05 19:40:05'),('17047805-D5F839C39','RL1741',2,'Pending','2024-01-30 20:05:45'),('17047822-0CDA67EC9','RL1741',3,'Pending','2023-10-20 20:15:10'),('17047827-B72708D86','RL1741',3,'Pending','2023-11-15 18:30:25'),('17047830-4DB8D3625','RL1741',3,'Paid','2023-12-15 07:30:10'),('17047835-742F92DC9','RL1741',3,'Pending','2024-01-09 14:59:38'),('17047840-6E61E82C9','RL1741',3,'Paid','2024-01-25 14:45:10'),('17047868-CCA552F32','RL1741',4,'Pending','2023-10-25 12:00:45'),('17047883-51B7F99E3','RL1741',4,'Pending','2023-11-20 23:55:15'),('17047884-AFA5CB3FE','RL1741',4,'Paid','2023-12-25 23:55:15'),('17047885-804EF01E1','RL1741',4,'Paid','2024-01-09 16:23:17'),('17047887-7BE9D5D1E','RL1741',4,'Pending','2023-12-05 10:40:55'),('17047892-91FE1980D','RL1741',5,'Pending','2023-10-15 15:45:30'),('17047934-D690A114E','RL1741',5,'Paid','2023-12-15 18:30:25'),('17047951-6B9A3F671','RL1741',5,'Paid','2024-01-15 14:20:30'),('17047955-36486A467','RL1741',5,'Pending','2024-01-09 18:19:37'),('17047961-ACC6DDBBC','RL1741',5,'Pending','2023-11-25 02:05:20'),('17047981-C3805DC53','RL1741',6,'Pending','2023-10-05 08:30:00'),('17048000-243B301A7','RL1741',6,'Pending','2023-10-15 20:15:10'),('17048010-BEF3D5071','RL1741',6,'Pending','2023-11-15 23:55:15'),('17048020-AD3785399','RL1741',6,'Paid','2023-12-10 07:30:10'),('17048034-284929F51','RL1741',6,'Pending','2024-01-10 01:15:55'),('17048043-0908C698A','RL1741',7,'Pending','2023-10-10 15:45:30'),('17048090-8DE4FDFEF','RL1741',7,'Paid','2023-11-20 05:10:45'),('17048093-2136D88EA','RL1741',7,'Paid','2024-01-09 22:08:30'),('17048095-E67CED1A5','RL1741',7,'Paid','2023-12-30 12:40:45'),('17048098-192B3DC18','RL1741',7,'Pending','2024-01-20 14:45:10'),('17059006-35DE81921','RL1741',1,'Pending','2022-11-22 13:18:19'),('17059006-8ECE0703D','RL1741',1,'Pending','2023-05-22 13:16:44'),('17059006-C25027F8C','RL1741',1,'Pending','2023-12-22 13:18:10'),('17059006-D00B17FB4','RL1741',1,'Pending','2023-07-22 13:18:07'),('17059007-DD1436218','RL1741',1,'Pending','2024-01-22 13:18:28'),('17059007-F177AB582','RL1741',1,'Pending','2022-08-22 13:18:23'),('17059011-2D391B1D4','DT3980',1,'Pending','2022-03-22 13:25:43'),('17059011-428F4F56B','DT3980',1,'Pending','2023-10-22 13:26:03'),('17059011-5ED687F07','DT3980',1,'Pending','2022-01-22 13:25:41'),('17059011-A6C5DEA80','DT3980',1,'Pending','2023-01-11 13:25:56'),('17059011-B3D8E5DD1','DT3980',1,'Pending','2022-12-22 13:25:49'),('17059011-C4B6859A5','DT3980',1,'Pending','2023-06-22 13:25:59'),('17059011-D9D71B5AE','DT3980',1,'Pending','2023-08-22 13:26:01'),('17059011-F5C307DDA','DT3980',1,'Pending','2024-01-02 13:26:09'),('17059011-F6A5A592F','DT3980',1,'Pending','2022-07-22 13:25:46'),('17059012-21E6DE4A6','AB7348',1,'Pending','2023-04-22 13:28:15'),('17059012-2E7B97ADC','AB7348',1,'Pending','2023-01-12 13:28:13'),('17059012-61A601211','AB7348',1,'Pending','2021-10-22 13:27:51'),('17059012-666279BA4','AB7348',1,'Pending','2022-07-22 13:28:05'),('17059012-838E6163D','AB7348',1,'Pending','2023-07-22 13:28:18'),('17059012-9E21A7D42','AB7348',1,'Pending','2021-07-22 13:27:49'),('17059012-9F56D78A2','AB7348',1,'Pending','2022-04-22 13:28:01'),('17059012-C43C9FF62','AB7348',1,'Pending','2022-10-22 13:28:08'),('17059012-C67F07C7A','AB7348',1,'Pending','2022-01-26 13:27:58'),('17059013-35023F468','AB7348',1,'Pending','2024-01-21 13:29:05'),('17059013-9008B515D','AB7348',1,'Pending','2023-11-22 13:28:21'),('17059044-0315A9883','AB7348',5,'Pending','2024-01-22 14:21:31'),('17059113-FD9F78EE1','AB7348',4,'Pending','2024-01-22 16:15:40'),('17059121-0174C3AF2','AB7348',7,'Pending','2024-01-22 16:29:57'),('17059121-1BD871F23','AB7348',7,'Pending','2024-01-22 16:29:15'),('17059136-C21A68756','AB7348',7,'Pending','2024-01-22 16:53:25'),('17059162-A89EFA0E7','AB7348',4,'Pending','2024-01-22 17:37:48'),('17059958-E1AA605E9','RL1741',5,'Pending','2024-01-23 15:44:21');
/*!40000 ALTER TABLE `user_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verification`
--

DROP TABLE IF EXISTS `user_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_verification` (
  `user_id` varchar(45) NOT NULL,
  `verification_status` enum('Verified','Unverified') DEFAULT NULL,
  `application_status` enum('New','Applying','Complete','Declined') DEFAULT NULL,
  `user_valid_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_verification` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verification`
--

LOCK TABLES `user_verification` WRITE;
/*!40000 ALTER TABLE `user_verification` DISABLE KEYS */;
INSERT INTO `user_verification` VALUES ('AB7348','Verified','Applying',NULL),('AM4234','Unverified','Applying',NULL),('AP1213','Verified','Applying',NULL),('AR1268','Verified','Applying',NULL),('DT3980','Verified','Applying',NULL),('JD4906','Verified','Applying',NULL),('KN7123','Unverified','Applying',NULL),('MA6652','Verified','Applying',NULL),('ML6352','Verified','Applying',NULL),('MM3284','Unverified','Applying',NULL),('NU4422','Verified','Applying',NULL),('RL1741','Verified','Applying','RUFI_RL1741.jpg');
/*!40000 ALTER TABLE `user_verification` ENABLE KEYS */;
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
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_wife_info` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wife_info`
--

LOCK TABLES `wife_info` WRITE;
/*!40000 ALTER TABLE `wife_info` DISABLE KEYS */;
INSERT INTO `wife_info` VALUES ('17048043-0908C698A','MARIFEL','PERALTA','GINO GINO',NULL),('17048090-8DE4FDFEF','MICHA','SANTOS','PABLO',NULL),('17048093-2136D88EA','MARIA CRISTA','SIXTO','CAYETANO',NULL),('17048095-E67CED1A5','MIYAKA','RINOA','GARCIA',NULL),('17048098-192B3DC18','ELJANE','CARANAY','REYES',NULL),('17059121-0174C3AF2','ASDASDASD','ASDASD','ASDASDASD','Sr.'),('17059121-1BD871F23','ASDASDASD','ASDASD','ASDASDASD','Sr.');
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

-- Dump completed on 2024-01-24  1:34:33
