-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: practicadjango
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'clientes'),(2,'gestion_clientes'),(3,'transacciones');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,2,25),(3,2,26),(4,2,27),(5,2,28),(6,2,29),(7,2,30),(8,2,31),(1,2,32),(11,3,28),(9,3,32),(10,3,33),(12,3,36);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cliente',7,'add_cliente'),(26,'Can change cliente',7,'change_cliente'),(27,'Can delete cliente',7,'delete_cliente'),(28,'Can view cliente',7,'view_cliente'),(29,'Can add cuenta',8,'add_cuenta'),(30,'Can change cuenta',8,'change_cuenta'),(31,'Can delete cuenta',8,'delete_cuenta'),(32,'Can view cuenta',8,'view_cuenta'),(33,'Can add transaccion',9,'add_transaccion'),(34,'Can change transaccion',9,'change_transaccion'),(35,'Can delete transaccion',9,'delete_transaccion'),(36,'Can view transaccion',9,'view_transaccion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `api_token` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$nYv7mKsLBZpo$p6JTrtvT0QG3KO2APs73sFFyLpk7doDLzhJ2GiZW0Dw=','2021-02-25 04:47:01.639481',1,'jaime','','','jaime.paqui@unl.edu.ec',1,1,'2021-01-27 04:42:05.000000','HWtqj1xArUCXDTHSwUOP21vh5EOkR1M78RAIcdTZE6bKC7yzpesBNjUPaN6QjrE4hvRfMBTwv7mTpVVJKDIx9y9H0pnfPpX3sObu8slwSGe9Ibvf92EXjKCiTDpudsOPoiNZTJ8QXkgKd7LT6Mgxx0'),(2,'pbkdf2_sha256$216000$bWLH7zPV8zi2$dcH7gQDzddGzkFZ//VkvZd671ZxNukJc5t4xjiJ5AvA=',NULL,0,'1900884964','Beyker','Satorum','beyksant@gmail.com',0,1,'2021-01-27 04:47:32.806182',NULL),(3,'pbkdf2_sha256$216000$7rCciyAoBgBG$21FzxPS9vGcw6/VttN3xkoJ8puvPNE9pyU31lJhvjQ8=',NULL,0,'1900823236','Jaime','Paqui','jaispaqui@gmail.com',0,1,'2021-01-27 04:49:18.532133',NULL),(4,'pbkdf2_sha256$216000$CHMpl8sE7hHI$AOQJ7DeeA/bb3tygBm7JR3rBPCucSS9Ou6AM871B6uE=',NULL,0,'1900884910','Alexis','Armijos','alexis@unl.edu.ec',0,1,'2021-01-27 07:31:38.255112',NULL),(5,'pbkdf2_sha256$216000$pFBwiKfQUUdB$uHWC98v0PLH/A9kqUjUjyqCbaTdrEBOiDqpyHDxYRmA=',NULL,0,'1900876543','Santiago','Roman','santiago@unl.edu.ec',0,1,'2021-01-27 20:58:29.521792',NULL);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,2),(2,1,3),(3,2,1),(4,3,1),(5,4,1),(6,5,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-27 04:43:13.931862','1','clientes',1,'[{\"added\": {}}]',3,1),(2,'2021-01-27 04:44:15.429414','2','gestion_clientes',1,'[{\"added\": {}}]',3,1),(3,'2021-01-27 04:45:08.698813','3','transacciones',1,'[{\"added\": {}}]',3,1),(4,'2021-01-27 04:45:38.330144','1','jaime',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(5,'2021-02-22 22:16:27.911513','2','gestion_clientes',2,'[]',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'modelo','cliente'),(8,'modelo','cuenta'),(9,'modelo','transaccion'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-27 04:38:14.583905'),(2,'auth','0001_initial','2021-01-27 04:38:18.604188'),(3,'admin','0001_initial','2021-01-27 04:38:37.422797'),(4,'admin','0002_logentry_remove_auto_add','2021-01-27 04:38:44.941412'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-27 04:38:45.853981'),(6,'contenttypes','0002_remove_content_type_name','2021-01-27 04:38:49.989483'),(7,'auth','0002_alter_permission_name_max_length','2021-01-27 04:38:51.895956'),(8,'auth','0003_alter_user_email_max_length','2021-01-27 04:38:52.391934'),(9,'auth','0004_alter_user_username_opts','2021-01-27 04:38:52.575332'),(10,'auth','0005_alter_user_last_login_null','2021-01-27 04:38:54.726513'),(11,'auth','0006_require_contenttypes_0002','2021-01-27 04:38:54.841387'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-27 04:38:54.980669'),(13,'auth','0008_alter_user_username_max_length','2021-01-27 04:38:57.147592'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-27 04:38:59.317173'),(15,'auth','0010_alter_group_name_max_length','2021-01-27 04:38:59.681254'),(16,'auth','0011_update_proxy_permissions','2021-01-27 04:38:59.799787'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-27 04:39:03.154543'),(18,'modelo','0001_initial','2021-01-27 04:39:11.946004'),(19,'sessions','0001_initial','2021-01-27 04:39:20.075420');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('84z0vbkw0ctmcnsbj15eh0yi37pps0vt','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1lF7tH:jfdLGcR2nGsmtmtkJgJXSJ7iRjexMe-hxkfAxNasfAE','2021-03-11 04:04:39.767093'),('8zguejbthibf44et0r1cgww10eufymys','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1lEgZA:-MF4wna_EZoQ1W9Z1kMSHqWYFlfmZfb-UyR_UHyVRKk','2021-03-09 22:54:04.303450'),('azx7w1v01hxdf53y2fflc53mrox02ria','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1l4sua:vWsXL6EpaFPdi2xtYbtjSDrBK0miYs_Q80A0AcmlAWs','2021-02-10 22:03:40.303705'),('hpzosvpf8ymq4qb0zupqbio4u2a2w5o5','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1lEJTA:mVHWTYns7FJFVSpSgqAnmtSgygUjBRvt53RiU3XPnPk','2021-03-08 22:14:20.527690'),('hr2mdodhn3nwfs6djlpzkde7kkvtnmaf','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1lF8YH:upyJqBhBRHU64w7TA0nO6G8DczhrX_XyzJu3dIirBf8','2021-03-11 04:47:01.718515'),('naufydumq61uoyj4xpfsj6r2a50toxmw','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1lEjeW:VSjE1LcU-dtfo5LWzSZXbD3nRSbT7ENcvZqEErRPLdU','2021-03-10 02:11:48.166525'),('sb70l1tchdmtgxkvlo3mmj2j7722zr75','.eJxVjMEOwiAQRP-FsyFSYEWP3v0GsrCLVA0kpT2Z_ntp0oMmc5r3Zr7C4zJnvzSe_EjiJpQ4_XYB45vLDuiF5VllrGWexiB3RR60yUcl_twP9-8gY8t9DaAwRaUA-erOJiR22tEwMLLuIXA6WgvhwiZ0zACWrNGMEFUiILFu9Do4kg:1lEl1L:BKAJTteFmYCIvSzbKz7tX_IO54coIwSZpuGnLro99A0','2021-03-10 03:39:27.955227');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_cliente`
--

DROP TABLE IF EXISTS `modelo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_cliente` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(70) NOT NULL,
  `apellidos` varchar(70) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `estadoCivil` varchar(30) NOT NULL,
  `correo` varchar(105) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `direccion` longtext NOT NULL,
  `date_created` datetime(6) NOT NULL,
  PRIMARY KEY (`cliente_id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_cliente`
--

LOCK TABLES `modelo_cliente` WRITE;
/*!40000 ALTER TABLE `modelo_cliente` DISABLE KEYS */;
INSERT INTO `modelo_cliente` VALUES (1,'1900884964','Beyker','Satorum','masculino','soltero','beyk.sant@gmail.com','07302421','0986545376','Yantzaza','2021-01-27 04:47:32.452741'),(2,'1900823236','Jaime','Paqui','masculino','soltero','jaispaqui@gmail.com','0756453','0986542760','Zamora','2021-01-27 04:49:18.227259'),(3,'1900884910','Alexis','Armijos','masculino','divorciado','alexis@unl.edu.ec','07302421','098654512','Cuenca','2021-01-27 07:31:37.987455'),(4,'1900876543','Santiago','Roman','masculino','soltero','santiago@unl.edu.ec','07302421','0986545376','Loja','2021-01-27 20:58:29.185223'),(5,'190000000','Beykerrrr','Satorum','masculino','soltero','beyk.sant@gmail.com','07302421','0986545376','Yantzaza','2021-01-27 04:47:32.452741'),(11,'190000007','juanes','cabrera','masculino','soltero','juan.sant@gmail.com','07302421','0986545376','Cuenca','2021-01-27 04:47:32.452741');
/*!40000 ALTER TABLE `modelo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_cuenta`
--

DROP TABLE IF EXISTS `modelo_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_cuenta` (
  `cuenta_id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `fechaApertura` datetime(6) NOT NULL,
  `tipoCuenta` varchar(30) NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `cliente_id` int NOT NULL,
  PRIMARY KEY (`cuenta_id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `modelo_cuenta_cliente_id_dcab0d68_fk_modelo_cliente_cliente_id` (`cliente_id`),
  CONSTRAINT `modelo_cuenta_cliente_id_dcab0d68_fk_modelo_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `modelo_cliente` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_cuenta`
--

LOCK TABLES `modelo_cuenta` WRITE;
/*!40000 ALTER TABLE `modelo_cuenta` DISABLE KEYS */;
INSERT INTO `modelo_cuenta` VALUES (1,'11','2021-01-27 04:47:32.607407','programado',105.00,1,'2021-01-27 04:47:32.607528',1),(2,'21','2021-01-27 04:49:18.417012','ahorros',310.00,1,'2021-01-27 04:49:18.417287',2),(3,'61','2021-01-27 07:31:38.154110','corriente',420.00,1,'2021-01-27 07:31:38.154506',3),(6,'89','2021-01-27 20:00:32.372773','ahorros',400.00,1,'2021-01-27 20:00:32.372930',1),(7,'99','2021-01-27 20:58:29.389934','ahorros',13.00,1,'2021-01-27 20:58:29.390294',4),(8,'19','2021-01-27 20:58:47.222268','ahorros',45.00,1,'2021-01-27 20:58:47.222505',4);
/*!40000 ALTER TABLE `modelo_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_transaccion`
--

DROP TABLE IF EXISTS `modelo_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_transaccion` (
  `trasaccion_id` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `updated_ad` datetime(6) NOT NULL,
  `cuenta_id` int NOT NULL,
  PRIMARY KEY (`trasaccion_id`),
  KEY `modelo_transaccion_cuenta_id_13e268f8_fk_modelo_cuenta_cuenta_id` (`cuenta_id`),
  CONSTRAINT `modelo_transaccion_cuenta_id_13e268f8_fk_modelo_cuenta_cuenta_id` FOREIGN KEY (`cuenta_id`) REFERENCES `modelo_cuenta` (`cuenta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_transaccion`
--

LOCK TABLES `modelo_transaccion` WRITE;
/*!40000 ALTER TABLE `modelo_transaccion` DISABLE KEYS */;
INSERT INTO `modelo_transaccion` VALUES (1,'2021-01-27 04:50:07.084531','deposito',100.00,'aumento','2021-01-27 04:50:07.084648','2021-01-27 04:50:07.084668',1),(2,'2021-01-27 04:50:22.325165','deposito',500.00,'aumento','2021-01-27 04:50:22.325360','2021-01-27 04:50:22.325411',2),(3,'2021-01-27 21:41:34.653373','deposito',100.00,'           aumento ','2021-01-27 21:41:34.653588','2021-01-27 21:41:34.653643',2),(4,'2021-01-27 21:41:57.221064','deposito',100.00,'            aumento','2021-01-27 21:41:57.221170','2021-01-27 21:41:57.221196',2),(5,'2021-01-27 21:42:09.723774','deposito',100.00,'            aumento','2021-01-27 21:42:09.723940','2021-01-27 21:42:09.723970',3),(6,'2021-01-27 21:47:40.751859','deposito',100.00,'            Deudas','2021-01-27 21:47:40.751954','2021-01-27 21:47:40.751973',1),(7,'2021-01-27 21:47:53.009112','deposito',300.00,'            deuda','2021-01-27 21:47:53.009273','2021-01-27 21:47:53.009308',1),(8,'2021-01-27 21:48:04.735661','deposito',5.00,'            deuda','2021-01-27 21:48:04.735790','2021-01-27 21:48:04.735826',1),(9,'2021-01-27 21:48:22.302689','deposito',400.00,'            deuda','2021-01-27 21:48:22.302765','2021-01-27 21:48:22.302780',2),(10,'2021-01-27 21:51:18.748464','deposito',10.00,'            deuda','2021-01-27 21:51:18.748539','2021-01-27 21:51:18.748555',1),(11,'2021-01-27 21:52:27.034814','deposito',10.00,'            deuda','2021-01-27 21:52:27.035147','2021-01-27 21:52:27.035236',1),(12,'2021-01-27 21:53:12.428384','deposito',10.00,'            deuda','2021-01-27 21:53:12.428617','2021-01-27 21:53:12.428676',1),(13,'2021-01-27 21:53:47.384845','deposito',10.00,'            deuda','2021-01-27 21:53:47.385065','2021-01-27 21:53:47.385117',1),(14,'2021-01-27 21:55:17.031638','deposito',10.00,'            deuda','2021-01-27 21:55:17.031987','2021-01-27 21:55:17.032089',1),(15,'2021-01-27 21:55:31.668297','deposito',80.00,'            deuda','2021-01-27 21:55:31.668401','2021-01-27 21:55:31.668417',1),(16,'2021-01-27 21:56:46.588702','deposito',80.00,'            deuda','2021-01-27 21:56:46.588876','2021-01-27 21:56:46.588911',1),(17,'2021-02-22 22:51:40.001606','deposito',100.00,'            Aumento de sueldo','2021-02-22 22:51:40.001782','2021-02-22 22:51:40.001813',1),(18,'2021-02-22 22:52:09.231187','deposito',100.00,'            MOtivos de calamidad','2021-02-22 22:52:09.231395','2021-02-22 22:52:09.231440',1),(19,'2021-02-25 04:33:01.387296','deposito',100.00,'            Pago de Luz','2021-02-25 04:33:01.387784','2021-02-25 04:33:01.387935',1),(20,'2021-02-25 04:33:50.182211','deposito',5.00,'            Necesidades','2021-02-25 04:33:50.182297','2021-02-25 04:33:50.182313',1),(21,'2021-02-25 04:37:12.932802','deposito',150.00,'            Nesecidades','2021-02-25 04:37:12.932931','2021-02-25 04:37:12.932975',1),(22,'2021-02-25 04:41:08.575047','deposito',5.00,'            pago de agua','2021-02-25 04:41:08.575144','2021-02-25 04:41:08.575165',1);
/*!40000 ALTER TABLE `modelo_transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-25 18:12:15
