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
-- Table structure for table `hospitals`
--
create database hospital_management_system;
use hospital_management_system;

-- lock-tables=false
DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` write;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
INSERT INTO `hospitals` VALUES (1,'Apollo Hospitals'),(2,'Jawaharlal Nehru Medical College and Hospital'),(3,'Indira Gandhi Institute of Medical Sciences (IGIMS)'),(4,'AIIMS - All India Institute Of Medical Science');
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `hospitalId` int DEFAULT NULL,
  `psychiatristId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospitalId` (`hospitalId`),
  KEY `psychiatristId` (`psychiatristId`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`psychiatristId`) REFERENCES `psychiatrists` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` write;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Lokesh','DC colony,haryana','lokesh@gmail.com','+018130153598','Lokesh12345','lokesh.jpg',1,1),(3,'Shiva','Army colony,punjab','shiva@gmail.com','+019130153591','Shivaverma12345','shiva.jpg',1,1),(4,'Aman','Kashi Nagar,haryana','aman@gmail.com','+019330153592','amaN12345','aman.jpg',1,2),(5,'Sunita','Kashi Nagar,haryana','sunita@gmail.com','+011230153592','suNita12345','sunta.jpg',1,2),(6,'Akash Deep','Rajiyapur,haryana','akashdeep@gmail.com','+011230153590','Akashdeep12345','akash.jpg',1,2),(7,'Jesika','AM karnal,haryana','jesika1234@gmail.com','+011235153590','jesikA12345','jesika.jpg',3,3),(8,'Hardeep','Rkpura, punjab','hardeep1234@pp.com','+011235153590','hardeepK12345','hardeep.jpg',3,3),(9,'Lalit','Amirpur, punjab','lalit1234@com.pp','+011235153590','jesikA12345','lalit.jpg',3,3),(10,'Ritu','Amirpur, punjab','ritu1234@com.pp','+011365653590','Ritu12345','Ritu.jpg',2,8),(11,'Parkash','HCD colony, haryana','parkash234@com.pp','+012365653597','parkasH12345','Parkash.jpg',2,8),(12,'Anand','HCD colony, haryana','afd@com.aa','+012310653597','ananD12345','anand.jpg',2,8),(13,'Heena','HCD colony, haryana','heena@com.aa','+032165653597','Heena12345','heena.jpg',4,9),(14,'Namarta','GPG Nagar, delhi','namarta@hotmail.com','+132165653597','Namrata12345','Namarta.jpg',1,15),(15,'Mamta','GPG Nagar, delhi','mamta@gmail.com','+432165623597','mamaTa12345','Mamta.jpg',2,13),(16,'Ajay Verma','123 okla, delhi','ajay@gmail.com','+432005623597','AJay12345','Ajay.jpg',3,18),(17,'Pooja','okla puran, delhi','pooja@gmail.com','+232005623597','pooJa12345','Pooja.jpg',4,5),(18,'Gurnam','FR center, KolKatta','gurna@gmail.com','+112005623597','Gurnam123451','gurnam.jpg',4,7),(19,'Manoj','FR center, KolKatta','manoj@gmail.com','+113005623597','Manoj123451','manoj.jpg',3,19),(20,'Urvashi','RC center, jalandar','uma@gmail.com','+091005623597','Uma123451','uma.jpg',3,19),(21,'Tejas','RC center, kanpur','tej@gmail.com','+091005623901','Tejsa890','tejas.jpg',2,12),(22,'Anil','PRC nagpur','anil234@gmail.com','+091002623403','anil456Kumar','anil.jpg',2,12),(23,'Vivek','RC School, patiala','vivek234@yahoo.com','+191002623403','vivekl456Kumar','vivek.jpg',2,12),(24,'Gitu','SD college, Hisar','gitu234@yahoo.com','+121002623409','gituKumari456','gitu.jpg',3,10),(25,'Kiran','LMC college, delhi','kiran234@co.in','+131002623409','kiranKumari456','kiran.jpg',3,10),(26,'Naresh','LMC college, delhi','naresh234@co.in','+111002623409','Naresh456','naresh.jpg',3,10),(27,'Charan Singh','LMC college, delhi','charan234@co.in','+111302623403','Charan456','charan.jpg',2,8),(28,'Yuvrah Bhat','DMC college, karnal','yuvarah234@gmail.com','+211302623403','yuvraH456','Yuvrah.jpg',3,20),(29,'Danish','HDMC college, karnal','danish234@gmail.com','+201302623483','Danish456','danish.jpg',3,20),(30,'Krishna','Kalalsha street 1234, karnal','krishna@gmail.com','+201322623483','Krishna456','krishna.jpg',3,20);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

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

LOCK TABLES `psychiatrists` write;
/*!40000 ALTER TABLE `psychiatrists` DISABLE KEYS */;
INSERT INTO `psychiatrists` VALUES (1,'Amit','Mehta','Apollo Hospitals','9180353889','123456','haryana',1),(2,'Gagan','Kumar','Apollo Hospitals','8130153598','123456','punjab',1),(3,'Kavita','Goel','Indira Gandhi Institute of Medical Sciences (IGIMS)','8030253598','23456','pune',3),(4,'Rashmi','Sharma','AIIMS - All India Institute Of Medical Science','8333253598','023456','chandigarh',4),(5,'Suraj','Mishra','AIIMS - All India Institute Of Medical Science','8333253592','023454','haryana',4),(6,'Kamal','Verma','AIIMS - All India Institute Of Medical Science','8333353591','023433','gujrat',4),(7,'Shahil','Sharma','AIIMS - All India Institute Of Medical Science','8333253580','323454','delhi',4),(8,'Kanu','Bhatia','Jawaharlal Nehru Medical College and Hospital','8333253592','123454','noida',2),(9,'Kamal','Batra','AIIMS - All India Institute Of Medical Science','8333253592','623454','pune',4),(10,'Hari','Kumar','Indira Gandhi Institute of Medical Sciences (IGIMS)','8333253592','023454','haryana',3),(11,'Basser','Iqbal','Indira Gandhi Institute of Medical Sciences (IGIMS)','9876543210','023454','haryana',3),(12,'Chandan','Dawan','Jawaharlal Nehru Medical College and Hospital','927654321','023453','Himachal',2),(13,'Karan','Kapoor','Jawaharlal Nehru Medical College and Hospital','997654320','023422','Himachal',2),(14,'Sharuti','Jain','Jawaharlal Nehru Medical College and Hospital','997654320','023422','Himachal',2),(15,'Dayal','Singh','Apollo Hospitals','997625720','453422','punjab',1),(16,'Neeru','Goel','Apollo Hospitals','797625720','053422','delhi',1),(17,'Ishu','Rana','Apollo Hospitals','997625722','053421','delhi',1),(18,'Rahul','Kumar','Indira Gandhi Institute of Medical Sciences (IGIMS)','997625729','053421','delhi',3),(19,'Hemant','Pathak','Indira Gandhi Institute of Medical Sciences (IGIMS)','817624727','053421','delhi',3),(20,'Fatima','Rai','Indira Gandhi Institute of Medical Sciences (IGIMS)','717624725','053421','delhi',3),(21,'Amit','Malhotra','Apollo Hospitals','865624741','053421','delhi',1);
/*!40000 ALTER TABLE `psychiatrists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospital_management_system'
--

--
-- Dumping routines for database 'hospital_management_system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 18:19:10
