-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: greeplace.mysql.database.azure.com    Database: greeplace
-- ------------------------------------------------------
-- Server version	5.6.47.0

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
-- Table structure for table `campo`
--

DROP TABLE IF EXISTS `campo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campo` (
  `idcampo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`idcampo`,`usuario_idusuario`),
  KEY `fk__usuario_idx` (`usuario_idusuario`),
  CONSTRAINT `fk__usuario` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campo`
--

LOCK TABLES `campo` WRITE;
/*!40000 ALTER TABLE `campo` DISABLE KEYS */;
INSERT INTO `campo` VALUES (1,'maiz',1),(2,'melon',2);
/*!40000 ALTER TABLE `campo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datoscampo`
--

DROP TABLE IF EXISTS `datoscampo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datoscampo` (
  `iddatos` int(11) NOT NULL AUTO_INCREMENT,
  `humedad` float NOT NULL,
  `temperatura` float NOT NULL,
  `aire` float NOT NULL,
  `fecha` datetime NOT NULL,
  `_idcampo` int(11) NOT NULL,
  `_usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`iddatos`,`_idcampo`,`_usuario_idusuario`),
  KEY `fk_datoscampo_1_idx` (`_idcampo`,`_usuario_idusuario`),
  CONSTRAINT `fk_datoscampo_1` FOREIGN KEY (`_idcampo`, `_usuario_idusuario`) REFERENCES `campo` (`idcampo`, `usuario_idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datoscampo`
--

LOCK TABLES `datoscampo` WRITE;
/*!40000 ALTER TABLE `datoscampo` DISABLE KEYS */;
INSERT INTO `datoscampo` VALUES (9,34.9,34,26,'2021-01-18 08:34:24',2,2),(10,35.7,22,44,'2021-01-18 10:34:24',2,2),(11,34.6,46,34,'2021-01-18 12:34:24',2,2),(12,35.4,43,54,'2021-01-18 14:32:24',2,2),(13,35.3,65,23,'2021-01-18 16:34:24',2,2),(14,36.7,45,66,'2021-01-18 18:34:24',2,2),(15,38.8,45,43,'2021-01-18 20:34:24',2,2),(16,35.6,27.6,10,'2021-01-19 08:00:35',2,2),(22,34.6,30.8,10,'2021-01-19 10:00:35',2,2),(23,33.5,31.5,10,'2021-01-19 12:00:35',2,2),(24,32.6,32.3,10,'2021-01-19 14:00:35',2,2),(25,35.6,29.5,10,'2021-01-19 16:00:35',2,2),(26,35.8,28.4,11,'2021-01-19 18:00:35',2,2),(27,36.8,24.7,10,'2021-01-19 20:00:35',2,2),(28,36.5,29.5,10,'2021-01-20 08:00:23',2,2),(29,34.6,30.3,10,'2021-01-20 10:00:23',2,2),(30,35.7,32.7,10,'2021-01-20 12:00:23',2,2),(31,35.6,32.5,10,'2021-01-20 14:00:23',2,2),(32,34.5,32.3,10,'2021-01-20 16:00:23',2,2),(33,35.9,31.5,10,'2021-01-20 18:00:23',2,2),(34,37.8,28.3,10,'2021-01-20 20:00:23',2,2),(35,34.7,30.3,10,'2021-01-21 08:01:53',2,2),(36,35.5,30.8,10,'2021-01-21 10:01:53',2,2),(37,35.8,31.6,10,'2021-01-21 12:01:53',2,2),(38,34.6,31.4,10,'2021-01-21 14:01:53',2,2),(39,35.7,31.6,10,'2021-01-21 16:01:53',2,2),(40,34.6,30.5,10,'2021-01-21 18:01:53',2,2),(41,36.4,28.4,10,'2021-01-21 20:01:53',2,2),(42,34.7,29.4,10,'2021-02-08 08:00:38',2,2),(43,34.9,30.4,10,'2021-02-08 10:00:38',2,2),(44,35.3,30.9,10,'2021-02-08 12:00:38',2,2),(45,32.5,33.9,10,'2021-02-08 14:00:38',2,2),(46,34.2,31.1,10,'2021-02-08 16:00:38',2,2),(47,37.6,29.8,10,'2021-02-08 18:00:38',2,2),(48,37.1,28.4,10,'2021-02-08 20:00:38',2,2),(87,0,0,0,'2021-02-08 20:13:07',2,2),(88,0,0,0,'2021-02-08 20:13:27',2,2),(89,0,0,0,'2021-02-08 20:15:03',2,2),(90,0,0,0,'2021-02-08 20:15:23',2,2);
/*!40000 ALTER TABLE `datoscampo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datostierra`
--

DROP TABLE IF EXISTS `datostierra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datostierra` (
  `iddatostierra` int(11) NOT NULL AUTO_INCREMENT,
  `humedadtierra` float NOT NULL,
  `fecha` datetime NOT NULL,
  `_idcampo` int(11) NOT NULL,
  `_usuario_idusuario` int(11) NOT NULL,
  PRIMARY KEY (`iddatostierra`,`_idcampo`,`_usuario_idusuario`),
  KEY `fk_datostierra_1_idx` (`_idcampo`,`_usuario_idusuario`),
  CONSTRAINT `fk_datostierra_1` FOREIGN KEY (`_idcampo`, `_usuario_idusuario`) REFERENCES `campo` (`idcampo`, `usuario_idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datostierra`
--

LOCK TABLES `datostierra` WRITE;
/*!40000 ALTER TABLE `datostierra` DISABLE KEYS */;
INSERT INTO `datostierra` VALUES (1,34.9,'2021-01-18 08:34:24',2,2),(2,50.2,'2021-01-18 10:34:24',2,2),(3,50.3,'2021-01-18 12:34:24',2,2),(4,50.1,'2021-01-18 14:34:24',2,2),(5,50.4,'2021-01-18 16:34:24',2,2),(6,50.3,'2021-01-18 18:34:24',2,2),(7,50.4,'2021-01-18 20:34:24',2,2),(8,10.4,'2021-01-19 08:00:35',2,2),(9,60.9,'2021-01-19 10:00:35',2,2),(10,60.5,'2021-01-19 12:00:35',2,2),(11,60.4,'2021-01-19 14:00:35',2,2),(12,61.6,'2021-01-19 16:00:35',2,2),(13,61.9,'2021-01-19 18:00:35',2,2),(14,61.5,'2021-01-19 20:00:35',2,2),(15,23.4,'2021-01-20 08:00:23',2,2),(16,55.3,'2021-01-20 10:00:23',2,2),(17,55.6,'2021-01-20 12:00:23',2,2),(18,55.1,'2021-01-20 14:00:23',2,2),(19,55.3,'2021-01-20 16:00:23',2,2),(20,56.8,'2021-01-20 18:00:23',2,2),(21,58.2,'2021-01-20 20:00:23',2,2),(22,13.6,'2021-01-21 08:01:53',2,2),(23,37.2,'2021-01-21 10:01:53',2,2),(24,37.1,'2021-01-21 12:01:53',2,2),(25,37.3,'2021-01-21 14:01:53',2,2),(26,37.2,'2021-01-21 16:01:53',2,2),(27,37.3,'2021-01-21 18:01:53',2,2),(28,37.7,'2021-01-21 20:01:53',2,2),(29,21.4,'2021-02-08 08:00:38',2,2),(30,70.2,'2021-02-08 10:00:38',2,2),(31,70.3,'2021-02-08 12:00:38',2,2),(32,70.1,'2021-02-08 14:00:38',2,2),(33,70.2,'2021-02-08 16:00:38',2,2),(34,70.5,'2021-02-08 18:00:38',2,2),(35,70.4,'2021-02-08 20:00:38',2,2),(70,7,'2021-02-08 20:00:30',2,2),(71,0,'2021-02-08 20:12:57',2,2),(72,0,'2021-02-08 20:13:17',2,2),(73,0,'2021-02-08 20:13:37',2,2),(74,0,'2021-02-08 20:14:53',2,2),(75,0,'2021-02-08 20:15:13',2,2),(76,0,'2021-02-08 20:15:33',2,2);
/*!40000 ALTER TABLE `datostierra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','admin'),(2,'david','casayork123'),(3,'alvart','casayork123');
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

-- Dump completed on 2021-02-15 14:20:19
