-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: tcpj
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cz info',7,'add_czinfo'),(26,'Can change cz info',7,'change_czinfo'),(27,'Can delete cz info',7,'delete_czinfo'),(28,'Can view cz info',7,'view_czinfo'),(29,'Can add dcs info',8,'add_dcsinfo'),(30,'Can change dcs info',8,'change_dcsinfo'),(31,'Can delete dcs info',8,'delete_dcsinfo'),(32,'Can view dcs info',8,'view_dcsinfo'),(33,'Can add info',9,'add_info'),(34,'Can change info',9,'change_info'),(35,'Can delete info',9,'delete_info'),(36,'Can view info',9,'view_info'),(37,'Can add shcs info',10,'add_shcsinfo'),(38,'Can change shcs info',10,'change_shcsinfo'),(39,'Can delete shcs info',10,'delete_shcsinfo'),(40,'Can view shcs info',10,'view_shcsinfo'),(41,'Can add sn info',11,'add_sninfo'),(42,'Can change sn info',11,'change_sninfo'),(43,'Can delete sn info',11,'delete_sninfo'),(44,'Can view sn info',11,'view_sninfo'),(45,'Can add xcs info',12,'add_xcsinfo'),(46,'Can change xcs info',12,'change_xcsinfo'),(47,'Can delete xcs info',12,'delete_xcsinfo'),(48,'Can view xcs info',12,'view_xcsinfo'),(49,'Can add zxcs info',13,'add_zxcsinfo'),(50,'Can change zxcs info',13,'change_zxcsinfo'),(51,'Can delete zxcs info',13,'delete_zxcsinfo'),(52,'Can view zxcs info',13,'view_zxcsinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'tcpj','czinfo'),(8,'tcpj','dcsinfo'),(9,'tcpj','info'),(10,'tcpj','shcsinfo'),(11,'tcpj','sninfo'),(12,'tcpj','xcsinfo'),(13,'tcpj','zxcsinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-09-17 01:40:03.331437'),(2,'auth','0001_initial','2019-09-17 01:40:05.302579'),(3,'admin','0001_initial','2019-09-17 01:40:05.766226'),(4,'admin','0002_logentry_remove_auto_add','2019-09-17 01:40:05.776455'),(5,'admin','0003_logentry_add_action_flag_choices','2019-09-17 01:40:05.784616'),(6,'admin','0004_auto_20190831_1042','2019-09-17 01:40:05.965370'),(7,'admin','0005_auto_20190831_0249','2019-09-17 01:40:06.165840'),(8,'contenttypes','0002_remove_content_type_name','2019-09-17 01:40:06.407672'),(9,'auth','0002_alter_permission_name_max_length','2019-09-17 01:40:06.438696'),(10,'auth','0003_alter_user_email_max_length','2019-09-17 01:40:06.469209'),(11,'auth','0004_alter_user_username_opts','2019-09-17 01:40:06.480516'),(12,'auth','0005_alter_user_last_login_null','2019-09-17 01:40:06.614211'),(13,'auth','0006_require_contenttypes_0002','2019-09-17 01:40:06.635138'),(14,'auth','0007_alter_validators_add_error_messages','2019-09-17 01:40:06.651081'),(15,'auth','0008_alter_user_username_max_length','2019-09-17 01:40:06.675702'),(16,'auth','0009_alter_user_last_name_max_length','2019-09-17 01:40:06.712160'),(17,'sessions','0001_initial','2019-09-17 01:40:06.835873'),(18,'tcpj','0001_initial','2019-09-17 01:40:07.422073');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('otvvravn48fnmfp3hi54jt08pvr5lh4d','MDcyNWVmMjgwZjRjMGE1OWE0ZTc0N2Q4N2YyODA0YmZlZTdlM2EyYjp7ImlwIjoiMTI1LjQxLjE3NS4xMzAifQ==','2019-10-01 02:38:07.363647');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_czinfo`
--

DROP TABLE IF EXISTS `tcpj_czinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_czinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_czinfo`
--

LOCK TABLES `tcpj_czinfo` WRITE;
/*!40000 ALTER TABLE `tcpj_czinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcpj_czinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_dcsinfo`
--

DROP TABLE IF EXISTS `tcpj_dcsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_dcsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_dcsinfo`
--

LOCK TABLES `tcpj_dcsinfo` WRITE;
/*!40000 ALTER TABLE `tcpj_dcsinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcpj_dcsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_info`
--

DROP TABLE IF EXISTS `tcpj_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_info`
--

LOCK TABLES `tcpj_info` WRITE;
/*!40000 ALTER TABLE `tcpj_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcpj_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_shcsinfo`
--

DROP TABLE IF EXISTS `tcpj_shcsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_shcsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_shcsinfo`
--

LOCK TABLES `tcpj_shcsinfo` WRITE;
/*!40000 ALTER TABLE `tcpj_shcsinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcpj_shcsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_sninfo`
--

DROP TABLE IF EXISTS `tcpj_sninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_sninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_sninfo`
--

LOCK TABLES `tcpj_sninfo` WRITE;
/*!40000 ALTER TABLE `tcpj_sninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcpj_sninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_xcsinfo`
--

DROP TABLE IF EXISTS `tcpj_xcsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_xcsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_xcsinfo`
--

LOCK TABLES `tcpj_xcsinfo` WRITE;
/*!40000 ALTER TABLE `tcpj_xcsinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcpj_xcsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcpj_zxcsinfo`
--

DROP TABLE IF EXISTS `tcpj_zxcsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcpj_zxcsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day1` varchar(128) DEFAULT NULL,
  `day2` varchar(128) DEFAULT NULL,
  `hour` varchar(128) DEFAULT NULL,
  `minutes` varchar(128) DEFAULT NULL,
  `money1` varchar(128) DEFAULT NULL,
  `money2` varchar(128) DEFAULT NULL,
  `money3` varchar(128) DEFAULT NULL,
  `money4` varchar(128) DEFAULT NULL,
  `money5` varchar(128) DEFAULT NULL,
  `money6` varchar(128) DEFAULT NULL,
  `money7` varchar(128) DEFAULT NULL,
  `money8` varchar(128) DEFAULT NULL,
  `money9` varchar(128) DEFAULT NULL,
  `money10` varchar(128) DEFAULT NULL,
  `u_ip` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ip` (`u_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcpj_zxcsinfo`
--

LOCK TABLES `tcpj_zxcsinfo` WRITE;
/*!40000 ALTER TABLE `tcpj_zxcsinfo` DISABLE KEYS */;
INSERT INTO `tcpj_zxcsinfo` VALUES (1,'187','150','0','10','10','10','20','20','30','30','40','40',NULL,NULL,'125.41.175.130');
/*!40000 ALTER TABLE `tcpj_zxcsinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-17 12:52:18
