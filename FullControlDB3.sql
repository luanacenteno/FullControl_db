-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: full_control_db
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
-- Table structure for table `auditorias`
--

DROP TABLE IF EXISTS `auditorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `fecha` datetime NOT NULL,
  `maximo_aplicable` int NOT NULL,
  `servicio_id` int DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `servicio_id` (`servicio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditorias`
--

LOCK TABLES `auditorias` WRITE;
/*!40000 ALTER TABLE `auditorias` DISABLE KEYS */;
INSERT INTO `auditorias` VALUES (1,123,'2022-03-03 00:00:00',4,NULL,NULL,NULL),(2,123,'2022-03-03 00:00:00',4,NULL,NULL,NULL),(3,1,'2022-03-03 00:00:00',1,1,2,NULL),(4,1,'2022-03-03 00:00:00',1,1,2,NULL),(5,1,'2022-03-03 00:00:00',1,1,2,NULL),(6,1,'2022-03-03 13:47:03',1,1,2,NULL),(7,1,'2022-03-03 13:48:35',1,1,2,NULL),(8,1,'2022-03-03 13:50:52',1,1,2,NULL),(9,1,'2022-03-03 13:51:03',1,1,2,NULL),(10,1,'2022-03-03 13:51:46',1,1,2,NULL),(11,1,'2022-03-03 13:54:52',1,1,2,NULL),(12,1,'2022-03-03 13:57:33',1,1,2,NULL),(13,1,'2022-03-03 14:00:00',1,1,2,NULL),(14,1,'2022-03-03 14:00:20',1,1,2,NULL),(15,1,'2022-03-03 14:21:40',1,1,2,NULL),(16,1,'2022-03-03 14:25:48',1,1,2,NULL),(17,1,'2022-03-03 14:27:45',1,1,2,NULL),(18,1,'2022-03-03 14:28:41',1,1,2,NULL),(19,1,'2022-03-03 14:28:46',1,1,2,NULL),(20,1,'2022-03-03 14:29:40',1,1,2,NULL),(21,1,'2022-03-03 14:33:54',1,1,2,NULL),(22,1,'2022-03-03 14:34:34',1,1,2,NULL),(23,1,'2022-03-03 15:34:54',1,1,2,NULL),(24,1,'2022-03-03 16:04:30',1,1,2,NULL),(25,1,'2022-03-03 16:27:27',1,1,2,NULL),(26,1,'2022-03-03 16:37:59',1,1,2,NULL),(27,1,'2022-03-03 16:43:09',1,1,2,NULL),(28,1,'2022-03-03 16:43:55',1,1,2,NULL),(29,1,'2022-03-03 16:45:30',1,1,2,NULL),(30,1,'2022-03-03 16:48:37',1,1,2,NULL),(31,1,'2022-03-03 16:49:09',1,1,2,NULL),(32,1,'2022-03-03 16:50:20',1,1,2,NULL),(33,1,'2022-03-03 16:51:41',1,1,2,NULL),(34,1,'2022-03-03 16:52:06',1,1,33,'abierta'),(35,1,'2022-03-03 16:53:01',1,1,2,'abierto'),(44,1,'2022-03-03 21:34:43',1,1,2,NULL),(45,1,'2022-03-03 21:44:42',1,1,32,'abierta'),(46,1,'2022-03-03 21:55:09',1,1,31,'abierta'),(47,1,'2022-03-04 14:13:39',1,1,32,'abierta'),(50,1,'2022-03-04 14:37:33',1,1,21,'abierta'),(52,1,'2022-03-04 15:15:00',1,1,10,'abierta'),(54,1,'2022-03-04 15:17:19',1,1,23,'abierta'),(58,1,'2022-03-04 15:22:54',1,1,9,'abierta'),(60,1,'2022-03-04 16:13:44',1,1,21,'abierta'),(61,1,'2022-03-04 16:20:49',1,1,16,'abierta');
/*!40000 ALTER TABLE `auditorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'INFRAESTRUCTURA'),(2,'EQUIPAMIENTO'),(3,'RES Y ALMAC QUIM'),(4,'HIGIENE PERSONAL'),(5,'CONTROL'),(6,'ORDEN E HIGIENE'),(7,'ALMAC PROD DE FRIO'),(8,'ELABORACION DE ALIMENTOS'),(9,'COND EXTERNAS');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntajes`
--

DROP TABLE IF EXISTS `puntajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntajes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `valor` varchar(2) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntajes`
--

LOCK TABLES `puntajes` WRITE;
/*!40000 ALTER TABLE `puntajes` DISABLE KEYS */;
INSERT INTO `puntajes` VALUES (1,'2','Se da cumplimiento total al parametro'),(2,'1','Se da cumplimiento parcial o con observaciones al parametro'),(3,'0','No se cumple el requisito'),(4,'NA','El parametro evaluado no es aplicable en el local');
/*!40000 ALTER TABLE `puntajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntos_requisitos_auditoria`
--

DROP TABLE IF EXISTS `puntos_requisitos_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntos_requisitos_auditoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `puntaje` int NOT NULL,
  `auditoria_id` int NOT NULL,
  `requisito_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `auditoria_id` (`auditoria_id`),
  KEY `requisito_id` (`requisito_id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntos_requisitos_auditoria`
--

LOCK TABLES `puntos_requisitos_auditoria` WRITE;
/*!40000 ALTER TABLE `puntos_requisitos_auditoria` DISABLE KEYS */;
INSERT INTO `puntos_requisitos_auditoria` VALUES (1,2,39,29),(2,1,39,30),(3,0,39,31),(4,1,39,32),(5,2,39,29),(6,1,39,30),(7,0,39,31),(8,0,39,32),(9,2,39,26),(10,1,39,27),(11,2,39,29),(12,1,39,30),(13,0,39,31),(14,0,39,32),(15,2,34,26),(16,1,34,27),(17,2,44,26),(18,1,44,27),(19,2,45,26),(20,0,45,27),(21,2,46,12),(22,1,46,13),(23,2,46,14),(24,1,46,15),(25,0,46,16),(26,2,46,26),(27,2,46,27),(28,2,47,22),(29,1,47,23),(30,0,47,24),(31,0,47,25),(32,2,48,26),(33,2,48,27),(34,2,21,22),(35,1,21,23),(36,1,21,24),(37,1,21,25),(38,2,39,17),(39,1,39,18),(40,2,39,19),(41,2,39,20),(42,2,39,21),(43,2,10,26),(44,1,10,27),(45,2,51,17),(46,1,51,18),(47,1,51,19),(48,1,51,20),(49,1,51,21),(50,2,52,26),(51,1,52,27),(52,2,53,26),(53,2,53,27),(54,2,54,12),(55,2,54,13),(56,2,54,14),(57,1,54,15),(58,0,54,16),(59,2,55,26),(60,2,55,27),(61,1,56,29),(62,1,56,30),(63,2,56,31),(64,2,56,32),(65,0,56,33),(66,2,56,34),(67,2,56,35),(68,0,56,36),(69,2,56,37),(70,0,56,38),(71,2,57,17),(72,2,57,18),(73,0,57,19),(74,0,57,20),(75,0,57,21),(76,2,58,26),(77,2,58,27),(78,1,59,26),(79,1,59,27),(80,2,60,29),(81,2,60,30),(82,2,60,31),(83,2,60,32),(84,2,60,33),(85,2,60,34),(86,2,60,35),(87,2,60,36),(88,2,60,37),(89,2,60,38),(90,2,21,26),(91,2,21,27),(92,2,61,12),(93,2,61,13),(94,0,61,14),(95,0,61,15),(96,1,61,16),(97,2,16,29),(98,2,16,30),(99,1,16,31),(100,1,16,32),(101,1,16,33),(102,1,16,34),(103,1,16,35),(104,1,16,36),(105,2,16,37),(106,0,16,38),(107,2,16,12),(108,2,16,13),(109,2,16,14),(110,2,16,15),(111,2,16,16),(112,2,16,22),(113,2,16,23),(114,2,16,24),(115,1,16,25),(116,1,32,1),(117,1,32,2),(118,2,32,3),(119,2,32,4),(120,2,32,5),(121,2,32,6),(122,2,32,7),(123,2,32,8),(124,2,32,9),(125,0,32,10);
/*!40000 ALTER TABLE `puntos_requisitos_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitos`
--

DROP TABLE IF EXISTS `requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisitos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `categoria_id` (`categoria_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos`
--

LOCK TABLES `requisitos` WRITE;
/*!40000 ALTER TABLE `requisitos` DISABLE KEYS */;
INSERT INTO `requisitos` VALUES (1,'Estado de pisos',1),(12,'Estado de heladeras (oxidos, burletes, etc)',2),(2,'Estado de paredes',1),(3,'Estado de mesas y mesadas',1),(4,'Estado de estanterias',1),(5,'Estado de canalizaciones (energia, etc)',1),(6,'Estado de iluminacion',1),(7,'Estado de desagues',1),(8,'Termotanque (T° operativa)',1),(9,'Juntas (piletas, mesadas, estanterias, etc)',1),(10,'Camara debajo de piletas',1),(13,'Estado de freezer (oxidos, burletes, etc)',2),(14,'Estado de camaras (oxidos, burletes, etc)',2),(15,'Estado de utensillos de cocina',2),(16,'Estado de electrodomesticos',2),(17,'¿Poseen cestos de residuos con tapa?',3),(18,'Estado de recipientes de residuos',3),(19,'Producto quimicos identificados',3),(20,'Almacenamiento de quimicos',3),(21,'Tipo de quimicos adecuados',3),(22,'Carnet sanitario vigente',4),(23,'Estado de los uniformes (completos y limpios)',4),(24,'Carnet sanitario vigente',4),(25,'Estado de los uniformes (completos y limpios)',4),(26,'Ausencia de plagas, insectos y roedores',5),(27,'Cerfificado desinfeccion vigente',5),(29,'Orden de deposito (productos protegidos y estibados)',6),(30,'Limpieza general del deposito (estanterias, pisos, estibas, etc)',6),(31,'Limpieza general del local',6),(32,'Limpieza profunda del local',6),(33,'Orden general del local',6),(34,'Orden e higiene de mesadas, bajomesadas, y estanterias',6),(35,'Higiene de utensillos y electrodomesticos de uso',6),(36,'Higiene de heladeras, freezers y camara',6),(37,'Higiene en cocina, freidora, hornos, etc',6),(38,'Higiene de campana y ductos',6),(39,'Temperaturas de las heladeras ≤ a 5°',7),(40,'Temperatura de camara ≤ a 5°',7),(41,'Temperatura de freezer ≤ a 18C°',7),(42,'Almacenamiento sectorizado (crudos, cocidos, frutas-verd, postres)',7),(43,'Productos debidamente protegidos (recipientes plasticos/acero)',7),(44,'Recipientes de contenedores limpios y sin deterioros',7),(45,'No existen productos vencidos, alterados o deteriorados',7),(46,'Evitar riesgos de contaminacion cruzada',8),(47,'Etiquetado de productos (fecha elab, venc, etc)',8),(48,'Los circuitos en operaciones de elaboracion de alimentos',8),(49,'No generan riesgos de contaminacion',8),(50,'Utensillos diferenciados por proceso',8),(51,'Descongelamiento adecuado (no a T° ambiente)',8),(52,'Trapos, rejillas utilizados se colocan en remojoen un recip. con lavandina o sanitizante',8),(53,'¿El establecimiento está ubicado en zonas exentas de polvos, humos, olores y otros contaminantes y fuera de lugares inundables? ',9);
/*!40000 ALTER TABLE `requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (40,'Bromatología');
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int NOT NULL,
  `pass` varchar(45) NOT NULL,
  `rol` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `rubro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'luana','info@mantik.tech',2147483647,'fefrfefr','usuario','jujuy 43','carniceria'),(33,'Lucas Carnicería','',0,'12345678','cliente','jose javier diaz 1547','carnicería'),(32,'Carla Panaderia ','',0,'12345678','cliente','av. ohiggins 4350','panadería'),(5,'Full Control','cifullcontrol@gmail.com',2147483647,'fullc1234','admin','',''),(6,'Carnicería Marcelo 1','',0,'12345678','cliente','av. ohiggins 5870','carnicería'),(7,'Carnicería Marcelo 2','',0,'12345678','cliente','san antonio 3985','carnicería'),(8,'Polleria Sergio','',0,'12345678','cliente','baigorri 644','polleria'),(9,'Sándwich 2GO','',0,'12345678','cliente','ayacucho 93','sandwichería'),(10,'Carnicería Hernán','',0,'12345678','cliente','olimpia 1720','carnicería'),(11,'Carnicería Roxana','',0,'12345678','cliente','av. armada argentina 106','carnicería'),(12,'Carnicería Lucho','',0,'12345678','cliente','centro comercial barrio SEP','carnicería'),(13,'Carnicería Adrian','',0,'12345678','cliente','sampacho 2982','carnicería'),(14,'Cremolatti','',0,'12345678','cliente','elias yofre 1294','heladería/bar'),(15,'Carnicería Andrea','',0,'12345678','cliente','celso barrio 2390','carnicería'),(16,'Carnicería Alma Morena','',0,'12345678','cliente','calle publica f 6159','carnicería'),(17,'Carnicería Tati','',0,'12345678','cliente','av. ohiggins 2611','carnicería'),(18,'La Tana','',0,'12345678','cliente','pedro arata 2524','panificadora'),(19,'Pollería Marcos','',0,'12345678','cliente','pueyrredon 168','polleria'),(20,'Despensa Pupita','',0,'12345678','cliente','santa rosa 2000','despensa'),(21,'Almacen de las artes','',0,'12345678','cliente','marcelo t. de alvear 820','sandwicheria'),(22,'Dietetica Pacha Mia','',0,'12345678','cliente','27 de abril 340','dietética'),(23,'Minimercado ','',0,'12345678','cliente','obispo salguero 201','carnicería'),(24,'Hamburgueseria Tadeo','',0,'12345678','cliente','punilla 2071','hamburguesería'),(25,'Carnicería Pedro','',0,'12345678','cliente','av. alem 820','carnicería'),(26,'Iberia Bar','',0,'12345678','cliente','david luque 6','bar'),(27,'Carnicería cherubini','',0,'12345678','cliente','av. ohiggins 6790','carnicería'),(28,'Bar Stella','',0,'12345678','cliente','ricardo rojas 7434','bar'),(29,'Krause S.A.S.','',0,'12345678','cliente','rondeau 196','panadería'),(30,'Like Burguer','',0,'12345678','cliente','arturo capdevilla 39','hamburguesería'),(31,'Sushi Roll','',0,'12345678','cliente','av. recta martinolli 5170','bar'),(34,'Like produccion ','',0,'12345678','cliente','roberto payro 4736','centro productivo'),(35,'Like General Paz','',0,'12345678','cliente','sarmiento1322','hambuerguesería'),(36,'Don Chacho','',0,'12345678','cliente','av. recta martinolli 5197','carnicería'),(37,'Bar Blas','',0,'12345678','cliente','obispo salguero 712','bar'),(38,'Mercadito Santa Rosa','',0,'12345678','cliente','rancagua 7500','carnicería'),(39,'Carnicería Ramon','',0,'12345678','cliente','av. velez sarfield 3206','carnicería');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-04 17:26:13
