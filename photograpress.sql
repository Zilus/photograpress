-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: localhost    Database: photograpress
-- ------------------------------------------------------
-- Server version	5.7.16

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

--
-- Table structure for table `acerca`
--

DROP TABLE IF EXISTS `acerca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acerca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `imagen` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acerca`
--

LOCK TABLES `acerca` WRITE;
/*!40000 ALTER TABLE `acerca` DISABLE KEYS */;
/*!40000 ALTER TABLE `acerca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text,
  `cuidad` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mapa` varchar(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_activity`
--

DROP TABLE IF EXISTS `directus_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `row_id` int(11) unsigned DEFAULT '0',
  `user` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  `delta` text,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `parent_table` varchar(100) DEFAULT NULL,
  `parent_changed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the top-level record in the change set alter (scalar values/many-to-one relationships)? Or only the data within its related foreign collection records? (*toMany)',
  `datetime` datetime DEFAULT NULL,
  `logged_ip` varchar(20) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_activity`
--

LOCK TABLES `directus_activity` WRITE;
/*!40000 ALTER TABLE `directus_activity` DISABLE KEYS */;
INSERT INTO `directus_activity` VALUES (1,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-07 19:25:46','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12'),(2,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-07 20:54:16','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12'),(3,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-24 19:01:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(4,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-24 19:08:56','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(5,'ENTRY','ADD','Editor','directus_groups',2,1,'{\"id\":\"2\",\"name\":\"Editor\",\"description\":null,\"restrict_to_ip_whitelist\":null,\"nav_override\":null,\"show_activity\":\"1\",\"show_messages\":\"1\",\"show_users\":\"1\",\"show_files\":\"1\"}','[]',NULL,NULL,1,'2017-02-24 19:10:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(6,'ENTRY','ADD','meta','directus_columns',3,1,'{\"id\":\"3\",\"table_name\":\"meta\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:12:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(7,'ENTRY','ADD','meta','directus_columns',4,1,'{\"id\":\"4\",\"table_name\":\"meta\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:12:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(8,'ENTRY','UPDATE','meta','directus_columns',3,1,'{\"id\":\"3\",\"table_name\":\"meta\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"meta\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"3\"}',NULL,NULL,1,'2017-02-24 19:13:36','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(9,'ENTRY','UPDATE','meta','directus_columns',4,1,'{\"id\":\"4\",\"table_name\":\"meta\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"meta\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"4\"}',NULL,NULL,1,'2017-02-24 19:13:36','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(10,'ENTRY','UPDATE','meta','directus_columns',5,1,'{\"id\":\"5\",\"table_name\":\"meta\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"meta\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":9999,\"comment\":\"\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"5\"}',NULL,NULL,1,'2017-02-24 19:13:36','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(11,'ENTRY','UPDATE','meta','directus_columns',6,1,'{\"id\":\"6\",\"table_name\":\"meta\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"meta\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"6\"}',NULL,NULL,1,'2017-02-24 19:13:36','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(12,'ENTRY','UPDATE','meta','directus_columns',3,1,'{\"id\":\"3\",\"table_name\":\"meta\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"meta\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"3\"}',NULL,NULL,1,'2017-02-24 19:15:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(13,'ENTRY','UPDATE','meta','directus_columns',4,1,'{\"id\":\"4\",\"table_name\":\"meta\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"meta\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"4\"}',NULL,NULL,1,'2017-02-24 19:15:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(14,'ENTRY','UPDATE','meta','directus_columns',5,1,'{\"id\":\"5\",\"table_name\":\"meta\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"9999\",\"comment\":\"T\\u00edtulo global del sitio.\"}','{\"table_name\":\"meta\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":9999,\"comment\":\"T\\u00edtulo global del sitio.\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"5\"}',NULL,NULL,1,'2017-02-24 19:15:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(15,'ENTRY','UPDATE','meta','directus_columns',6,1,'{\"id\":\"6\",\"table_name\":\"meta\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"9999\",\"comment\":\"Descripci\\u00f3n global del sitio (SEO)\"}','{\"table_name\":\"meta\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":9999,\"comment\":\"Descripci\\u00f3n global del sitio (SEO)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"6\"}',NULL,NULL,1,'2017-02-24 19:15:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(16,'ENTRY','UPDATE','meta','directus_columns',7,1,'{\"id\":\"7\",\"table_name\":\"meta\",\"column_name\":\"google_analytics\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"C\\u00f3digo Google Analytics. Ej. UA-XXXXXXXX-X\"}','{\"table_name\":\"meta\",\"column_name\":\"google_analytics\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"C\\u00f3digo Google Analytics. Ej. UA-XXXXXXXX-X\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"7\"}',NULL,NULL,1,'2017-02-24 19:15:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(17,'ENTRY','ADD','contacto','directus_columns',8,1,'{\"id\":\"8\",\"table_name\":\"contacto\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:19:10','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(18,'ENTRY','ADD','contacto','directus_columns',9,1,'{\"id\":\"9\",\"table_name\":\"contacto\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:19:10','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(19,'ENTRY','UPDATE','contacto','directus_columns',8,1,'{\"id\":\"8\",\"table_name\":\"contacto\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"8\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(20,'ENTRY','UPDATE','contacto','directus_columns',9,1,'{\"id\":\"9\",\"table_name\":\"contacto\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"9\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(21,'ENTRY','UPDATE','contacto','directus_columns',10,1,'{\"id\":\"10\",\"table_name\":\"contacto\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Contacto\"}','{\"table_name\":\"contacto\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Contacto\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"10\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(22,'ENTRY','UPDATE','contacto','directus_columns',11,1,'{\"id\":\"11\",\"table_name\":\"contacto\",\"column_name\":\"contenido\",\"data_type\":null,\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\"}','{\"table_name\":\"contacto\",\"column_name\":\"contenido\",\"ui\":\"wysiwyg\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"11\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(23,'ENTRY','UPDATE','contacto','directus_columns',12,1,'{\"id\":\"12\",\"table_name\":\"contacto\",\"column_name\":\"cuidad\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"cuidad\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"VARCHAR\",\"id\":\"12\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(24,'ENTRY','UPDATE','contacto','directus_columns',13,1,'{\"id\":\"13\",\"table_name\":\"contacto\",\"column_name\":\"telefono\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Tel\\u00e9fono de contacto\"}','{\"table_name\":\"contacto\",\"column_name\":\"telefono\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Tel\\u00e9fono de contacto\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"13\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(25,'ENTRY','UPDATE','contacto','directus_columns',14,1,'{\"id\":\"14\",\"table_name\":\"contacto\",\"column_name\":\"email\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Email de contacto\"}','{\"table_name\":\"contacto\",\"column_name\":\"email\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Email de contacto\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"14\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(26,'ENTRY','UPDATE','contacto','directus_columns',15,1,'{\"id\":\"15\",\"table_name\":\"contacto\",\"column_name\":\"mapa\",\"data_type\":\"VARCHAR\",\"ui\":\"map\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"mapa\",\"ui\":\"map\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"VARCHAR\",\"id\":\"15\"}',NULL,NULL,1,'2017-02-24 19:21:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(27,'ENTRY','ADD','acerca','directus_columns',16,1,'{\"id\":\"16\",\"table_name\":\"acerca\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:22:15','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(28,'ENTRY','ADD','acerca','directus_columns',17,1,'{\"id\":\"17\",\"table_name\":\"acerca\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:22:15','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(29,'ENTRY','UPDATE','acerca','directus_columns',16,1,'{\"id\":\"16\",\"table_name\":\"acerca\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"0\",\"comment\":\"\"}','{\"table_name\":\"acerca\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":0,\"comment\":\"\",\"id\":\"16\"}',NULL,NULL,1,'2017-02-24 19:24:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(30,'ENTRY','UPDATE','acerca','directus_columns',17,1,'{\"id\":\"17\",\"table_name\":\"acerca\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"acerca\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":1,\"comment\":\"\",\"id\":\"17\"}',NULL,NULL,1,'2017-02-24 19:24:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(31,'ENTRY','UPDATE','acerca','directus_columns',19,1,'{\"id\":\"19\",\"table_name\":\"acerca\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Acerca de\"}','{\"table_name\":\"acerca\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Acerca de\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"19\"}',NULL,NULL,1,'2017-02-24 19:24:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(32,'ENTRY','UPDATE','acerca','directus_columns',20,1,'{\"id\":\"20\",\"table_name\":\"acerca\",\"column_name\":\"contenido\",\"data_type\":null,\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\"}','{\"table_name\":\"acerca\",\"column_name\":\"contenido\",\"ui\":\"wysiwyg\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":3,\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"20\"}',NULL,NULL,1,'2017-02-24 19:24:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(33,'ENTRY','UPDATE','acerca','directus_columns',18,1,'{\"id\":\"18\",\"table_name\":\"acerca\",\"column_name\":\"imagen\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"imagen\",\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"Im\\u00e1gen destacada\"}','{\"table_name\":\"acerca\",\"column_name\":\"imagen\",\"ui\":\"single_file\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":4,\"comment\":\"Im\\u00e1gen destacada\",\"data_type\":\"INT\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_key_right\":\"imagen\",\"id\":\"18\"}',NULL,NULL,1,'2017-02-24 19:24:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(34,'ENTRY','UPDATE','acerca','directus_columns',21,1,'{\"id\":\"21\",\"table_name\":\"acerca\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Descripci\\u00f3n de la secci\\u00f3n (SEO)\"}','{\"table_name\":\"acerca\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Descripci\\u00f3n de la secci\\u00f3n (SEO)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"21\"}',NULL,NULL,1,'2017-02-24 19:24:24','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(35,'ENTRY','UPDATE','contacto','directus_columns',8,1,'{\"id\":\"8\",\"table_name\":\"contacto\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"8\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(36,'ENTRY','UPDATE','contacto','directus_columns',9,1,'{\"id\":\"9\",\"table_name\":\"contacto\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"9\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(37,'ENTRY','UPDATE','contacto','directus_columns',10,1,'{\"id\":\"10\",\"table_name\":\"contacto\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Contacto\"}','{\"table_name\":\"contacto\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Contacto\",\"id\":\"10\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(38,'ENTRY','UPDATE','contacto','directus_columns',11,1,'{\"id\":\"11\",\"table_name\":\"contacto\",\"column_name\":\"contenido\",\"data_type\":null,\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\"}','{\"table_name\":\"contacto\",\"column_name\":\"contenido\",\"ui\":\"wysiwyg\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\",\"id\":\"11\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(39,'ENTRY','UPDATE','contacto','directus_columns',12,1,'{\"id\":\"12\",\"table_name\":\"contacto\",\"column_name\":\"cuidad\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"cuidad\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"12\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(40,'ENTRY','UPDATE','contacto','directus_columns',13,1,'{\"id\":\"13\",\"table_name\":\"contacto\",\"column_name\":\"telefono\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Tel\\u00e9fono de contacto\"}','{\"table_name\":\"contacto\",\"column_name\":\"telefono\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Tel\\u00e9fono de contacto\",\"id\":\"13\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(41,'ENTRY','UPDATE','contacto','directus_columns',14,1,'{\"id\":\"14\",\"table_name\":\"contacto\",\"column_name\":\"email\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Email de contacto\"}','{\"table_name\":\"contacto\",\"column_name\":\"email\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Email de contacto\",\"id\":\"14\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(42,'ENTRY','UPDATE','contacto','directus_columns',15,1,'{\"id\":\"15\",\"table_name\":\"contacto\",\"column_name\":\"mapa\",\"data_type\":\"VARCHAR\",\"ui\":\"map\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"contacto\",\"column_name\":\"mapa\",\"ui\":\"map\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"15\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(43,'ENTRY','UPDATE','contacto','directus_columns',22,1,'{\"id\":\"22\",\"table_name\":\"contacto\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Descripci\\u00f3n de la secci\\u00f3n (SEO)\"}','{\"table_name\":\"contacto\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"Descripci\\u00f3n de la secci\\u00f3n (SEO)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"22\"}',NULL,NULL,1,'2017-02-24 19:25:00','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(44,'ENTRY','UPDATE','acerca','directus_columns',16,1,'{\"id\":\"16\",\"table_name\":\"acerca\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"0\",\"comment\":\"\"}','{\"table_name\":\"acerca\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":0,\"comment\":\"\",\"id\":\"16\"}',NULL,NULL,1,'2017-02-24 19:25:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(45,'ENTRY','UPDATE','acerca','directus_columns',17,1,'{\"id\":\"17\",\"table_name\":\"acerca\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"acerca\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":1,\"comment\":\"\",\"id\":\"17\"}',NULL,NULL,1,'2017-02-24 19:25:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(46,'ENTRY','UPDATE','acerca','directus_columns',19,1,'{\"id\":\"19\",\"table_name\":\"acerca\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Acerca de\"}','{\"table_name\":\"acerca\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"T\\u00edtulo de la secci\\u00f3n. Ej. Acerca de\",\"id\":\"19\"}',NULL,NULL,1,'2017-02-24 19:25:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(47,'ENTRY','UPDATE','acerca','directus_columns',20,1,'{\"id\":\"20\",\"table_name\":\"acerca\",\"column_name\":\"contenido\",\"data_type\":null,\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\"}','{\"table_name\":\"acerca\",\"column_name\":\"contenido\",\"ui\":\"wysiwyg\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":3,\"comment\":\"Contenido de la secci\\u00f3n (puede estar vac\\u00edo)\",\"id\":\"20\"}',NULL,NULL,1,'2017-02-24 19:25:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(48,'ENTRY','UPDATE','acerca','directus_columns',21,1,'{\"id\":\"21\",\"table_name\":\"acerca\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"Descripci\\u00f3n de la secci\\u00f3n (SEO)\"}','{\"table_name\":\"acerca\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":4,\"comment\":\"Descripci\\u00f3n de la secci\\u00f3n (SEO)\",\"id\":\"21\"}',NULL,NULL,1,'2017-02-24 19:25:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(49,'ENTRY','UPDATE','acerca','directus_columns',18,1,'{\"id\":\"18\",\"table_name\":\"acerca\",\"column_name\":\"imagen\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"imagen\",\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"Im\\u00e1gen destacada\"}','{\"table_name\":\"acerca\",\"column_name\":\"imagen\",\"ui\":\"single_file\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":5,\"comment\":\"Im\\u00e1gen destacada\",\"id\":\"18\"}',NULL,NULL,1,'2017-02-24 19:25:17','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(50,'UI','ADD','redes_sociales','directus_ui',2,1,'{\"id\":\"2\",\"table_name\":\"redes_sociales\",\"column_name\":\"red\",\"ui_name\":\"select\",\"name\":\"id\",\"value\":\"select\"}','[]',NULL,NULL,1,'2017-02-24 19:33:37','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(51,'UI','ADD','redes_sociales','directus_ui',3,1,'{\"id\":\"3\",\"table_name\":\"redes_sociales\",\"column_name\":\"red\",\"ui_name\":\"select\",\"name\":\"options\",\"value\":\"{\\r\\n    \\\"1\\\":\\\"500px\\\",\\r\\n    \\\"2\\\":\\\"Behance\\\",\\r\\n    \\\"3\\\":\\\"Deviantart\\\",\\r\\n    \\\"4\\\":\\\"Dropbox\\\",\\r\\n    \\\"5\\\":\\\"Facebook\\\",\\r\\n    \\\"6\\\":\\\"Flickr\\\",\\r\\n    \\\"7\\\":\\\"Instagram\\\",\\r\\n    \\\"8\\\":\\\"Linkedin\\\",\\r\\n    \\\"9\\\":\\\"Medium\\\",\\r\\n    \\\"10\\\":\\\"Pinterest\\\",\\r\\n    \\\"11\\\":\\\"Skype\\\",\\r\\n    \\\"12\\\":\\\"Snapchat\\\",\\r\\n    \\\"13\\\":\\\"Tumblr\\\",\\r\\n    \\\"14\\\":\\\"Twitter\\\",\\r\\n    \\\"15\\\":\\\"Vimeo\\\",\\r\\n    \\\"16\\\":\\\"Whatsapp\\\",\\r\\n    \\\"17\\\":\\\"Wordpress\\\",\\r\\n    \\\"18\\\":\\\"Youtube\\\"\\r\\n}\"}','[]',NULL,NULL,1,'2017-02-24 19:33:37','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(52,'UI','ADD','redes_sociales','directus_ui',4,1,'{\"id\":\"4\",\"table_name\":\"redes_sociales\",\"column_name\":\"red\",\"ui_name\":\"select\",\"name\":\"allow_null\",\"value\":\"0\"}','[]',NULL,NULL,1,'2017-02-24 19:33:37','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(53,'UI','ADD','redes_sociales','directus_ui',5,1,'{\"id\":\"5\",\"table_name\":\"redes_sociales\",\"column_name\":\"red\",\"ui_name\":\"select\",\"name\":\"placeholder_text\",\"value\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:33:37','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(54,'ENTRY','ADD','redes_sociales','directus_columns',25,1,'{\"id\":\"25\",\"table_name\":\"redes_sociales\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:34:05','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(55,'ENTRY','ADD','redes_sociales','directus_columns',26,1,'{\"id\":\"26\",\"table_name\":\"redes_sociales\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 19:34:05','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(56,'ENTRY','UPDATE','redes_sociales','directus_columns',23,1,'{\"id\":\"23\",\"table_name\":\"redes_sociales\",\"column_name\":\"red\",\"data_type\":\"INT\",\"ui\":\"select\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"redes_sociales\",\"column_name\":\"red\",\"ui\":\"select\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"INT\",\"id\":\"23\"}',NULL,NULL,1,'2017-02-24 19:34:05','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(57,'ENTRY','UPDATE','redes_sociales','directus_columns',24,1,'{\"id\":\"24\",\"table_name\":\"redes_sociales\",\"column_name\":\"url\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"URL completa (con https:\\/\\/ o http:\\/\\/)\"}','{\"table_name\":\"redes_sociales\",\"column_name\":\"url\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"URL completa (con https:\\/\\/ o http:\\/\\/)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"24\"}',NULL,NULL,1,'2017-02-24 19:34:05','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(58,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-24 20:13:12','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(59,'ENTRY','ADD','join_galeria','directus_columns',29,1,'{\"id\":\"29\",\"table_name\":\"join_galeria\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 20:15:52','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(60,'ENTRY','ADD','join_galeria','directus_columns',30,1,'{\"id\":\"30\",\"table_name\":\"join_galeria\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 20:15:52','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(61,'ENTRY','UPDATE','join_galeria','directus_columns',27,1,'{\"id\":\"27\",\"table_name\":\"join_galeria\",\"column_name\":\"galeria\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_galeria\",\"column_name\":\"galeria\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"VARCHAR\",\"id\":\"27\"}',NULL,NULL,1,'2017-02-24 20:15:52','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(62,'ENTRY','UPDATE','join_galeria','directus_columns',28,1,'{\"id\":\"28\",\"table_name\":\"join_galeria\",\"column_name\":\"media\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_galeria\",\"column_name\":\"media\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"VARCHAR\",\"id\":\"28\"}',NULL,NULL,1,'2017-02-24 20:15:53','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(63,'ENTRY','UPDATE','join_galeria','directus_columns',29,1,'{\"id\":\"29\",\"table_name\":\"join_galeria\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"join_galeria\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"29\"}',NULL,NULL,1,'2017-02-24 20:15:57','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(64,'ENTRY','UPDATE','join_galeria','directus_columns',30,1,'{\"id\":\"30\",\"table_name\":\"join_galeria\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"join_galeria\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"30\"}',NULL,NULL,1,'2017-02-24 20:15:57','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(65,'ENTRY','UPDATE','join_galeria','directus_columns',27,1,'{\"id\":\"27\",\"table_name\":\"join_galeria\",\"column_name\":\"galeria\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_galeria\",\"column_name\":\"galeria\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"27\"}',NULL,NULL,1,'2017-02-24 20:15:57','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(66,'ENTRY','UPDATE','join_galeria','directus_columns',28,1,'{\"id\":\"28\",\"table_name\":\"join_galeria\",\"column_name\":\"media\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_galeria\",\"column_name\":\"media\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"28\"}',NULL,NULL,1,'2017-02-24 20:15:57','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(67,'ENTRY','ADD','galerias','directus_columns',36,1,'{\"id\":\"36\",\"table_name\":\"galerias\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(68,'ENTRY','ADD','galerias','directus_columns',37,1,'{\"id\":\"37\",\"table_name\":\"galerias\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(69,'ENTRY','UPDATE','galerias','directus_columns',31,1,'{\"id\":\"31\",\"table_name\":\"galerias\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"9999\",\"comment\":\"Nombre de la galer\\u00eda\"}','{\"table_name\":\"galerias\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":9999,\"comment\":\"Nombre de la galer\\u00eda\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"31\"}',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(70,'ENTRY','UPDATE','galerias','directus_columns',32,1,'{\"id\":\"32\",\"table_name\":\"galerias\",\"column_name\":\"contenido\",\"data_type\":null,\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Sobre que es la galer\\u00eda, su historia, objetivo etc (puede estar vac\\u00edo)\"}','{\"table_name\":\"galerias\",\"column_name\":\"contenido\",\"ui\":\"wysiwyg\",\"hidden_input\":0,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"Sobre que es la galer\\u00eda, su historia, objetivo etc (puede estar vac\\u00edo)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"32\"}',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(71,'ENTRY','UPDATE','galerias','directus_columns',33,1,'{\"id\":\"33\",\"table_name\":\"galerias\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Descripci\\u00f3n de la galer\\u00eda (SEO)\"}','{\"table_name\":\"galerias\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"Descripci\\u00f3n de la galer\\u00eda (SEO)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"33\"}',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(72,'ENTRY','UPDATE','galerias','directus_columns',34,1,'{\"id\":\"34\",\"table_name\":\"galerias\",\"column_name\":\"slug\",\"data_type\":null,\"ui\":\"slug\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"galerias\",\"column_name\":\"slug\",\"ui\":\"slug\",\"hidden_input\":1,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"34\"}',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(73,'ENTRY','UPDATE','galerias','directus_columns',35,1,'{\"id\":\"35\",\"table_name\":\"galerias\",\"column_name\":\"media\",\"data_type\":\"ALIAS\",\"ui\":\"multiple_files\",\"relationship_type\":\"MANYTOMANY\",\"related_table\":\"directus_files\",\"junction_table\":\"join_galeria\",\"junction_key_left\":\"galeria\",\"junction_key_right\":\"media\",\"hidden_input\":\"0\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Im\\u00e1genes y videos de Youtube o Vimeo\"}','{\"table_name\":\"galerias\",\"column_name\":\"media\",\"ui\":\"multiple_files\",\"hidden_input\":0,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"Im\\u00e1genes y videos de Youtube o Vimeo\",\"data_type\":\"ALIAS\",\"relationship_type\":\"MANYTOMANY\",\"related_table\":\"directus_files\",\"junction_key_right\":\"media\",\"id\":\"35\"}',NULL,NULL,1,'2017-02-24 20:18:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(74,'ENTRY','ADD','1','galerias',1,1,'{\"id\":\"1\",\"active\":\"1\",\"titulo\":\"Prueba\",\"contenido\":\"asdasd<br><b>ad<\\/b>\",\"descripcion\":\"asdasd  adasd \",\"slug\":null}','[]',NULL,NULL,1,'2017-02-24 20:43:09','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(75,'FILES','ADD','1','directus_files',1,1,'{\"id\":\"1\",\"active\":\"1\",\"name\":\"00000000001.jpg\",\"title\":\"daniela\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"2000\",\"height\":\"3000\",\"size\":\"3224504\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2017-02-24 20:43:09\",\"storage_adapter\":\"local\"}','[]',1,'galerias',1,'2017-02-24 20:43:09','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(76,'ENTRY','ADD','2','galerias',2,1,'{\"id\":\"2\",\"active\":\"2\",\"titulo\":\"asdasd\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','[]',NULL,NULL,1,'2017-02-24 20:43:21','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(77,'ENTRY','ADD','3','galerias',3,1,'{\"id\":\"3\",\"active\":\"1\",\"titulo\":\"asdasd\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','[]',NULL,NULL,1,'2017-02-24 20:43:26','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(78,'ENTRY','DELETE','asdasd','galerias',2,1,'{\"id\":\"2\",\"active\":\"0\",\"titulo\":\"asdasd\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','{\"active\":0,\"id\":2}',NULL,NULL,1,'2017-02-27 04:07:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(79,'ENTRY','DELETE','asdasd','galerias',3,1,'{\"id\":\"3\",\"active\":\"0\",\"titulo\":\"asdasd\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','{\"active\":0,\"id\":3}',NULL,NULL,1,'2017-02-27 04:07:13','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(80,'ENTRY','ADD','4','galerias',4,1,'{\"id\":\"4\",\"active\":\"2\",\"titulo\":\"asdsad\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','[]',NULL,NULL,1,'2017-02-27 04:07:21','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(81,'ENTRY','ADD','5','galerias',5,1,'{\"id\":\"5\",\"active\":\"2\",\"titulo\":\"dlkjsldfjsdlf\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','[]',NULL,NULL,1,'2017-02-27 04:07:26','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(82,'ENTRY','DELETE','asdsad','galerias',4,1,'{\"id\":\"4\",\"active\":\"0\",\"titulo\":\"asdsad\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','{\"active\":0,\"id\":4}',NULL,NULL,1,'2017-02-27 04:07:47','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(83,'ENTRY','DELETE','dlkjsldfjsdlf','galerias',5,1,'{\"id\":\"5\",\"active\":\"0\",\"titulo\":\"dlkjsldfjsdlf\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','{\"active\":0,\"id\":5}',NULL,NULL,1,'2017-02-27 04:07:47','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(84,'ENTRY','DELETE','Prueba','galerias',1,1,'{\"id\":\"1\",\"active\":\"0\",\"titulo\":\"Prueba\",\"contenido\":\"asdasd<br><b>ad<\\/b>\",\"descripcion\":\"asdasd  adasd \",\"slug\":null}','{\"active\":\"0\",\"id\":\"1\"}',NULL,NULL,1,'2017-02-27 15:37:37','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(85,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-27 19:33:30','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(86,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-02-27 22:18:41','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(87,'ENTRY','ADD','join_proyectos','directus_columns',40,1,'{\"id\":\"40\",\"table_name\":\"join_proyectos\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-27 23:50:07','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(88,'ENTRY','ADD','join_proyectos','directus_columns',41,1,'{\"id\":\"41\",\"table_name\":\"join_proyectos\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-27 23:50:07','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(89,'ENTRY','UPDATE','join_proyectos','directus_columns',38,1,'{\"id\":\"38\",\"table_name\":\"join_proyectos\",\"column_name\":\"proyecto\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"proyecto\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"VARCHAR\",\"id\":\"38\"}',NULL,NULL,1,'2017-02-27 23:50:07','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(90,'ENTRY','UPDATE','join_proyectos','directus_columns',40,1,'{\"id\":\"40\",\"table_name\":\"join_proyectos\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"40\"}',NULL,NULL,1,'2017-02-27 23:50:25','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(91,'ENTRY','UPDATE','join_proyectos','directus_columns',41,1,'{\"id\":\"41\",\"table_name\":\"join_proyectos\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"41\"}',NULL,NULL,1,'2017-02-27 23:50:25','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(92,'ENTRY','UPDATE','join_proyectos','directus_columns',38,1,'{\"id\":\"38\",\"table_name\":\"join_proyectos\",\"column_name\":\"proyecto\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"proyecto\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"38\"}',NULL,NULL,1,'2017-02-27 23:50:25','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(93,'ENTRY','UPDATE','join_proyectos','directus_columns',42,1,'{\"id\":\"42\",\"table_name\":\"join_proyectos\",\"column_name\":\"media\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"media\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":\"VARCHAR\",\"id\":\"42\"}',NULL,NULL,1,'2017-02-27 23:50:25','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(94,'ENTRY','UPDATE','join_proyectos','directus_columns',40,1,'{\"id\":\"40\",\"table_name\":\"join_proyectos\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"id\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":1,\"comment\":\"\",\"id\":\"40\"}',NULL,NULL,1,'2017-02-27 23:50:43','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(95,'ENTRY','UPDATE','join_proyectos','directus_columns',41,1,'{\"id\":\"41\",\"table_name\":\"join_proyectos\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"active\",\"ui\":\"numeric\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":2,\"comment\":\"\",\"id\":\"41\"}',NULL,NULL,1,'2017-02-27 23:50:43','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(96,'ENTRY','UPDATE','join_proyectos','directus_columns',38,1,'{\"id\":\"38\",\"table_name\":\"join_proyectos\",\"column_name\":\"proyecto\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"proyecto\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"38\"}',NULL,NULL,1,'2017-02-27 23:50:43','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(97,'ENTRY','UPDATE','join_proyectos','directus_columns',42,1,'{\"id\":\"42\",\"table_name\":\"join_proyectos\",\"column_name\":\"media\",\"data_type\":\"VARCHAR\",\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"join_proyectos\",\"column_name\":\"media\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":0,\"sort\":9999,\"comment\":\"\",\"id\":\"42\"}',NULL,NULL,1,'2017-02-27 23:50:43','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(98,'ENTRY','ADD','proyectos','directus_columns',48,1,'{\"id\":\"48\",\"table_name\":\"proyectos\",\"column_name\":\"id\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"1\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(99,'ENTRY','ADD','proyectos','directus_columns',49,1,'{\"id\":\"49\",\"table_name\":\"proyectos\",\"column_name\":\"active\",\"data_type\":null,\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\"}','[]',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(100,'ENTRY','UPDATE','proyectos','directus_columns',43,1,'{\"id\":\"43\",\"table_name\":\"proyectos\",\"column_name\":\"titulo\",\"data_type\":null,\"ui\":\"textinput\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"0\",\"required\":\"1\",\"sort\":\"9999\",\"comment\":\"Nombre del p\"}','{\"table_name\":\"proyectos\",\"column_name\":\"titulo\",\"ui\":\"textinput\",\"hidden_input\":0,\"hidden_list\":0,\"required\":1,\"sort\":9999,\"comment\":\"Nombre del p\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"43\"}',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(101,'ENTRY','UPDATE','proyectos','directus_columns',44,1,'{\"id\":\"44\",\"table_name\":\"proyectos\",\"column_name\":\"contenido\",\"data_type\":null,\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Sobre que es la galer\\u00eda, su historia, objetivo etc (puede estar vac\\u00edo)\"}','{\"table_name\":\"proyectos\",\"column_name\":\"contenido\",\"ui\":\"wysiwyg\",\"hidden_input\":0,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"Sobre que es la galer\\u00eda, su historia, objetivo etc (puede estar vac\\u00edo)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"44\"}',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(102,'ENTRY','UPDATE','proyectos','directus_columns',45,1,'{\"id\":\"45\",\"table_name\":\"proyectos\",\"column_name\":\"descripcion\",\"data_type\":null,\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Descripci\\u00f3n del proyecto (SEO)\"}','{\"table_name\":\"proyectos\",\"column_name\":\"descripcion\",\"ui\":\"textarea\",\"hidden_input\":0,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"Descripci\\u00f3n del proyecto (SEO)\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"45\"}',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(103,'ENTRY','UPDATE','proyectos','directus_columns',46,1,'{\"id\":\"46\",\"table_name\":\"proyectos\",\"column_name\":\"slug\",\"data_type\":null,\"ui\":\"slug\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"\"}','{\"table_name\":\"proyectos\",\"column_name\":\"slug\",\"ui\":\"slug\",\"hidden_input\":1,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"\",\"data_type\":null,\"relationship_type\":null,\"related_table\":null,\"junction_key_right\":null,\"id\":\"46\"}',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(104,'ENTRY','UPDATE','proyectos','directus_columns',47,1,'{\"id\":\"47\",\"table_name\":\"proyectos\",\"column_name\":\"media\",\"data_type\":\"ALIAS\",\"ui\":\"multiple_files\",\"relationship_type\":\"MANYTOMANY\",\"related_table\":\"directus_files\",\"junction_table\":\"join_proyectos\",\"junction_key_left\":\"proyecto\",\"junction_key_right\":\"media\",\"hidden_input\":\"0\",\"hidden_list\":\"1\",\"required\":\"0\",\"sort\":\"9999\",\"comment\":\"Im\\u00e1genes y videos de Youtube o Vimeo\"}','{\"table_name\":\"proyectos\",\"column_name\":\"media\",\"ui\":\"multiple_files\",\"hidden_input\":0,\"hidden_list\":1,\"required\":0,\"sort\":9999,\"comment\":\"Im\\u00e1genes y videos de Youtube o Vimeo\",\"data_type\":\"ALIAS\",\"relationship_type\":\"MANYTOMANY\",\"related_table\":\"directus_files\",\"junction_key_right\":\"media\",\"id\":\"47\"}',NULL,NULL,1,'2017-02-27 23:53:23','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(105,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-01 20:54:40','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(106,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-03 03:06:55','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(107,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-03 03:08:03','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(108,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-03 03:08:42','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(109,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-08 17:43:38','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(110,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-08 18:06:12','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(111,'ENTRY','ADD','6','galerias',6,1,'{\"id\":\"6\",\"active\":\"1\",\"titulo\":\"asdasd\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','[]',NULL,NULL,1,'2017-03-08 18:07:25','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(112,'ENTRY','ADD','7','galerias',7,1,'{\"id\":\"7\",\"active\":\"1\",\"titulo\":\"asdasdasdasdas\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','[]',NULL,NULL,1,'2017-03-08 18:07:31','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(113,'ENTRY','DELETE','asdasd','galerias',6,1,'{\"id\":\"6\",\"active\":\"0\",\"titulo\":\"asdasd\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','{\"active\":0,\"id\":6}',NULL,NULL,1,'2017-03-08 18:07:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(114,'ENTRY','DELETE','asdasdasdasdas','galerias',7,1,'{\"id\":\"7\",\"active\":\"0\",\"titulo\":\"asdasdasdasdas\",\"contenido\":\"\",\"descripcion\":\"\",\"slug\":null}','{\"active\":0,\"id\":7}',NULL,NULL,1,'2017-03-08 18:07:35','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(115,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-08 18:24:33','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(116,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-08 23:33:33','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),(117,'LOGIN','LOGIN',NULL,'directus_users',0,1,NULL,NULL,NULL,NULL,0,'2017-03-10 19:23:09','192.168.56.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36');
/*!40000 ALTER TABLE `directus_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_bookmarks`
--

DROP TABLE IF EXISTS `directus_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_bookmarks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_bookmarks`
--

LOCK TABLES `directus_bookmarks` WRITE;
/*!40000 ALTER TABLE `directus_bookmarks` DISABLE KEYS */;
INSERT INTO `directus_bookmarks` VALUES (1,1,'Activity','activity','icon-bell',NULL,'other'),(2,1,'Files','files','icon-attach',NULL,'other'),(3,1,'Messages','messages','icon-chat',NULL,'other'),(4,1,'Users','users','icon-users',NULL,'other');
/*!40000 ALTER TABLE `directus_bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_columns`
--

DROP TABLE IF EXISTS `directus_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_columns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `data_type` varchar(64) DEFAULT NULL,
  `ui` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(20) DEFAULT NULL,
  `related_table` varchar(64) DEFAULT NULL,
  `junction_table` varchar(64) DEFAULT NULL,
  `junction_key_left` varchar(64) DEFAULT NULL,
  `junction_key_right` varchar(64) DEFAULT NULL,
  `hidden_input` tinyint(1) NOT NULL DEFAULT '0',
  `hidden_list` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table-column` (`table_name`,`column_name`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_columns`
--

LOCK TABLES `directus_columns` WRITE;
/*!40000 ALTER TABLE `directus_columns` DISABLE KEYS */;
INSERT INTO `directus_columns` VALUES (1,'directus_users','group',NULL,'many_to_one','MANYTOONE','directus_groups',NULL,NULL,'group_id',0,0,0,NULL,''),(2,'directus_users','avatar_file_id','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'avatar_file_id',0,0,0,NULL,''),(3,'meta','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(4,'meta','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(5,'meta','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Título global del sitio.'),(6,'meta','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Descripción global del sitio (SEO)'),(7,'meta','google_analytics',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Código Google Analytics. Ej. UA-XXXXXXXX-X'),(8,'contacto','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(9,'contacto','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(10,'contacto','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Título de la sección. Ej. Contacto'),(11,'contacto','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Contenido de la sección (puede estar vacío)'),(12,'contacto','cuidad','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(13,'contacto','telefono',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Teléfono de contacto'),(14,'contacto','email',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Email de contacto'),(15,'contacto','mapa','VARCHAR','map',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(16,'acerca','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,0,''),(17,'acerca','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,1,''),(18,'acerca','imagen','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'imagen',0,0,0,5,'Imágen destacada'),(19,'acerca','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,2,'Título de la sección. Ej. Acerca de'),(20,'acerca','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,0,0,3,'Contenido de la sección (puede estar vacío)'),(21,'acerca','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,0,4,'Descripción de la sección (SEO)'),(22,'contacto','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Descripción de la sección (SEO)'),(23,'redes_sociales','red','INT','select',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(24,'redes_sociales','url',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'URL completa (con https:// o http://)'),(25,'redes_sociales','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(26,'redes_sociales','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(27,'join_galeria','galeria','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(28,'join_galeria','media','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(29,'join_galeria','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(30,'join_galeria','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(31,'galerias','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Nombre de la galería'),(32,'galerias','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Sobre que es la galería, su historia, objetivo etc (puede estar vacío)'),(33,'galerias','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Descripción de la galería (SEO)'),(34,'galerias','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,1,1,0,9999,''),(35,'galerias','media','ALIAS','multiple_files','MANYTOMANY','directus_files','join_galeria','galeria','media',0,1,0,9999,'Imágenes y videos de Youtube o Vimeo'),(36,'galerias','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(37,'galerias','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(38,'join_proyectos','proyecto','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(40,'join_proyectos','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(41,'join_proyectos','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(42,'join_proyectos','media','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(43,'proyectos','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Nombre del p'),(44,'proyectos','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Sobre que es la galería, su historia, objetivo etc (puede estar vacío)'),(45,'proyectos','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Descripción del proyecto (SEO)'),(46,'proyectos','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,1,1,0,9999,''),(47,'proyectos','media','ALIAS','multiple_files','MANYTOMANY','directus_files','join_proyectos','proyecto','media',0,1,0,9999,'Imágenes y videos de Youtube o Vimeo'),(48,'proyectos','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(49,'proyectos','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,'');
/*!40000 ALTER TABLE `directus_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_files`
--

DROP TABLE IF EXISTS `directus_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_files` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `location` varchar(200) DEFAULT NULL,
  `caption` text,
  `type` varchar(50) DEFAULT '',
  `charset` varchar(50) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `width` int(11) unsigned DEFAULT '0',
  `height` int(11) unsigned DEFAULT '0',
  `size` int(11) unsigned DEFAULT '0',
  `embed_id` varchar(200) DEFAULT NULL,
  `user` int(11) unsigned NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `storage_adapter` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_files`
--

LOCK TABLES `directus_files` WRITE;
/*!40000 ALTER TABLE `directus_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_groups`
--

DROP TABLE IF EXISTS `directus_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_override` text,
  `show_activity` tinyint(1) NOT NULL DEFAULT '1',
  `show_messages` tinyint(1) NOT NULL DEFAULT '1',
  `show_users` tinyint(1) NOT NULL DEFAULT '1',
  `show_files` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_groups`
--

LOCK TABLES `directus_groups` WRITE;
/*!40000 ALTER TABLE `directus_groups` DISABLE KEYS */;
INSERT INTO `directus_groups` VALUES (1,'Administrator',NULL,'0',NULL,1,1,1,1),(2,'Editor',NULL,NULL,'{\n  \"Contenido\": {\n      \"Galería\": {\n          \"path\": \"tables/galeria\"\n      },\n      \"Proyectos\": {\n          \"path\": \"tables/proyectos\"\n      },\n      \"Slider\": {\n          \"path\": \"tables/slider\"\n      }\n  },\n  \"Sitio\": {\n      \"Acerca de\": {\n          \"path\": \"tables/acerca\"\n      },\n      \"Contacto\": {\n          \"path\": \"tables/contacto\"\n      },\n      \"Metadatos\": {\n          \"path\": \"tables/meta\"\n      },\n      \"Sociales\": {\n          \"path\": \"tables/redes_sociales\"\n      }\n  }\n}',1,1,1,1);
/*!40000 ALTER TABLE `directus_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_messages`
--

DROP TABLE IF EXISTS `directus_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) unsigned DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` int(11) unsigned DEFAULT NULL,
  `response_to` int(11) unsigned DEFAULT NULL,
  `comment_metadata` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_messages`
--

LOCK TABLES `directus_messages` WRITE;
/*!40000 ALTER TABLE `directus_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_messages_recipients`
--

DROP TABLE IF EXISTS `directus_messages_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_messages_recipients` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `recipient` int(11) unsigned NOT NULL,
  `read` tinyint(1) NOT NULL,
  `group` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_messages_recipients`
--

LOCK TABLES `directus_messages_recipients` WRITE;
/*!40000 ALTER TABLE `directus_messages_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `directus_messages_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_preferences`
--

DROP TABLE IF EXISTS `directus_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_preferences` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) unsigned DEFAULT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `columns_visible` varchar(300) DEFAULT NULL,
  `sort` varchar(64) DEFAULT 'id',
  `sort_order` varchar(5) DEFAULT 'ASC',
  `status` varchar(5) DEFAULT '3',
  `search_string` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`,`table_name`,`title`),
  UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_preferences`
--

LOCK TABLES `directus_preferences` WRITE;
/*!40000 ALTER TABLE `directus_preferences` DISABLE KEYS */;
INSERT INTO `directus_preferences` VALUES (1,1,'directus_bookmarks',NULL,'user,title,url,icon_class','id','ASC','1,2',NULL),(2,1,'directus_columns',NULL,'table_name,column_name,data_type,ui,relationship_type','sort','ASC','1,2',NULL),(3,1,'directus_files',NULL,'name,title,location,caption','date_uploaded','DESC','1,2',NULL),(4,1,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist,nav_override,show_activity','id','ASC','1,2',NULL),(5,1,'directus_messages',NULL,'from,subject,message,datetime,attachment','id','ASC','1,2',NULL),(6,1,'directus_messages_recipients',NULL,'message_id,recipient,read,group','id','ASC','1,2',NULL),(7,1,'directus_preferences',NULL,'user,table_name,title,columns_visible','sort','ASC','1,2',NULL),(8,1,'directus_privileges',NULL,'table_name,allow_view,allow_add,allow_edit,allow_delete','id','ASC','1,2',NULL),(9,1,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL),(10,1,'directus_settings',NULL,'collection,name,value','id','ASC','1,2',NULL),(11,1,'directus_tables',NULL,'hidden,single,default_status,footer,list_view','table_name','ASC','1,2',NULL),(12,1,'directus_ui',NULL,'table_name,column_name,ui_name,name,value','id','ASC','1,2',NULL),(13,1,'directus_users',NULL,'first_name,last_name,email,password','id','ASC','1,2',NULL),(15,1,'meta',NULL,'titulo,descripcion,google_analytics','id','ASC','1,2',NULL),(16,1,'contacto',NULL,'titulo,contenido,cuidad,telefono','id','ASC','1,2',NULL),(17,1,'acerca',NULL,'imagen,titulo,contenido,descripcion','id','ASC','1,2',NULL),(18,1,'redes_sociales',NULL,'red,url','id','ASC','1,2',NULL),(19,1,'join_galeria',NULL,'galeria,media','id','ASC','1,2',NULL),(20,1,'galerias',NULL,'titulo,contenido,descripcion,slug','id','ASC','1,2',NULL),(21,1,'join_proyectos',NULL,'proyecto,media','id','ASC','1,2',NULL),(22,1,'proyectos',NULL,'titulo,contenido,descripcion,slug','id','ASC','1,2',NULL);
/*!40000 ALTER TABLE `directus_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_privileges`
--

DROP TABLE IF EXISTS `directus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_privileges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `allow_view` tinyint(1) NOT NULL DEFAULT '0',
  `allow_add` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0',
  `allow_alter` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL,
  `read_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `write_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `nav_listed` tinyint(1) NOT NULL DEFAULT '1',
  `status_id` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_privileges`
--

LOCK TABLES `directus_privileges` WRITE;
/*!40000 ALTER TABLE `directus_privileges` DISABLE KEYS */;
INSERT INTO `directus_privileges` VALUES (1,'directus_activity',2,1,2,2,1,1,NULL,NULL,1,0),(2,'directus_columns',2,1,2,2,1,1,NULL,NULL,1,0),(3,'directus_groups',2,1,2,2,1,1,NULL,NULL,1,0),(4,'directus_files',2,1,2,2,1,1,NULL,NULL,1,0),(5,'directus_messages',2,1,2,2,1,1,NULL,NULL,1,0),(6,'directus_preferences',2,1,2,2,1,1,NULL,NULL,1,0),(7,'directus_privileges',2,1,2,2,1,1,NULL,NULL,1,0),(8,'directus_settings',2,1,2,2,1,1,NULL,NULL,1,0),(9,'directus_tables',2,1,2,2,1,1,NULL,NULL,1,0),(10,'directus_ui',2,1,2,2,1,1,NULL,NULL,1,0),(11,'directus_users',2,1,2,2,1,1,NULL,NULL,1,0),(12,'directus_messages_recipients',2,1,2,2,1,1,NULL,NULL,1,0),(13,'directus_bookmarks',2,1,2,2,1,1,NULL,NULL,1,0),(14,'directus_users',1,0,1,0,1,2,'token','group,token',1,0),(16,'meta',2,1,2,2,1,1,NULL,NULL,1,0),(17,'contacto',2,1,2,2,1,1,NULL,NULL,1,0),(18,'acerca',2,1,2,2,1,1,NULL,NULL,1,0),(19,'redes_sociales',2,1,2,2,1,1,NULL,NULL,1,0),(20,'join_galeria',2,1,2,2,1,1,NULL,NULL,1,0),(21,'galerias',2,1,2,2,1,1,NULL,NULL,1,0),(22,'join_proyectos',2,1,2,2,1,1,NULL,NULL,1,0),(23,'proyectos',2,1,2,2,1,1,NULL,NULL,1,0);
/*!40000 ALTER TABLE `directus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_schema_migrations`
--

DROP TABLE IF EXISTS `directus_schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL,
  UNIQUE KEY `idx_directus_schema_migrations_version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_schema_migrations`
--

LOCK TABLES `directus_schema_migrations` WRITE;
/*!40000 ALTER TABLE `directus_schema_migrations` DISABLE KEYS */;
INSERT INTO `directus_schema_migrations` VALUES ('20150203221946'),('20150203235646'),('20150204002341'),('20150204003426'),('20150204015251'),('20150204021255'),('20150204022237'),('20150204023325'),('20150204024327'),('20150204031412'),('20150204041007'),('20150204042025'),('20150204042725');
/*!40000 ALTER TABLE `directus_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_settings`
--

DROP TABLE IF EXISTS `directus_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `collection` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique Collection and Name` (`collection`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_settings`
--

LOCK TABLES `directus_settings` WRITE;
/*!40000 ALTER TABLE `directus_settings` DISABLE KEYS */;
INSERT INTO `directus_settings` VALUES (1,'global','cms_user_auto_sign_out','60'),(2,'global','project_name','Photograpress'),(3,'global','project_url','http://192.168.56.101/photograpress/'),(4,'global','rows_per_page','200'),(5,'files','thumbnail_quality','100'),(6,'files','thumbnail_size','200'),(7,'global','cms_thumbnail_url','//192.168.56.101/photograpress/img/logo.png'),(8,'files','file_naming','file_id'),(9,'files','thumbnail_crop_enabled','1'),(10,'files','youtube_api_key',''),(11,'global','max_file_size','2097152'),(12,'global','google_api_key','');
/*!40000 ALTER TABLE `directus_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_tables`
--

DROP TABLE IF EXISTS `directus_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_tables` (
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '1',
  `footer` tinyint(1) DEFAULT '0',
  `list_view` varchar(200) DEFAULT NULL,
  `column_groupings` varchar(255) DEFAULT NULL,
  `primary_column` varchar(255) DEFAULT NULL,
  `user_create_column` varchar(64) DEFAULT NULL,
  `user_update_column` varchar(64) DEFAULT NULL,
  `date_create_column` varchar(64) DEFAULT NULL,
  `date_update_column` varchar(64) DEFAULT NULL,
  `filter_column_blacklist` text,
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_tables`
--

LOCK TABLES `directus_tables` WRITE;
/*!40000 ALTER TABLE `directus_tables` DISABLE KEYS */;
INSERT INTO `directus_tables` VALUES ('acerca',0,1,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('contacto',0,1,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('directus_bookmarks',1,0,1,0,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_files',1,0,1,0,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_messages_recipients',1,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('directus_preferences',1,0,1,0,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_users',1,0,1,0,NULL,NULL,NULL,'id',NULL,NULL,NULL,NULL),('galerias',0,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('join_galeria',1,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('join_proyectos',1,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('meta',0,1,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('proyectos',0,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('redes_sociales',0,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `directus_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_ui`
--

DROP TABLE IF EXISTS `directus_ui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_ui` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(64) DEFAULT NULL,
  `column_name` varchar(64) DEFAULT NULL,
  `ui_name` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`table_name`,`column_name`,`ui_name`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_ui`
--

LOCK TABLES `directus_ui` WRITE;
/*!40000 ALTER TABLE `directus_ui` DISABLE KEYS */;
INSERT INTO `directus_ui` VALUES (1,'directus_users','avatar_file_id','single_file','allowed_filetypes','image/*'),(2,'redes_sociales','red','select','id','select'),(3,'redes_sociales','red','select','options','{\r\n    \"1\":\"500px\",\r\n    \"2\":\"Behance\",\r\n    \"3\":\"Deviantart\",\r\n    \"4\":\"Dropbox\",\r\n    \"5\":\"Facebook\",\r\n    \"6\":\"Flickr\",\r\n    \"7\":\"Instagram\",\r\n    \"8\":\"Linkedin\",\r\n    \"9\":\"Medium\",\r\n    \"10\":\"Pinterest\",\r\n    \"11\":\"Skype\",\r\n    \"12\":\"Snapchat\",\r\n    \"13\":\"Tumblr\",\r\n    \"14\":\"Twitter\",\r\n    \"15\":\"Vimeo\",\r\n    \"16\":\"Whatsapp\",\r\n    \"17\":\"Wordpress\",\r\n    \"18\":\"Youtube\"\r\n}'),(4,'redes_sociales','red','select','allow_null','0'),(5,'redes_sociales','red','select','placeholder_text','');
/*!40000 ALTER TABLE `directus_ui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directus_users`
--

DROP TABLE IF EXISTS `directus_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directus_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `first_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `token` varchar(255) NOT NULL,
  `access_token` varchar(255) DEFAULT '',
  `reset_token` varchar(255) DEFAULT '',
  `reset_expiration` datetime DEFAULT NULL,
  `position` varchar(500) DEFAULT '',
  `email_messages` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `last_page` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `group` int(11) unsigned DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_file_id` int(11) unsigned DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en',
  `timezone` varchar(32) DEFAULT 'America/New_York',
  PRIMARY KEY (`id`),
  UNIQUE KEY `directus_users_token_unique` (`token`),
  UNIQUE KEY `directus_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_users`
--

LOCK TABLES `directus_users` WRITE;
/*!40000 ALTER TABLE `directus_users` DISABLE KEYS */;
INSERT INTO `directus_users` VALUES (1,1,'Admin','User','admin@photograpress.com','$2y$12$c18XG7EWPoP.THIXh15dQuCo89SYnV.DLF3kqSyaMD92HZNUvQOvi','rfR6ezYKonpj3bzm','vYgfoTemKN0qGYDeQbBoLoEVAWlMV9Di','1a52f245906469c126d84c39be9e25655abaf3bd','',NULL,'',1,'2017-03-10 19:23:09','2017-03-10 13:44:00','{\"path\":\"tables/redes_sociales/new\",\"route\":\"entry\"}','',1,'//www.gravatar.com/avatar/cbad385c74e9a48bbd3aa7903ed38b64?s=200&d=identicon&r=g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'es','America/New_York');
/*!40000 ALTER TABLE `directus_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galerias`
--

DROP TABLE IF EXISTS `galerias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text,
  `descripcion` text,
  `slug` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galerias`
--

LOCK TABLES `galerias` WRITE;
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_galeria`
--

DROP TABLE IF EXISTS `join_galeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_galeria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '2',
  `galeria` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_galeria`
--

LOCK TABLES `join_galeria` WRITE;
/*!40000 ALTER TABLE `join_galeria` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_galeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_proyectos`
--

DROP TABLE IF EXISTS `join_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '2',
  `proyecto` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_proyectos`
--

LOCK TABLES `join_proyectos` WRITE;
/*!40000 ALTER TABLE `join_proyectos` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta`
--

DROP TABLE IF EXISTS `meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `titulo` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `google_analytics` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta`
--

LOCK TABLES `meta` WRITE;
/*!40000 ALTER TABLE `meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `titulo` varchar(100) DEFAULT NULL,
  `contenido` text,
  `descripcion` text,
  `slug` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redes_sociales`
--

DROP TABLE IF EXISTS `redes_sociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redes_sociales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `red` int(11) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redes_sociales`
--

LOCK TABLES `redes_sociales` WRITE;
/*!40000 ALTER TABLE `redes_sociales` DISABLE KEYS */;
/*!40000 ALTER TABLE `redes_sociales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-10 13:44:53
