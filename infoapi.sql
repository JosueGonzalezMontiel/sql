-- MariaDB dump 10.19  Distrib 10.6.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: infoapi
-- ------------------------------------------------------
-- Server version	10.6.16-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auto`
--

DROP TABLE IF EXISTS `auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto` (
  `referencia` int(11) NOT NULL AUTO_INCREMENT,
  `auto` varchar(50) NOT NULL,
  `modelo` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `transmision` varchar(100) NOT NULL,
  `motor` varchar(100) NOT NULL,
  `n_motor` int(11) NOT NULL,
  `n_puertas` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `chasis` varchar(50) NOT NULL,
  `fecha_aprovacion` int(11) NOT NULL,
  `certificado` int(11) NOT NULL,
  PRIMARY KEY (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto`
--

LOCK TABLES `auto` WRITE;
/*!40000 ALTER TABLE `auto` DISABLE KEYS */;
INSERT INTO `auto` VALUES (2,'jetta',2006,'bicentenario','azul metalico',50000,'estandar','2.0 lts 115cv',343434,4,'9cplp','XXXX-AXXXCVV-XXX',20020306,2147483647),(3,'mazda',0,'string','string',0,'string','string',0,0,'string','string',0,0),(10,'truru',43,'string','string',43,'string','string',43,433,'string','string',434434,434),(13,'PORCHE',2006,'bicentenario','azul metalico',50000,'estandar','2.0 lts 115cv',343434,4,'9cplp','XXXX-AXXXCVV-XXX',20020306,2147483647),(14,'bmw 330i',2006,'bicentenario','azul metalico',50000,'estandar','2.0 lts 115cv',343434,4,'9cplp','XXXX-AXXXCVV-XXX',20020306,2147483647);
/*!40000 ALTER TABLE `auto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cp` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `numero_pagos` int(11) NOT NULL,
  `orden_envio` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cliente_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'nuevo','7777778','na','na','na',77777,'na',0,0),(2,'josue','6666','VIADUCTO TLALPAN NO 100','ARENAL TEPEPAN, ALCALDIA LALPAN.','CIUDAD DE MEXICO.',14610,'México',24,524),(8,'gus','222744553','userj','chino','sonora',45000,'mexico',23,1234),(12,'lalo','2233','string','string','string',0,'string',0,0),(16,'string','string','string','string','string',0,'string',0,0),(26,'enrique','99999','user','hola','sonora',45000,'mexico',23,1234),(28,'buibiu','88888899','string','string','string',0,'string',0,0),(36,'luna','8773','user','hola','sonora',45000,'mexico',23,1234),(38,'JJJJ','8777','OIJIO','POIJ','pojpoj',8777,'lknm',87,798),(42,'GOMEZ VELAZQUEZ MARGARITA,','342323523','VIADUCTO TLALPAN NO 100','ARENAL TEPEPAN, ALCALDIA LALPAN.','CIUDAD DE MEXICO.',14610,'México',0,0),(43,'Gabriel','2223456976','hdhdhd','hdhdhd','puebla',772290,'mexico',2,2);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `referencia_id` int(11) NOT NULL,
  `auto` varchar(50) NOT NULL,
  `modelo` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `transmision` varchar(100) NOT NULL,
  `motor` varchar(100) NOT NULL,
  `n_motor` int(11) NOT NULL,
  `n_puertas` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `chasis` varchar(50) NOT NULL,
  `fecha_aprovacion` int(11) NOT NULL,
  `certificado` int(11) NOT NULL,
  `id_cliente_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `numero` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Colonia` varchar(50) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `CP` int(11) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `numero_pagos` int(11) NOT NULL,
  `orden_envio` int(11) NOT NULL,
  `fecha` varchar(59) NOT NULL,
  `hora` varchar(50) NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE KEY `facturas_nombre` (`nombre`),
  KEY `facturas_referencia_id` (`referencia_id`),
  KEY `facturas_id_cliente_id` (`id_cliente_id`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`referencia_id`) REFERENCES `auto` (`referencia`),
  CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`id_cliente_id`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (3,2,'Jetta',2006,'Bicentenario','Azul Metálico',50000,'Estándar','2.0 lts 115cv',343434,4,'9CPLP','XXXX-AXXXCVV-XXX',20020306,2147483647,2,'Josue','222744553','dfwe','efw','efew',23333,'fwer',23,1234,'2024-06-21','10:00'),(16,10,'tsuru',2006,'Bicentenario','Azul Metálico',50000,'Estándar','2.0 lts 115cv',343434,4,'9CPLP','XXXX-AXXXCVV-XXX',20020306,2147483647,12,'lalo','222744553','dfwe','efw','efew',23333,'fwer',23,1234,'2024-06-21','10:00');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10,'alan','1'),(11,'jorge','11'),(12,'meli','3'),(13,'isra','2'),(14,'emmanuel@gmail.com','1234'),(16,'emmanuel@gmail.ww','12345');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-28  2:39:44
