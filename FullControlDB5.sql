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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditorias`
--

LOCK TABLES `auditorias` WRITE;
/*!40000 ALTER TABLE `auditorias` DISABLE KEYS */;
INSERT INTO `auditorias` VALUES (1,123,'2022-03-03 00:00:00',4,NULL,NULL,NULL),(2,123,'2022-03-03 00:00:00',4,NULL,NULL,NULL),(34,1,'2022-03-03 16:52:06',1,1,33,'cerrada'),(66,1,'2022-03-08 21:29:28',1,1,21,'cerrada'),(65,1,'2022-03-08 20:30:59',1,1,33,'cerrada'),(63,1,'2022-03-06 16:56:02',1,1,28,'cerrado'),(46,1,'2022-03-03 21:55:09',1,1,31,'cerrada'),(62,1,'2022-03-04 18:50:35',1,1,37,'cerrado'),(52,1,'2022-03-04 15:15:00',1,1,10,'cerrada'),(54,1,'2022-03-04 15:17:19',1,1,23,'cerrada'),(64,1,'2022-03-08 12:27:18',1,1,32,'undefined'),(61,1,'2022-03-04 16:20:49',1,1,16,'cerrada');
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
-- Table structure for table `normativas`
--

DROP TABLE IF EXISTS `normativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `normativas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `url` varchar(255) NOT NULL,
  `detalle` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `normativas`
--

LOCK TABLES `normativas` WRITE;
/*!40000 ALTER TABLE `normativas` DISABLE KEYS */;
INSERT INTO `normativas` VALUES (1,'Art. 18 inc. 15 C.A.A.','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','15. Los locales ocupados por establecimientos, usinas, fábricas, depósitos, almacenes por mayor y menor y despachos de productos alimenticios, dispondrán de agua potable en cantidad suficiente y las piletas necesarias para el lavado de los recipientes, etc, dotadas de desagües conectados a la red cloacal o pozos sumideros reglamentarios. Deben mantenerse en todo momento en buen estado de conservación, presentación y aseo, y poseerán pisos construidos con materiales impermeables. La autoridad sanitaria podrá ordenar el aseo, limpieza, blanqueo y pintura de los mismos, cuando así lo considere conveniente, como también la colocación de friso impermeable de 1,80 m. de altura, donde corresponda. Del mismo modo, las máquinas, útiles y demás materiales existentes deberán conservarse en satisfactorias condiciones de higiene'),(2,'Res. Nº 80/96  4.1.3.17','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Los locales de los establecimientos deberán tener iluminación natural y/o artificial que posibiliten la realización de las tareas y no comprometa la higiene de los alimentos. Las fuentes de luz artificial que estén suspendidas o aplicadas y que se encuentren sobre la zona de manipulación de alimentos en cualquiera de las fases de producción deben ser de tipo inocuo y estar protegidas contra roturas. La iluminación no deberá alterar los colores. Las instalaciones eléctricas deberán ser empotradas o exteriores y en este caso estar perfectamente recubiertas por caños aislantes y adosadas a paredes y techos, no permitiéndose cables colgantes sobre las zonas de manipulación de alimentos. El Organismo Competente podrá autorizar otra forma de instalación o modificación de las instalaciones aquí descriptas cuando así se justifique.'),(3,'Res. Nº 80/96  4.1.3.7','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Los pisos, deberán ser de materiales resistentes al tránsito, impermeables, inabsorbentes, lavables y antideslizantes; no tendrán grietas y serán fáciles de limpiar y desinfectar. Los líquidos deberán escurrir hacia las bocas de los sumideros (tipo sifoide ó similar) impidiendo la acumulación en los pisos. Las paredes, se construirán o revestirán con materiales no absorbentes y lavables, y serán de color claro. Hasta una altura apropiada para las operaciones, deberán ser lisas y sin grietas y fáciles de limpiar y desinfectar. Los ángulos entre las paredes, entre las paredes y los pisos, y entre las paredes y los techos o cielorrasos deberán ser de fácil limpieza. En los planos deberá indicarse la altura del friso que será impermeable. Los techos o cielorrasos, deberán estar construidos y/o acabados de manera que se impida la acumulación de suciedad y se reduzca al mínimo la condensación y la formación de mohos y deberán ser fáciles de limpiar. Las ventanas y otras aberturas, deberán estar construidas de manera que se evite la acumulación de suciedad y las que se comuniquen al exterior deberán estar provistas de protección antiplagas. Las protecciones deberán ser de fácil limpieza y buena conservación. Las puertas, deberán ser de material no absorbente y de fácil limpieza. Las escaleras montacargas y estructuras auxiliares, como plataformas, escaleras de mano y rampas, deberán estar situadas y construidas de manera que no sean causa de contaminación.'),(4,'Res. Nº 80/96 4.1.3.19','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Deberá disponerse de medios para el almacenamiento de los deshechos y materias no comestibles antes de su eliminación del establecimiento, de manera que se impida el ingreso de plagas a los deshechos de materias no comestibles y se evite la contaminación de las materias primas, del alimento, del agua potable, del equipo y de los edificios o vías de acceso en los locales.'),(5,'Art. 20 C.A.A','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Los obreros y empleados de las fábricas y comercios de alimentos deberán cuidar en todo momento su higiene personal, a cuyo efecto los propietarios de los establecimientos deben proveer las instalaciones y elementos necesarios, tales como:\n\n1. Guardarropas y lavabos separados para cada sexo. Para el lavado de manos se suministrarán algunos de los siguientes agentes de limpieza:\n\na) Jabón líquido, en polvo, en escamas, en dispensadores de fácil limpieza y desinfección.\n\nb) Jabón sólido en soportes y/o jaboneras que permitan un adecuado drenaje.\n\nc) Jabones de uso individual sólidos, en crema, en pasta u otras formas individuales de presentación.\n\nd) Productos sustitutivos alternativos presentados en las formas indicadas en a), b) y c) que sean adecuados para el lavado de manos en conformidad con la autoridad sanitaria nacional.\n\nLos jabones deberán cumplir los siguientes requisitos:\n\nI) Tener aprobación de la autoridad sanitaria.\n\nII) Responder a las siguientes exigencias microbiológicas:\n\ni) Ausencia de Pseudomonas aeruginosa y Staphylococcus aureus en:\n\n•  12 cm 2 de la superficie del jabón sólido investigado por el método de impresión en medio sólido.\n\n•  1 g de jabón líquido, en polvo, en escamas, en crema, otra forma de presentación similar investigado por enriquecimiento en medio selectivo.\n\nii) Los jabones sólidos deberán cumplir   además con el ensayo oficial de retención de gérmenes del 80%.\n\nPara el secado de manos se proveerá de algunos de los siguientes elementos:\n\na) Toallas de papel de color claro individuales en dispensadores adecuados de fácil limpieza y desinfección.\n\nb) Toallas de tela de color claro de uso individual o suministradas por aparatos dispensadores adecuados que deberán poseer una separación funcional entre las porciones usadas de toallas y las  porciones limpias disponibles, y que serán de fácil limpieza y desinfección, quedando expresamente prohibidas  las toallas sinfín que permitan su disponibilidad continua.\n\nc) Secadores de aire caliente.\n\nLas toallas de papel y las de tela deberán responder a la siguiente exigencia microbiológica: Staphylococcus aureus : ausencia en una superficie de 12 cm 2 por el método de impresión en medio sólido.\n\nLas toallas de tela provistas de acuerdo con las disposiciones del Inc b) deberán llevar en la parte final disponible la inscripción \"NO USAR ESTA PORCION\" o similar, en caracteres bien visibles de color rojo.\n\n2. Surtidores (grifo, tanque, barril, etc.) de agua potable en proporción y capacidad adecuada al número de personas.\n\n3. Retretes aislados de los locales de trabajo con piso y paredes impermeables hasta 1,80 metros de altura, uno por cada 20 obreros y para cada sexo. Los orinales se instalarán en la proporción de uno por cada 40 obreros. Es obligación el lavado de las manos con agua y jabón cada vez que se haga uso del retrete, lo que se hará conocer al personal con  carteles permanentes.\n\n4. El lavado de las manos del personal se hará todas las veces que sea necesario para cumplir con prácticas operatorias higiénicas. Las rozaduras y cortaduras de pequeña importancia en las manos deberán curarse y vendarse convenientemente con vendaje impermeable adecuado. Deberá disponerse de un botiquín de urgencia para atender los casos de esta índole.\n\n5. Los guantes que se empleen en el manejo de los alimentos se mantendrán en perfectas condiciones de higiene y ofrecerán la debida resistencia. Estarán fabricados con material impermeable, excepto en aquellos casos que su empleo sea inapropiado o incompatible con las tareas a realizar.'),(6,'Res. Nº 80/96 5.2.1','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Todos los productos de limpieza y desinfección deben ser aprobados previamente a su uso por el control de la empresa, identificados y guardados en lugar adecuado fuera de las áreas de manipulación de alimentos. Además deberán ser autorizados por los organismos competentes.'),(7,'Art. 21 C.A.A','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','A) El Personal de fábricas y comercios de alimentación, cualquiera fuese su índole o categoría, a los efectos de su admisión y permanencia en los mismos, debe estar provisto de Libreta Sanitaria Nacional Unica expedida por la Autoridad Sanitaria Competente y con validez en todo el territorio nacional. Las Autoridades Bromatológicas Provinciales implementarán dentro de su jurisdicción el sistema de otorgamiento de las Libretas Sanitarias en un todo de acuerdo al modelo que establece la Autoridad Sanitaria Nacional./n//n/B) La libreta sanitaria tendrá vigencia por un plazo de un (1) año./n//n/C) A los efectos de la obtención de la Libreta Sanitaria el solicitante deberá someterse a los siguientes análisis rutinarios:/n//n/1) Examen clínico completo haciendo especial hincapié en enfermedades infectocontagiosas, patologías dermatológicas y patologías bucofaríngeas./n//n/2) radiografía de tórax;/n//n/3) hemograma completo y enzimas hepáticas;/n//n/4) análisis físico-químico de orina;/n//n/5) ensayo de VDRL;/n//n/Para la renovación de la libreta sanitaria el solicitante deberá someterse nuevamente a los mencionados exámenes./n//n/A los fines de la obtención de la Libreta Sanitaria se aceptarán los exámenes realizados a los operarios en cumplimiento de las obligaciones impuestas por las Leyes N° 19587 y su decreto reglamentario N° 351/79 y Ley N° 24557./n//n/D) La Dirección de la empresa, de acuerdo a lo establecido en la Resolución N° 587/97 (M.S. y A.S.), que ha incorporado al Código Alimentario Argentino, la Resolución GMC 80/96, deberá, dentro del plazo de 1 (uno) año, contado a partir del momento en que las personas obtengan la Libreta Sanitaria, efectuar la capacitación primaria del personal involucrado en la manipulación de alimentos, materias primas, utensilios y equipos a través de un curso instructivo. El mismo deberá contar como mínimo con los conocimientos de enfermedades transmitidas por alimentos, conocimiento de medidas higiénico-sanitarias básicas para la manipulación correcta de alimentos; criterios y concientización del riesgo involucrado en el manejo de las materias primas, aditivos, ingredientes, envases, utensilios y equipos durante el proceso de elaboración./n//n/Los cursos podrán ser dictados por capacitadores de entidades Oficiales, Privadas o los de las empresas. El contenido de los cursos y los capacitadores deberán ser reconocidos por la Autoridad Sanitaria Jurisdiccional./n//n/La constancia de participación y evaluación del curso será obligatoria para proceder a la primera renovación anual de la libreta sanitaria./n//n/E) La responsabilidad de que el manipulador cumplimente en forma adecuada el trámite para la obtención de la libreta sanitaria es del empleador./n//n/El personal que presente heridas infectadas, llagas, úlceras o cualquier dolencia o enfermedad transmisible por los alimentos (en especial diarrea), no deberá trabajar en ningún departamento de una fábrica o comercio de alimentos cuando exista posibilidad de que pueda contaminar los alimentos y/o los materiales que hayan de estar en contacto con los mismos, con organismos patógenos o toxicogénicos. Será el empleador el responsable de que el empleado no retorne a su ocupación habitual hasta tanto desaparezcan las causas que motivaron tal separación./n//n/Las libretas sanitarias deberán tenerse en depósito en la administración del establecimiento para su exhibición a las autoridades sanitarias, cuando éstas así lo soliciten, con excepción de los empleados que trabajan fuera de los establecimientos quienes deberán llevarlas consigo; sin perjuicio que el empleador es depositario de dichas libretas./n//n/La Libreta Sanitaria Nacional podrá ser requerida por la Autoridad Sanitaria toda vez que lo considere necesario, en virtud de lo estipulado en la Ley N° 18284./n//n/En caso de robo, deterioro o pérdida de la libreta, deberá solicitarse un nuevo ejemplar de la misma dentro de un plazo de siete días hábiles, previa presentación de la denuncia policial pertinente./n//n/La Libreta Sanitaria Nacional Unica deberá contener los siguientes datos mínimos:/n//n/1- fotografía tamaño carnet actualizada;/n//n/2- datos filiatorios del titular: nombre, apellido, domicilio, tipo y número de documento;/n//n/3- espacio reservado para asentar las renovaciones, donde se indicará la fecha de vencimiento y autoridad que expida el estado APTO;/n//n/4- espacio reservado para dejar constancia de vacunaciones obligatorias y/n//n/5- espacio reservado para eventuales inhabilitaciones temporarias para manipular alimentos y motivo diagnosticado de las mismas (citando la/s pruebas diagnósticas confirmatorias);/n//n/Se aprueba el modelo de Libreta Sanitaria Nacional Unica de acuerdo con el modelo que se adjunta como ANEXO I de la presente Resolución.'),(8,'Res. Nº 80/96  6.6','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Toda persona que esté de servicio en una zona de manipulación de alimentos deberá mantener una esmerada higiene personal y en todo momento durante el trabajo deberá llevar ropa protectora, calzado adecuado y cubrecabeza. Todos estos elementos deberán ser lavables, a menos que sean desechables y mantenerse limpios de acuerdo a la naturaleza del trabajo que se desempeñe. Durante la manipulación de materias primas y alimentos, deberán retirarse todos y cualquier objeto de adorno.'),(9,'Art. 18, inc. 7','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Los productos elaborados, como las primeras materias y los envases, deberán tenerse en soportes o estantes adecuados y en caso de estibas, éstas serán hechas sobre tarimas o encatrados convenientemente separados del piso a una altura no menor de 0,14 metros.'),(10,'Res. Nº 80/96 4.1.3.10','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm',' Los insumos, materias primas y productos terminados deberán ubicarse sobre tarimas o encatrados separados de las paredes para permitir la correcta higienización de la zona.'),(11,'Res. Nº 80/96 5.4','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Los subproductos deberán almacenarse de manera adecuada y aquellos subproductos resultantes de la elaboración que fuesen vehículo de contaminación, deberán retirarse de las zonas de trabajo cuantas veces sea necesario.'),(12,'Res. Nº 80/96 5.3','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Cada establecimiento deberá asegurar su limpieza y desinfección. No se deberán utilizar, en los procedimientos de higiene, sustancias odorizantes y/o desodorantes en cualquiera de sus formas en las zonas de manipulación de los alimentos a los efectos de evitar la contaminación por los mismos y que no se enmascaren los olores. El personal debe tener pleno conocimiento de la importancia de la contaminación y de los riesgos que entraña, debiendo estar bien capacitado en técnicas de limpieza.'),(13,'Res. Nº 80/96  4.1.4.1','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Todo el equipo y los utensilios empleados en las zonas de manipulación de alimentos y que puedan entrar en contacto con los alimentos deben ser de un material que no transmita sustancias tóxicas, olores ni sabores y sea no absorbente y resistente a la corrosión y capaz de resistir repetidas operaciones de limpieza y desinfección. Las superficies habrán de ser lisas y estar exentas de hoyos y grietas y otras imperfecciones que puedan comprometer la higiene de los alimentos o sean fuentes de contaminación. Deberá evitarse el uso de madera y otros materiales que no puedan limpiarse y desinfectarse adecuadamente, a menos que se tenga la certeza de que su empleo no será una fuente de contaminación. Se deberá evitar el uso de diferentes materiales de tal manera que pueda producirse corrosión por contacto.'),(14,'Res. Nº 80/96 4.1.1','http://www.alimentosargentinos.gob.ar/contenido/marco/CAA/Capitulo_02.htm','Los establecimientos deberán estar situados preferiblemente en zonas exentas de olores objetables, humo, polvo y otros contaminantes y no expuestas a inundaciones.');
/*!40000 ALTER TABLE `normativas` ENABLE KEYS */;
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
INSERT INTO `puntajes` VALUES (1,'2','Se da cumplimiento total al parametro'),(2,'1','Se da cumplimiento parcial o con observaciones al parametro'),(3,'0','No se cumple el requisito'),(4,'-1','El parametro evaluado no es aplicable en el local');
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
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntos_requisitos_auditoria`
--

LOCK TABLES `puntos_requisitos_auditoria` WRITE;
/*!40000 ALTER TABLE `puntos_requisitos_auditoria` DISABLE KEYS */;
INSERT INTO `puntos_requisitos_auditoria` VALUES (1,2,39,29),(2,1,39,30),(3,0,39,31),(4,1,39,32),(5,2,39,29),(6,1,39,30),(7,0,39,31),(8,0,39,32),(9,2,39,26),(10,1,39,27),(11,2,39,29),(12,1,39,30),(13,0,39,31),(14,0,39,32),(15,2,34,26),(16,1,34,27),(17,2,44,26),(18,1,44,27),(19,2,45,26),(20,0,45,27),(21,2,46,12),(22,1,46,13),(23,2,46,14),(24,1,46,15),(25,0,46,16),(26,2,46,26),(27,2,46,27),(28,2,47,22),(29,1,47,23),(30,0,47,24),(31,0,47,25),(32,2,48,26),(33,2,48,27),(34,2,21,22),(35,1,21,23),(36,1,21,24),(37,1,21,25),(38,2,39,17),(39,1,39,18),(40,2,39,19),(41,2,39,20),(42,2,39,21),(43,2,10,26),(44,1,10,27),(45,2,51,17),(46,1,51,18),(47,1,51,19),(48,1,51,20),(49,1,51,21),(50,2,52,26),(51,1,52,27),(52,2,53,26),(53,2,53,27),(54,2,54,12),(55,2,54,13),(56,2,54,14),(57,1,54,15),(58,0,54,16),(59,2,55,26),(60,2,55,27),(61,1,56,29),(62,1,56,30),(63,2,56,31),(64,2,56,32),(65,0,56,33),(66,2,56,34),(67,2,56,35),(68,0,56,36),(69,2,56,37),(70,0,56,38),(71,2,57,17),(72,2,57,18),(73,0,57,19),(74,0,57,20),(75,0,57,21),(76,2,58,26),(77,2,58,27),(78,1,59,26),(79,1,59,27),(80,2,60,29),(81,2,60,30),(82,2,60,31),(83,2,60,32),(84,2,60,33),(85,2,60,34),(86,2,60,35),(87,2,60,36),(88,2,60,37),(89,2,60,38),(90,2,21,26),(91,2,21,27),(92,2,61,12),(93,2,61,13),(94,0,61,14),(95,0,61,15),(96,1,61,16),(97,2,16,29),(98,2,16,30),(99,1,16,31),(100,1,16,32),(101,1,16,33),(102,1,16,34),(103,1,16,35),(104,1,16,36),(105,2,16,37),(106,0,16,38),(107,2,16,12),(108,2,16,13),(109,2,16,14),(110,2,16,15),(111,2,16,16),(112,2,16,22),(113,2,16,23),(114,2,16,24),(115,1,16,25),(116,1,32,1),(117,1,32,2),(118,2,32,3),(119,2,32,4),(120,2,32,5),(121,2,32,6),(122,2,32,7),(123,2,32,8),(124,2,32,9),(125,0,32,10),(126,0,61,1),(127,0,61,2),(128,1,61,3),(129,1,61,4),(130,0,61,5),(131,0,61,6),(132,0,61,7),(133,1,61,8),(134,2,61,9),(135,1,61,10),(136,2,61,26),(137,0,61,27),(138,2,61,26),(139,1,61,27),(140,0,62,26),(141,0,62,27),(142,1,62,53),(143,2,62,46),(144,2,62,47),(145,1,62,48),(146,1,62,49),(147,1,62,50),(148,1,62,51),(149,1,62,52),(150,-1,63,26),(151,1,63,27),(152,-1,61,46),(153,-1,61,47),(154,-1,61,48),(155,1,61,49),(156,0,61,50),(157,1,61,51),(158,-1,61,52),(159,2,61,17),(160,0,61,18),(161,2,61,19),(162,2,61,20),(163,2,61,21),(164,2,63,46),(165,2,63,47),(166,1,63,48),(167,2,63,49),(168,0,63,50),(169,-1,63,51),(170,1,63,52),(171,2,63,1),(172,1,63,2),(173,2,63,3),(174,1,63,4),(175,1,63,5),(176,1,63,6),(177,1,63,7),(178,2,63,8),(179,0,63,9),(180,-1,63,10),(181,2,63,12),(182,1,63,13),(183,2,63,14),(184,2,63,15),(185,2,63,16),(186,2,63,17),(187,2,63,18),(188,2,63,19),(189,1,63,20),(190,2,63,21),(191,2,63,53),(192,2,63,22),(193,2,63,23),(194,2,63,54),(195,1,63,55),(196,0,63,56),(197,0,63,57),(198,0,63,26),(199,2,63,27),(200,-1,63,39),(201,-1,63,40),(202,-1,63,41),(203,-1,63,42),(204,-1,63,43),(205,-1,63,44),(206,-1,63,45),(207,2,63,46),(208,2,63,47),(209,2,63,48),(210,2,63,49),(211,2,63,50),(212,2,63,51),(213,1,63,52),(214,2,46,26),(215,2,46,27),(216,2,64,26),(217,0,64,27),(218,2,65,22),(219,1,65,23),(220,0,65,54),(221,-1,65,55),(222,0,65,56),(223,1,65,57),(224,2,66,22),(225,1,66,23),(226,0,66,54),(227,0,66,55),(228,0,66,56),(229,-1,66,57);
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
  `normativa_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `normativa_id` (`normativa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos`
--

LOCK TABLES `requisitos` WRITE;
/*!40000 ALTER TABLE `requisitos` DISABLE KEYS */;
INSERT INTO `requisitos` VALUES (1,'Estado de pisos',1,'1'),(12,'Estado de heladeras (oxidos, burletes, etc)',2,'1'),(2,'Estado de paredes',1,'1'),(3,'Estado de mesas y mesadas',1,'1'),(4,'Estado de estanterias',1,'1'),(5,'Estado de canalizaciones (energia, etc)',1,'2'),(6,'Estado de iluminacion',1,'2'),(7,'Estado de desagues',1,'3'),(8,'Termotanque (T° operativa)',1,'1'),(9,'Juntas (piletas, mesadas, estanterias, etc)',1,'3'),(10,'Camara debajo de piletas',1,'3'),(13,'Estado de freezer (oxidos, burletes, etc)',2,'1'),(14,'Estado de camaras (oxidos, burletes, etc)',2,'1'),(15,'Estado de utensillos de cocina',2,'1'),(16,'Estado de electrodomesticos',2,'1'),(17,'¿Poseen cestos de residuos con tapa?',3,'4'),(18,'Estado de recipientes de residuos',3,'4'),(19,'Producto quimicos identificados',3,'5'),(20,'Almacenamiento de quimicos',3,'5'),(21,'Tipo de quimicos adecuados',3,'6'),(22,'Carnet sanitario vigente',4,'7'),(23,'Estado de los uniformes (completos y limpios)',4,'8'),(54,'Personal sin uso de accesorios (esmalte, anillos, pulseras, etc)',4,'8'),(26,'Ausencia de plagas, insectos y roedores',5,'9'),(27,'Cerfificado desinfeccion vigente',5,'10'),(29,'Orden de deposito (productos protegidos y estibados)',6,'11'),(30,'Limpieza general del deposito (estanterias, pisos, estibas, etc)',6,'11'),(31,'Limpieza general del local',6,'11'),(32,'Limpieza profunda del local',6,'11'),(33,'Orden general del local',6,'11'),(34,'Orden e higiene de mesadas, bajomesadas, y estanterias',6,'12'),(35,'Higiene de utensillos y electrodomesticos de uso',6,'12'),(36,'Higiene de heladeras, freezers y camara',6,'12'),(37,'Higiene en cocina, freidora, hornos, etc',6,'12'),(38,'Higiene de campana y ductos',6,'12'),(39,'Temperaturas de las heladeras ≤ a 5°',7,'1'),(40,'Temperatura de camara ≤ a 5°',7,'1'),(41,'Temperatura de freezer ≤ a 18C°',7,'1'),(42,'Almacenamiento sectorizado (crudos, cocidos, frutas-verd, postres)',7,'1'),(43,'Productos debidamente protegidos (recipientes plasticos/acero)',7,'1'),(44,'Recipientes de contenedores limpios y sin deterioros',7,'1'),(45,'No existen productos vencidos, alterados o deteriorados',7,'1'),(46,'Evitar riesgos de contaminacion cruzada',8,'1'),(47,'Etiquetado de productos (fecha elab, venc, etc)',8,'1'),(48,'Los circuitos en operaciones de elaboracion de alimentos',8,'1'),(49,'No generan riesgos de contaminacion',8,'1'),(50,'Utensillos diferenciados por proceso',8,'13'),(51,'Descongelamiento adecuado (no a T° ambiente)',8,'1'),(52,'Trapos, rejillas utilizados se colocan en remojoen un recip. con lavandina o sanitizante',8,'1'),(53,'¿El establecimiento está ubicado en zonas exentas de polvos, humos, olores y otros contaminantes y fuera de lugares inundables? ',9,'14'),(55,'Personal cuida su aspecto (uñas cortas, s/ barba, heridas protegidas)',4,'8'),(56,'Estado de lavamanos (incluye papel y jabon)',4,'5'),(57,'Uso de sanitizantes para manos (alcohol en gel)',4,'5');
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
INSERT INTO `usuarios` VALUES (1,'luana','info@mantik.tech',2147483647,'fefrfefr','admin','jujuy 43','Tecnología'),(33,'Lucas Carnicería','',0,'12345678','cliente','jose javier diaz 1547','carnicería'),(32,'Carla Panaderia ','',0,'12345678','cliente','av. ohiggins 4350','panadería'),(5,'Full Control','cifullcontrol@gmail.com',2147483647,'fullc1234','admin','',''),(6,'Carnicería Marcelo 1','',0,'12345678','cliente','av. ohiggins 5870','carnicería'),(7,'Carnicería Marcelo 2','',0,'12345678','cliente','san antonio 3985','carnicería'),(8,'Polleria Sergio','',0,'12345678','cliente','baigorri 644','polleria'),(9,'Sándwich 2GO','',0,'12345678','cliente','ayacucho 93','sandwichería'),(10,'Carnicería Hernán','',0,'12345678','cliente','olimpia 1720','carnicería'),(11,'Carnicería Roxana','',0,'12345678','cliente','av. armada argentina 106','carnicería'),(12,'Carnicería Lucho','',0,'12345678','cliente','centro comercial barrio SEP','carnicería'),(13,'Carnicería Adrian','',0,'12345678','cliente','sampacho 2982','carnicería'),(14,'Cremolatti','',0,'12345678','cliente','elias yofre 1294','heladería/bar'),(15,'Carnicería Andrea','',0,'12345678','cliente','celso barrio 2390','carnicería'),(16,'Carnicería Alma Morena','',0,'12345678','cliente','calle publica f 6159','carnicería'),(17,'Carnicería Tati','',0,'12345678','cliente','av. ohiggins 2611','carnicería'),(18,'La Tana','',0,'12345678','cliente','pedro arata 2524','panificadora'),(19,'Pollería Marcos','',0,'12345678','cliente','pueyrredon 168','polleria'),(20,'Despensa Pupita','',0,'12345678','cliente','santa rosa 2000','despensa'),(21,'Almacen de las artes','',0,'12345678','cliente','marcelo t. de alvear 820','sandwicheria'),(22,'Dietetica Pacha Mia','',0,'12345678','cliente','27 de abril 340','dietética'),(23,'Minimercado ','',0,'12345678','cliente','obispo salguero 201','carnicería'),(24,'Hamburgueseria Tadeo','',0,'12345678','cliente','punilla 2071','hamburguesería'),(25,'Carnicería Pedro','',0,'12345678','cliente','av. alem 820','carnicería'),(26,'Iberia Bar','',0,'12345678','cliente','david luque 6','bar'),(27,'Carnicería cherubini','',0,'12345678','cliente','av. ohiggins 6790','carnicería'),(28,'Bar Stella','',0,'12345678','cliente','ricardo rojas 7434','bar'),(29,'Krause S.A.S.','',0,'12345678','cliente','rondeau 196','panadería'),(30,'Like Burguer','',0,'12345678','cliente','arturo capdevilla 39','hamburguesería'),(31,'Sushi Roll','',0,'12345678','cliente','av. recta martinolli 5170','bar'),(34,'Like produccion ','',0,'12345678','cliente','roberto payro 4736','centro productivo'),(35,'Like General Paz','',0,'12345678','cliente','sarmiento1322','hambuerguesería'),(36,'Don Chacho','',0,'12345678','cliente','av. recta martinolli 5197','carnicería'),(37,'Bar Blas','',0,'12345678','cliente','obispo salguero 712','bar'),(38,'Mercadito Santa Rosa','',0,'12345678','cliente','rancagua 7500','carnicería'),(39,'Carnicería Ramon','',0,'12345678','cliente','av. velez sarfield 3206','carnicería');
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

-- Dump completed on 2022-03-08 21:56:42
