-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: automoveis
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--Marleneeeeeeeeeee
-- Table structure for table `automoveis`
--

DROP TABLE IF EXISTS `automoveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automoveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo_id` int(11) DEFAULT NULL,
  `cor_id` int(11) DEFAULT NULL,
  `disponibilidade` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-model_idx` (`modelo_id`),
  KEY `fk-color_idx` (`cor_id`),
  CONSTRAINT `fk-color` FOREIGN KEY (`cor_id`) REFERENCES `cores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk-model` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automoveis`
--

LOCK TABLES `automoveis` WRITE;
/*!40000 ALTER TABLE `automoveis` DISABLE KEYS */;
INSERT INTO `automoveis` VALUES (1,15,2,0),(2,8,1,0),(3,1,3,1),(4,13,7,0),(5,4,4,1),(6,1,6,0),(7,9,4,1),(8,1,3,1),(9,6,4,0),(10,8,4,1),(11,4,1,1),(12,7,5,1),(13,4,7,1),(14,2,6,0),(15,13,1,1),(16,14,1,0),(17,7,2,1),(18,2,3,0),(19,1,7,1),(20,8,4,0),(21,3,7,0),(22,5,5,1),(23,11,1,1),(24,8,6,0),(25,7,5,0),(26,14,5,0),(27,3,3,1),(28,10,3,0),(29,11,2,1),(30,13,7,0),(31,1,4,1),(32,15,4,1),(33,12,7,0),(34,6,3,1),(35,8,7,1),(36,14,4,1),(37,5,3,1),(38,14,5,1),(39,13,3,1),(40,7,4,0),(41,1,5,1),(42,15,6,0),(43,15,5,0),(44,12,7,0),(45,9,7,1),(46,3,2,0),(47,1,2,1),(48,2,2,1),(49,4,2,1),(50,3,3,1),(51,8,4,1),(52,14,5,0),(53,1,4,0),(54,4,7,0),(55,5,6,1),(56,1,7,1),(57,6,2,0),(58,15,5,1),(59,11,7,1),(60,1,3,1),(61,12,5,0),(62,10,5,1),(63,9,4,0),(64,1,2,1),(65,4,3,1),(66,3,6,0),(67,14,4,1),(68,15,6,0),(69,12,4,0),(70,8,4,0),(71,3,4,0),(72,14,7,1),(73,15,3,0),(74,2,7,0),(75,4,4,0),(76,14,5,0),(77,15,4,1),(78,3,3,0),(79,6,7,0),(80,3,7,1),(81,3,3,1),(82,4,5,0),(83,12,7,1),(84,4,3,0),(85,12,7,0),(86,12,7,1),(87,10,4,1),(88,9,6,0),(89,7,4,1),(90,1,4,1),(91,5,5,1),(92,7,2,0),(93,3,6,0),(94,12,4,0),(95,11,2,0),(96,13,3,1),(97,5,2,0),(98,3,1,0),(99,4,2,0),(100,14,5,0);
/*!40000 ALTER TABLE `automoveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores` aqui adicionado
--

DROP TABLE IF EXISTS `cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores`
--

LOCK TABLES `cores` WRITE;
/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` VALUES (1,'vermelho'),(2,'verde'),(3,'preto'),(4,'branco'),(5,'cinzento'),(6,'azul'),(7,'amarelo');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'Alfa Romeo'),(2,'BMW'),(3,'Audi'),(4,'Ford'),(5,'Fiat'),(6,'Nissan'),(7,'Peugeot'),(8,'Mercedes'),(9,'Toyota');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelos`
--

DROP TABLE IF EXISTS `modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `fabricante-id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk-fabricante_idx` (`fabricante-id`),
  CONSTRAINT `fk-fabricante` FOREIGN KEY (`fabricante-id`) REFERENCES `fabricantes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelos`
--

LOCK TABLES `modelos` WRITE;
/*!40000 ALTER TABLE `modelos` DISABLE KEYS */;
INSERT INTO `modelos` VALUES (1,'Gulieta',1),(2,'320',2),(3,'120',2),(4,'A3',3),(5,'A4',3),(6,'Escort',4),(7,'Uno',5),(8,'Qashqai',6),(9,'Micra',6),(10,'106',7),(11,'308',7),(12,'Classe A',8),(13,'GLA',8),(14,'Corolla',9),(15,'Yaris',9);
/*!40000 ALTER TABLE `modelos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-17  0:30:16
