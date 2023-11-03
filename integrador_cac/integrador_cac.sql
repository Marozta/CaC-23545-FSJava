CREATE DATABASE  IF NOT EXISTS `integrador_cac` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `integrador_cac`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: integrador_cac
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `orador`
--

DROP TABLE IF EXISTS `orador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orador` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `tema` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci COMMENT='oradores de la conferencia Bs.As.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orador`
--

LOCK TABLES `orador` WRITE;
/*!40000 ALTER TABLE `orador` DISABLE KEYS */;
INSERT INTO `orador` VALUES (1,'Steve','Jobs','stevejobs@apple.com','Apple y los nuevos desafios tecnologicos','2023-11-03 21:03:52'),(2,'Bill','Gates','billgates@microsoft.com','Las nuevas tendencias','2023-11-03 21:03:52'),(3,'Ada','Lovelace','adalovelace@gmail.com','Matematica, informatica y su interrelacion','2023-11-03 21:03:52'),(4,'Elon','Musk','elonmusk@gspacex.com','La nueva era de las redes sociales','2023-11-03 21:03:52'),(5,'Jeff','Bezos','jeffbezos@amazon.com','Evolucion del cyber comercio','2023-11-03 21:03:52'),(6,'Marcos','Galperin','marcosgalperin@mercadolibre.com','America latina y la tecnologia','2023-11-03 21:03:52'),(7,'Martin','Migoya','martinmigoya@globant.com.ar','Crecer','2023-11-03 21:03:52'),(8,'Pierpaolo','Barbieri','pierpaolobarbieri@uala.com','Tecnologia y finanzas','2023-11-03 21:03:52'),(9,'Santiago','Aparicio','santiagoaparicio@gontop.com','El teletrabajo en America Latina','2023-11-03 21:03:52'),(10,'Vanina','Martinez','vaninamartinez@conicet.com.ar','La llegada de la inteligencia artificial','2023-11-03 21:03:52');
/*!40000 ALTER TABLE `orador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-03 18:23:58
