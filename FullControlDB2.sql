-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: full_control_db
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `almac_prod_frio_aud`
--

DROP TABLE IF EXISTS `almac_prod_frio_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almac_prod_frio_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `temp_heladera` int NOT NULL,
  `temp_camara` int NOT NULL,
  `temp_freezer` int NOT NULL,
  `almac_sectorizado` int NOT NULL,
  `produc_protegidos` int NOT NULL,
  `recip_limpios` int NOT NULL,
  `produc_vencidos` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almac_prod_frio_aud`
--

LOCK TABLES `almac_prod_frio_aud` WRITE;
/*!40000 ALTER TABLE `almac_prod_frio_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `almac_prod_frio_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria_bromatologia`
--

DROP TABLE IF EXISTS `auditoria_bromatologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_bromatologia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `usuario_nombre` varchar(45) NOT NULL,
  `usuario_rubro` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `infraestructura_puntaje` int NOT NULL,
  `equipamiento_puntaje` int NOT NULL,
  `res_alm_quim_puntaje` int NOT NULL,
  `higiene_personal_puntaje` int NOT NULL,
  `control_puntaje` int NOT NULL,
  `orden_higiene_puntaje` int NOT NULL,
  `almac_prod_frio_puntaje` int NOT NULL,
  `elab_alimentos_puntaje` int NOT NULL,
  `cond_externas_puntaje` int NOT NULL,
  `puntaje_total` int NOT NULL,
  `maximo_aplicable` int NOT NULL,
  `porcentaje_cumplimiento` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_bromatologia`
--

LOCK TABLES `auditoria_bromatologia` WRITE;
/*!40000 ALTER TABLE `auditoria_bromatologia` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditoria_bromatologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condiciones_externas_aud`
--

DROP TABLE IF EXISTS `condiciones_externas_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condiciones_externas_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `condicion_zona` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condiciones_externas_aud`
--

LOCK TABLES `condiciones_externas_aud` WRITE;
/*!40000 ALTER TABLE `condiciones_externas_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `condiciones_externas_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elaboracion_alimentos_aud`
--

DROP TABLE IF EXISTS `elaboracion_alimentos_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elaboracion_alimentos_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contam_cruzada` int NOT NULL,
  `etiquetado_productos` int NOT NULL,
  `operacion_alimentos` int NOT NULL,
  `riesgo_contaminacion` int NOT NULL,
  `uten_diferenciados` int NOT NULL,
  `descong_adec` int NOT NULL,
  `trapo_lavandina` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elaboracion_alimentos_aud`
--

LOCK TABLES `elaboracion_alimentos_aud` WRITE;
/*!40000 ALTER TABLE `elaboracion_alimentos_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `elaboracion_alimentos_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipamiento_aud`
--

DROP TABLE IF EXISTS `equipamiento_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipamiento_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado_heladeras` int NOT NULL,
  `estado_freezer` int NOT NULL,
  `estado_camaras` int NOT NULL,
  `estado_uten_cocina` int NOT NULL,
  `estado_electrodomesticos` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipamiento_aud`
--

LOCK TABLES `equipamiento_aud` WRITE;
/*!40000 ALTER TABLE `equipamiento_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipamiento_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `higiene_personal_aud`
--

DROP TABLE IF EXISTS `higiene_personal_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `higiene_personal_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `carnet_sanitario` int NOT NULL,
  `estado_uniformes` int NOT NULL,
  `personal_sin_accesorios` int NOT NULL,
  `personal_aspecto` int NOT NULL,
  `estado_lavamanos` int NOT NULL,
  `uso_sanitizante` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `higiene_personal_aud`
--

LOCK TABLES `higiene_personal_aud` WRITE;
/*!40000 ALTER TABLE `higiene_personal_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `higiene_personal_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infraestructura_aud`
--

DROP TABLE IF EXISTS `infraestructura_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infraestructura_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estado_piso` int NOT NULL,
  `estado_paredes` int NOT NULL,
  `estado_mesas` int NOT NULL,
  `estado_estanterias` int NOT NULL,
  `estado_canalizaciones` int NOT NULL,
  `estado_iluminacion` int NOT NULL,
  `estado_desagues` int NOT NULL,
  `estado_termotanque` int NOT NULL,
  `juntas` int NOT NULL,
  `camara_piletas` int NOT NULL,
  `obsevaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infraestructura_aud`
--

LOCK TABLES `infraestructura_aud` WRITE;
/*!40000 ALTER TABLE `infraestructura_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `infraestructura_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_higiene_aud`
--

DROP TABLE IF EXISTS `orden_higiene_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_higiene_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orden_deposito` int NOT NULL,
  `limpieza_grl_deposito` int NOT NULL,
  `limpieza_grl_local` int NOT NULL,
  `limpieza_prof_local` int NOT NULL,
  `orden_grl_local` int NOT NULL,
  `orden_higiene_mesada` int NOT NULL,
  `higiene_utensilos` int NOT NULL,
  `higiene_heladeras` int NOT NULL,
  `higiene_cocina` int NOT NULL,
  `higiene_ductos` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_higiene_aud`
--

LOCK TABLES `orden_higiene_aud` WRITE;
/*!40000 ALTER TABLE `orden_higiene_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `orden_higiene_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_almac_quim_aud`
--

DROP TABLE IF EXISTS `res_almac_quim_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `res_almac_quim_aud` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cesto_tapa` int NOT NULL,
  `estado_recip_residuos` int NOT NULL,
  `ident_quimicos` int NOT NULL,
  `almac_quimicos` int NOT NULL,
  `tipo_quimicos` int NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_almac_quim_aud`
--

LOCK TABLES `res_almac_quim_aud` WRITE;
/*!40000 ALTER TABLE `res_almac_quim_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `res_almac_quim_aud` ENABLE KEYS */;
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

-- Dump completed on 2022-03-02 13:29:32
