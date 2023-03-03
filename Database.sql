-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

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
-- Table structure for table `List_Of_Games`
--

DROP TABLE IF EXISTS `List_Of_Games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `List_Of_Games` (
  `key_game` varchar(0) DEFAULT NULL,
  `name_game` varchar(0) DEFAULT NULL,
  `link_store_game` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `List_Of_Games`
--

LOCK TABLES `List_Of_Games` WRITE;
/*!40000 ALTER TABLE `List_Of_Games` DISABLE KEYS */;
/*!40000 ALTER TABLE `List_Of_Games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `List_Of_Platforms`
--

DROP TABLE IF EXISTS `List_Of_Platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `List_Of_Platforms` (
  `key_platform` tinyint(4) DEFAULT NULL,
  `name_platform` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `List_Of_Platforms`
--

LOCK TABLES `List_Of_Platforms` WRITE;
/*!40000 ALTER TABLE `List_Of_Platforms` DISABLE KEYS */;
INSERT INTO `List_Of_Platforms` VALUES (1,'Twitch'),(2,'Trovo'),(3,'DonationAlerts');
/*!40000 ALTER TABLE `List_Of_Platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `List_Of_Users`
--

DROP TABLE IF EXISTS `List_Of_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `List_Of_Users` (
  `key_user` varchar(0) DEFAULT NULL,
  `nickname` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `List_Of_Users`
--

LOCK TABLES `List_Of_Users` WRITE;
/*!40000 ALTER TABLE `List_Of_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `List_Of_Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type_Of_Voting`
--

DROP TABLE IF EXISTS `Type_Of_Voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type_Of_Voting` (
  `key_voting` tinyint(4) DEFAULT NULL,
  `name_voting` varchar(12) DEFAULT NULL,
  `platform_voting` tinyint(4) DEFAULT NULL,
  `date_insert_voting` varchar(19) DEFAULT NULL,
  `equal_one_point` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type_Of_Voting`
--

LOCK TABLES `Type_Of_Voting` WRITE;
/*!40000 ALTER TABLE `Type_Of_Voting` DISABLE KEYS */;
INSERT INTO `Type_Of_Voting` VALUES (1,'Баллы канала',1,'2023-03-03 00:00:00',100);
/*!40000 ALTER TABLE `Type_Of_Voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voting_By_Users`
--

DROP TABLE IF EXISTS `Voting_By_Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Voting_By_Users` (
  `key_voting` varchar(0) DEFAULT NULL,
  `user_key` varchar(0) DEFAULT NULL,
  `platform_key` varchar(0) DEFAULT NULL,
  `game_key` varchar(0) DEFAULT NULL,
  `quantity_voting` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voting_By_Users`
--

LOCK TABLES `Voting_By_Users` WRITE;
/*!40000 ALTER TABLE `Voting_By_Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Voting_By_Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29 11:52:08
