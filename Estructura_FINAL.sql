-- Creación de base de datos
CREATE DATABASE  IF NOT EXISTS `fabrica_autopartes` 
USE `fabrica_autopartes`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: fabrica_autopartes
-- ------------------------------------------------------
-- Server version	8.0.42












--
-- Table structure for table `armado`
--

DROP TABLE IF EXISTS `armado`;



-- Creación de tabla
-- Estructura de tabla `armado`
CREATE TABLE `armado` (
  `id_armado` int NOT NULL AUTO_INCREMENT,
  `id_pieza` int DEFAULT NULL,
  `componente` varchar(100) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id_armado`),
  KEY `id_pieza` (`id_pieza`),
  CONSTRAINT `armado_ibfk_1` FOREIGN KEY (`id_pieza`) REFERENCES `pieza` (`id_pieza`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `inyectora`
--

DROP TABLE IF EXISTS `inyectora`;



-- Creación de tabla
-- Estructura de tabla `inyectora`
CREATE TABLE `inyectora` (
  `id_maquina_inyectora` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(100) DEFAULT NULL,
  `tonelaje_presion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_maquina_inyectora`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `log_insert_pieza`
--

DROP TABLE IF EXISTS `log_insert_pieza`;



-- Creación de tabla
-- Estructura de tabla `log_insert_pieza`
CREATE TABLE `log_insert_pieza` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `id_pieza` int DEFAULT NULL,
  `nombre_pieza` varchar(100) DEFAULT NULL,
  `fecha_insert` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;



-- Creación de tabla
-- Estructura de tabla `material`
CREATE TABLE `material` (
  `id_material` int NOT NULL AUTO_INCREMENT,
  `nombre_material` varchar(100) NOT NULL,
  `proveedor` varchar(100) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `propiedades` varchar(100) DEFAULT NULL,
  `proveedor_local` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `molde`
--

DROP TABLE IF EXISTS `molde`;



-- Creación de tabla
-- Estructura de tabla `molde`
CREATE TABLE `molde` (
  `id_molde` int NOT NULL AUTO_INCREMENT,
  `numero_asset` varchar(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_molde`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;



-- Creación de tabla
-- Estructura de tabla `pieza`
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

;
DELIMITER ;
;
DELIMITER ;



-- Creación de tabla
-- Estructura de tabla `pintura`
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


--
-- Table structure for table `proceso_inyeccion`
--

DROP TABLE IF EXISTS `proceso_inyeccion`;



-- Creación de tabla
-- Estructura de tabla `proceso_inyeccion`
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


--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;



-- Creación de tabla
-- Estructura de tabla `proyecto`
CREATE TABLE `proyecto` (
  `id_proyecto` int NOT NULL AUTO_INCREMENT,
  `nombre_proyecto` varchar(100) NOT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `sub_componentes`
--

DROP TABLE IF EXISTS `sub_componentes`;



-- Creación de tabla
-- Estructura de tabla `sub_componentes`
CREATE TABLE `sub_componentes` (
  `id_subcomponente` int NOT NULL AUTO_INCREMENT,
  `id_armado` int DEFAULT NULL,
  `nombre_componente` text,
  `cantidad_necesaria` int DEFAULT NULL,
  PRIMARY KEY (`id_subcomponente`),
  KEY `id_armado` (`id_armado`),
  CONSTRAINT `sub_componentes_ibfk_1` FOREIGN KEY (`id_armado`) REFERENCES `armado` (`id_armado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Dumping routines for database 'fabrica_autopartes'
--
















--
-- Final view structure for view `vista_info_tecnica_pieza`
--













--
-- Final view structure for view `vista_pieza_material`
--













--
-- Final view structure for view `vista_proyecto_piezas`
--













--
-- Final view structure for view `vista_qpiezas_color_proyecto`
--






















-- Dump completed on 2025-07-31 19:02:11
