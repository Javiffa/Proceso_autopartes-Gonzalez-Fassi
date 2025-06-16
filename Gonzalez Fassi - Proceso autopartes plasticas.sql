CREATE DATABASE  IF NOT EXISTS `fabrica_autopartes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fabrica_autopartes`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: fabrica_autopartes
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `armado`
--

DROP TABLE IF EXISTS `armado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `armado` (
  `id_armado` int NOT NULL AUTO_INCREMENT,
  `id_pieza` int DEFAULT NULL,
  `componente` varchar(100) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_armado`),
  KEY `id_pieza` (`id_pieza`),
  CONSTRAINT `armado_ibfk_1` FOREIGN KEY (`id_pieza`) REFERENCES `pieza` (`id_pieza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armado`
--

LOCK TABLES `armado` WRITE;
/*!40000 ALTER TABLE `armado` DISABLE KEYS */;
/*!40000 ALTER TABLE `armado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inyectora`
--

DROP TABLE IF EXISTS `inyectora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inyectora` (
  `id_maquina_inyectora` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `tonelaje_presion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_maquina_inyectora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inyectora`
--

LOCK TABLES `inyectora` WRITE;
/*!40000 ALTER TABLE `inyectora` DISABLE KEYS */;
/*!40000 ALTER TABLE `inyectora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `id_material` int NOT NULL AUTO_INCREMENT,
  `nombre_material` varchar(100) NOT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `propiedades` varchar(100) DEFAULT NULL,
  `proveedor_local` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `molde`
--

DROP TABLE IF EXISTS `molde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `molde` (
  `id_molde` int NOT NULL AUTO_INCREMENT,
  `numero_asset` varchar(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_molde`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `molde`
--

LOCK TABLES `molde` WRITE;
/*!40000 ALTER TABLE `molde` DISABLE KEYS */;
/*!40000 ALTER TABLE `molde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pieza` (
  `id_pieza` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `nombre_pieza` varchar(100) NOT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `id_material` int DEFAULT NULL,
  `requiere_pintura` tinyint(1) DEFAULT NULL,
  `requiere_armado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_pieza`),
  KEY `id_proyecto` (`id_proyecto`),
  KEY `id_material` (`id_material`),
  CONSTRAINT `pieza_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`),
  CONSTRAINT `pieza_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pintura`
--

DROP TABLE IF EXISTS `pintura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pintura` (
  `id_pintura` int NOT NULL AUTO_INCREMENT,
  `id_pieza` int DEFAULT NULL,
  `base` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `clear` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_pintura`),
  KEY `id_pieza` (`id_pieza`),
  CONSTRAINT `pintura_ibfk_1` FOREIGN KEY (`id_pieza`) REFERENCES `pieza` (`id_pieza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pintura`
--

LOCK TABLES `pintura` WRITE;
/*!40000 ALTER TABLE `pintura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pintura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso_inyeccion`
--

DROP TABLE IF EXISTS `proceso_inyeccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proceso_inyeccion` (
  `id_proceso_inyeccion` int NOT NULL AUTO_INCREMENT,
  `id_pieza` int DEFAULT NULL,
  `id_molde` int DEFAULT NULL,
  `id_maquina_inyectora` int DEFAULT NULL,
  `temperatura` decimal(10,2) DEFAULT NULL,
  `presion` decimal(10,2) DEFAULT NULL,
  `Tiempo_ciclo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_proceso_inyeccion`),
  KEY `id_pieza` (`id_pieza`),
  KEY `id_molde` (`id_molde`),
  KEY `id_maquina_inyectora` (`id_maquina_inyectora`),
  CONSTRAINT `proceso_inyeccion_ibfk_1` FOREIGN KEY (`id_pieza`) REFERENCES `pieza` (`id_pieza`),
  CONSTRAINT `proceso_inyeccion_ibfk_2` FOREIGN KEY (`id_molde`) REFERENCES `molde` (`id_molde`),
  CONSTRAINT `proceso_inyeccion_ibfk_3` FOREIGN KEY (`id_maquina_inyectora`) REFERENCES `inyectora` (`id_maquina_inyectora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso_inyeccion`
--

LOCK TABLES `proceso_inyeccion` WRITE;
/*!40000 ALTER TABLE `proceso_inyeccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `proceso_inyeccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id_proyecto` int NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(100) NOT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_componentes`
--

DROP TABLE IF EXISTS `sub_componentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_componentes` (
  `id_subcomponente` int NOT NULL AUTO_INCREMENT,
  `id_armado` int DEFAULT NULL,
  `nombre_componente` text,
  `cantidad_necesaria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_subcomponente`),
  KEY `id_armado` (`id_armado`),
  CONSTRAINT `sub_componentes_ibfk_1` FOREIGN KEY (`id_armado`) REFERENCES `armado` (`id_armado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_componentes`
--

LOCK TABLES `sub_componentes` WRITE;
/*!40000 ALTER TABLE `sub_componentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_componentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-15 20:33:08
