-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `Articles`
--

DROP TABLE IF EXISTS `Articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `authorid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Articles`
--

LOCK TABLES `Articles` WRITE;
/*!40000 ALTER TABLE `Articles` DISABLE KEYS */;
INSERT INTO `Articles` VALUES (1,'Ð ÐµÑ‡ÑŒ ÑÑ‚Ð°Ð½ÐµÑ‚ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð»ÑƒÑ‡ÑˆÐµ, ÐµÑÐ»Ð¸ Ð²Ñ‹ÑÑ‚ÑƒÐ¿Ð°ÑŽÑ‰Ð¸Ð¹ Ð±ÑƒÐ´ÐµÑ‚ ÑÐ¾Ñ…Ñ€Ð°Ð½ÑÑ‚ÑŒ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ Ð°ÑƒÐ´Ð¸Ñ‚Ð¾Ñ€Ð¸Ð¸ Ð¿Ñ€Ð¸Ð¼ÐµÑ€Ð½Ð¾ Ð½Ð° Ð¾Ð´Ð½Ð¾Ð¼ ÑƒÑ€Ð¾Ð²Ð½Ðµ, Ð²Ñ‹Ð´ÐµÐ»ÑÑ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ‚Ðµ ÑÐ»Ð¾Ð²Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¾Ñ‚Ñ€Ð°Ð¶Ð°ÑŽÑ‚ Ð¾ÑÐ½Ð¾Ð²Ð½Ñ‹Ðµ Ð¸Ð´ÐµÐ¸ Ð¸ Ð¼Ñ‹ÑÐ»Ð¸. ÐŸÑ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð¾Ñ€Ð°Ñ‚Ð¾Ñ€ Ð·Ð°ÑÑ‚Ð°Ð²Ð»ÑÐµÑ‚ Ð²Ð°Ð¶Ð½Ñ‹Ðµ ÑÐ»Ð¾Ð²Ð° \"Ð²Ñ‹ÑÑ‚ÑƒÐ¿Ð°Ñ‚ÑŒ\" Ð¿Ð¾Ð´Ð¾Ð±Ð½Ð¾ Ð³Ð¾Ñ€Ð½Ñ‹Ð¼ Ð²ÐµÑ€ÑˆÐ¸Ð½Ð°Ð¼, Ð° Ð½ÐµÐ²Ð°Ð¶Ð½Ñ‹Ðµ ÑÐ»Ð¾Ð²Ð° \"Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ\" ÐºÐ°Ðº Ñ€ÑƒÑÐ»Ð¾ Ñ€ÐµÐºÐ¸.','2018-07-22 16:44:52',8),(2,'Ð§Ñ‚Ð¾Ð±Ñ‹ Ð²Ñ‹Ð´ÐµÐ»Ð¸Ñ‚ÑŒ ÑÐ»Ð¾Ð²Ð¾, Ð¿Ñ€Ð¾Ð¸Ð·Ð½ÐµÑÐ¸Ñ‚Ðµ ÐµÐ³Ð¾ Ð½Ðµ Ñ‚Ð°Ðº, ÐºÐ°Ðº Ð¿Ñ€Ð¾Ð¸Ð·Ð½Ð¾ÑÐ¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¸Ðµ. Ð•ÑÐ»Ð¸ Ð²Ñ‹ Ð³Ð¾Ð²Ð¾Ñ€Ð¸Ð»Ð¸ Ð³Ñ€Ð¾Ð¼ÐºÐ¾, Ñ‚Ð¾ Ð¿Ñ€Ð¾Ð³Ð¾Ð²Ð¾Ñ€Ð¸Ñ‚Ðµ Ð²Ð°Ð¶Ð½Ð¾ ÑÐ»Ð¾Ð²Ð¾ Ð½Ð°Ð¿Ñ€ÑÐ¶ÐµÐ½Ð½Ñ‹Ð¼ ÑˆÐµÐ¿Ð¾Ñ‚Ð¾Ð¼ - Ð¸ Ð²Ñ‹ Ð¿Ñ€Ð¸Ð²Ð»ÐµÑ‡ÐµÑ‚Ðµ Ðº Ð½ÐµÐ¼Ñƒ Ð´Ð¾Ð»Ð¶Ð½Ð¾Ðµ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ. Ð•ÑÐ»Ð¸ Ð³Ð¾Ð²Ð¾Ñ€Ð¸Ð»Ð¸ Ð±Ñ‹ÑÑ‚Ñ€Ð¾, ÑÐºÐ°Ð¶Ð¸Ñ‚Ðµ Ð½ÑƒÐ¶Ð½Ð¾ ÑÐ»Ð¾Ð²Ð¾ Ð¼ÐµÐ´Ð»ÐµÐ½Ð½Ð¾.','2018-07-22 17:25:03',8),(3,'Ð ÐµÑ‡ÑŒ - ÑÑ‚Ð¾ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð¼Ð¾Ð´Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð°Ñ Ñ„Ð¾Ñ€Ð¼Ð° Ð¿ÐµÐ½Ð¸Ñ: Ð¿Ñ€Ð¸Ð½Ñ†Ð¸Ð¿Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ Ñ€Ð°Ð·Ð½Ð¸Ñ†Ð° Ð¼ÐµÐ¶Ð´Ñƒ Ð½Ð¸Ð¼Ð¸ Ð»Ð¸ÑˆÑŒ Ð² Ñ‚Ð¾Ð¼ Ñ‡Ñ‚Ð¾ Ð¿Ñ€Ð¸ Ð¿ÐµÐ½Ð¸Ð¸ Ð³Ð»Ð°ÑÐ½Ñ‹Ðµ Ð±ÑƒÐºÐ²Ñ‹ Ñ‚ÑÐ½ÑƒÑ‚ÑŒÑÑ Ð´Ð¾Ð»ÑŒÑˆÐµ, Ð° Ð¿Ñ€Ð¾Ð¼ÐµÐ¶ÑƒÑ‚ÐºÐ¸ Ð¼ÐµÐ¶Ð´Ñƒ ÑÐ»Ð¾Ð²Ð°Ð¼Ð¸ - ÐºÐ¾Ñ€Ð¾Ñ‡Ðµ, Ñ‚Ð¾Ð³Ð´Ð° ÐºÐ°Ðº Ð² Ñ€ÐµÑ‡Ð¸ ÑÐ»Ð¾Ð²Ð° Ð¿Ñ€Ð¾Ð¸Ð·Ð½Ð¾ÑÑÑ‚ÑÑ Ð², Ð³Ñ€ÑƒÐ±Ð¾ Ð³Ð¾Ð²Ð¾Ñ€Ñ, Ñ‚Ð¾Ð½Ð°Ñ… \"Ð¡Ñ‚Ð°ÐºÐºÐ°Ñ‚Ð¾\" Ð³Ð»Ð°ÑÐ½Ñ‹Ðµ Ð·Ð²ÑƒÐºÐ¸ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ð¾Ð¼ Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð¼ Ð½Ðµ ÑƒÐ´Ð»Ð¸Ð½ÑÑŽÑ‚ÑÑ, Ð° Ð¿Ð°ÑƒÐ·Ñ‹ Ð¼ÐµÐ¶Ð´Ñƒ ÑÐ»Ð¾Ð²Ð°Ð¼Ð¸ Ð²Ð¾Ð·Ñ€Ð°ÑÑ‚Ð°ÑŽÑ‚...','2018-07-22 18:45:16',8),(4,'ÐžÐ±ÑŠÐµÌÐºÑ‚Ð½Ð¾-Ð¾Ñ€Ð¸ÐµÐ½Ñ‚Ð¸ÌÑ€Ð¾Ð²Ð°Ð½Ð½Ð¾Ðµ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸ÌÑ€Ð¾Ð²Ð°Ð½Ð¸Ðµ (ÐžÐžÐŸ) â€” Ð¼ÐµÑ‚Ð¾Ð´Ð¾Ð»Ð¾Ð³Ð¸Ñ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ, Ð¾ÑÐ½Ð¾Ð²Ð°Ð½Ð½Ð°Ñ Ð½Ð° Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð¸Ð¸ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ñ‹ Ð² Ð²Ð¸Ð´Ðµ ÑÐ¾Ð²Ð¾ÐºÑƒÐ¿Ð½Ð¾ÑÑ‚Ð¸ Ð¾Ð±ÑŠÐµÐºÑ‚Ð¾Ð², ÐºÐ°Ð¶Ð´Ñ‹Ð¹ Ð¸Ð· ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… ÑÐ²Ð»ÑÐµÑ‚ÑÑ ÑÐºÐ·ÐµÐ¼Ð¿Ð»ÑÑ€Ð¾Ð¼ Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»Ñ‘Ð½Ð½Ð¾Ð³Ð¾ ÐºÐ»Ð°ÑÑÐ°, Ð° ÐºÐ»Ð°ÑÑÑ‹ Ð¾Ð±Ñ€Ð°Ð·ÑƒÑŽÑ‚ Ð¸ÐµÑ€Ð°Ñ€Ñ…Ð¸ÑŽ Ð½Ð°ÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ñ[1].\r\n\r\nÐ˜Ð´ÐµÐ¾Ð»Ð¾Ð³Ð¸Ñ‡ÐµÑÐºÐ¸ ÐžÐžÐŸ â€” Ð¿Ð¾Ð´Ñ…Ð¾Ð´ Ðº Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸ÑŽ ÐºÐ°Ðº Ðº Ð¼Ð¾Ð´ÐµÐ»Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸ÑŽ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ñ… Ð¾Ð±ÑŠÐµÐºÑ‚Ð¾Ð², Ñ€ÐµÑˆÐ°ÑŽÑ‰Ð¸Ð¹ Ð½Ð° Ð½Ð¾Ð²Ð¾Ð¼ ÑƒÑ€Ð¾Ð²Ð½Ðµ Ð¾ÑÐ½Ð¾Ð²Ð½ÑƒÑŽ Ð·Ð°Ð´Ð°Ñ‡Ñƒ ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð½Ð¾Ð³Ð¾ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ: ÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¸ Ñ Ñ‚Ð¾Ñ‡ÐºÐ¸ Ð·Ñ€ÐµÐ½Ð¸Ñ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÐµÐ¼Ð¾ÑÑ‚Ð¸[2], Ñ‡Ñ‚Ð¾ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÐµÐ½Ð½Ð¾ ÑƒÐ»ÑƒÑ‡ÑˆÐ°ÐµÑ‚ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÐµÐ¼Ð¾ÑÑ‚ÑŒ ÑÐ°Ð¼Ð¸Ð¼ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÐ¾Ð¼ Ð¼Ð¾Ð´ÐµÐ»Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ, Ñ‡Ñ‚Ð¾ Ð² ÑÐ²Ð¾ÑŽ Ð¾Ñ‡ÐµÑ€ÐµÐ´ÑŒ Ð¾ÑÐ¾Ð±ÐµÐ½Ð½Ð¾ Ð²Ð°Ð¶Ð½Ð¾ Ð¿Ñ€Ð¸ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ð¸ ÐºÑ€ÑƒÐ¿Ð½Ñ‹Ñ… Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð¾Ð².\r\n\r\nÐ£Ð¿Ñ€Ð°Ð²Ð»ÑÐµÐ¼Ð¾ÑÑ‚ÑŒ Ð´Ð»Ñ Ð¸ÐµÑ€Ð°Ñ€Ñ…Ð¸Ñ‡ÐµÑÐºÐ¸Ñ… ÑÐ¸ÑÑ‚ÐµÐ¼ Ð¿Ñ€ÐµÐ´Ð¿Ð¾Ð»Ð°Ð³Ð°ÐµÑ‚ Ð¼Ð¸Ð½Ð¸Ð¼Ð¸Ð·Ð°Ñ†Ð¸ÑŽ Ð¸Ð·Ð±Ñ‹Ñ‚Ð¾Ñ‡Ð½Ð¾ÑÑ‚Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ñ… (Ð°Ð½Ð°Ð»Ð¾Ð³Ð¸Ñ‡Ð½ÑƒÑŽ Ð½Ð¾Ñ€Ð¼Ð°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ð¸) Ð¸ Ð¸Ñ… Ñ†ÐµÐ»Ð¾ÑÑ‚Ð½Ð¾ÑÑ‚ÑŒ, Ð¿Ð¾ÑÑ‚Ð¾Ð¼Ñƒ ÑÐ¾Ð·Ð´Ð°Ð½Ð½Ð¾Ðµ ÑƒÐ´Ð¾Ð±Ð½Ð¾ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÐµÐ¼Ñ‹Ð¼ â€” Ð±ÑƒÐ´ÐµÑ‚ Ð¸ ÑƒÐ´Ð¾Ð±Ð½Ð¾ Ð¿Ð¾Ð½Ð¸Ð¼Ð°Ñ‚ÑŒÑÑ. Ð¢Ð°ÐºÐ¸Ð¼ Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð¼ Ñ‡ÐµÑ€ÐµÐ· Ñ‚Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÑƒÑŽ Ð·Ð°Ð´Ð°Ñ‡Ñƒ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÐµÐ¼Ð¾ÑÑ‚Ð¸ Ñ€ÐµÑˆÐ°ÐµÑ‚ÑÑ ÑÑ‚Ñ€Ð°Ñ‚ÐµÐ³Ð¸Ñ‡ÐµÑÐºÐ°Ñ Ð·Ð°Ð´Ð°Ñ‡Ð° â€” Ñ‚Ñ€Ð°Ð½ÑÐ»Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð¾Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ Ð·Ð°Ð´Ð°Ñ‡Ð¸ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸ÑÑ‚Ð¾Ð¼ Ð² Ð½Ð°Ð¸Ð±Ð¾Ð»ÐµÐµ ÑƒÐ´Ð¾Ð±Ð½ÑƒÑŽ Ð´Ð»Ñ Ð´Ð°Ð»ÑŒÐ½ÐµÐ¹ÑˆÐµÐ³Ð¾ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ñ Ñ„Ð¾Ñ€Ð¼Ñƒ.','2018-07-23 07:30:35',8),(5,'Ð’ Ð²ÐµÐº Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ñ… Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ð¹ Ð´Ð°Ð¶Ðµ ÑÐ°Ð¼Ñ‹Ðµ Ð½ÐµÐ¿Ñ€Ð¾Ð´Ð²Ð¸Ð½ÑƒÑ‚Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸ Ð³Ð°Ð´Ð¶ÐµÑ‚Ð¾Ð² Ð´Ð°Ð²Ð½Ð¾ Ð·Ð°Ð¿Ð¾Ð¼Ð½Ð¸Ð»Ð¸ Ð¿Ñ€Ð¾ÑÑ‚ÑƒÑŽ Ð¸Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸ÑŽ â€” ÐµÑÐ»Ð¸ Ð½Ðµ Ñ…Ð¾Ñ‡ÐµÑˆÑŒ Ð¿Ð¾Ð´Ñ†ÐµÐ¿Ð¸Ñ‚ÑŒ Ð²Ð¸Ñ€ÑƒÑ, Ð½ÐµÐ»ÑŒÐ·Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒÑÑ Ð½ÐµÐ¿Ñ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ð¼Ð¸ Ð¸ÑÑ‚Ð¾Ñ‡Ð½Ð¸ÐºÐ°Ð¼Ð¸. Ðš ÑÐ¾Ð¶Ð°Ð»ÐµÐ½Ð¸ÑŽ, Ñ…Ð°ÐºÐµÑ€ÑÐºÐ¸Ðµ Ñ‚ÐµÑ…Ð½Ð¸ÐºÐ¸ Ð½Ðµ ÑÑ‚Ð¾ÑÑ‚ Ð½Ð° Ð¼ÐµÑÑ‚Ðµ, Ð¸ Ñ‚ÐµÐ¿ÐµÑ€ÑŒ Ð²Ð»Ð°Ð´ÐµÐ»ÑŒÑ†Ñ‹ ÑÐ¼Ð°Ñ€Ñ‚Ñ„Ð¾Ð½Ð¾Ð² Android Ñ€Ð¸ÑÐºÑƒÑŽÑ‚ Ð·Ð°Ñ€Ð°Ð·Ð¸Ñ‚ÑŒÑÑ Ð´Ð°Ð¶Ðµ Ð¿Ð¾ÑÐ»Ðµ ÑÐºÐ°Ñ‡Ð¸Ð²Ð°Ð½Ð¸Ñ Ð¸Ð· Ð¾Ñ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾Ð³Ð¾ Ð¼Ð°Ð³Ð°Ð·Ð¸Ð½Ð° Google Play Store, ÑÐ¾Ð¾Ð±Ñ‰Ð°ÐµÑ‚ Ð¿Ð¾Ñ€Ñ‚Ð°Ð» Bleeping Computer.\r\n\r\n\r\nÐ•ÑÐ»Ð¸ Ð¿Ñ€Ð¸Ð½ÑÑ‚ÑŒ Ð²Ð¾ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ, Ñ‡Ñ‚Ð¾ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð°Ð¼Ð¸ Ð½Ð° Ð±Ð°Ð·Ðµ Android Ð¿Ð¾Ð»ÑŒÐ·ÑƒÑŽÑ‚ÑÑ Ð¾ÐºÐ¾Ð»Ð¾ 80% Ð½Ð°ÑÐµÐ»ÐµÐ½Ð¸Ñ Ð—ÐµÐ¼Ð»Ð¸, Ñ‚Ð¾ Ð¼Ð°ÑÑˆÑ‚Ð°Ð±Ñ‹ ÑÑ‚Ð¾Ð¹ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ ÑÑ‚Ð°Ð½Ð¾Ð²ÑÑ‚ÑÑ ÐºÑƒÐ´Ð° Ð¾Ð¿Ð°ÑÐ½ÐµÐµ. Ð Ð¿Ñ€Ð¸Ñ‡Ð¸Ð½Ð¾Ð¹ Ð¼Ð°ÑÑÐ¾Ð²Ñ‹Ñ… Ð·Ð°Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹ ÑÑ‚Ð°Ð½Ð¾Ð²ÑÑ‚ÑÑ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ðµ Ð²Ð¸Ñ€ÑƒÑÑ‹, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð½Ð°Ð·Ñ‹Ð²Ð°ÑŽÑ‚ÑÑ Ð´Ñ€Ð¾Ð¿Ð¿ÐµÑ€Ñ‹ (Ð¾Ñ‚ Ð°Ð½Ð³Ð». dropper â€” Â«Ð±Ð¾Ð¼Ð±Ð¾ÑÐ±Ñ€Ð°ÑÑ‹Ð²Ð°Ñ‚ÐµÐ»ÑŒÂ»).','2018-07-24 09:09:34',8);
/*!40000 ALTER TABLE `Articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'ÐžÑ€Ð°Ñ‚Ð¾Ñ€ÑÐºÐ¾Ðµ Ð¸ÑÐºÑƒÑÑÑ‚Ð²Ð¾'),(2,'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ'),(3,'ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ'),(4,'Ð“Ð°Ð´Ð¶ÐµÑ‚Ñ‹');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (3,'Vasia','Pupkin','Moskow'),(4,'Boris','Shlupkin','Pokrov'),(5,'Ð“Ñ€Ð¸ÑˆÐ°','Ð¤ÐµÐ´Ð¾Ñ€Ð¾Ð²','Ð’Ð»Ð°Ð´Ð¸Ð²Ð¾ÑÑ‚Ð¾Ðº'),(8,'Vladimir','Beloplotov','Chelyabinsk');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articlecategory`
--

DROP TABLE IF EXISTS `articlecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articlecategory` (
  `articleid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  PRIMARY KEY (`articleid`,`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlecategory`
--

LOCK TABLES `articlecategory` WRITE;
/*!40000 ALTER TABLE `articlecategory` DISABLE KEYS */;
INSERT INTO `articlecategory` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `articlecategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-12 13:19:58
