CREATE DATABASE  IF NOT EXISTS `fabrica_autopartes` 
USE `fabrica_autopartes`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: fabrica_autopartes
-- ------------------------------------------------------
-- Server version	8.0.42












--
-- Dumping data for table `armado`
--

LOCK TABLES `armado` WRITE;

-- Inserción de datos en tabla `armado`
INSERT INTO `armado` VALUES (1,1,'Clip Antirruido',6),(2,2,'Arandela Plástica',4),(3,5,'Tornillo M5',8),(4,6,'Clip de Presión',5);

UNLOCK TABLES;

--
-- Dumping data for table `inyectora`
--

LOCK TABLES `inyectora` WRITE;

-- Inserción de datos en tabla `inyectora`
INSERT INTO `inyectora` VALUES (1,'ENGEL 350','350T'),(2,'ARBURG 200','200T'),(3,'BATTENFELD 300','300T');

UNLOCK TABLES;

--
-- Dumping data for table `log_insert_pieza`
--

LOCK TABLES `log_insert_pieza` WRITE;

-- Inserción de datos en tabla `log_insert_pieza`
INSERT INTO `log_insert_pieza` VALUES (1,1,'Paragolpe Delantero','2025-07-14 19:52:12'),(2,2,'Paragolpe Trasero','2025-07-14 19:52:12'),(3,3,'Mudguard Derecho','2025-07-14 19:52:12'),(4,4,'Embellecedor Lateral','2025-07-14 19:52:12'),(5,5,'IP (Instrument Panel)','2025-07-14 19:52:12'),(6,6,'Door Panel Izquierdo','2025-07-14 19:52:12'),(7,7,'Apoya Brazos','2025-07-14 19:52:12');

UNLOCK TABLES;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;

-- Inserción de datos en tabla `material`
INSERT INTO `material` VALUES (1,'Polipropileno','Petroquímica S.A.','Negro','Resistente a impactos',1),(2,'ABS','Plásticos Norte','Gris','Buen acabado',0),(3,'PP+EPDM','PoliSur','Negro Mate','Alta flexibilidad',1);

UNLOCK TABLES;

--
-- Dumping data for table `molde`
--

LOCK TABLES `molde` WRITE;

-- Inserción de datos en tabla `molde`
INSERT INTO `molde` VALUES (1,'M-VW01','Molde paragolpes delantero VW'),(2,'M-VW02','Molde paragolpes trasero VW'),(3,'M-GM01','Molde IP Tracker'),(4,'M-GM02','Molde door panel Tracker');

UNLOCK TABLES;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;

-- Inserción de datos en tabla `pieza`
INSERT INTO `pieza` VALUES (1,1,'Paragolpe Delantero',4.50,1,1,1),(2,1,'Paragolpe Trasero',4.20,1,1,1),(3,1,'Mudguard Derecho',1.20,3,0,1),(4,1,'Embellecedor Lateral',0.80,2,1,0),(5,2,'IP (Instrument Panel)',6.00,2,1,1),(6,2,'Door Panel Izquierdo',3.20,3,1,1),(7,2,'Apoya Brazos',0.90,3,0,1);

UNLOCK TABLES;
;
DELIMITER ;
;
DELIMITER ;

-- Inserción de datos en tabla `pintura`
INSERT INTO `pintura` VALUES (1,1,'PU','Negro Brillante',1),(2,2,'PU','Negro Brillante',1),(3,4,'Epoxi','Gris Mate',0),(4,5,'Acrílica','Negro Texturado',1),(5,6,'Epoxi','Gris Claro',0);

UNLOCK TABLES;

--
-- Dumping data for table `proceso_inyeccion`
--

LOCK TABLES `proceso_inyeccion` WRITE;

-- Inserción de datos en tabla `proceso_inyeccion`
INSERT INTO `proceso_inyeccion` VALUES (1,1,1,1,225.00,82.00,35.00),(2,2,2,1,223.00,81.50,34.00),(3,5,3,2,210.00,78.00,28.00),(4,6,4,3,212.50,80.00,30.00);

UNLOCK TABLES;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;

-- Inserción de datos en tabla `proyecto`
INSERT INTO `proyecto` VALUES (1,'Paragolpes VW Polo','Volkswagen','2024-01-05','2024-06-30'),(2,'IP Chevrolet Tracker','General Motors','2024-03-10','2024-08-15');

UNLOCK TABLES;

--
-- Dumping data for table `sub_componentes`
--

LOCK TABLES `sub_componentes` WRITE;

-- Inserción de datos en tabla `sub_componentes`
INSERT INTO `sub_componentes` VALUES (1,1,'Espaciador Corto',2),(2,1,'Tope de goma',2),(3,2,'Tuerca M5',4),(4,3,'Arandela Metálica',8);

UNLOCK TABLES;

--
-- Dumping events for database 'fabrica_autopartes'
--

--
-- Dumping routines for database 'fabrica_autopartes'
--














-- Dump completed on 2025-07-31 19:06:43
