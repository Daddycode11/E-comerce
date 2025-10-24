-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: farmart
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ulGQ7tocAkyvWM6u9M9abwDUasaNSBzB',1,'2024-05-28 03:12:34','2024-05-28 03:12:34','2024-05-28 03:12:34');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2029-05-28 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2024-05-28 03:13:01','2024-05-28 03:13:01',1,NULL,NULL,NULL,NULL),(2,'Homepage middle 1','2029-05-28 00:00:00','not_set','IZ6WU8KUALYD','promotion/2.png','/products',0,2,'published','2024-05-28 03:13:01','2024-05-28 03:13:01',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 2','2029-05-28 00:00:00','not_set','ILSFJVYFGCPZ','promotion/3.png','/products',0,3,'published','2024-05-28 03:13:01','2024-05-28 03:13:01',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 3','2029-05-28 00:00:00','not_set','ZDOZUZZIU7FT','promotion/4.png','/products',0,4,'published','2024-05-28 03:13:01','2024-05-28 03:13:01',1,NULL,NULL,NULL,NULL),(5,'Products list 1','2029-05-28 00:00:00','not_set','ZDOZUZZIU7FZ','promotion/5.png','/products/beat-headphone',0,5,'published','2024-05-28 03:13:01','2024-05-28 03:13:01',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Deleniti eos tempora rerum et consequatur eius architecto. Porro cupiditate et deserunt soluta. Vel excepturi nihil temporibus velit molestiae harum et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(2,'Fashion',0,'Pariatur voluptatem dolores sed deserunt rerum. Sit itaque asperiores omnis rerum magni qui iste. Voluptatem rerum nostrum sed consequatur tempore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(3,'Electronic',0,'Consequatur et non asperiores unde. Blanditiis unde quis ut ut aut dolores consequatur mollitia. Repellat fuga architecto totam ex voluptatem inventore odit facilis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(4,'Commercial',0,'Illo laboriosam soluta eum similique perspiciatis omnis facilis. Consequatur iure qui suscipit nam rerum quia. Vero molestias perferendis optio asperiores at.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-05-28 03:13:00','2024-05-28 03:13:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Jordon Tremblay','reanna54@example.com','+15346752770','70256 Grady Garden Suite 791\nPort Kiara, ND 83427','Aut molestiae odio unde eaque omnis.','Enim aspernatur rerum iste ad. Quis nihil doloremque necessitatibus. Dolorem animi sapiente qui ipsa. In ut reprehenderit quia aspernatur ipsam asperiores nam. Qui quo facilis temporibus beatae voluptatum assumenda. Commodi molestias vitae suscipit id cupiditate occaecati. Aliquam similique dignissimos iure nihil repudiandae enim atque. Vitae et ut magni porro ut. Quibusdam officia aspernatur enim non qui dolorem soluta. Quis cupiditate beatae harum magnam quo expedita nemo.',NULL,'unread','2024-05-28 03:12:59','2024-05-28 03:12:59'),(2,'Aracely Kub Sr.','benjamin09@example.org','(253) 659-8472','52849 Veum Course\nDanykamouth, NM 89777-5093','Et quod necessitatibus dolorem repellendus.','Voluptatem quod tenetur vel est veritatis. Enim est illum error minima. Beatae necessitatibus deleniti et voluptates in et. Aut et molestiae architecto iste. Et et sint eaque consequatur occaecati cupiditate. Sapiente et nostrum ipsum est accusantium nemo sed. Est a velit consequatur eius nam voluptas. Eos ut rerum quisquam fugiat. Veniam numquam id laborum assumenda quae impedit.',NULL,'unread','2024-05-28 03:12:59','2024-05-28 03:12:59'),(3,'Felton Bradtke','joel.nicolas@example.org','334.935.7727','92139 Aliya Prairie\nPort Landenberg, MD 96987','Natus non placeat dolores.','Libero ut cupiditate praesentium in voluptas dolore error. Consequatur et distinctio veniam asperiores libero tempore accusantium quia. Qui dolorem quos illo non quis id perferendis. Deleniti porro vel quia laborum quia sint ea. Iste in tempora laborum atque quam sapiente quos voluptatem. Sint facilis quod voluptatem. Nulla nostrum itaque quam aperiam culpa architecto nesciunt. Dolor et quaerat porro quae sunt est. Optio laboriosam est voluptas est eius qui molestiae voluptatem.',NULL,'read','2024-05-28 03:12:59','2024-05-28 03:12:59'),(4,'Jackeline Wunsch','walker.leatha@example.org','+1.352.993.6438','3376 Skye Hills Suite 977\nNew Jordynview, HI 28488','Eum odio vero enim fugit.','Commodi ut et doloremque quia sint officiis adipisci. Dolorem odio delectus maxime autem vel. Voluptatum rerum rerum distinctio deserunt illo. In autem accusamus nobis est. Rerum non reiciendis voluptate et impedit aut tempore. Molestiae ad quo est omnis animi. Nemo tempora similique veritatis corporis doloremque. Rerum explicabo eveniet qui consequuntur fugiat voluptatum. Et dolorem optio quas ea.',NULL,'unread','2024-05-28 03:12:59','2024-05-28 03:12:59'),(5,'Esmeralda Bode','doris.gulgowski@example.org','283.905.9114','930 Johnny Walks\nJenkinschester, MN 75134-8565','Et numquam magnam voluptas corporis placeat.','Dicta temporibus in reiciendis veritatis ut qui accusamus dolor. Consequatur excepturi magnam enim. Et neque architecto nulla quia est sed rerum. Vero quae vel omnis aut officiis. Eveniet reprehenderit odit consequatur aut non. Et ducimus ut officiis magnam ea quod rerum. Incidunt sunt facilis nobis et culpa ut. A nemo necessitatibus voluptatum odio ratione fugit officiis voluptatum.',NULL,'read','2024-05-28 03:12:59','2024-05-28 03:12:59'),(6,'Chaya Reilly','btromp@example.com','605-786-4866','7312 Deven Garden\nLucianoport, IN 90157','Accusantium saepe fugiat a nostrum qui.','Distinctio suscipit impedit modi. Fugiat cum non dolores harum dolorem voluptatem. Exercitationem est occaecati eaque ad molestias quia. Quia nostrum nam molestiae velit. Consectetur soluta totam consequatur molestiae ut. In aut perspiciatis culpa voluptate. Qui earum neque optio adipisci ratione. Non sint veritatis aut et culpa omnis quo. Aut asperiores id eos hic placeat.',NULL,'unread','2024-05-28 03:12:59','2024-05-28 03:12:59'),(7,'Meggie Greenholt','santiago20@example.com','623-889-8853','759 Mohammad Station\nHettingerport, AZ 12685-8398','Atque velit aut et et non consequuntur.','Id et dolorem alias asperiores. Esse delectus quia nisi et inventore sunt aut. Eum nobis aut labore alias. Rerum sunt sapiente impedit enim atque. Temporibus perspiciatis quibusdam et eos dolorem ut et iure. Molestiae ut et sunt rerum. Maxime optio eligendi mollitia nemo. Eum doloremque odio enim sit. Sit tenetur ducimus id architecto non. Voluptatem quisquam amet voluptatem odit nihil earum esse nisi. Rerum id quis fuga quia.',NULL,'unread','2024-05-28 03:12:59','2024-05-28 03:12:59'),(8,'Sofia Block','fiona.hauck@example.org','+1 (463) 972-9671','153 Wilkinson Junctions\nPowlowskiport, AL 69745','Doloremque aperiam fuga adipisci voluptas fugit.','Velit illum saepe inventore ipsum harum iusto. Quam impedit est velit corrupti magni non. Dignissimos accusamus qui aut. Aliquam nobis quos minima. Corporis dolores perferendis aspernatur impedit necessitatibus ea. Ad veritatis aliquid quidem corporis nesciunt. Quia ut nisi distinctio. Laudantium dolorem aperiam ut. Enim est harum autem sequi tenetur cupiditate.',NULL,'unread','2024-05-28 03:12:59','2024-05-28 03:12:59'),(9,'Gillian Keeling','nschuster@example.com','1-810-840-1944','16539 Von Parkway\nStrackeborough, CT 61414-1828','Laborum omnis animi voluptates.','Voluptatem est quam impedit nostrum nihil. Dolores enim qui quod id quo. Qui ut consequuntur voluptas sint voluptatem aspernatur sequi. Ut et voluptatem ut non molestiae tenetur. Eum recusandae ratione pariatur velit. Molestiae eligendi et facere est sunt neque cupiditate. Cumque molestiae sint a corrupti nesciunt. Quod nihil ut aut voluptatem officia provident. Est sequi explicabo molestiae at. Maiores omnis sit corporis ab. Voluptate pariatur expedita eum. Tenetur est eum illo et velit sed.',NULL,'read','2024-05-28 03:12:59','2024-05-28 03:12:59'),(10,'Mrs. Marjorie Hudson','jmosciski@example.com','210-268-4425','75713 Turcotte Point\nHintzberg, SD 40935','Unde ab nobis magni quod est perferendis.','Est nulla possimus necessitatibus fugit nobis. Officiis omnis repellat dolore neque est nobis repellendus. Doloribus architecto reiciendis quo voluptatum amet iste facilis. Aperiam ipsa quibusdam beatae modi natus. Tenetur quaerat ratione rerum. Quia eos quas aut animi quas quos. Vitae perferendis ipsum voluptas quos amet consectetur quis. Omnis adipisci modi aut ex. Nihil soluta a vero molestiae tempora. Cumque veritatis odio eum et deserunt qui.',NULL,'read','2024-05-28 03:12:59','2024-05-28 03:12:59');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'brands/1.png','published',0,1,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'brands/2.png','published',1,1,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/3.png','published',2,1,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(4,'Farmart','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/4.png','published',3,1,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/3.png','published',4,1,'2024-05-28 03:12:35','2024-05-28 03:12:35');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(2,'EUR','€',0,2,1,0,0.84,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(3,'VND','₫',0,0,2,0,23203,'2024-05-28 03:12:35','2024-05-28 03:12:35'),(4,'NGN','₦',1,2,2,0,895.52,'2024-05-28 03:12:35','2024-05-28 03:12:35');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Rudy Skiles','customer@botble.com','+16676705305','KI','Oregon','West Princessburgh','8220 Schmidt Vista Apt. 090',1,1,'2024-05-28 03:12:37','2024-05-28 03:12:37','48741-9071'),(2,'Rudy Skiles','customer@botble.com','+19405996194','GI','New Hampshire','Willland','9271 Williamson Cliffs',1,0,'2024-05-28 03:12:37','2024-05-28 03:12:37','84401-6173'),(3,'Maximo Gaylord','vendor@botble.com','+19164562208','CZ','South Dakota','South Felicitamouth','507 Bryon Tunnel',2,1,'2024-05-28 03:12:37','2024-05-28 03:12:37','97049-8535'),(4,'Maximo Gaylord','vendor@botble.com','+15205246683','MA','Nevada','East Julia','978 Zulauf Walk',2,0,'2024-05-28 03:12:37','2024-05-28 03:12:37','85361-4779'),(5,'Ozella Russel','yhettinger@example.org','+14752299925','GT','Pennsylvania','Schuppeshire','83364 Lind Dale',3,1,'2024-05-28 03:12:37','2024-05-28 03:12:37','26450-8734'),(6,'Hailie Kuhic III','letha.marvin@example.org','+18206383592','MK','Connecticut','North Kaliport','33875 Batz Causeway',4,1,'2024-05-28 03:12:37','2024-05-28 03:12:37','95161'),(7,'Nicholaus Bashirian','mose.torp@example.net','+15599372934','BS','Illinois','South Sidneyfort','2016 Maggio Pass',5,1,'2024-05-28 03:12:38','2024-05-28 03:12:38','25802'),(8,'Luella Grimes','hermann.lesley@example.org','+13645854524','DK','Wyoming','Cartershire','23316 Rhoda Plains Apt. 501',6,1,'2024-05-28 03:12:38','2024-05-28 03:12:38','39301'),(9,'Dr. Kristin Rowe','haven.baumbach@example.net','+14587159839','MY','Wisconsin','North Eldoraberg','20269 Armstrong Ford Apt. 937',7,1,'2024-05-28 03:12:38','2024-05-28 03:12:38','92060'),(10,'Mrs. Adah Bartoletti I','june14@example.com','+13468029623','PS','North Carolina','Ardenside','8134 Chelsea Pass',8,1,'2024-05-28 03:12:39','2024-05-28 03:12:39','90821-1908'),(11,'Moises Labadie','sven.boehm@example.com','+13138862513','UM','Ohio','North Enostown','32924 Dorthy Groves Apt. 003',9,1,'2024-05-28 03:12:39','2024-05-28 03:12:39','17545'),(12,'Zetta Gislason','nitzsche.nayeli@example.net','+14142990866','IR','Connecticut','Zulauffort','738 Stoltenberg Forks Suite 581',10,1,'2024-05-28 03:12:39','2024-05-28 03:12:39','47005');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Rudy Skiles','customer@botble.com','$2y$12$PwiaLEYuoYiZyHTAybEmP.y0Z2M23dsIqSjWCupt.4xwQK4B9bqaC','customers/2.jpg','1976-05-18','+13149279511',NULL,'2024-05-28 03:12:37','2024-05-28 03:12:37','2024-05-28 10:12:36',NULL,'activated',NULL,0,NULL),(2,'Maximo Gaylord','vendor@botble.com','$2y$12$mtVI2YbmhbFsPgpf7GSn4ucQb8BeO1XJ3KOtwL7rJalpJtLcTw0QK','customers/10.jpg','1999-05-19','+14809914681',NULL,'2024-05-28 03:12:37','2024-05-28 03:12:57','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(3,'Ozella Russel','yhettinger@example.org','$2y$12$hJJrgmuwnebLPq2sdiEKVezG6WUugjt7UihMv.06e17kt69YggvU.','customers/1.jpg','1979-05-09','+18432751648',NULL,'2024-05-28 03:12:37','2024-05-28 03:12:57','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(4,'Hailie Kuhic III','letha.marvin@example.org','$2y$12$1vBbgMIVLedOLL7F14k42O/EfFvMdEXn6sjD3Z6UuFhzADQNGbTje','customers/2.jpg','2000-05-19','+17867559017',NULL,'2024-05-28 03:12:37','2024-05-28 03:12:57','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(5,'Nicholaus Bashirian','mose.torp@example.net','$2y$12$h3R.LeUynC/XGKVofS/nqOXVJlTvCmiCLkl4oS4oDvrR0cFT25XW2','customers/3.jpg','1991-04-28','+14755386623',NULL,'2024-05-28 03:12:38','2024-05-28 03:12:57','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(6,'Luella Grimes','hermann.lesley@example.org','$2y$12$hjedUVGBp/m2YH7KGW1vX.0SJh75Blwa9XUpTG07MU9/PsTMVJz5W','customers/4.jpg','1998-05-01','+19414040741',NULL,'2024-05-28 03:12:38','2024-05-28 03:12:58','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(7,'Dr. Kristin Rowe','haven.baumbach@example.net','$2y$12$ASMnkAQsrWna8JxNe3ROReDzdIYuDuGoPHWbmqipwMmbeBDo3yEg.','customers/5.jpg','2000-05-12','+14797420632',NULL,'2024-05-28 03:12:38','2024-05-28 03:12:58','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(8,'Mrs. Adah Bartoletti I','june14@example.com','$2y$12$jqQtPkhIHmoNlL5GZwVPL.80ToGehtk7G9z95i77akDIl37TP0Aj6','customers/6.jpg','1976-05-27','+17133900635',NULL,'2024-05-28 03:12:39','2024-05-28 03:12:58','2024-05-28 10:12:36',NULL,'activated',NULL,1,'2024-05-28 10:12:57'),(9,'Moises Labadie','sven.boehm@example.com','$2y$12$KivGnCf.rk/maVgAJXq1rehwt8ZxQVi05iYT9.5AN0M8d164sBvAK','customers/7.jpg','1986-05-19','+12125181282',NULL,'2024-05-28 03:12:39','2024-05-28 03:12:59','2024-05-28 10:12:36',NULL,'activated',NULL,0,NULL),(10,'Zetta Gislason','nitzsche.nayeli@example.net','$2y$12$hPnGcEk4U4Bj8YmHibHmheScu5lxLLHrD5asvn08ELArHREhhHnpq','customers/8.jpg','1992-05-23','+15087428082',NULL,'2024-05-28 03:12:39','2024-05-28 03:12:59','2024-05-28 10:12:36',NULL,'activated',NULL,0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,2,31.5,20,3),(1,61,556.25,13,3),(1,36,198.5138,7,5),(1,32,193.16,14,4),(1,30,310.64,18,1),(1,64,243.36,17,4),(1,55,983.1,9,5),(1,34,946.8,18,5),(1,49,425.04,11,5),(1,28,14.62,12,4);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-06-27 00:00:00','published','2024-05-28 03:12:55','2024-05-28 03:12:55');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(1,2,'2 Year',10,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(1,3,'3 Year',20,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(2,4,'4GB',0,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(2,5,'8GB',10,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(2,6,'16GB',20,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(3,7,'Core i5',0,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(3,8,'Core i7',10,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(3,9,'Core i9',20,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(4,10,'128GB',0,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(4,11,'256GB',10,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(4,12,'512GB',20,9999,0,'2024-05-28 03:12:36','2024-05-28 03:12:36');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-05-28 03:12:36','2024-05-28 03:12:36');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-05-28 03:12:35','2024-05-28 03:12:35',0),(2,'Size','size','text',1,1,1,'published',1,'2024-05-28 03:12:35','2024-05-28 03:12:35',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-05-28 03:12:35','2024-05-28 03:12:35',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-05-28 03:12:35','2024-05-28 03:12:35',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(6,2,'S','s',NULL,NULL,1,1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(7,2,'M','m',NULL,NULL,0,2,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(8,2,'L','l',NULL,NULL,0,3,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-05-28 03:12:36','2024-05-28 03:12:36'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-05-28 03:12:36','2024-05-28 03:12:36');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Fruits & Vegetables',0,NULL,'published',0,'product-categories/1.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-star',NULL),(2,'Fruits',1,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(3,'Apples',2,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(4,'Bananas',2,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(5,'Berries',2,NULL,'published',2,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(6,'Oranges & Easy Peelers',2,NULL,'published',3,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(7,'Grapes',2,NULL,'published',4,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(8,'Lemons & Limes',2,NULL,'published',5,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(9,'Peaches & Nectarines',2,NULL,'published',6,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(10,'Pears',2,NULL,'published',7,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(11,'Melon',2,NULL,'published',8,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(12,'Avocados',2,NULL,'published',9,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(13,'Plums & Apricots',2,NULL,'published',10,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(14,'Vegetables',1,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(15,'Potatoes',14,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(16,'Carrots & Root Vegetables',14,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(17,'Broccoli & Cauliflower',14,NULL,'published',2,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(18,'Cabbage, Spinach & Greens',14,NULL,'published',3,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(19,'Onions, Leeks & Garlic',14,NULL,'published',4,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(20,'Mushrooms',14,NULL,'published',5,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(21,'Tomatoes',14,NULL,'published',6,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(22,'Beans, Peas & Sweetcorn',14,NULL,'published',7,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(23,'Freshly Drink Orange Juice',14,NULL,'published',8,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(24,'Breads Sweets',0,NULL,'published',1,'product-categories/2.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-bread',NULL),(25,'Crisps, Snacks & Nuts',24,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(26,'Crisps & Popcorn',25,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(27,'Nuts & Seeds',25,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(28,'Lighter Options',25,NULL,'published',2,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(29,'Cereal Bars',25,NULL,'published',3,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(30,'Breadsticks & Pretzels',25,NULL,'published',4,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(31,'Fruit Snacking',25,NULL,'published',5,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(32,'Rice & Corn Cakes',25,NULL,'published',6,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(33,'Protein & Energy Snacks',25,NULL,'published',7,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(34,'Toddler Snacks',25,NULL,'published',8,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(35,'Meat Snacks',25,NULL,'published',9,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(36,'Beans',25,NULL,'published',10,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(37,'Lentils',25,NULL,'published',11,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(38,'Chickpeas',25,NULL,'published',12,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(39,'Tins & Cans',24,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(40,'Tomatoes',39,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(41,'Baked Beans, Spaghetti',39,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(42,'Fish',39,NULL,'published',2,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(43,'Beans & Pulses',39,NULL,'published',3,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(44,'Fruit',39,NULL,'published',4,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(45,'Coconut Milk & Cream',39,NULL,'published',5,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(46,'Lighter Options',39,NULL,'published',6,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(47,'Olives',39,NULL,'published',7,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(48,'Sweetcorn',39,NULL,'published',8,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(49,'Carrots',39,NULL,'published',9,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(50,'Peas',39,NULL,'published',10,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(51,'Mixed Vegetables',39,NULL,'published',11,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(52,'Frozen Seafoods',0,NULL,'published',2,'product-categories/3.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-hamburger',NULL),(53,'Raw Meats',0,NULL,'published',3,'product-categories/4.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-steak',NULL),(54,'Wines & Alcohol Drinks',0,NULL,'published',4,'product-categories/5.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-glass',NULL),(55,'Ready Meals',54,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(56,'Meals for 1',55,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(57,'Meals for 2',55,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(58,'Indian',55,NULL,'published',2,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(59,'Italian',55,NULL,'published',3,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(60,'Chinese',55,NULL,'published',4,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(61,'Traditional British',55,NULL,'published',5,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(62,'Thai & Oriental',55,NULL,'published',6,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(63,'Mediterranean & Moroccan',55,NULL,'published',7,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(64,'Mexican & Caribbean',55,NULL,'published',8,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(65,'Lighter Meals',55,NULL,'published',9,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(66,'Lunch & Veg Pots',55,NULL,'published',10,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(67,'Salad & Herbs',54,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(68,'Salad Bags',67,NULL,'published',0,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(69,'Cucumber',67,NULL,'published',1,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(70,'Tomatoes',67,NULL,'published',2,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(71,'Lettuce',67,NULL,'published',3,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(72,'Lunch Salad Bowls',67,NULL,'published',4,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(73,'Lunch Salad Bowls',67,NULL,'published',5,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(74,'Fresh Herbs',67,NULL,'published',6,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(75,'Avocados',67,NULL,'published',7,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(76,'Peppers',67,NULL,'published',8,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(77,'Coleslaw & Potato Salad',67,NULL,'published',9,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(78,'Spring Onions',67,NULL,'published',10,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(79,'Chilli, Ginger & Garlic',67,NULL,'published',11,NULL,0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,NULL),(80,'Tea & Coffee',0,NULL,'published',5,'product-categories/6.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-teacup',NULL),(81,'Milks and Dairies',0,NULL,'published',6,'product-categories/7.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-coffee-cup',NULL),(82,'Pet Foods',0,NULL,'published',7,'product-categories/8.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-hotdog',NULL),(83,'Food Cupboard',0,NULL,'published',8,'product-categories/1.png',1,'2024-05-28 03:12:35','2024-05-28 03:12:35','icon-cheese',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,25),(1,41),(1,43),(1,50),(1,51),(1,56),(1,60),(3,10),(3,15),(3,30),(3,32),(3,57),(4,9),(4,15),(4,33),(4,46),(4,47),(5,11),(5,34),(5,59),(6,28),(6,50),(6,54),(7,25),(7,36),(7,61),(8,4),(8,11),(8,20),(8,42),(8,55),(8,61),(9,39),(9,42),(9,48),(9,49),(10,3),(11,12),(11,32),(11,38),(11,50),(12,1),(12,2),(12,9),(12,19),(12,56),(13,8),(13,19),(13,33),(13,49),(13,58),(14,16),(14,21),(15,7),(17,1),(17,21),(17,23),(17,37),(17,48),(18,16),(18,43),(19,11),(19,49),(19,51),(19,52),(20,8),(20,13),(20,16),(21,10),(21,13),(21,60),(21,62),(22,17),(22,44),(23,2),(23,62),(24,20),(24,34),(24,63),(25,10),(25,15),(25,22),(25,35),(26,3),(26,13),(26,30),(26,36),(27,24),(27,51),(27,53),(27,61),(27,65),(28,49),(28,62),(28,65),(29,24),(29,25),(29,40),(29,52),(29,63),(30,9),(30,22),(30,31),(31,3),(31,4),(31,28),(31,35),(31,55),(32,27),(32,32),(32,41),(33,5),(33,6),(33,41),(33,45),(34,7),(34,34),(34,45),(34,53),(35,14),(35,40),(36,33),(36,45),(36,57),(37,5),(37,27),(37,29),(37,35),(37,62),(38,3),(38,34),(38,47),(39,1),(39,59),(40,15),(40,31),(41,11),(41,12),(41,18),(41,23),(41,58),(42,26),(42,43),(42,52),(43,39),(43,40),(43,58),(44,14),(44,21),(45,55),(45,61),(47,5),(48,6),(48,8),(48,53),(49,47),(49,63),(50,44),(51,17),(51,30),(52,64),(53,48),(54,7),(54,8),(54,39),(54,41),(54,46),(54,58),(54,64),(55,13),(55,29),(55,60),(56,18),(56,24),(56,37),(57,7),(57,30),(57,65),(58,19),(58,37),(59,2),(59,19),(59,21),(59,23),(59,42),(60,14),(60,17),(60,23),(60,29),(60,50),(61,2),(61,6),(61,36),(61,56),(62,12),(62,17),(62,32),(62,38),(62,51),(63,9),(63,14),(63,25),(63,60),(64,45),(64,59),(65,20),(65,31),(65,43),(65,64),(66,18),(66,20),(66,38),(66,57),(67,4),(67,64),(67,65),(68,4),(68,33),(68,44),(68,48),(69,12),(69,46),(69,47),(69,57),(70,59),(71,24),(71,26),(71,42),(72,1),(72,29),(73,22),(73,63),(74,10),(74,28),(74,37),(74,38),(74,54),(76,26),(76,27),(76,39),(77,18),(77,31),(77,36),(77,54),(78,16),(79,27),(79,35),(79,56),(80,5),(80,6),(80,44),(80,52),(80,54),(81,28),(81,46),(82,53),(83,22),(83,26),(83,40),(83,55);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,8),(1,10),(1,12),(1,13),(1,15),(1,19),(1,22),(1,28),(1,29),(1,32),(1,33),(1,36),(1,44),(1,48),(1,49),(1,50),(1,52),(1,56),(1,60),(1,62),(1,63),(1,64),(2,2),(2,3),(2,6),(2,7),(2,9),(2,16),(2,17),(2,18),(2,21),(2,23),(2,25),(2,26),(2,27),(2,30),(2,31),(2,35),(2,37),(2,39),(2,42),(2,43),(2,51),(2,53),(2,54),(2,55),(2,58),(2,59),(2,61),(2,65),(3,1),(3,4),(3,5),(3,11),(3,14),(3,20),(3,24),(3,34),(3,38),(3,40),(3,41),(3,45),(3,46),(3,47),(3,57);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-05-28 03:12:35','2024-05-28 03:12:35',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-05-28 03:12:35','2024-05-28 03:12:35',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-05-28 03:12:35','2024-05-28 03:12:35',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,15,0,0.00,'fixed',1),(1,26,0,0.00,'fixed',1),(1,41,0,0.00,'fixed',1),(1,61,0,0.00,'fixed',1),(1,64,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,13,0,0.00,'fixed',1),(2,31,0,0.00,'fixed',1),(2,35,0,0.00,'fixed',1),(2,38,0,0.00,'fixed',1),(2,44,0,0.00,'fixed',1),(2,48,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,22,0,0.00,'fixed',1),(3,28,0,0.00,'fixed',1),(3,35,0,0.00,'fixed',1),(3,38,0,0.00,'fixed',1),(3,41,0,0.00,'fixed',1),(3,63,0,0.00,'fixed',1),(4,10,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,30,0,0.00,'fixed',1),(4,42,0,0.00,'fixed',1),(4,49,0,0.00,'fixed',1),(4,57,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,32,0,0.00,'fixed',1),(5,33,0,0.00,'fixed',1),(5,35,0,0.00,'fixed',1),(5,54,0,0.00,'fixed',1),(5,60,0,0.00,'fixed',1),(6,24,0,0.00,'fixed',1),(6,25,0,0.00,'fixed',1),(6,42,0,0.00,'fixed',1),(6,47,0,0.00,'fixed',1),(6,49,0,0.00,'fixed',1),(6,64,0,0.00,'fixed',1),(7,22,0,0.00,'fixed',1),(7,29,0,0.00,'fixed',1),(7,47,0,0.00,'fixed',1),(7,48,0,0.00,'fixed',1),(7,49,0,0.00,'fixed',1),(7,63,0,0.00,'fixed',1),(7,65,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,22,0,0.00,'fixed',1),(8,33,0,0.00,'fixed',1),(8,41,0,0.00,'fixed',1),(8,52,0,0.00,'fixed',1),(8,61,0,0.00,'fixed',1),(8,64,0,0.00,'fixed',1),(9,22,0,0.00,'fixed',1),(9,24,0,0.00,'fixed',1),(9,34,0,0.00,'fixed',1),(9,42,0,0.00,'fixed',1),(9,45,0,0.00,'fixed',1),(9,61,0,0.00,'fixed',1),(9,64,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(10,25,0,0.00,'fixed',1),(10,42,0,0.00,'fixed',1),(10,49,0,0.00,'fixed',1),(10,54,0,0.00,'fixed',1),(10,61,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,23,0,0.00,'fixed',1),(11,29,0,0.00,'fixed',1),(11,41,0,0.00,'fixed',1),(11,46,0,0.00,'fixed',1),(11,65,0,0.00,'fixed',1),(12,20,0,0.00,'fixed',1),(12,26,0,0.00,'fixed',1),(12,44,0,0.00,'fixed',1),(12,47,0,0.00,'fixed',1),(12,51,0,0.00,'fixed',1),(12,52,0,0.00,'fixed',1),(12,59,0,0.00,'fixed',1),(13,29,0,0.00,'fixed',1),(13,42,0,0.00,'fixed',1),(13,47,0,0.00,'fixed',1),(13,50,0,0.00,'fixed',1),(13,52,0,0.00,'fixed',1),(13,53,0,0.00,'fixed',1),(13,56,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,17,0,0.00,'fixed',1),(14,22,0,0.00,'fixed',1),(14,46,0,0.00,'fixed',1),(14,52,0,0.00,'fixed',1),(14,62,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,28,0,0.00,'fixed',1),(15,46,0,0.00,'fixed',1),(15,54,0,0.00,'fixed',1),(15,62,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,10,0,0.00,'fixed',1),(16,31,0,0.00,'fixed',1),(16,34,0,0.00,'fixed',1),(16,39,0,0.00,'fixed',1),(16,58,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,33,0,0.00,'fixed',1),(17,41,0,0.00,'fixed',1),(17,54,0,0.00,'fixed',1),(17,60,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,30,0,0.00,'fixed',1),(18,33,0,0.00,'fixed',1),(18,49,0,0.00,'fixed',1),(18,53,0,0.00,'fixed',1),(18,62,0,0.00,'fixed',1),(19,7,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,33,0,0.00,'fixed',1),(19,38,0,0.00,'fixed',1),(19,41,0,0.00,'fixed',1),(19,51,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,16,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(20,31,0,0.00,'fixed',1),(20,37,0,0.00,'fixed',1),(20,60,0,0.00,'fixed',1),(20,64,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,11,0,0.00,'fixed',1),(21,44,0,0.00,'fixed',1),(21,52,0,0.00,'fixed',1),(21,61,0,0.00,'fixed',1),(22,1,0,0.00,'fixed',1),(22,3,0,0.00,'fixed',1),(22,6,0,0.00,'fixed',1),(22,21,0,0.00,'fixed',1),(22,40,0,0.00,'fixed',1),(22,55,0,0.00,'fixed',1),(23,2,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,37,0,0.00,'fixed',1),(23,38,0,0.00,'fixed',1),(23,48,0,0.00,'fixed',1),(23,61,0,0.00,'fixed',1),(24,1,0,0.00,'fixed',1),(24,34,0,0.00,'fixed',1),(24,43,0,0.00,'fixed',1),(24,44,0,0.00,'fixed',1),(24,51,0,0.00,'fixed',1),(24,55,0,0.00,'fixed',1),(24,65,0,0.00,'fixed',1),(25,2,0,0.00,'fixed',1),(25,17,0,0.00,'fixed',1),(25,22,0,0.00,'fixed',1),(25,34,0,0.00,'fixed',1),(25,48,0,0.00,'fixed',1),(25,54,0,0.00,'fixed',1),(26,8,0,0.00,'fixed',1),(26,10,0,0.00,'fixed',1),(26,30,0,0.00,'fixed',1),(26,35,0,0.00,'fixed',1),(26,37,0,0.00,'fixed',1),(26,45,0,0.00,'fixed',1),(26,55,0,0.00,'fixed',1),(27,4,0,0.00,'fixed',1),(27,35,0,0.00,'fixed',1),(27,47,0,0.00,'fixed',1),(27,52,0,0.00,'fixed',1),(27,53,0,0.00,'fixed',1),(27,65,0,0.00,'fixed',1),(28,1,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,11,0,0.00,'fixed',1),(28,13,0,0.00,'fixed',1),(28,44,0,0.00,'fixed',1),(28,48,0,0.00,'fixed',1),(28,65,0,0.00,'fixed',1),(29,14,0,0.00,'fixed',1),(29,28,0,0.00,'fixed',1),(29,32,0,0.00,'fixed',1),(29,38,0,0.00,'fixed',1),(29,63,0,0.00,'fixed',1),(29,65,0,0.00,'fixed',1),(30,8,0,0.00,'fixed',1),(30,10,0,0.00,'fixed',1),(30,13,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,23,0,0.00,'fixed',1),(30,34,0,0.00,'fixed',1),(30,36,0,0.00,'fixed',1),(31,14,0,0.00,'fixed',1),(31,16,0,0.00,'fixed',1),(31,21,0,0.00,'fixed',1),(31,24,0,0.00,'fixed',1),(31,47,0,0.00,'fixed',1),(31,51,0,0.00,'fixed',1),(31,64,0,0.00,'fixed',1),(32,4,0,0.00,'fixed',1),(32,24,0,0.00,'fixed',1),(32,30,0,0.00,'fixed',1),(32,41,0,0.00,'fixed',1),(32,42,0,0.00,'fixed',1),(32,49,0,0.00,'fixed',1),(33,4,0,0.00,'fixed',1),(33,15,0,0.00,'fixed',1),(33,28,0,0.00,'fixed',1),(33,40,0,0.00,'fixed',1),(33,42,0,0.00,'fixed',1),(33,46,0,0.00,'fixed',1),(33,51,0,0.00,'fixed',1),(34,11,0,0.00,'fixed',1),(34,16,0,0.00,'fixed',1),(34,17,0,0.00,'fixed',1),(34,21,0,0.00,'fixed',1),(34,25,0,0.00,'fixed',1),(34,49,0,0.00,'fixed',1),(34,52,0,0.00,'fixed',1),(35,4,0,0.00,'fixed',1),(35,17,0,0.00,'fixed',1),(35,21,0,0.00,'fixed',1),(35,25,0,0.00,'fixed',1),(35,33,0,0.00,'fixed',1),(35,50,0,0.00,'fixed',1),(35,62,0,0.00,'fixed',1),(36,15,0,0.00,'fixed',1),(36,21,0,0.00,'fixed',1),(36,24,0,0.00,'fixed',1),(36,27,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,46,0,0.00,'fixed',1),(36,65,0,0.00,'fixed',1),(37,12,0,0.00,'fixed',1),(37,19,0,0.00,'fixed',1),(37,33,0,0.00,'fixed',1),(37,35,0,0.00,'fixed',1),(37,38,0,0.00,'fixed',1),(37,42,0,0.00,'fixed',1),(38,5,0,0.00,'fixed',1),(38,11,0,0.00,'fixed',1),(38,17,0,0.00,'fixed',1),(38,27,0,0.00,'fixed',1),(38,42,0,0.00,'fixed',1),(38,51,0,0.00,'fixed',1),(38,56,0,0.00,'fixed',1),(39,4,0,0.00,'fixed',1),(39,18,0,0.00,'fixed',1),(39,42,0,0.00,'fixed',1),(39,43,0,0.00,'fixed',1),(39,55,0,0.00,'fixed',1),(39,61,0,0.00,'fixed',1),(40,15,0,0.00,'fixed',1),(40,34,0,0.00,'fixed',1),(40,42,0,0.00,'fixed',1),(40,48,0,0.00,'fixed',1),(40,50,0,0.00,'fixed',1),(40,57,0,0.00,'fixed',1),(40,60,0,0.00,'fixed',1),(41,10,0,0.00,'fixed',1),(41,14,0,0.00,'fixed',1),(41,27,0,0.00,'fixed',1),(41,37,0,0.00,'fixed',1),(41,44,0,0.00,'fixed',1),(41,47,0,0.00,'fixed',1),(41,60,0,0.00,'fixed',1),(42,16,0,0.00,'fixed',1),(42,18,0,0.00,'fixed',1),(42,23,0,0.00,'fixed',1),(42,25,0,0.00,'fixed',1),(42,32,0,0.00,'fixed',1),(42,37,0,0.00,'fixed',1),(42,41,0,0.00,'fixed',1),(43,14,0,0.00,'fixed',1),(43,35,0,0.00,'fixed',1),(43,36,0,0.00,'fixed',1),(43,37,0,0.00,'fixed',1),(43,45,0,0.00,'fixed',1),(43,61,0,0.00,'fixed',1),(43,62,0,0.00,'fixed',1),(44,17,0,0.00,'fixed',1),(44,22,0,0.00,'fixed',1),(44,35,0,0.00,'fixed',1),(44,36,0,0.00,'fixed',1),(44,48,0,0.00,'fixed',1),(44,55,0,0.00,'fixed',1),(44,60,0,0.00,'fixed',1),(45,9,0,0.00,'fixed',1),(45,10,0,0.00,'fixed',1),(45,22,0,0.00,'fixed',1),(45,30,0,0.00,'fixed',1),(45,44,0,0.00,'fixed',1),(45,46,0,0.00,'fixed',1),(45,48,0,0.00,'fixed',1),(46,9,0,0.00,'fixed',1),(46,16,0,0.00,'fixed',1),(46,33,0,0.00,'fixed',1),(46,55,0,0.00,'fixed',1),(46,58,0,0.00,'fixed',1),(46,62,0,0.00,'fixed',1),(46,64,0,0.00,'fixed',1),(47,10,0,0.00,'fixed',1),(47,17,0,0.00,'fixed',1),(47,35,0,0.00,'fixed',1),(47,37,0,0.00,'fixed',1),(47,57,0,0.00,'fixed',1),(47,63,0,0.00,'fixed',1),(48,5,0,0.00,'fixed',1),(48,21,0,0.00,'fixed',1),(48,28,0,0.00,'fixed',1),(48,52,0,0.00,'fixed',1),(48,53,0,0.00,'fixed',1),(48,54,0,0.00,'fixed',1),(48,58,0,0.00,'fixed',1),(49,5,0,0.00,'fixed',1),(49,9,0,0.00,'fixed',1),(49,28,0,0.00,'fixed',1),(49,30,0,0.00,'fixed',1),(49,45,0,0.00,'fixed',1),(49,56,0,0.00,'fixed',1),(49,62,0,0.00,'fixed',1),(50,8,0,0.00,'fixed',1),(50,19,0,0.00,'fixed',1),(50,31,0,0.00,'fixed',1),(50,37,0,0.00,'fixed',1),(50,44,0,0.00,'fixed',1),(50,61,0,0.00,'fixed',1),(51,10,0,0.00,'fixed',1),(51,12,0,0.00,'fixed',1),(51,21,0,0.00,'fixed',1),(51,29,0,0.00,'fixed',1),(51,39,0,0.00,'fixed',1),(51,48,0,0.00,'fixed',1),(51,65,0,0.00,'fixed',1),(52,4,0,0.00,'fixed',1),(52,18,0,0.00,'fixed',1),(52,26,0,0.00,'fixed',1),(52,27,0,0.00,'fixed',1),(52,36,0,0.00,'fixed',1),(52,38,0,0.00,'fixed',1),(52,59,0,0.00,'fixed',1),(53,11,0,0.00,'fixed',1),(53,19,0,0.00,'fixed',1),(53,40,0,0.00,'fixed',1),(53,41,0,0.00,'fixed',1),(53,44,0,0.00,'fixed',1),(53,48,0,0.00,'fixed',1),(53,61,0,0.00,'fixed',1),(54,8,0,0.00,'fixed',1),(54,11,0,0.00,'fixed',1),(54,18,0,0.00,'fixed',1),(54,49,0,0.00,'fixed',1),(54,58,0,0.00,'fixed',1),(54,59,0,0.00,'fixed',1),(55,10,0,0.00,'fixed',1),(55,15,0,0.00,'fixed',1),(55,42,0,0.00,'fixed',1),(55,51,0,0.00,'fixed',1),(55,58,0,0.00,'fixed',1),(55,59,0,0.00,'fixed',1),(55,60,0,0.00,'fixed',1),(56,12,0,0.00,'fixed',1),(56,20,0,0.00,'fixed',1),(56,35,0,0.00,'fixed',1),(56,45,0,0.00,'fixed',1),(56,60,0,0.00,'fixed',1),(56,62,0,0.00,'fixed',1),(56,65,0,0.00,'fixed',1),(57,22,0,0.00,'fixed',1),(57,25,0,0.00,'fixed',1),(57,30,0,0.00,'fixed',1),(57,38,0,0.00,'fixed',1),(57,44,0,0.00,'fixed',1),(57,55,0,0.00,'fixed',1),(58,12,0,0.00,'fixed',1),(58,26,0,0.00,'fixed',1),(58,52,0,0.00,'fixed',1),(58,56,0,0.00,'fixed',1),(58,59,0,0.00,'fixed',1),(58,62,0,0.00,'fixed',1),(58,63,0,0.00,'fixed',1),(59,13,0,0.00,'fixed',1),(59,31,0,0.00,'fixed',1),(59,41,0,0.00,'fixed',1),(59,46,0,0.00,'fixed',1),(59,55,0,0.00,'fixed',1),(59,63,0,0.00,'fixed',1),(59,65,0,0.00,'fixed',1),(60,3,0,0.00,'fixed',1),(60,16,0,0.00,'fixed',1),(60,24,0,0.00,'fixed',1),(60,34,0,0.00,'fixed',1),(60,45,0,0.00,'fixed',1),(60,50,0,0.00,'fixed',1),(60,63,0,0.00,'fixed',1),(61,6,0,0.00,'fixed',1),(61,9,0,0.00,'fixed',1),(61,38,0,0.00,'fixed',1),(61,39,0,0.00,'fixed',1),(61,48,0,0.00,'fixed',1),(61,50,0,0.00,'fixed',1),(61,52,0,0.00,'fixed',1),(62,6,0,0.00,'fixed',1),(62,7,0,0.00,'fixed',1),(62,10,0,0.00,'fixed',1),(62,15,0,0.00,'fixed',1),(62,16,0,0.00,'fixed',1),(62,23,0,0.00,'fixed',1),(62,28,0,0.00,'fixed',1),(63,4,0,0.00,'fixed',1),(63,13,0,0.00,'fixed',1),(63,22,0,0.00,'fixed',1),(63,35,0,0.00,'fixed',1),(63,41,0,0.00,'fixed',1),(63,44,0,0.00,'fixed',1),(63,54,0,0.00,'fixed',1),(64,2,0,0.00,'fixed',1),(64,10,0,0.00,'fixed',1),(64,20,0,0.00,'fixed',1),(64,21,0,0.00,'fixed',1),(64,28,0,0.00,'fixed',1),(64,45,0,0.00,'fixed',1),(64,50,0,0.00,'fixed',1),(65,21,0,0.00,'fixed',1),(65,22,0,0.00,'fixed',1),(65,29,0,0.00,'fixed',1),(65,46,0,0.00,'fixed',1),(65,54,0,0.00,'fixed',1),(65,56,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"8\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"12\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"16\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(8,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(10,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"24\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(12,28,'ecommerce/digital-product-files/28.jpg','{\"filename\":\"28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"28\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(13,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(14,32,'ecommerce/digital-product-files/32.jpg','{\"filename\":\"32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"32\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(15,32,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(16,36,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(17,36,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(18,40,'ecommerce/digital-product-files/40.jpg','{\"filename\":\"40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"40\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(19,40,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(20,44,'ecommerce/digital-product-files/44.jpg','{\"filename\":\"44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"44\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(21,44,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(22,48,'ecommerce/digital-product-files/48.jpg','{\"filename\":\"48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"48\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(23,48,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(24,52,'ecommerce/digital-product-files/52.jpg','{\"filename\":\"52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"52\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(25,52,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(26,56,'ecommerce/digital-product-files/56.jpg','{\"filename\":\"56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"56\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(27,56,'ecommerce/digital-product-files/56-1.jpg','{\"filename\":\"56-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"56-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(28,60,'ecommerce/digital-product-files/60.jpg','{\"filename\":\"60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"60\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(29,60,'ecommerce/digital-product-files/60-1.jpg','{\"filename\":\"60-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"60-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(30,64,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(31,64,'ecommerce/digital-product-files/64-1.jpg','{\"filename\":\"64-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(32,71,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(33,74,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(34,75,'ecommerce/digital-product-files/12-2.jpg','{\"filename\":\"12-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"12-2\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(35,76,'ecommerce/digital-product-files/12-3.jpg','{\"filename\":\"12-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"12-3\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(36,80,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"16\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(37,81,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"16\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(38,84,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(39,85,'ecommerce/digital-product-files/20-2.jpg','{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"20-2\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(40,86,'ecommerce/digital-product-files/20-3.jpg','{\"filename\":\"20-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"20-3\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(41,87,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(42,88,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(43,94,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(44,95,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(45,96,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(46,97,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(47,98,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"36\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(48,102,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(49,103,'ecommerce/digital-product-files/44-2.jpg','{\"filename\":\"44-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"44-2\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(50,104,'ecommerce/digital-product-files/44.jpg','{\"filename\":\"44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"44\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(51,105,'ecommerce/digital-product-files/44.jpg','{\"filename\":\"44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"44\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(52,109,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(53,116,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(54,121,'ecommerce/digital-product-files/56-1.jpg','{\"filename\":\"56-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"56-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(55,122,'ecommerce/digital-product-files/56-2.jpg','{\"filename\":\"56-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"56-2\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(56,130,'ecommerce/digital-product-files/64-1.jpg','{\"filename\":\"64-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64-1\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(57,131,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(58,132,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(59,133,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55'),(60,134,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-05-28 10:12:55\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-05-28 03:12:55','2024-05-28 03:12:55');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,15),(1,21),(1,24),(1,27),(1,39),(1,42),(1,51),(1,54),(1,57),(2,6),(2,9),(2,45),(2,60),(3,3),(3,12),(3,18),(3,30),(3,33),(3,36),(3,48),(3,63);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-05-28 03:12:35','2024-05-28 03:12:35'),(2,'New','#02856e','published','2024-05-28 03:12:35','2024-05-28 03:12:35'),(3,'Sale','#fe9931','published','2024-05-28 03:12:35','2024-05-28 03:12:35');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,5),(1,6),(2,1),(2,2),(2,6),(3,1),(3,2),(3,3),(4,2),(4,4),(4,6),(5,3),(5,4),(5,5),(6,1),(6,3),(6,5),(7,3),(7,5),(7,6),(8,4),(8,5),(8,6),(9,1),(9,2),(9,5),(10,3),(10,5),(10,6),(11,1),(11,4),(11,6),(12,2),(12,3),(12,4),(13,1),(13,2),(13,5),(14,1),(14,3),(14,6),(15,2),(15,3),(15,6),(16,1),(16,2),(16,4),(17,1),(17,2),(17,5),(18,1),(18,4),(18,5),(19,2),(19,4),(19,5),(20,1),(20,4),(20,5),(21,3),(21,4),(21,6),(22,4),(22,5),(22,6),(23,2),(23,3),(23,6),(24,2),(24,3),(24,5),(25,1),(25,2),(25,5),(26,4),(26,5),(26,6),(27,2),(27,3),(27,4),(28,2),(28,4),(28,6),(29,2),(29,3),(29,6),(30,1),(30,3),(30,4),(31,1),(31,2),(31,5),(32,1),(32,2),(32,3),(33,1),(33,2),(33,3),(34,1),(34,2),(34,4),(35,3),(35,4),(35,6),(36,4),(36,5),(36,6),(37,3),(37,5),(37,6),(38,1),(38,2),(38,4),(39,1),(39,2),(39,6),(40,1),(40,4),(40,6),(41,1),(41,5),(41,6),(42,1),(42,4),(42,5),(43,1),(43,2),(43,5),(44,1),(44,3),(44,6),(45,1),(45,5),(45,6),(46,2),(46,5),(46,6),(47,1),(47,5),(47,6),(48,1),(48,4),(48,6),(49,1),(49,5),(49,6),(50,2),(50,3),(50,6),(51,1),(51,2),(51,4),(52,2),(52,3),(52,5),(53,2),(53,3),(53,6),(54,1),(54,3),(54,6),(55,1),(55,4),(55,5),(56,1),(56,5),(56,6),(57,2),(57,3),(57,4),(58,3),(58,4),(58,6),(59,1),(59,4),(59,6),(60,1),(60,2),(60,5),(61,1),(61,3),(61,4),(62,1),(62,3),(62,6),(63,2),(63,5),(63,6),(64,4),(64,5),(64,6),(65,3),(65,4),(65,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(2,'Mobile',NULL,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(3,'Iphone',NULL,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(4,'Printer',NULL,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(5,'Office',NULL,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(6,'IT',NULL,'published','2024-05-28 03:12:39','2024-05-28 03:12:39');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(9,1,5),(15,1,8),(29,1,15),(35,1,18),(39,1,20),(11,2,6),(13,2,7),(31,2,16),(43,2,22),(47,2,24),(7,3,4),(21,3,11),(25,3,13),(27,3,14),(33,3,17),(37,3,19),(41,3,21),(51,3,26),(3,4,2),(19,4,10),(23,4,12),(45,4,23),(1,5,1),(17,5,9),(49,5,25),(53,5,27),(2,6,1),(4,6,2),(24,6,12),(32,6,16),(26,7,13),(28,7,14),(30,7,15),(38,7,19),(48,7,24),(50,7,25),(8,8,4),(34,8,17),(40,8,20),(10,9,5),(18,9,9),(20,9,10),(36,9,18),(44,9,22),(6,10,3),(12,10,6),(14,10,7),(16,10,8),(22,10,11),(42,10,21),(46,10,23),(52,10,26),(54,10,27),(83,11,42),(85,11,43),(87,11,44),(91,11,46),(107,11,54),(127,11,64),(129,11,65),(137,11,69),(65,12,33),(69,12,35),(81,12,41),(105,12,53),(111,12,56),(117,12,59),(119,12,60),(133,12,67),(67,13,34),(71,13,36),(79,13,40),(95,13,48),(99,13,50),(103,13,52),(125,13,63),(55,14,28),(57,14,29),(63,14,32),(77,14,39),(89,14,45),(93,14,47),(101,14,51),(109,14,55),(113,14,57),(115,14,58),(59,15,30),(61,15,31),(73,15,37),(75,15,38),(97,15,49),(121,15,61),(123,15,62),(131,15,66),(135,15,68),(86,16,43),(102,16,51),(104,16,52),(112,16,56),(114,16,57),(134,16,67),(58,17,29),(60,17,30),(64,17,32),(100,17,50),(108,17,54),(126,17,63),(128,17,64),(56,18,28),(74,18,37),(84,18,42),(118,18,59),(130,18,65),(138,18,69),(62,19,31),(66,19,33),(70,19,35),(72,19,36),(76,19,38),(90,19,45),(98,19,49),(110,19,55),(116,19,58),(120,19,60),(122,19,61),(124,19,62),(68,20,34),(78,20,39),(80,20,40),(82,20,41),(88,20,44),(92,20,46),(94,20,47),(96,20,48),(106,20,53),(132,20,66),(136,20,68);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,66,1,1),(2,67,5,1),(3,68,5,0),(4,69,6,1),(5,70,6,0),(6,71,8,1),(7,72,9,1),(8,73,9,0),(9,74,12,1),(10,75,12,0),(11,76,12,0),(12,77,13,1),(13,78,13,0),(14,79,13,0),(15,80,16,1),(16,81,16,0),(17,82,18,1),(18,83,18,0),(19,84,20,1),(20,85,20,0),(21,86,20,0),(22,87,24,1),(23,88,24,0),(24,89,27,1),(25,90,27,0),(26,91,29,1),(27,92,29,0),(28,93,34,1),(29,94,36,1),(30,95,36,0),(31,96,36,0),(32,97,36,0),(33,98,36,0),(34,99,39,1),(35,100,39,0),(36,101,43,1),(37,102,44,1),(38,103,44,0),(39,104,44,0),(40,105,44,0),(41,106,46,1),(42,107,46,0),(43,108,46,0),(44,109,48,1),(45,110,49,1),(46,111,50,1),(47,112,50,0),(48,113,51,1),(49,114,51,0),(50,115,51,0),(51,116,52,1),(52,117,54,1),(53,118,54,0),(54,119,54,0),(55,120,55,1),(56,121,56,1),(57,122,56,0),(58,123,57,1),(59,124,59,1),(60,125,59,0),(61,126,59,0),(62,127,59,0),(63,128,62,1),(64,129,62,0),(65,130,64,1),(66,131,64,0),(67,132,64,0),(68,133,64,0),(69,134,64,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-05-28',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,16,0),(2,16,0),(1,18,0),(2,18,0),(1,20,0),(2,20,0),(1,24,0),(2,24,0),(1,27,0),(2,27,0),(1,29,0),(2,29,0),(3,34,0),(4,34,0),(3,36,0),(4,36,0),(3,39,0),(4,39,0),(3,43,0),(4,43,0),(3,44,0),(4,44,0),(3,46,0),(4,46,0),(3,48,0),(4,48,0),(3,49,0),(4,49,0),(3,50,0),(4,50,0),(3,51,0),(4,51,0),(3,52,0),(4,52,0),(3,54,0),(4,54,0),(3,55,0),(4,55,0),(3,56,0),(4,56,0),(3,57,0),(4,57,0),(3,59,0),(4,59,0),(3,62,0),(4,62,0),(3,64,0),(4,64,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','K6-126-A1',0,18,0,1,1,3,0,0,80.25,NULL,NULL,NULL,18.00,14.00,18.00,613.00,NULL,144365,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','JJ-185',0,11,0,1,1,5,0,0,40.5,35,NULL,NULL,12.00,12.00,12.00,568.00,NULL,104532,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','CU-175',0,10,0,1,1,4,0,0,20,10,NULL,NULL,19.00,18.00,14.00,663.00,NULL,105433,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(4,'Red &amp; Black Headphone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','UI-112',0,14,0,1,1,3,0,0,500,192,NULL,NULL,11.00,15.00,13.00,726.00,NULL,76160,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,5,0),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','RP-100-A1',0,15,0,1,1,4,0,0,797,NULL,NULL,NULL,11.00,10.00,19.00,840.00,NULL,23990,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','V4-155-A1',0,19,0,1,1,3,0,0,403,NULL,NULL,NULL,14.00,18.00,14.00,897.00,NULL,15397,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,5,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','WK-150',0,13,0,1,1,4,0,0,525,167,NULL,NULL,10.00,15.00,11.00,542.00,NULL,34193,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,5,0),(8,'Smart Televisions (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','8U-122-A1',0,19,0,1,1,5,0,0,1256,1055.04,NULL,NULL,11.00,18.00,12.00,629.00,NULL,82820,'2024-05-28 03:12:47','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,7,0),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','DJ-181-A1',0,16,0,1,1,1,0,0,579,NULL,NULL,NULL,13.00,14.00,13.00,801.00,NULL,99191,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','J1-132',0,14,0,1,0,2,0,0,1176,943,NULL,NULL,15.00,12.00,17.00,681.00,NULL,45964,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,5,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','IK-105',0,13,0,1,0,5,0,0,1113,534,NULL,NULL,19.00,14.00,13.00,639.00,NULL,114931,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,8,0),(12,'EPSION Plaster Printer (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','IO-125-A1',0,16,0,1,0,1,0,0,567,476.28,NULL,NULL,11.00,20.00,11.00,565.00,NULL,98325,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,3,0),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','5X-164-A1',0,20,0,1,0,1,0,0,595,NULL,NULL,NULL,17.00,15.00,20.00,757.00,NULL,146100,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,5,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','QN-189',0,11,0,1,0,5,0,0,537,134,NULL,NULL,13.00,10.00,19.00,727.00,NULL,19302,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,7,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','FC-195',0,13,0,1,1,2,0,0,525,406,NULL,NULL,17.00,15.00,11.00,683.00,NULL,146946,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,8,0),(16,'Apple MacBook Air Retina 12-Inch Laptop (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','5K-157-A1',0,20,0,1,0,3,0,0,600,456,NULL,NULL,17.00,16.00,18.00,562.00,NULL,154360,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,6,0),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','DF-117',0,19,0,1,0,1,0,0,546,191,NULL,NULL,12.00,17.00,12.00,583.00,NULL,101915,'2024-05-28 03:12:48','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','MU-145-A1',0,13,0,1,0,3,0,0,1274,NULL,NULL,NULL,13.00,17.00,18.00,650.00,NULL,142433,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,7,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','DN-194',0,17,0,1,1,3,0,0,954,713,NULL,NULL,19.00,11.00,20.00,713.00,NULL,122925,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(20,'NYX Beauty Couton Pallete Makeup 12 (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','GY-175-A1',0,17,0,1,1,5,0,0,770,654.5,NULL,NULL,14.00,16.00,17.00,711.00,NULL,52358,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,3,0),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','1Q-113',0,11,0,1,0,1,0,0,784,491,NULL,NULL,12.00,12.00,13.00,500.00,NULL,125776,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','AC-138',0,11,0,1,0,5,0,0,446,247,NULL,NULL,12.00,14.00,11.00,657.00,NULL,62689,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,5,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','F6-102',0,18,0,1,0,2,0,0,1020,347,NULL,NULL,18.00,13.00,13.00,888.00,NULL,53136,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(24,'Vimto Squash Remix Apple 1.5 Litres (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\",\"products\\/24-2.jpg\"]','JU-110-A1',0,17,0,1,1,1,0,0,1182,992.88,NULL,NULL,18.00,10.00,19.00,667.00,NULL,21553,'2024-05-28 03:12:49','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,6,0),(25,'Crock Pot Slow Cooker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\",\"products\\/25-2.jpg\"]','6T-189',0,12,0,1,0,2,0,0,904,207,NULL,NULL,20.00,17.00,14.00,536.00,NULL,167307,'2024-05-28 03:12:50','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(26,'Taylors of Harrogate Yorkshire Coffee','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\"]','GP-155',0,20,0,1,0,2,0,0,1218,1160,NULL,NULL,19.00,13.00,13.00,887.00,NULL,173050,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(27,'Soft Mochi &amp; Galeto Ice Cream','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]','FH-188-A1',0,19,0,1,1,4,0,0,702,NULL,NULL,NULL,18.00,19.00,11.00,858.00,NULL,54589,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(28,'Naked Noodle Egg Noodles Singapore (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\",\"products\\/28-2.jpg\"]','KS-141',0,18,0,1,0,1,0,0,657,17,NULL,NULL,12.00,13.00,13.00,582.00,NULL,137129,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,3,0),(29,'Saute Pan Silver','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\",\"products\\/29-2.jpg\"]','RY-176-A1',0,16,0,1,1,4,0,0,1173,NULL,NULL,NULL,20.00,12.00,15.00,694.00,NULL,107836,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(30,'Bar S – Classic Bun Length Franks','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\",\"products\\/30-2.jpg\"]','8H-173',0,15,0,1,0,1,0,0,864,353,NULL,NULL,12.00,10.00,12.00,739.00,NULL,28751,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,8,0),(31,'Broccoli Crowns','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]','GG-169',0,17,0,1,1,2,0,0,512,360,NULL,NULL,13.00,18.00,10.00,542.00,NULL,73846,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(32,'Slimming World Vegan Mac Greens (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/32.jpg\",\"products\\/32-1.jpg\",\"products\\/32-2.jpg\"]','TY-131',0,11,0,1,0,1,0,0,934,439,NULL,NULL,14.00,17.00,11.00,875.00,NULL,138229,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,6,0),(33,'Häagen-Dazs Salted Caramel','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/33.jpg\",\"products\\/33-1.jpg\",\"products\\/33-2.jpg\"]','TD-163',0,20,0,1,0,4,0,0,555,355,NULL,NULL,14.00,11.00,19.00,764.00,NULL,65592,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,8,0),(34,'Iceland 3 Solo Exotic Burst','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/34.jpg\",\"products\\/34-1.jpg\"]','HG-200-A1',0,18,0,1,0,2,0,0,1052,NULL,NULL,NULL,20.00,13.00,10.00,652.00,NULL,133440,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,7,0),(35,'Extreme Budweiser Light Can','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/35.jpg\",\"products\\/35-1.jpg\"]','KI-119',0,16,0,1,0,5,0,0,1069,679,NULL,NULL,13.00,19.00,13.00,899.00,NULL,71016,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(36,'Iceland Macaroni Cheese Traybake (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/36.jpg\",\"products\\/36-1.jpg\",\"products\\/36-2.jpg\"]','MV-118-A1',0,13,0,1,0,5,0,0,563,461.66,NULL,NULL,10.00,20.00,18.00,680.00,NULL,192710,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,8,0),(37,'Dolmio Bolognese Pasta Sauce','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/37.jpg\",\"products\\/37-1.jpg\",\"products\\/37-2.jpg\"]','YZ-176',0,20,0,1,1,3,0,0,519,16,NULL,NULL,14.00,12.00,15.00,569.00,NULL,173844,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(38,'Sitema BakeIT Plastic Box','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/38.jpg\",\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\"]','GJ-115',0,11,0,1,1,3,0,0,943,717,NULL,NULL,16.00,11.00,17.00,784.00,NULL,17556,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(39,'Wayfair Basics Dinner Plate Storage','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/39.jpg\",\"products\\/39-1.jpg\",\"products\\/39-2.jpg\"]','XI-145-A1',0,10,0,1,0,2,0,0,973,NULL,NULL,NULL,14.00,12.00,18.00,577.00,NULL,70341,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(40,'Miko The Panda Water Bottle (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/40.jpg\",\"products\\/40-1.jpg\"]','GD-187',0,12,0,1,0,3,0,0,541,532,NULL,NULL,20.00,10.00,19.00,816.00,NULL,10331,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,6,0),(41,'Sesame Seed Bread','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/41.jpg\",\"products\\/41-1.jpg\",\"products\\/41-2.jpg\"]','3M-169',0,17,0,1,0,3,0,0,1023,339,NULL,NULL,18.00,20.00,18.00,878.00,NULL,125882,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,7,0),(42,'Morrisons The Best Beef','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/42.jpg\",\"products\\/42-1.jpg\",\"products\\/42-2.jpg\"]','YV-138',0,17,0,1,1,1,0,0,1165,1043,NULL,NULL,17.00,11.00,19.00,720.00,NULL,145718,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(43,'Avocado, Hass Large','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/43.jpg\",\"products\\/43-1.jpg\",\"products\\/43-2.jpg\"]','Z9-135-A1',0,16,0,1,0,1,0,0,971,NULL,NULL,NULL,17.00,17.00,17.00,735.00,NULL,66246,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(44,'Italia Beef Lasagne (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/44.jpg\",\"products\\/44-1.jpg\",\"products\\/44-2.jpg\"]','UE-107-A1',0,20,0,1,0,4,0,0,810,720.9,NULL,NULL,13.00,17.00,15.00,676.00,NULL,148919,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,1,0),(45,'Maxwell House Classic Roast Mocha','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/45.jpg\",\"products\\/45-1.jpg\"]','5B-166',0,18,0,1,1,5,0,0,1239,175,NULL,NULL,17.00,18.00,15.00,842.00,NULL,79699,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,3,0),(46,'Bottled Pure Water 500ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/46.jpg\",\"products\\/46-1.jpg\"]','WG-126-A1',0,11,0,1,0,5,0,0,1032,NULL,NULL,NULL,13.00,19.00,13.00,897.00,NULL,170873,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,8,0),(47,'Famart Farmhouse Soft White','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/47.jpg\",\"products\\/47-1.jpg\"]','DI-190',0,13,0,1,1,3,0,0,1081,1035,NULL,NULL,16.00,14.00,10.00,873.00,NULL,199649,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(48,'Coca-Cola Original Taste (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/48.jpg\",\"products\\/48-1.jpg\",\"products\\/48-2.jpg\"]','EU-199-A1',0,13,0,1,1,1,0,0,592,438.08,NULL,NULL,17.00,19.00,20.00,626.00,NULL,80663,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,2,0),(49,'Casillero Diablo Cabernet Sauvignon','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/49.jpg\",\"products\\/49-1.jpg\",\"products\\/49-2.jpg\"]','SH-118-A1',0,10,0,1,1,3,0,0,552,NULL,NULL,NULL,12.00,16.00,18.00,606.00,NULL,24276,'2024-05-28 03:12:51','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(50,'Arla Organic Free Range Milk','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/50.jpg\",\"products\\/50-1.jpg\"]','J1-172-A1',0,19,0,1,0,4,0,0,924,NULL,NULL,NULL,18.00,12.00,20.00,504.00,NULL,17314,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(51,'Aptamil Follow On Baby Milk','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/51.jpg\"]','MH-110-A1',0,12,0,1,0,4,0,0,531,NULL,NULL,NULL,10.00,13.00,13.00,808.00,NULL,12606,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,5,0),(52,'Cuisinart Chef’S Classic Hard-Anodized (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/52.jpg\",\"products\\/52-1.jpg\",\"products\\/52-2.jpg\"]','BV-182-A1',0,19,0,1,1,4,0,0,817,620.92,NULL,NULL,19.00,13.00,16.00,714.00,NULL,86726,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,6,0),(53,'Corn, Yellow Sweet','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/53.jpg\",\"products\\/53-1.jpg\"]','TU-172',0,16,0,1,0,1,0,0,1186,261,NULL,NULL,18.00,20.00,20.00,751.00,NULL,72805,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(54,'Hobnobs The Nobbly Biscuit','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/54.jpg\",\"products\\/54-1.jpg\"]','AB-127-A1',0,10,0,1,1,2,0,0,741,NULL,NULL,NULL,12.00,17.00,18.00,762.00,NULL,137916,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(55,'Honest Organic Still Lemonade','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/55.jpg\",\"products\\/55-1.jpg\",\"products\\/55-2.jpg\"]','ZY-120-A1',0,20,0,1,1,2,0,0,1130,NULL,NULL,NULL,16.00,10.00,17.00,786.00,NULL,64547,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,4,0),(56,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/56.jpg\",\"products\\/56-1.jpg\",\"products\\/56-2.jpg\"]','CU-140-A1',0,14,0,1,1,4,0,0,1299,1000.23,NULL,NULL,20.00,13.00,16.00,750.00,NULL,96287,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,3,0),(57,'Iceland 6 Hot Cross Buns','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/57.jpg\",\"products\\/57-1.jpg\"]','XD-161-A1',0,10,0,1,1,3,0,0,1151,NULL,NULL,NULL,10.00,15.00,20.00,558.00,NULL,40159,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,6,0),(58,'Iceland Luxury 4 Panini Rolls','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/58.jpg\",\"products\\/58-1.jpg\",\"products\\/58-2.jpg\"]','QG-177',0,15,0,1,0,4,0,0,1241,1053,NULL,NULL,13.00,20.00,12.00,512.00,NULL,27930,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(59,'Iceland Soft Scoop Vanilla','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/59.jpg\",\"products\\/59-1.jpg\",\"products\\/59-2.jpg\",\"products\\/59-3.jpg\"]','MA-156-A1',0,17,0,1,0,4,0,0,609,NULL,NULL,NULL,15.00,17.00,11.00,739.00,NULL,149134,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,8,0),(60,'Iceland Spaghetti Bolognese (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/60.jpg\",\"products\\/60-1.jpg\",\"products\\/60-2.jpg\"]','NO-191',0,16,0,1,0,4,0,0,1104,83,NULL,NULL,18.00,20.00,12.00,543.00,NULL,9592,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,1,0),(61,'Kellogg’s Coco Pops Cereal','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/61.jpg\",\"products\\/61-1.jpg\"]','J9-159',0,15,0,1,1,4,0,0,914,625,NULL,NULL,11.00,17.00,14.00,580.00,NULL,15177,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(62,'Kit Kat Chunky Milk Chocolate','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/62.jpg\",\"products\\/62-1.jpg\"]','LH-174-A1',0,10,0,1,0,4,0,0,562,NULL,NULL,NULL,16.00,17.00,20.00,749.00,NULL,161926,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,2,0),(63,'Large Green Bell Pepper','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/63.jpg\",\"products\\/63-1.jpg\"]','ZC-167',0,10,0,1,0,1,0,0,534,14,NULL,NULL,10.00,18.00,18.00,823.00,NULL,51934,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(64,'Pice 94w Beasley Journal (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/64.jpg\",\"products\\/64-1.jpg\"]','KS-144-A1',0,19,0,1,0,2,0,0,624,468,NULL,NULL,11.00,14.00,12.00,560.00,NULL,37655,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,6,0),(65,'Province Piece Glass Drinking Glass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/65.jpg\",\"products\\/65-1.jpg\",\"products\\/65-2.jpg\"]','I7-185',0,18,0,1,1,2,0,0,719,15,NULL,NULL,11.00,15.00,18.00,832.00,NULL,75523,'2024-05-28 03:12:52','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,1,0),(66,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','K6-126-A1',0,18,0,1,0,3,1,0,80.25,NULL,NULL,NULL,18.00,14.00,18.00,613.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(67,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','RP-100-A1',0,15,0,1,0,4,1,0,797,NULL,NULL,NULL,11.00,10.00,19.00,840.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(68,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','RP-100-A1-A2',0,15,0,1,0,4,1,0,797,NULL,NULL,NULL,11.00,10.00,19.00,840.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(69,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','V4-155-A1',0,19,0,1,0,3,1,0,403,NULL,NULL,NULL,14.00,18.00,14.00,897.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(70,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','V4-155-A1-A2',0,19,0,1,0,3,1,0,403,NULL,NULL,NULL,14.00,18.00,14.00,897.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(71,'Smart Televisions (Digital)',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','8U-122-A1',0,19,0,1,0,5,1,0,1256,1055.04,NULL,NULL,11.00,18.00,12.00,629.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(72,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','DJ-181-A1',0,16,0,1,0,1,1,0,579,NULL,NULL,NULL,13.00,14.00,13.00,801.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(73,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','DJ-181-A1-A2',0,16,0,1,0,1,1,0,579,NULL,NULL,NULL,13.00,14.00,13.00,801.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(74,'EPSION Plaster Printer (Digital)',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','IO-125-A1',0,16,0,1,0,1,1,0,567,476.28,NULL,NULL,11.00,20.00,11.00,565.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(75,'EPSION Plaster Printer (Digital)',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','IO-125-A1-A2',0,16,0,1,0,1,1,0,567,487.62,NULL,NULL,11.00,20.00,11.00,565.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(76,'EPSION Plaster Printer (Digital)',NULL,NULL,'published','[\"products\\/12-3.jpg\"]','IO-125-A1-A3',0,16,0,1,0,1,1,0,567,402.57,NULL,NULL,11.00,20.00,11.00,565.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(77,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','5X-164-A1',0,20,0,1,0,1,1,0,595,NULL,NULL,NULL,17.00,15.00,20.00,757.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(78,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','5X-164-A1-A2',0,20,0,1,0,1,1,0,595,NULL,NULL,NULL,17.00,15.00,20.00,757.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(79,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','5X-164-A1-A3',0,20,0,1,0,1,1,0,595,NULL,NULL,NULL,17.00,15.00,20.00,757.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(80,'Apple MacBook Air Retina 12-Inch Laptop (Digital)',NULL,NULL,'published','[\"products\\/16.jpg\"]','5K-157-A1',0,20,0,1,0,3,1,0,600,456,NULL,NULL,17.00,16.00,18.00,562.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(81,'Apple MacBook Air Retina 12-Inch Laptop (Digital)',NULL,NULL,'published','[\"products\\/16.jpg\"]','5K-157-A1-A2',0,20,0,1,0,3,1,0,600,426,NULL,NULL,17.00,16.00,18.00,562.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(82,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','MU-145-A1',0,13,0,1,0,3,1,0,1274,NULL,NULL,NULL,13.00,17.00,18.00,650.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(83,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','MU-145-A1-A2',0,13,0,1,0,3,1,0,1274,NULL,NULL,NULL,13.00,17.00,18.00,650.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(84,'NYX Beauty Couton Pallete Makeup 12 (Digital)',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','GY-175-A1',0,17,0,1,0,5,1,0,770,654.5,NULL,NULL,14.00,16.00,17.00,711.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(85,'NYX Beauty Couton Pallete Makeup 12 (Digital)',NULL,NULL,'published','[\"products\\/20-2.jpg\"]','GY-175-A1-A2',0,17,0,1,0,5,1,0,770,623.7,NULL,NULL,14.00,16.00,17.00,711.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(86,'NYX Beauty Couton Pallete Makeup 12 (Digital)',NULL,NULL,'published','[\"products\\/20-3.jpg\"]','GY-175-A1-A3',0,17,0,1,0,5,1,0,770,569.8,NULL,NULL,14.00,16.00,17.00,711.00,NULL,0,'2024-05-28 03:12:53','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(87,'Vimto Squash Remix Apple 1.5 Litres (Digital)',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','JU-110-A1',0,17,0,1,0,1,1,0,1182,992.88,NULL,NULL,18.00,10.00,19.00,667.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(88,'Vimto Squash Remix Apple 1.5 Litres (Digital)',NULL,NULL,'published','[\"products\\/24-2.jpg\"]','JU-110-A1-A2',0,17,0,1,0,1,1,0,1182,839.22,NULL,NULL,18.00,10.00,19.00,667.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(89,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27-1.jpg\"]','FH-188-A1',0,19,0,1,0,4,1,0,702,NULL,NULL,NULL,18.00,19.00,11.00,858.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(90,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27.jpg\"]','FH-188-A1-A2',0,19,0,1,0,4,1,0,702,NULL,NULL,NULL,18.00,19.00,11.00,858.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(91,'Saute Pan Silver',NULL,NULL,'published','[\"products\\/29-1.jpg\"]','RY-176-A1',0,16,0,1,0,4,1,0,1173,NULL,NULL,NULL,20.00,12.00,15.00,694.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(92,'Saute Pan Silver',NULL,NULL,'published','[\"products\\/29-2.jpg\"]','RY-176-A1-A2',0,16,0,1,0,4,1,0,1173,NULL,NULL,NULL,20.00,12.00,15.00,694.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(93,'Iceland 3 Solo Exotic Burst',NULL,NULL,'published','[\"products\\/34-1.jpg\"]','HG-200-A1',0,18,0,1,0,2,1,0,1052,NULL,NULL,NULL,20.00,13.00,10.00,652.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(94,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36-1.jpg\"]','MV-118-A1',0,13,0,1,0,5,1,0,563,461.66,NULL,NULL,10.00,20.00,18.00,680.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(95,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36-2.jpg\"]','MV-118-A1-A2',0,13,0,1,0,5,1,0,563,478.55,NULL,NULL,10.00,20.00,18.00,680.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(96,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36.jpg\"]','MV-118-A1-A3',0,13,0,1,0,5,1,0,563,427.88,NULL,NULL,10.00,20.00,18.00,680.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(97,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36.jpg\"]','MV-118-A1-A4',0,13,0,1,0,5,1,0,563,394.1,NULL,NULL,10.00,20.00,18.00,680.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(98,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36.jpg\"]','MV-118-A1-A5',0,13,0,1,0,5,1,0,563,489.81,NULL,NULL,10.00,20.00,18.00,680.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(99,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39-1.jpg\"]','XI-145-A1',0,10,0,1,0,2,1,0,973,NULL,NULL,NULL,14.00,12.00,18.00,577.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(100,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39-2.jpg\"]','XI-145-A1-A2',0,10,0,1,0,2,1,0,973,NULL,NULL,NULL,14.00,12.00,18.00,577.00,NULL,0,'2024-05-28 03:12:54','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(101,'Avocado, Hass Large',NULL,NULL,'published','[\"products\\/43-1.jpg\"]','Z9-135-A1',0,16,0,1,0,1,1,0,971,NULL,NULL,NULL,17.00,17.00,17.00,735.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(102,'Italia Beef Lasagne (Digital)',NULL,NULL,'published','[\"products\\/44-1.jpg\"]','UE-107-A1',0,20,0,1,0,4,1,0,810,720.9,NULL,NULL,13.00,17.00,15.00,676.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(103,'Italia Beef Lasagne (Digital)',NULL,NULL,'published','[\"products\\/44-2.jpg\"]','UE-107-A1-A2',0,20,0,1,0,4,1,0,810,567,NULL,NULL,13.00,17.00,15.00,676.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(104,'Italia Beef Lasagne (Digital)',NULL,NULL,'published','[\"products\\/44.jpg\"]','UE-107-A1-A3',0,20,0,1,0,4,1,0,810,648,NULL,NULL,13.00,17.00,15.00,676.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(105,'Italia Beef Lasagne (Digital)',NULL,NULL,'published','[\"products\\/44.jpg\"]','UE-107-A1-A4',0,20,0,1,0,4,1,0,810,615.6,NULL,NULL,13.00,17.00,15.00,676.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(106,'Bottled Pure Water 500ml',NULL,NULL,'published','[\"products\\/46-1.jpg\"]','WG-126-A1',0,11,0,1,0,5,1,0,1032,NULL,NULL,NULL,13.00,19.00,13.00,897.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(107,'Bottled Pure Water 500ml',NULL,NULL,'published','[\"products\\/46.jpg\"]','WG-126-A1-A2',0,11,0,1,0,5,1,0,1032,NULL,NULL,NULL,13.00,19.00,13.00,897.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(108,'Bottled Pure Water 500ml',NULL,NULL,'published','[\"products\\/46.jpg\"]','WG-126-A1-A3',0,11,0,1,0,5,1,0,1032,NULL,NULL,NULL,13.00,19.00,13.00,897.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(109,'Coca-Cola Original Taste (Digital)',NULL,NULL,'published','[\"products\\/48-1.jpg\"]','EU-199-A1',0,13,0,1,0,1,1,0,592,438.08,NULL,NULL,17.00,19.00,20.00,626.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(110,'Casillero Diablo Cabernet Sauvignon',NULL,NULL,'published','[\"products\\/49-1.jpg\"]','SH-118-A1',0,10,0,1,0,3,1,0,552,NULL,NULL,NULL,12.00,16.00,18.00,606.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(111,'Arla Organic Free Range Milk',NULL,NULL,'published','[\"products\\/50-1.jpg\"]','J1-172-A1',0,19,0,1,0,4,1,0,924,NULL,NULL,NULL,18.00,12.00,20.00,504.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(112,'Arla Organic Free Range Milk',NULL,NULL,'published','[\"products\\/50.jpg\"]','J1-172-A1-A2',0,19,0,1,0,4,1,0,924,NULL,NULL,NULL,18.00,12.00,20.00,504.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(113,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]','MH-110-A1',0,12,0,1,0,4,1,0,531,NULL,NULL,NULL,10.00,13.00,13.00,808.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(114,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]','MH-110-A1-A2',0,12,0,1,0,4,1,0,531,NULL,NULL,NULL,10.00,13.00,13.00,808.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(115,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]','MH-110-A1-A3',0,12,0,1,0,4,1,0,531,NULL,NULL,NULL,10.00,13.00,13.00,808.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(116,'Cuisinart Chef’S Classic Hard-Anodized (Digital)',NULL,NULL,'published','[\"products\\/52-1.jpg\"]','BV-182-A1',0,19,0,1,0,4,1,0,817,620.92,NULL,NULL,19.00,13.00,16.00,714.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(117,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54-1.jpg\"]','AB-127-A1',0,10,0,1,0,2,1,0,741,NULL,NULL,NULL,12.00,17.00,18.00,762.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(118,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54.jpg\"]','AB-127-A1-A2',0,10,0,1,0,2,1,0,741,NULL,NULL,NULL,12.00,17.00,18.00,762.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(119,'Hobnobs The Nobbly Biscuit',NULL,NULL,'published','[\"products\\/54.jpg\"]','AB-127-A1-A3',0,10,0,1,0,2,1,0,741,NULL,NULL,NULL,12.00,17.00,18.00,762.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(120,'Honest Organic Still Lemonade',NULL,NULL,'published','[\"products\\/55-1.jpg\"]','ZY-120-A1',0,20,0,1,0,2,1,0,1130,NULL,NULL,NULL,16.00,10.00,17.00,786.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(121,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56-1.jpg\"]','CU-140-A1',0,14,0,1,0,4,1,0,1299,1000.23,NULL,NULL,20.00,13.00,16.00,750.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(122,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56-2.jpg\"]','CU-140-A1-A2',0,14,0,1,0,4,1,0,1299,1169.1,NULL,NULL,20.00,13.00,16.00,750.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(123,'Iceland 6 Hot Cross Buns',NULL,NULL,'published','[\"products\\/57-1.jpg\"]','XD-161-A1',0,10,0,1,0,3,1,0,1151,NULL,NULL,NULL,10.00,15.00,20.00,558.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(124,'Iceland Soft Scoop Vanilla',NULL,NULL,'published','[\"products\\/59-1.jpg\"]','MA-156-A1',0,17,0,1,0,4,1,0,609,NULL,NULL,NULL,15.00,17.00,11.00,739.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(125,'Iceland Soft Scoop Vanilla',NULL,NULL,'published','[\"products\\/59-2.jpg\"]','MA-156-A1-A2',0,17,0,1,0,4,1,0,609,NULL,NULL,NULL,15.00,17.00,11.00,739.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(126,'Iceland Soft Scoop Vanilla',NULL,NULL,'published','[\"products\\/59-3.jpg\"]','MA-156-A1-A3',0,17,0,1,0,4,1,0,609,NULL,NULL,NULL,15.00,17.00,11.00,739.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(127,'Iceland Soft Scoop Vanilla',NULL,NULL,'published','[\"products\\/59.jpg\"]','MA-156-A1-A4',0,17,0,1,0,4,1,0,609,NULL,NULL,NULL,15.00,17.00,11.00,739.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(128,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62-1.jpg\"]','LH-174-A1',0,10,0,1,0,4,1,0,562,NULL,NULL,NULL,16.00,17.00,20.00,749.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(129,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62.jpg\"]','LH-174-A1-A2',0,10,0,1,0,4,1,0,562,NULL,NULL,NULL,16.00,17.00,20.00,749.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,NULL,0),(130,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64-1.jpg\"]','KS-144-A1',0,19,0,1,0,2,1,0,624,468,NULL,NULL,11.00,14.00,12.00,560.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(131,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64.jpg\"]','KS-144-A1-A2',0,19,0,1,0,2,1,0,624,468,NULL,NULL,11.00,14.00,12.00,560.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(132,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64.jpg\"]','KS-144-A1-A3',0,19,0,1,0,2,1,0,624,449.28,NULL,NULL,11.00,14.00,12.00,560.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(133,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64.jpg\"]','KS-144-A1-A4',0,19,0,1,0,2,1,0,624,461.76,NULL,NULL,11.00,14.00,12.00,560.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0),(134,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64.jpg\"]','KS-144-A1-A5',0,19,0,1,0,2,1,0,624,468,NULL,NULL,11.00,14.00,12.00,560.00,NULL,0,'2024-05-28 03:12:55','2024-05-28 03:12:59','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,6,NULL,NULL,10,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-2.jpg\"]'),(2,9,NULL,NULL,10,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38.jpg\",\"products\\/57-1.jpg\"]'),(3,7,NULL,NULL,38,3.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19.jpg\"]'),(4,5,NULL,NULL,48,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/56-2.jpg\"]'),(5,5,NULL,NULL,10,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\",\"products\\/44.jpg\",\"products\\/49.jpg\",\"products\\/65-1.jpg\"]'),(6,10,NULL,NULL,25,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4.jpg\",\"products\\/27.jpg\",\"products\\/33-1.jpg\"]'),(7,1,NULL,NULL,58,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-2.jpg\",\"products\\/17-1.jpg\",\"products\\/49-1.jpg\",\"products\\/52.jpg\"]'),(8,9,NULL,NULL,28,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/45.jpg\"]'),(9,9,NULL,NULL,29,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12.jpg\",\"products\\/48.jpg\"]'),(10,3,NULL,NULL,60,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-1.jpg\"]'),(11,4,NULL,NULL,31,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15-1.jpg\",\"products\\/20.jpg\",\"products\\/22-2.jpg\"]'),(12,10,NULL,NULL,12,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/57.jpg\"]'),(13,1,NULL,NULL,41,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/37-2.jpg\",\"products\\/47-1.jpg\",\"products\\/58-2.jpg\",\"products\\/59.jpg\"]'),(14,9,NULL,NULL,51,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17.jpg\",\"products\\/64.jpg\"]'),(15,4,NULL,NULL,50,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/25-2.jpg\",\"products\\/46-1.jpg\",\"products\\/49-2.jpg\"]'),(16,10,NULL,NULL,15,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/8.jpg\",\"products\\/16.jpg\"]'),(17,8,NULL,NULL,29,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\",\"products\\/28-2.jpg\",\"products\\/40-1.jpg\",\"products\\/44.jpg\"]'),(18,3,NULL,NULL,51,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/43-1.jpg\"]'),(19,2,NULL,NULL,8,2.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/57-1.jpg\"]'),(20,8,NULL,NULL,26,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-2.jpg\",\"products\\/20-2.jpg\",\"products\\/25-2.jpg\"]'),(21,8,NULL,NULL,62,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-3.jpg\",\"products\\/34.jpg\",\"products\\/57-1.jpg\",\"products\\/64.jpg\"]'),(22,10,NULL,NULL,36,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-1.jpg\",\"products\\/11-2.jpg\",\"products\\/21-2.jpg\",\"products\\/50-1.jpg\"]'),(23,8,NULL,NULL,20,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\"]'),(24,2,NULL,NULL,15,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-1.jpg\",\"products\\/19-3.jpg\",\"products\\/63.jpg\"]'),(25,8,NULL,NULL,18,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\",\"products\\/40-1.jpg\",\"products\\/58.jpg\"]'),(26,2,NULL,NULL,17,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/33-1.jpg\",\"products\\/39.jpg\",\"products\\/43-2.jpg\",\"products\\/65.jpg\"]'),(27,3,NULL,NULL,54,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/36-2.jpg\",\"products\\/42.jpg\",\"products\\/58.jpg\"]'),(28,2,NULL,NULL,4,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-3.jpg\",\"products\\/20-3.jpg\",\"products\\/29.jpg\",\"products\\/43.jpg\"]'),(29,7,NULL,NULL,42,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/55-1.jpg\"]'),(30,7,NULL,NULL,14,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(31,3,NULL,NULL,58,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\",\"products\\/21.jpg\",\"products\\/43-1.jpg\"]'),(32,1,NULL,NULL,1,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/46-1.jpg\"]'),(33,7,NULL,NULL,40,5.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23.jpg\",\"products\\/25.jpg\",\"products\\/41-1.jpg\",\"products\\/44-1.jpg\"]'),(34,8,NULL,NULL,65,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39-1.jpg\",\"products\\/48.jpg\"]'),(35,8,NULL,NULL,9,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-3.jpg\",\"products\\/44.jpg\",\"products\\/61-1.jpg\"]'),(37,6,NULL,NULL,39,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-2.jpg\"]'),(38,1,NULL,NULL,54,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30-1.jpg\",\"products\\/33-1.jpg\"]'),(39,7,NULL,NULL,31,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/7.jpg\",\"products\\/47-1.jpg\"]'),(40,1,NULL,NULL,39,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\"]'),(41,1,NULL,NULL,51,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\"]'),(42,7,NULL,NULL,48,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\"]'),(43,6,NULL,NULL,25,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/23-2.jpg\",\"products\\/46-1.jpg\"]'),(44,4,NULL,NULL,22,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\",\"products\\/19.jpg\",\"products\\/39.jpg\",\"products\\/52.jpg\"]'),(45,1,NULL,NULL,20,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2.jpg\",\"products\\/4.jpg\",\"products\\/18-3.jpg\",\"products\\/54-1.jpg\"]'),(46,9,NULL,NULL,32,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24.jpg\",\"products\\/47-1.jpg\",\"products\\/49.jpg\"]'),(47,2,NULL,NULL,63,1.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/53-1.jpg\"]'),(48,2,NULL,NULL,57,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17.jpg\",\"products\\/35.jpg\",\"products\\/55-1.jpg\",\"products\\/59.jpg\"]'),(49,4,NULL,NULL,46,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\"]'),(50,7,NULL,NULL,5,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/18-1.jpg\",\"products\\/21.jpg\",\"products\\/61-1.jpg\"]'),(51,4,NULL,NULL,35,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18-3.jpg\",\"products\\/52-1.jpg\"]'),(53,6,NULL,NULL,50,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-3.jpg\",\"products\\/30-1.jpg\",\"products\\/65-2.jpg\"]'),(54,10,NULL,NULL,62,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\",\"products\\/28-2.jpg\"]'),(55,6,NULL,NULL,51,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29.jpg\",\"products\\/32-1.jpg\",\"products\\/58-1.jpg\"]'),(56,1,NULL,NULL,7,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/31-1.jpg\"]'),(57,6,NULL,NULL,61,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\"]'),(58,3,NULL,NULL,33,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/37.jpg\",\"products\\/57.jpg\"]'),(59,5,NULL,NULL,20,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/17.jpg\",\"products\\/42-1.jpg\"]'),(60,6,NULL,NULL,29,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-3.jpg\",\"products\\/44-1.jpg\",\"products\\/52-1.jpg\",\"products\\/59-1.jpg\"]'),(61,9,NULL,NULL,39,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/45-1.jpg\",\"products\\/48.jpg\"]'),(62,8,NULL,NULL,46,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-1.jpg\",\"products\\/37.jpg\",\"products\\/48-1.jpg\"]'),(63,7,NULL,NULL,49,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-2.jpg\"]'),(65,1,NULL,NULL,36,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/25-2.jpg\",\"products\\/26.jpg\",\"products\\/48.jpg\",\"products\\/56-1.jpg\"]'),(66,10,NULL,NULL,4,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18-1.jpg\",\"products\\/21-2.jpg\",\"products\\/50-1.jpg\"]'),(67,9,NULL,NULL,31,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/45.jpg\",\"products\\/58.jpg\"]'),(68,6,NULL,NULL,7,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-1.jpg\",\"products\\/33-1.jpg\",\"products\\/58-2.jpg\",\"products\\/63-1.jpg\"]'),(69,6,NULL,NULL,23,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-2.jpg\",\"products\\/19-3.jpg\"]'),(70,3,NULL,NULL,44,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/33-1.jpg\",\"products\\/48-1.jpg\",\"products\\/48-2.jpg\"]'),(71,10,NULL,NULL,10,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-2.jpg\",\"products\\/18-1.jpg\",\"products\\/25.jpg\",\"products\\/40.jpg\"]'),(72,7,NULL,NULL,30,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-3.jpg\",\"products\\/34-1.jpg\",\"products\\/36.jpg\",\"products\\/37-2.jpg\"]'),(73,3,NULL,NULL,12,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\",\"products\\/58-2.jpg\",\"products\\/64.jpg\"]'),(74,6,NULL,NULL,64,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\",\"products\\/5.jpg\",\"products\\/12-1.jpg\",\"products\\/31.jpg\"]'),(75,5,NULL,NULL,13,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/24-2.jpg\",\"products\\/60-1.jpg\",\"products\\/63-1.jpg\"]'),(76,4,NULL,NULL,56,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/1.jpg\",\"products\\/29.jpg\",\"products\\/36-2.jpg\",\"products\\/55-2.jpg\"]'),(77,4,NULL,NULL,24,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17.jpg\",\"products\\/23-2.jpg\"]'),(78,6,NULL,NULL,24,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/42.jpg\",\"products\\/48-1.jpg\"]'),(79,9,NULL,NULL,7,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/19-2.jpg\",\"products\\/37-1.jpg\",\"products\\/64-1.jpg\"]'),(80,4,NULL,NULL,54,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\",\"products\\/23-3.jpg\",\"products\\/60-1.jpg\"]'),(81,3,NULL,NULL,34,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18-2.jpg\",\"products\\/25-1.jpg\",\"products\\/48-1.jpg\",\"products\\/56-2.jpg\"]'),(82,6,NULL,NULL,22,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\"]'),(83,10,NULL,NULL,34,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/7.jpg\",\"products\\/28-1.jpg\",\"products\\/62-1.jpg\",\"products\\/64.jpg\"]'),(84,1,NULL,NULL,19,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-2.jpg\"]'),(85,4,NULL,NULL,27,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\",\"products\\/21.jpg\",\"products\\/38-2.jpg\"]'),(87,2,NULL,NULL,43,4.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38-3.jpg\",\"products\\/47-1.jpg\",\"products\\/56-2.jpg\"]'),(89,10,NULL,NULL,24,5.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18-1.jpg\",\"products\\/39-1.jpg\",\"products\\/39-2.jpg\"]'),(90,3,NULL,NULL,18,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19.jpg\",\"products\\/43-2.jpg\"]'),(92,3,NULL,NULL,65,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/36-2.jpg\"]'),(93,7,NULL,NULL,32,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\"]'),(94,2,NULL,NULL,2,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\"]'),(95,6,NULL,NULL,42,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/46-1.jpg\"]'),(96,6,NULL,NULL,34,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15.jpg\",\"products\\/18-1.jpg\"]'),(97,8,NULL,NULL,7,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29-2.jpg\",\"products\\/61-1.jpg\"]'),(98,6,NULL,NULL,46,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/37.jpg\"]'),(99,10,NULL,NULL,39,2.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-3.jpg\",\"products\\/17-1.jpg\",\"products\\/23-2.jpg\",\"products\\/55-1.jpg\"]'),(100,10,NULL,NULL,52,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10.jpg\",\"products\\/18.jpg\",\"products\\/59.jpg\",\"products\\/65-2.jpg\"]'),(102,2,NULL,NULL,58,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/47-1.jpg\",\"products\\/54-1.jpg\",\"products\\/56-2.jpg\"]'),(103,3,NULL,NULL,3,2.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-1.jpg\",\"products\\/60-1.jpg\"]'),(104,10,NULL,NULL,61,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/24.jpg\",\"products\\/53-1.jpg\"]'),(105,4,NULL,NULL,7,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\",\"products\\/47-1.jpg\"]'),(106,9,NULL,NULL,61,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29-1.jpg\",\"products\\/33-1.jpg\",\"products\\/46.jpg\",\"products\\/58-2.jpg\"]'),(107,8,NULL,NULL,1,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-3.jpg\",\"products\\/31.jpg\",\"products\\/32.jpg\",\"products\\/50.jpg\"]'),(108,7,NULL,NULL,35,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4.jpg\",\"products\\/12-2.jpg\",\"products\\/41-1.jpg\"]'),(109,8,NULL,NULL,61,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\",\"products\\/21-1.jpg\"]'),(110,5,NULL,NULL,14,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-2.jpg\",\"products\\/35.jpg\",\"products\\/44-1.jpg\",\"products\\/58-2.jpg\"]'),(111,6,NULL,NULL,9,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/45.jpg\",\"products\\/53-1.jpg\"]'),(113,3,NULL,NULL,63,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-1.jpg\",\"products\\/24.jpg\",\"products\\/44.jpg\"]'),(114,9,NULL,NULL,53,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/63.jpg\"]'),(115,3,NULL,NULL,11,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/18.jpg\",\"products\\/28.jpg\",\"products\\/36.jpg\"]'),(116,10,NULL,NULL,63,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-2.jpg\",\"products\\/28.jpg\"]'),(117,9,NULL,NULL,48,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9.jpg\",\"products\\/20-2.jpg\",\"products\\/33.jpg\",\"products\\/48-1.jpg\"]'),(119,5,NULL,NULL,34,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2.jpg\",\"products\\/24.jpg\",\"products\\/35-1.jpg\",\"products\\/38-1.jpg\"]'),(120,4,NULL,NULL,30,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/49-1.jpg\"]'),(121,1,NULL,NULL,45,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/56-1.jpg\"]'),(122,10,NULL,NULL,46,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-2.jpg\",\"products\\/18.jpg\",\"products\\/59.jpg\"]'),(123,6,NULL,NULL,57,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-1.jpg\",\"products\\/34.jpg\",\"products\\/38.jpg\"]'),(124,8,NULL,NULL,30,1.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-2.jpg\",\"products\\/36.jpg\"]'),(125,6,NULL,NULL,8,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-3.jpg\",\"products\\/24-1.jpg\",\"products\\/52-2.jpg\"]'),(126,8,NULL,NULL,31,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/16.jpg\",\"products\\/44-1.jpg\"]'),(127,2,NULL,NULL,21,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/37.jpg\",\"products\\/63-1.jpg\"]'),(128,5,NULL,NULL,16,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/58.jpg\"]'),(130,5,NULL,NULL,3,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\",\"products\\/46.jpg\"]'),(133,5,NULL,NULL,26,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31-1.jpg\",\"products\\/44.jpg\",\"products\\/64.jpg\"]'),(134,5,NULL,NULL,50,5.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\"]'),(135,8,NULL,NULL,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\",\"products\\/36.jpg\",\"products\\/38-3.jpg\"]'),(136,6,NULL,NULL,15,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\",\"products\\/36-2.jpg\",\"products\\/37.jpg\",\"products\\/47.jpg\"]'),(137,4,NULL,NULL,58,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32.jpg\",\"products\\/49.jpg\",\"products\\/51.jpg\"]'),(138,10,NULL,NULL,31,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/10-2.jpg\"]'),(139,2,NULL,NULL,37,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-3.jpg\",\"products\\/36.jpg\"]'),(140,7,NULL,NULL,7,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/31.jpg\"]'),(141,1,NULL,NULL,12,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21.jpg\",\"products\\/39.jpg\"]'),(142,10,NULL,NULL,18,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-2.jpg\",\"products\\/49.jpg\",\"products\\/55-1.jpg\",\"products\\/63.jpg\"]'),(143,10,NULL,NULL,47,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22.jpg\",\"products\\/62.jpg\"]'),(144,2,NULL,NULL,39,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24.jpg\",\"products\\/27.jpg\",\"products\\/28.jpg\"]'),(145,2,NULL,NULL,61,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\",\"products\\/24-1.jpg\"]'),(146,4,NULL,NULL,64,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\"]'),(147,7,NULL,NULL,53,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/52-1.jpg\"]'),(148,10,NULL,NULL,35,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9.jpg\",\"products\\/47-1.jpg\",\"products\\/57.jpg\"]'),(149,4,NULL,NULL,15,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-3.jpg\",\"products\\/22-3.jpg\",\"products\\/40.jpg\"]'),(151,3,NULL,NULL,45,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38.jpg\"]'),(152,5,NULL,NULL,44,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/63.jpg\"]'),(153,9,NULL,NULL,15,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/40-1.jpg\",\"products\\/52-1.jpg\"]'),(155,3,NULL,NULL,55,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/61-1.jpg\"]'),(156,9,NULL,NULL,58,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/16.jpg\"]'),(157,10,NULL,NULL,42,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/48-1.jpg\",\"products\\/56-1.jpg\",\"products\\/56-2.jpg\"]'),(158,6,NULL,NULL,52,5.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\",\"products\\/44-1.jpg\"]'),(159,6,NULL,NULL,60,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39.jpg\",\"products\\/46-1.jpg\",\"products\\/48-1.jpg\",\"products\\/60.jpg\"]'),(162,7,NULL,NULL,36,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\",\"products\\/63-1.jpg\",\"products\\/65-2.jpg\"]'),(163,5,NULL,NULL,28,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/15-1.jpg\",\"products\\/58-1.jpg\"]'),(164,9,NULL,NULL,16,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/50-1.jpg\"]'),(165,4,NULL,NULL,60,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/35.jpg\",\"products\\/47-1.jpg\"]'),(166,2,NULL,NULL,19,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-2.jpg\",\"products\\/18-1.jpg\",\"products\\/23-1.jpg\"]'),(168,5,NULL,NULL,60,3.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39-2.jpg\",\"products\\/53-1.jpg\"]'),(169,6,NULL,NULL,31,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-1.jpg\",\"products\\/29-2.jpg\",\"products\\/54-1.jpg\"]'),(170,4,NULL,NULL,29,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/59-2.jpg\"]'),(171,2,NULL,NULL,28,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31-1.jpg\"]'),(172,9,NULL,NULL,52,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2.jpg\",\"products\\/19-3.jpg\",\"products\\/50-1.jpg\"]'),(173,5,NULL,NULL,30,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30.jpg\",\"products\\/55-1.jpg\"]'),(176,8,NULL,NULL,48,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/40.jpg\"]'),(178,5,NULL,NULL,64,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39-2.jpg\"]'),(179,6,NULL,NULL,45,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\",\"products\\/25-1.jpg\",\"products\\/36-1.jpg\",\"products\\/48.jpg\"]'),(180,1,NULL,NULL,43,3.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24.jpg\",\"products\\/33-2.jpg\"]'),(182,6,NULL,NULL,21,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-1.jpg\",\"products\\/30.jpg\",\"products\\/37-1.jpg\",\"products\\/64-1.jpg\"]'),(183,8,NULL,NULL,12,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21.jpg\",\"products\\/29.jpg\",\"products\\/39-2.jpg\"]'),(184,1,NULL,NULL,62,3.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39-1.jpg\",\"products\\/39.jpg\"]'),(185,9,NULL,NULL,13,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/56.jpg\"]'),(188,9,NULL,NULL,9,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-2.jpg\",\"products\\/21-2.jpg\",\"products\\/48-2.jpg\"]'),(190,5,NULL,NULL,61,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/27-1.jpg\",\"products\\/35.jpg\",\"products\\/53.jpg\"]'),(193,2,NULL,NULL,26,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/47.jpg\",\"products\\/54-1.jpg\",\"products\\/58-1.jpg\",\"products\\/59.jpg\"]'),(194,9,NULL,NULL,8,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/26.jpg\",\"products\\/45-1.jpg\"]'),(195,8,NULL,NULL,25,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/17-2.jpg\",\"products\\/20-1.jpg\",\"products\\/44-2.jpg\"]'),(196,1,NULL,NULL,24,2.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4.jpg\",\"products\\/11-3.jpg\",\"products\\/24.jpg\",\"products\\/48-1.jpg\"]'),(199,5,NULL,NULL,18,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-2.jpg\"]'),(200,3,NULL,NULL,62,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/25-1.jpg\",\"products\\/56-2.jpg\"]'),(201,9,NULL,NULL,63,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/12-2.jpg\",\"products\\/17-1.jpg\",\"products\\/50.jpg\"]'),(202,5,NULL,NULL,12,2.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10.jpg\"]'),(203,6,NULL,NULL,2,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/12-3.jpg\",\"products\\/60.jpg\"]'),(204,2,NULL,NULL,41,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\"]'),(206,9,NULL,NULL,49,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-2.jpg\",\"products\\/39-2.jpg\"]'),(209,10,NULL,NULL,60,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/43-1.jpg\",\"products\\/48-2.jpg\",\"products\\/55-1.jpg\"]'),(211,7,NULL,NULL,19,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-2.jpg\",\"products\\/8-3.jpg\",\"products\\/25-2.jpg\"]'),(212,7,NULL,NULL,34,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/50.jpg\"]'),(215,10,NULL,NULL,26,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-2.jpg\",\"products\\/3.jpg\",\"products\\/19-2.jpg\",\"products\\/62.jpg\"]'),(216,5,NULL,NULL,1,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-1.jpg\",\"products\\/41-1.jpg\",\"products\\/53.jpg\"]'),(217,10,NULL,NULL,23,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\",\"products\\/31.jpg\",\"products\\/33.jpg\",\"products\\/43-2.jpg\"]'),(218,6,NULL,NULL,30,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/18.jpg\",\"products\\/53-1.jpg\"]'),(219,4,NULL,NULL,13,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-1.jpg\",\"products\\/26.jpg\",\"products\\/36-1.jpg\",\"products\\/63.jpg\"]'),(221,4,NULL,NULL,3,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9.jpg\",\"products\\/30-1.jpg\",\"products\\/42-2.jpg\",\"products\\/47.jpg\"]'),(222,6,NULL,NULL,5,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/41-1.jpg\"]'),(223,1,NULL,NULL,22,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/51.jpg\"]'),(225,4,NULL,NULL,59,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31-1.jpg\",\"products\\/37.jpg\",\"products\\/52.jpg\"]'),(230,4,NULL,NULL,53,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-1.jpg\",\"products\\/23.jpg\"]'),(231,10,NULL,NULL,30,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/4-1.jpg\",\"products\\/9-1.jpg\",\"products\\/37-1.jpg\"]'),(233,2,NULL,NULL,16,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/65-1.jpg\"]'),(235,8,NULL,NULL,16,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11.jpg\",\"products\\/52-1.jpg\",\"products\\/54-1.jpg\"]'),(237,10,NULL,NULL,38,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/60.jpg\"]'),(238,4,NULL,NULL,25,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/41.jpg\",\"products\\/52-1.jpg\"]'),(239,2,NULL,NULL,1,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15-1.jpg\",\"products\\/35.jpg\",\"products\\/50-1.jpg\",\"products\\/59-3.jpg\"]'),(240,1,NULL,NULL,46,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-2.jpg\",\"products\\/6.jpg\",\"products\\/52-1.jpg\"]'),(242,4,NULL,NULL,43,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\",\"products\\/38-3.jpg\",\"products\\/39-2.jpg\"]'),(244,9,NULL,NULL,43,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/8-2.jpg\",\"products\\/10-1.jpg\",\"products\\/42-2.jpg\"]'),(245,7,NULL,NULL,9,1.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2.jpg\",\"products\\/11-3.jpg\",\"products\\/30-1.jpg\"]'),(246,3,NULL,NULL,48,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18-1.jpg\",\"products\\/23-2.jpg\",\"products\\/29.jpg\"]'),(248,6,NULL,NULL,17,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\",\"products\\/38-1.jpg\",\"products\\/47-1.jpg\",\"products\\/55.jpg\"]'),(250,8,NULL,NULL,41,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5.jpg\",\"products\\/59-3.jpg\"]'),(253,4,NULL,NULL,23,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-2.jpg\",\"products\\/30-2.jpg\",\"products\\/39-1.jpg\"]'),(254,9,NULL,NULL,56,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/53.jpg\"]'),(255,1,NULL,NULL,31,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-2.jpg\"]'),(257,6,NULL,NULL,63,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/29-1.jpg\",\"products\\/55-1.jpg\"]'),(258,6,NULL,NULL,48,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-2.jpg\",\"products\\/23-2.jpg\",\"products\\/37.jpg\",\"products\\/38-1.jpg\"]'),(259,6,NULL,NULL,43,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31.jpg\"]'),(260,2,NULL,NULL,46,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24.jpg\",\"products\\/51.jpg\",\"products\\/63.jpg\"]'),(261,1,NULL,NULL,57,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/57.jpg\"]'),(262,2,NULL,NULL,51,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\",\"products\\/30-2.jpg\",\"products\\/43-2.jpg\"]'),(267,9,NULL,NULL,33,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\",\"products\\/37-1.jpg\",\"products\\/39-2.jpg\",\"products\\/54.jpg\"]'),(268,8,NULL,NULL,21,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9.jpg\",\"products\\/29-2.jpg\"]'),(269,7,NULL,NULL,54,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23.jpg\",\"products\\/25-1.jpg\",\"products\\/36-2.jpg\",\"products\\/46-1.jpg\"]'),(270,2,NULL,NULL,25,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/42.jpg\"]'),(272,5,NULL,NULL,40,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10.jpg\"]'),(275,10,NULL,NULL,58,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/44-2.jpg\",\"products\\/58-2.jpg\"]'),(276,1,NULL,NULL,30,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/29-1.jpg\"]'),(277,2,NULL,NULL,7,3.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12.jpg\",\"products\\/20-3.jpg\",\"products\\/27-1.jpg\",\"products\\/55-2.jpg\"]'),(278,5,NULL,NULL,29,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/53.jpg\"]'),(280,8,NULL,NULL,40,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/49-1.jpg\",\"products\\/57.jpg\",\"products\\/59-2.jpg\",\"products\\/60-1.jpg\"]'),(282,8,NULL,NULL,36,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/15.jpg\",\"products\\/55.jpg\"]'),(283,1,NULL,NULL,14,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23.jpg\"]'),(285,9,NULL,NULL,2,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/17-2.jpg\"]'),(286,9,NULL,NULL,20,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-2.jpg\",\"products\\/48.jpg\",\"products\\/50-1.jpg\",\"products\\/64-1.jpg\"]'),(289,6,NULL,NULL,47,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-2.jpg\",\"products\\/59.jpg\"]'),(290,9,NULL,NULL,42,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/41-1.jpg\",\"products\\/46.jpg\"]'),(291,10,NULL,NULL,14,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/27-1.jpg\",\"products\\/40-1.jpg\"]'),(292,1,NULL,NULL,25,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/5-3.jpg\",\"products\\/62.jpg\"]'),(293,9,NULL,NULL,26,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-2.jpg\",\"products\\/26-1.jpg\",\"products\\/48-1.jpg\",\"products\\/53.jpg\"]'),(295,7,NULL,NULL,62,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/36-1.jpg\",\"products\\/36-2.jpg\",\"products\\/38-2.jpg\",\"products\\/44.jpg\"]'),(298,4,NULL,NULL,42,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-1.jpg\",\"products\\/17-1.jpg\",\"products\\/37.jpg\",\"products\\/58.jpg\"]'),(299,4,NULL,NULL,63,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-2.jpg\",\"products\\/44-1.jpg\",\"products\\/47-1.jpg\"]'),(303,2,NULL,NULL,6,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-2.jpg\",\"products\\/49-1.jpg\"]'),(304,3,NULL,NULL,17,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-2.jpg\",\"products\\/28-2.jpg\",\"products\\/35-1.jpg\"]'),(307,6,NULL,NULL,44,4.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/17-1.jpg\",\"products\\/38-3.jpg\",\"products\\/38.jpg\"]'),(308,5,NULL,NULL,36,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/55-1.jpg\"]'),(309,1,NULL,NULL,33,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/7.jpg\",\"products\\/25.jpg\",\"products\\/40-1.jpg\"]'),(311,9,NULL,NULL,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-1.jpg\",\"products\\/12.jpg\",\"products\\/22.jpg\"]'),(312,8,NULL,NULL,60,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-1.jpg\",\"products\\/48-1.jpg\"]'),(313,4,NULL,NULL,14,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-1.jpg\",\"products\\/22-3.jpg\",\"products\\/60.jpg\"]'),(314,2,NULL,NULL,3,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/51.jpg\"]'),(317,1,NULL,NULL,34,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/57.jpg\"]'),(319,2,NULL,NULL,53,4.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29.jpg\"]'),(320,8,NULL,NULL,47,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39.jpg\"]'),(322,10,NULL,NULL,19,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21.jpg\",\"products\\/26-1.jpg\",\"products\\/33.jpg\"]'),(323,4,NULL,NULL,36,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39-1.jpg\"]'),(325,1,NULL,NULL,60,4.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/37-1.jpg\"]'),(328,8,NULL,NULL,35,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-1.jpg\",\"products\\/4.jpg\",\"products\\/49.jpg\",\"products\\/56-1.jpg\"]'),(329,9,NULL,NULL,36,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/64.jpg\"]'),(330,8,NULL,NULL,52,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/65-1.jpg\"]'),(332,7,NULL,NULL,20,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26.jpg\",\"products\\/54-1.jpg\"]'),(335,8,NULL,NULL,4,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\"]'),(337,1,NULL,NULL,64,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\",\"products\\/31.jpg\",\"products\\/60-1.jpg\"]'),(338,3,NULL,NULL,14,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\",\"products\\/55-1.jpg\"]'),(339,1,NULL,NULL,29,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\",\"products\\/21-1.jpg\"]'),(341,4,NULL,NULL,48,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/59-3.jpg\",\"products\\/64.jpg\"]'),(342,2,NULL,NULL,33,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-1.jpg\",\"products\\/32.jpg\",\"products\\/64-1.jpg\"]'),(343,3,NULL,NULL,24,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\"]'),(344,3,NULL,NULL,25,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/45-1.jpg\",\"products\\/54.jpg\",\"products\\/61.jpg\"]'),(346,1,NULL,NULL,42,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/61.jpg\"]'),(347,4,NULL,NULL,21,3.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-2.jpg\",\"products\\/21.jpg\",\"products\\/51.jpg\"]'),(349,2,NULL,NULL,52,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/22-2.jpg\",\"products\\/33-2.jpg\",\"products\\/36-2.jpg\"]'),(350,1,NULL,NULL,21,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\"]'),(353,8,NULL,NULL,32,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-1.jpg\",\"products\\/24.jpg\",\"products\\/48-2.jpg\"]'),(355,3,NULL,NULL,13,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/23-2.jpg\",\"products\\/38-1.jpg\"]'),(356,5,NULL,NULL,32,3.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17.jpg\",\"products\\/32-1.jpg\",\"products\\/49-2.jpg\",\"products\\/60-2.jpg\"]'),(363,5,NULL,NULL,65,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/49-2.jpg\"]'),(364,1,NULL,NULL,38,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/47.jpg\"]'),(365,7,NULL,NULL,16,1.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-3.jpg\",\"products\\/16.jpg\",\"products\\/21.jpg\",\"products\\/65-2.jpg\"]'),(369,8,NULL,NULL,38,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31-1.jpg\"]'),(370,6,NULL,NULL,59,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-1.jpg\",\"products\\/36-2.jpg\",\"products\\/56-2.jpg\",\"products\\/58.jpg\"]'),(373,3,NULL,NULL,61,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/33-2.jpg\"]'),(374,7,NULL,NULL,4,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30.jpg\",\"products\\/31-1.jpg\",\"products\\/32.jpg\",\"products\\/57.jpg\"]'),(375,3,NULL,NULL,37,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-3.jpg\",\"products\\/12-2.jpg\"]'),(376,3,NULL,NULL,6,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38-3.jpg\"]'),(378,8,NULL,NULL,58,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/43.jpg\"]'),(380,4,NULL,NULL,51,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-2.jpg\",\"products\\/30-2.jpg\",\"products\\/65-1.jpg\"]'),(381,7,NULL,NULL,57,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13-1.jpg\",\"products\\/17.jpg\",\"products\\/22-1.jpg\",\"products\\/56.jpg\"]'),(383,7,NULL,NULL,15,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32.jpg\",\"products\\/48.jpg\",\"products\\/56.jpg\"]'),(384,9,NULL,NULL,38,5.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/50-1.jpg\",\"products\\/65-2.jpg\"]'),(386,5,NULL,NULL,62,5.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/65.jpg\"]'),(387,1,NULL,NULL,47,4.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/22-3.jpg\",\"products\\/38-3.jpg\",\"products\\/50.jpg\"]'),(388,7,NULL,NULL,6,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/49.jpg\",\"products\\/55-1.jpg\",\"products\\/57-1.jpg\",\"products\\/59-3.jpg\"]'),(391,1,NULL,NULL,16,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/7.jpg\"]'),(392,10,NULL,NULL,48,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-3.jpg\"]'),(393,7,NULL,NULL,22,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29.jpg\",\"products\\/47.jpg\"]'),(394,6,NULL,NULL,4,2.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32-2.jpg\",\"products\\/56-1.jpg\"]'),(396,3,NULL,NULL,22,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-2.jpg\",\"products\\/33-2.jpg\",\"products\\/58-2.jpg\"]'),(397,7,NULL,NULL,55,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/52.jpg\",\"products\\/56-1.jpg\"]'),(398,5,NULL,NULL,47,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\",\"products\\/30-1.jpg\",\"products\\/59-2.jpg\",\"products\\/63.jpg\"]'),(403,7,NULL,NULL,3,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20.jpg\",\"products\\/29.jpg\"]'),(405,4,NULL,NULL,37,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/55-2.jpg\",\"products\\/58-2.jpg\",\"products\\/61.jpg\",\"products\\/62.jpg\"]'),(406,10,NULL,NULL,17,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/27-1.jpg\"]'),(407,9,NULL,NULL,6,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-1.jpg\",\"products\\/10-2.jpg\",\"products\\/33-1.jpg\"]'),(408,6,NULL,NULL,1,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\",\"products\\/31-1.jpg\"]'),(410,3,NULL,NULL,7,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/25.jpg\",\"products\\/31.jpg\",\"products\\/38-1.jpg\",\"products\\/62.jpg\"]'),(411,6,NULL,NULL,26,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/50-1.jpg\",\"products\\/53-1.jpg\"]'),(412,1,NULL,NULL,49,3.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/22-2.jpg\",\"products\\/32-2.jpg\",\"products\\/65-2.jpg\"]'),(413,1,NULL,NULL,18,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-1.jpg\"]'),(415,10,NULL,NULL,32,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32-1.jpg\"]'),(416,9,NULL,NULL,44,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/49.jpg\"]'),(423,10,NULL,NULL,44,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-3.jpg\",\"products\\/17-1.jpg\",\"products\\/22-3.jpg\"]'),(424,2,NULL,NULL,10,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\"]'),(425,7,NULL,NULL,23,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/28-1.jpg\",\"products\\/48-2.jpg\"]'),(427,5,NULL,NULL,53,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/12-1.jpg\",\"products\\/24.jpg\"]'),(428,8,NULL,NULL,39,5.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/38-3.jpg\"]'),(430,8,NULL,NULL,37,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-3.jpg\",\"products\\/54.jpg\"]'),(431,6,NULL,NULL,14,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/33.jpg\",\"products\\/48-1.jpg\",\"products\\/48.jpg\"]'),(432,5,NULL,NULL,55,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\"]'),(433,4,NULL,NULL,6,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/60.jpg\"]'),(439,5,NULL,NULL,21,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31.jpg\",\"products\\/37.jpg\",\"products\\/53.jpg\"]'),(440,5,NULL,NULL,24,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/1.jpg\",\"products\\/8.jpg\",\"products\\/57-1.jpg\",\"products\\/59-3.jpg\"]'),(442,10,NULL,NULL,65,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/19.jpg\",\"products\\/29-1.jpg\"]'),(443,5,NULL,NULL,9,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/14.jpg\",\"products\\/22.jpg\"]'),(444,10,NULL,NULL,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/13-1.jpg\",\"products\\/37-1.jpg\"]'),(447,5,NULL,NULL,52,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29-2.jpg\",\"products\\/50-1.jpg\",\"products\\/56.jpg\",\"products\\/60.jpg\"]'),(448,5,NULL,NULL,5,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2.jpg\",\"products\\/4-1.jpg\",\"products\\/59-3.jpg\"]'),(449,4,NULL,NULL,65,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\",\"products\\/47-1.jpg\",\"products\\/64.jpg\"]'),(451,2,NULL,NULL,20,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26.jpg\",\"products\\/30-2.jpg\",\"products\\/38-3.jpg\",\"products\\/62-1.jpg\"]'),(453,2,NULL,NULL,56,2.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/14.jpg\",\"products\\/21-2.jpg\"]'),(454,5,NULL,NULL,39,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12.jpg\",\"products\\/28-1.jpg\",\"products\\/62.jpg\"]'),(457,1,NULL,NULL,27,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32-2.jpg\"]'),(458,3,NULL,NULL,28,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-1.jpg\",\"products\\/37.jpg\",\"products\\/47.jpg\"]'),(460,3,NULL,NULL,21,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-1.jpg\",\"products\\/44.jpg\",\"products\\/52-1.jpg\",\"products\\/59-1.jpg\"]'),(462,1,NULL,NULL,35,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\",\"products\\/25.jpg\",\"products\\/38-2.jpg\",\"products\\/59-2.jpg\"]'),(463,1,NULL,NULL,5,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24.jpg\",\"products\\/43-2.jpg\",\"products\\/48-1.jpg\",\"products\\/58-2.jpg\"]'),(465,3,NULL,NULL,20,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/17-3.jpg\",\"products\\/53-1.jpg\"]'),(469,2,NULL,NULL,44,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\"]'),(470,8,NULL,NULL,19,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-1.jpg\",\"products\\/37-2.jpg\",\"products\\/44-1.jpg\"]'),(471,3,NULL,NULL,53,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19.jpg\",\"products\\/20.jpg\",\"products\\/25.jpg\",\"products\\/62-1.jpg\"]'),(473,6,NULL,NULL,16,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/40-1.jpg\",\"products\\/41.jpg\"]'),(476,9,NULL,NULL,60,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/59-3.jpg\"]'),(480,10,NULL,NULL,37,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30.jpg\",\"products\\/34-1.jpg\",\"products\\/38-2.jpg\",\"products\\/59-1.jpg\"]'),(482,1,NULL,NULL,53,1.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/15-1.jpg\",\"products\\/45.jpg\"]'),(483,3,NULL,NULL,32,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\"]'),(485,2,NULL,NULL,32,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/17-1.jpg\",\"products\\/43.jpg\"]'),(486,7,NULL,NULL,52,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/42-2.jpg\"]'),(487,1,NULL,NULL,26,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8.jpg\",\"products\\/55-1.jpg\"]'),(492,9,NULL,NULL,41,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32.jpg\"]'),(493,1,NULL,NULL,63,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-2.jpg\",\"products\\/23.jpg\",\"products\\/48.jpg\"]'),(500,6,NULL,NULL,36,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2.jpg\",\"products\\/20-1.jpg\",\"products\\/43.jpg\"]'),(502,4,NULL,NULL,17,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/38-1.jpg\"]'),(505,5,NULL,NULL,58,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/38.jpg\",\"products\\/61-1.jpg\",\"products\\/65-1.jpg\"]'),(507,2,NULL,NULL,64,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-3.jpg\",\"products\\/17-1.jpg\",\"products\\/42.jpg\"]'),(508,1,NULL,NULL,44,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28.jpg\"]'),(514,9,NULL,NULL,45,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/58-2.jpg\"]'),(517,8,NULL,NULL,2,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/24.jpg\",\"products\\/26-1.jpg\"]'),(518,6,NULL,NULL,13,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/1.jpg\",\"products\\/47-1.jpg\",\"products\\/59-2.jpg\",\"products\\/63-1.jpg\"]'),(519,4,NULL,NULL,34,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-1.jpg\",\"products\\/26.jpg\",\"products\\/56-2.jpg\"]'),(520,8,NULL,NULL,49,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-2.jpg\",\"products\\/34.jpg\",\"products\\/38-2.jpg\",\"products\\/65.jpg\"]'),(522,5,NULL,NULL,25,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-1.jpg\",\"products\\/18-3.jpg\",\"products\\/19.jpg\",\"products\\/43-1.jpg\"]'),(523,4,NULL,NULL,11,1.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32-1.jpg\",\"products\\/60-2.jpg\"]'),(527,2,NULL,NULL,5,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/24-2.jpg\"]'),(528,4,NULL,NULL,45,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29.jpg\"]'),(530,9,NULL,NULL,22,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/44.jpg\",\"products\\/62-1.jpg\"]'),(536,9,NULL,NULL,1,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10.jpg\",\"products\\/21-2.jpg\",\"products\\/24-1.jpg\"]'),(541,9,NULL,NULL,55,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28.jpg\",\"products\\/39-2.jpg\"]'),(543,1,NULL,NULL,17,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/53-1.jpg\"]'),(544,6,NULL,NULL,6,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-2.jpg\",\"products\\/43-2.jpg\"]'),(545,3,NULL,NULL,1,2.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-2.jpg\",\"products\\/49-1.jpg\"]'),(548,5,NULL,NULL,4,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18.jpg\",\"products\\/23-2.jpg\"]'),(554,3,NULL,NULL,36,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/16.jpg\",\"products\\/46-1.jpg\",\"products\\/47-1.jpg\"]'),(556,2,NULL,NULL,13,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-3.jpg\",\"products\\/29.jpg\",\"products\\/39.jpg\"]'),(558,4,NULL,NULL,8,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-2.jpg\",\"products\\/27.jpg\"]'),(561,7,NULL,NULL,28,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\",\"products\\/28-2.jpg\"]'),(565,6,NULL,NULL,35,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-2.jpg\",\"products\\/33-2.jpg\",\"products\\/35-1.jpg\"]'),(568,3,NULL,NULL,8,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/48.jpg\"]'),(569,3,NULL,NULL,5,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39-2.jpg\",\"products\\/46-1.jpg\"]'),(571,5,NULL,NULL,6,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/56-1.jpg\",\"products\\/63-1.jpg\"]'),(575,9,NULL,NULL,25,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/14.jpg\",\"products\\/16.jpg\",\"products\\/32.jpg\",\"products\\/42-2.jpg\"]'),(576,5,NULL,NULL,56,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15.jpg\",\"products\\/19.jpg\",\"products\\/21-1.jpg\",\"products\\/25-1.jpg\"]'),(577,9,NULL,NULL,17,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\",\"products\\/41-2.jpg\",\"products\\/56-1.jpg\"]'),(581,2,NULL,NULL,18,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/58-2.jpg\"]'),(582,7,NULL,NULL,13,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-1.jpg\",\"products\\/21-1.jpg\",\"products\\/27-1.jpg\"]'),(583,8,NULL,NULL,50,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-3.jpg\",\"products\\/61-1.jpg\"]'),(586,2,NULL,NULL,27,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\",\"products\\/20-2.jpg\"]'),(587,6,NULL,NULL,11,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/42-2.jpg\"]'),(593,4,NULL,NULL,19,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31-1.jpg\",\"products\\/44-2.jpg\",\"products\\/44.jpg\"]'),(594,9,NULL,NULL,47,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15.jpg\",\"products\\/21-1.jpg\",\"products\\/47-1.jpg\"]'),(597,8,NULL,NULL,28,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\",\"products\\/38-3.jpg\",\"products\\/49.jpg\"]'),(598,10,NULL,NULL,49,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5.jpg\"]'),(600,9,NULL,NULL,40,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/60-1.jpg\"]'),(604,3,NULL,NULL,2,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/33-1.jpg\"]'),(606,9,NULL,NULL,11,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\",\"products\\/18-3.jpg\",\"products\\/26.jpg\"]'),(607,4,NULL,NULL,4,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-2.jpg\",\"products\\/12.jpg\",\"products\\/47-1.jpg\"]'),(613,5,NULL,NULL,38,3.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\",\"products\\/11-3.jpg\",\"products\\/32.jpg\",\"products\\/44.jpg\"]'),(616,3,NULL,NULL,39,4.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/21-2.jpg\",\"products\\/39-1.jpg\"]'),(618,8,NULL,NULL,24,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\",\"products\\/39-2.jpg\"]'),(620,6,NULL,NULL,19,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22.jpg\",\"products\\/51.jpg\"]'),(621,10,NULL,NULL,16,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-2.jpg\",\"products\\/10.jpg\",\"products\\/31.jpg\",\"products\\/54.jpg\"]'),(625,5,NULL,NULL,51,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-1.jpg\"]'),(629,7,NULL,NULL,47,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28.jpg\",\"products\\/43-2.jpg\"]'),(634,3,NULL,NULL,16,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29.jpg\",\"products\\/46.jpg\"]'),(639,2,NULL,NULL,48,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-3.jpg\",\"products\\/23.jpg\",\"products\\/40-1.jpg\",\"products\\/45.jpg\"]'),(645,9,NULL,NULL,37,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17.jpg\",\"products\\/24.jpg\",\"products\\/40.jpg\"]'),(647,1,NULL,NULL,3,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29-1.jpg\",\"products\\/35.jpg\",\"products\\/39.jpg\"]'),(648,2,NULL,NULL,36,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-2.jpg\"]'),(650,4,NULL,NULL,40,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-2.jpg\",\"products\\/8.jpg\",\"products\\/36-2.jpg\"]'),(653,6,NULL,NULL,27,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/37.jpg\"]'),(660,2,NULL,NULL,14,5.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/1.jpg\",\"products\\/33-1.jpg\",\"products\\/60-1.jpg\"]'),(663,3,NULL,NULL,40,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29-1.jpg\",\"products\\/35.jpg\"]'),(665,3,NULL,NULL,47,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-1.jpg\",\"products\\/55-2.jpg\"]'),(671,7,NULL,NULL,50,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/60.jpg\"]'),(676,2,NULL,NULL,34,3.00,'Good app, good backup service and support. Good documentation.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/32-2.jpg\",\"products\\/35-1.jpg\",\"products\\/37-1.jpg\"]'),(678,9,NULL,NULL,27,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/63.jpg\"]'),(679,4,NULL,NULL,39,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-3.jpg\",\"products\\/65-1.jpg\"]'),(681,8,NULL,NULL,44,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-1.jpg\",\"products\\/33.jpg\",\"products\\/49.jpg\"]'),(684,5,NULL,NULL,33,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/47.jpg\",\"products\\/56-1.jpg\"]'),(685,10,NULL,NULL,45,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-3.jpg\"]'),(686,8,NULL,NULL,15,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/1.jpg\",\"products\\/13-1.jpg\",\"products\\/22.jpg\"]'),(689,9,NULL,NULL,59,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-1.jpg\",\"products\\/19-3.jpg\",\"products\\/20.jpg\",\"products\\/25.jpg\"]'),(696,1,NULL,NULL,48,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/52.jpg\"]'),(698,8,NULL,NULL,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15-1.jpg\"]'),(699,4,NULL,NULL,62,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/48-1.jpg\"]'),(706,7,NULL,NULL,11,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/33-1.jpg\"]'),(710,4,NULL,NULL,52,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-2.jpg\",\"products\\/23-3.jpg\",\"products\\/43-1.jpg\"]'),(712,5,NULL,NULL,49,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/47.jpg\",\"products\\/49.jpg\"]'),(714,7,NULL,NULL,44,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/15-1.jpg\",\"products\\/18.jpg\",\"products\\/30-2.jpg\",\"products\\/47-1.jpg\"]'),(715,8,NULL,NULL,3,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/56.jpg\"]'),(718,4,NULL,NULL,33,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38-2.jpg\"]'),(721,3,NULL,NULL,29,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-1.jpg\",\"products\\/52-2.jpg\",\"products\\/65-2.jpg\"]'),(725,8,NULL,NULL,57,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5.jpg\",\"products\\/9-2.jpg\",\"products\\/58.jpg\"]'),(728,5,NULL,NULL,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-1.jpg\",\"products\\/22.jpg\",\"products\\/32-1.jpg\",\"products\\/33.jpg\"]'),(732,3,NULL,NULL,43,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/4-1.jpg\",\"products\\/9-1.jpg\"]'),(738,4,NULL,NULL,20,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/49.jpg\",\"products\\/59-3.jpg\",\"products\\/61-1.jpg\"]'),(739,1,NULL,NULL,65,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-1.jpg\",\"products\\/31.jpg\"]'),(741,2,NULL,NULL,22,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/39.jpg\",\"products\\/42-1.jpg\"]'),(743,8,NULL,NULL,43,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-1.jpg\",\"products\\/26.jpg\",\"products\\/35.jpg\",\"products\\/63-1.jpg\"]'),(746,10,NULL,NULL,3,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/8-1.jpg\",\"products\\/38.jpg\"]'),(748,10,NULL,NULL,64,5.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/29-2.jpg\",\"products\\/46.jpg\"]'),(756,9,NULL,NULL,35,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-1.jpg\",\"products\\/20-1.jpg\",\"products\\/50.jpg\"]'),(763,1,NULL,NULL,2,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-3.jpg\"]'),(765,6,NULL,NULL,37,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-2.jpg\",\"products\\/63.jpg\"]'),(766,7,NULL,NULL,2,3.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-2.jpg\",\"products\\/36.jpg\",\"products\\/45-1.jpg\",\"products\\/58-2.jpg\"]'),(767,1,NULL,NULL,61,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-3.jpg\",\"products\\/37-2.jpg\",\"products\\/41-2.jpg\"]'),(768,10,NULL,NULL,51,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-3.jpg\",\"products\\/13.jpg\",\"products\\/43.jpg\"]'),(770,8,NULL,NULL,63,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-2.jpg\",\"products\\/11-3.jpg\",\"products\\/30-2.jpg\"]'),(772,3,NULL,NULL,50,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18.jpg\"]'),(777,7,NULL,NULL,25,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-1.jpg\"]'),(778,5,NULL,NULL,57,3.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/19-3.jpg\",\"products\\/20-1.jpg\",\"products\\/21.jpg\",\"products\\/41-1.jpg\"]'),(784,1,NULL,NULL,11,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30.jpg\",\"products\\/57-1.jpg\",\"products\\/65-1.jpg\",\"products\\/65-2.jpg\"]'),(792,1,NULL,NULL,55,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/50-1.jpg\",\"products\\/54.jpg\"]'),(799,1,NULL,NULL,10,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31.jpg\"]'),(806,10,NULL,NULL,9,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-2.jpg\",\"products\\/41-2.jpg\"]'),(809,3,NULL,NULL,31,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-2.jpg\",\"products\\/30.jpg\"]'),(811,1,NULL,NULL,28,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/63-1.jpg\"]'),(812,6,NULL,NULL,40,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/3.jpg\",\"products\\/24.jpg\"]'),(819,8,NULL,NULL,14,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\",\"products\\/31-1.jpg\"]'),(822,4,NULL,NULL,32,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-1.jpg\"]'),(825,10,NULL,NULL,54,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12-3.jpg\",\"products\\/45-1.jpg\"]'),(827,6,NULL,NULL,33,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13-1.jpg\",\"products\\/49-1.jpg\"]'),(828,7,NULL,NULL,46,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30-1.jpg\",\"products\\/31.jpg\"]'),(829,1,NULL,NULL,13,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/25-2.jpg\",\"products\\/33-2.jpg\",\"products\\/41.jpg\"]'),(835,9,NULL,NULL,34,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/65-2.jpg\"]'),(837,7,NULL,NULL,10,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/4-3.jpg\",\"products\\/9.jpg\",\"products\\/42-1.jpg\",\"products\\/62-1.jpg\"]'),(844,6,NULL,NULL,58,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-2.jpg\"]'),(847,5,NULL,NULL,19,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/27-1.jpg\",\"products\\/48.jpg\",\"products\\/54.jpg\"]'),(848,8,NULL,NULL,45,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-2.jpg\",\"products\\/52.jpg\"]'),(850,1,NULL,NULL,6,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-2.jpg\",\"products\\/32-1.jpg\",\"products\\/42.jpg\",\"products\\/63-1.jpg\"]'),(852,9,NULL,NULL,23,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-1.jpg\",\"products\\/44-1.jpg\",\"products\\/56-2.jpg\"]'),(853,2,NULL,NULL,49,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13.jpg\",\"products\\/65-2.jpg\"]'),(855,7,NULL,NULL,41,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13-1.jpg\",\"products\\/35-1.jpg\",\"products\\/40.jpg\",\"products\\/41-1.jpg\"]'),(856,2,NULL,NULL,45,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]'),(859,6,NULL,NULL,49,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-1.jpg\"]'),(863,8,NULL,NULL,27,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/9-1.jpg\",\"products\\/32.jpg\"]'),(866,8,NULL,NULL,56,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\",\"products\\/42-1.jpg\",\"products\\/44-2.jpg\"]'),(880,1,NULL,NULL,32,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12.jpg\"]'),(884,2,NULL,NULL,50,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/28-2.jpg\",\"products\\/33-2.jpg\"]'),(886,10,NULL,NULL,21,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38-3.jpg\",\"products\\/45-1.jpg\",\"products\\/56.jpg\",\"products\\/65-2.jpg\"]'),(887,2,NULL,NULL,62,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/24-1.jpg\",\"products\\/50-1.jpg\"]'),(890,4,NULL,NULL,44,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10-1.jpg\",\"products\\/23-3.jpg\",\"products\\/24.jpg\",\"products\\/28-1.jpg\"]'),(891,8,NULL,NULL,53,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/23-3.jpg\",\"products\\/49-2.jpg\",\"products\\/60.jpg\"]'),(892,1,NULL,NULL,15,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/60-2.jpg\",\"products\\/62-1.jpg\"]'),(901,1,NULL,NULL,4,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/60-1.jpg\"]'),(904,10,NULL,NULL,5,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/18-3.jpg\",\"products\\/19-1.jpg\",\"products\\/25.jpg\",\"products\\/65-1.jpg\"]'),(907,2,NULL,NULL,54,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/5-3.jpg\",\"products\\/11-3.jpg\",\"products\\/14.jpg\",\"products\\/38.jpg\"]'),(912,7,NULL,NULL,26,1.00,'Best ecommerce CMS online store!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17.jpg\"]'),(918,2,NULL,NULL,60,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-3.jpg\",\"products\\/53-1.jpg\"]'),(927,6,NULL,NULL,28,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-1.jpg\",\"products\\/62.jpg\"]'),(937,2,NULL,NULL,9,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11.jpg\",\"products\\/12.jpg\",\"products\\/42.jpg\"]'),(938,8,NULL,NULL,5,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/31-1.jpg\"]'),(940,4,NULL,NULL,57,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38.jpg\"]'),(942,3,NULL,NULL,56,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22.jpg\",\"products\\/23-3.jpg\",\"products\\/60-2.jpg\"]'),(944,8,NULL,NULL,42,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/52.jpg\",\"products\\/53-1.jpg\"]'),(945,9,NULL,NULL,12,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/26-1.jpg\",\"products\\/30.jpg\",\"products\\/58.jpg\"]'),(946,5,NULL,NULL,41,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38.jpg\"]'),(950,7,NULL,NULL,61,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/38-2.jpg\",\"products\\/55-2.jpg\"]'),(954,5,NULL,NULL,15,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/30-2.jpg\",\"products\\/42-1.jpg\",\"products\\/44-2.jpg\",\"products\\/65-2.jpg\"]'),(956,10,NULL,NULL,28,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/21-2.jpg\"]'),(958,7,NULL,NULL,63,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/17-1.jpg\",\"products\\/29.jpg\"]'),(961,7,NULL,NULL,59,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/10.jpg\",\"products\\/47-1.jpg\"]'),(966,4,NULL,NULL,12,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/20-3.jpg\",\"products\\/22-1.jpg\"]'),(973,4,NULL,NULL,5,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-1.jpg\"]'),(976,7,NULL,NULL,51,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/22-2.jpg\"]'),(980,7,NULL,NULL,12,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/12.jpg\",\"products\\/16.jpg\",\"products\\/43-2.jpg\",\"products\\/46-1.jpg\"]'),(981,3,NULL,NULL,57,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/42.jpg\"]'),(983,9,NULL,NULL,50,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/28.jpg\",\"products\\/49.jpg\"]'),(985,7,NULL,NULL,18,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/6.jpg\",\"products\\/23-1.jpg\",\"products\\/38.jpg\",\"products\\/49.jpg\"]'),(987,5,NULL,NULL,54,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/13-1.jpg\",\"products\\/30-1.jpg\",\"products\\/38-2.jpg\",\"products\\/61-1.jpg\"]'),(992,9,NULL,NULL,19,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/8-1.jpg\",\"products\\/11-3.jpg\",\"products\\/18-2.jpg\",\"products\\/32.jpg\"]'),(993,1,NULL,NULL,52,4.00,'Clean & perfect source code','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/11-3.jpg\",\"products\\/12.jpg\",\"products\\/25-2.jpg\",\"products\\/63.jpg\"]'),(996,10,NULL,NULL,33,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/59-1.jpg\"]'),(1000,6,NULL,NULL,56,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-05-28 03:12:55','2024-05-28 03:12:55','[\"products\\/2-2.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\",\"products\\/31-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-05-28 03:12:39','2024-05-28 03:12:39');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-05-28 03:12:39','2024-05-28 03:12:39');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Farmart','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-05-28 03:12:56','2024-05-28 03:12:56',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,3),(1,6),(1,8),(1,10),(1,13),(1,14),(1,28),(1,29),(1,32),(1,35),(1,37),(1,41),(1,43),(1,51),(1,52),(1,55),(1,59),(1,64),(2,1),(2,2),(2,4),(2,15),(2,17),(2,18),(2,19),(2,21),(2,22),(2,24),(2,26),(2,30),(2,31),(2,33),(2,36),(2,40),(2,42),(2,49),(2,54),(2,56),(2,57),(2,58),(2,60),(2,61),(2,63),(2,65),(3,5),(3,7),(3,9),(3,11),(3,12),(3,16),(3,20),(3,23),(3,25),(3,27),(3,34),(3,38),(3,39),(3,44),(3,45),(3,46),(3,47),(3,48),(3,50),(3,53),(3,62);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(2,'None',0.000000,2,'published','2024-05-28 03:12:39','2024-05-28 03:12:39'),(3,'Import Tax',15.000000,3,'published','2024-05-28 03:12:39','2024-05-28 03:12:39');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-05-28 03:12:34','2024-05-28 03:12:34',NULL),(2,'PAYMENT',1,'published','2024-05-28 03:12:34','2024-05-28 03:12:34',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-05-28 03:12:34','2024-05-28 03:12:34',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-05-28 03:12:34','2024-05-28 03:12:34'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-05-28 03:12:34','2024-05-28 03:12:34');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','297cb5bb23d769d1c5643adf89393150',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','8b03ecf1723991dcc4e022c7952e8c1c',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','6fd2cfc6ded72c00586eb5222ca9451e',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','5ea9c65dc2402fb1cfa272751a20a5e7',2,'Botble\\Menu\\Models\\MenuLocation'),(5,'en_US','2ec0a829b483fb4964faddc27dcbb516',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','5b084e348165de019a1e623fe440cfb0',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','3609c563d704b453fdf357b28900cab9',4,'Botble\\Menu\\Models\\Menu'),(8,'en_US','6a01ff18822a0776e7a43bf6b2553116',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',5403,'brands/1.png','[]','2024-05-28 03:12:34','2024-05-28 03:12:34',NULL,'public'),(2,0,'2','2',1,'image/png',5403,'brands/2.png','[]','2024-05-28 03:12:34','2024-05-28 03:12:34',NULL,'public'),(3,0,'3','3',1,'image/png',5403,'brands/3.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(4,0,'4','4',1,'image/png',5403,'brands/4.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(5,0,'1','1',2,'image/png',5327,'product-categories/1.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(6,0,'2','2',2,'image/png',5327,'product-categories/2.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(7,0,'3','3',2,'image/png',5327,'product-categories/3.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(8,0,'4','4',2,'image/png',5327,'product-categories/4.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(9,0,'5','5',2,'image/png',5327,'product-categories/5.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(10,0,'6','6',2,'image/png',5327,'product-categories/6.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(11,0,'7','7',2,'image/png',5327,'product-categories/7.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(12,0,'8','8',2,'image/png',5327,'product-categories/8.png','[]','2024-05-28 03:12:35','2024-05-28 03:12:35',NULL,'public'),(13,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(14,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(15,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(16,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(17,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(18,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(19,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(20,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(21,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(22,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-05-28 03:12:36','2024-05-28 03:12:36',NULL,'public'),(23,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(24,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(25,0,'10-2','10-2',4,'image/jpeg',9803,'products/10-2.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(26,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(27,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(28,0,'11-2','11-2',4,'image/jpeg',9803,'products/11-2.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(29,0,'11-3','11-3',4,'image/jpeg',9803,'products/11-3.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(30,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(31,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(32,0,'12-2','12-2',4,'image/jpeg',9803,'products/12-2.jpg','[]','2024-05-28 03:12:39','2024-05-28 03:12:39',NULL,'public'),(33,0,'12-3','12-3',4,'image/jpeg',9803,'products/12-3.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(37,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(38,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(39,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(40,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(41,0,'17-1','17-1',4,'image/jpeg',9803,'products/17-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(42,0,'17-2','17-2',4,'image/jpeg',9803,'products/17-2.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(43,0,'17-3','17-3',4,'image/jpeg',9803,'products/17-3.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(44,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(45,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(46,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(47,0,'18-3','18-3',4,'image/jpeg',9803,'products/18-3.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(48,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(49,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(50,0,'19-2','19-2',4,'image/jpeg',9803,'products/19-2.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(51,0,'19-3','19-3',4,'image/jpeg',9803,'products/19-3.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(52,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(53,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(54,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(55,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(56,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(57,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(58,0,'20-2','20-2',4,'image/jpeg',9803,'products/20-2.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(59,0,'20-3','20-3',4,'image/jpeg',9803,'products/20-3.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(60,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2024-05-28 03:12:40','2024-05-28 03:12:40',NULL,'public'),(61,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(62,0,'21-2','21-2',4,'image/jpeg',9803,'products/21-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(63,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(64,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(65,0,'22-2','22-2',4,'image/jpeg',9803,'products/22-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(66,0,'22-3','22-3',4,'image/jpeg',9803,'products/22-3.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(67,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(68,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(69,0,'23-2','23-2',4,'image/jpeg',9803,'products/23-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(70,0,'23-3','23-3',4,'image/jpeg',9803,'products/23-3.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(71,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(72,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(73,0,'24-2','24-2',4,'image/jpeg',9803,'products/24-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(74,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(75,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(76,0,'25-2','25-2',4,'image/jpeg',9803,'products/25-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(77,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(78,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(79,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(80,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(81,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(82,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(83,0,'28-2','28-2',4,'image/jpeg',9803,'products/28-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(84,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(85,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(86,0,'29-2','29-2',4,'image/jpeg',9803,'products/29-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(87,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(88,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(89,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(90,0,'30-2','30-2',4,'image/jpeg',9803,'products/30-2.jpg','[]','2024-05-28 03:12:41','2024-05-28 03:12:41',NULL,'public'),(91,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(92,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(93,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(94,0,'32-1','32-1',4,'image/jpeg',9803,'products/32-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(95,0,'32-2','32-2',4,'image/jpeg',9803,'products/32-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(96,0,'32','32',4,'image/jpeg',9803,'products/32.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(97,0,'33-1','33-1',4,'image/jpeg',9803,'products/33-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(98,0,'33-2','33-2',4,'image/jpeg',9803,'products/33-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(99,0,'33','33',4,'image/jpeg',9803,'products/33.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(100,0,'34-1','34-1',4,'image/jpeg',9803,'products/34-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(101,0,'34','34',4,'image/jpeg',9803,'products/34.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(102,0,'35-1','35-1',4,'image/jpeg',9803,'products/35-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(103,0,'35','35',4,'image/jpeg',9803,'products/35.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(104,0,'36-1','36-1',4,'image/jpeg',9803,'products/36-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(105,0,'36-2','36-2',4,'image/jpeg',9803,'products/36-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(106,0,'36','36',4,'image/jpeg',9803,'products/36.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(107,0,'37-1','37-1',4,'image/jpeg',9803,'products/37-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(108,0,'37-2','37-2',4,'image/jpeg',9803,'products/37-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(109,0,'37','37',4,'image/jpeg',9803,'products/37.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(110,0,'38-1','38-1',4,'image/jpeg',9803,'products/38-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(111,0,'38-2','38-2',4,'image/jpeg',9803,'products/38-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(112,0,'38-3','38-3',4,'image/jpeg',9803,'products/38-3.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(113,0,'38','38',4,'image/jpeg',9803,'products/38.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(114,0,'39-1','39-1',4,'image/jpeg',9803,'products/39-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(115,0,'39-2','39-2',4,'image/jpeg',9803,'products/39-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(116,0,'39','39',4,'image/jpeg',9803,'products/39.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(117,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(118,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2024-05-28 03:12:42','2024-05-28 03:12:42',NULL,'public'),(119,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(120,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(121,0,'40-1','40-1',4,'image/jpeg',9803,'products/40-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(122,0,'40','40',4,'image/jpeg',9803,'products/40.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(123,0,'41-1','41-1',4,'image/jpeg',9803,'products/41-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(124,0,'41-2','41-2',4,'image/jpeg',9803,'products/41-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(125,0,'41','41',4,'image/jpeg',9803,'products/41.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(126,0,'42-1','42-1',4,'image/jpeg',9803,'products/42-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(127,0,'42-2','42-2',4,'image/jpeg',9803,'products/42-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(128,0,'42','42',4,'image/jpeg',9803,'products/42.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(129,0,'43-1','43-1',4,'image/jpeg',9803,'products/43-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(130,0,'43-2','43-2',4,'image/jpeg',9803,'products/43-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(131,0,'43','43',4,'image/jpeg',9803,'products/43.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(132,0,'44-1','44-1',4,'image/jpeg',9803,'products/44-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(133,0,'44-2','44-2',4,'image/jpeg',9803,'products/44-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(134,0,'44','44',4,'image/jpeg',9803,'products/44.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(135,0,'45-1','45-1',4,'image/jpeg',9803,'products/45-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(136,0,'45','45',4,'image/jpeg',9803,'products/45.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(137,0,'46-1','46-1',4,'image/jpeg',9803,'products/46-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(138,0,'46','46',4,'image/jpeg',9803,'products/46.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(139,0,'47-1','47-1',4,'image/jpeg',9803,'products/47-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(140,0,'47','47',4,'image/jpeg',9803,'products/47.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(141,0,'48-1','48-1',4,'image/jpeg',9803,'products/48-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(142,0,'48-2','48-2',4,'image/jpeg',9803,'products/48-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(143,0,'48','48',4,'image/jpeg',9803,'products/48.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(144,0,'49-1','49-1',4,'image/jpeg',9803,'products/49-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(145,0,'49-2','49-2',4,'image/jpeg',9803,'products/49-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(146,0,'49','49',4,'image/jpeg',9803,'products/49.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(147,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(148,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2024-05-28 03:12:43','2024-05-28 03:12:43',NULL,'public'),(149,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(150,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(151,0,'50-1','50-1',4,'image/jpeg',9803,'products/50-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(152,0,'50','50',4,'image/jpeg',9803,'products/50.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(153,0,'51','51',4,'image/jpeg',9803,'products/51.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(154,0,'52-1','52-1',4,'image/jpeg',9803,'products/52-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(155,0,'52-2','52-2',4,'image/jpeg',9803,'products/52-2.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(156,0,'52','52',4,'image/jpeg',9803,'products/52.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(157,0,'53-1','53-1',4,'image/jpeg',9803,'products/53-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(158,0,'53','53',4,'image/jpeg',9803,'products/53.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(159,0,'54-1','54-1',4,'image/jpeg',9803,'products/54-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(160,0,'54','54',4,'image/jpeg',9803,'products/54.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(161,0,'55-1','55-1',4,'image/jpeg',9803,'products/55-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(162,0,'55-2','55-2',4,'image/jpeg',9803,'products/55-2.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(163,0,'55','55',4,'image/jpeg',9803,'products/55.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(164,0,'56-1','56-1',4,'image/jpeg',9803,'products/56-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(165,0,'56-2','56-2',4,'image/jpeg',9803,'products/56-2.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(166,0,'56','56',4,'image/jpeg',9803,'products/56.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(167,0,'57-1','57-1',4,'image/jpeg',9803,'products/57-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(168,0,'57','57',4,'image/jpeg',9803,'products/57.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(169,0,'58-1','58-1',4,'image/jpeg',9803,'products/58-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(170,0,'58-2','58-2',4,'image/jpeg',9803,'products/58-2.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(171,0,'58','58',4,'image/jpeg',9803,'products/58.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(172,0,'59-1','59-1',4,'image/jpeg',9803,'products/59-1.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(173,0,'59-2','59-2',4,'image/jpeg',9803,'products/59-2.jpg','[]','2024-05-28 03:12:44','2024-05-28 03:12:44',NULL,'public'),(174,0,'59-3','59-3',4,'image/jpeg',9803,'products/59-3.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(175,0,'59','59',4,'image/jpeg',9803,'products/59.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(176,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(177,0,'60-1','60-1',4,'image/jpeg',9803,'products/60-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(178,0,'60-2','60-2',4,'image/jpeg',9803,'products/60-2.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(179,0,'60','60',4,'image/jpeg',9803,'products/60.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(180,0,'61-1','61-1',4,'image/jpeg',9803,'products/61-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(181,0,'61','61',4,'image/jpeg',9803,'products/61.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(182,0,'62-1','62-1',4,'image/jpeg',9803,'products/62-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(183,0,'62','62',4,'image/jpeg',9803,'products/62.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(184,0,'63-1','63-1',4,'image/jpeg',9803,'products/63-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(185,0,'63','63',4,'image/jpeg',9803,'products/63.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(186,0,'64-1','64-1',4,'image/jpeg',9803,'products/64-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(187,0,'64','64',4,'image/jpeg',9803,'products/64.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(188,0,'65-1','65-1',4,'image/jpeg',9803,'products/65-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(189,0,'65-2','65-2',4,'image/jpeg',9803,'products/65-2.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(190,0,'65','65',4,'image/jpeg',9803,'products/65.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(191,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(192,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(193,0,'8-2','8-2',4,'image/jpeg',9803,'products/8-2.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(194,0,'8-3','8-3',4,'image/jpeg',9803,'products/8-3.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(195,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(196,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(197,0,'9-2','9-2',4,'image/jpeg',9803,'products/9-2.jpg','[]','2024-05-28 03:12:45','2024-05-28 03:12:45',NULL,'public'),(198,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2024-05-28 03:12:46','2024-05-28 03:12:46',NULL,'public'),(199,0,'1','1',5,'image/png',2691,'stores/1.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(200,0,'10','10',5,'image/png',2691,'stores/10.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(201,0,'11','11',5,'image/png',2691,'stores/11.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(202,0,'12','12',5,'image/png',2691,'stores/12.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(203,0,'13','13',5,'image/png',2691,'stores/13.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(204,0,'14','14',5,'image/png',2691,'stores/14.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(205,0,'15','15',5,'image/png',2691,'stores/15.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(206,0,'16','16',5,'image/png',2732,'stores/16.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(207,0,'17','17',5,'image/png',2732,'stores/17.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(208,0,'2','2',5,'image/png',2691,'stores/2.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(209,0,'3','3',5,'image/png',2691,'stores/3.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(210,0,'4','4',5,'image/png',2691,'stores/4.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(211,0,'5','5',5,'image/png',2691,'stores/5.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(212,0,'6','6',5,'image/png',2691,'stores/6.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(213,0,'7','7',5,'image/png',2691,'stores/7.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(214,0,'8','8',5,'image/png',2691,'stores/8.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(215,0,'9','9',5,'image/png',2691,'stores/9.png','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(216,0,'background-1','background-1',5,'image/jpeg',5286,'stores/background-1.jpg','[]','2024-05-28 03:12:56','2024-05-28 03:12:56',NULL,'public'),(217,0,'background-2','background-2',5,'image/jpeg',5286,'stores/background-2.jpg','[]','2024-05-28 03:12:57','2024-05-28 03:12:57',NULL,'public'),(218,0,'1','1',6,'image/jpeg',9803,'news/1.jpg','[]','2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,'public'),(219,0,'10','10',6,'image/jpeg',9803,'news/10.jpg','[]','2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,'public'),(220,0,'11','11',6,'image/jpeg',9803,'news/11.jpg','[]','2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,'public'),(221,0,'2','2',6,'image/jpeg',9803,'news/2.jpg','[]','2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,'public'),(222,0,'3','3',6,'image/jpeg',9803,'news/3.jpg','[]','2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,'public'),(223,0,'4','4',6,'image/jpeg',9803,'news/4.jpg','[]','2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,'public'),(224,0,'5','5',6,'image/jpeg',9803,'news/5.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(225,0,'6','6',6,'image/jpeg',9803,'news/6.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(226,0,'7','7',6,'image/jpeg',9803,'news/7.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(227,0,'8','8',6,'image/jpeg',9803,'news/8.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(228,0,'9','9',6,'image/jpeg',9803,'news/9.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(229,0,'01-sm','01-sm',7,'image/jpeg',10737,'sliders/01-sm.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(230,0,'01','01',7,'image/jpeg',11704,'sliders/01.jpg','[]','2024-05-28 03:13:00','2024-05-28 03:13:00',NULL,'public'),(231,0,'02-sm','02-sm',7,'image/jpeg',10737,'sliders/02-sm.jpg','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(232,0,'02','02',7,'image/jpeg',11704,'sliders/02.jpg','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(233,0,'1','1',8,'image/jpeg',7935,'promotion/1.jpg','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(234,0,'2','2',8,'image/png',14659,'promotion/2.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(235,0,'3','3',8,'image/png',10632,'promotion/3.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(236,0,'4','4',8,'image/png',10076,'promotion/4.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(237,0,'5','5',8,'image/png',12274,'promotion/5.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(238,0,'404','404',9,'image/png',31617,'general/404.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(239,0,'app-android','app-android',9,'image/png',630,'general/app-android.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(240,0,'app-bg','app-bg',9,'image/png',11530,'general/app-bg.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(241,0,'app-ios','app-ios',9,'image/png',630,'general/app-ios.png','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(242,0,'background','background',9,'image/jpeg',26676,'general/background.jpg','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(243,0,'blog-bg','blog-bg',9,'image/jpeg',81226,'general/blog-bg.jpg','[]','2024-05-28 03:13:01','2024-05-28 03:13:01',NULL,'public'),(244,0,'coming-soon','coming-soon',9,'image/jpeg',26506,'general/coming-soon.jpg','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(245,0,'facebook','facebook',9,'image/png',686,'general/facebook.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(246,0,'favicon','favicon',9,'image/png',6542,'general/favicon.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(247,0,'footer-payments','footer-payments',9,'image/png',439,'general/footer-payments.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(248,0,'icon-protect','icon-protect',9,'image/png',1665,'general/icon-protect.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(249,0,'icon-reload','icon-reload',9,'image/png',1442,'general/icon-reload.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(250,0,'icon-rocket','icon-rocket',9,'image/png',1541,'general/icon-rocket.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(251,0,'icon-support','icon-support',9,'image/png',1813,'general/icon-support.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(252,0,'icon-tag','icon-tag',9,'image/png',1127,'general/icon-tag.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(253,0,'instagram','instagram',9,'image/png',2355,'general/instagram.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(254,0,'logo-light','logo-light',9,'image/png',12700,'general/logo-light.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(255,0,'logo','logo',9,'image/png',18493,'general/logo.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(256,0,'newsletter-popup','newsletter-popup',9,'image/png',17253,'general/newsletter-popup.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(257,0,'open-graph-image','open-graph-image',9,'image/png',406719,'general/open-graph-image.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(258,0,'pinterest','pinterest',9,'image/png',1857,'general/pinterest.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(259,0,'placeholder','placeholder',9,'image/png',2543,'general/placeholder.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(260,0,'slider-bg','slider-bg',9,'image/jpeg',26676,'general/slider-bg.jpg','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(261,0,'twitter','twitter',9,'image/png',1587,'general/twitter.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public'),(262,0,'youtube','youtube',9,'image/png',947,'general/youtube.png','[]','2024-05-28 03:13:02','2024-05-28 03:13:02',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-05-28 03:12:34','2024-05-28 03:12:34',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-05-28 03:12:35','2024-05-28 03:12:35',NULL),(3,0,'customers',NULL,'customers',0,'2024-05-28 03:12:36','2024-05-28 03:12:36',NULL),(4,0,'products',NULL,'products',0,'2024-05-28 03:12:39','2024-05-28 03:12:39',NULL),(5,0,'stores',NULL,'stores',0,'2024-05-28 03:12:56','2024-05-28 03:12:56',NULL),(6,0,'news',NULL,'news',0,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL),(7,0,'sliders',NULL,'sliders',0,'2024-05-28 03:13:00','2024-05-28 03:13:00',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-05-28 03:13:01','2024-05-28 03:13:01',NULL),(9,0,'general',NULL,'general',0,'2024-05-28 03:13:01','2024-05-28 03:13:01',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-05-28 03:13:01','2024-05-28 03:13:01'),(2,2,'header-navigation','2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/products/smart-watches','icon icon-tag',0,'Special Prices',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Products Of Category',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQs',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(16,2,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,1,'About Us',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(17,2,0,NULL,NULL,'wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(18,2,0,NULL,NULL,'orders/tracking',NULL,1,'Order Tracking',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(19,3,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Terms Of Use',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(20,3,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Terms & Conditions',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(21,3,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(22,3,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,2,'FAQs',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(23,3,0,NULL,NULL,'/nothing',NULL,2,'404 Page',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(24,4,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,3,'About us',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(25,4,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Affiliate',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(26,4,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Career',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(27,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(28,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Our blog',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(29,5,0,NULL,NULL,'/cart',NULL,4,'Cart',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(30,5,0,NULL,NULL,'/customer/overview',NULL,4,'My account',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(31,5,0,NULL,NULL,'/products',NULL,4,'Shop',NULL,'_self',0,'2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(2,'Header menu','header-menu','published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(3,'Useful Links','useful-links','published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(4,'Help Center','help-center','published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(5,'Business','business','published','2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_ids','[[1,3,4,6,8]]',1,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(2,'faq_ids','[[3,4,5,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(3,'faq_ids','[[2,3,4,8,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(4,'faq_ids','[[2,5,8,9,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(5,'faq_ids','[[1,3,5,8,9]]',5,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(6,'faq_ids','[[1,6,7,8,9]]',6,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(7,'faq_ids','[[1,2,3,4,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(8,'faq_ids','[[1,4,6,8,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:47','2024-05-28 03:12:47'),(9,'faq_ids','[[2,4,5,7,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(10,'faq_ids','[[1,2,5,6,8]]',10,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(11,'faq_ids','[[2,3,4,8,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(12,'faq_ids','[[1,2,3,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(13,'faq_ids','[[3,4,6,7,8]]',13,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(14,'faq_ids','[[2,3,6,7,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(15,'faq_ids','[[1,3,5,7,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(16,'faq_ids','[[1,5,6,7,8]]',16,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:48','2024-05-28 03:12:48'),(17,'faq_ids','[[3,4,7,8,9]]',17,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(18,'faq_ids','[[2,4,6,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(19,'faq_ids','[[2,4,5,8,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(20,'faq_ids','[[1,3,4,5,6]]',20,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(21,'faq_ids','[[1,3,5,6,7]]',21,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(22,'faq_ids','[[2,5,6,7,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(23,'faq_ids','[[1,2,3,8,10]]',23,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:49','2024-05-28 03:12:49'),(24,'faq_ids','[[3,5,8,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:50','2024-05-28 03:12:50'),(25,'faq_ids','[[1,4,5,8,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(26,'faq_ids','[[3,5,6,7,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(27,'faq_ids','[[2,4,7,8,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(28,'faq_ids','[[3,6,8,9,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(29,'faq_ids','[[3,4,6,7,9]]',29,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(30,'faq_ids','[[2,3,4,6,9]]',30,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(31,'faq_ids','[[3,4,6,7,9]]',31,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(32,'faq_ids','[[3,4,6,8,9]]',32,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(33,'faq_ids','[[1,2,3,9,10]]',33,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(34,'faq_ids','[[1,2,3,5,6]]',34,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(35,'faq_ids','[[1,3,5,8,9]]',35,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(36,'faq_ids','[[1,6,7,8,10]]',36,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(37,'faq_ids','[[1,2,3,6,7]]',37,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(38,'faq_ids','[[2,4,6,9,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(39,'faq_ids','[[1,4,6,9,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(40,'faq_ids','[[1,3,4,8,10]]',40,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(41,'faq_ids','[[4,6,7,8,9]]',41,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(42,'faq_ids','[[1,4,5,7,8]]',42,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(43,'faq_ids','[[2,4,5,7,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(44,'faq_ids','[[1,4,6,8,10]]',44,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(45,'faq_ids','[[2,3,4,6,8]]',45,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(46,'faq_ids','[[4,7,8,9,10]]',46,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(47,'faq_ids','[[3,4,5,6,10]]',47,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(48,'faq_ids','[[1,2,4,5,6]]',48,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:51','2024-05-28 03:12:51'),(49,'faq_ids','[[2,6,7,9,10]]',49,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(50,'faq_ids','[[1,4,5,7,8]]',50,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(51,'faq_ids','[[3,5,6,8,10]]',51,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(52,'faq_ids','[[1,2,6,7,10]]',52,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(53,'faq_ids','[[2,3,4,5,10]]',53,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(54,'faq_ids','[[2,7,8,9,10]]',54,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(55,'faq_ids','[[1,2,5,7,10]]',55,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(56,'faq_ids','[[3,4,6,8,10]]',56,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(57,'faq_ids','[[1,3,6,8,9]]',57,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(58,'faq_ids','[[4,6,7,8,9]]',58,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(59,'faq_ids','[[1,4,5,9,10]]',59,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(60,'faq_ids','[[1,2,4,5,8]]',60,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(61,'faq_ids','[[2,3,7,9,10]]',61,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(62,'faq_ids','[[1,2,5,9,10]]',62,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(63,'faq_ids','[[1,5,6,7,10]]',63,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(64,'faq_ids','[[3,4,5,8,9]]',64,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(65,'faq_ids','[[1,5,6,9,10]]',65,'Botble\\Ecommerce\\Models\\Product','2024-05-28 03:12:52','2024-05-28 03:12:52'),(66,'background','[\"stores\\/background-1.jpg\"]',1,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(67,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(68,'background','[\"stores\\/background-1.jpg\"]',2,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(69,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(70,'background','[\"stores\\/background-2.jpg\"]',3,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(71,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(72,'background','[\"stores\\/background-1.jpg\"]',4,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(73,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(74,'background','[\"stores\\/background-1.jpg\"]',5,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(75,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(76,'background','[\"stores\\/background-1.jpg\"]',6,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(77,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',6,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(78,'background','[\"stores\\/background-2.jpg\"]',7,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(79,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',7,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(80,'background','[\"stores\\/background-2.jpg\"]',8,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(81,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',8,'Botble\\Marketplace\\Models\\Store','2024-05-28 03:12:59','2024-05-28 03:12:59'),(82,'tablet_image','[\"sliders\\/01.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-28 03:13:01','2024-05-28 03:13:01'),(83,'mobile_image','[\"sliders\\/01-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-28 03:13:01','2024-05-28 03:13:01'),(84,'tablet_image','[\"sliders\\/02.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-28 03:13:01','2024-05-28 03:13:01'),(85,'mobile_image','[\"sliders\\/02-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(34,'2024_05_04_030654_improve_social_links',1),(35,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(36,'2024_05_16_100000_change_random_hash_for_media',1),(37,'2020_11_18_150916_ads_create_ads_table',2),(38,'2021_12_02_035301_add_ads_translations_table',2),(39,'2023_04_17_062645_add_open_in_new_tab',2),(40,'2023_11_07_023805_add_tablet_mobile_image',2),(41,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(42,'2024_04_27_100730_improve_analytics_setting',3),(43,'2015_06_29_025744_create_audit_history',4),(44,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(45,'2015_06_18_033822_create_blog_table',5),(46,'2021_02_16_092633_remove_default_value_for_author_type',5),(47,'2021_12_03_030600_create_blog_translations',5),(48,'2022_04_19_113923_add_index_to_table_posts',5),(49,'2023_08_29_074620_make_column_author_id_nullable',5),(50,'2016_06_17_091537_create_contacts_table',6),(51,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(52,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(53,'2024_03_25_000001_update_captcha_settings_for_contact',6),(54,'2024_04_19_063914_create_custom_fields_table',6),(55,'2020_03_05_041139_create_ecommerce_tables',7),(56,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(57,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(58,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(59,'2021_02_18_073505_update_table_ec_reviews',7),(60,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(61,'2021_03_10_025153_change_column_tax_amount',7),(62,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(63,'2021_04_28_074008_ecommerce_create_product_label_table',7),(64,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(65,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(66,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(67,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(68,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(69,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(70,'2021_11_23_071403_correct_languages_for_product_variations',7),(71,'2021_11_28_031808_add_product_tags_translations',7),(72,'2021_12_01_031123_add_featured_image_to_ec_products',7),(73,'2022_01_01_033107_update_table_ec_shipments',7),(74,'2022_02_16_042457_improve_product_attribute_sets',7),(75,'2022_03_22_075758_correct_product_name',7),(76,'2022_04_19_113334_add_index_to_ec_products',7),(77,'2022_04_28_144405_remove_unused_table',7),(78,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(79,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(80,'2022_06_16_095633_add_index_to_some_tables',7),(81,'2022_06_30_035148_create_order_referrals_table',7),(82,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(83,'2022_08_14_032836_create_ec_order_returns_table',7),(84,'2022_08_14_033554_create_ec_order_return_items_table',7),(85,'2022_08_15_040324_add_billing_address',7),(86,'2022_08_30_091114_support_digital_products_table',7),(87,'2022_09_13_095744_create_options_table',7),(88,'2022_09_13_104347_create_option_value_table',7),(89,'2022_10_05_163518_alter_table_ec_order_product',7),(90,'2022_10_12_041517_create_invoices_table',7),(91,'2022_10_12_142226_update_orders_table',7),(92,'2022_10_13_024916_update_table_order_returns',7),(93,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(94,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(95,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(96,'2022_11_19_041643_add_ec_tax_product_table',7),(97,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(98,'2022_12_17_041532_fix_address_in_order_invoice',7),(99,'2022_12_26_070329_create_ec_product_views_table',7),(100,'2023_01_04_033051_fix_product_categories',7),(101,'2023_01_09_050400_add_ec_global_options_translations_table',7),(102,'2023_01_10_093754_add_missing_option_value_id',7),(103,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(104,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(105,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(106,'2023_02_27_095752_remove_duplicate_reviews',7),(107,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(108,'2023_04_21_082427_create_ec_product_categorizables_table',7),(109,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(110,'2023_05_17_025812_fix_invoice_issue',7),(111,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(112,'2023_05_27_144611_fix_exchange_rate_setting',7),(113,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(114,'2023_06_30_042512_create_ec_order_tax_information_table',7),(115,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(116,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(117,'2023_08_15_064505_create_ec_tax_rules_table',7),(118,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(119,'2023_08_22_094114_drop_unique_for_barcode',7),(120,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(121,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(122,'2023_09_19_024955_create_discount_product_categories_table',7),(123,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(124,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(125,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(126,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(127,'2023_12_25_040604_ec_create_review_replies_table',7),(128,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(129,'2024_01_16_070706_fix_translation_tables',7),(130,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(131,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(132,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(133,'2024_03_29_042242_migrate_old_captcha_settings',7),(134,'2024_03_29_093946_create_ec_order_return_histories_table',7),(135,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(136,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(137,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(138,'2024_05_07_073153_improve_table_wishlist',7),(139,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(140,'2024_05_15_021503_fix_invoice_path',7),(141,'2018_07_09_221238_create_faq_table',8),(142,'2021_12_03_082134_create_faq_translations',8),(143,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(144,'2016_10_03_032336_create_languages_table',9),(145,'2023_09_14_022423_add_index_for_language_table',9),(146,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(147,'2021_12_03_075608_create_page_translations',10),(148,'2023_07_06_011444_create_slug_translations_table',10),(149,'2019_11_18_061011_create_country_table',11),(150,'2021_12_03_084118_create_location_translations',11),(151,'2021_12_03_094518_migrate_old_location_data',11),(152,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(153,'2022_01_16_085908_improve_plugin_location',11),(154,'2022_08_04_052122_delete_location_backup_tables',11),(155,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(156,'2023_07_26_041451_add_more_columns_to_location_table',11),(157,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(158,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(159,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(160,'2021_07_06_030002_create_marketplace_table',12),(161,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(162,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(163,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(164,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(165,'2021_12_06_031304_update_table_mp_customer_revenues',12),(166,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(167,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(168,'2022_11_02_071413_add_more_info_for_store',12),(169,'2022_11_02_080444_add_tax_info',12),(170,'2023_02_01_062030_add_store_translations',12),(171,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(172,'2023_02_17_023648_fix_store_prefix',12),(173,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(174,'2024_05_07_082630_create_mp_messages_table',12),(175,'2017_10_24_154832_create_newsletter_table',13),(176,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(177,'2017_05_18_080441_create_payment_tables',14),(178,'2021_03_27_144913_add_customer_type_into_table_payments',14),(179,'2021_05_24_034720_make_column_currency_nullable',14),(180,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(181,'2021_10_19_020859_update_metadata_field',14),(182,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(183,'2022_07_07_153354_update_charge_id_in_table_payments',14),(184,'2017_07_11_140018_create_simple_slider_table',15),(185,'2016_10_07_193005_create_translations_table',16),(186,'2023_12_12_105220_drop_translations_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','mekhi15@example.net','+18313947998','658 Jones Court','KN','West Virginia','Gerholdbury',7,'stores/1.png',NULL,'Officiis earum voluptatem vero libero molestias quibusdam sequi. Omnis delectus quaerat praesentium dolor qui qui omnis. Delectus cumque omnis omnis molestiae molestiae consectetur ipsa. Assumenda rerum deserunt omnis consequuntur nam. Sed a qui excepturi. Eligendi sequi modi incidunt est.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(2,'Global Office','lia.mcdermott@example.com','+15865821083','881 Trisha Loaf','DK','Oklahoma','Pattieport',6,'stores/2.png',NULL,'Asperiores quisquam asperiores aut aut nihil. Maxime ullam ea voluptate ex id animi modi. Quibusdam veniam aut in qui et eum. Alias voluptatem minima eum dicta accusamus. Ut voluptatem laudantium ut aperiam esse. Ea veritatis corporis non. Ad quisquam enim dolorem hic dolore quae repellendus sunt. Eum id quod perspiciatis expedita doloremque.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(3,'Young Shop','slemke@example.com','+19103028476','36302 Garret Isle','IL','Tennessee','Marisachester',8,'stores/3.png',NULL,'Sed sunt quidem velit harum impedit. Eum illo maiores fugit quis. Dolorem saepe nihil dolore excepturi sit voluptate enim. Atque sit excepturi aliquam possimus recusandae. Excepturi nesciunt earum voluptate. Ut non quaerat sequi ab voluptate. Optio commodi consequatur aliquam velit vitae esse fuga.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(4,'Global Store','abbey.gleason@example.org','+18329358464','4990 Shania View','BW','Montana','Port Zetta',7,'stores/4.png',NULL,'Similique vero amet est hic officia. Dolores expedita laudantium eius et. Ut molestiae at dolores molestiae tempore corporis et. Ea a consectetur totam ut. Cumque ipsa et est ipsam ut. Dolorem ipsum quo atque minima dolorem voluptatem. Laudantium placeat maiores occaecati dolorem quibusdam velit laboriosam doloremque. Consequuntur et recusandae reprehenderit id omnis totam voluptatem tenetur.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(5,'Robert’s Store','vheller@example.org','+15855007530','46953 Clint Valley','AW','Virginia','South Theomouth',6,'stores/5.png',NULL,'Quas et velit expedita aperiam ea est sed veritatis. Quia maxime quaerat quasi provident magnam. Quidem minima vel aut sit. Eligendi rerum recusandae et at sed deleniti fugiat. Consequatur vitae consequatur tempore et voluptatibus voluptatem cumque. Incidunt autem accusantium vero sed quas maxime. Est est perferendis exercitationem aut voluptatum nam ullam.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(6,'Stouffer','melyssa.herman@example.com','+18105652530','59053 Drake Forge','MV','Arkansas','West Shawnaland',6,'stores/6.png',NULL,'Repellendus aliquam delectus et fugiat sit veritatis. Tempore aliquid voluptatem harum voluptatibus nulla beatae est ut. Velit repellat est nulla consequatur possimus laboriosam cum. Nobis error aut dolorem est ut. Dolore dolorem aperiam dolore quasi et accusamus voluptas. Non laudantium optio et aut ratione. Facere ut rerum incidunt.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(7,'StarKist','godfrey39@example.com','+13465932015','11260 Randall Square Apt. 050','GB','Ohio','North Wendy',2,'stores/7.png',NULL,'Velit soluta aspernatur maxime sed. Soluta labore iure ipsam provident culpa. Nulla natus quis reiciendis aut. Eaque ut dolor nobis earum ut est. Vitae repudiandae sit vitae incidunt non ut sint. Voluptatem a aut est eos minus. Reiciendis iure harum error enim rerum. Consequatur iusto eum dolor molestias. Sit architecto quis aperiam quod numquam ratione asperiores.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL),(8,'Old El Paso','abednar@example.net','+19284568824','9740 Stiedemann Points','BA','Pennsylvania','East Flavieberg',8,'stores/8.png',NULL,'Rerum omnis facere nesciunt. Ad quia dolor aliquam quod veritatis eos. Dolore rerum ex dolore et et molestias. Cumque libero sint delectus quos asperiores neque. Modi natus deserunt inventore velit et ducimus praesentium. Et explicabo facere voluptates iste. Qui qui in impedit quo nulla natus dolores.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-05-28 03:12:59','2024-05-28 03:12:59',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$fNDvmY2CV5ys6XOOPsJk1etI57mhte8WVOsJGkMRYx1G5MGC6t2QS','{\"name\":\"Miss Maegan Sipes DVM\",\"number\":\"+13862448788\",\"full_name\":\"Alessia Schoen\",\"description\":\"Ayla Collier\"}','2024-05-28 03:12:57','2024-05-28 03:12:57','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$k3.viJmgFjYjacQlKW32XegOC0yfT53U1TTq7GBDVlFDVAYOyKEoi','{\"name\":\"Hunter Oberbrunner\",\"number\":\"+19518517593\",\"full_name\":\"Nickolas Dickens IV\",\"description\":\"Colton Boehm\"}','2024-05-28 03:12:57','2024-05-28 03:12:57','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$TVMDj94MfcnvDEHy/a4pPO.GvtZ/Bc.9JlaE3YxY5niJ8d56i/ZMy','{\"name\":\"Josephine Abernathy\",\"number\":\"+12173016704\",\"full_name\":\"Coralie Ryan I\",\"description\":\"Irma Lindgren\"}','2024-05-28 03:12:57','2024-05-28 03:12:57','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$qDLxKRz590eHyusD6jTmoOrB/7E5UVp0/R84u1QP5W0LDd5jNXJgy','{\"name\":\"Leonora Bashirian\",\"number\":\"+19045404688\",\"full_name\":\"Lucinda Welch\",\"description\":\"Prof. Karley Rempel DVM\"}','2024-05-28 03:12:58','2024-05-28 03:12:58','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$ZqS56MILKNHI4EXE5BeveuOami5.mbzmYAy9UMZDWFo/zffEF2Kdq','{\"name\":\"Brook Schinner\",\"number\":\"+12189734997\",\"full_name\":\"Retha Towne\",\"description\":\"Ms. Kenna Schimmel Jr.\"}','2024-05-28 03:12:58','2024-05-28 03:12:58','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$2ZLGybuteqOQlNVnryPbA.jl/dRBJ3xFNBLbjOuuitNYNtlN8z2jO','{\"name\":\"Lynn Ziemann\",\"number\":\"+13256659357\",\"full_name\":\"Ulices West\",\"description\":\"Prof. Maxine Gislason II\"}','2024-05-28 03:12:58','2024-05-28 03:12:58','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$Q7n.Jh2KMzFGfM9gkgpAeePh6hcz2aq7zknXaGpAO446jl9kYTaE6','{\"name\":\"Prof. Cruz Mitchell I\",\"number\":\"+17076004643\",\"full_name\":\"Alek Gerhold\",\"description\":\"Prof. Trevor Beer PhD\"}','2024-05-28 03:12:59','2024-05-28 03:12:59','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" is_autoplay=\"yes\" autoplay_speed=\"5000\" ads=\"VC2C8Q1UGCBG\" background=\"general/slider-bg.jpg\"][/simple-slider]</div><div>[featured-product-categories title=\"Browse by Category\"][/featured-product-categories]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[flash-sale title=\"Top Saver Today\" flash_sale_id=\"1\"][/flash-sale]</div><div>[product-category-products title=\"Just Landing\" category_id=\"23\"][/product-category-products]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[product-collections title=\"Essential Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[featured-posts title=\"Health Daily\" background=\"general/blog-bg.jpg\"\n                        app_enabled=\"1\"\n                        app_title=\"Shop faster with Farmart App\"\n                        app_description=\"Available on both iOS & Android\"\n                        app_bg=\"general/app-bg.png\"\n                        app_android_img=\"general/app-android.png\"\n                        app_android_link=\"#\"\n                        app_ios_img=\"general/app-ios.png\"\n                        app_ios_link=\"#\"][/featured-posts]</div>',1,NULL,'homepage',NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(2,'About us',NULL,1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(3,'Terms Of Use',NULL,1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(4,'Terms &amp; Conditions',NULL,1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(5,'Refund Policy',NULL,1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(6,'Blog','<p>---</p>',1,NULL,'full-width',NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Info\" subtitle=\"Location\" name_1=\"Store\" address_1=\"68 Atlantic Ave St, Brooklyn, NY 90002, USA\" phone_1=\"(+005) 5896 72 78 79\" email_1=\"support@farmart.com\" name_2=\"Warehouse\" address_2=\"172 Richmond Hill Ave St, Stamford, NY 90002, USA\" phone_2=\"(+005) 5896 03 04 05\" show_contact_form=\"1\" ][/contact-info-boxes]</div>',1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(10,'Affiliate',NULL,1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(11,'Career',NULL,1,NULL,NULL,NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01'),(12,'Coming soon','<div>[coming-soon time=\"2025-05-28 10:13:01\" title=\"We’re coming soon.\" subtitle=\"Currently we’re working on our brand new website and will be\nlaunching soon.\" social_title=\"Connect us on social networks\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(4,1),(2,2),(4,2),(2,3),(4,3),(2,4),(4,4),(1,5),(4,5),(1,6),(3,6),(1,7),(3,7),(2,8),(3,8),(1,9),(4,9),(2,10),(3,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',198,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',173,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2008,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1510,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1029,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2294,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1162,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1227,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',793,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1779,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1602,NULL,'2024-05-28 03:13:00','2024-05-28 03:13:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-05-28 03:12:34','2024-05-28 03:12:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-05-28 03:13:02'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-05-28 03:13:02'),(4,'analytics_dashboard_widgets','0','2024-05-28 03:12:23','2024-05-28 03:12:23'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-05-28 03:12:24','2024-05-28 03:12:24'),(6,'api_layer_api_key','',NULL,'2024-05-28 03:13:02'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-05-28 03:12:33','2024-05-28 03:12:33'),(12,'language_hide_default','1',NULL,'2024-05-28 03:13:02'),(14,'language_display','all',NULL,'2024-05-28 03:13:02'),(15,'language_hide_languages','[]',NULL,'2024-05-28 03:13:02'),(16,'ecommerce_store_name','Farmart',NULL,'2024-05-28 03:13:02'),(17,'ecommerce_store_phone','1800979769',NULL,'2024-05-28 03:13:02'),(18,'ecommerce_store_address','502 New Street',NULL,'2024-05-28 03:13:02'),(19,'ecommerce_store_state','Brighton VIC',NULL,'2024-05-28 03:13:02'),(20,'ecommerce_store_city','Brighton VIC',NULL,'2024-05-28 03:13:02'),(21,'ecommerce_store_country','AU',NULL,'2024-05-28 03:13:02'),(22,'simple_slider_using_assets','0',NULL,'2024-05-28 03:13:02'),(23,'media_random_hash','c544969db0c0fc0d3770929265022828',NULL,'2024-05-28 03:13:02'),(24,'payment_cod_status','1',NULL,'2024-05-28 03:13:02'),(25,'payment_bank_transfer_status','1',NULL,'2024-05-28 03:13:02'),(26,'theme','farmart',NULL,'2024-05-28 03:13:02'),(27,'show_admin_bar','1',NULL,'2024-05-28 03:13:02'),(28,'language_switcher_display','dropdown',NULL,'2024-05-28 03:13:02'),(29,'admin_favicon','general/favicon.png',NULL,'2024-05-28 03:13:02'),(30,'admin_logo','general/logo-light.png',NULL,'2024-05-28 03:13:02'),(31,'permalink-botble-blog-models-post','blog',NULL,'2024-05-28 03:13:02'),(32,'permalink-botble-blog-models-category','blog',NULL,'2024-05-28 03:13:02'),(33,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-05-28 03:13:02'),(34,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-05-28 03:13:02'),(35,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-05-28 03:13:02'),(36,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-05-28 03:13:02'),(37,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-05-28 03:13:02'),(38,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-05-28 03:13:02'),(39,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-05-28 03:13:02'),(40,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-05-28 03:13:02'),(41,'ecommerce_product_sku_format','FM-2443-%s%s%s%s',NULL,'2024-05-28 03:13:02'),(42,'theme-farmart-site_title','Farmart - Laravel Ecommerce system',NULL,NULL),(43,'theme-farmart-seo_description','Farmart is a modern and flexible Multipurpose Marketplace Laravel script. This script is suited for electronic, organic and grocery store, furniture store, clothing store, hitech store and accessories store… With the theme, you can create your own marketplace and allow vendors to sell just like Amazon, Envato, eBay…',NULL,NULL),(44,'theme-farmart-copyright','©2024 Farmart. All Rights Reserved.',NULL,NULL),(45,'theme-farmart-favicon','general/favicon.png',NULL,NULL),(46,'theme-farmart-logo','general/logo.png',NULL,NULL),(47,'theme-farmart-seo_og_image','general/open-graph-image.png',NULL,NULL),(48,'theme-farmart-image-placeholder','general/placeholder.png',NULL,NULL),(49,'theme-farmart-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(50,'theme-farmart-hotline','8 800 332 65-66',NULL,NULL),(51,'theme-farmart-email','contact@fartmart.co',NULL,NULL),(52,'theme-farmart-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(53,'theme-farmart-payment_methods_image','general/footer-payments.png',NULL,NULL),(54,'theme-farmart-homepage_id','1',NULL,NULL),(55,'theme-farmart-blog_page_id','6',NULL,NULL),(56,'theme-farmart-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-farmart-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(58,'theme-farmart-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-farmart-number_of_products_per_page','40',NULL,NULL),(60,'theme-farmart-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-farmart-logo_in_the_checkout_page','general/logo.png',NULL,NULL),(62,'theme-farmart-logo_in_invoices','general/logo.png',NULL,NULL),(63,'theme-farmart-logo_vendor_dashboard','general/logo.png',NULL,NULL),(64,'theme-farmart-404_page_image','general/404.png',NULL,NULL),(65,'theme-farmart-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#3b5999\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#000\"}],[{\"key\":\"name\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#0a66c2\"}]]',NULL,NULL),(66,'theme-farmart-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#3b5999\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-twitter\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#55acee\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#b10c0c\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#0271ae\"}]]',NULL,NULL),(67,'theme-farmart-primary_font','Mulish',NULL,NULL),(68,'theme-farmart-newsletter_popup_enable','1',NULL,NULL),(69,'theme-farmart-newsletter_popup_image','general/newsletter-popup.png',NULL,NULL),(70,'theme-farmart-newsletter_popup_title','Subscribe Now',NULL,NULL),(71,'theme-farmart-newsletter_popup_subtitle','Newsletter',NULL,NULL),(72,'theme-farmart-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/01.jpg','/products',NULL,1,'2024-05-28 03:13:01','2024-05-28 03:13:01'),(2,1,'Slider 2','sliders/02.jpg','/products',NULL,2,'2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-05-28 03:13:01','2024-05-28 03:13:01');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-28 03:12:35','2024-05-28 03:12:35'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-28 03:12:35','2024-05-28 03:12:35'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-28 03:12:35','2024-05-28 03:12:35'),(4,'farmart',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-28 03:12:35','2024-05-28 03:12:35'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-05-28 03:12:35','2024-05-28 03:12:35'),(6,'fruits-vegetables',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(7,'fruits',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(8,'apples',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(9,'bananas',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(10,'berries',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(11,'oranges-easy-peelers',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(12,'grapes',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(13,'lemons-limes',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(14,'peaches-nectarines',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(15,'pears',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(16,'melon',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(17,'avocados',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(18,'plums-apricots',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(19,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(20,'potatoes',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(21,'carrots-root-vegetables',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(22,'broccoli-cauliflower',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(23,'cabbage-spinach-greens',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(24,'onions-leeks-garlic',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(25,'mushrooms',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(26,'tomatoes',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(27,'beans-peas-sweetcorn',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(28,'freshly-drink-orange-juice',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(29,'breads-sweets',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(30,'crisps-snacks-nuts',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(31,'crisps-popcorn',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(32,'nuts-seeds',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(33,'lighter-options',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(34,'cereal-bars',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(35,'breadsticks-pretzels',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(36,'fruit-snacking',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(37,'rice-corn-cakes',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(38,'protein-energy-snacks',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(39,'toddler-snacks',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(40,'meat-snacks',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(41,'beans',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(42,'lentils',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(43,'chickpeas',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(44,'tins-cans',39,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(45,'tomatoes',40,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(46,'baked-beans-spaghetti',41,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(47,'fish',42,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(48,'beans-pulses',43,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(49,'fruit',44,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(50,'coconut-milk-cream',45,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(51,'lighter-options',46,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(52,'olives',47,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(53,'sweetcorn',48,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(54,'carrots',49,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(55,'peas',50,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(56,'mixed-vegetables',51,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(57,'frozen-seafoods',52,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(58,'raw-meats',53,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(59,'wines-alcohol-drinks',54,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(60,'ready-meals',55,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(61,'meals-for-1',56,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(62,'meals-for-2',57,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(63,'indian',58,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(64,'italian',59,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(65,'chinese',60,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(66,'traditional-british',61,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(67,'thai-oriental',62,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(68,'mediterranean-moroccan',63,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(69,'mexican-caribbean',64,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(70,'lighter-meals',65,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(71,'lunch-veg-pots',66,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(72,'salad-herbs',67,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(73,'salad-bags',68,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(74,'cucumber',69,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(75,'tomatoes',70,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(76,'lettuce',71,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(77,'lunch-salad-bowls',72,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(78,'lunch-salad-bowls',73,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(79,'fresh-herbs',74,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(80,'avocados',75,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(81,'peppers',76,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(82,'coleslaw-potato-salad',77,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(83,'spring-onions',78,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(84,'chilli-ginger-garlic',79,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(85,'tea-coffee',80,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(86,'milks-and-dairies',81,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(87,'pet-foods',82,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(88,'food-cupboard',83,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-05-28 03:12:35','2024-05-28 03:12:35'),(89,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-28 03:12:39','2024-05-28 03:12:39'),(90,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-28 03:12:39','2024-05-28 03:12:39'),(91,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-28 03:12:39','2024-05-28 03:12:39'),(92,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-28 03:12:39','2024-05-28 03:12:39'),(93,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-28 03:12:39','2024-05-28 03:12:39'),(94,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-05-28 03:12:39','2024-05-28 03:12:39'),(95,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:12:47'),(96,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:12:47'),(97,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:12:47'),(98,'red-black-headphone-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:13:03'),(99,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:12:47'),(100,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:12:47'),(101,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:12:47'),(102,'smart-televisions-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:47','2024-05-28 03:13:03'),(103,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(104,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(105,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(106,'epsion-plaster-printer-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:13:03'),(107,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(108,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(109,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(110,'apple-macbook-air-retina-12-inch-laptop-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:13:03'),(111,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:48','2024-05-28 03:12:48'),(112,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:49','2024-05-28 03:12:49'),(113,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:49','2024-05-28 03:12:49'),(114,'nyx-beauty-couton-pallete-makeup-12-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:49','2024-05-28 03:13:03'),(115,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:49','2024-05-28 03:12:49'),(116,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:49','2024-05-28 03:12:49'),(117,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:49','2024-05-28 03:12:49'),(118,'vimto-squash-remix-apple-15-litres-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:50','2024-05-28 03:13:03'),(119,'crock-pot-slow-cooker',25,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(120,'taylors-of-harrogate-yorkshire-coffee',26,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(121,'soft-mochi-galeto-ice-cream',27,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(122,'naked-noodle-egg-noodles-singapore-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:13:03'),(123,'saute-pan-silver',29,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(124,'bar-s-classic-bun-length-franks',30,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(125,'broccoli-crowns',31,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(126,'slimming-world-vegan-mac-greens-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:13:03'),(127,'haagen-dazs-salted-caramel',33,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(128,'iceland-3-solo-exotic-burst',34,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(129,'extreme-budweiser-light-can',35,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(130,'iceland-macaroni-cheese-traybake-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:13:03'),(131,'dolmio-bolognese-pasta-sauce',37,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(132,'sitema-bakeit-plastic-box',38,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(133,'wayfair-basics-dinner-plate-storage',39,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(134,'miko-the-panda-water-bottle-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:13:03'),(135,'sesame-seed-bread',41,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(136,'morrisons-the-best-beef',42,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(137,'avocado-hass-large',43,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(138,'italia-beef-lasagne-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:13:03'),(139,'maxwell-house-classic-roast-mocha',45,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(140,'bottled-pure-water-500ml',46,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(141,'famart-farmhouse-soft-white',47,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:12:51'),(142,'coca-cola-original-taste-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:51','2024-05-28 03:13:03'),(143,'casillero-diablo-cabernet-sauvignon',49,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(144,'arla-organic-free-range-milk',50,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(145,'aptamil-follow-on-baby-milk',51,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(146,'cuisinart-chefs-classic-hard-anodized-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:13:03'),(147,'corn-yellow-sweet',53,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(148,'hobnobs-the-nobbly-biscuit',54,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(149,'honest-organic-still-lemonade',55,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(150,'ice-becks-beer-350ml-x-24-pieces-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:13:03'),(151,'iceland-6-hot-cross-buns',57,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(152,'iceland-luxury-4-panini-rolls',58,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(153,'iceland-soft-scoop-vanilla',59,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(154,'iceland-spaghetti-bolognese-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:13:03'),(155,'kelloggs-coco-pops-cereal',61,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(156,'kit-kat-chunky-milk-chocolate',62,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(157,'large-green-bell-pepper',63,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(158,'pice-94w-beasley-journal-digital',64,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:13:03'),(159,'province-piece-glass-drinking-glass',65,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:12:52','2024-05-28 03:12:52'),(160,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(161,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(162,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(163,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(164,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(165,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(166,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(167,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-05-28 03:12:59','2024-05-28 03:12:59'),(168,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(169,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(170,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(171,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(172,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 03:13:00','2024-05-28 03:13:00'),(173,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 03:13:00','2024-05-28 03:13:00'),(174,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 03:13:00','2024-05-28 03:13:00'),(175,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 03:13:00','2024-05-28 03:13:00'),(176,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-05-28 03:13:00','2024-05-28 03:13:00'),(177,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(178,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(179,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(180,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(181,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(182,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(183,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(184,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(185,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(186,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(187,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-05-28 03:13:00','2024-05-28 03:13:01'),(188,'home',1,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(189,'about-us',2,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(190,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(191,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(192,'refund-policy',5,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(193,'blog',6,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(194,'faqs',7,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(195,'contact',8,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(196,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(197,'affiliate',10,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(198,'career',11,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(199,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-05-28 03:13:01','2024-05-28 03:13:01'),(200,'dual-camera-20mp',66,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(201,'smart-watch-external',67,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(202,'smart-watch-external',68,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(203,'nikon-hd-camera',69,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(204,'nikon-hd-camera',70,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(205,'smart-televisions-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(206,'samsung-smart-phone',72,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(207,'samsung-smart-phone',73,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(208,'epsion-plaster-printer-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(209,'epsion-plaster-printer-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(210,'epsion-plaster-printer-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(211,'sound-intone-i65-earphone-white-version',77,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(212,'sound-intone-i65-earphone-white-version',78,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(213,'sound-intone-i65-earphone-white-version',79,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(214,'apple-macbook-air-retina-12-inch-laptop-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(215,'apple-macbook-air-retina-12-inch-laptop-digital',81,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(216,'aveeno-moisturizing-body-shower-450ml',82,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(217,'aveeno-moisturizing-body-shower-450ml',83,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(218,'nyx-beauty-couton-pallete-makeup-12-digital',84,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(219,'nyx-beauty-couton-pallete-makeup-12-digital',85,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(220,'nyx-beauty-couton-pallete-makeup-12-digital',86,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(221,'vimto-squash-remix-apple-15-litres-digital',87,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(222,'vimto-squash-remix-apple-15-litres-digital',88,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(223,'soft-mochi-galeto-ice-cream',89,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(224,'soft-mochi-galeto-ice-cream',90,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(225,'saute-pan-silver',91,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(226,'saute-pan-silver',92,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(227,'iceland-3-solo-exotic-burst',93,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(228,'iceland-macaroni-cheese-traybake-digital',94,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(229,'iceland-macaroni-cheese-traybake-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(230,'iceland-macaroni-cheese-traybake-digital',96,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(231,'iceland-macaroni-cheese-traybake-digital',97,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(232,'iceland-macaroni-cheese-traybake-digital',98,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(233,'wayfair-basics-dinner-plate-storage',99,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(234,'wayfair-basics-dinner-plate-storage',100,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(235,'avocado-hass-large',101,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(236,'italia-beef-lasagne-digital',102,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(237,'italia-beef-lasagne-digital',103,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(238,'italia-beef-lasagne-digital',104,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(239,'italia-beef-lasagne-digital',105,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(240,'bottled-pure-water-500ml',106,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(241,'bottled-pure-water-500ml',107,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(242,'bottled-pure-water-500ml',108,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(243,'coca-cola-original-taste-digital',109,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(244,'casillero-diablo-cabernet-sauvignon',110,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(245,'arla-organic-free-range-milk',111,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(246,'arla-organic-free-range-milk',112,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(247,'aptamil-follow-on-baby-milk',113,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(248,'aptamil-follow-on-baby-milk',114,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(249,'aptamil-follow-on-baby-milk',115,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(250,'cuisinart-chefs-classic-hard-anodized-digital',116,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(251,'hobnobs-the-nobbly-biscuit',117,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(252,'hobnobs-the-nobbly-biscuit',118,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(253,'hobnobs-the-nobbly-biscuit',119,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(254,'honest-organic-still-lemonade',120,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(255,'ice-becks-beer-350ml-x-24-pieces-digital',121,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(256,'ice-becks-beer-350ml-x-24-pieces-digital',122,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(257,'iceland-6-hot-cross-buns',123,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(258,'iceland-soft-scoop-vanilla',124,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(259,'iceland-soft-scoop-vanilla',125,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(260,'iceland-soft-scoop-vanilla',126,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(261,'iceland-soft-scoop-vanilla',127,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(262,'kit-kat-chunky-milk-chocolate',128,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(263,'kit-kat-chunky-milk-chocolate',129,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(264,'pice-94w-beasley-journal-digital',130,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(265,'pice-94w-beasley-journal-digital',131,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(266,'pice-94w-beasley-journal-digital',132,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(267,'pice-94w-beasley-journal-digital',133,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03'),(268,'pice-94w-beasley-journal-digital',134,'Botble\\Ecommerce\\Models\\Product','products','2024-05-28 03:13:03','2024-05-28 03:13:03');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 03:13:00','2024-05-28 03:13:00'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 03:13:00','2024-05-28 03:13:00'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 03:13:00','2024-05-28 03:13:00'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 03:13:00','2024-05-28 03:13:00'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-05-28 03:13:00','2024-05-28 03:13:00');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'madaline43@schaefer.com',NULL,'$2y$12$AqJOl93SUqIKKOUPrAgK0u3VHfc6vHTU/Dw7tUArRe8sxRMTigDuG',NULL,'2024-05-28 03:12:34','2024-05-28 03:12:34','Lempi','Mann','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','farmart',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Farmart \\u2013 Your Online Foods & Grocery\",\"about\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus viverra iaculis. Etiam vulputate et justo eget scelerisque.\",\"phone\":\"(+965) 7492-4277\",\"address\":\"959 Homestead Street Eastlake, NYC\",\"email\":\"support@farmart.com\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(2,'CustomMenuWidget','footer_sidebar','farmart',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(3,'CustomMenuWidget','footer_sidebar','farmart',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Help Center\",\"menu_id\":\"help-center\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(4,'CustomMenuWidget','footer_sidebar','farmart',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(5,'NewsletterWidget','footer_sidebar','farmart',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"subtitle\":\"Register now to get updates on promotions and coupon. Don\\u2019t worry! We not spam\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(6,'BlogSearchWidget','primary_sidebar','farmart',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(7,'BlogCategoriesWidget','primary_sidebar','farmart',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(8,'RecentPostsWidget','primary_sidebar','farmart',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(9,'BlogTagsWidget','primary_sidebar','farmart',4,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(10,'SiteFeaturesWidget','pre_footer_sidebar','farmart',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"100% Secure Payment\",\"subtitle\":\"Guarantee secure payments\"},\"4\":{\"icon\":\"general\\/icon-support.png\",\"title\":\"24\\/7 Dedicated Support\",\"subtitle\":\"Anywhere & anytime\"},\"5\":{\"icon\":\"general\\/icon-tag.png\",\"title\":\"Daily Offers\",\"subtitle\":\"Discount up to 70% OFF\"}}}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(11,'AdsWidget','products_list_sidebar','farmart',1,'{\"id\":\"AdsWidget\",\"title\":\"Ads\",\"ads_key\":\"ZDOZUZZIU7FZ\",\"background\":\"general\\/background.jpg\",\"size\":\"full-width\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(12,'SiteFeaturesWidget','product_detail_sidebar','farmart',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"Secure Payment\",\"subtitle\":\"Guarantee secure payments\"}}}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(13,'SiteInfoWidget','product_detail_sidebar','farmart',2,'{\"id\":\"SiteInfoWidget\",\"name\":\"Store information\",\"phone\":\"(+965) 7492-4277\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(14,'BecomeVendorWidget','product_detail_sidebar','farmart',3,'{\"id\":\"BecomeVendorWidget\",\"name\":\"Become a Vendor?\"}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(15,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(16,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(17,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(18,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2024-05-28 03:13:02','2024-05-28 03:13:02'),(19,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2024-05-28 03:13:02','2024-05-28 03:13:02');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-28 17:13:05
