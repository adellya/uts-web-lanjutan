-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dbweb4
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Kampus','Kategori yang mengupas seputar kegiatan kampus.'),(2,'Gaya Hidup','Kategori yang mengupas seputar kegiatan gaya hidup.'),(3,'Fashion','Kategori yang mengupas seputar kegiatan fashion.');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'2021-06-13','Selamat datang di Website Kami','selamat-datang-di-website-kami','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec justo tortor, condimentum ac odio eu, sollicitudin semper orci. Fusce at iaculis lacus. Vivamus ultrices enim ac egestas congue. Curabitur sit amet scelerisque libero. Phasellus vel fringilla massa. Maecenas vitae massa pretium, molestie nisl non, egestas purus. Fusce dignissim, sem in maximus auctor, lectus nisi egestas tellus, imperdiet rhoncus magna lorem ut risus. Cras tincidunt, magna vel placerat malesuada, justo mi fermentum eros, in lobortis dolor sem ornare tellus.\n\nAenean vitae neque et mi lobortis pulvinar. Nunc id mauris id diam varius sagittis. Fusce pretium odio purus. Morbi eu mollis nisi. Phasellus auctor, eros id commodo molestie, justo quam placerat lectus, eu porta massa mi ultrices ante. Maecenas in mattis mi. Morbi convallis aliquam euismod. Nulla vehicula enim quis erat facilisis lobortis. Nam nec magna nec magna porta fringilla.\n\nDonec eu nisl porta, dignissim ante quis, gravida diam. Quisque ullamcorper at urna quis lobortis. In dictum velit ac congue sollicitudin. Nulla mattis tellus ligula, porta aliquet nisi hendrerit a. Sed lacinia volutpat magna lacinia lobortis. Nulla interdum risus elementum ipsum vestibulum, quis elementum est tristique. Vestibulum fringilla at nulla a cursus. Cras quis felis ut felis luctus vestibulum. Phasellus viverra neque ac accumsan pulvinar. Cras rutrum purus quis laoreet congue.\n\nMorbi ac enim volutpat, pellentesque nisi sed, convallis velit. Fusce nec diam pulvinar nunc lacinia sagittis. Curabitur a dolor vitae tellus placerat rutrum. Etiam ex dui, viverra eu dapibus non, tincidunt a sapien. Nullam odio nunc, porta ac tellus sed, finibus malesuada dui. Sed commodo vestibulum aliquet. Aliquam suscipit vel dui in rutrum. Integer cursus tincidunt mollis. Praesent interdum neque volutpat neque mattis porta. Ut ac tincidunt erat. Praesent mi tortor, dictum quis velit et, facilisis commodo enim.\n\nMauris aliquet elit nec augue congue euismod. Nulla facilisi. Etiam in bibendum sapien. Proin massa purus, eleifend ac consequat at, vestibulum vitae lorem. Nam ligula enim, molestie at nibh et, ullamcorper interdum lacus. Suspendisse vitae ante sed dui condimentum auctor vel vitae est. Sed ut elit in dui fermentum interdum nec at risus. Praesent condimentum consequat condimentum. Cras suscipit diam ut turpis ullamcorper sagittis. Maecenas nunc dui, commodo vitae blandit eget, ornare in dui. Proin vel maximus sem, sed blandit nisi. Pellentesque sollicitudin sagittis magna, id dapibus nunc ultrices non. Suspendisse nec fringilla sem, sed tempor massa. Nullam facilisis luctus urna, nec pharetra nibh eleifend at.',1),(2,'2021-06-12','Mutasi Covid-19','mutasi-covid-19','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec justo tortor, condimentum ac odio eu, sollicitudin semper orci. Fusce at iaculis lacus. Vivamus ultrices enim ac egestas congue. Curabitur sit amet scelerisque libero. Phasellus vel fringilla massa. Maecenas vitae massa pretium, molestie nisl non, egestas purus. Fusce dignissim, sem in maximus auctor, lectus nisi egestas tellus, imperdiet rhoncus magna lorem ut risus. Cras tincidunt, magna vel placerat malesuada, justo mi fermentum eros, in lobortis dolor sem ornare tellus.\n\nAenean vitae neque et mi lobortis pulvinar. Nunc id mauris id diam varius sagittis. Fusce pretium odio purus. Morbi eu mollis nisi. Phasellus auctor, eros id commodo molestie, justo quam placerat lectus, eu porta massa mi ultrices ante. Maecenas in mattis mi. Morbi convallis aliquam euismod. Nulla vehicula enim quis erat facilisis lobortis. Nam nec magna nec magna porta fringilla.\n\nDonec eu nisl porta, dignissim ante quis, gravida diam. Quisque ullamcorper at urna quis lobortis. In dictum velit ac congue sollicitudin. Nulla mattis tellus ligula, porta aliquet nisi hendrerit a. Sed lacinia volutpat magna lacinia lobortis. Nulla interdum risus elementum ipsum vestibulum, quis elementum est tristique. Vestibulum fringilla at nulla a cursus. Cras quis felis ut felis luctus vestibulum. Phasellus viverra neque ac accumsan pulvinar. Cras rutrum purus quis laoreet congue.\n\nMorbi ac enim volutpat, pellentesque nisi sed, convallis velit. Fusce nec diam pulvinar nunc lacinia sagittis. Curabitur a dolor vitae tellus placerat rutrum. Etiam ex dui, viverra eu dapibus non, tincidunt a sapien. Nullam odio nunc, porta ac tellus sed, finibus malesuada dui. Sed commodo vestibulum aliquet. Aliquam suscipit vel dui in rutrum. Integer cursus tincidunt mollis. Praesent interdum neque volutpat neque mattis porta. Ut ac tincidunt erat. Praesent mi tortor, dictum quis velit et, facilisis commodo enim.\n\nMauris aliquet elit nec augue congue euismod. Nulla facilisi. Etiam in bibendum sapien. Proin massa purus, eleifend ac consequat at, vestibulum vitae lorem. Nam ligula enim, molestie at nibh et, ullamcorper interdum lacus. Suspendisse vitae ante sed dui condimentum auctor vel vitae est. Sed ut elit in dui fermentum interdum nec at risus. Praesent condimentum consequat condimentum. Cras suscipit diam ut turpis ullamcorper sagittis. Maecenas nunc dui, commodo vitae blandit eget, ornare in dui. Proin vel maximus sem, sed blandit nisi. Pellentesque sollicitudin sagittis magna, id dapibus nunc ultrices non. Suspendisse nec fringilla sem, sed tempor massa. Nullam facilisis luctus urna, nec pharetra nibh eleifend at.',1),(3,'2021-06-12','2021 Belajar Daring','2021-belajar-daring','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec justo tortor, condimentum ac odio eu, sollicitudin semper orci. Fusce at iaculis lacus. Vivamus ultrices enim ac egestas congue. Curabitur sit amet scelerisque libero. Phasellus vel fringilla massa. Maecenas vitae massa pretium, molestie nisl non, egestas purus. Fusce dignissim, sem in maximus auctor, lectus nisi egestas tellus, imperdiet rhoncus magna lorem ut risus. Cras tincidunt, magna vel placerat malesuada, justo mi fermentum eros, in lobortis dolor sem ornare tellus.\n\nAenean vitae neque et mi lobortis pulvinar. Nunc id mauris id diam varius sagittis. Fusce pretium odio purus. Morbi eu mollis nisi. Phasellus auctor, eros id commodo molestie, justo quam placerat lectus, eu porta massa mi ultrices ante. Maecenas in mattis mi. Morbi convallis aliquam euismod. Nulla vehicula enim quis erat facilisis lobortis. Nam nec magna nec magna porta fringilla.\n\nDonec eu nisl porta, dignissim ante quis, gravida diam. Quisque ullamcorper at urna quis lobortis. In dictum velit ac congue sollicitudin. Nulla mattis tellus ligula, porta aliquet nisi hendrerit a. Sed lacinia volutpat magna lacinia lobortis. Nulla interdum risus elementum ipsum vestibulum, quis elementum est tristique. Vestibulum fringilla at nulla a cursus. Cras quis felis ut felis luctus vestibulum. Phasellus viverra neque ac accumsan pulvinar. Cras rutrum purus quis laoreet congue.\n\nMorbi ac enim volutpat, pellentesque nisi sed, convallis velit. Fusce nec diam pulvinar nunc lacinia sagittis. Curabitur a dolor vitae tellus placerat rutrum. Etiam ex dui, viverra eu dapibus non, tincidunt a sapien. Nullam odio nunc, porta ac tellus sed, finibus malesuada dui. Sed commodo vestibulum aliquet. Aliquam suscipit vel dui in rutrum. Integer cursus tincidunt mollis. Praesent interdum neque volutpat neque mattis porta. Ut ac tincidunt erat. Praesent mi tortor, dictum quis velit et, facilisis commodo enim.\n\nMauris aliquet elit nec augue congue euismod. Nulla facilisi. Etiam in bibendum sapien. Proin massa purus, eleifend ac consequat at, vestibulum vitae lorem. Nam ligula enim, molestie at nibh et, ullamcorper interdum lacus. Suspendisse vitae ante sed dui condimentum auctor vel vitae est. Sed ut elit in dui fermentum interdum nec at risus. Praesent condimentum consequat condimentum. Cras suscipit diam ut turpis ullamcorper sagittis. Maecenas nunc dui, commodo vitae blandit eget, ornare in dui. Proin vel maximus sem, sed blandit nisi. Pellentesque sollicitudin sagittis magna, id dapibus nunc ultrices non. Suspendisse nec fringilla sem, sed tempor massa. Nullam facilisis luctus urna, nec pharetra nibh eleifend at.',1);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','12345678');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 22:01:39
