CREATE DATABASE  IF NOT EXISTS `trailerflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trailerflix`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trailerflix
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) NOT NULL,
  PRIMARY KEY (`idPersona`),
  UNIQUE KEY `idPersona` (`idPersona`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (90,'Adam Nagaitis'),(35,'Adeel Akhtar'),(23,'Aidan Gallagher'),(102,'Alana Cavanaugh'),(192,'Alice Braga'),(177,'Alicia Vikander'),(154,'Amy Manson'),(73,'Amybeth McNulty'),(130,'Angus Macfadyen'),(25,'Anya Taylor-Joy'),(125,'Awkwafina'),(152,'Benjamin Sokolow'),(134,'Bill Hader'),(133,'Bill Skarsgård'),(40,'Brett Cullen'),(84,'Bruce Harwood'),(184,'Bryce Dallas Howard'),(209,'Burn Gorman'),(206,'Cailee Spaeny'),(146,'Caitriona Balfe'),(9,'Camila Mendes'),(57,'Candice Patton'),(14,'Carl Weathers'),(55,'Carlos Valdes'),(8,'Casey Cott'),(138,'Chadwick Boseman'),(193,'Charlie Tahan'),(29,'Chloe Pirrie'),(16,'Chris Bartlett'),(43,'Chris Evans'),(45,'Chris Hemsworth'),(114,'Chris Messina'),(185,'Chris Pratt'),(144,'Christian Bale'),(1,'Claire Fox'),(199,'Claire Foy'),(182,'Claire Selby'),(105,'Colin Farrell'),(106,'Common'),(181,'Corey Johnson'),(202,'Corey Stoll'),(76,'Corrine Koslo'),(68,'Courteney Cox'),(77,'Dalila Bela'),(141,'Danai Gurira'),(143,'Daniel Kaluuya'),(56,'Danielle Panabaker'),(194,'Dash Mihok'),(20,'David Castañeda'),(80,'David Duchovny'),(167,'David Harbour'),(70,'David Schwimmer'),(178,'Domhnall Gleeson'),(157,'Dominic Mafham'),(121,'Dwayne Johnson'),(95,'Ed Harris'),(24,'Elliot Page'),(48,'Emilia Clarke'),(153,'Emily Bayiokos'),(87,'Emily Watson'),(197,'Emma Thompson'),(21,'Emmy Raver-Lampman'),(132,'Enver Gjokaj'),(91,'Evan Rachel Wood'),(110,'Ewan McGregor'),(166,'Florence Pugh'),(39,'Frances Conroy'),(183,'Gana Bayarsaikhan'),(107,'Geena Davis'),(150,'Génesis Rodríguez'),(74,'Geraldine James'),(18,'Giancarlo Esposito'),(79,'Gillian Anderson'),(54,'Grant Gustin'),(165,'Gwyneth Paltrow'),(27,'Harry Melling'),(6,'Helena Bonham Carter'),(32,'Henry Cavill'),(108,'Ioan Gruffudd'),(186,'Irrfan Khan'),(136,'Isaiah Mustafa'),(123,'Jack Black'),(135,'James McAvoy'),(158,'James Weber Brown'),(30,'Janina Elkin'),(85,'Jared Harris'),(200,'Jason Clarke'),(137,'Jay Ryan'),(173,'Jeff Daniels'),(93,'Jeffrey Wright'),(67,'Jennifer Aniston'),(164,'Jennifer Ehle'),(47,'Jeremy Renner'),(58,'Jesse L. Martin'),(103,'Jessica Chastain'),(89,'Jessie Buckley'),(60,'Jim Parsons'),(207,'Jing Tian'),(36,'Joaquin Phoenix'),(204,'John Boyega'),(104,'John Malkovich'),(61,'Johnny Galecki'),(149,'Jon Bernthal'),(131,'Jorja Fox'),(147,'Josh Lucas'),(162,'Jude Law'),(190,'Judy Greer'),(112,'Jurnee Smollett'),(62,'Kaley Cuoco'),(124,'Karen Gillan'),(176,'Kate Mara'),(128,'Kate Walsh'),(163,'Kate Winslet'),(100,'Kerry Bishé'),(122,'Kevin Hart'),(51,'Kit Harington'),(172,'Kristen Wiig'),(64,'Kunal Nayyar'),(201,'Kyle Chandler'),(161,'Laurence Fishburne'),(97,'Lee Pace'),(49,'Lena Headey'),(119,'Lia Williams'),(7,'Lili Reinhart'),(69,'Lisa Kudrow'),(159,'Lorina Kamburova'),(34,'Louis Partridge'),(78,'Lucas Jade Zumann'),(155,'Luke Allen-Gale'),(96,'Luke Hemsworth'),(140,'Lupita Nyong\'o'),(99,'Mackenzie Davis'),(12,'Mädchen Amick'),(11,'Madelaine Petsch'),(109,'Margot Robbie'),(160,'Marion Cotillard'),(10,'Marisol Nichols'),(44,'Mark Ruffalo'),(142,'Martin Freeman'),(111,'Mary Elizabeth Winstead'),(145,'Matt Damon'),(72,'Matt LeBlanc'),(3,'Matt Smith'),(71,'Matthew Perry'),(66,'Mayim Bialik'),(65,'Melissa Rauch'),(139,'Michael B. Jordan'),(174,'Michael Peña'),(31,'Millie Bobby Brown'),(127,'Miranda Cosgrove'),(15,'Misty Rosas'),(81,'Mitch Pileggi'),(28,'Moses Ingram'),(126,'Nick Jonas'),(189,'Nick Robinson'),(53,'Nikolaj Coster-Waldau'),(156,'Nina Bergman'),(148,'Noah Jupe'),(168,'O.T. Fagbenle'),(2,'Olivia Colman'),(129,'Omar Epps'),(188,'Omar Sy'),(179,'Oscar Isaac'),(203,'Patrick Fugit'),(88,'Paul Ritter'),(13,'Pedro Pascal'),(52,'Peter Dinklage'),(118,'Peter Ferdinando'),(75,'R. H. Thomson'),(169,'Rachel Weisz'),(171,'Ray Winstone'),(116,'Rhona Mitra'),(208,'Rinko Kikuchi'),(17,'Rio Hackford'),(37,'Robert De Niro'),(42,'Robert Downey Jr.'),(82,'Robert Patrick'),(22,'Robert Sheehan'),(113,'Rosie Perez'),(198,'Ryan Gosling'),(195,'Salli Richardson-Whitfield'),(33,'Sam Claflin'),(46,'Scarlett Johansson'),(98,'Scoot McNairy'),(205,'Scott Eastwood'),(175,'Sean Bean'),(41,'Shea Whigham'),(63,'Simon Helberg'),(180,'Sonoya Mizuno'),(50,'Sophie Turner'),(115,'Stacy Martin'),(86,'Stellan Skarsgård'),(94,'Tessa Thompson'),(92,'Thandie Newton'),(117,'Theo James'),(26,'Thomas Brodie-Sangster'),(4,'Tobias Menzies'),(101,'Toby Huss'),(120,'Toby Jones'),(83,'Tom Braidwood'),(59,'Tom Cavanagh'),(19,'Tom Hopper'),(5,'Vanesa Kirby'),(187,'Vincent D\'Onofrio'),(151,'Vincent Piazza'),(191,'Will Smith'),(170,'William Hurt'),(196,'Willow Smith'),(38,'Zazie Beetz');
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo`
--

DROP TABLE IF EXISTS `catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo` (
  `idCatalogo` int NOT NULL AUTO_INCREMENT,
  `idPoster` int DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `idCategoria` int NOT NULL,
  `resumen` text NOT NULL,
  `temporadas` int DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCatalogo`),
  UNIQUE KEY `idCatalogo` (`idCatalogo`),
  UNIQUE KEY `titulo` (`titulo`),
  KEY `catalogo_fk1` (`idCategoria`),
  CONSTRAINT `catalogo_fk1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo`
--

LOCK TABLES `catalogo` WRITE;
/*!40000 ALTER TABLE `catalogo` DISABLE KEYS */;
INSERT INTO `catalogo` VALUES (1,1,'The Crown',1,'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.',4,NULL),(2,2,'Riverdale',1,'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.',5,NULL),(3,3,'The Mandalorian',1,'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.',2,'https://www.youtube.com/embed/aOC8E8z_ifw'),(8,8,'Avengers: End Game',2,'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.',NULL,NULL);
/*!40000 ALTER TABLE `catalogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_generos`
--

DROP TABLE IF EXISTS `catalogo_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_generos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCatalogo` int NOT NULL,
  `idGenero` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catalogo_generos_fk0` (`idCatalogo`),
  KEY `catalogo_generos_fk1` (`idGenero`),
  CONSTRAINT `catalogo_generos_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `catalogo_generos_fk1` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_generos`
--

LOCK TABLES `catalogo_generos` WRITE;
/*!40000 ALTER TABLE `catalogo_generos` DISABLE KEYS */;
INSERT INTO `catalogo_generos` VALUES (3,1,1),(4,1,2),(5,2,1),(6,2,3),(7,2,4),(8,3,5),(9,3,6),(10,8,10),(11,8,11),(12,8,12);
/*!40000 ALTER TABLE `catalogo_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_repartos`
--

DROP TABLE IF EXISTS `catalogo_repartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_repartos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCatalogo` int NOT NULL,
  `idPersona` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalogo_repartos_fk0` (`idCatalogo`),
  KEY `catalogo_repartos_fk1` (`idPersona`),
  CONSTRAINT `catalogo_repartos_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `catalogo` (`idCatalogo`),
  CONSTRAINT `catalogo_repartos_fk1` FOREIGN KEY (`idPersona`) REFERENCES `actores` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_repartos`
--

LOCK TABLES `catalogo_repartos` WRITE;
/*!40000 ALTER TABLE `catalogo_repartos` DISABLE KEYS */;
INSERT INTO `catalogo_repartos` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,2,11),(12,2,12),(13,3,13),(14,3,14),(15,3,15),(16,3,16),(17,3,17),(18,3,18),(19,8,42),(20,8,43),(21,8,44),(22,8,45),(23,8,46),(24,8,47);
/*!40000 ALTER TABLE `catalogo_repartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `catalogoview`
--

DROP TABLE IF EXISTS `catalogoview`;
/*!50001 DROP VIEW IF EXISTS `catalogoview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `catalogoview` AS SELECT 
 1 AS `id`,
 1 AS `poster`,
 1 AS `titulo`,
 1 AS `categoria`,
 1 AS `genero`,
 1 AS `resumen`,
 1 AS `temporadas`,
 1 AS `reparto`,
 1 AS `trailer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `idCategoria` (`idCategoria`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (3,'Documental'),(2,'Película'),(1,'Serie');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) NOT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `idGenero` (`idGenero`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (12,'Acción'),(10,'Aventura'),(5,'Ciencia Ficción'),(13,'Comedia'),(8,'Crimen'),(1,'Drama'),(14,'Familia'),(6,'Fantasía'),(4,'Ficción'),(2,'Hechos verídicos'),(17,'Intriga'),(3,'Misterio'),(11,'Sci-Fi'),(7,'Sucesos'),(9,'Suspenso'),(16,'Tecnología'),(18,'Terror'),(15,'Western');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posters`
--

DROP TABLE IF EXISTS `posters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posters` (
  `idPoster` int NOT NULL AUTO_INCREMENT,
  `dirPoster` varchar(255) NOT NULL,
  PRIMARY KEY (`idPoster`),
  UNIQUE KEY `dirPoster` (`dirPoster`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posters`
--

LOCK TABLES `posters` WRITE;
/*!40000 ALTER TABLE `posters` DISABLE KEYS */;
INSERT INTO `posters` VALUES (1,'/posters/1.jpeg'),(10,'/posters/10.jpeg'),(11,'/posters/11.jpeg'),(12,'/posters/12.jpeg'),(13,'/posters/13.jpeg'),(14,'/posters/14.jpeg'),(15,'/posters/15.jpeg'),(16,'/posters/16.jpeg'),(17,'/posters/17.jpeg'),(18,'/posters/18.jpeg'),(19,'/posters/19.jpeg'),(2,'/posters/2.jpeg'),(20,'/posters/20.jpeg'),(21,'/posters/21.jpeg'),(22,'/posters/22.jpeg'),(23,'/posters/23.jpeg'),(24,'/posters/24.jpeg'),(25,'/posters/25.jpeg'),(26,'/posters/26.jpeg'),(27,'/posters/27.jpeg'),(28,'/posters/28.jpeg'),(29,'/posters/29.jpeg'),(3,'/posters/3.jpeg'),(30,'/posters/30.jpeg'),(31,'/posters/31.jpeg'),(32,'/posters/32.jpeg'),(33,'/posters/33.jpeg'),(34,'/posters/34.jpeg'),(35,'/posters/35.jpeg'),(4,'/posters/4.jpeg'),(5,'/posters/5.jpeg'),(6,'/posters/6.jpeg'),(7,'/posters/7.jpeg'),(8,'/posters/8.jpeg'),(9,'/posters/9.jpeg');
/*!40000 ALTER TABLE `posters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `catalogoview`
--

/*!50001 DROP VIEW IF EXISTS `catalogoview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `catalogoview` AS select `catalogo`.`idCatalogo` AS `id`,`posters`.`dirPoster` AS `poster`,`catalogo`.`titulo` AS `titulo`,`categorias`.`categoria` AS `categoria`,group_concat(distinct `generos`.`genero` separator ',') AS `genero`,`catalogo`.`resumen` AS `resumen`,`catalogo`.`temporadas` AS `temporadas`,group_concat(distinct `actores`.`nombre` separator ',') AS `reparto`,`catalogo`.`trailer` AS `trailer` from ((((((`catalogo` join `posters` on((`catalogo`.`idPoster` = `posters`.`idPoster`))) join `categorias` on((`catalogo`.`idCategoria` = `categorias`.`idCategoria`))) join `catalogo_generos` on((`catalogo`.`idCatalogo` = `catalogo_generos`.`idCatalogo`))) join `generos` on((`catalogo_generos`.`idGenero` = `generos`.`idGenero`))) join `catalogo_repartos` on((`catalogo`.`idCatalogo` = `catalogo_repartos`.`idCatalogo`))) join `actores` on((`catalogo_repartos`.`idPersona` = `actores`.`idPersona`))) group by `catalogo`.`idCatalogo` */;
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

-- Dump completed on 2023-09-29 19:22:16
