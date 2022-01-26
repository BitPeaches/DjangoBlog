-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: peekpa_db1
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB-1:10.4.17+maria~xenial

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
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add post',8,'add_post'),(26,'Can change post',8,'change_post'),(27,'Can delete post',8,'delete_post'),(28,'Can view post',8,'view_post'),(29,'Can add category',7,'add_category'),(30,'Can change category',7,'change_category'),(31,'Can delete category',7,'delete_category'),(32,'Can view category',7,'view_category'),(33,'Can add link',9,'add_link'),(34,'Can change link',9,'change_link'),(35,'Can delete link',9,'delete_link'),(36,'Can view link',9,'view_link'),(37,'Can add advertise',10,'add_advertise'),(38,'Can change advertise',10,'change_advertise'),(39,'Can delete advertise',10,'delete_advertise'),(40,'Can view advertise',10,'view_advertise'),(41,'Can add daily visit num',11,'add_dailyvisitnum'),(42,'Can change daily visit num',11,'change_dailyvisitnum'),(43,'Can delete daily visit num',11,'delete_dailyvisitnum'),(44,'Can view daily visit num',11,'view_dailyvisitnum'),(45,'Can add total visit num',12,'add_totalvisitnum'),(46,'Can change total visit num',12,'change_totalvisitnum'),(47,'Can delete total visit num',12,'delete_totalvisitnum'),(48,'Can view total visit num',12,'view_totalvisitnum'),(49,'Can add user visit',13,'add_uservisit'),(50,'Can change user visit',13,'change_uservisit'),(51,'Can delete user visit',13,'delete_uservisit'),(52,'Can view user visit',13,'view_uservisit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_dailyvisitnum`
--

DROP TABLE IF EXISTS `bloguser_dailyvisitnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloguser_dailyvisitnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_dailyvisitnum`
--

LOCK TABLES `bloguser_dailyvisitnum` WRITE;
/*!40000 ALTER TABLE `bloguser_dailyvisitnum` DISABLE KEYS */;
INSERT INTO `bloguser_dailyvisitnum` VALUES (1,'2021-03-02',7),(2,'2021-03-09',2),(3,'2021-03-15',2),(4,'2021-04-02',76),(5,'2021-04-04',28),(6,'2021-04-05',4),(7,'2021-04-06',3),(8,'2021-04-08',68);
/*!40000 ALTER TABLE `bloguser_dailyvisitnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_totalvisitnum`
--

DROP TABLE IF EXISTS `bloguser_totalvisitnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloguser_totalvisitnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_totalvisitnum`
--

LOCK TABLES `bloguser_totalvisitnum` WRITE;
/*!40000 ALTER TABLE `bloguser_totalvisitnum` DISABLE KEYS */;
INSERT INTO `bloguser_totalvisitnum` VALUES (1,191);
/*!40000 ALTER TABLE `bloguser_totalvisitnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user`
--

DROP TABLE IF EXISTS `bloguser_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloguser_user` (
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `uid` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `data_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user`
--

LOCK TABLES `bloguser_user` WRITE;
/*!40000 ALTER TABLE `bloguser_user` DISABLE KEYS */;
INSERT INTO `bloguser_user` VALUES ('pbkdf2_sha256$150000$Iz4mzIQj6Weu$mJRId+mYuRxQSd50V06+99EL+PwyHtOCi5SwJOqQjqE=',NULL,0,'EknSUVddxP8EfgqFQFkpsW','test@peekpa.com','PeekpaTest',0,1,'2021-02-27 14:24:37.303951'),('pbkdf2_sha256$150000$JzEIUdDZIDOH$w0AsECqTiw5t+cHeC6uRCBGNO2CtF/KPLCKe+kWjqfg=','2021-04-06 05:00:57.380479',0,'HqXzzuhbQ3Q8omfDjgKC89','test2@peekpa.com','PeekpaTest2',1,1,'2021-04-06 04:38:42.920293'),('pbkdf2_sha256$150000$dtF2ljZOZt7A$JfAUo83UEuQl7km2P+Jn128cWP+Kyf71Qe4pRialgkA=','2021-04-08 06:53:17.442222',1,'jAiG6cuUkVEEAUi4oqqDLn','admin@peekpa.com','PeekpaAdmin',1,1,'2021-01-10 07:58:48.980441');
/*!40000 ALTER TABLE `bloguser_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user_groups`
--

DROP TABLE IF EXISTS `bloguser_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloguser_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloguser_user_groups_user_id_group_id_69c4a080_uniq` (`user_id`,`group_id`),
  KEY `bloguser_user_groups_group_id_8f554e44_fk_auth_group_id` (`group_id`),
  CONSTRAINT `bloguser_user_groups_group_id_8f554e44_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `bloguser_user_groups_user_id_27646886_fk_bloguser_user_uid` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user_groups`
--

LOCK TABLES `bloguser_user_groups` WRITE;
/*!40000 ALTER TABLE `bloguser_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloguser_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user_user_permissions`
--

DROP TABLE IF EXISTS `bloguser_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloguser_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloguser_user_user_permi_user_id_permission_id_bd9d87d4_uniq` (`user_id`,`permission_id`),
  KEY `bloguser_user_user_p_permission_id_deb90a5c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `bloguser_user_user_p_permission_id_deb90a5c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `bloguser_user_user_p_user_id_de74689f_fk_bloguser_` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user_user_permissions`
--

LOCK TABLES `bloguser_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `bloguser_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloguser_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_uservisit`
--

DROP TABLE IF EXISTS `bloguser_uservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloguser_uservisit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `end_point` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_uservisit`
--

LOCK TABLES `bloguser_uservisit` WRITE;
/*!40000 ALTER TABLE `bloguser_uservisit` DISABLE KEYS */;
INSERT INTO `bloguser_uservisit` VALUES (1,'219.116.93.50','/','2021-03-01 16:59:34.649401','2021-03-02'),(2,'219.116.93.50','/detail/202101311725/','2021-03-01 16:59:37.535452','2021-03-02'),(3,'219.116.93.50','/detail/202101306231/','2021-03-01 16:59:42.257050','2021-03-02'),(4,'219.116.93.50','/detail/202101312287/','2021-03-01 16:59:44.660034','2021-03-02'),(5,'219.116.93.50','/','2021-03-01 16:59:46.613001','2021-03-02'),(6,'219.116.93.50','/','2021-03-01 16:59:49.001056','2021-03-02'),(7,'219.116.93.50','/list/','2021-03-01 16:59:49.858340','2021-03-02'),(8,'219.116.93.50','/','2021-03-09 09:31:05.437371','2021-03-09'),(9,'219.116.93.50','/','2021-03-09 09:31:18.668982','2021-03-09'),(10,'219.116.93.50','/','2021-03-15 07:37:32.602690','2021-03-15'),(11,'219.116.93.50','/','2021-03-15 09:08:52.177739','2021-03-15'),(12,'211.128.145.2','/','2021-04-02 02:11:31.934488','2021-04-02'),(13,'211.128.145.2','/','2021-04-02 03:17:33.604260','2021-04-02'),(14,'211.128.145.2','/','2021-04-02 03:21:33.254218','2021-04-02'),(15,'211.128.145.2','/','2021-04-02 03:21:34.643497','2021-04-02'),(16,'211.128.145.2','/','2021-04-02 03:21:34.869823','2021-04-02'),(17,'211.128.145.2','/','2021-04-02 03:21:35.031674','2021-04-02'),(18,'211.128.145.2','/','2021-04-02 03:21:35.242158','2021-04-02'),(19,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:36.082255','2021-04-02'),(20,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:36.585095','2021-04-02'),(21,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:36.946115','2021-04-02'),(22,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:37.097984','2021-04-02'),(23,'211.128.145.2','/detail/202101313265/','2021-04-02 03:21:37.513885','2021-04-02'),(24,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:38.111176','2021-04-02'),(25,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:38.702636','2021-04-02'),(26,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:38.916941','2021-04-02'),(27,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:39.313230','2021-04-02'),(28,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:39.653322','2021-04-02'),(29,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:40.182216','2021-04-02'),(30,'211.128.145.2','/','2021-04-02 03:21:40.795352','2021-04-02'),(31,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:41.986069','2021-04-02'),(32,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:42.322626','2021-04-02'),(33,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:42.689796','2021-04-02'),(34,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:43.096044','2021-04-02'),(35,'211.128.145.2','/detail/202101313265/','2021-04-02 03:21:43.549388','2021-04-02'),(36,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:45.205996','2021-04-02'),(37,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:45.751495','2021-04-02'),(38,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:46.466067','2021-04-02'),(39,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:47.322047','2021-04-02'),(40,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:47.875714','2021-04-02'),(41,'211.128.145.2','/','2021-04-02 03:21:48.741047','2021-04-02'),(42,'211.128.145.2','/','2021-04-02 03:21:48.919327','2021-04-02'),(43,'211.128.145.2','/','2021-04-02 03:21:49.109750','2021-04-02'),(44,'211.128.145.2','/','2021-04-02 03:21:49.413346','2021-04-02'),(45,'211.128.145.2','/','2021-04-02 03:21:49.485986','2021-04-02'),(46,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:50.061483','2021-04-02'),(47,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:50.474884','2021-04-02'),(48,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:50.495612','2021-04-02'),(49,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:50.627142','2021-04-02'),(50,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:50.665688','2021-04-02'),(51,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:51.378596','2021-04-02'),(52,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:51.401718','2021-04-02'),(53,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:51.466156','2021-04-02'),(54,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:51.826062','2021-04-02'),(55,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:52.247091','2021-04-02'),(56,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:52.642241','2021-04-02'),(57,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:52.668602','2021-04-02'),(58,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:52.983194','2021-04-02'),(59,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:53.110002','2021-04-02'),(60,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:53.195543','2021-04-02'),(61,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:53.707639','2021-04-02'),(62,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:53.978333','2021-04-02'),(63,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:54.042885','2021-04-02'),(64,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:54.288141','2021-04-02'),(65,'211.128.145.2','/detail/202101313265/','2021-04-02 03:21:54.524841','2021-04-02'),(66,'211.128.145.2','/detail/202101313265/','2021-04-02 03:21:54.603630','2021-04-02'),(67,'211.128.145.2','/detail/202101313265/','2021-04-02 03:21:54.803991','2021-04-02'),(68,'211.128.145.2','/detail/202101313265/','2021-04-02 03:21:55.086324','2021-04-02'),(69,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:55.683768','2021-04-02'),(70,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:55.885610','2021-04-02'),(71,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:56.151149','2021-04-02'),(72,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:56.288644','2021-04-02'),(73,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:56.552212','2021-04-02'),(74,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:56.578262','2021-04-02'),(75,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:56.795654','2021-04-02'),(76,'211.128.145.2','/detail/202101311725/','2021-04-02 03:21:56.915076','2021-04-02'),(77,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:57.452946','2021-04-02'),(78,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:57.634578','2021-04-02'),(79,'211.128.145.2','/detail/202101306231/','2021-04-02 03:21:58.434029','2021-04-02'),(80,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:58.646168','2021-04-02'),(81,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:58.701250','2021-04-02'),(82,'211.128.145.2','/detail/202101312287/','2021-04-02 03:21:58.753221','2021-04-02'),(83,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:58.989263','2021-04-02'),(84,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:59.357997','2021-04-02'),(85,'211.128.145.2','/detail/202101311344/','2021-04-02 03:21:59.593868','2021-04-02'),(86,'211.128.145.2','/detail/202101314644/','2021-04-02 03:21:59.902402','2021-04-02'),(87,'211.128.145.2','/detail/202101314644/','2021-04-02 03:22:00.072596','2021-04-02'),(88,'211.128.145.2','/detail/202101314644/','2021-04-02 03:22:00.455867','2021-04-02'),(89,'211.128.145.2','/','2021-04-04 05:06:38.946223','2021-04-04'),(90,'211.128.145.2','/','2021-04-04 06:47:08.824986','2021-04-04'),(91,'211.128.145.2','/','2021-04-04 07:31:09.825526','2021-04-04'),(92,'211.128.145.2','/','2021-04-04 10:36:48.233360','2021-04-04'),(93,'211.128.145.2','/detail/202101311725/','2021-04-04 10:37:02.965496','2021-04-04'),(94,'211.128.145.2','/detail/202101311725/','2021-04-04 10:37:04.082135','2021-04-04'),(95,'211.128.145.2','/detail/202101311725/','2021-04-04 10:37:04.436654','2021-04-04'),(96,'211.128.145.2','/detail/202101311725/','2021-04-04 10:37:04.785644','2021-04-04'),(97,'211.128.145.2','/detail/202101311344/','2021-04-04 10:37:07.722252','2021-04-04'),(98,'211.128.145.2','/detail/202101311344/','2021-04-04 10:37:08.345057','2021-04-04'),(99,'211.128.145.2','/detail/202101311344/','2021-04-04 10:37:09.047580','2021-04-04'),(100,'211.128.145.2','/detail/202101314644/','2021-04-04 10:37:12.343552','2021-04-04'),(101,'211.128.145.2','/detail/202101314644/','2021-04-04 10:37:12.997188','2021-04-04'),(102,'211.128.145.2','/detail/202101313265/','2021-04-04 10:37:14.996520','2021-04-04'),(103,'211.128.145.2','/detail/202101313265/','2021-04-04 10:37:15.491574','2021-04-04'),(104,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:17.292282','2021-04-04'),(105,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:17.992548','2021-04-04'),(106,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:18.193574','2021-04-04'),(107,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:18.381593','2021-04-04'),(108,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:18.540500','2021-04-04'),(109,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:18.655924','2021-04-04'),(110,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:18.820746','2021-04-04'),(111,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:18.969082','2021-04-04'),(112,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:19.158178','2021-04-04'),(113,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:43.487259','2021-04-04'),(114,'211.128.145.2','/detail/202101312287/','2021-04-04 10:37:45.053878','2021-04-04'),(115,'211.128.145.2','/detail/202101311725/','2021-04-04 10:37:49.037020','2021-04-04'),(116,'211.128.145.2','/detail/202101311725/','2021-04-04 10:37:49.593794','2021-04-04'),(117,'211.128.145.2','/','2021-04-05 08:28:06.103709','2021-04-05'),(118,'211.128.145.2','/list/','2021-04-05 08:29:08.739869','2021-04-05'),(119,'211.128.145.2','/','2021-04-05 11:36:51.947639','2021-04-05'),(120,'211.128.145.2','/','2021-04-05 14:55:17.592886','2021-04-05'),(121,'211.128.145.2','/','2021-04-06 02:15:27.042343','2021-04-06'),(122,'211.128.145.2','/','2021-04-06 04:38:03.266471','2021-04-06'),(123,'211.128.145.2','/','2021-04-06 05:00:49.409249','2021-04-06'),(124,'211.128.145.2','/','2021-04-07 16:29:46.445344','2021-04-08'),(125,'211.128.145.2','/','2021-04-08 03:06:18.600796','2021-04-08'),(126,'211.128.145.2','/','2021-04-08 04:50:09.177320','2021-04-08'),(127,'211.128.145.2','/','2021-04-08 04:50:17.556591','2021-04-08'),(128,'211.128.145.2','/','2021-04-08 04:50:55.590338','2021-04-08'),(129,'211.128.145.2','/','2021-04-08 04:50:56.671760','2021-04-08'),(130,'211.128.145.2','/','2021-04-08 04:50:57.639801','2021-04-08'),(131,'211.128.145.2','/','2021-04-08 04:50:58.444932','2021-04-08'),(132,'211.128.145.2','/','2021-04-08 04:57:37.097176','2021-04-08'),(133,'211.128.145.2','/','2021-04-08 04:57:39.117500','2021-04-08'),(134,'211.128.145.2','/','2021-04-08 04:57:39.985874','2021-04-08'),(135,'211.128.145.2','/','2021-04-08 04:57:41.399567','2021-04-08'),(136,'211.128.145.2','/','2021-04-08 04:57:42.348916','2021-04-08'),(137,'211.128.145.2','/','2021-04-08 04:57:43.828667','2021-04-08'),(138,'211.128.145.2','/','2021-04-08 04:57:44.862070','2021-04-08'),(139,'211.128.145.2','/','2021-04-08 04:57:45.386323','2021-04-08'),(140,'211.128.145.2','/','2021-04-08 04:57:46.445108','2021-04-08'),(141,'211.128.145.2','/','2021-04-08 04:57:48.683770','2021-04-08'),(142,'211.128.145.2','/','2021-04-08 04:57:49.739457','2021-04-08'),(143,'211.128.145.2','/','2021-04-08 04:57:57.125559','2021-04-08'),(144,'211.128.145.2','/','2021-04-08 05:00:00.785937','2021-04-08'),(145,'211.128.145.2','/','2021-04-08 05:00:17.627203','2021-04-08'),(146,'211.128.145.2','/detail/202101311725/','2021-04-08 05:00:22.597585','2021-04-08'),(147,'211.128.145.2','/detail/202101311725/','2021-04-08 05:00:34.152773','2021-04-08'),(148,'211.128.145.2','/detail/202101311725/','2021-04-08 05:00:39.452706','2021-04-08'),(149,'211.128.145.2','/','2021-04-08 05:00:43.034616','2021-04-08'),(150,'211.128.145.2','/','2021-04-08 05:00:47.451012','2021-04-08'),(151,'211.128.145.2','/','2021-04-08 05:02:06.962775','2021-04-08'),(152,'211.128.145.2','/','2021-04-08 05:02:12.729906','2021-04-08'),(153,'211.128.145.2','/','2021-04-08 05:57:43.526627','2021-04-08'),(154,'211.128.145.2','/','2021-04-08 05:57:46.957195','2021-04-08'),(155,'211.128.145.2','/','2021-04-08 05:57:49.077656','2021-04-08'),(156,'211.128.145.2','/','2021-04-08 05:57:50.417402','2021-04-08'),(157,'211.128.145.2','/','2021-04-08 05:57:51.645226','2021-04-08'),(158,'211.128.145.2','/','2021-04-08 05:57:54.640589','2021-04-08'),(159,'211.128.145.2','/','2021-04-08 05:57:57.264110','2021-04-08'),(160,'211.128.145.2','/','2021-04-08 05:58:11.179509','2021-04-08'),(161,'211.128.145.2','/','2021-04-08 05:58:12.809999','2021-04-08'),(162,'211.128.145.2','/','2021-04-08 05:58:14.769234','2021-04-08'),(163,'211.128.145.2','/','2021-04-08 05:58:15.754153','2021-04-08'),(164,'211.128.145.2','/','2021-04-08 05:58:16.713009','2021-04-08'),(165,'211.128.145.2','/','2021-04-08 05:58:17.617692','2021-04-08'),(166,'211.128.145.2','/','2021-04-08 05:58:20.193831','2021-04-08'),(167,'211.128.145.2','/','2021-04-08 05:58:21.121065','2021-04-08'),(168,'211.128.145.2','/','2021-04-08 05:58:22.025546','2021-04-08'),(169,'211.128.145.2','/','2021-04-08 05:58:22.891700','2021-04-08'),(170,'211.128.145.2','/','2021-04-08 05:58:53.141406','2021-04-08'),(171,'211.128.145.2','/','2021-04-08 05:58:56.073184','2021-04-08'),(172,'211.128.145.2','/','2021-04-08 05:59:02.823883','2021-04-08'),(173,'211.128.145.2','/','2021-04-08 05:59:03.887982','2021-04-08'),(174,'211.128.145.2','/','2021-04-08 05:59:04.668336','2021-04-08'),(175,'211.128.145.2','/','2021-04-08 05:59:39.537892','2021-04-08'),(176,'211.128.145.2','/','2021-04-08 05:59:44.324546','2021-04-08'),(177,'211.128.145.2','/','2021-04-08 05:59:45.373952','2021-04-08'),(178,'211.128.145.2','/','2021-04-08 05:59:46.288375','2021-04-08'),(179,'211.128.145.2','/','2021-04-08 05:59:46.944318','2021-04-08'),(180,'211.128.145.2','/','2021-04-08 05:59:47.627538','2021-04-08'),(181,'211.128.145.2','/','2021-04-08 06:05:46.693969','2021-04-08'),(182,'211.128.145.2','/','2021-04-08 06:06:02.483632','2021-04-08'),(183,'211.128.145.2','/','2021-04-08 06:06:09.534432','2021-04-08'),(184,'211.128.145.2','/','2021-04-08 06:07:40.719394','2021-04-08'),(185,'211.128.145.2','/','2021-04-08 06:08:00.837971','2021-04-08'),(186,'211.128.145.2','/','2021-04-08 06:46:41.470207','2021-04-08'),(187,'211.128.145.2','/detail/202101311725/','2021-04-08 06:46:41.965523','2021-04-08'),(188,'211.128.145.2','/detail/202101311725/','2021-04-08 06:47:15.211949','2021-04-08'),(189,'211.128.145.2','/detail/202101312287/','2021-04-08 06:47:22.650441','2021-04-08'),(190,'211.128.145.2','/list/','2021-04-08 06:53:25.280967','2021-04-08'),(191,'211.128.145.2','/list/','2021-04-08 06:53:27.275808','2021-04-08');
/*!40000 ALTER TABLE `bloguser_uservisit` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_bloguser_user_uid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_bloguser_user_uid` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(11,'bloguser','dailyvisitnum'),(12,'bloguser','totalvisitnum'),(6,'bloguser','user'),(13,'bloguser','uservisit'),(4,'contenttypes','contenttype'),(10,'link','advertise'),(9,'link','link'),(7,'post','category'),(8,'post','post'),(5,'sessions','session');
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
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-10 07:56:50.428712'),(2,'contenttypes','0002_remove_content_type_name','2021-01-10 07:56:50.477080'),(3,'auth','0001_initial','2021-01-10 07:56:50.590867'),(4,'auth','0002_alter_permission_name_max_length','2021-01-10 07:56:50.827875'),(5,'auth','0003_alter_user_email_max_length','2021-01-10 07:56:50.842187'),(6,'auth','0004_alter_user_username_opts','2021-01-10 07:56:50.851648'),(7,'auth','0005_alter_user_last_login_null','2021-01-10 07:56:50.861935'),(8,'auth','0006_require_contenttypes_0002','2021-01-10 07:56:50.866602'),(9,'auth','0007_alter_validators_add_error_messages','2021-01-10 07:56:50.873313'),(10,'auth','0008_alter_user_username_max_length','2021-01-10 07:56:50.880875'),(11,'auth','0009_alter_user_last_name_max_length','2021-01-10 07:56:50.888515'),(12,'auth','0010_alter_group_name_max_length','2021-01-10 07:56:50.932535'),(13,'auth','0011_update_proxy_permissions','2021-01-10 07:56:50.941074'),(14,'bloguser','0001_initial','2021-01-10 07:56:50.997640'),(15,'admin','0001_initial','2021-01-10 07:56:51.358475'),(16,'admin','0002_logentry_remove_auto_add','2021-01-10 07:56:51.467283'),(17,'admin','0003_logentry_add_action_flag_choices','2021-01-10 07:56:51.478185'),(18,'post','0001_initial','2021-01-10 07:56:51.569143'),(19,'post','0002_post','2021-01-10 07:56:51.673999'),(20,'post','0003_auto_20201231_2153','2021-01-10 07:56:51.809526'),(21,'sessions','0001_initial','2021-01-10 07:56:51.830192'),(22,'link','0001_initial','2021-02-20 13:22:46.660771'),(23,'link','0002_advertise','2021-02-23 01:14:10.060248'),(27,'bloguser','0002_dailyvisitnum_totalvisitnum_uservisit','2021-03-01 16:58:49.805999'),(28,'bloguser','0003_auto_20210414_1846','2021-04-14 10:47:06.167811');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('52wo983n1d2l8zdcljf7x50k0fe81aqj','MmM1NmFjYzA2MDNkZjA1NmM3YjU0ODMzYTA3ZjlmODhkNjY2MzAyYTp7Il9hdXRoX3VzZXJfaWQiOiJqQWlHNmN1VWtWRUVBVWk0b3FxRExuIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Y4NGI4NTNiMzdhYzlkZGNjZmYxZDc1YjdiOWNjZjU3NDcwOGE0NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2021-04-20 03:25:32.270694'),('6qy1owvhqht4ubmfwtb8l20h4neqtdfi','MGRkNDY1ZTE1ZWNmNGIwZGJlN2NhMjIxNTZhYmMzZWIzNTMzOGYwMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IkhxWHp6dWhiUTNROG9tZkRqZ0tDODkiLCJfYXV0aF91c2VyX2hhc2giOiJmNzQ5ZTdiYzY3NDcyZTZkYjY2MjliMDQ5MDA2MjAyZjI1ODRiNjU3In0=','2021-04-20 04:40:11.699520'),('7cfb94g2ttyonk5hp2pylc7hqes9df7h','N2YwMDY0NThiN2RlMTI3YWM3ZDJlNjE4YWE2M2U1ZTNhOWQ1Y2FmODp7Il9hdXRoX3VzZXJfaWQiOiJIcVh6enVoYlEzUThvbWZEamdLQzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNzQ5ZTdiYzY3NDcyZTZkYjY2MjliMDQ5MDA2MjAyZjI1ODRiNjU3In0=','2021-04-20 05:00:57.387345'),('9nzoa3l4ndxvgk91iplu2z7eb5r4osss','OWRhMWU5OWZlYTNiZjczZDUzOTM0NzMxZGE3M2RiMzJkMDNmYjY3YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6ImpBaUc2Y3VVa1ZFRUFVaTRvcXFETG4iLCJfYXV0aF91c2VyX2hhc2giOiIzZjg0Yjg1M2IzN2FjOWRkY2NmZjFkNzViN2I5Y2NmNTc0NzA4YTQ2In0=','2021-04-19 12:19:23.797366'),('bd2s89i3o9wo5em45vu2oirzxsvxy4wx','OWRhMWU5OWZlYTNiZjczZDUzOTM0NzMxZGE3M2RiMzJkMDNmYjY3YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6ImpBaUc2Y3VVa1ZFRUFVaTRvcXFETG4iLCJfYXV0aF91c2VyX2hhc2giOiIzZjg0Yjg1M2IzN2FjOWRkY2NmZjFkNzViN2I5Y2NmNTc0NzA4YTQ2In0=','2021-04-21 16:29:55.976096');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_advertise`
--

DROP TABLE IF EXISTS `link_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `link_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_advertise`
--

LOCK TABLES `link_advertise` WRITE;
/*!40000 ALTER TABLE `link_advertise` DISABLE KEYS */;
INSERT INTO `link_advertise` VALUES (2,'蓝桥云课','https://labfile.oss.aliyuncs.com/courses/3326/ad-test.png','https://www.lanqiao.cn/','2021-02-23 07:53:33.102501'),(3,'蓝桥云课','https://labfile.oss.aliyuncs.com/courses/3326/ad-test.png','https://www.lanqiao.cn/','2021-02-23 07:53:49.794181');
/*!40000 ALTER TABLE `link_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_link`
--

DROP TABLE IF EXISTS `link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `show_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_link`
--

LOCK TABLES `link_link` WRITE;
/*!40000 ALTER TABLE `link_link` DISABLE KEYS */;
INSERT INTO `link_link` VALUES (1,'友链二','蓝桥云课','https://www.lanqiao.cn/','2021-02-20 14:10:32.362351',1);
/*!40000 ALTER TABLE `link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category`
--

LOCK TABLES `post_category` WRITE;
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
INSERT INTO `post_category` VALUES (1,'Django开发666','2021-01-30 11:50:22.683933');
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_post`
--

DROP TABLE IF EXISTS `post_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_html` longtext COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `publish_time` datetime(6) NOT NULL,
  `time_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `read_num` int(10) unsigned NOT NULL,
  `author_id` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_post_author_id_99d134d5_fk_bloguser_user_uid` (`author_id`),
  KEY `post_post_category_id_f4001070_fk_post_category_id` (`category_id`),
  CONSTRAINT `post_post_author_id_99d134d5_fk_bloguser_user_uid` FOREIGN KEY (`author_id`) REFERENCES `bloguser_user` (`uid`),
  CONSTRAINT `post_post_category_id_f4001070_fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `post_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_post`
--

LOCK TABLES `post_post` WRITE;
/*!40000 ALTER TABLE `post_post` DISABLE KEYS */;
INSERT INTO `post_post` VALUES (1,'Peekpa博客系统介绍','一篇文章带你打通Django开发','https://labfile.oss.aliyuncs.com/courses/3326/00001.jpeg','### Markdown语法\r\n文章采用的是 Markdown 语法，这个 `语法` 最大的好处就是方便，**快捷**。 这里不做过多讲解，仅仅只是*演示使用*。','<h3 id=\"markdown\">Markdown语法</h3>\n<p>文章采用的是 Markdown 语法，这个 <code>语法</code> 最大的好处就是方便，<strong>快捷</strong>。 这里不做过多讲解，仅仅只是<em>演示使用</em>。</p>',0,1,1,'2021-01-30 11:51:08.296565','202101306231',2,'jAiG6cuUkVEEAUi4oqqDLn',1),(2,'Peekpa首页大焦点图','这篇文章是用来展示首页大焦点图推荐位置的。','https://labfile.oss.aliyuncs.com/courses/3326/00002.jpeg','首页大焦点图推荐位置， Priority 是 100。','<p>首页大焦点图推荐位置， Priority 是 100。</p>',100,1,1,'2021-01-31 04:50:22.185171','202101311725',6,'jAiG6cuUkVEEAUi4oqqDLn',1),(3,'Peekpa小焦点图左一，展示详情页图片','这篇文章主要展示的是文章的图片信息。测试','https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg','### 测试图片\r\n每一篇文章都可能会有很多配图，这些配图都是使用 Markdown 语法来实现的。所以我们这列就来实现一张配图的展示：\r\n\r\n![演示](https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg)\r\n\r\n演示完毕，上面的这个就是在博客详情页图片的展示。','<h3 id=\"_1\">测试图片</h3>\n<p>每一篇文章都可能会有很多配图，这些配图都是使用 Markdown 语法来实现的。所以我们这列就来实现一张配图的展示：</p>\n<p><img alt=\"演示\" src=\"https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg\" /></p>\n<p>演示完毕，上面的这个就是在博客详情页图片的展示。</p>',99,0,1,'2021-01-31 04:51:59.063055','202101312287',4,'jAiG6cuUkVEEAUi4oqqDLn',1),(4,'Peekpa小焦点中间，标题列表展示','这篇文章主要展示标题列表样式。','https://labfile.oss.aliyuncs.com/courses/3326/00004.jpeg','### 标题一\r\n一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。\r\n#### 子标题一\r\n子标题一内容。\r\n#### 子标题二\r\n子标题二内容。\r\n### 标题二\r\n#### 标题二的子标题\r\n标题二的子标题内容','<h3 id=\"_1\">标题一</h3>\n<p>一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。</p>\n<h4 id=\"_2\">子标题一</h4>\n<p>子标题一内容。</p>\n<h4 id=\"_3\">子标题二</h4>\n<p>子标题二内容。</p>\n<h3 id=\"_4\">标题二</h3>\n<h4 id=\"_5\">标题二的子标题</h4>\n<p>标题二的子标题内容</p>',98,0,1,'2021-01-31 04:53:09.863364','202101311344',2,'jAiG6cuUkVEEAUi4oqqDLn',1),(5,'Peekpa小焦点右一，代码部分展示','这篇文章主要展示文章代码样例。','https://labfile.oss.aliyuncs.com/courses/3326/00005.jpeg','计算机的博客文章，一般会有大量代码模块在文章中，那么我们这里就来给大家看代码如何展示。\r\n这里代码块需要遵循 Markdown 格式格式。所以应该是将以下代码包裹在三个 **`** 中：\r\n```python\r\nclass CategoryEditView(View):\r\n    def get(self, request):\r\n        category_id = request.GET.get(\'category_id\')\r\n        category = Category.objects.get(pk=category_id)\r\n        context = {\r\n            \'item_data\': category,\r\n        }\r\n        return render(request, \'cms/category/publish.html\', context=context)\r\n```','<p>计算机的博客文章，一般会有大量代码模块在文章中，那么我们这里就来给大家看代码如何展示。\n这里代码块需要遵循 Markdown 格式格式。所以应该是将以下代码包裹在三个 <strong>`</strong> 中：</p>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">class</span> <span class=\"nc\">CategoryEditView</span><span class=\"p\">(</span><span class=\"n\">View</span><span class=\"p\">):</span>\n    <span class=\"k\">def</span> <span class=\"nf\">get</span><span class=\"p\">(</span><span class=\"bp\">self</span><span class=\"p\">,</span> <span class=\"n\">request</span><span class=\"p\">):</span>\n        <span class=\"n\">category_id</span> <span class=\"o\">=</span> <span class=\"n\">request</span><span class=\"o\">.</span><span class=\"n\">GET</span><span class=\"o\">.</span><span class=\"n\">get</span><span class=\"p\">(</span><span class=\"s1\">&#39;category_id&#39;</span><span class=\"p\">)</span>\n        <span class=\"n\">category</span> <span class=\"o\">=</span> <span class=\"n\">Category</span><span class=\"o\">.</span><span class=\"n\">objects</span><span class=\"o\">.</span><span class=\"n\">get</span><span class=\"p\">(</span><span class=\"n\">pk</span><span class=\"o\">=</span><span class=\"n\">category_id</span><span class=\"p\">)</span>\n        <span class=\"n\">context</span> <span class=\"o\">=</span> <span class=\"p\">{</span>\n            <span class=\"s1\">&#39;item_data&#39;</span><span class=\"p\">:</span> <span class=\"n\">category</span><span class=\"p\">,</span>\n        <span class=\"p\">}</span>\n        <span class=\"k\">return</span> <span class=\"n\">render</span><span class=\"p\">(</span><span class=\"n\">request</span><span class=\"p\">,</span> <span class=\"s1\">&#39;cms/category/publish.html&#39;</span><span class=\"p\">,</span> <span class=\"n\">context</span><span class=\"o\">=</span><span class=\"n\">context</span><span class=\"p\">)</span>\n</code></pre></div>',97,0,1,'2021-01-31 05:10:22.787689','202101314644',2,'jAiG6cuUkVEEAUi4oqqDLn',1),(6,'Peekpa综合展示内容','博客详情页综合展示','https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg','因为是综合展示内容，所以内容会比较多。\r\n### 标题一\r\n一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。\r\n#### 代码部分展示\r\n```python\r\nclass CategoryEditView(View):\r\n    def get(self, request):\r\n        category_id = request.GET.get(\'category_id\')\r\n        category = Category.objects.get(pk=category_id)\r\n        context = {\r\n            \'item_data\': category,\r\n        }\r\n        return render(request, \'cms/category/publish.html\', context=context)\r\n```\r\n#### 图片部分展示\r\n这个区域是图片位置展示，具体图片如下：\r\n![](https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg)\r\n### Markdown语法\r\n文章采用的是 Markdown 语法，这个 `语法` 最大的好处就是方便，**快捷**。 这里不做过多讲解，仅仅只是*演示使用*。','<p>因为是综合展示内容，所以内容会比较多。</p>\n<h3 id=\"_1\">标题一</h3>\n<p>一篇文章有很多标题，而且有很多层级的标题。我们这里就来实验左侧的标题列表是如何展示的。</p>\n<h4 id=\"_2\">代码部分展示</h4>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">class</span> <span class=\"nc\">CategoryEditView</span><span class=\"p\">(</span><span class=\"n\">View</span><span class=\"p\">):</span>\n    <span class=\"k\">def</span> <span class=\"nf\">get</span><span class=\"p\">(</span><span class=\"bp\">self</span><span class=\"p\">,</span> <span class=\"n\">request</span><span class=\"p\">):</span>\n        <span class=\"n\">category_id</span> <span class=\"o\">=</span> <span class=\"n\">request</span><span class=\"o\">.</span><span class=\"n\">GET</span><span class=\"o\">.</span><span class=\"n\">get</span><span class=\"p\">(</span><span class=\"s1\">&#39;category_id&#39;</span><span class=\"p\">)</span>\n        <span class=\"n\">category</span> <span class=\"o\">=</span> <span class=\"n\">Category</span><span class=\"o\">.</span><span class=\"n\">objects</span><span class=\"o\">.</span><span class=\"n\">get</span><span class=\"p\">(</span><span class=\"n\">pk</span><span class=\"o\">=</span><span class=\"n\">category_id</span><span class=\"p\">)</span>\n        <span class=\"n\">context</span> <span class=\"o\">=</span> <span class=\"p\">{</span>\n            <span class=\"s1\">&#39;item_data&#39;</span><span class=\"p\">:</span> <span class=\"n\">category</span><span class=\"p\">,</span>\n        <span class=\"p\">}</span>\n        <span class=\"k\">return</span> <span class=\"n\">render</span><span class=\"p\">(</span><span class=\"n\">request</span><span class=\"p\">,</span> <span class=\"s1\">&#39;cms/category/publish.html&#39;</span><span class=\"p\">,</span> <span class=\"n\">context</span><span class=\"o\">=</span><span class=\"n\">context</span><span class=\"p\">)</span>\n</code></pre></div>\n\n\n<h4 id=\"_3\">图片部分展示</h4>\n<p>这个区域是图片位置展示，具体图片如下：\n<img alt=\"\" src=\"https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg\" /></p>\n<h3 id=\"markdown\">Markdown语法</h3>\n<p>文章采用的是 Markdown 语法，这个 <code>语法</code> 最大的好处就是方便，<strong>快捷</strong>。 这里不做过多讲解，仅仅只是<em>演示使用</em>。</p>',0,0,1,'2021-01-31 05:11:20.339737','202101313265',2,'jAiG6cuUkVEEAUi4oqqDLn',1);
/*!40000 ALTER TABLE `post_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 18:47:24
