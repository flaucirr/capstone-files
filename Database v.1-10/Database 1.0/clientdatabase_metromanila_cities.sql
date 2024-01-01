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
-- Table structure for table `metromanila_cities`
--

DROP TABLE IF EXISTS `metromanila_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metromanila_cities` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(1024) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metromanila_cities`
--

LOCK TABLES `metromanila_cities` WRITE;
/*!40000 ALTER TABLE `metromanila_cities` DISABLE KEYS */;
INSERT INTO `metromanila_cities` VALUES (1,'Manila'),(2,'Quezon City'),(3,'Davao'),(4,'Caloocan City'),(5,'Canagatan'),(6,'Taguig City'),(7,'Pasig City'),(8,'Valenzuela'),(9,'City of Parañaque'),(10,'Bacoor'),(11,'Tondo'),(12,'Las Piñas City'),(13,'Pasay City'),(14,'Mandaluyong City'),(15,'Malabon'),(16,'San Pedro'),(17,'Navotas'),(18,'Santa Ana'),(19,'General Mariano Alvarez'),(20,'Payatas'),(21,'San Andres'),(22,'Santa Cruz'),(23,'San Juan'),(24,'Poblacion'),(25,'Santa Mesa'),(26,'Bagong Silangan'),(27,'Putatan'),(28,'Western Bicutan'),(29,'Banco Filipino International Village'),(30,'Paco'),(31,'Malate'),(32,'Pandacan'),(33,'San Isidro'),(34,'San Antonio'),(35,'Pateros'),(36,'Tatalon'),(37,'Sucat'),(38,'Don Bosco'),(39,'Lower Bicutan'),(40,'Bignay'),(41,'Bagumbayan'),(42,'Upper Bicutan'),(43,'Marikina Heights'),(44,'Central Signal Village'),(45,'Bayanan'),(46,'Karuhatan'),(47,'Bel-Air'),(48,'Santo Niño'),(49,'Pansol'),(50,'Baclaran'),(51,'West Rembo'),(52,'Bagong Pag-Asa'),(53,'Pinyahan');
/*!40000 ALTER TABLE `metromanila_cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-18 23:16:15
