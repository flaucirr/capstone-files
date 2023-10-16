CREATE DATABASE  IF NOT EXISTS `clientdatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clientdatabase`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clientdatabase
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
-- Table structure for table `manila_address`
--

DROP TABLE IF EXISTS `manila_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manila_address` (
  `city` varchar(1024) NOT NULL,
  `id_addr` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_addr`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manila_address`
--

LOCK TABLES `manila_address` WRITE;
/*!40000 ALTER TABLE `manila_address` DISABLE KEYS */;
INSERT INTO `manila_address` VALUES ('Manila',1),('Quezon City',2),('Davao',3),('Caloocan City',4),('Canagatan',5),('Taguig City',6),('Pasig City',7),('Valenzuela',8),('City of Parañaque',9),('Bacoor',10),('Tondo',11),('Las Piñas City',12),('Pasay City',13),('Mandaluyong City',14),('Malabon',15),('San Pedro',16),('Navotas',17),('Santa Ana',18),('General Mariano Alvarez',19),('Payatas',20),('San Andres',21),('Santa Cruz',22),('San Juan',23),('Poblacion',24),('Santa Mesa',25),('Bagong Silangan',26),('Putatan',27),('Western Bicutan',28),('Banco Filipino International Village',29),('Paco',30),('Malate',31),('Pandacan',32),('San Isidro',33),('San Antonio',34),('Pateros',35),('Tatalon',36),('Sucat',37),('Don Bosco',38),('Lower Bicutan',39),('Bignay',40),('Bagumbayan',41),('Upper Bicutan',42),('Marikina Heights',43),('Central Signal Village',44),('Bayanan',45),('Karuhatan',46),('Bel-Air',47),('Santo Niño',48),('Pansol',49),('Baclaran',50),('West Rembo',51),('Bagong Pag-Asa',52),('Pinyahan',53);
/*!40000 ALTER TABLE `manila_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-17  0:39:40
