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
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_activity`
--

LOCK TABLES `directus_activity` WRITE;
/*!40000 ALTER TABLE `directus_activity` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_bookmarks`
--

LOCK TABLES `directus_bookmarks` WRITE;
/*!40000 ALTER TABLE `directus_bookmarks` DISABLE KEYS */;
INSERT INTO `directus_bookmarks` VALUES (1,1,'Activity','activity','icon-bell',NULL,'other'),(2,1,'Files','files','icon-attach',NULL,'other'),(3,1,'Messages','messages','icon-chat',NULL,'other'),(4,1,'Users','users','icon-users',NULL,'other'),(5,2,'Activity','activity','icon-bell',NULL,'other'),(6,2,'Files','files','icon-attach',NULL,'other'),(7,2,'Messages','messages','icon-chat',NULL,'other'),(8,2,'Users','users','icon-users',NULL,'other'),(9,3,'Activity','activity','icon-bell',NULL,'other'),(10,3,'Files','files','icon-attach',NULL,'other'),(11,3,'Messages','messages','icon-chat',NULL,'other'),(12,3,'Users','users','icon-users',NULL,'other');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_columns`
--

LOCK TABLES `directus_columns` WRITE;
/*!40000 ALTER TABLE `directus_columns` DISABLE KEYS */;
INSERT INTO `directus_columns` VALUES (1,'directus_users','group',NULL,'many_to_one','MANYTOONE','directus_groups',NULL,NULL,'group_id',0,0,0,NULL,''),(2,'directus_users','avatar_file_id','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'avatar_file_id',0,0,0,NULL,''),(3,'meta','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(4,'meta','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(5,'meta','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Título global del sitio.'),(6,'meta','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Descripción global del sitio (SEO)'),(7,'meta','google_analytics',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'Código Google Analytics. Ej. UA-XXXXXXXX-X'),(8,'contacto','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,0,''),(9,'contacto','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,1,''),(10,'contacto','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,2,'Título de la sección. Ej. Contacto'),(11,'contacto','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,0,0,3,'Contenido de la sección (puede estar vacío)'),(12,'contacto','cuidad','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,5,''),(13,'contacto','telefono',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,6,'Teléfono de contacto'),(14,'contacto','email',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,7,'Email de contacto'),(15,'contacto','mapa','VARCHAR','map',NULL,NULL,NULL,NULL,NULL,0,0,0,8,''),(16,'acerca','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,0,''),(17,'acerca','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,1,''),(18,'acerca','imagen','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'imagen',0,0,0,5,'Imágen destacada'),(19,'acerca','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,2,'Título de la sección. Ej. Acerca de'),(20,'acerca','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,0,0,3,'Contenido de la sección (puede estar vacío)'),(21,'acerca','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,0,4,'Descripción de la sección (SEO)'),(22,'contacto','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,0,0,4,'Descripción de la sección (SEO)'),(23,'redes_sociales','red','INT','select',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(24,'redes_sociales','url',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,'URL completa (con https:// o http://)'),(25,'redes_sociales','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(26,'redes_sociales','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(27,'join_galeria','galeria','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(28,'join_galeria','media','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(29,'join_galeria','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(30,'join_galeria','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(31,'galerias','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Nombre de la galería'),(32,'galerias','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Sobre que es la galería, su historia, objetivo etc (puede estar vacío)'),(33,'galerias','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Descripción de la galería (SEO)'),(34,'galerias','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,1,1,0,9999,''),(35,'galerias','media','ALIAS','multiple_files','MANYTOMANY','directus_files','join_galeria','galeria','media',0,1,0,9999,'Imágenes y videos de Youtube o Vimeo'),(36,'galerias','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(37,'galerias','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(38,'join_proyectos','proyecto','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(40,'join_proyectos','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(41,'join_proyectos','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(42,'join_proyectos','media','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(43,'proyectos','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,9999,'Nombre del p'),(44,'proyectos','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Sobre que es la galería, su historia, objetivo etc (puede estar vacío)'),(45,'proyectos','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,0,9999,'Descripción del proyecto (SEO)'),(46,'proyectos','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,1,1,0,9999,''),(47,'proyectos','media','ALIAS','multiple_files','MANYTOMANY','directus_files','join_proyectos','proyecto','media',0,1,0,9999,'Imágenes y videos de Youtube o Vimeo'),(48,'proyectos','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(49,'proyectos','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(50,'historias','titulo',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,1,2,'título dela historia'),(51,'historias','slug',NULL,'slug',NULL,NULL,NULL,NULL,NULL,1,1,0,3,''),(52,'historias','contenido',NULL,'wysiwyg',NULL,NULL,NULL,NULL,NULL,0,1,0,4,'El contenido de la entrada.'),(53,'historias','imagen','INT','single_file','MANYTOONE','directus_files',NULL,NULL,'imagen',0,1,0,6,'Imágen destacada'),(54,'historias','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,0,''),(55,'historias','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,1,''),(56,'historias','descripcion',NULL,'textarea',NULL,NULL,NULL,NULL,NULL,0,1,0,5,'Descripción de la galería (SEO)'),(57,'historias','fecha',NULL,'date',NULL,NULL,NULL,NULL,NULL,0,0,1,7,''),(58,'slider','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,0,''),(59,'slider','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,1,''),(60,'join_slider','id',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,1,1,''),(61,'join_slider','active',NULL,'numeric',NULL,NULL,NULL,NULL,NULL,0,0,0,2,''),(62,'join_slider','slider','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(63,'join_slider','media','VARCHAR','textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,9999,''),(64,'slider','media','ALIAS','multiple_files','MANYTOMANY','directus_files','join_slider','slider','media',0,1,0,2,'Imágenes del slider'),(65,'slider','texto',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,1,0,4,'Texto sobre imagenes'),(66,'slider','cta',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,1,0,5,'Texto del Call to Action'),(67,'slider','url',NULL,'textinput',NULL,NULL,NULL,NULL,NULL,0,0,0,3,'¿A donde apunta?');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_groups`
--

LOCK TABLES `directus_groups` WRITE;
/*!40000 ALTER TABLE `directus_groups` DISABLE KEYS */;
INSERT INTO `directus_groups` VALUES (1,'Administrator',NULL,'0',NULL,1,1,1,1),(2,'Editor',NULL,NULL,'{\n  \"Contenido\": {\n      \"Galería\": {\n          \"path\": \"tables/galerias\"\n      },\n      \"Proyectos\": {\n          \"path\": \"tables/proyectos\"\n      },\n      \"Historias\": {\n          \"path\": \"tables/historias\"\n      },\n      \"Slider\": {\n          \"path\": \"tables/slider\"\n      }\n  },\n  \"Sitio\": {\n      \"Acerca de\": {\n          \"path\": \"tables/acerca\"\n      },\n      \"Contacto\": {\n          \"path\": \"tables/contacto\"\n      },\n      \"Metadatos\": {\n          \"path\": \"tables/meta\"\n      },\n      \"Sociales\": {\n          \"path\": \"tables/redes_sociales\"\n      }\n  }\n}',1,1,1,1),(3,'API',NULL,NULL,'{\n  \"Contenido\": {\n      \"Galería\": {\n          \"path\": \"tables/galerias\"\n      },\n      \"Proyectos\": {\n          \"path\": \"tables/proyectos\"\n      },\n      \"Historias\": {\n          \"path\": \"tables/historias\"\n      },\n      \"Slider\": {\n          \"path\": \"tables/slider\"\n      }\n  },\n  \"Sitio\": {\n      \"Acerca de\": {\n          \"path\": \"tables/acerca\"\n      },\n      \"Contacto\": {\n          \"path\": \"tables/contacto\"\n      },\n      \"Metadatos\": {\n          \"path\": \"tables/meta\"\n      },\n      \"Sociales\": {\n          \"path\": \"tables/redes_sociales\"\n      }\n  }\n}',1,1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_preferences`
--

LOCK TABLES `directus_preferences` WRITE;
/*!40000 ALTER TABLE `directus_preferences` DISABLE KEYS */;
INSERT INTO `directus_preferences` VALUES (1,1,'directus_bookmarks',NULL,'user,title,url,icon_class','id','ASC','1,2',NULL),(2,1,'directus_columns',NULL,'table_name,column_name,data_type,ui,relationship_type','sort','ASC','1,2',NULL),(3,1,'directus_files',NULL,'item,title','date_uploaded','DESC','1,2',NULL),(4,1,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist,nav_override,show_activity','id','ASC','1,2',NULL),(5,1,'directus_messages',NULL,'from,subject,message,datetime,attachment','id','ASC','1,2',NULL),(6,1,'directus_messages_recipients',NULL,'message_id,recipient,read,group','id','ASC','1,2',NULL),(7,1,'directus_preferences',NULL,'user,table_name,title,columns_visible','sort','ASC','1,2',NULL),(8,1,'directus_privileges',NULL,'table_name,allow_view,allow_add,allow_edit,allow_delete','id','ASC','1,2',NULL),(9,1,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL),(10,1,'directus_settings',NULL,'collection,name,value','id','ASC','1,2',NULL),(11,1,'directus_tables',NULL,'hidden,single,default_status,footer,list_view','table_name','ASC','1,2',NULL),(12,1,'directus_ui',NULL,'table_name,column_name,ui_name,name,value','id','ASC','1,2',NULL),(13,1,'directus_users',NULL,'first_name,last_name,email,password','id','ASC','1,2',NULL),(15,1,'meta',NULL,'titulo,descripcion,google_analytics','id','ASC','1,2',NULL),(16,1,'contacto',NULL,'titulo,contenido,cuidad,telefono','id','ASC','1,2',NULL),(17,1,'acerca',NULL,'imagen,titulo,contenido,descripcion','id','ASC','1,2',NULL),(18,1,'redes_sociales',NULL,'red,url','id','ASC','1,2',NULL),(19,1,'join_galeria',NULL,'galeria,media','id','ASC','1,2',NULL),(20,1,'galerias',NULL,'titulo','id','ASC','1,2',NULL),(21,1,'join_proyectos',NULL,'proyecto,media','id','ASC','1,2',NULL),(22,1,'proyectos',NULL,'titulo,contenido,descripcion,slug','id','ASC','1,2',NULL),(23,2,'acerca',NULL,'imagen,titulo,contenido,descripcion','id','ASC','1,2',NULL),(24,2,'contacto',NULL,'titulo,contenido,cuidad,telefono','id','ASC','1,2',NULL),(25,2,'directus_bookmarks',NULL,'user,title,url,icon_class','id','ASC','1,2',NULL),(26,2,'directus_columns',NULL,'table_name,column_name,data_type,ui,relationship_type','sort','ASC','1,2',NULL),(27,2,'directus_files',NULL,'item,title','date_uploaded','DESC','1,2',NULL),(28,2,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist,nav_override,show_activity','id','ASC','1,2',NULL),(29,2,'directus_messages',NULL,'from,subject,message,datetime,attachment','id','ASC','1,2',NULL),(30,2,'directus_messages_recipients',NULL,'message_id,recipient,read,group','id','ASC','1,2',NULL),(31,2,'directus_preferences',NULL,'user,table_name,title,columns_visible','sort','ASC','1,2',NULL),(32,2,'directus_privileges',NULL,'table_name,allow_view,allow_add,allow_edit,allow_delete','id','ASC','1,2',NULL),(33,2,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL),(34,2,'directus_settings',NULL,'collection,name,value','id','ASC','1,2',NULL),(35,2,'directus_tables',NULL,'hidden,single,default_status,footer,list_view','table_name','ASC','1,2',NULL),(36,2,'directus_ui',NULL,'table_name,column_name,ui_name,name,value','id','ASC','1,2',NULL),(37,2,'directus_users',NULL,'first_name,last_name,email,password','id','ASC','1,2',NULL),(38,2,'galerias',NULL,'titulo','id','ASC','1,2',NULL),(39,2,'join_galeria',NULL,'galeria,media','id','ASC','1,2',NULL),(40,2,'join_proyectos',NULL,'proyecto,media','id','ASC','1,2',NULL),(41,2,'meta',NULL,'titulo,descripcion,google_analytics','id','ASC','1,2',NULL),(42,2,'proyectos',NULL,'titulo,contenido,descripcion,slug','id','ASC','1,2',NULL),(43,2,'redes_sociales',NULL,'red,url','id','ASC','1,2',NULL),(44,3,'acerca',NULL,'imagen,titulo,contenido,descripcion','id','ASC','1,2',NULL),(45,3,'contacto',NULL,'titulo,contenido,cuidad,telefono','id','ASC','1,2',NULL),(46,3,'directus_bookmarks',NULL,'user,title,url,icon_class','id','ASC','1,2',NULL),(47,3,'directus_columns',NULL,'table_name,column_name,data_type,ui,relationship_type','sort','ASC','1,2',NULL),(48,3,'directus_files',NULL,'item,title','date_uploaded','DESC','1,2',NULL),(49,3,'directus_groups',NULL,'name,description,restrict_to_ip_whitelist,nav_override,show_activity','id','ASC','1,2',NULL),(50,3,'directus_messages',NULL,'from,subject,message,datetime,attachment','id','ASC','1,2',NULL),(51,3,'directus_messages_recipients',NULL,'message_id,recipient,read,group','id','ASC','1,2',NULL),(52,3,'directus_preferences',NULL,'user,table_name,title,columns_visible','sort','ASC','1,2',NULL),(53,3,'directus_privileges',NULL,'table_name,allow_view,allow_add,allow_edit,allow_delete','id','ASC','1,2',NULL),(54,3,'directus_schema_migrations',NULL,'version','id','ASC','1,2',NULL),(55,3,'directus_settings',NULL,'collection,name,value','id','ASC','1,2',NULL),(56,3,'directus_tables',NULL,'hidden,single,default_status,footer,list_view','table_name','ASC','1,2',NULL),(57,3,'directus_ui',NULL,'table_name,column_name,ui_name,name,value','id','ASC','1,2',NULL),(58,3,'directus_users',NULL,'first_name,last_name,email,password','id','ASC','1,2',NULL),(59,3,'galerias',NULL,'titulo','id','ASC','1,2',NULL),(60,3,'join_galeria',NULL,'galeria,media','id','ASC','1,2',NULL),(61,3,'join_proyectos',NULL,'proyecto,media','id','ASC','1,2',NULL),(62,3,'meta',NULL,'titulo,descripcion,google_analytics','id','ASC','1,2',NULL),(63,3,'proyectos',NULL,'titulo,contenido,descripcion,slug','id','ASC','1,2',NULL),(64,3,'redes_sociales',NULL,'red,url','id','ASC','1,2',NULL),(65,1,'historias',NULL,'titulo','id','ASC','1,2',NULL),(66,1,'slider',NULL,'texto,cta,url,media','id','ASC','1,2',NULL),(67,1,'join_slider',NULL,'slider,media','id','ASC','1,2',NULL),(68,2,'historias',NULL,'titulo','id','ASC','1,2',NULL),(69,3,'historias',NULL,'titulo','id','ASC','1,2',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_privileges`
--

LOCK TABLES `directus_privileges` WRITE;
/*!40000 ALTER TABLE `directus_privileges` DISABLE KEYS */;
INSERT INTO `directus_privileges` VALUES (1,'directus_activity',2,1,2,2,1,1,NULL,NULL,1,0),(2,'directus_columns',2,1,2,2,1,1,NULL,NULL,1,0),(3,'directus_groups',2,1,2,2,1,1,NULL,NULL,1,0),(4,'directus_files',2,1,2,2,1,1,NULL,NULL,1,0),(5,'directus_messages',2,1,2,2,1,1,NULL,NULL,1,0),(6,'directus_preferences',2,1,2,2,1,1,NULL,NULL,1,0),(7,'directus_privileges',2,1,2,2,1,1,NULL,NULL,1,0),(8,'directus_settings',2,1,2,2,1,1,NULL,NULL,1,0),(9,'directus_tables',2,1,2,2,1,1,NULL,NULL,1,0),(10,'directus_ui',2,1,2,2,1,1,NULL,NULL,1,0),(11,'directus_users',2,1,2,2,1,1,NULL,NULL,1,0),(12,'directus_messages_recipients',2,1,2,2,1,1,NULL,NULL,1,0),(13,'directus_bookmarks',2,1,2,2,1,1,NULL,NULL,1,0),(14,'directus_users',1,0,1,0,1,2,'token','group,token',1,0),(16,'meta',2,1,2,2,1,1,NULL,NULL,1,0),(17,'contacto',2,1,2,2,1,1,NULL,NULL,1,0),(18,'acerca',2,1,2,2,1,1,NULL,NULL,1,0),(19,'redes_sociales',2,1,2,2,1,1,NULL,NULL,1,0),(20,'join_galeria',2,1,2,2,1,1,NULL,NULL,1,0),(21,'galerias',2,1,2,2,1,1,NULL,NULL,1,0),(22,'join_proyectos',2,1,2,2,1,1,NULL,NULL,1,0),(23,'proyectos',2,1,2,2,1,1,NULL,NULL,1,0),(24,'acerca',2,1,2,0,1,2,NULL,NULL,1,0),(25,'contacto',2,1,2,0,1,2,NULL,NULL,1,0),(26,'galerias',2,1,2,2,1,2,NULL,NULL,1,0),(27,'join_galeria',2,1,2,2,1,2,NULL,NULL,1,0),(28,'join_proyectos',2,1,2,2,1,2,NULL,NULL,1,0),(29,'meta',2,1,2,0,1,2,NULL,NULL,1,0),(30,'proyectos',2,1,2,2,1,2,NULL,NULL,1,0),(31,'redes_sociales',2,1,2,2,1,2,NULL,NULL,1,0),(32,'directus_users',1,0,1,0,1,3,'token','group,token',1,0),(33,'acerca',2,0,0,0,1,3,NULL,NULL,1,0),(34,'contacto',2,0,0,0,1,3,NULL,NULL,1,0),(35,'galerias',2,0,0,0,1,3,NULL,NULL,1,0),(36,'join_galeria',2,0,0,0,1,3,NULL,NULL,1,0),(37,'join_proyectos',2,0,0,0,1,3,NULL,NULL,1,0),(38,'meta',2,0,0,0,1,3,NULL,NULL,1,0),(39,'proyectos',2,0,0,0,1,3,NULL,NULL,1,0),(40,'redes_sociales',2,0,0,0,1,3,NULL,NULL,1,0),(41,'directus_files',2,1,2,2,2,2,NULL,NULL,1,0),(42,'directus_files',2,2,2,2,2,2,NULL,NULL,1,0),(43,'historias',2,1,2,2,1,1,NULL,NULL,1,0),(44,'historias',2,1,2,2,1,2,NULL,NULL,1,0),(45,'historias',2,0,0,0,1,3,NULL,NULL,1,0),(46,'slider',2,1,2,2,1,1,NULL,NULL,1,0),(47,'join_slider',2,1,2,2,1,1,NULL,NULL,1,0),(48,'join_slider',2,0,0,0,1,3,NULL,NULL,1,0),(49,'slider',2,0,0,0,1,3,NULL,NULL,1,0),(50,'join_slider',2,1,2,0,1,2,NULL,NULL,1,0),(51,'slider',2,1,2,0,1,2,NULL,NULL,1,0);
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
INSERT INTO `directus_tables` VALUES ('acerca',0,1,1,0,NULL,NULL,'id',NULL,NULL,NULL,NULL,NULL),('contacto',0,1,1,0,NULL,NULL,'id',NULL,NULL,NULL,NULL,NULL),('directus_bookmarks',1,0,1,0,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_files',1,0,1,0,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_messages_recipients',1,0,1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('directus_preferences',1,0,1,0,NULL,NULL,NULL,'user',NULL,NULL,NULL,NULL),('directus_users',1,0,1,0,NULL,NULL,NULL,'id',NULL,NULL,NULL,NULL),('galerias',0,0,1,0,NULL,NULL,'id',NULL,NULL,NULL,NULL,NULL),('historias',0,0,1,0,NULL,NULL,'id',NULL,NULL,NULL,NULL,NULL),('join_galeria',1,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('join_proyectos',1,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('join_slider',1,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('meta',0,1,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('proyectos',0,0,1,0,NULL,NULL,'id',NULL,NULL,NULL,NULL,NULL),('redes_sociales',0,0,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),('slider',0,1,1,0,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_ui`
--

LOCK TABLES `directus_ui` WRITE;
/*!40000 ALTER TABLE `directus_ui` DISABLE KEYS */;
INSERT INTO `directus_ui` VALUES (1,'directus_users','avatar_file_id','single_file','allowed_filetypes','image/*'),(2,'redes_sociales','red','select','id','select'),(3,'redes_sociales','red','select','options','{\r\n    \"1\":\"500px\",\r\n    \"2\":\"Behance\",\r\n    \"3\":\"Deviantart\",\r\n    \"4\":\"Dropbox\",\r\n    \"5\":\"Facebook\",\r\n    \"6\":\"Flickr\",\r\n    \"7\":\"Instagram\",\r\n    \"8\":\"Linkedin\",\r\n    \"9\":\"Medium\",\r\n    \"10\":\"Pinterest\",\r\n    \"11\":\"Skype\",\r\n    \"12\":\"Snapchat\",\r\n    \"13\":\"Tumblr\",\r\n    \"14\":\"Twitter\",\r\n    \"15\":\"Vimeo\",\r\n    \"16\":\"Whatsapp\",\r\n    \"17\":\"Wordpress\",\r\n    \"18\":\"Youtube\"\r\n}'),(4,'redes_sociales','red','select','allow_null','0'),(5,'redes_sociales','red','select','placeholder_text',''),(6,'historias','fecha','date','id','date'),(7,'historias','fecha','date','readonly','0'),(8,'historias','fecha','date','format',''),(9,'historias','fecha','date','contextual_date_in_listview','1'),(10,'historias','fecha','date','auto-populate_when_hidden_and_null','1'),(11,'historias','contenido','wysiwyg','id','wysiwyg'),(12,'historias','contenido','wysiwyg','readonly','0'),(13,'historias','contenido','wysiwyg','height','700'),(14,'historias','contenido','wysiwyg','bold','1'),(15,'historias','contenido','wysiwyg','italic','1'),(16,'historias','contenido','wysiwyg','underline','1'),(17,'historias','contenido','wysiwyg','strikethrough','1'),(18,'historias','contenido','wysiwyg','rule','0'),(19,'historias','contenido','wysiwyg','createlink','1'),(20,'historias','contenido','wysiwyg','insertimage','1'),(21,'historias','contenido','wysiwyg','embedVideo','1'),(22,'historias','contenido','wysiwyg','embed_width','300'),(23,'historias','contenido','wysiwyg','embed_height','200'),(24,'historias','contenido','wysiwyg','html','1'),(25,'historias','contenido','wysiwyg','orderedList','1'),(26,'historias','contenido','wysiwyg','h1','1'),(27,'historias','contenido','wysiwyg','h2','1'),(28,'historias','contenido','wysiwyg','h3','1'),(29,'historias','contenido','wysiwyg','h4','0'),(30,'historias','contenido','wysiwyg','h5','0'),(31,'historias','contenido','wysiwyg','h6','0'),(32,'historias','contenido','wysiwyg','blockquote','1'),(33,'historias','contenido','wysiwyg','ul','1'),(34,'historias','contenido','wysiwyg','ol','1'),(35,'acerca','contenido','wysiwyg','id','wysiwyg'),(36,'acerca','contenido','wysiwyg','readonly','0'),(37,'acerca','contenido','wysiwyg','height','700'),(38,'acerca','contenido','wysiwyg','bold','1'),(39,'acerca','contenido','wysiwyg','italic','1'),(40,'acerca','contenido','wysiwyg','underline','1'),(41,'acerca','contenido','wysiwyg','strikethrough','1'),(42,'acerca','contenido','wysiwyg','rule','0'),(43,'acerca','contenido','wysiwyg','createlink','1'),(44,'acerca','contenido','wysiwyg','insertimage','1'),(45,'acerca','contenido','wysiwyg','embedVideo','1'),(46,'acerca','contenido','wysiwyg','embed_width','300'),(47,'acerca','contenido','wysiwyg','embed_height','200'),(48,'acerca','contenido','wysiwyg','html','1'),(49,'acerca','contenido','wysiwyg','orderedList','1'),(50,'acerca','contenido','wysiwyg','h1','1'),(51,'acerca','contenido','wysiwyg','h2','1'),(52,'acerca','contenido','wysiwyg','h3','1'),(53,'acerca','contenido','wysiwyg','h4','0'),(54,'acerca','contenido','wysiwyg','h5','0'),(55,'acerca','contenido','wysiwyg','h6','0'),(56,'acerca','contenido','wysiwyg','blockquote','1'),(57,'acerca','contenido','wysiwyg','ul','1'),(58,'acerca','contenido','wysiwyg','ol','1'),(59,'contacto','contenido','wysiwyg','id','wysiwyg'),(60,'contacto','contenido','wysiwyg','readonly','0'),(61,'contacto','contenido','wysiwyg','height','700'),(62,'contacto','contenido','wysiwyg','bold','1'),(63,'contacto','contenido','wysiwyg','italic','1'),(64,'contacto','contenido','wysiwyg','underline','1'),(65,'contacto','contenido','wysiwyg','strikethrough','1'),(66,'contacto','contenido','wysiwyg','rule','0'),(67,'contacto','contenido','wysiwyg','createlink','1'),(68,'contacto','contenido','wysiwyg','insertimage','1'),(69,'contacto','contenido','wysiwyg','embedVideo','1'),(70,'contacto','contenido','wysiwyg','embed_width','300'),(71,'contacto','contenido','wysiwyg','embed_height','200'),(72,'contacto','contenido','wysiwyg','html','1'),(73,'contacto','contenido','wysiwyg','orderedList','1'),(74,'contacto','contenido','wysiwyg','h1','1'),(75,'contacto','contenido','wysiwyg','h2','1'),(76,'contacto','contenido','wysiwyg','h3','1'),(77,'contacto','contenido','wysiwyg','h4','0'),(78,'contacto','contenido','wysiwyg','h5','0'),(79,'contacto','contenido','wysiwyg','h6','0'),(80,'contacto','contenido','wysiwyg','blockquote','1'),(81,'contacto','contenido','wysiwyg','ul','1'),(82,'contacto','contenido','wysiwyg','ol','1'),(83,'galerias','contenido','wysiwyg','id','wysiwyg'),(84,'galerias','contenido','wysiwyg','readonly','0'),(85,'galerias','contenido','wysiwyg','height','700'),(86,'galerias','contenido','wysiwyg','bold','1'),(87,'galerias','contenido','wysiwyg','italic','1'),(88,'galerias','contenido','wysiwyg','underline','1'),(89,'galerias','contenido','wysiwyg','strikethrough','1'),(90,'galerias','contenido','wysiwyg','rule','0'),(91,'galerias','contenido','wysiwyg','createlink','1'),(92,'galerias','contenido','wysiwyg','insertimage','1'),(93,'galerias','contenido','wysiwyg','embedVideo','1'),(94,'galerias','contenido','wysiwyg','embed_width','300'),(95,'galerias','contenido','wysiwyg','embed_height','200'),(96,'galerias','contenido','wysiwyg','html','1'),(97,'galerias','contenido','wysiwyg','orderedList','1'),(98,'galerias','contenido','wysiwyg','h1','1'),(99,'galerias','contenido','wysiwyg','h2','1'),(100,'galerias','contenido','wysiwyg','h3','1'),(101,'galerias','contenido','wysiwyg','h4','0'),(102,'galerias','contenido','wysiwyg','h5','0'),(103,'galerias','contenido','wysiwyg','h6','0'),(104,'galerias','contenido','wysiwyg','blockquote','1'),(105,'galerias','contenido','wysiwyg','ul','1'),(106,'galerias','contenido','wysiwyg','ol','1'),(107,'proyectos','contenido','wysiwyg','id','wysiwyg'),(108,'proyectos','contenido','wysiwyg','readonly','0'),(109,'proyectos','contenido','wysiwyg','height','700'),(110,'proyectos','contenido','wysiwyg','bold','1'),(111,'proyectos','contenido','wysiwyg','italic','1'),(112,'proyectos','contenido','wysiwyg','underline','1'),(113,'proyectos','contenido','wysiwyg','strikethrough','1'),(114,'proyectos','contenido','wysiwyg','rule','0'),(115,'proyectos','contenido','wysiwyg','createlink','1'),(116,'proyectos','contenido','wysiwyg','insertimage','1'),(117,'proyectos','contenido','wysiwyg','embedVideo','1'),(118,'proyectos','contenido','wysiwyg','embed_width','300'),(119,'proyectos','contenido','wysiwyg','embed_height','200'),(120,'proyectos','contenido','wysiwyg','html','1'),(121,'proyectos','contenido','wysiwyg','orderedList','1'),(122,'proyectos','contenido','wysiwyg','h1','1'),(123,'proyectos','contenido','wysiwyg','h2','1'),(124,'proyectos','contenido','wysiwyg','h3','1'),(125,'proyectos','contenido','wysiwyg','h4','0'),(126,'proyectos','contenido','wysiwyg','h5','0'),(127,'proyectos','contenido','wysiwyg','h6','0'),(128,'proyectos','contenido','wysiwyg','blockquote','1'),(129,'proyectos','contenido','wysiwyg','ul','1'),(130,'proyectos','contenido','wysiwyg','ol','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directus_users`
--

LOCK TABLES `directus_users` WRITE;
/*!40000 ALTER TABLE `directus_users` DISABLE KEYS */;
INSERT INTO `directus_users` VALUES (1,1,'Admin','User','admin@photograpress.com','$2y$12$c18XG7EWPoP.THIXh15dQuCo89SYnV.DLF3kqSyaMD92HZNUvQOvi','rfR6ezYKonpj3bzm','vYgfoTemKN0qGYDeQbBoLoEVAWlMV9Di','41403782d0798ed5bfc8d97d49f98a3fc4994a23','',NULL,'',1,'2017-03-13 16:43:12','2017-03-13 13:27:00','{\"path\":\"tables/slider\",\"route\":\"entries\"}','',1,'//www.gravatar.com/avatar/cbad385c74e9a48bbd3aa7903ed38b64?s=200&d=identicon&r=g',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'es','America/New_York'),(2,1,'API','Access','api@photograpress.com','$2y$12$zsNpPOONohtQDGFZz0Zq8u.Go1vbLBMezNRX.5gR/lI5Jh6/N/lxW','58c30faac73c5','fDK0MQPsBRZPUYIg','d62a74a34eb84b5d943453dd608197f9a60bb5fb','','2017-03-10 14:42:18','',0,'2017-03-13 16:08:42','2017-03-13 10:08:00','{\"path\":\"files\",\"route\":\"files\"}','',3,'//www.gravatar.com/avatar/0be17372b7d458297f9cfc3a52a2d9df?s=200&d=identicon&r=g',NULL,'','','','','','','es','Pacific/Midway'),(3,1,'Editor','User','editor@photograpress.com','$2y$12$CYgu0kBkO8QRKhxmTxVmGuIqQCj7M/j65xnSqm5wWnvkUVxuSnAmC','58c31092c054f','LdJzJlqYslydFRHI','765dce3bf71da0ae811fece7bf54045fde6c8f28','','2017-03-10 14:46:10','',1,'2017-03-13 16:09:36','2017-03-13 10:35:00','{\"path\":\"tables/galerias\",\"route\":\"entries\"}','',2,'//www.gravatar.com/avatar/c510f7bedc3a04d55e285e166542de63?s=200&d=identicon&r=g',NULL,'','','','','','','es','America/Mexico_City');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galerias`
--

LOCK TABLES `galerias` WRITE;
/*!40000 ALTER TABLE `galerias` DISABLE KEYS */;
/*!40000 ALTER TABLE `galerias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historias`
--

DROP TABLE IF EXISTS `historias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `titulo` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `contenido` text,
  `imagen` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historias`
--

LOCK TABLES `historias` WRITE;
/*!40000 ALTER TABLE `historias` DISABLE KEYS */;
/*!40000 ALTER TABLE `historias` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
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
-- Table structure for table `join_slider`
--

DROP TABLE IF EXISTS `join_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '2',
  `slider` varchar(100) DEFAULT NULL,
  `media` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_slider`
--

LOCK TABLES `join_slider` WRITE;
/*!40000 ALTER TABLE `join_slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_slider` ENABLE KEYS */;
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

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) NOT NULL DEFAULT '1',
  `texto` varchar(100) DEFAULT NULL,
  `cta` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` VALUES (1,1,'','','');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-13 13:28:23
