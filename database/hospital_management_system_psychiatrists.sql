-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital_management_system
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `psychiatrists`
--

DROP TABLE IF EXISTS `psychiatrists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `hospitalId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospitalId` (`hospitalId`),
  CONSTRAINT `psychiatrists_ibfk_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrists`
--

LOCK TABLES `psychiatrists` WRITE;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Amit','Mehta','Apollo Hospitals','9180353889','123456','haryana',1),(2,'Gagan','Kumar','Apollo Hospitals','8130153598','123456','punjab',1),(3,'Kavita','Goel','Indira Gandhi Institute of Medical Sciences (IGIMS)','8030253598','23456','pune',3),(4,'Rashmi','Sharma','AIIMS - All India Institute Of Medical Science','8333253598','023456','chandigarh',4),(5,'Suraj','Mishra','AIIMS - All India Institute Of Medical Science','8333253592','023454','haryana',4),(6,'Kamal','Verma','AIIMS - All India Institute Of Medical Science','8333353591','023433','gujrat',4),(7,'Shahil','Sharma','AIIMS - All India Institute Of Medical Science','8333253580','323454','delhi',4),(8,'Kanu','Bhatia','Jawaharlal Nehru Medical College and Hospital','8333253592','123454','noida',2),(9,'Kamal','Batra','AIIMS - All India Institute Of Medical Science','8333253592','623454','pune',4),(10,'Hari','Kumar','Indira Gandhi Institute of Medical Sciences (IGIMS)','8333253592','023454','haryana',3),(11,'Basser','Iqbal','Indira Gandhi Institute of Medical Sciences (IGIMS)','9876543210','023454','haryana',3),(12,'Chandan','Dawan','Jawaharlal Nehru Medical College and Hospital','927654321','023453','Himachal',2),(13,'Karan','Kapoor','Jawaharlal Nehru Medical College and Hospital','997654320','023422','Himachal',2),(14,'Sharuti','Jain','Jawaharlal Nehru Medical College and Hospital','997654320','023422','Himachal',2),(15,'Dayal','Singh','Apollo Hospitals','997625720','453422','punjab',1),(16,'Neeru','Goel','Apollo Hospitals','797625720','053422','delhi',1),(17,'Ishu','Rana','Apollo Hospitals','997625722','053421','delhi',1),(18,'Rahul','Kumar','Indira Gandhi Institute of Medical Sciences (IGIMS)','997625729','053421','delhi',3),(19,'Hemant','Pathak','Indira Gandhi Institute of Medical Sciences (IGIMS)','817624727','053421','delhi',3),(20,'Fatima','Rai','Indira Gandhi Institute of Medical Sciences (IGIMS)','717624725','053421','delhi',3),(21,'Amit','Malhotra','Apollo Hospitals','865624741','053421','delhi',1);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 17:53:32
