-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: telecom
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `newprepaid`
--

DROP TABLE IF EXISTS `newprepaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newprepaid` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `planid` int NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`planid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newprepaid`
--

LOCK TABLES `newprepaid` WRITE;
/*!40000 ALTER TABLE `newprepaid` DISABLE KEYS */;
INSERT INTO `newprepaid` VALUES ('Devjeet Roy','devjeetroy.dr@gmail.com','1998-08-11','M','129 Vivekananda Sarani',15,'Prepaid'),('Papiya Roy','papiyaroy1234@gmail.com','1971-10-23','F','123 R. R. Plot',16,'Postpaid');
/*!40000 ALTER TABLE `newprepaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postpaid`
--

DROP TABLE IF EXISTS `postpaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postpaid` (
  `amt` int DEFAULT NULL,
  `calls` varchar(10) DEFAULT NULL,
  `data` varchar(10) DEFAULT NULL,
  `validity` varchar(15) DEFAULT NULL,
  `member` varchar(30) DEFAULT NULL,
  `planid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`planid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postpaid`
--

LOCK TABLES `postpaid` WRITE;
/*!40000 ALTER TABLE `postpaid` DISABLE KEYS */;
INSERT INTO `postpaid` VALUES (199,'Unlimited','25','28','1',3),(299,'Unlimited','75','28','1',4),(599,'Unlimited','150','28','2',6),(799,'Unlimited','300','28','2',7),(799,'Unlimited','300','28','2',8),(999,'Unlimited','500','28','3',9),(1299,'Unlimited','500','84','3',10),(1299,'Unlimited','500','84','3',11),(1599,'Unlimited','1000','84','3',12);
/*!40000 ALTER TABLE `postpaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prepaid`
--

DROP TABLE IF EXISTS `prepaid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prepaid` (
  `amt` int DEFAULT NULL,
  `calls` varchar(10) DEFAULT NULL,
  `data` varchar(10) DEFAULT NULL,
  `validity` varchar(15) DEFAULT NULL,
  `planid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`planid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prepaid`
--

LOCK TABLES `prepaid` WRITE;
/*!40000 ALTER TABLE `prepaid` DISABLE KEYS */;
INSERT INTO `prepaid` VALUES (99,'Unlimited','1','18',12),(199,'Unlimited','2','24',13),(219,'Unlimited','2.5','30',14),(270,'Unlimited','4','56',15),(400,'Unlimited','4','84',18),(600,'Unlimited','5','84',19),(1699,'Unlimited','2','365',21),(2999,'Unlimited','4','365',22),(49,'Unlimited','1','7',25),(19,'Unlimited','3','1',26);
/*!40000 ALTER TABLE `prepaid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `Pnumber` int NOT NULL,
  `email` varchar(15) NOT NULL,
  `country` varchar(15) DEFAULT NULL,
  `connection` varchar(15) DEFAULT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-06 22:56:14
