-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `comentario`
--
CREATE DATABASE blog;
USE blog;

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  `texto` varchar(40) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,6,3,'Este es el comentario 1','2020-07-08'),(2,2,4,'Este es el comentario 2','2020-06-07'),(3,4,6,'Este es el comentario 3','2020-06-16'),(4,13,2,'Este es el comentario 4','2020-06-15'),(5,6,6,'Este es el comentario 5','2020-05-14'),(6,3,3,'Este es el comentario 6','2020-07-08'),(7,1,6,'Este es el comentario 7','2020-05-22'),(8,7,6,'Este es el comentario 8','2020-07-09'),(9,13,8,'Este es el comentario 9','2020-06-30'),(10,6,8,'Este es el comentario 10','2020-06-19'),(11,1,5,'Este es el comentario 11','2020-05-09'),(12,15,8,'Este es el comentario 12','2020-06-17'),(13,9,1,'Este es el comentario 13','2020-05-01'),(14,5,2,'Este es el comentario 14','2020-05-31'),(15,3,4,'Este es el comentario 15','2020-06-28'),(16,NULL,10,'Este es el comentario 1','2020-07-08');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `titulo` varchar(60) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'Post 1: Esto es malo','2020-06-29'),(2,5,'Post 2: Esto es malo','2020-06-20'),(3,1,'Post 3: Esto es excelente','2020-05-30'),(4,9,'Post 4: Esto es bueno','2020-05-09'),(5,7,'Post 5: Esto es bueno','2020-07-10'),(6,5,'Post 6: Esto es excelente','2020-07-18'),(7,8,'Post 7: Esto es excelente','2020-07-07'),(8,5,'Post 8: Esto es excelente','2020-05-14'),(9,2,'Post 9: Esto es bueno','2020-05-08'),(10,6,'Post 10: Esto es bueno','2020-06-02'),(11,4,'Post 11: Esto es bueno','2020-05-05'),(12,9,'Post 12: Esto es malo','2020-07-23'),(13,5,'Post 13: Esto es excelente','2020-05-30'),(14,8,'Post 14: Esto es excelente','2020-05-01'),(15,7,'Post 15: Esto es malo','2020-06-17'),(16,7,NULL,'2020-06-17');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usuario01@hotmail.com'),(2,'usuario02@gmail.com'),(3,'usuario03@gmail.com'),(4,'usuario04@hotmail.com'),(5,'usuario05@yahoo.com'),(6,'usuario06@hotmail.com'),(7,'usuario07@yahoo.com'),(8,'usuario08@yahoo.com'),(9,'usuario09@yahoo.com'),(10,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-30 10:36:22
