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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armado`
--

LOCK TABLES `armado` WRITE;
/*!40000 ALTER TABLE `armado` DISABLE KEYS */;
INSERT INTO `armado` VALUES (1,1,'Clip Antirruido',6),(2,2,'Arandela Plástica',4),(3,5,'Tornillo M5',8),(4,6,'Clip de Presión',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inyectora`
--

LOCK TABLES `inyectora` WRITE;
/*!40000 ALTER TABLE `inyectora` DISABLE KEYS */;
INSERT INTO `inyectora` VALUES (1,'ENGEL 350','350T'),(2,'ARBURG 200','200T'),(3,'BATTENFELD 300','300T');
/*!40000 ALTER TABLE `inyectora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_insert_pieza`
--

DROP TABLE IF EXISTS `log_insert_pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_insert_pieza` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_pieza` int DEFAULT NULL,
  `nombre_pieza` varchar(100) DEFAULT NULL,
  `fecha_insert` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_insert_pieza`
--

LOCK TABLES `log_insert_pieza` WRITE;
/*!40000 ALTER TABLE `log_insert_pieza` DISABLE KEYS */;
INSERT INTO `log_insert_pieza` VALUES (1,1,'Paragolpe Delantero','2025-07-14 19:52:12'),(2,2,'Paragolpe Trasero','2025-07-14 19:52:12'),(3,3,'Mudguard Derecho','2025-07-14 19:52:12'),(4,4,'Embellecedor Lateral','2025-07-14 19:52:12'),(5,5,'IP (Instrument Panel)','2025-07-14 19:52:12'),(6,6,'Door Panel Izquierdo','2025-07-14 19:52:12'),(7,7,'Apoya Brazos','2025-07-14 19:52:12');
/*!40000 ALTER TABLE `log_insert_pieza` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (1,'Polipropileno','Petroquímica S.A.','Negro','Resistente a impactos',1),(2,'ABS','Plásticos Norte','Gris','Buen acabado',0),(3,'PP+EPDM','PoliSur','Negro Mate','Alta flexibilidad',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `molde`
--

LOCK TABLES `molde` WRITE;
/*!40000 ALTER TABLE `molde` DISABLE KEYS */;
INSERT INTO `molde` VALUES (1,'M-VW01','Molde paragolpes delantero VW'),(2,'M-VW02','Molde paragolpes trasero VW'),(3,'M-GM01','Molde IP Tracker'),(4,'M-GM02','Molde door panel Tracker');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
INSERT INTO `pieza` VALUES (1,1,'Paragolpe Delantero',4.50,1,1,1),(2,1,'Paragolpe Trasero',4.20,1,1,1),(3,1,'Mudguard Derecho',1.20,3,0,1),(4,1,'Embellecedor Lateral',0.80,2,1,0),(5,2,'IP (Instrument Panel)',6.00,2,1,1),(6,2,'Door Panel Izquierdo',3.20,3,1,1),(7,2,'Apoya Brazos',0.90,3,0,1);
/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_valida_peso_pieza` BEFORE INSERT ON `pieza` FOR EACH ROW begin
    if new.peso <= 0 then
        signal sqlstate '45000'
        set message_text = 'El peso de la pieza debe ser mayor a cero';
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_insert_pieza` AFTER INSERT ON `pieza` FOR EACH ROW begin
    insert into log_insert_pieza (id_pieza, nombre_pieza, fecha_insert)
    values (new.id_pieza, new.nombre_pieza, now());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pintura`
--

LOCK TABLES `pintura` WRITE;
/*!40000 ALTER TABLE `pintura` DISABLE KEYS */;
INSERT INTO `pintura` VALUES (1,1,'PU','Negro Brillante',1),(2,2,'PU','Negro Brillante',1),(3,4,'Epoxi','Gris Mate',0),(4,5,'Acrílica','Negro Texturado',1),(5,6,'Epoxi','Gris Claro',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso_inyeccion`
--

LOCK TABLES `proceso_inyeccion` WRITE;
/*!40000 ALTER TABLE `proceso_inyeccion` DISABLE KEYS */;
INSERT INTO `proceso_inyeccion` VALUES (1,1,1,1,225.00,82.00,35.00),(2,2,2,1,223.00,81.50,34.00),(3,5,3,2,210.00,78.00,28.00),(4,6,4,3,212.50,80.00,30.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Paragolpes VW Polo','Volkswagen','2024-01-05','2024-06-30'),(2,'IP Chevrolet Tracker','General Motors','2024-03-10','2024-08-15');
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
  `cantidad_necesaria` int DEFAULT NULL,
  PRIMARY KEY (`id_subcomponente`),
  KEY `id_armado` (`id_armado`),
  CONSTRAINT `sub_componentes_ibfk_1` FOREIGN KEY (`id_armado`) REFERENCES `armado` (`id_armado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_componentes`
--

LOCK TABLES `sub_componentes` WRITE;
/*!40000 ALTER TABLE `sub_componentes` DISABLE KEYS */;
INSERT INTO `sub_componentes` VALUES (1,1,'Espaciador Corto',2),(2,1,'Tope de goma',2),(3,2,'Tuerca M5',4),(4,3,'Arandela Metálica',8);
/*!40000 ALTER TABLE `sub_componentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_armado_completo`
--

DROP TABLE IF EXISTS `vista_armado_completo`;
/*!50001 DROP VIEW IF EXISTS `vista_armado_completo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_armado_completo` AS SELECT 
 1 AS `id_proyecto`,
 1 AS `nombre_pieza`,
 1 AS `componente_principal`,
 1 AS `subcomponente`,
 1 AS `cantidad_necesaria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_info_tecnica_pieza`
--

DROP TABLE IF EXISTS `vista_info_tecnica_pieza`;
/*!50001 DROP VIEW IF EXISTS `vista_info_tecnica_pieza`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_info_tecnica_pieza` AS SELECT 
 1 AS `nombre_pieza`,
 1 AS `nombre_material`,
 1 AS `modelo`,
 1 AS `tonelaje_presion`,
 1 AS `temperatura`,
 1 AS `presion`,
 1 AS `tiempo_ciclo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_pieza_material`
--

DROP TABLE IF EXISTS `vista_pieza_material`;
/*!50001 DROP VIEW IF EXISTS `vista_pieza_material`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pieza_material` AS SELECT 
 1 AS `nombre_pieza`,
 1 AS `nombre_material`,
 1 AS `proveedor`,
 1 AS `color`,
 1 AS `proveedor_local`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_proyecto_piezas`
--

DROP TABLE IF EXISTS `vista_proyecto_piezas`;
/*!50001 DROP VIEW IF EXISTS `vista_proyecto_piezas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_proyecto_piezas` AS SELECT 
 1 AS `id_proyecto`,
 1 AS `nombre_pieza`,
 1 AS `id_molde`,
 1 AS `numero_asset`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_qpiezas_color_proyecto`
--

DROP TABLE IF EXISTS `vista_qpiezas_color_proyecto`;
/*!50001 DROP VIEW IF EXISTS `vista_qpiezas_color_proyecto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_qpiezas_color_proyecto` AS SELECT 
 1 AS `id_proyecto`,
 1 AS `color`,
 1 AS `cantidad_piezas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'fabrica_autopartes'
--

--
-- Dumping routines for database 'fabrica_autopartes'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_cantidad_piezas_por_proyecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_cantidad_piezas_por_proyecto`(id_proj INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total INT;
    
    SELECT COUNT(*) INTO total
    FROM pieza
    WHERE id_proyecto = id_proj;

    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_requiere_armado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_requiere_armado`(id_pieza_input INT) RETURNS tinyint
    DETERMINISTIC
BEGIN
    DECLARE resultado TINYINT;

    SELECT requiere_armado INTO resultado
    FROM pieza
    WHERE id_pieza = id_pieza_input;

    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_detalle_proyecto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_detalle_proyecto`(in id_proyecto_input int)
begin
    select
        pr.nombre_proyecto,
        p.nombre_pieza,
        p.peso,
        m.nombre_material
    from proyecto pr
    join pieza p on pr.id_proyecto = p.id_proyecto
    join material m on p.id_material = m.id_material
    where pr.id_proyecto = id_proyecto_input;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_piezas_por_material` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_piezas_por_material`(in id_material_input int)
begin
    select
        p.id_pieza,
        p.nombre_pieza,
        m.nombre_material,
        m.color
    from pieza p
    join material m on p.id_material = m.id_material
    where m.id_material = id_material_input;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_armado_completo`
--

/*!50001 DROP VIEW IF EXISTS `vista_armado_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_armado_completo` AS select `p`.`id_proyecto` AS `id_proyecto`,`p`.`nombre_pieza` AS `nombre_pieza`,`a`.`componente` AS `componente_principal`,`s`.`nombre_componente` AS `subcomponente`,`s`.`cantidad_necesaria` AS `cantidad_necesaria` from ((`armado` `a` join `pieza` `p` on((`a`.`id_pieza` = `p`.`id_pieza`))) left join `sub_componentes` `s` on((`a`.`id_armado` = `s`.`id_armado`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_info_tecnica_pieza`
--

/*!50001 DROP VIEW IF EXISTS `vista_info_tecnica_pieza`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_info_tecnica_pieza` AS select `p`.`nombre_pieza` AS `nombre_pieza`,`m`.`nombre_material` AS `nombre_material`,`i`.`modelo` AS `modelo`,`i`.`tonelaje_presion` AS `tonelaje_presion`,`py`.`temperatura` AS `temperatura`,`py`.`presion` AS `presion`,`py`.`Tiempo_ciclo` AS `tiempo_ciclo` from (((`pieza` `p` join `material` `m` on((`p`.`id_material` = `m`.`id_material`))) join `proceso_inyeccion` `py` on((`p`.`id_pieza` = `py`.`id_pieza`))) join `inyectora` `i` on((`py`.`id_maquina_inyectora` = `i`.`id_maquina_inyectora`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_pieza_material`
--

/*!50001 DROP VIEW IF EXISTS `vista_pieza_material`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pieza_material` AS select `p`.`nombre_pieza` AS `nombre_pieza`,`m`.`nombre_material` AS `nombre_material`,`m`.`proveedor` AS `proveedor`,`m`.`color` AS `color`,`m`.`proveedor_local` AS `proveedor_local` from (`pieza` `p` join `material` `m` on((`p`.`id_material` = `m`.`id_material`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_proyecto_piezas`
--

/*!50001 DROP VIEW IF EXISTS `vista_proyecto_piezas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_proyecto_piezas` AS select `p`.`id_proyecto` AS `id_proyecto`,`pi`.`nombre_pieza` AS `nombre_pieza`,`piny`.`id_molde` AS `id_molde`,`m`.`numero_asset` AS `numero_asset` from (((`proyecto` `p` join `pieza` `pi` on((`p`.`id_proyecto` = `pi`.`id_proyecto`))) join `proceso_inyeccion` `piny` on((`pi`.`id_pieza` = `piny`.`id_pieza`))) join `molde` `m` on((`piny`.`id_molde` = `m`.`id_molde`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_qpiezas_color_proyecto`
--

/*!50001 DROP VIEW IF EXISTS `vista_qpiezas_color_proyecto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_qpiezas_color_proyecto` AS select `p`.`id_proyecto` AS `id_proyecto`,`pt`.`color` AS `color`,count(0) AS `cantidad_piezas` from (`pieza` `p` join `pintura` `pt` on((`p`.`id_pieza` = `pt`.`id_pieza`))) where (`p`.`requiere_pintura` = 1) group by `p`.`id_proyecto`,`pt`.`color` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-14 20:12:59
