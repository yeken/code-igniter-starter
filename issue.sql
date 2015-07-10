-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: localhost    Database: issue
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.12.04.1

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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `brief` varchar(145) NOT NULL,
  `description` varchar(145) NOT NULL,
  `button` varchar(45) NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'Banner 1','Resumen del banner 1','Detalle del banner 1&nbsp;Detalle del banner 1&nbsp;Detalle del banner 1','btn-blue',15,1,'2015-07-07 20:35:39'),(2,'Banner 2','resumen del banner 2','detalle del banner 2','btn-black',16,1,'2015-07-07 20:38:10');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitauth_groups`
--

DROP TABLE IF EXISTS `bitauth_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitauth_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(48) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `roles` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitauth_groups`
--

LOCK TABLES `bitauth_groups` WRITE;
/*!40000 ALTER TABLE `bitauth_groups` DISABLE KEYS */;
INSERT INTO `bitauth_groups` VALUES (1,'Administrador','Administadores con accesso completo a todo el sitio','1'),(2,'Manager','','0'),(3,'Jugador','','');
/*!40000 ALTER TABLE `bitauth_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitauth_logins`
--

DROP TABLE IF EXISTS `bitauth_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitauth_logins` (
  `login_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` bigint(20) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `success` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitauth_logins`
--

LOCK TABLES `bitauth_logins` WRITE;
/*!40000 ALTER TABLE `bitauth_logins` DISABLE KEYS */;
INSERT INTO `bitauth_logins` VALUES (1,3232235881,3,'2014-09-09 17:02:08',1),(2,3232235881,3,'2014-09-10 16:34:09',1),(3,3232235881,3,'2014-09-11 10:46:51',1),(4,3232243969,3,'2015-06-19 19:39:35',1),(5,3232243969,3,'2015-07-06 16:50:54',1),(6,3232243969,3,'2015-07-06 22:35:01',1),(7,3232243969,3,'2015-07-07 20:31:36',1),(8,3232243969,3,'2015-07-07 23:51:21',1),(9,3232243969,3,'2015-07-08 16:15:29',1),(10,3232243969,3,'2015-07-08 21:17:10',1),(11,3232243969,3,'2015-07-09 18:03:03',1),(12,3232243969,3,'2015-07-10 13:20:47',1);
/*!40000 ALTER TABLE `bitauth_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitauth_userdata`
--

DROP TABLE IF EXISTS `bitauth_userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitauth_userdata` (
  `userdata_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`userdata_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitauth_userdata`
--

LOCK TABLES `bitauth_userdata` WRITE;
/*!40000 ALTER TABLE `bitauth_userdata` DISABLE KEYS */;
INSERT INTO `bitauth_userdata` VALUES (3,3);
/*!40000 ALTER TABLE `bitauth_userdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitauth_users`
--

DROP TABLE IF EXISTS `bitauth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitauth_users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `displayname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `password_last_set` datetime NOT NULL,
  `password_never_expires` tinyint(1) NOT NULL DEFAULT '0',
  `remember_me` varchar(40) NOT NULL,
  `activation_code` varchar(40) NOT NULL,
  `groups_names` varchar(255) NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_code` varchar(40) NOT NULL,
  `forgot_generated` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `file_manager_id` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_login_ip` int(10) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `group_id` (`group_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=21826 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitauth_users`
--

LOCK TABLES `bitauth_users` WRITE;
/*!40000 ALTER TABLE `bitauth_users` DISABLE KEYS */;
INSERT INTO `bitauth_users` VALUES (21822,'bla','bla blas','','admin@bla.com','$2a$08$LfEZbVVeor1fIw79d5GEO.DVNWT6KZUJsYHkDIudtDX0iI0YPs8s2','2014-08-29 12:34:33',0,'8812207e38cccfed486024394288d8a22b66a632','','Jugador',3,1,'','0000-00-00 00:00:00',1,21,'2014-08-29 12:34:58',2147483647,'2014-08-20 18:06:35'),(21823,'admin3232','32132132','','j@a.com','$2a$08$jJelYpqj2/qPWkah4.QFQOWYwNxJrndapu6XrUFkSBYrR9CLDJbk.','2014-08-20 18:21:46',0,'','','Jugador',3,1,'','0000-00-00 00:00:00',1,22,'0000-00-00 00:00:00',0,'2014-08-20 18:21:46'),(3,'admin','Admin tester','','admin@admin.com','$2a$08$TWJfCg7btiKu4bU4JurF9uJh5Byb7ycRMTZii5vqw93JbJFrT.wEq','2013-03-15 16:12:39',0,'76940f5cdb67099ff5cabe6adab47dc40c3f87d9','','Administrador',1,1,'','2013-03-15 16:04:54',1,23,'2015-07-10 13:20:47',2147483647,'2012-09-28 16:27:01'),(21824,'bla','Blas parera','','bla2@gmail.com','$2a$08$bDfP.YHM8GiAdb0CsjXwH.Z41rja57p6r/dZyE6mmHT0mwOXXjBse','2014-08-29 12:40:08',0,'','','Manager',2,1,'','0000-00-00 00:00:00',1,24,'2014-08-29 12:40:28',2147483647,'2014-08-29 12:40:08'),(21825,'bla','fdsfd','','bla@bla.com','$2a$08$MqhbrxvxBsfmga5f//Xt1uZI08GxZ60R4ZrOB/PmR70W0Kum0cKl.','2014-08-29 13:30:28',0,'','','Manager',2,1,'','0000-00-00 00:00:00',1,25,'0000-00-00 00:00:00',0,'2014-08-29 13:30:28');
/*!40000 ALTER TABLE `bitauth_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(45) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Post1','<span style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\">Con una exclusiva fórmula, clínica y dermatológicamente testeada, la Coloración en Crema Issue combina la belleza del color con la fuerza de su duración, ofreciendo un producto de alta calidad al mejor precio.&nbsp;</span><br style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\"><br style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\">Issue te ofrece una coloración práctica, con la mejor calidad al mejor precio. Incluye Coloración en crema Issue y Activador en Crema Issue en la proporción justa para una mezcla homogénea y un mejor resultado en sus cabellos, proporcionando un color intenso, luminoso y parejo de raíz a puntas&nbsp;</span><br style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\"><br style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px; line-height: 16px;\">Además, trae un Shock de Keratina para maximizar la belleza del cabello luego de la coloración, dejándolo suave y vital</span>','Tendencia',1,17,'2015-07-08 21:22:15'),(2,'Post2','<span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><span style=\"background-color: rgb(159, 175, 209);\">Blog post 2</span><br>','Consejo',1,18,'2015-07-08 22:09:21'),(3,'post3','asdA SDAS DS DAS DAS DAS DASD ASD SA','Consejo',1,19,'2015-07-09 18:21:28');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `file_manager_id` int(10) unsigned DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `description` text,
  `brief` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'coloración',7,'2015-07-06 16:54:53','Lorem ipsum dolor sit amet, consectetur adipisicing elit.','Lorem ipsum'),(2,'decoloración',8,'2015-07-06 16:55:10','Lorem ipsum dolor sit amet, consectetur adipisicing elit.','Lorem ipsum'),(4,'tratamientos',10,'2015-07-06 16:55:26','Lorem ipsum dolor sit amet, consectetur adipisicing elit.','loren ipsum');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs_users`
--

DROP TABLE IF EXISTS `configs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs_users` (
  `configuration_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs_users`
--

LOCK TABLES `configs_users` WRITE;
/*!40000 ALTER TABLE `configs_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `configs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(250) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  `text_footer` varchar(250) NOT NULL,
  `url_facebook` varchar(250) NOT NULL,
  `url_twitter` varchar(250) NOT NULL,
  `url_googleplus` varchar(250) NOT NULL,
  `url_youtube` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `form_emails` text NOT NULL COMMENT 'separados por coma. (ej: juan@gmail.com, florencia@yahoo.com)',
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'','','','','','','','','','');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_managers`
--

DROP TABLE IF EXISTS `file_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_managers` (
  `file_manager_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_manager` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`file_manager_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_managers`
--

LOCK TABLES `file_managers` WRITE;
/*!40000 ALTER TABLE `file_managers` DISABLE KEYS */;
INSERT INTO `file_managers` VALUES (1,'','2014-09-10 16:34:40'),(2,'','2014-09-10 16:34:57'),(3,'','2014-09-10 16:35:02'),(4,'','2014-09-10 16:35:29'),(5,'','2014-09-11 11:18:16'),(6,'','2014-09-11 11:18:32'),(7,'','2015-07-06 16:54:53'),(8,'','2015-07-06 16:55:10'),(9,'','2015-07-06 16:55:16'),(10,'','2015-07-06 16:55:26'),(11,'','2015-07-06 21:03:02'),(12,'','2015-07-06 21:43:44'),(13,'','2015-07-06 21:50:49'),(14,'','2015-07-06 22:01:22'),(15,'','2015-07-07 20:35:39'),(16,'','2015-07-07 20:38:10'),(17,'','2015-07-08 21:22:15'),(18,'','2015-07-08 22:09:21'),(19,'','2015-07-09 18:21:28');
/*!40000 ALTER TABLE `file_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_managers_files`
--

DROP TABLE IF EXISTS `file_managers_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file_managers_files` (
  `file_manager_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `tag` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`file_manager_id`,`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_managers_files`
--

LOCK TABLES `file_managers_files` WRITE;
/*!40000 ALTER TABLE `file_managers_files` DISABLE KEYS */;
INSERT INTO `file_managers_files` VALUES (1,1,'main_image',0),(2,2,'main_image',0),(3,3,'main_image',0),(4,4,'main_image',0),(5,5,'main_image',0),(6,6,'main_image',0),(1,7,'image_gallery',0),(1,8,'image_gallery',0),(1,9,'image_gallery',0),(7,10,'main_image',0),(8,11,'main_image',0),(9,12,'main_image',0),(10,13,'main_image',0),(11,14,'main_image',0),(12,26,'main_image',0),(12,16,'complete_image',0),(13,17,'main_image',0),(14,18,'main_image',0),(15,19,'desktop_image',0),(15,20,'mobile_image',0),(16,23,'desktop_image',0),(16,24,'mobile_image',0),(17,27,'main_image',0),(18,28,'main_image',0),(19,29,'main_image',0);
/*!40000 ALTER TABLE `file_managers_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `type` enum('image','video','archive') NOT NULL,
  `code` varchar(255) NOT NULL,
  `ext` varchar(10) NOT NULL,
  `group` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'1_1.jpg','1','image','','jpg','','2014-09-10 16:34:40'),(2,'2_4.jpg','4','image','','jpg','','2014-09-10 16:34:57'),(3,'3_4.jpg','4','image','','jpg','','2014-09-10 16:35:02'),(4,'4_7.jpg','7','image','','jpg','','2014-09-10 16:35:29'),(5,'5_2.jpg','2','image','','jpg','','2014-09-11 11:18:16'),(6,'6_4.jpg','4','image','','jpg','','2014-09-11 11:18:32'),(7,'7_2.jpg','2','image','','jpg','','2014-09-11 12:37:09'),(8,'8_4.jpg','4','image','','jpg','','2014-09-11 12:37:13'),(9,'9_7.jpg','7','image','','jpg','','2014-09-11 12:37:17'),(10,'10_slider1.jpg','slider1','image','','jpg','','2015-07-06 16:54:53'),(11,'11_slider1.jpg','slider1','image','','jpg','','2015-07-06 16:55:10'),(12,'12_slider1.jpg','slider1','image','','jpg','','2015-07-06 16:55:16'),(13,'13_slider1.jpg','slider1','image','','jpg','','2015-07-06 16:55:26'),(14,'14_shock-de-brillo.jpg','shock-de-brillo','image','','jpg','','2015-07-06 21:03:02'),(26,'26_coloracion-demo.png','coloracion-demo','image','','png','','2015-07-08 18:00:33'),(16,'16_shock-de-brillo.jpg','shock-de-brillo','image','','jpg','','2015-07-06 21:43:44'),(17,'17_3d-gloss.jpg','3d-gloss','image','','jpg','','2015-07-06 21:50:49'),(18,'18_3d-gloss.jpg','3d-gloss','image','','jpg','','2015-07-06 22:01:22'),(19,'19_slider1.jpg','slider1','image','','jpg','','2015-07-07 20:35:39'),(20,'20_slider1-mobile.png','slider1-mobile','image','','png','','2015-07-07 20:35:39'),(24,'24_slider1-mobile.png','slider1-mobile','image','','png','','2015-07-07 20:41:43'),(27,'27_blog.jpg','blog','image','','jpg','','2015-07-08 21:22:15'),(23,'23_slider2.jpg','slider2','image','','jpg','','2015-07-07 20:41:43'),(28,'28_slider1.jpg','slider1','image','','jpg','','2015-07-08 22:09:21'),(29,'29_crazy-colors.jpg','crazy-colors','image','','jpg','','2015-07-09 18:21:28');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `file_manager_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `subcategory_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category` (`subcategory`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Shock Keratina','Para Pelo Liso','Shock Keratina para pelo liso','Shock Keratina',12,1,'2015-07-06 21:43:44',1),(2,'producto 3d gloss','brillo para el pelo','Loren ipsum mucho&nbsp;Loren ipsum mucho&nbsp;Loren ipsum mucho&nbsp;Loren ipsum mucho','Linea 3D gloss',14,1,'2015-07-06 22:01:22',2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `province_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `province_order` tinyint(2) NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Buenos Aires',1),(2,'Catamarca',2),(3,'Chaco',3),(4,'Chubut',4),(5,'Cordoba',5),(6,'Corrientes',6),(8,'Entre Rios',8),(9,'Formosa',9),(14,'Jujuy',14),(15,'La Pampa',15),(16,'La Rioja',16),(17,'Mendoza',17),(18,'Misiones',18),(19,'Neuquén',19),(20,'Río Negro',20),(21,'Salta',21),(22,'San Luis',22),(23,'Santa Cruz',23),(24,'Santiago Del Estero',24),(25,'Tierra Del Fuego',25),(26,'Tucumán',26),(27,'San Juan',27),(28,'Santa Fe',28),(29,'Capital Federal',0);
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `subcategory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `brief` varchar(245) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `file_manager_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`subcategory_id`),
  KEY `index1` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,2,'decoloración','Shock Keratina','Para pelo liso','2015-07-06 21:03:02',1,11),(2,2,'decoloración','Linea 3D gloss','tintura con brillo','2015-07-06 21:50:49',1,13);
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-10 11:06:57
