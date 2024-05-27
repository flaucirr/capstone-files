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
INSERT INTO `address_info` VALUES ('17067150-90AEBB82F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17067155-0BCA24CF2',NULL,NULL,NULL,8,'8A2','8A62','GFHFGHFGH','3432','DGDFGDFG','2342'),('17067157-C42703E52',NULL,NULL,NULL,9,'','','123','1231','123','8878'),('17067160-9168B0E42',NULL,NULL,NULL,9,'','','123','1231','123','8878'),('17145339-60F752E0D','juan@gmail.com','09761793284','09761793',11,'11A2','11A24','BBB','23','BACOOR CAVITE','212'),('17145340-F7D07A9DB','juan@gmail.com','09761793284','09761793',13,'13A1','13A15','BBB','23','BACOOR CAVITE','212'),('17145342-3D2225A46','juan@gmail.com','09761793284','09761793',14,'14A1','14A14','BBB','23','BACOOR CAVITE','212'),('17145344-E436EA424','juan@gmail.com','09761793284','09761793',15,'15A3','15A37','BBB','23','BACOOR CAVITE','212'),('17145345-23A048D6E',NULL,NULL,NULL,14,'14A1','14A14','DSAD','WE2','BACOOR CAVITE','4123'),('17145346-0757583CD',NULL,NULL,NULL,7,'7A3','7A49','DSAD','WE2','BACOOR CAVITE','4123'),('17145346-FC8212179',NULL,NULL,NULL,7,'7A3','7A49','DSAD','WE2','BACOOR CAVITE','4123'),('17145347-613DA1196',NULL,NULL,NULL,2,'2A2','1B22','DSAD','WE2','BACOOR CAVITE','4123'),('17145348-0A9F081E8',NULL,NULL,NULL,14,'14A3','14A24','MOLINO 2','213','BACOOR CAVITE','4123'),('17145349-AD7D7E7A1',NULL,NULL,NULL,13,'13A1','13A15','MOLINO 2','213','BACOOR CAVITE','4123'),('17145350-7A102CB11',NULL,NULL,NULL,9,'9A2','9A38','MOLINO 2','213','BACOOR CAVITE','4123'),('17145350-F6B8793B5',NULL,NULL,NULL,9,'9A2','9A38','MOLINO 2','213','BACOOR CAVITE','4123'),('17145351-8C9AB9A1E',NULL,NULL,NULL,13,'13A2','13A19','ADA','ADAD','BACOOR CAVITE','4123'),('17145352-4170AD6D4',NULL,NULL,NULL,14,'14A2','14A19','ADA','ADAD','BACOOR CAVITE','4123'),('17145352-F2A26E9D1',NULL,NULL,NULL,12,'12A3','12A24','ADA','ADAD','BACOOR CAVITE','4123'),('17145353-EF6777C22',NULL,NULL,NULL,8,'8A1','8A10','ADA','ADAD','BACOOR CAVITE','4123'),('17145355-1E1E84373',NULL,NULL,NULL,12,'12A4','12A35','SEDASD','DSA','BACOOR CAVITE','4123'),('17145355-2FB8C70FB',NULL,NULL,NULL,13,'13A2','13A21','SEDASD','DSA','BACOOR CAVITE','4123'),('17145357-85C1B1F7E',NULL,NULL,NULL,4,'4A2','4A50','DA','DASD','BACOOR CAVITE','4123'),('17145358-603E4657B',NULL,NULL,NULL,13,'13A2','13A19','DA','DASD','BACOOR CAVITE','4123'),('17148881-699661303','lim.james@gmail.com','09235433453','25612455',14,'14A3','14A25','DAANGHARI','FDR 2','BACOG','1485'),('17148903-F75B993B8','emily.smith@example.com','09345234263','27933223',15,'15A1','15A23','ROBLES','42','11 ST','1241'),('17150914-AC6FDE6AC',NULL,NULL,NULL,6,'6A3','6A24','BIGOTABLE','55 B.','VP BUILDING','5572'),('17150927-C10A77508',NULL,NULL,NULL,14,'14A3','14A26','UGONG','69','GP SUBDIVISION','2827'),('17150948-4C5F38DDC',NULL,NULL,NULL,12,'12A4','12A36','ALIBABA','24','LESLIES','2144'),('17150954-96D423905',NULL,NULL,NULL,6,'6A3','6A22','PINYA','32','BLOCK 2','5665'),('17150982-67E0C7A82',NULL,NULL,NULL,16,'16A2','16A14','RELINDA','124A','SOCORO ST.,','5442'),('17150986-3432EDD1F',NULL,NULL,NULL,14,'14A2','14A18','DILIMAN','77','CORN ST.','3212'),('17150990-7572A208F',NULL,NULL,NULL,3,'3A3','3A21','NERGOSO','21','POBLANO ST.','4812'),('17150994-D2ECD9E46',NULL,NULL,NULL,12,'12A2','12A17','NAPOLEAN','10','SAMAR','3556'),('17150998-932273BCB',NULL,NULL,NULL,11,'11A4','11A66','TUMANA','67','BLOCK 22','4552'),('17151018-FF7F78A8E',NULL,NULL,NULL,2,'2A3','1B32','MERCADO','65','RIZAL BUILDING','3566'),('17151112-0F5674BD4',NULL,NULL,NULL,2,'2A3','1B30','SAN ISIDRO','541','GLOBAL BUILDING','2151'),('17151118-C7879186F','miguel.rodriguez@greenleaffarming.com','09876543210','45678901',14,'14A2','14A18','DOWNTOWN','2415','MAIN ROAD','4595'),('17151122-BE12A0BDA','fernandotondo@techinnovations.com','09457698761','53453463',15,'15A2','15A31','BEL-AIR','792','INNOVATION STREET','5221'),('17151126-440FE827D','carlos.lopez@freshharvest.com','09562359856','64322342',8,'8A2','8A64','AGHAM','251','LAGARDA`','2515'),('17151130-11F6C233D',NULL,NULL,NULL,14,'14A2','14A21','MERCADO','29111','SORE ST','4151'),('17151132-150A096E1',NULL,NULL,NULL,16,'16A4','16A76','BARANGGAY 21','76','BLOCK 114','5223'),('17151136-8F0763E86',NULL,NULL,NULL,14,'14A2','14A19','BARANGGAY 21','8724','REBLES COM.','9876'),('17151138-0B626C9CD',NULL,NULL,NULL,15,'15A2','15A29','TORES','7661','IGNACIO','0234'),('17151149-4E65B41E3',NULL,NULL,NULL,15,'15A1','15A25','ASEROS','0924','LOT 3','2395'),('17151155-F13FF9189',NULL,NULL,NULL,13,'13A2','13A21','BARANGGAY 2','90934','TIBAY','2009'),('17151157-3D9091FAC',NULL,NULL,NULL,14,'14A1','14A14','LOPEZ','810','LOT 21','9867'),('17151158-0297CC7CA',NULL,NULL,NULL,13,'13A2','13A21','QUAMBAO','8291','GOZON','2415'),('17154101-DF36D2F50',NULL,NULL,NULL,15,'15A2','15A30','SANJOSE ','22','CALOOCAN','2746'),('17154109-AA3C3233B',NULL,NULL,NULL,15,'15A2','15A31','SANJOSE ','22','CALOOCAN','2746'),('17154240-3FAE9F3D9','zandrosverona@gmail.com','09324234422','09123456',14,'14A4','14A33','TESTING','12345','CALOOCAN BLDG','3023'),('17155884-69CF0EE8D',NULL,NULL,NULL,13,'13A1','13A4','23','WE22','BACOOR CAVITE','4123'),('17155884-A3E81F486',NULL,NULL,NULL,13,'13A1','13A4','23','WE22','BACOOR CAVITE','4123'),('17155884-F1311286A',NULL,NULL,NULL,13,'13A1','13A4','23','WE22','BACOOR CAVITE','4123'),('17168333-97CFE7223','samantha.johnson@brightstartech.com','5559876543','55512345',9,'9A3','9A73','ROBLES','BIBSTER ST.','44','4182'),('17168340-7D11F2205','emily.chen@stellarsolutions.com','09326844568','56118244',14,'14A3','14A24','BARITAN','91','CATMON','1488'),('17168344-84D532C14','aarav.patel@quantumtech.com','97786412682','77996688',15,'15A3','15A46','YETSY','06','LOBO ST','3674'),('17168351-93EEE6F79',NULL,NULL,NULL,9,'9A2','9A54','SAN JOAQUIN','45','ORCHID ST','6501'),('17168388-D82DEC560','sofia.santiago@bluehillagrocorp.com','09335844455','27113365',14,'14A1','14A10','KAMUNIG','8874','SUNRISE BLVD','1103'),('17168391-048128E71','maria.garcia@verdantharvest.com','09876613842','78855641',14,'14A4','14A28','SAN LORENZO','351','GARDEN ST.','1364'),('17168397-834995D73',NULL,NULL,NULL,14,'14A1','14A11','DILIMAN','25-A','ACACIA ST.','1101'),('17168398-249F8E5E2',NULL,NULL,NULL,4,'4A2','4A54','SAN JOSE','10-B','PINE STREET','4120'),('17168401-4A5A425B5',NULL,NULL,NULL,1,'1A3','1A70','PORO','51','BEACHFRONT ST.','2500');
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
INSERT INTO `birth_cert` VALUES ('17067157-C42703E52',13,'13A1','13A8'),('17067160-9168B0E42',13,'13A4','13A39'),('17145348-0A9F081E8',11,'11A1','11A18'),('17145349-AD7D7E7A1',4,'4A2','4A51'),('17145350-7A102CB11',1,'1A1','1A2'),('17145350-F6B8793B5',1,'1A1','1A2'),('17151018-FF7F78A8E',2,'2A3','1B32'),('17151112-0F5674BD4',2,'2A3','1B30'),('17154101-DF36D2F50',15,'15A2','15A29'),('17154109-AA3C3233B',15,'15A2','15A29');
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
INSERT INTO `birth_doc_owner` VALUES ('17067157-C42703E52','MARIE','CHRISTINE',NULL,NULL,2,NULL,'PHILIPPINES',NULL),('17067160-9168B0E42','MARIE','CHRISTINE',NULL,NULL,2,NULL,'PHILIPPINES',NULL),('17145348-0A9F081E8','DELA CRUZ','JUAN','GINOO',NULL,1,'H HOSPITAL','PHILIPPINES',NULL),('17145349-AD7D7E7A1','DELA CRUZ','JUAN','GINOO',NULL,1,'H HOSPITAL','PHILIPPINES',NULL),('17145350-7A102CB11','DELA CRUZ','JUAN','GINOO',NULL,1,'H HOSPITAL','PHILIPPINES',NULL),('17145350-F6B8793B5','DELA CRUZ','JUAN','GINOO',NULL,1,'H HOSPITAL','PHILIPPINES',NULL),('17151018-FF7F78A8E','REGALIZA','LOISA','AQUINO',NULL,2,'ST.JOSEPH HOSPITAL',NULL,NULL),('17151112-0F5674BD4','DEL ROSARIO','JUANITO',NULL,NULL,1,'ROBERTO CLINIC',NULL,NULL),('17154101-DF36D2F50','LAGARAS','RUFI','PRUDENCIADO','III',1,'NAVOTAS','PHILIPPINES',NULL),('17154109-AA3C3233B','LAGARAS','RUFI','',NULL,1,'SDASD','PHILIPPINES',NULL);
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
INSERT INTO `birth_info` VALUES ('17067157-C42703E52','RL1741',NULL),('17067160-9168B0E42','RL1741',NULL),('17145348-0A9F081E8','AB7348','2024-05-14'),('17145349-AD7D7E7A1','AB7348','2024-05-15'),('17145350-7A102CB11','AB7348','2024-04-29'),('17145350-F6B8793B5','AB7348','2024-04-29'),('17151018-FF7F78A8E','MM3284','2003-05-08'),('17151112-0F5674BD4','MM3284','1995-09-15'),('17154101-DF36D2F50','RL1741','2013-05-26'),('17154109-AA3C3233B','RL1741','2024-05-15');
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
INSERT INTO `birth_requestor` VALUES ('17067157-C42703E52','MARIE','CHRISTINE','DEVINCIOS',NULL,'FA','1231231','63945473','12312312312'),('17067160-9168B0E42','MARIE','CHRISTINE','DEVINCIOS',NULL,'FA','1231231','63945473','12312312312'),('17145348-0A9F081E8','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','123123','09761793','09761793284'),('17145349-AD7D7E7A1','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','123123','09761793','09761793284'),('17145350-7A102CB11','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','123123','09761793','09761793284'),('17145350-F6B8793B5','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','123123','09761793','09761793284'),('17151018-FF7F78A8E','REGALIZA','JENDY','AQUINO',NULL,'MOTHER',NULL,NULL,'09761793284'),('17151112-0F5674BD4','DEL ROSARIO','MARIA','CRUZ',NULL,'SISTER',NULL,'34523415','09834576734'),('17154101-DF36D2F50','LAGARAS','RUFI','PRUDENCIADO','VI','OWNER',NULL,'52805283','09324234422'),('17154109-AA3C3233B','LAGARAS','RUFI','PRUDENCIADO',NULL,'OWNER',NULL,'52805283','09324234422');
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
  `bus_units_no` varchar(45) DEFAULT NULL,
  `bus_total_cap` int DEFAULT NULL,
  `transaction_id` varchar(45) NOT NULL,
  PRIMARY KEY (`activity_id`),
  KEY `fk_bus_activity` (`transaction_id`),
  CONSTRAINT `fk_bus_activity` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_activity`
--

LOCK TABLES `bus_activity` WRITE;
/*!40000 ALTER TABLE `bus_activity` DISABLE KEYS */;
INSERT INTO `bus_activity` VALUES (36,'WAREHOUSE','NEW-COMPANY',123,'MED','3',123,'17145339-60F752E0D'),(37,'MAIN OFFICE','NEW-COMPANY',123,'MED','123',2222,'17145340-F7D07A9DB'),(38,'MAIN OFFICE','NEW-COMPANY',123,'MED','123',2222,'17145342-3D2225A46'),(39,'MAIN OFFICE','NEW-COMPANY',123,'MED','123',2222,'17145344-E436EA424'),(40,'MAIN OFFICE','COMPUTER ACCESORIES',2314,'100','400',100000,'17148881-699661303'),(41,'MAIN OFFICE','AGRICULTURE',1111,'VEGETABLES, FRUITS','',100000,'17151118-C7879186F'),(42,'MAIN OFFICE','INFORMATION TECHNOLOGY',62010,' SOFTWARE DEVELOPMENT, IT CONSULTING','',2000000,'17151122-BE12A0BDA'),(43,'MAIN OFFICE','GROCERY',47111,'FRESH PRODUCE, GROCERIES, DAIRY PRODUCTS','16799',300000,'17151126-440FE827D'),(44,'MAIN OFFICE','HEALTH',1234,'MED','50',50000,'17154240-3FAE9F3D9'),(46,'BRANCH OFFICE','INFORMATION TECHNOLOGY',6201,'SOFTWARE DEVELOPMENT, IT CONSULTING','',500000,'17168333-97CFE7223'),(47,'MAIN OFFICE','TECHNOLOGY SOLUTIONS',6201,'SOFTWARE DEVELOPMENT, DATA ANALYTICS','',1000000,'17168340-7D11F2205'),(48,'MAIN OFFICE','TECHNOLOGY SOLUTIONS',6201,'WEB DEVELOPMENT, DATA SCIENCE','',750000,'17168344-84D532C14'),(49,'MAIN OFFICE','AGRIBUSINESS',1122,'ORGANIC PRODUCE, HERBS','',150000,'17168388-D82DEC560'),(50,'MAIN OFFICE','AGRICULTURAL PRODUCTS',1121,'ORGANIC VEGETABLES, EXOTIC FRUITS','1500',120000,'17168391-048128E71');
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
INSERT INTO `bus_address` VALUES ('17145339-60F752E0D',12,'12A3','12A24','BBB','F3411','BACOOR CAVITE','4123'),('17145340-F7D07A9DB',2,'2A1','1B4','BBB','F3411','BACOOR CAVITE','4123'),('17145342-3D2225A46',3,'3A2','1C12','BBB','F3411','BACOOR CAVITE','4123'),('17145344-E436EA424',2,'2A3','1B29','BBB','F3411','BACOOR CAVITE','4123'),('17148881-699661303',14,'14A3','14A25','SIPAC','22 ','FP BUILDING','1485'),('17148903-F75B993B8',8,'8A2','8A71','PINAGBUHATAN','22','BLOCK 1','1823'),('17151118-C7879186F',3,'3A5','3A72','CENTRAL','789','FARM ROAD','2000'),('17151122-BE12A0BDA',15,'15A2','15A31','BEL-AIR','792','INNOVATION STREET','5221'),('17151126-440FE827D',8,'8A2','8A64','LAHUG','5290','FRESH MARKET ST.','2395'),('17154240-3FAE9F3D9',3,'3A3','3A23','SECRET','12345','CALOOCAN ST.','3023'),('17168333-97CFE7223',9,'9A3','9A82','LITTLE SAMAR','76','MOGUTRE ST.','9882'),('17168340-7D11F2205',14,'14A2','14A19','BONI ','88','BLOCK 4','1567'),('17168344-84D532C14',15,'15A2','15A29','OCONER','25','PISK ST','6552'),('17168388-D82DEC560',4,'4A2','4A54','BUHO','1554','HILLSIDE AVENUE','4120'),('17168391-048128E71',7,'7A2','7A23','MANDALAGAN','486','ORCHARD AVENUE','6100');
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
INSERT INTO `bus_images` VALUES ('17145339-60F752E0D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17145340-F7D07A9DB',NULL,'399782389_300600122886751_6158974503976017673_n_785E3.jpg',NULL,NULL,NULL,NULL,NULL,'Capture_785E3.JPG',NULL,NULL,NULL,NULL,NULL),('17145342-3D2225A46',NULL,'F-5MrHcWwAA5yXM_785E3.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17145344-E436EA424',NULL,'3618a63db18919ec5d3c1228195c1d07_785E3.jpg',NULL,'399782389_300600122886751_6158974503976017673_n_785E3.jpg',NULL,NULL,NULL,'436187749_439845945292623_3150638842652349608_n_785E3.jpg',NULL,NULL,NULL,NULL,NULL),('17148881-699661303',NULL,'large_0E4EC.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17151118-C7879186F',NULL,'large_B034A.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17151122-BE12A0BDA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17151126-440FE827D',NULL,'large_B034A.webp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17154240-3FAE9F3D9',NULL,'Screenshot 2024-05-11 134512_2F636.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17168333-97CFE7223',NULL,'DTI_1AC5E.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17168340-7D11F2205',NULL,'DTI_1AC5E.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17168344-84D532C14',NULL,'DTI_1AC5E.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17168388-D82DEC560',NULL,'DTI_1AC5E.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17168391-048128E71',NULL,'DTI_1AC5E.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `bus_operation` VALUES ('17145339-60F752E0D','23','23','2','32','21','1','1'),('17145340-F7D07A9DB','23','23','2','32','21','1','1'),('17145342-3D2225A46','23','23','2','32','21','1','1'),('17145344-E436EA424','23','23','2','32','21','1','1'),('17148881-699661303','75','20','14','6','2','1','1'),('17148903-F75B993B8','50','10','6','4','2','1','0'),('17151118-C7879186F','500','20','15','5','5','3','2'),('17151122-BE12A0BDA','700','30','20','10','9','4','4'),('17151126-440FE827D','300','15','8','7','2','0','1'),('17154240-3FAE9F3D9','1234','50','30','20','5','3','10'),('17168333-97CFE7223','2000','25','15','10','3','2','0'),('17168340-7D11F2205','3000','30','20','10','2','1','2'),('17168344-84D532C14','2500','20','12','8','2','1','4'),('17168388-D82DEC560','700','30','20','10','6','4','3'),('17168391-048128E71','800','15','8','7','4','2','1');
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
INSERT INTO `bus_owner` VALUES ('17145339-60F752E0D','DELA CRUZ','JUAN','GINOO',NULL,1),('17145340-F7D07A9DB','DELA CRUZ','JUAN','GINOO',NULL,NULL),('17145342-3D2225A46','DELA CRUZ','JUAN','GINOO',NULL,1),('17145344-E436EA424','DELA CRUZ','JUAN','GINOO',NULL,1),('17148881-699661303','LIM','JAMES RICHARD','SANTOS',NULL,1),('17148903-F75B993B8','SMITH','EMILY','ANNE',NULL,2),('17151118-C7879186F','RODRIGUEZ','MIGUEL','ANTONIO',NULL,1),('17151122-BE12A0BDA','TONDO','FERNANDO','RUIZ',NULL,1),('17151126-440FE827D','LOPEZ','CARLOS','MIGUEL',NULL,1),('17154240-3FAE9F3D9','VERONA','ZANDRO','DONES',NULL,1),('17168333-97CFE7223','JOHNSON','SAMANTHA','MARIE',NULL,2),('17168340-7D11F2205','CHEN','EMILY','MEI',NULL,2),('17168344-84D532C14','PATEL','AARAV','NIRANJAN',NULL,1),('17168388-D82DEC560',' SANTIAGO','SOFIA','CRUZ',NULL,2),('17168391-048128E71','GARCIA','MARIA','ELENA',NULL,2);
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
INSERT INTO `bus_permit` VALUES ('17145339-60F752E0D',2,'NEW-COMPANY','ONE','2311','42','SDAS',23333,NULL),('17145340-F7D07A9DB',2,'NEW-COMPANY','ONE','2311','42',NULL,NULL,NULL),('17145342-3D2225A46',3,'NEW-COMPANY','ONE','2311','42',NULL,NULL,NULL),('17145344-E436EA424',5,'NEW-COMPANY','ONE','2311','42',NULL,NULL,NULL),('17148881-699661303',1,'ALTUS DIGITAL','COMPUCENTER RETAIL INC.','124515633122','6544234561','LORDFEL MARKETING',75000,NULL),('17148903-F75B993B8',1,'SMITH\'S TECH SOLUTIONS','AA','98765432','24523434534',NULL,NULL,NULL),('17151118-C7879186F',3,'GREENLEAF FARMING CO.',NULL,'7890','9876',NULL,NULL,NULL),('17151122-BE12A0BDA',4,'TECH INNOVATIONS INC.','TECH INNOVATIONS','4534','3453',NULL,NULL,NULL),('17151126-440FE827D',1,'FRESH HARVEST GROCERY STORE','FRESH HARVEST','2345','3425','LESLIES',9000,NULL),('17154240-3FAE9F3D9',3,'ANGELA BURGER','CRAB HOUSE','23473289493','6456854734232',NULL,NULL,'OWNED'),('17168333-97CFE7223',3,'BRIGHTSTAR TECHNOLOGIES','LIMITED LIABILITY COMPANY (LLC)','253278906645','1526388655675',NULL,NULL,'OWNED'),('17168340-7D11F2205',4,'STELLAR SOLUTIONS INC.',NULL,'003020052203','00203240250020',NULL,NULL,'OWNED'),('17168344-84D532C14',3,'QUANTUMTECH INNOVATIONS LLC','LIMITED LIABILITY COMPANY (LLC)','8812002331035','0098980700062',NULL,NULL,'OWNED'),('17168388-D82DEC560',4,'BLUEHILL AGROCORP','GREEN HARVEST','88001230010411','01010401200501112',NULL,NULL,'OWNED'),('17168391-048128E71',1,'VERDANT HARVEST AGRO ENTERPRISES','NATURE\'S BOUNTY','24832234200234','1357004200522',NULL,NULL,'OWNED');
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
INSERT INTO `cedula_cert` VALUES ('17067155-0BCA24CF2',8,'8A2','8A62',NULL),('17145345-23A048D6E',14,'14A1','14A14','2024-04-30'),('17145346-0757583CD',7,'7A3','7A49','2024-05-22'),('17145346-FC8212179',7,'7A3','7A49','2024-05-22'),('17145347-613DA1196',2,'2A2','1B22','2024-05-18'),('17150914-AC6FDE6AC',6,'6A3','6A24',NULL),('17150927-C10A77508',14,'14A3','14A26',NULL),('17150948-4C5F38DDC',12,'12A4','12A36','2024-05-23'),('17150954-96D423905',6,'6A3','6A22','2025-05-01'),('17150982-67E0C7A82',16,'16A2','16A14',NULL),('17150986-3432EDD1F',14,'14A2','14A18','2024-11-26'),('17150990-7572A208F',3,'3A3','3A21',NULL),('17150994-D2ECD9E46',12,'12A2','12A17','2024-08-28'),('17155884-69CF0EE8D',13,'13A1','13A4','2024-04-30'),('17155884-A3E81F486',13,'13A1','13A4','2024-04-30'),('17155884-F1311286A',13,'13A1','13A4','2024-04-30'),('17168351-93EEE6F79',9,'9A2','9A54','2024-05-21'),('17168397-834995D73',14,'14A1','14A11','2025-06-15'),('17168398-249F8E5E2',4,'4A2','4A54','2024-05-23'),('17168401-4A5A425B5',1,'1A3','1A70','2025-07-31');
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
  `sex_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_cedula_doc_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_doc_owner`
--

LOCK TABLES `cedula_doc_owner` WRITE;
/*!40000 ALTER TABLE `cedula_doc_owner` DISABLE KEYS */;
INSERT INTO `cedula_doc_owner` VALUES ('17067155-0BCA24CF2','LAGARAS','RUFI','PRUDENCIADO',NULL,NULL),('17145345-23A048D6E','DELA CRUZ','JUAN','GINOO',NULL,1),('17145346-0757583CD','DELA CRUZ','JUAN','GINOO',NULL,1),('17145346-FC8212179','DELA CRUZ','JUAN','GINOO',NULL,1),('17145347-613DA1196','DELA CRUZ','JUAN','GINOO',NULL,1),('17150914-AC6FDE6AC','SUCAL','JAYBEE',NULL,'Jr.',1),('17150927-C10A77508','LIM','HENRY','SY','III',1),('17150948-4C5F38DDC','TOLEDO','JUSTINE','MERCADO',NULL,1),('17150954-96D423905','LEGASPI','JOMAR','LABAY',NULL,1),('17150982-67E0C7A82','HONG','JASMINE','MENDOZA',NULL,2),('17150986-3432EDD1F','LOPEZ','CHRISTINE','YABUT',NULL,2),('17150990-7572A208F','CUPCUPIN','JASON','YU',NULL,1),('17150994-D2ECD9E46','LORENZO','RODEL','MERCADO','II',1),('17155884-69CF0EE8D','DELA CRUZ','JUAN','GINOO',NULL,1),('17155884-A3E81F486','DELA CRUZ','JUAN','GINOO',NULL,1),('17155884-F1311286A','DELA CRUZ','JUAN','GINOO',NULL,1),('17168351-93EEE6F79','SANTIAGO','SOFIA','ISABELA',NULL,2),('17168397-834995D73','SANTOS','CARLA','REYES',NULL,2),('17168398-249F8E5E2','CRUZ','ATONIO','SANTOS',NULL,1),('17168401-4A5A425B5','MARTINEZ','ALEJANDRO','REYES','Jr.',1);
/*!40000 ALTER TABLE `cedula_doc_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cedula_images`
--

DROP TABLE IF EXISTS `cedula_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cedula_images` (
  `transaction_id` varchar(45) NOT NULL,
  `ctc_attachment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cedula_images`
--

LOCK TABLES `cedula_images` WRITE;
/*!40000 ALTER TABLE `cedula_images` DISABLE KEYS */;
INSERT INTO `cedula_images` VALUES ('17156655-027125AE6','Screenshot 2024-05-11 134512_72F9A.png'),('17168351-93EEE6F79','id_04CBA.jpg'),('17168397-834995D73',NULL),('17168398-249F8E5E2','id_04CBA.jpg'),('17168401-4A5A425B5',NULL);
/*!40000 ALTER TABLE `cedula_images` ENABLE KEYS */;
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
  `height` varchar(45) DEFAULT NULL,
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
INSERT INTO `cedula_other_info` VALUES ('17067155-0BCA24CF2',NULL,'PHILIPPINES',NULL,NULL,NULL),('17145345-23A048D6E',1,'MONTENEGRO','21',21,'213'),('17145346-0757583CD',2,'MAURITIUS','213',21,'213'),('17145346-FC8212179',2,'MAURITIUS','213',21,'213'),('17145347-613DA1196',2,'MAURITANIA','213',21,'213'),('17150914-AC6FDE6AC',1,'PHILIPPINES','6',55,NULL),('17150927-C10A77508',2,'CHINA','5',NULL,''),('17150948-4C5F38DDC',3,'BURKINA FASO','5\'67',70,NULL),('17150954-96D423905',1,'PHILIPPINES','5\'6',54,NULL),('17150982-67E0C7A82',4,'PHILIPPINES','5\'8',65,NULL),('17150986-3432EDD1F',2,'PHILIPPINES','5\'11',75,NULL),('17150990-7572A208F',1,'PHILIPPINES','6\'01',80,NULL),('17150994-D2ECD9E46',3,'PHILIPPINES','5\'6',55,NULL),('17155884-69CF0EE8D',2,'MONACO','213',231,'213'),('17155884-A3E81F486',2,'MONACO','213',231,'213'),('17155884-F1311286A',2,'MONACO','213',231,'213'),('17168351-93EEE6F79',1,'PHILIPPINES','177',65,NULL),('17168397-834995D73',2,'PHILIPPINES','165',55,NULL),('17168398-249F8E5E2',4,'PHILIPPINES','170',60,NULL),('17168401-4A5A425B5',2,'PHILIPPINES','166',70,NULL);
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
INSERT INTO `cedula_transaction_info` VALUES ('17067155-0BCA24CF2',NULL,NULL,NULL,NULL,2000,'50000',54544),('17145345-23A048D6E','EMPLOYEE_FULLTIME','3123','4','ACTUARY',2313,'11111',23231),('17145346-0757583CD','EMPLOYEE_FULLTIME','3123','2','AEROSPACE_ENGINEER',213123,'3443',3434),('17145346-FC8212179','EMPLOYEE_FULLTIME','3123','2','AEROSPACE_ENGINEER',213123,'3443',3434),('17145347-613DA1196','EMPLOYEE_PARTTIME','3123','3','CUSTOMER_SUPPORT_REPRESENTATIVE',2313,'1323',3123123),('17150914-AC6FDE6AC','EMPLOYEE_PARTTIME',NULL,'9','VENDOR',5500,'4500',1100),('17150927-C10A77508','EMPLOYEE_FULLTIME','552339235','5','SOFTWARE_ENGINEER',140000,'80000',200000),('17150948-4C5F38DDC','EMPLOYEE_FULLTIME',NULL,'4','ANIMATOR',0,'8000',35000),('17150954-96D423905','EMPLOYEE_FULLTIME','555673477','10','CALL_CENTER_AGENT',0,'60000',30000),('17150982-67E0C7A82','EMPLOYEE_PARTTIME',NULL,'2','ACCOUNTANT',5000,'21000',45000),('17150986-3432EDD1F','EMPLOYEE_FULLTIME','67458834677','6','BRAND_MANAGER',10000,'5000',5000),('17150990-7572A208F','EMPLOYEE_PARTTIME',NULL,'4','VENDOR',20000,'40000',100000),('17150994-D2ECD9E46','EMPLOYEE_FULLTIME','9974678976','11','INVESTMENT_BANKER',20500,'20000',30000),('17155884-69CF0EE8D','EMPLOYEE FULLTIME','3123','46','ACTUARY',213123,'231231',1323),('17155884-A3E81F486','EMPLOYEE FULLTIME','3123','46','ACTUARY',213123,'231231',1323),('17155884-F1311286A','EMPLOYEE FULLTIME','3123','46','ACTUARY',213123,'231231',1323),('17168351-93EEE6F79','UNEMPLOYED',NULL,'51','STUDENT',15000,'1000',10000),('17168397-834995D73','EMPLOYED','9866475124','53','GRAPHIC DESIGNER',25000,'60000',75000),('17168398-249F8E5E2','UNEMPLOYED',NULL,'51','STUDENT',15000,'2400',2500),('17168401-4A5A425B5','EMPLOYED','998820054065','53','SALES MANAGER',40000,'80000',0);
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
INSERT INTO `consent_info` VALUES ('17067150-90AEBB82F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('17145355-1E1E84373','JUAN','GINOO','DELA CRUZ',NULL,NULL,'FATHER','09761793284','09761793'),('17145355-2FB8C70FB','JUAN','GINOO','DELA CRUZ',NULL,NULL,'FATHER','09761793284','09761793'),('17145357-85C1B1F7E','JUAN','GINOO','DELA CRUZ',NULL,NULL,'FATHER','09761793284','09761793'),('17145358-603E4657B','JUAN','GINOO','DELA CRUZ','Jr.',NULL,'FATHER','09761793284','09761793'),('17151155-F13FF9189','LHEMERY','SEVILLA','SANTOS','',NULL,'WIFE','09573827590','90786098'),('17151157-3D9091FAC','MARISSA','GAZA','CARPIO',NULL,NULL,'WIFE','09234576823','98234597'),('17151158-0297CC7CA','PAOLO','TORRES','BASA',NULL,NULL,'HUSBAND','09367238467','27935782');
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
INSERT INTO `death_cert` VALUES ('17145351-8C9AB9A1E',13,'13A2','13A20','2024-05-06'),('17145352-4170AD6D4',11,'11A1','11A22','2024-05-01'),('17145352-F2A26E9D1',6,'6A2','6A10','2024-04-29'),('17145353-EF6777C22',2,'2A3','1B45','2024-05-06'),('17150998-932273BCB',13,'13A2','13A24','2024-12-03'),('17151130-11F6C233D',14,'14A2','14A21','2008-05-21'),('17151132-150A096E1',6,'6A2','6A11','2008-03-05'),('17151136-8F0763E86',2,'2A4','1B69','2017-11-11'),('17151138-0B626C9CD',3,'3A3','3A6','2021-07-08'),('17151149-4E65B41E3',3,'3A2','1C12','2020-02-19');
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
  `sex_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  CONSTRAINT `fk_death_doc_owner` FOREIGN KEY (`transaction_id`) REFERENCES `user_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `death_doc_owner`
--

LOCK TABLES `death_doc_owner` WRITE;
/*!40000 ALTER TABLE `death_doc_owner` DISABLE KEYS */;
INSERT INTO `death_doc_owner` VALUES ('17145351-8C9AB9A1E','DELA CRUZ','JUAN','GINOO',NULL,1),('17145352-4170AD6D4','DELA CRUZ','JUAN','GINOO',NULL,1),('17145352-F2A26E9D1','DELA CRUZ','JUAN','GINOO',NULL,1),('17145353-EF6777C22','DELA CRUZ','JUAN','GINOO',NULL,1),('17150998-932273BCB','REGALADO','ROMEO','CRUZ',NULL,1),('17151130-11F6C233D','RAMIREZ','MARIA',NULL,NULL,2),('17151132-150A096E1','SANTOS','JAMES','RELOS',NULL,1),('17151136-8F0763E86','CALAS','MERELYN','YU',NULL,2),('17151138-0B626C9CD','THORNE','ELOWEN',NULL,NULL,2),('17151149-4E65B41E3','VICTO','NICHOLE','DOSE',NULL,2);
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
INSERT INTO `death_requestor` VALUES ('17145351-8C9AB9A1E','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','09761793284',NULL),('17145352-4170AD6D4','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','09761793284',NULL),('17145352-F2A26E9D1','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','09761793284',NULL),('17145353-EF6777C22','DELA CRUZ','JUAN','GINOO',NULL,'FATHER','09761793284',NULL),('17150998-932273BCB','REGALADO','CRIS','JAMES',NULL,'SON','09234585324',NULL),('17151130-11F6C233D','RAMIREZ','JUAN',NULL,NULL,'HUSBAND','09592893479','47628501'),('17151132-150A096E1','SANTOS','MARILYN','TORE',NULL,'WIFE','09588349258',NULL),('17151136-8F0763E86','CALAS','JOSEPH','NUNES',NULL,'SON','09548763986','34498609'),('17151138-0B626C9CD','THORNE','LISA',NULL,'II','DAUGHTER','09234786987','63563413'),('17151149-4E65B41E3','VICTO','NICHOLE','DOSE','','DAUGHTER','09213969023','90832740');
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
INSERT INTO `father_info` VALUES ('17067157-C42703E52','RUFI','PRUDENCIADO','LAGARAS',NULL,NULL),('17067160-9168B0E42','RUFI','PRUDENCIADO','LAGARAS',NULL,NULL),('17145348-0A9F081E8','JUAN','GINOO','DELA CRUZ','IV',NULL),('17145349-AD7D7E7A1','JUAN','GINOO','DELA CRUZ',NULL,NULL),('17145350-7A102CB11','JUAN','GINOO','DELA CRUZ',NULL,NULL),('17145350-F6B8793B5','JUAN','GINOO','DELA CRUZ',NULL,NULL),('17151018-FF7F78A8E','MAVIRICK','LOPEZ','REGALIZA',NULL,NULL),('17151112-0F5674BD4','PEDRO','SANTOS','DEL ROSARIO',NULL,NULL),('17154101-DF36D2F50','CHRISTINE','LUNA','MARIE','VIII',NULL),('17154109-AA3C3233B','CHRISTINE','LUNA','MARIE',NULL,NULL);
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
INSERT INTO `husband_info` VALUES ('17067150-90AEBB82F','RUFI','PRUDENCIADO','LAGARAS',NULL),('17145355-1E1E84373','ONE',NULL,'LOPEZ','III'),('17145355-2FB8C70FB','ONE',NULL,'LOPEZ',NULL),('17145357-85C1B1F7E','JUAN','GINOO','SDADAS',NULL),('17145358-603E4657B','JUAN','GINOO','SDASDA',NULL),('17151155-F13FF9189','KEAN','PEREZ','SANTOS',NULL),('17151157-3D9091FAC','ROBERTO','RUIZ','CARPIO',NULL),('17151158-0297CC7CA','PAOLO','TORRES','BASA',NULL);
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
INSERT INTO `marriage_cert` VALUES ('17067150-90AEBB82F',12,'12A5','12A43','2024-01-01'),('17145355-1E1E84373',10,'10A2','10A41','2024-04-30'),('17145355-2FB8C70FB',13,'13A1','13A15','2024-04-29'),('17145357-85C1B1F7E',14,'14A2','14A18','2024-05-13'),('17145358-603E4657B',2,'2A1','1B2','2024-05-06'),('17151155-F13FF9189',3,'3A4','3A48','2021-02-11'),('17151157-3D9091FAC',3,'3A7','3A100','2020-12-28'),('17151158-0297CC7CA',3,'3A4','3A47','2019-02-14');
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
INSERT INTO `mother_info` VALUES ('17019936-51C07D067',NULL,NULL,NULL,NULL,NULL),('17026944-2E7CC2786',NULL,NULL,NULL,NULL,NULL),('17026976-F39895B8C',NULL,NULL,NULL,NULL,NULL),('17026979-70D8E665C',NULL,NULL,NULL,NULL,NULL),('17043787-50D6C472F','MILES','DAA','LUNA',NULL,NULL),('17067157-C42703E52','CHRISTINE','PRUDENCIADO','MARIE',NULL,NULL),('17067160-9168B0E42','CHRISTINE','PRUDENCIADO','MARIE',NULL,NULL),('17145348-0A9F081E8','TRI',NULL,'CRUZ','IV',NULL),('17145349-AD7D7E7A1','TRI',NULL,'CRUZ',NULL,NULL),('17145350-7A102CB11','TRI',NULL,'CRUZ',NULL,NULL),('17145350-F6B8793B5','TRI',NULL,'CRUZ',NULL,NULL),('17151018-FF7F78A8E','JENDY','AQUINO','REGALIZA',NULL,NULL),('17151112-0F5674BD4','MARIA','CRUZ','DEL ROSARIO',NULL,NULL),('17154101-DF36D2F50','JAMES','RUIZ','BOND','X',NULL),('17154109-AA3C3233B','JAMES','RUIZ','BOND',NULL,NULL);
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
-- Table structure for table `reject_cause`
--

DROP TABLE IF EXISTS `reject_cause`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reject_cause` (
  `rejected_id` int NOT NULL,
  `reject_cause` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rejected_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reject_cause`
--

LOCK TABLES `reject_cause` WRITE;
/*!40000 ALTER TABLE `reject_cause` DISABLE KEYS */;
INSERT INTO `reject_cause` VALUES (1,'Incorrect or incomplete documentation submitted'),(2,'Failure to adhere to specific procedural requirements'),(3,'Inconsistent or conflicting details in the submitted paperwork'),(4,'Non-compliance with City Hall regulations'),(5,'No records found');
/*!40000 ALTER TABLE `reject_cause` ENABLE KEYS */;
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
INSERT INTO `rptax_clearance` VALUES ('17144685-1B0F0AE3C','AS-23123-12312','231-23-123-123-123'),('17144685-20DDE22E7','AS-23123-12312','231-23-123-123-123'),('17144685-332D5C080','AS-23123-12312','231-23-123-123-123'),('17145333-A948ADA68','HJ-353','325-11-111-111-1'),('17145334-635261AB9','TR-33333','325-11-111-111-1'),('17145334-FD1005C6F','TW-21111-1222','222-22-222-222'),('17145335-635CB1ECD','FR-44444','444-44-444-44'),('17151140-9E372112B','AA-12456-34634','123-12-415-523-566'),('17151141-3DC68974B','AV-35231-67996','356-47-904-674-623'),('17151141-8C87AA5F4','AA-41255-11245','856-74-384-568-243'),('17151146-9D03E3724','AS-34235-236','548-45-685-678-567'),('17151147-F30A72087','TR-34525-23423','005-70-450-400-800'),('17151151-AFE101ECF','AS-45532-23234','003-40-056-002-304'),('17151152-E142B500A','TT-23871-95120','032-40-025-602-030');
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
INSERT INTO `rptax_payment` VALUES ('17144825-7984EEDDA','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',15,'1st Quarter'),('17144850-65E76806D','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',13,'1st Quarter'),('17144898-F2C18157A','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',13,'1st Quarter'),('17144900-DBDC4C3DD','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',16,'1st Quarter'),('17144903-84523DF62','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',17,'1st Quarter'),('17144907-26B306D2D','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',16,'1st Quarter'),('17144911-D33BD4B62','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',14,'1st Quarter'),('17144914-C37BF73ED','ATANACIO DEVINZ III GASPAR BASA','AS-23123-12312','231-23-123-123-123',16,'1st Quarter'),('17145327-0DDA46EEB','ONE LOPEZ','WR-23123','325-11-111-111-1',7,'2nd Quarter'),('17145333-B7873D52B','FOURTH PEDRO','FR-44444','444-44-444-44',1,'4th Quarter'),('17148828-48E25D917','ATANACIO DEVINZ BASA III','AS-23543-53453','345-34-534-534-534',2,'4th Quarter'),('17151143-9F9EFF48D','PRESTO MECUSIO','AF-35234-25623','638-45-905-756-565',1,'1st Quarter'),('17151144-5B9F680A9','LHEMS SEVILLA','AS-24159-00213','032-40-234-023-402',1,'1st Quarter'),('17151153-1C123B4F8','PRIMO CRUZ ','TY-39001-23011','124-52-312-451-616',1,'1st Quarter'),('17151160-979C11CB7','RAMOS REGIE','AS-23463-45345','677-90-867-867-867',2,'4th Quarter');
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
-- Table structure for table `soa_data`
--

DROP TABLE IF EXISTS `soa_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soa_data` (
  `soa_no` varchar(255) NOT NULL,
  `transaction_id` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `date_processed` varchar(45) DEFAULT NULL,
  `expiry_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`soa_no`),
  UNIQUE KEY `soa_no_UNIQUE` (`soa_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soa_data`
--

LOCK TABLES `soa_data` WRITE;
/*!40000 ALTER TABLE `soa_data` DISABLE KEYS */;
INSERT INTO `soa_data` VALUES ('030-1741-0514-0156-1505','17155884-69CF0EE8D','RL1741','2024-05-27 17:33:04','2024-05-31 23:59:59'),('030-1741-0528-3659-6604','17155884-A3E81F486','RL1741','2024-05-27 17:33:04','2024-05-31 23:59:59'),('030-1741-0528-6967-0956','17155884-F1311286A','RL1741','2024-05-27 17:33:04','2024-05-31 23:59:59'),('040-1741-0528-2430-1895','17154101-DF36D2F50','RL1741','2024-05-27 17:33:04','2024-05-31 23:59:59');
/*!40000 ALTER TABLE `soa_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_info`
--

DROP TABLE IF EXISTS `transaction_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_info` (
  `transaction_id` varchar(255) NOT NULL,
  `amount` int DEFAULT NULL,
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
INSERT INTO `transaction_info` VALUES ('17067150-90AEBB82F',1000,2,2,4,3),('17067155-0BCA24CF2',1500,NULL,NULL,NULL,NULL),('17067157-C42703E52',450,4,3,4,2),('17067160-9168B0E42',250,4,1,4,NULL),('17144685-1B0F0AE3C',650,NULL,NULL,NULL,NULL),('17144685-20DDE22E7',700,NULL,NULL,NULL,NULL),('17144685-332D5C080',800,NULL,NULL,NULL,NULL),('17144825-7984EEDDA',2000,NULL,NULL,NULL,NULL),('17144850-65E76806D',1000,NULL,NULL,NULL,NULL),('17144898-F2C18157A',1000,NULL,NULL,NULL,NULL),('17144900-DBDC4C3DD',1000,NULL,NULL,NULL,NULL),('17144903-84523DF62',1250,NULL,NULL,NULL,NULL),('17144907-26B306D2D',1000,NULL,NULL,NULL,NULL),('17144911-D33BD4B62',1000,NULL,NULL,NULL,NULL),('17144914-C37BF73ED',1212,NULL,NULL,NULL,NULL),('17145327-0DDA46EEB',1500,NULL,NULL,NULL,NULL),('17145333-A948ADA68',1200,NULL,NULL,NULL,NULL),('17145333-B7873D52B',400,NULL,NULL,NULL,NULL),('17145334-635261AB9',1000,NULL,NULL,NULL,NULL),('17145334-FD1005C6F',600,NULL,NULL,NULL,NULL),('17145335-635CB1ECD',700,NULL,NULL,NULL,NULL),('17145339-60F752E0D',200,3,1,3,1),('17145340-F7D07A9DB',350,3,3,3,3),('17145342-3D2225A46',450,8,2,4,2),('17145344-E436EA424',200,3,1,4,2),('17145345-23A048D6E',500,NULL,NULL,4,NULL),('17145346-0757583CD',263,NULL,NULL,2,NULL),('17145346-FC8212179',263,NULL,NULL,2,NULL),('17145347-613DA1196',800,NULL,NULL,3,NULL),('17145348-0A9F081E8',100,2,2,4,2),('17145349-AD7D7E7A1',2500,2,1,9,3),('17145350-7A102CB11',200,3,1,2,2),('17145350-F6B8793B5',200,3,1,2,2),('17145351-8C9AB9A1E',750,2,2,4,1),('17145352-4170AD6D4',200,3,2,4,1),('17145352-F2A26E9D1',200,3,2,9,1),('17145353-EF6777C22',350,3,3,6,3),('17145355-1E1E84373',200,3,2,3,2),('17145355-2FB8C70FB',250,4,2,3,1),('17145357-85C1B1F7E',950,9,3,4,2),('17145358-603E4657B',250,2,1,3,1),('17148828-48E25D917',750,NULL,NULL,NULL,NULL),('17148881-699661303',250,2,3,1,1),('17148903-F75B993B8',300,5,1,3,4),('17150914-AC6FDE6AC',26,NULL,NULL,9,NULL),('17150927-C10A77508',504,NULL,NULL,5,NULL),('17150948-4C5F38DDC',52,NULL,NULL,4,NULL),('17150954-96D423905',108,NULL,NULL,10,NULL),('17150982-67E0C7A82',85,NULL,NULL,2,NULL),('17150986-3432EDD1F',24,NULL,NULL,6,NULL),('17150990-7572A208F',192,NULL,NULL,4,NULL),('17150994-D2ECD9E46',85,NULL,NULL,11,NULL),('17150998-932273BCB',400,7,2,5,2),('17151018-FF7F78A8E',300,5,1,10,3),('17151112-0F5674BD4',450,4,3,9,3),('17151118-C7879186F',550,5,3,5,1),('17151122-BE12A0BDA',350,3,3,3,2),('17151126-440FE827D',1050,10,3,3,3),('17151130-11F6C233D',350,6,2,3,2),('17151132-150A096E1',450,4,3,3,3),('17151136-8F0763E86',250,4,1,9,2),('17151138-0B626C9CD',350,6,1,5,1),('17151140-9E372112B',100,NULL,NULL,NULL,NULL),('17151141-3DC68974B',100,NULL,NULL,NULL,NULL),('17151141-8C87AA5F4',100,NULL,NULL,NULL,NULL),('17151143-9F9EFF48D',1500,NULL,NULL,NULL,NULL),('17151144-5B9F680A9',700,NULL,NULL,NULL,NULL),('17151146-9D03E3724',100,NULL,NULL,NULL,NULL),('17151147-F30A72087',100,NULL,NULL,NULL,NULL),('17151149-4E65B41E3',250,4,2,4,2),('17151151-AFE101ECF',100,NULL,NULL,NULL,NULL),('17151152-E142B500A',100,NULL,NULL,NULL,NULL),('17151153-1C123B4F8',600,NULL,NULL,NULL,NULL),('17151155-F13FF9189',450,4,3,9,2),('17151157-3D9091FAC',450,8,1,4,1),('17151158-0297CC7CA',200,3,1,7,2),('17151160-979C11CB7',1500,NULL,NULL,NULL,NULL),('17154101-DF36D2F50',450,8,2,8,2),('17154109-AA3C3233B',365,6,2,8,2),('17154240-3FAE9F3D9',200,3,1,4,2),('17155884-69CF0EE8D',465,NULL,NULL,46,NULL),('17155884-A3E81F486',465,NULL,NULL,46,NULL),('17155884-F1311286A',465,NULL,NULL,46,NULL),('17168333-97CFE7223',0,NULL,NULL,10,NULL),('17168340-7D11F2205',0,NULL,NULL,6,NULL),('17168344-84D532C14',0,NULL,NULL,3,NULL),('17168351-93EEE6F79',46,NULL,NULL,51,NULL),('17168388-D82DEC560',0,NULL,NULL,6,NULL),('17168391-048128E71',0,NULL,NULL,1,NULL),('17168397-834995D73',180,NULL,NULL,53,NULL),('17168398-249F8E5E2',40,NULL,NULL,51,NULL),('17168401-4A5A425B5',140,NULL,NULL,5,NULL);
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
INSERT INTO `user_auth` VALUES ('9754137348','basa','AB7348'),('9636163980','torres','DT3980'),('9233376652','alvarez','JA1381'),('9756184906','dones','JD4906'),('9381676352','luna','ML6352'),('9761793284','$2b$10$HAQOyMgWDNPtW/8OdNFhu.TwpkmZOluKNDTEfUx6ovgcz2iDMuWV.','MM3284'),('9770210586','maghirang','PM0586'),('9454731741','$2b$10$BHwM60TY6PLTpVWW7n9P7uqPRqm7gXcmA3rKcXGg4YHtc4dLJ8lQm','RL1741');
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
INSERT INTO `user_birth` VALUES ('AB7348','2001-12-16','PASAY'),('DT3980','2001-10-19','BULACAN'),('JA1381','2001-06-12','NAVOTAS'),('JD4906','2001-08-01','PASAY'),('ML6352','2001-05-11','CAVITE'),('MM3284','2001-11-26','NAVOTAS'),('PM0586','2002-07-14','MAKATI'),('RL1741','2002-02-17','NAVOTAS');
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
INSERT INTO `user_contact` VALUES ('AB7348','atanaciobasa9@gmail.com','09754137348','',14,'14A4','14A31','BLK 76 LOT 18','10 TH 21ST','VILLAMOR AIR BASE, BRGY 183','1309'),('DT3980','daani.torresjr@gmail.com','09636163980','',14,'14A3','14A25','Blk 31 Lot 46 Phase 2 Area 2','Maya Maya St','NBBS','1486'),('JA1381','jeremiahpaul612@gmail.com','09233376652','83760708',14,'14A3','14A25',' Blk 14 Lot 21,','Bisugo Street','NBBS Kaunlaran','1409'),('JD4906','jmdones08@gmail.com','09944322442','',14,'14A4','14A27','1451','Durian Street','BF International Village','1740'),('ML6352','milesjohnluna@gmail.com','09381676352','',4,'4A2','4A37','Lot 6','Blk f','Molino','4102'),('MM3284','mhandee26.matis@gmail.com','09761793284','',14,'14A3','14A25','1026','A. Ignacio St.','Daanghari','1485'),('PM0586','adrianpaolomaghirang@gmail.com','09946755682',NULL,14,'14A4','14A28','5205','Fahrenheit Street','Barangay Palanan','1235'),('RL1741','ruficarllagaras@gmail.com','09944880923','',3,'3A3','3A23','99 99','TOWERVILLE','GAYA GAYA','3023');
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
INSERT INTO `user_gov_id` VALUES ('AB7348','847-593-210','7263-4819-2054','45-678901-2345','78-9012345-6','94361582027','2001-789012-2'),('DT3980','364-182-759','1839-5047-2613','12-345678-9012','90-1234567-8','17843290659','2001-456789-5'),('JA1381','920-475-836','5072-6138-4920','98-765432-1098','11-2345678-9','50693412785','2001-890123-7'),('JD4906','158-739-204','9124-8365-7014','56-789012-3456','22-3456789-0','82069354718','2001-234567-8'),('ML6352','476-839-512','6152-9384-7102','34-567890-1234','33-4567890-1','43871290655','2001-123456-1'),('MM3284','385-920-671','8401-9273-6451','67-890123-4567','44-5678901-2','71258934602','2001-543210-3'),('PM0586','567-890-123','4682-7150-3984','01-2345678-9','12-3456789-0','36580194276','2002-876543-4'),('RL1741','504-183-297','2910-5643-8720','23-456789-0123','55-6789012-3','69274138015','2002-678901-9');
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
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_image` FOREIGN KEY (`user_id`) REFERENCES `user_reg` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_image`
--

LOCK TABLES `user_image` WRITE;
/*!40000 ALTER TABLE `user_image` DISABLE KEYS */;
INSERT INTO `user_image` VALUES ('RL1741','IMG_20240112_225213_RL1741.jpg','https://lh3.googleusercontent.com/a/ACg8ocK7Xa6XyvldB64hjeUUy2RTopgAtseaC-F6DNt-KPSZxH11onRP=s96-c');
/*!40000 ALTER TABLE `user_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notif`
--

DROP TABLE IF EXISTS `user_notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notif` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `is_read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notif`
--

LOCK TABLES `user_notif` WRITE;
/*!40000 ALTER TABLE `user_notif` DISABLE KEYS */;
INSERT INTO `user_notif` VALUES (8,'RL1741','2024-01-24 15:20:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Birth Certificate: 17060808-030AFDF35</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(9,'RL1741','2024-01-24 15:22:57','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Birth Certificate: 17060809-279EF104D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(10,'RL1741','2024-01-24 15:24:11','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Birth Certificate: 17060810-D6B90046D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(11,'RL1741','2024-01-24 15:25:12','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Birth Certificate: 17060811-177994277</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(12,'RL1741','2024-01-24 15:28:51','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Death Certificate: 17060813-50F46CAB7</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 250</span>.</p>',1),(13,'RL1741','2024-01-24 15:32:50','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Marriage Certificate: 17060815-474DB27B8</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 250</span>.</p>',1),(14,'RL1741','2024-01-24 15:34:24','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clerance: 17060816-69CC5135E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(15,'RL1741','2024-01-26 16:47:29','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clerance: 17062588-2E71758E9</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(16,'RL1741','2024-01-27 12:43:18','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-semibold dark:text-white\">P 100</span> for <span className=\"font-semibold dark:text-white\">17047805-D5F839C39</span> has been successfully received. Please await further updates.</p>',1),(17,'RL1741','2024-01-27 12:43:21','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-semibold dark:text-white\">P 100</span> for <span className=\"font-semibold dark:text-white\">17047805-D5F839C39</span> has been successfully received. Please await further updates.</p>',1),(18,'RL1741','2024-01-27 12:44:31','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-semibold dark:text-white\">P 100</span> for <span className=\"font-semibold dark:text-white\">17062588-2E71758E9</span> has been successfully received. Please await further updates.</p>',1),(19,'RL1741','2024-01-27 12:47:58','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-semibold dark:text-white\">P 100</span> for <span className=\"font-semibold dark:text-white\">17060816-69CC5135E</span> has been successfully received. Please await further updates.</p>',1),(20,'RL1741','2024-01-27 15:14:40','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 100</span>.</p>',1),(21,'RL1741','2024-01-27 15:16:20','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> is currently undergoing processing.</p>',1),(22,'RL1741','2024-01-27 15:17:02','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Payment: 17060365-A07F9A322</span> is currently undergoing processing.</p>',1),(23,'RL1741','2024-01-27 15:24:53','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> is currently undergoing processing.</p>',1),(24,'RL1741','2024-01-27 15:29:07','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> is currently undergoing processing.</p>',1),(25,'RL1741','2024-01-27 15:54:12','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> is currently undergoing processing.</p>',1),(26,'RL1741','2024-01-27 15:55:25','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> is currently undergoing processing.</p>',1),(27,'RL1741','2024-01-27 16:03:04','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17060816-69CC5135E</span> is currently undergoing processing.</p>',1),(28,'RL1741','2024-01-27 16:07:22','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> is currently undergoing processing.</p>',1),(29,'RL1741','2024-01-27 16:07:34','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(30,'RL1741','2024-01-27 16:10:14','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17062588-2E71758E9</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(31,'RL1741','2024-01-27 16:10:40','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> is currently undergoing processing.</p>',1),(32,'RL1741','2024-01-27 16:33:14','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',1),(33,'RL1741','2024-01-27 16:33:25','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(34,'RL1741','2024-01-27 16:34:02','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(35,'RL1741','2024-01-27 16:34:07','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',1),(36,'RL1741','2024-01-27 16:42:33','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Payment: 17060365-A07F9A322</span> is currently undergoing processing.</p>',1),(37,'RL1741','2024-01-27 16:42:51','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17060816-69CC5135E</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(38,'RL1741','2024-01-27 16:44:03','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(39,'RL1741','2024-01-27 16:51:10','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> has been <span className=\"font-semibold dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',1),(40,'RL1741','2024-01-27 16:52:29','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> is currently undergoing processing.</p>',1),(41,'RL1741','2024-01-28 00:43:25','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Payment: 17063738-D07BAED28</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-semibold dark:text-white\">P 1000</span>.</p>',0),(42,'RL1741','2024-01-28 13:17:55','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> is currently undergoing processing.</p>',0),(43,'RL1741','2024-01-28 20:50:44','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-3DC6065C8</span> is currently undergoing processing.</p>',0),(44,'RL1741','2024-01-28 21:40:00','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">undefined: 17047830-4DB8D3625</span> is currently undergoing processing.</p>',0),(45,'RL1741','2024-01-28 21:40:18','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">undefined: 17047835-742F92DC9</span> is currently undergoing processing.</p>',0),(46,'RL1741','2024-01-28 21:40:29','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">undefined: 17047835-742F92DC9</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(47,'RL1741','2024-01-28 21:40:40','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">undefined: 17047830-4DB8D3625</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(48,'RL1741','2024-01-28 21:51:19','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">undefined: 17047830-4DB8D3625</span> is currently undergoing processing.</p>',0),(49,'RL1741','2024-01-28 21:54:13','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">undefined: 17047830-4DB8D3625</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(50,'RL1741','2024-01-28 22:21:12','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Community Tax Certificate: 17047884-AFA5CB3FE</span> is currently undergoing processing.</p>',0),(51,'RL1741','2024-01-28 22:21:54','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Community Tax Certificate: 17047884-AFA5CB3FE</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(52,'RL1741','2024-01-28 22:23:53','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> is currently undergoing processing.</p>',0),(53,'RL1741','2024-01-28 22:24:10','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-semibold dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> has been marked <span className=\"font-semibold dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(54,'RL1741','2024-01-29 20:07:21','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17047892-91FE1980D</span> is currently undergoing processing.</p>',0),(55,'RL1741','2024-01-29 20:08:09','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17048093-2136D88EA</span> is currently undergoing processing.</p>',0),(56,'RL1741','2024-01-29 20:08:15','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17048020-AD3785399</span> is currently undergoing processing.</p>',0),(57,'RL1741','2024-01-29 20:10:18','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17048020-AD3785399</span> has been marked <span className=\"font-medium dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(58,'RL1741','2024-01-29 20:11:18','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17048093-2136D88EA</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(59,'RL1741','2024-01-31 21:49:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17067089-61D076A13</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 180</span>.</p>',0),(60,'RL1741','2024-01-31 22:06:20','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17067099-F2E90B631</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(61,'RL1741','2024-01-31 22:07:33','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17067100-BA2BA1196</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(62,'RL1741','2024-01-31 22:11:20','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17067102-2182A7F9D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(63,'RL1741','2024-01-31 22:11:34','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17067102-E1CDBA8DA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(64,'RL1741','2024-01-31 22:44:08','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17067122-6DB14270B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 269</span>.</p>',0),(65,'RL1741','2024-01-31 22:44:51','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17067122-A2D474EF9</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 262</span>.</p>',0),(66,'RL1741','2024-01-31 22:45:45','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17067123-13D8A4C62</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 118</span>.</p>',0),(67,'RL1741','2024-01-31 22:56:33','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17067129-698DF960E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 650</span>.</p>',0),(68,'RL1741','2024-01-31 23:02:46','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067133-69B15FF5C</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(69,'RL1741','2024-01-31 23:03:31','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067134-806BD0ABC</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(70,'RL1741','2024-01-31 23:04:15','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067134-0B3D5F712</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 550</span>.</p>',0),(71,'RL1741','2024-01-31 23:05:24','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067135-4D6F8BDEF</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 750</span>.</p>',0),(72,'RL1741','2024-01-31 23:06:04','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067135-94A1639B3</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(73,'RL1741','2024-01-31 23:07:03','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067136-FC4DD5063</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(74,'RL1741','2024-01-31 23:07:46','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17067136-245A13BBE</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 550</span>.</p>',0),(75,'RL1741','2024-01-31 23:28:23','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17067149-1555A4FDA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(76,'RL1741','2024-01-31 23:30:17','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17067150-90AEBB82F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 150</span>.</p>',0),(77,'RL1741','2024-01-31 23:38:19','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17067154-32D5BB009</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(78,'RL1741','2024-01-31 23:39:09','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17067155-0BCA24CF2</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 128</span>.</p>',0),(79,'RL1741','2024-01-31 23:41:59','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17067157-C42703E52</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(80,'RL1741','2024-01-31 23:45:00','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17067159-9C7AD77A3</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 300</span>.</p>',0),(81,'RL1741','2024-01-31 23:46:37','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17067159-4AA0BB300</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(82,'RL1741','2024-01-31 23:47:06','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17067160-000072AE5</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 150</span>.</p>',0),(83,'RL1741','2024-01-31 23:47:36','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17067160-9168B0E42</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(84,'RL1741','2024-01-31 23:49:00','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17067161-2DA2F3C5A</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 128</span>.</p>',0),(85,'RL1741','2024-01-31 23:49:22','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17067161-FD6C97889</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(86,'RL1741','2024-01-31 23:49:51','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17067161-2EC9B5542</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(87,'RL1741','2024-01-31 23:50:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17067162-B2A3A9FA8</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(88,'RL1741','2024-02-01 14:35:24','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17067693-B676A15C6</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 10000</span>.</p>',0),(89,'RL1741','2024-02-01 14:46:30','Successfully change your password!','</span> Congratulations! Your password change request has been successfully processed. </p>',0),(90,'RL1741','2024-02-01 16:02:00','Verification Successful!','</span> We\'re excited to inform you that your account verification process has been successfully approved!  </p>',0),(91,'RL1741','2024-02-01 16:03:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17067745-E12F53EB6</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 50000</span>.</p>',0),(92,'RL1741','2024-02-01 16:07:21','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> is currently undergoing processing.</p>',0),(93,'RL1741','2024-02-01 16:07:31','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(94,'RL1741','2024-02-01 16:09:35','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 10000</span> for <span className=\"font-medium dark:text-white\">17067693-B676A15C6</span> has been successfully received. Please await further updates.</p>',0),(95,'JM1338','2024-02-05 23:25:09','Welcome, MATIS!','</span> Congratulations! Your registration with Centralized Manila was successful, and we\'re glad to welcome you to our platform. <span className=\"font-medium dark:text-white\"></span>.</p>',0),(96,'JM1338','2024-02-05 23:27:58','Welcome, MATIS!','</span> Congratulations! Your registration with Centralized Manila was successful, and we\'re glad to welcome you to our platform. <span className=\"font-medium dark:text-white\"></span>.</p>',0),(97,'RL1741','2024-02-06 00:30:40','Successfully changed your password!','</span> Congratulations! Your password has been successfully changed. </p>',0),(98,'RU0628','2024-02-06 00:55:28','Welcome','</span> Congratulations! Your registration with Centralized Manila was successful, and we\'re glad to welcome you to our platform. <span className=\"font-medium dark:text-white\"></span>.</p>',0),(99,'JM1338','2024-02-06 18:47:30','Welcome, MATIS!','</span> Congratulations! Your registration with Centralized Manila was successful, and we\'re glad to welcome you to our platform. <span className=\"font-medium dark:text-white\"></span>.</p>',0),(100,'RL1741','2024-02-09 19:55:24','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17074797-EACBF51E5</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(101,'RL1741','2024-04-22 11:18:52','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 350</span> for <span className=\"font-medium dark:text-white\">17074797-EACBF51E5</span> has been successfully received. Please await further updates.</p>',0),(102,'RL1741','2024-04-22 13:08:24','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(103,'RL1741','2024-04-22 13:48:46','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17047822-0CDA67EC9</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(104,'RL1741','2024-04-28 21:32:20','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17067159-4AA0BB300</span> has been successfully received. Please await further updates.</p>',0),(105,'RL1741','2024-04-28 21:37:32','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17143114-9FEA54256</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 2312</span>.</p>',0),(106,'RL1741','2024-04-28 21:38:20','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 2312</span> for <span className=\"font-medium dark:text-white\">17143114-9FEA54256</span> has been successfully received. Please await further updates.</p>',0),(107,'RL1741','2024-04-28 21:42:08','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17143117-6F3452925</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(108,'RL1741','2024-04-28 21:43:51','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17143117-6F3452925</span> has been successfully received. Please await further updates.</p>',0),(109,'RL1741','2024-04-28 22:20:28','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17143140-C5721A26C</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1000</span>.</p>',0),(110,'RL1741','2024-04-28 22:21:50','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1000</span> for <span className=\"font-medium dark:text-white\">17143140-C5721A26C</span> has been successfully received. Please await further updates.</p>',0),(111,'RL1741','2024-04-28 22:22:10','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17143141-71FF67DDD</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(112,'RL1741','2024-04-29 22:16:31','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17143141-71FF67DDD</span> has been successfully received. Please await further updates.</p>',0),(113,'RL1741','2024-04-29 22:17:11','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17144002-4FB19F076</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(114,'RL1741','2024-04-29 22:27:02','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17144002-4FB19F076</span> has been successfully received. Please await further updates.</p>',0),(115,'RL1741','2024-04-29 22:39:47','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 300</span> for <span className=\"font-medium dark:text-white\">17067159-9C7AD77A3</span> has been successfully received. Please await further updates.</p>',0),(116,'RL1741','2024-04-29 23:41:17','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 450</span> for <span className=\"font-medium dark:text-white\">17067157-C42703E52</span> has been successfully received. Please await further updates.</p>',0),(117,'RL1741','2024-04-30 00:22:14','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 128</span> for <span className=\"font-medium dark:text-white\">17067155-0BCA24CF2</span> has been successfully received. Please await further updates.</p>',0),(118,'RL1741','2024-04-30 16:17:15','Transaction Undergoing Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-3DC6065C8</span> is currently undergoing processing.</p>',0),(119,'RL1741','2024-04-30 16:17:35','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(120,'RL1741','2024-04-30 17:00:28','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(121,'RL1741','2024-04-30 17:01:04','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17060816-69CC5135E</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(122,'RL1741','2024-04-30 17:04:51','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17062588-2E71758E9</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(123,'RL1741','2024-04-30 17:05:09','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067099-F2E90B631</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(124,'RL1741','2024-04-30 17:06:37','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067102-2182A7F9D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(125,'RL1741','2024-04-30 17:09:04','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067159-4AA0BB300</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(126,'RL1741','2024-04-30 17:09:47','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17144002-4FB19F076</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(127,'RL1741','2024-04-30 17:11:52','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060336-B8C4FFA87</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(128,'RL1741','2024-04-30 17:12:30','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060351-CD42CF215</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(129,'RL1741','2024-04-30 17:14:09','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060352-69D88DA34</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(130,'RL1741','2024-04-30 17:15:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17144685-332D5C080</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(131,'RL1741','2024-04-30 17:15:18','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17144685-20DDE22E7</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(132,'RL1741','2024-04-30 17:15:25','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17144685-1B0F0AE3C</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(133,'RL1741','2024-04-30 17:22:43','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17143141-71FF67DDD</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(134,'RL1741','2024-04-30 17:23:49','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17143117-6F3452925</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(135,'RL1741','2024-04-30 17:24:34','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067100-BA2BA1196</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(136,'RL1741','2024-04-30 17:27:22','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060352-592681310</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(137,'RL1741','2024-04-30 17:28:28','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060338-69A32281D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(138,'RL1741','2024-04-30 17:31:18','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060358-6A1599961</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(139,'RL1741','2024-04-30 17:32:38','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067102-E1CDBA8DA</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(140,'RL1741','2024-04-30 17:32:59','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060338-123C1B616</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(141,'RL1741','2024-04-30 17:34:35','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17063738-D07BAED28</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(142,'RL1741','2024-04-30 17:37:02','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060365-A07F9A322</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(143,'RL1741','2024-04-30 17:42:14','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17067089-61D076A13</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(144,'RL1741','2024-04-30 17:42:35','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17143114-9FEA54256</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(145,'RL1741','2024-04-30 17:44:15','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17143140-C5721A26C</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(146,'RL1741','2024-04-30 17:48:53','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17144685-1B0F0AE3C</span> has been successfully received. Please await further updates.</p>',0),(147,'RL1741','2024-04-30 17:49:59','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(148,'RL1741','2024-04-30 17:51:35','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(149,'RL1741','2024-04-30 17:52:54','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17144685-20DDE22E7</span> has been successfully received. Please await further updates.</p>',0),(150,'RL1741','2024-04-30 17:53:37','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17144685-20DDE22E7</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(151,'RL1741','2024-04-30 17:54:59','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(152,'RL1741','2024-04-30 18:00:17','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(153,'RL1741','2024-04-30 18:00:32','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17062588-2E71758E9</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(154,'RL1741','2024-04-30 18:00:58','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17144685-332D5C080</span> has been successfully received. Please await further updates.</p>',0),(155,'RL1741','2024-04-30 18:01:21','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17060816-69CC5135E</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(156,'RL1741','2024-04-30 21:09:47','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144825-7984EEDDA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 2000</span>.</p>',0),(157,'RL1741','2024-04-30 21:12:41','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 2000</span> for <span className=\"font-medium dark:text-white\">17144825-7984EEDDA</span> has been successfully received. Please await further updates.</p>',0),(158,'RL1741','2024-04-30 21:14:37','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144825-7984EEDDA</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(159,'RL1741','2024-04-30 21:32:42','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067099-F2E90B631</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(160,'RL1741','2024-04-30 21:33:02','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067100-BA2BA1196</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(161,'RL1741','2024-04-30 21:45:30','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067102-2182A7F9D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(162,'RL1741','2024-04-30 21:51:36','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144850-65E76806D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1000</span>.</p>',0),(163,'RL1741','2024-04-30 21:52:45','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1000</span> for <span className=\"font-medium dark:text-white\">17144850-65E76806D</span> has been successfully received. Please await further updates.</p>',0),(164,'RL1741','2024-04-30 21:56:33','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144850-65E76806D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(165,'RL1741','2024-04-30 22:00:18','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067102-E1CDBA8DA</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(166,'RL1741','2024-04-30 22:08:40','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17067159-4AA0BB300</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(167,'RL1741','2024-04-30 22:09:04','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17143117-6F3452925</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(168,'RL1741','2024-04-30 22:10:43','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17143141-71FF67DDD</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(169,'RL1741','2024-04-30 22:11:12','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17144002-4FB19F076</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(170,'RL1741','2024-04-30 22:13:05','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060336-B8C4FFA87</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(171,'RL1741','2024-04-30 22:13:22','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060338-123C1B616</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(172,'RL1741','2024-04-30 22:13:42','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060338-69A32281D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(173,'RL1741','2024-04-30 22:14:04','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060351-CD42CF215</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(174,'RL1741','2024-04-30 22:18:35','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060352-592681310</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(175,'RL1741','2024-04-30 22:27:12','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060352-69D88DA34</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(176,'RL1741','2024-04-30 22:29:45','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060358-6A1599961</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(177,'RL1741','2024-04-30 22:31:34','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17060365-A07F9A322</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(178,'RL1741','2024-04-30 22:31:56','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17063738-D07BAED28</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(179,'RL1741','2024-04-30 22:41:07','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17067089-61D076A13</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(180,'RL1741','2024-04-30 22:47:53','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17143114-9FEA54256</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(181,'RL1741','2024-04-30 22:48:12','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17143140-C5721A26C</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(182,'RL1741','2024-04-30 22:59:03','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-1D3838B47</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(183,'RL1741','2024-04-30 23:04:14','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-3474DC7CB</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(184,'RL1741','2024-04-30 23:04:44','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-6B01D0F65</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(185,'RL1741','2024-04-30 23:05:19','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clearance: 17047805-D5F839C39</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(186,'RL1741','2024-04-30 23:11:28','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144898-F2C18157A</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1000</span>.</p>',0),(187,'RL1741','2024-04-30 23:11:59','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1000</span> for <span className=\"font-medium dark:text-white\">17144898-F2C18157A</span> has been successfully received. Please await further updates.</p>',0),(188,'RL1741','2024-04-30 23:12:45','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144898-F2C18157A</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(189,'RL1741','2024-04-30 23:13:21','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144900-A1FC8D5C0</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 10000000</span>.</p>',0),(190,'RL1741','2024-04-30 23:14:21','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144900-DBDC4C3DD</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1000</span>.</p>',0),(191,'RL1741','2024-04-30 23:14:57','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1000</span> for <span className=\"font-medium dark:text-white\">17144900-DBDC4C3DD</span> has been successfully received. Please await further updates.</p>',0),(192,'RL1741','2024-04-30 23:15:29','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144900-DBDC4C3DD</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(193,'RL1741','2024-04-30 23:19:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144903-84523DF62</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1250</span>.</p>',0),(194,'RL1741','2024-04-30 23:19:44','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1250</span> for <span className=\"font-medium dark:text-white\">17144903-84523DF62</span> has been successfully received. Please await further updates.</p>',0),(195,'RL1741','2024-04-30 23:20:12','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144903-84523DF62</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(196,'RL1741','2024-04-30 23:23:00','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144905-915C04F7D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 16230</span>.</p>',0),(197,'RL1741','2024-04-30 23:23:43','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 16230</span> for <span className=\"font-medium dark:text-white\">17144905-915C04F7D</span> has been successfully received. Please await further updates.</p>',0),(198,'RL1741','2024-04-30 23:24:03','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144905-915C04F7D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(199,'RL1741','2024-04-30 23:25:30','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144907-26B306D2D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1000</span>.</p>',0),(200,'RL1741','2024-04-30 23:27:36','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1000</span> for <span className=\"font-medium dark:text-white\">17144907-26B306D2D</span> has been successfully received. Please await further updates.</p>',0),(201,'RL1741','2024-04-30 23:29:37','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144907-26B306D2D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(202,'RL1741','2024-04-30 23:32:52','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144911-D33BD4B62</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1000</span>.</p>',0),(203,'RL1741','2024-04-30 23:34:38','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1000</span> for <span className=\"font-medium dark:text-white\">17144911-D33BD4B62</span> has been successfully received. Please await further updates.</p>',0),(204,'RL1741','2024-04-30 23:35:43','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144911-D33BD4B62</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(205,'RL1741','2024-04-30 23:37:42','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144914-C37BF73ED</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1212</span>.</p>',0),(206,'RL1741','2024-04-30 23:38:08','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1212</span> for <span className=\"font-medium dark:text-white\">17144914-C37BF73ED</span> has been successfully received. Please await further updates.</p>',0),(207,'RL1741','2024-04-30 23:38:28','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144914-C37BF73ED</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(208,'RL1741','2024-04-30 23:45:02','Transaction Rejected','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17144850-65E76806D</span> has been <span className=\"font-medium dark:text-white\">REJECTED</span>. Kindly view the transaction for possible causes of rejection.</p>',0),(209,'AB7348','2024-05-01 11:05:15','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17145327-FACA2E3B0</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100000</span>.</p>',0),(210,'AB7348','2024-05-01 11:05:21','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17145327-55DFB745C</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100000</span>.</p>',0),(211,'AB7348','2024-05-01 11:06:26','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17145327-0DDA46EEB</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 10000</span>.</p>',0),(212,'AB7348','2024-05-01 11:11:08','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 10000</span> for <span className=\"font-medium dark:text-white\">17145327-0DDA46EEB</span> has been successfully received. Please await further updates.</p>',0),(213,'AB7348','2024-05-01 11:12:18','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17145331-61582BEE4</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 222222</span>.</p>',0),(214,'AB7348','2024-05-01 11:13:16','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 222222</span> for <span className=\"font-medium dark:text-white\">17145331-61582BEE4</span> has been successfully received. Please await further updates.</p>',0),(215,'AB7348','2024-05-01 11:13:51','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17145332-D5994EFCA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 43333</span>.</p>',0),(216,'AB7348','2024-05-01 11:14:23','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 43333</span> for <span className=\"font-medium dark:text-white\">17145332-D5994EFCA</span> has been successfully received. Please await further updates.</p>',0),(217,'AB7348','2024-05-01 11:15:10','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17145333-B7873D52B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 400</span>.</p>',0),(218,'AB7348','2024-05-01 11:15:41','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 400</span> for <span className=\"font-medium dark:text-white\">17145333-B7873D52B</span> has been successfully received. Please await further updates.</p>',0),(219,'AB7348','2024-05-01 11:16:03','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17145333-A948ADA68</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(220,'AB7348','2024-05-01 11:16:29','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17145333-A948ADA68</span> has been successfully received. Please await further updates.</p>',0),(221,'AB7348','2024-05-01 11:16:52','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17145334-F74FF94C1</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(222,'AB7348','2024-05-01 11:17:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17145334-079FE1D7A</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(223,'AB7348','2024-05-01 11:17:20','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17145334-FD1005C6F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(224,'AB7348','2024-05-01 11:17:51','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17145334-FD1005C6F</span> has been successfully received. Please await further updates.</p>',0),(225,'AB7348','2024-05-01 11:18:13','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17145334-635261AB9</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(226,'AB7348','2024-05-01 11:18:44','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17145334-635261AB9</span> has been successfully received. Please await further updates.</p>',0),(227,'AB7348','2024-05-01 11:19:02','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17145335-635CB1ECD</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(228,'AB7348','2024-05-01 11:19:28','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17145335-635CB1ECD</span> has been successfully received. Please await further updates.</p>',0),(229,'AB7348','2024-05-01 11:25:18','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17145339-567A7A911</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(230,'AB7348','2024-05-01 11:25:38','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17145339-9F3689173</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(231,'AB7348','2024-05-01 11:25:45','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17145339-60F752E0D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(232,'AB7348','2024-05-01 11:26:26','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145339-60F752E0D</span> has been successfully received. Please await further updates.</p>',0),(233,'AB7348','2024-05-01 11:27:28','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17145340-F7D07A9DB</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(234,'AB7348','2024-05-01 11:29:31','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 350</span> for <span className=\"font-medium dark:text-white\">17145340-F7D07A9DB</span> has been successfully received. Please await further updates.</p>',0),(235,'AB7348','2024-05-01 11:31:13','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17145342-3D2225A46</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(236,'AB7348','2024-05-01 11:31:43','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 450</span> for <span className=\"font-medium dark:text-white\">17145342-3D2225A46</span> has been successfully received. Please await further updates.</p>',0),(237,'AB7348','2024-05-01 11:34:46','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17145344-E436EA424</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(238,'AB7348','2024-05-01 11:35:23','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145344-E436EA424</span> has been successfully received. Please await further updates.</p>',0),(239,'AB7348','2024-05-01 11:36:34','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17145345-23A048D6E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 43</span>.</p>',0),(240,'AB7348','2024-05-01 11:37:00','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 43</span> for <span className=\"font-medium dark:text-white\">17145345-23A048D6E</span> has been successfully received. Please await further updates.</p>',0),(241,'AB7348','2024-05-01 11:37:41','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17145346-FC8212179</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 263</span>.</p>',0),(242,'AB7348','2024-05-01 11:37:50','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17145346-0757583CD</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 263</span>.</p>',0),(243,'AB7348','2024-05-01 11:38:18','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 263</span> for <span className=\"font-medium dark:text-white\">17145346-0757583CD</span> has been successfully received. Please await further updates.</p>',0),(244,'AB7348','2024-05-01 11:38:46','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 263</span> for <span className=\"font-medium dark:text-white\">17145346-FC8212179</span> has been successfully received. Please await further updates.</p>',0),(245,'AB7348','2024-05-01 11:39:24','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17145347-613DA1196</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 3751</span>.</p>',0),(246,'AB7348','2024-05-01 11:39:51','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 3751</span> for <span className=\"font-medium dark:text-white\">17145347-613DA1196</span> has been successfully received. Please await further updates.</p>',0),(247,'AB7348','2024-05-01 11:40:53','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17145348-0A9F081E8</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 150</span>.</p>',0),(248,'AB7348','2024-05-01 11:41:20','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 150</span> for <span className=\"font-medium dark:text-white\">17145348-0A9F081E8</span> has been successfully received. Please await further updates.</p>',0),(249,'AB7348','2024-05-01 11:41:57','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17145349-AD7D7E7A1</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 150</span>.</p>',0),(250,'AB7348','2024-05-01 11:42:24','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 150</span> for <span className=\"font-medium dark:text-white\">17145349-AD7D7E7A1</span> has been successfully received. Please await further updates.</p>',0),(251,'AB7348','2024-05-01 11:44:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17145350-F6B8793B5</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(252,'AB7348','2024-05-01 11:44:08','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17145350-7A102CB11</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(253,'AB7348','2024-05-01 11:44:39','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145350-F6B8793B5</span> has been successfully received. Please await further updates.</p>',0),(254,'AB7348','2024-05-01 11:45:04','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145350-7A102CB11</span> has been successfully received. Please await further updates.</p>',0),(255,'AB7348','2024-05-01 11:45:48','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17145351-8C9AB9A1E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 150</span>.</p>',0),(256,'AB7348','2024-05-01 11:46:18','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 150</span> for <span className=\"font-medium dark:text-white\">17145351-8C9AB9A1E</span> has been successfully received. Please await further updates.</p>',0),(257,'AB7348','2024-05-01 11:46:49','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17145352-4170AD6D4</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(258,'AB7348','2024-05-01 11:47:15','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145352-4170AD6D4</span> has been successfully received. Please await further updates.</p>',0),(259,'AB7348','2024-05-01 11:47:47','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17145352-F2A26E9D1</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(260,'AB7348','2024-05-01 11:48:52','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145352-F2A26E9D1</span> has been successfully received. Please await further updates.</p>',0),(261,'AB7348','2024-05-01 11:49:25','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17145353-EF6777C22</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(262,'AB7348','2024-05-01 11:49:51','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 350</span> for <span className=\"font-medium dark:text-white\">17145353-EF6777C22</span> has been successfully received. Please await further updates.</p>',0),(263,'AB7348','2024-05-01 11:51:41','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17145355-1E1E84373</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(264,'AB7348','2024-05-01 11:52:10','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17145355-1E1E84373</span> has been successfully received. Please await further updates.</p>',0),(265,'AB7348','2024-05-01 11:52:58','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17145355-2FB8C70FB</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(266,'AB7348','2024-05-01 11:53:44','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 250</span> for <span className=\"font-medium dark:text-white\">17145355-2FB8C70FB</span> has been successfully received. Please await further updates.</p>',0),(267,'AB7348','2024-05-01 11:55:20','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17145357-85C1B1F7E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 950</span>.</p>',0),(268,'AB7348','2024-05-01 11:55:45','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 950</span> for <span className=\"font-medium dark:text-white\">17145357-85C1B1F7E</span> has been successfully received. Please await further updates.</p>',0),(269,'AB7348','2024-05-01 11:57:30','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17145358-603E4657B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 150</span>.</p>',0),(270,'AB7348','2024-05-01 11:58:04','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 150</span> for <span className=\"font-medium dark:text-white\">17145358-603E4657B</span> has been successfully received. Please await further updates.</p>',0),(271,'RL1741','2024-05-05 12:20:45','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17148828-48E25D917</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 750</span>.</p>',0),(272,'RL1741','2024-05-05 12:23:54','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 750</span> for <span className=\"font-medium dark:text-white\">17148828-48E25D917</span> has been successfully received. Please await further updates.</p>',0),(273,'RL1741','2024-05-05 13:49:06','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17148881-699661303</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(274,'RL1741','2024-05-05 13:49:51','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 250</span> for <span className=\"font-medium dark:text-white\">17148881-699661303</span> has been successfully received. Please await further updates.</p>',0),(275,'RL1741','2024-05-05 14:26:19','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17148903-F75B993B8</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 300</span>.</p>',0),(276,'MM3284','2024-05-07 21:33:17','Verification Successful!','</span> We\'re excited to inform you that your account verification process has been successfully approved!  </p>',0),(277,'MM3284','2024-05-07 22:18:17','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150914-AC6FDE6AC</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 14</span>.</p>',0),(278,'MM3284','2024-05-07 22:19:59','Transaction Canceled','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150914-8A0B73EAB</span> has been <span className=\"font-medium dark:text-white\">CANCELED</span>.</p>',0),(279,'MM3284','2024-05-07 22:20:07','Transaction Canceled','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150914-51FF17EB0</span> has been <span className=\"font-medium dark:text-white\">CANCELED</span>.</p>',0),(280,'MM3284','2024-05-07 22:24:09','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 26</span> for <span className=\"font-medium dark:text-white\">17150914-AC6FDE6AC</span> has been successfully received. Please await further updates.</p>',0),(281,'MM3284','2024-05-07 22:38:22','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150927-C10A77508</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 504</span>.</p>',0),(282,'MM3284','2024-05-07 22:39:26','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 504</span> for <span className=\"font-medium dark:text-white\">17150927-C10A77508</span> has been successfully received. Please await further updates.</p>',0),(283,'MM3284','2024-05-07 23:14:17','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150948-4C5F38DDC</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 52</span>.</p>',0),(284,'MM3284','2024-05-07 23:15:01','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 52</span> for <span className=\"font-medium dark:text-white\">17150948-4C5F38DDC</span> has been successfully received. Please await further updates.</p>',0),(285,'MM3284','2024-05-07 23:24:47','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150954-96D423905</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 108</span>.</p>',0),(286,'MM3284','2024-05-07 23:25:30','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 108</span> for <span className=\"font-medium dark:text-white\">17150954-96D423905</span> has been successfully received. Please await further updates.</p>',0),(287,'MM3284','2024-05-08 00:10:35','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150982-67E0C7A82</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 85</span>.</p>',0),(288,'MM3284','2024-05-08 00:11:30','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 85</span> for <span className=\"font-medium dark:text-white\">17150982-67E0C7A82</span> has been successfully received. Please await further updates.</p>',0),(289,'MM3284','2024-05-08 00:16:42','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150986-3432EDD1F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 24</span>.</p>',0),(290,'MM3284','2024-05-08 00:19:56','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 24</span> for <span className=\"font-medium dark:text-white\">17150986-3432EDD1F</span> has been successfully received. Please await further updates.</p>',0),(291,'MM3284','2024-05-08 00:23:33','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150990-7572A208F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 192</span>.</p>',0),(292,'MM3284','2024-05-08 00:25:05','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 192</span> for <span className=\"font-medium dark:text-white\">17150990-7572A208F</span> has been successfully received. Please await further updates.</p>',0),(293,'MM3284','2024-05-08 00:30:29','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17150994-D2ECD9E46</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 85</span>.</p>',0),(294,'MM3284','2024-05-08 00:31:24','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 85</span> for <span className=\"font-medium dark:text-white\">17150994-D2ECD9E46</span> has been successfully received. Please await further updates.</p>',0),(295,'MM3284','2024-05-08 00:38:19','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17150998-932273BCB</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 400</span>.</p>',0),(296,'MM3284','2024-05-08 00:39:22','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 400</span> for <span className=\"font-medium dark:text-white\">17150998-932273BCB</span> has been successfully received. Please await further updates.</p>',0),(297,'MM3284','2024-05-08 01:11:03','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17151018-FF7F78A8E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 300</span>.</p>',0),(298,'MM3284','2024-05-08 01:13:11','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 300</span> for <span className=\"font-medium dark:text-white\">17151018-FF7F78A8E</span> has been successfully received. Please await further updates.</p>',0),(299,'MM3284','2024-05-08 03:47:44','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17151112-0F5674BD4</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(300,'MM3284','2024-05-08 03:48:49','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 450</span> for <span className=\"font-medium dark:text-white\">17151112-0F5674BD4</span> has been successfully received. Please await further updates.</p>',0),(301,'MM3284','2024-05-08 03:58:19','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17151118-C7879186F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 550</span>.</p>',0),(302,'MM3284','2024-05-08 03:59:15','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 550</span> for <span className=\"font-medium dark:text-white\">17151118-C7879186F</span> has been successfully received. Please await further updates.</p>',0),(303,'MM3284','2024-05-08 04:04:48','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17151122-BE12A0BDA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(304,'MM3284','2024-05-08 04:05:41','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 350</span> for <span className=\"font-medium dark:text-white\">17151122-BE12A0BDA</span> has been successfully received. Please await further updates.</p>',0),(305,'MM3284','2024-05-08 04:11:29','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17151126-440FE827D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1050</span>.</p>',0),(306,'MM3284','2024-05-08 04:12:15','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1050</span> for <span className=\"font-medium dark:text-white\">17151126-440FE827D</span> has been successfully received. Please await further updates.</p>',0),(307,'MM3284','2024-05-08 04:18:04','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17151130-11F6C233D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(308,'MM3284','2024-05-08 04:18:53','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 350</span> for <span className=\"font-medium dark:text-white\">17151130-11F6C233D</span> has been successfully received. Please await further updates.</p>',0),(309,'MM3284','2024-05-08 04:21:02','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17151132-150A096E1</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(310,'MM3284','2024-05-08 04:21:50','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 450</span> for <span className=\"font-medium dark:text-white\">17151132-150A096E1</span> has been successfully received. Please await further updates.</p>',0),(311,'MM3284','2024-05-08 04:26:47','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17151136-8F0763E86</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(312,'MM3284','2024-05-08 04:27:33','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 250</span> for <span className=\"font-medium dark:text-white\">17151136-8F0763E86</span> has been successfully received. Please await further updates.</p>',0),(313,'MM3284','2024-05-08 04:31:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17151138-0B626C9CD</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 350</span>.</p>',0),(314,'MM3284','2024-05-08 04:32:02','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 350</span> for <span className=\"font-medium dark:text-white\">17151138-0B626C9CD</span> has been successfully received. Please await further updates.</p>',0),(315,'MM3284','2024-05-08 04:34:11','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151140-9E372112B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(316,'MM3284','2024-05-08 04:34:45','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151140-9E372112B</span> has been successfully received. Please await further updates.</p>',0),(317,'MM3284','2024-05-08 04:35:06','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151141-8C87AA5F4</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(318,'MM3284','2024-05-08 04:35:38','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151141-8C87AA5F4</span> has been successfully received. Please await further updates.</p>',0),(319,'MM3284','2024-05-08 04:36:12','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151141-3DC68974B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(320,'MM3284','2024-05-08 04:36:49','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151141-3DC68974B</span> has been successfully received. Please await further updates.</p>',0),(321,'MM3284','2024-05-08 04:38:35','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17151143-9F9EFF48D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1500</span>.</p>',0),(322,'MM3284','2024-05-08 04:39:41','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1500</span> for <span className=\"font-medium dark:text-white\">17151143-9F9EFF48D</span> has been successfully received. Please await further updates.</p>',0),(323,'MM3284','2024-05-08 04:40:25','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17151144-5B9F680A9</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 2000</span>.</p>',0),(324,'MM3284','2024-05-08 04:41:03','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 2000</span> for <span className=\"font-medium dark:text-white\">17151144-5B9F680A9</span> has been successfully received. Please await further updates.</p>',0),(325,'MM3284','2024-05-08 04:44:17','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151146-9D03E3724</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(326,'MM3284','2024-05-08 04:44:53','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151146-9D03E3724</span> has been successfully received. Please await further updates.</p>',0),(327,'MM3284','2024-05-08 04:45:20','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151147-F30A72087</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(328,'MM3284','2024-05-08 04:46:00','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151147-F30A72087</span> has been successfully received. Please await further updates.</p>',0),(329,'MM3284','2024-05-08 04:49:47','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Death Certificate: 17151149-4E65B41E3</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 250</span>.</p>',0),(330,'MM3284','2024-05-08 04:50:55','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 250</span> for <span className=\"font-medium dark:text-white\">17151149-4E65B41E3</span> has been successfully received. Please await further updates.</p>',0),(331,'MM3284','2024-05-08 04:52:26','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151151-AFE101ECF</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(332,'MM3284','2024-05-08 04:53:02','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151151-AFE101ECF</span> has been successfully received. Please await further updates.</p>',0),(333,'MM3284','2024-05-08 04:53:20','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Clerance: 17151152-E142B500A</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 100</span>.</p>',0),(334,'MM3284','2024-05-08 04:54:01','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 100</span> for <span className=\"font-medium dark:text-white\">17151152-E142B500A</span> has been successfully received. Please await further updates.</p>',0),(335,'MM3284','2024-05-08 04:55:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17151153-1C123B4F8</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 600</span>.</p>',0),(336,'MM3284','2024-05-08 04:56:03','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 600</span> for <span className=\"font-medium dark:text-white\">17151153-1C123B4F8</span> has been successfully received. Please await further updates.</p>',0),(337,'MM3284','2024-05-08 04:59:30','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17151155-F13FF9189</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(338,'MM3284','2024-05-08 05:00:00','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 450</span> for <span className=\"font-medium dark:text-white\">17151155-F13FF9189</span> has been successfully received. Please await further updates.</p>',0),(339,'MM3284','2024-05-08 05:01:55','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17151157-3D9091FAC</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(340,'MM3284','2024-05-08 05:02:46','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 450</span> for <span className=\"font-medium dark:text-white\">17151157-3D9091FAC</span> has been successfully received. Please await further updates.</p>',0),(341,'MM3284','2024-05-08 05:04:36','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Marriage Certificate: 17151158-0297CC7CA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 200</span>.</p>',0),(342,'MM3284','2024-05-08 05:05:09','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17151158-0297CC7CA</span> has been successfully received. Please await further updates.</p>',0),(343,'MM3284','2024-05-08 05:07:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Real Property Tax Payment: 17151160-979C11CB7</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 1500</span>.</p>',0),(344,'MM3284','2024-05-08 05:07:50','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 1500</span> for <span className=\"font-medium dark:text-white\">17151160-979C11CB7</span> has been successfully received. Please await further updates.</p>',0),(345,'RL1741','2024-05-11 14:49:49','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17154101-DF36D2F50</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 450</span>.</p>',0),(346,'RL1741','2024-05-11 15:02:11','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Birth Certificate: 17154109-AA3C3233B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 365</span>.</p>',0),(347,'RL1741','2024-05-11 15:03:31','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 365</span> for <span className=\"font-medium dark:text-white\">17154109-AA3C3233B</span> has been successfully received. Please await further updates.</p>',0),(348,'RL1741','2024-05-11 18:41:08','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154240-3FAE9F3D9</span> is currently being processed.</span></p>',0),(349,'RL1741','2024-05-11 22:34:28','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> is currently being processed.</span></p>',0),(350,'RL1741','2024-05-11 22:53:22','Transaction Undergoing Processing For Amount Declaration','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> is currently undergoing processing for amount declaration.</p>',0),(351,'RL1741','2024-05-11 22:55:36','Transaction Undergoing Processing For Amount Declaration','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> is currently undergoing processing for amount declaration.</p>',0),(352,'RL1741','2024-05-11 22:57:58','Transaction Undergoing Processing For Amount Declaration','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> is currently undergoing processing for amount declaration.</p>',0),(353,'RL1741','2024-05-11 23:00:32','Transaction Undergoing Processing For Amount Declaration','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> is currently undergoing processing for amount declaration.</p>',0),(354,'RL1741','2024-05-11 23:03:06','Transaction Undergoing Processing For Amount Declaration','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> is currently undergoing processing for amount declaration.</p>',0),(355,'RL1741','2024-05-11 23:07:49','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 200</span> for <span className=\"font-medium dark:text-white\">17154380-9592105D9</span> has been successfully received. Please await further updates.</p>',0),(356,'RL1741','2024-05-11 23:09:49','Transaction Complete','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17154380-9592105D9</span> has been marked <span className=\"font-medium dark:text-white\">COMPLETE</span>. Kindly view the transaction for the next steps.</p>',0),(357,'RL1741','2024-05-13 16:20:58','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17155884-A3E81F486</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 465</span>.</p>',0),(358,'RL1741','2024-05-13 16:21:08','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17155884-69CF0EE8D</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 465</span>.</p>',0),(359,'RL1741','2024-05-13 16:21:14','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17155884-F1311286A</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 465</span>.</p>',0),(360,'RL1741','2024-05-13 16:21:32','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17155884-D80E36D84</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 465</span>.</p>',0),(361,'RL1741','2024-05-14 12:11:08','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156598-325F9EB0E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 95</span>.</p>',0),(362,'ctcimg','2024-05-14 12:11:12','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156598-F14FF1232</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(363,'RL1741','2024-05-14 12:17:52','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156602-036EBED8E</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 93</span>.</p>',0),(364,'ctcimg','2024-05-14 12:17:52','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156602-2386752A3</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(365,'RL1741','2024-05-14 12:18:06','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156602-B325A11B6</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 93</span>.</p>',0),(366,'ctcimg','2024-05-14 12:18:06','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156602-B354A6167</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(367,'RL1741','2024-05-14 12:19:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156603-6887E31F1</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 93</span>.</p>',0),(368,'ctcimg','2024-05-14 12:19:01','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156603-F9EC5165B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(369,'RL1741','2024-05-14 12:24:19','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156606-67C4FA8AC</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 120</span>.</p>',0),(370,'ctcimg','2024-05-14 12:24:19','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156606-7CBA310E9</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(371,'RL1741','2024-05-14 12:26:50','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156608-2C1D1BCD6</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 93</span>.</p>',0),(372,'ctcimg','2024-05-14 12:26:50','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156608-38B2D871F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(373,'RL1741','2024-05-14 13:07:51','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156632-7752C3FCA</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 102</span>.</p>',0),(374,'ctcimg','2024-05-14 13:07:51','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156632-8C8C22ABF</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(375,'RL1741','2024-05-14 13:11:42','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156635-2607AF1E7</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 102</span>.</p>',0),(376,'ctcimg','2024-05-14 13:11:42','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156635-5EE6EF577</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(377,'RL1741','2024-05-14 13:25:09','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156643-67EA6AF68</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(378,'ctcimg','2024-05-14 13:25:09','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156643-7E4FDB35B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(379,'RL1741','2024-05-14 13:28:28','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156645-88F5FDA01</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(380,'ctcimg','2024-05-14 13:28:28','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156645-2E37948BF</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(381,'RL1741','2024-05-14 13:31:09','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156646-2C1CEBBFD</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(382,'ctcimg','2024-05-14 13:31:09','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156646-05B0DCF8A</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(383,'RL1741','2024-05-14 13:32:21','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156647-199C52168</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(384,'ctcimg','2024-05-14 13:32:21','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156647-9BD666ED8</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(385,'RL1741','2024-05-14 13:33:34','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156648-0E4D3DE8B</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(386,'ctcimg','2024-05-14 13:33:34','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156648-99F841E16</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(387,'RL1741','2024-05-14 13:37:50','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156650-4629549F4</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(388,'ctcimg','2024-05-14 13:37:50','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156650-FB6ECAC5F</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(389,'ctcimg','2024-05-14 13:39:05','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156651-F40D49464</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P undefined</span>.</p>',0),(390,'RL1741','2024-05-14 13:46:33','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17156655-027125AE6</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 135</span>.</p>',0),(391,'RL1741','2024-05-14 13:52:51','Transaction Payment Success','<p className=\"text-[0.8rem] pb-2\">Your payment of <span className=\"font-medium dark:text-white\">P 135</span> for <span className=\"font-medium dark:text-white\">17156655-027125AE6</span> has been successfully received. Please await further updates.</p>',0),(392,'RL1741','2024-05-28 02:08:54','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17168333-97CFE7223</span> is currently being processed.</span></p>',0),(393,'RL1741','2024-05-28 02:20:28','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17168340-7D11F2205</span> is currently being processed.</span></p>',0),(394,'RL1741','2024-05-28 02:26:54','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17168344-84D532C14</span> is currently being processed.</span></p>',0),(395,'MM3284','2024-05-28 02:28:26','Successfully changed your password!','</span> Congratulations! Your password has been successfully changed. </p>',0),(396,'MM3284','2024-05-28 02:30:49','Successfully changed your password!','</span> Congratulations! Your password has been successfully changed. </p>',0),(397,'RL1741','2024-05-28 02:39:48','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17168351-93EEE6F79</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 46</span>.</p>',0),(398,'MM3284','2024-05-28 03:40:52','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17168388-D82DEC560</span> is currently being processed.</span></p>',0),(399,'MM3284','2024-05-28 03:45:59','Transaction Payment Processing','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Business Permit: 17168391-048128E71</span> is currently being processed.</span></p>',0),(400,'MM3284','2024-05-28 03:55:05','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17168397-834995D73</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 180</span>.</p>',0),(401,'MM3284','2024-05-28 03:58:05','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17168398-249F8E5E2</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 40</span>.</p>',0),(402,'RL1741','2024-05-28 04:02:45','Transaction Payment Pending','<p className=\"text-[0.8rem] pb-2\">Your request for <span className=\"font-medium dark:text-white\">Community Tax Certificate: 17168401-4A5A425B5</span> is currently awaiting payment. Please pay the required amount of <span className=\"font-medium dark:text-white\">P 140</span>.</p>',0);
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
INSERT INTO `user_personal` VALUES ('AB7348','ATANACIO ','DEVINZ','BASA','III',1,1,2,1),('DT3980','DANILO','DORIA','TORRES','Jr.',1,2,2,1),('JA1381','JEREMIAH PAUL','SADAYA','ALVAREZ',NULL,1,1,2,1),('JD4906','JULE MICHAEL',NULL,'DONES',NULL,1,3,2,1),('ML6352','MILES JOHN','','LUNA',NULL,1,4,2,1),('MM3284','MHANDEE LOUISE','BAUTISTA','MATIS',NULL,1,1,2,1),('PM0586','ADRIAN PAOLO','DELOS SANTOS ','MAGHIRANG',NULL,1,1,2,1),('RL1741','RUFI CARL','PRUDENCIADO','LAGARAS',NULL,2,2,2,1);
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
  `f_name` varchar(45) DEFAULT NULL,
  `l_name` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reg`
--

LOCK TABLES `user_reg` WRITE;
/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` VALUES (1,'Rufi Carl','Lagaras','09454731741','RL1741'),(4,'Atanacio Devinz','Basa','09754137348','AB7348'),(5,'Paolo','Maghirang','09770210586','PM0586'),(6,'Danilo ','Torres','09636163980','DT3980'),(10,'Miles John','Luna','09381676352','ML6352'),(11,'Jule Michael','Dones','09756184906','JD4906'),(12,'Jeremiah Paul','Alvarez','09233376652','JA1381'),(52,'Mhandee Louise','Matis','09761793284','MM3284');
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
  `paymongo_id` varchar(45) DEFAULT NULL,
  `status_type` enum('Pending','Paid','Processing','Canceled','Rejected','Expired','Complete') NOT NULL,
  `date_processed` datetime NOT NULL,
  `expiry_date` datetime NOT NULL,
  `expiry_emailed` tinyint DEFAULT '0',
  `rejected_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_transaction`
--

LOCK TABLES `user_transaction` WRITE;
/*!40000 ALTER TABLE `user_transaction` DISABLE KEYS */;
INSERT INTO `user_transaction` VALUES ('17067150-90AEBB82F','RL1741',7,'cs_HowwoQaBc2VxQShsgQb7fG4h','Paid','2023-11-25 23:30:17','2024-02-05 23:30:17',1,NULL),('17067155-0BCA24CF2','RL1741',4,'cs_rPTCZ3oQTcvPdhWKEbxyg3CU','Paid','2024-03-30 23:39:09','2024-02-05 23:39:09',1,NULL),('17067157-C42703E52','RL1741',5,'cs_eawKWyr75d2ZrYbix5cLt7GG','Paid','2024-01-30 23:41:59','2024-02-05 23:41:59',1,NULL),('17067160-9168B0E42','RL1741',5,'cs_pFck83CUEFLzyoEcFou1JLoY','Paid','2023-12-21 23:47:36','2024-02-05 23:47:36',1,NULL),('17144685-1B0F0AE3C','RL1741',2,'cs_6gAFDhcoAZtswmjseXRGmj5f','Paid','2024-04-30 17:15:25','2024-05-05 17:15:25',1,NULL),('17144685-20DDE22E7','RL1741',2,'cs_cgqJVLKSFf4K7mei9VFQSYDZ','Paid','2024-03-30 17:15:18','2024-05-05 17:15:18',1,1),('17144685-332D5C080','RL1741',2,'cs_U2bXvTncg5irwQGKUSxUdP6H','Pending','2024-01-30 17:15:01','2024-05-05 17:15:01',1,NULL),('17144825-7984EEDDA','RL1741',1,'cs_4LYLAhvAJFsvFpsesYNjiQ37','Paid','2023-09-30 21:09:47','2024-05-05 21:09:47',1,1),('17144850-65E76806D','RL1741',1,'cs_asBcbF3FoVpXDLZLMrfKYGHf','Paid','2024-01-30 21:51:36','2024-05-05 21:51:36',1,1),('17144898-F2C18157A','RL1741',1,'cs_h2L4ow1zHaTh3xU94UA82rDx','Paid','2024-02-22 23:11:28','2024-05-05 23:11:28',1,1),('17144900-DBDC4C3DD','RL1741',1,'cs_N1bH8Sn8LAU6TBMB4v2LoQnq','Paid','2024-04-30 23:14:21','2024-05-05 23:14:21',1,2),('17144903-84523DF62','RL1741',1,'cs_tVewwMYMKz5Nbnsf8N3XHfih','Paid','2024-03-30 23:19:14','2024-05-05 23:19:14',1,3),('17144907-26B306D2D','RL1741',1,'cs_8MGjAziuhMmCzRmd9VzAURjL','Paid','2023-07-30 23:25:30','2024-05-05 23:25:30',1,2),('17144911-D33BD4B62','RL1741',1,'cs_b1UbvNvzp7GvbRPEL1421NgK','Paid','2023-10-30 23:32:52','2024-05-05 23:32:52',1,1),('17144914-C37BF73ED','RL1741',1,'cs_jv1SDjr2kcjDSa1pyCKqgZRF','Paid','2023-08-30 23:37:42','2024-05-05 23:37:42',1,1),('17145327-0DDA46EEB','AB7348',1,'cs_GeJxVR4pw1uDUQBxjkwhyk2G','Paid','2024-05-01 11:06:26','2024-05-06 11:06:26',1,NULL),('17145333-A948ADA68','AB7348',2,'cs_QYnw9xEkZtZrqbUwVmQQftag','Paid','2024-02-01 11:16:03','2024-05-06 11:16:03',1,NULL),('17145333-B7873D52B','AB7348',1,'cs_JPP1ZtLj7GAyKCin2dwMrQ1N','Paid','2024-01-01 11:15:10','2024-05-06 11:15:10',1,NULL),('17145334-635261AB9','AB7348',2,'cs_xjGEu1YPSDNcBKZstvmKGS9S','Paid','2023-10-01 11:18:13','2024-05-06 11:18:13',1,NULL),('17145334-FD1005C6F','AB7348',2,'cs_uno8vV3uwUeXjMTt1g4YDunH','Paid','2023-12-01 11:17:20','2024-05-06 11:17:20',1,NULL),('17145335-635CB1ECD','AB7348',2,'cs_5p8XmQgBXuUnGodaLJvFVaWP','Paid','2023-11-01 11:19:02','2024-05-06 11:19:02',1,NULL),('17145339-60F752E0D','AB7348',3,'cs_VLYdsn7M1ZjSDWpYc2DaKhAE','Paid','2024-05-01 11:25:45','2024-05-06 11:25:45',1,NULL),('17145340-F7D07A9DB','AB7348',3,'cs_kjJcC1fyV5bxMiQNgmpLyjGg','Paid','2023-07-01 11:27:28','2024-05-06 11:27:28',1,NULL),('17145342-3D2225A46','AB7348',3,'cs_jQqvUTcSj6F6oEXDgxG9g42N','Paid','2024-03-01 11:31:13','2024-05-06 11:31:13',1,NULL),('17145344-E436EA424','AB7348',3,'cs_rbsbUmKu122B5fUw65UeBdDJ','Paid','2024-02-01 11:34:46','2024-05-06 11:34:46',1,NULL),('17145345-23A048D6E','AB7348',4,'cs_CJn3wdRfqrb4wsQ69DQqkeRV','Paid','2024-02-01 11:36:34','2024-05-06 11:36:34',1,NULL),('17145346-0757583CD','AB7348',4,'cs_W7qhG7Vq8WCLBN8bKCWHVGXs','Paid','2023-12-01 11:37:50','2024-05-06 11:37:50',1,NULL),('17145346-FC8212179','AB7348',4,'cs_dShD5xkyewFHVezFEz7axywu','Paid','2023-10-01 11:37:41','2024-05-06 11:37:41',1,NULL),('17145347-613DA1196','AB7348',4,'cs_pJHe3aDwAcnwKdiVstbqezBN','Paid','2023-11-01 11:39:24','2024-05-06 11:39:24',1,NULL),('17145348-0A9F081E8','AB7348',5,'cs_b1wSKhqicNPbjanNRHfaJc8R','Paid','2024-05-01 11:40:53','2024-05-06 11:40:53',1,NULL),('17145349-AD7D7E7A1','AB7348',5,'cs_LGPWkLmM39rtsPyGQjFVYtbQ','Paid','2024-04-01 11:41:57','2024-05-06 11:41:57',1,NULL),('17145350-7A102CB11','AB7348',5,'cs_Ub1H7NRhPE1ZoLvsMQ5KB3o8','Paid','2024-03-01 11:44:08','2024-05-06 11:44:08',1,NULL),('17145350-F6B8793B5','AB7348',5,'cs_a6CKL44vtohEefMhxMY7KSvY','Paid','2024-02-01 11:44:01','2024-05-06 11:44:01',1,NULL),('17145351-8C9AB9A1E','AB7348',6,'cs_Xu6gJ8HTxAo7Rx25aRqA4WV4','Paid','2024-01-01 11:45:48','2024-05-06 11:45:48',1,NULL),('17145352-4170AD6D4','AB7348',6,'cs_gwP7qywPnXuEJSSGoy5WWMQg','Paid','2023-11-01 11:46:49','2024-05-06 11:46:49',1,NULL),('17145352-F2A26E9D1','AB7348',6,'cs_r7PBZWSLYfTLtG5r2XnrU9QU','Paid','2023-12-01 11:47:47','2024-05-06 11:47:47',1,NULL),('17145353-EF6777C22','AB7348',6,'cs_aWXLr1DcfNMKe8tKzCJJyiA2','Paid','2024-01-01 11:49:25','2024-05-06 11:49:25',1,NULL),('17145355-1E1E84373','AB7348',7,'cs_7mk1fbZP5MQZb4oJD7pLB4SJ','Paid','2024-04-01 11:51:41','2024-05-06 11:51:41',1,NULL),('17145355-2FB8C70FB','AB7348',7,'cs_QRX7cnTttuVtqkMPJyE6q6o1','Paid','2024-03-01 11:52:58','2024-05-06 11:52:58',1,NULL),('17145357-85C1B1F7E','AB7348',7,'cs_bCfkkjTXqDb7LLhNkfk4YzBn','Paid','2024-02-01 11:55:20','2024-05-06 11:55:20',1,NULL),('17145358-603E4657B','AB7348',7,'cs_15xmsGCbqhHMKMdbbdzn6cd7','Paid','2024-01-01 11:57:30','2024-05-06 11:57:30',1,NULL),('17148828-48E25D917','RL1741',1,'cs_xRincQZkhrKApD31dJEHpVRL','Paid','2023-11-05 12:20:45','2024-05-10 12:20:45',1,NULL),('17148881-699661303','RL1741',3,'cs_6F1hnBLWDYwJXwtYCfVTmsDX','Paid','2023-08-05 13:49:06','2024-05-10 13:49:06',1,NULL),('17148903-F75B993B8','RL1741',3,NULL,'Pending','2024-05-05 14:26:19','2024-05-10 14:26:19',1,NULL),('17150914-AC6FDE6AC','MM3284',4,'cs_QZjpaUSKXFdCrvVNU3rNKUF1','Paid','2023-06-07 22:18:17','2024-05-12 22:18:17',1,NULL),('17150927-C10A77508','MM3284',4,'cs_TJRaJBDLSU3WEANbdLvmmB4D','Paid','2023-07-07 22:38:22','2024-05-12 22:38:22',1,NULL),('17150948-4C5F38DDC','MM3284',4,'cs_ohJfHo9xjXcVLFbWcp46QMwU','Paid','2023-08-07 23:14:17','2024-05-12 23:14:17',1,NULL),('17150954-96D423905','MM3284',4,'cs_YzA8eV817db4xdhfRm2vJov4','Paid','2023-09-07 23:24:47','2024-05-12 23:24:47',1,NULL),('17150982-67E0C7A82','MM3284',4,'cs_3seKUg5fZVU25onBVnwMJrs4','Paid','2024-04-08 00:10:35','2024-05-13 00:10:35',1,NULL),('17150986-3432EDD1F','MM3284',4,'cs_XAia7wDCyN5mbHRy5zd3vPJy','Paid','2024-05-08 00:16:42','2024-05-13 00:16:42',1,NULL),('17150990-7572A208F','MM3284',4,'cs_ruEbNyf7CLuPxTk7JiN312tr','Paid','2024-02-08 00:23:33','2024-05-13 00:23:33',1,NULL),('17150994-D2ECD9E46','MM3284',4,'cs_qs6Cf7EjAAuPREiLwWxN2Ux2','Paid','2024-03-08 00:30:29','2024-05-13 00:30:29',1,NULL),('17150998-932273BCB','MM3284',6,'cs_36AgFvjMkGJvqgMFRg6Sooae','Paid','2024-05-08 00:38:19','2024-05-13 00:38:19',1,NULL),('17151018-FF7F78A8E','MM3284',5,'cs_xtDKhonHjURBjJH2szLb4UsZ','Paid','2023-11-08 01:11:03','2024-05-13 01:11:03',1,NULL),('17151112-0F5674BD4','MM3284',5,'cs_xbZoPuaMKFjabv1mte2ez8hw','Paid','2023-10-08 03:47:44','2024-05-13 03:47:44',1,NULL),('17151118-C7879186F','MM3284',3,'cs_dQYGQDtezNK57DVL9PBpEmyg','Paid','2024-04-08 03:58:19','2024-05-13 03:58:19',1,NULL),('17151122-BE12A0BDA','MM3284',3,'cs_kivgMyWN4t8MQi6e5KzGmv6v','Paid','2024-01-08 04:04:48','2024-05-13 04:04:48',1,NULL),('17151126-440FE827D','MM3284',3,'cs_RpiBMsrnwbRJ3v8Y8KELL5W7','Paid','2023-12-08 04:11:29','2024-05-13 04:11:29',1,NULL),('17151130-11F6C233D','MM3284',6,'cs_oXZDHfH2cwjZQmsvKqAg8sy8','Paid','2024-05-08 04:18:04','2024-05-13 04:18:04',1,NULL),('17151132-150A096E1','MM3284',6,'cs_PLRxd6mDYxiX919xAt6USfSL','Paid','2024-04-08 04:21:02','2024-05-13 04:21:02',1,NULL),('17151136-8F0763E86','MM3284',6,'cs_WrhFzZ261UoqH8sgBbzf39Ki','Paid','2024-03-08 04:26:47','2024-05-13 04:26:47',1,NULL),('17151138-0B626C9CD','MM3284',6,'cs_XyY4TKXSGTTDcPS7i2thF4mk','Paid','2024-02-08 04:31:14','2024-05-13 04:31:14',1,NULL),('17151140-9E372112B','MM3284',2,'cs_VaFY4eVxaboyyK3yp1x4T9QT','Paid','2024-05-08 04:34:11','2024-05-13 04:34:11',1,NULL),('17151141-3DC68974B','MM3284',2,'cs_jiYnHYDgqhqYjtjGNEog13Z3','Paid','2024-05-08 04:36:12','2024-05-13 04:36:12',1,NULL),('17151141-8C87AA5F4','MM3284',2,'cs_rXBfsVPEnDujarWW7tcwDbNL','Paid','2024-05-08 04:35:06','2024-05-13 04:35:06',1,NULL),('17151143-9F9EFF48D','MM3284',1,'cs_F2BtAyRcy7tirLenXFFXx7Af','Paid','2024-02-08 04:38:35','2024-05-13 04:38:35',1,NULL),('17151144-5B9F680A9','MM3284',1,'cs_VKC2eUJ6rSmwpzhQ77DXYfxF','Paid','2024-02-08 04:40:25','2024-05-13 04:40:25',1,NULL),('17151146-9D03E3724','MM3284',2,'cs_9suKHaL71Pid83Hg6SPgS1hc','Paid','2024-02-08 04:44:17','2024-02-13 04:44:17',1,NULL),('17151147-F30A72087','MM3284',2,'cs_Dj3rkJcGbaAqdf6zX5aJif42','Paid','2024-03-08 04:45:20','2024-03-13 04:45:20',1,NULL),('17151149-4E65B41E3','MM3284',6,'cs_E6E57LXsfzS6CvEtxoUZrLx6','Paid','2024-04-08 04:49:47','2024-05-13 04:49:47',1,NULL),('17151151-AFE101ECF','MM3284',2,'cs_GBLRhCmpE2Q36tgaxZM72GWT','Paid','2024-04-08 04:52:26','2024-05-13 04:52:26',1,NULL),('17151152-E142B500A','MM3284',2,'cs_kDs1izAdXWZAZCDzTyDoprvF','Paid','2024-04-08 04:53:20','2024-05-13 04:53:20',1,NULL),('17151153-1C123B4F8','MM3284',1,'cs_V9JbqyPvn7k5oLoJNvUzFiJw','Paid','2024-04-08 04:55:14','2024-05-13 04:55:14',1,NULL),('17151155-F13FF9189','MM3284',7,'cs_gV2ieW2GpBvC8xs1vxn3DSUN','Paid','2024-05-08 04:59:30','2024-05-13 04:59:30',1,NULL),('17151157-3D9091FAC','MM3284',7,'cs_7BrEYqsQTdp5ZjCTnnEFBPXG','Paid','2024-03-08 05:01:55','2024-05-13 05:01:55',1,NULL),('17151158-0297CC7CA','MM3284',7,'cs_nbsVApWWbg7bwt5bvAxxuPTY','Paid','2024-03-08 05:04:36','2024-05-13 05:04:36',1,NULL),('17151160-979C11CB7','MM3284',1,'cs_BdAqcncx6XTmr63GFLutrgDX','Paid','2023-12-08 05:07:14','2024-05-13 05:07:14',1,NULL),('17154101-DF36D2F50','RL1741',5,NULL,'Pending','2024-05-11 14:49:49','2024-05-16 14:49:49',1,NULL),('17154109-AA3C3233B','RL1741',5,'cs_gH6SLUHW7ysQHB1ei2XEnusf','Paid','2024-05-11 15:02:11','2024-05-16 15:02:11',1,NULL),('17154240-3FAE9F3D9','RL1741',3,NULL,'Processing','2024-05-11 18:41:08','2024-05-16 18:41:08',1,NULL),('17155884-69CF0EE8D','RL1741',4,NULL,'Pending','2024-05-13 16:21:08','2024-05-18 16:21:08',1,NULL),('17155884-A3E81F486','RL1741',4,NULL,'Pending','2024-05-13 16:20:58','2024-05-18 16:20:58',1,NULL),('17155884-F1311286A','RL1741',4,NULL,'Pending','2024-05-13 16:21:14','2024-05-18 16:21:14',1,NULL),('17168333-97CFE7223','RL1741',3,NULL,'Processing','2024-05-28 02:08:54','2024-06-02 02:08:54',0,NULL),('17168340-7D11F2205','RL1741',3,NULL,'Processing','2024-05-28 02:20:28','2024-06-02 02:20:28',0,NULL),('17168344-84D532C14','RL1741',3,NULL,'Processing','2024-05-28 02:26:54','2024-06-02 02:26:54',0,NULL),('17168351-93EEE6F79','RL1741',4,NULL,'Pending','2024-05-28 02:39:48','2024-06-02 02:39:48',0,NULL),('17168388-D82DEC560','MM3284',3,NULL,'Processing','2024-05-28 03:40:52','2024-06-02 03:40:52',0,NULL),('17168391-048128E71','MM3284',3,NULL,'Processing','2024-05-28 03:45:59','2024-06-02 03:45:59',0,NULL),('17168397-834995D73','MM3284',4,NULL,'Pending','2024-05-28 03:55:05','2024-06-02 03:55:05',0,NULL),('17168398-249F8E5E2','MM3284',4,NULL,'Pending','2024-05-28 03:58:05','2024-06-02 03:58:05',0,NULL),('17168401-4A5A425B5','RL1741',4,NULL,'Pending','2024-05-28 04:02:45','2024-06-02 04:02:45',0,NULL);
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
INSERT INTO `user_verification` VALUES ('AB7348','Verified','Applying',NULL),('DT3980','Verified','Applying',NULL),('JA1381','Verified','Applying',NULL),('JD4906','Verified','Applying',NULL),('ML6352','Verified','Applying',NULL),('MM3284','Verified','Complete','96273e6e41ed84d9a5eb7e54f6a873d7 (1)_MM3284.jpg'),('PM0586','Verified','Complete',NULL),('RL1741','Verified','Complete','Untitled-1_RL1741.jpg');
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
INSERT INTO `valid_id_type` VALUES (1,'Passport'),(2,'SSS'),(3,'UMID'),(4,'PHILHEALTH'),(5,'DRIVER\'S LICENSE'),(6,'VOTER\'S ID'),(7,'SENIOR CITIZEN  ID'),(8,'PSOTAL ID'),(9,'BARANGAY ID'),(10,'NATIONAL ID'),(11,'AUTHRIZATION LETTER'),(12,'GSIS ID'),(13,'OWWA ID'),(14,'PRC ID'),(15,'TIN ID'),(16,'PHILIPPINE PASSPORT CARD'),(17,'PHILIPPINE NATIONAL POLICE ID'),(18,'AFP ID'),(19,'IBP ID'),(20,'PRC ID'),(21,'DFA EPASSPORT'),(22,'OFW ID'),(23,'SSS UMID'),(24,'DFA ISSUED POSTAL ID'),(25,'DOLE ID'),(26,'NCWDP ID'),(27,'DSWD ID'),(28,'PNR ID'),(29,'LGU ID'),(30,'PHILHEALTH INSURANCE CARD'),(31,'POEA eCARD'),(32,'NBI CLEARANCE'),(33,'CID CLEARANCE'),(34,'DTI CERTIFICATE'),(35,'COMPANY ID'),(36,'MARINA ID'),(37,'DOH LICENSE'),(38,'DOE LICENSE'),(39,'PRC PROFESSIONAL ID'),(40,'IBP ID'),(41,'IMMIGRANT CERTIFICATE'),(42,'BIR TIN ID'),(43,'LGU OFFICE ID'),(44,'PNP FIREARMS LICENSE'),(45,'SOLO PARENT ID'),(46,'PWD ID'),(47,'DOST ID'),(48,'PRC LICENSURE CERTIFICATE'),(49,'OFW eCARD'),(50,'DFA ID'),(51,'SCHOOL ID'),(52,'ITR'),(53,'PAYSLIP');
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
INSERT INTO `wife_info` VALUES ('17067150-90AEBB82F',NULL,NULL,NULL,NULL),('17145355-1E1E84373','JUANA',NULL,'GOMEZ',NULL),('17145355-2FB8C70FB','JUANA',NULL,'GOMEZ',NULL),('17145357-85C1B1F7E','DSA','AD','DSA',NULL),('17145358-603E4657B','DSA','AD','DSA',NULL),('17151155-F13FF9189','LHEMERY','MERLS','SEVILLA',NULL),('17151157-3D9091FAC','MARISSA','PEDRO','GAZA',NULL),('17151158-0297CC7CA','MIAHLYN','DANES','LUNA',NULL);
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

-- Dump completed on 2024-05-28  4:06:27
