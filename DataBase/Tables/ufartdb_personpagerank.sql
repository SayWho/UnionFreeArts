-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ufartdb
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `personpagerank`
--

DROP TABLE IF EXISTS `personpagerank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personpagerank` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PersonId` int(11) NOT NULL,
  `PageId` int(11) NOT NULL,
  `Rank` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `PersonIdPageIdIndex` (`PersonId`,`PageId`),
  KEY `FKPageRank_idx` (`PageId`),
  CONSTRAINT `FKPageRank` FOREIGN KEY (`PageId`) REFERENCES `pages` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKPersonRank` FOREIGN KEY (`PersonId`) REFERENCES `persons` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2517 DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personpagerank`
--

LOCK TABLES `personpagerank` WRITE;
/*!40000 ALTER TABLE `personpagerank` DISABLE KEYS */;
INSERT INTO `personpagerank` VALUES (1,2,1,0),(2,1,1,3),(3,2,2,3),(4,1,2,13),(5,2,3,1),(6,1,3,5),(7,2,4,1),(8,1,4,3),(9,2,5,5),(10,1,5,5),(11,2,6,2),(12,1,6,6),(13,2,7,1),(14,1,7,4),(15,2,8,1),(16,1,8,3),(17,2,10,1),(18,1,10,3),(19,2,11,1),(20,1,11,5),(21,2,12,1),(22,1,12,3),(23,2,13,1),(24,1,13,3),(25,2,14,1),(26,1,14,3),(27,2,15,1),(28,1,15,4),(29,2,16,1),(30,1,16,3),(31,2,17,2),(32,1,17,3),(33,2,9,1),(34,1,9,4),(35,2,18,3),(36,1,18,3),(37,2,19,0),(38,1,19,0),(39,2,20,0),(40,1,20,0),(41,2,21,0),(42,1,21,0),(43,2,22,0),(44,1,22,1),(45,2,23,0),(46,1,23,1),(47,2,24,0),(48,1,24,0),(49,2,25,1),(50,1,25,1),(51,2,26,0),(52,1,26,0),(53,2,27,0),(54,1,27,0),(55,2,28,0),(56,1,28,4),(57,2,29,0),(58,1,29,0),(59,2,30,0),(60,1,30,0),(61,2,31,0),(62,1,31,1),(63,2,32,1),(64,1,32,3),(65,2,33,0),(66,1,33,3),(67,2,34,1),(68,1,34,3),(69,2,35,0),(70,1,35,0),(71,2,36,1),(72,1,36,4),(73,2,37,0),(74,1,37,0),(75,2,38,1),(76,1,38,5),(77,2,39,0),(78,1,39,0),(79,2,40,0),(80,1,40,1),(81,2,41,0),(82,1,41,0),(83,2,42,0),(84,1,42,0),(85,2,43,0),(86,1,43,0),(87,2,44,1),(88,1,44,5),(89,2,45,0),(90,1,45,1),(91,2,46,0),(92,1,46,1),(93,2,47,3),(94,1,47,13),(95,2,48,0),(96,1,48,1),(97,2,49,0),(98,1,49,0),(99,2,50,2),(100,1,50,6),(101,2,51,0),(102,1,51,0),(103,2,52,0),(104,1,52,0),(105,2,53,0),(106,1,53,8),(107,2,54,0),(108,1,54,0),(109,2,55,0),(110,1,55,7),(111,2,56,0),(112,1,56,0),(113,2,57,1),(114,1,57,4),(115,2,58,0),(116,1,58,0),(117,2,59,0),(118,1,59,0),(119,2,60,0),(120,1,60,1),(121,2,61,1),(122,1,61,0),(123,2,62,0),(124,1,62,0),(125,2,63,0),(126,1,63,0),(127,2,64,0),(128,1,64,1),(129,2,65,0),(130,1,65,0),(131,2,66,0),(132,1,66,0),(133,2,67,0),(134,1,67,0),(135,2,68,1),(136,1,68,3),(137,2,69,0),(138,1,69,0),(139,2,70,0),(140,1,70,0),(141,2,71,0),(142,1,71,0),(143,2,72,0),(144,1,72,0),(145,2,73,0),(146,1,73,16),(147,2,74,1),(148,1,74,3),(149,2,75,0),(150,1,75,0),(151,2,76,0),(152,1,76,0),(153,2,77,0),(154,1,77,0),(155,2,78,0),(156,1,78,0),(157,2,79,0),(158,1,79,1),(159,2,80,0),(160,1,80,0),(161,2,81,1),(162,1,81,3),(163,2,82,0),(164,1,82,0),(165,2,83,0),(166,1,83,0),(167,2,84,0),(168,1,84,0),(169,2,85,0),(170,1,85,2),(171,2,86,0),(172,1,86,0),(173,2,87,2),(174,1,87,10),(175,2,88,1),(176,1,88,3),(177,2,89,1),(178,1,89,3),(179,2,90,1),(180,1,90,3),(181,2,91,1),(182,1,91,7),(183,2,92,1),(184,1,92,4),(185,2,93,1),(186,1,93,3),(187,2,94,1),(188,1,94,3),(189,2,95,1),(190,1,95,6),(191,2,96,0),(192,1,96,0),(193,2,100,0),(194,1,100,0),(195,2,101,0),(196,1,101,1),(197,2,102,0),(198,1,102,0),(199,2,103,0),(200,1,103,0),(201,2,104,0),(202,1,104,18),(203,2,105,0),(204,1,105,0),(205,2,106,0),(206,1,106,0),(207,2,107,0),(208,1,107,1),(209,2,108,0),(210,1,108,4),(211,2,109,0),(212,1,109,0),(213,2,110,0),(214,1,110,0),(215,2,97,0),(216,1,97,4),(217,2,98,0),(218,1,98,0),(219,2,99,0),(220,1,99,0),(221,2,111,0),(222,1,111,1),(223,2,112,0),(224,1,112,0),(225,2,113,0),(226,1,113,2),(227,2,114,0),(228,1,114,0),(229,2,115,0),(230,1,115,0),(231,2,116,0),(232,1,116,8),(233,2,117,0),(234,1,117,8),(235,2,118,0),(236,1,118,0),(237,2,119,0),(238,1,119,12),(239,2,120,0),(240,1,120,13),(241,2,121,0),(242,1,121,0),(243,2,122,0),(244,1,122,2),(245,2,123,2),(246,1,123,0),(247,2,124,0),(248,1,124,0),(249,2,125,0),(250,1,125,0),(251,2,126,0),(252,1,126,0),(253,2,127,0),(254,1,127,0),(255,2,128,0),(256,1,128,0),(257,2,129,0),(258,1,129,4),(259,2,130,0),(260,1,130,0),(261,2,131,0),(262,1,131,3),(263,2,132,0),(264,1,132,0),(265,2,133,1),(266,1,133,11),(267,2,134,0),(268,1,134,0),(269,2,135,0),(270,1,135,9),(271,2,136,0),(272,1,136,1),(273,2,137,9),(274,1,137,0),(275,2,138,0),(276,1,138,4),(277,2,139,0),(278,1,139,0),(279,2,140,0),(280,1,140,0),(281,2,141,0),(282,1,141,0),(283,2,142,0),(284,1,142,2),(285,2,143,0),(286,1,143,1),(287,2,144,0),(288,1,144,0),(289,2,145,1),(290,1,145,2),(291,2,146,0),(292,1,146,0),(293,2,147,0),(294,1,147,0),(295,2,148,0),(296,1,148,1),(297,2,149,1),(298,1,149,0),(299,2,150,0),(300,1,150,0),(301,2,151,0),(302,1,151,0),(303,2,152,0),(304,1,152,0),(305,2,153,0),(306,1,153,0),(307,2,154,0),(308,1,154,2),(309,2,155,0),(310,1,155,1),(311,2,156,0),(312,1,156,0),(313,2,157,0),(314,1,157,0),(315,2,158,0),(316,1,158,1),(317,2,159,0),(318,1,159,1),(319,2,160,0),(320,1,160,1),(321,2,161,0),(322,1,161,0),(323,2,162,0),(324,1,162,0),(325,2,163,0),(326,1,163,0),(327,2,164,0),(328,1,164,0),(329,2,165,0),(330,1,165,0),(331,2,166,0),(332,1,166,0),(333,2,167,0),(334,1,167,0),(335,2,168,0),(336,1,168,0),(337,2,169,0),(338,1,169,0),(339,2,170,0),(340,1,170,0),(341,2,171,0),(342,1,171,0),(343,2,172,0),(344,1,172,0),(345,2,173,0),(346,1,173,0),(347,2,174,3),(348,1,174,4),(349,2,175,0),(350,1,175,1),(351,2,176,4),(352,1,176,0),(353,2,177,0),(354,1,177,0),(355,2,178,0),(356,1,178,0),(357,2,179,0),(358,1,179,0),(359,2,180,0),(360,1,180,0),(361,2,181,0),(362,1,181,0),(363,2,182,0),(364,1,182,0),(365,2,183,0),(366,1,183,0),(367,2,184,0),(368,1,184,0),(369,2,185,0),(370,1,185,0),(371,2,186,0),(372,1,186,0),(373,2,187,0),(374,1,187,0),(375,2,188,0),(376,1,188,0),(377,2,189,0),(378,1,189,0),(379,2,190,0),(380,1,190,0),(381,2,191,0),(382,1,191,0),(383,2,192,0),(384,1,192,0),(385,2,193,0),(386,1,193,0),(387,2,194,0),(388,1,194,0),(389,2,195,0),(390,1,195,0),(391,2,196,0),(392,1,196,0),(393,2,197,0),(394,1,197,0),(395,2,198,0),(396,1,198,0),(397,2,199,0),(398,1,199,0),(399,2,200,0),(400,1,200,0),(401,2,201,0),(402,1,201,0),(403,2,202,0),(404,1,202,0),(405,2,203,0),(406,1,203,0),(407,2,204,0),(408,1,204,0),(409,2,205,0),(410,1,205,0),(411,2,206,0),(412,1,206,0),(413,2,207,0),(414,1,207,0),(415,2,208,0),(416,1,208,0),(417,2,209,0),(418,1,209,0),(419,2,210,0),(420,1,210,0),(421,2,211,0),(422,1,211,0),(423,2,212,0),(424,1,212,0),(425,2,213,0),(426,1,213,0),(427,2,214,1),(428,1,214,3),(429,2,215,1),(430,1,215,5),(431,2,216,1),(432,1,216,3),(433,2,217,1),(434,1,217,3),(435,2,218,1),(436,1,218,3),(437,2,219,1),(438,1,219,3),(439,2,220,1),(440,1,220,3),(441,2,221,1),(442,1,221,3),(443,2,222,0),(444,1,222,1),(445,2,223,0),(446,1,223,1),(447,2,224,0),(448,1,224,1),(449,2,225,0),(450,1,225,1),(451,2,226,0),(452,1,226,1),(453,2,227,0),(454,1,227,1),(455,2,228,0),(456,1,228,1),(457,2,229,0),(458,1,229,1),(459,2,230,0),(460,1,230,1),(461,2,231,0),(462,1,231,2),(463,2,232,0),(464,1,232,1),(465,2,233,0),(466,1,233,1),(467,2,234,0),(468,1,234,1),(469,2,235,0),(470,1,235,1),(471,2,236,0),(472,1,236,1),(473,2,237,0),(474,1,237,1),(475,2,238,0),(476,1,238,1),(477,2,239,0),(478,1,239,2),(479,2,240,0),(480,1,240,1),(481,2,241,0),(482,1,241,1),(483,2,242,1),(484,1,242,3),(485,2,243,1),(486,1,243,3),(487,2,244,1),(488,1,244,3),(489,2,245,1),(490,1,245,3),(491,2,246,1),(492,1,246,3),(493,2,247,1),(494,1,247,3),(495,2,248,1),(496,1,248,3),(497,2,249,0),(498,1,249,0),(499,2,250,0),(500,1,250,0),(501,2,251,0),(502,1,251,0),(503,2,252,0),(504,1,252,0),(505,2,253,0),(506,1,253,0),(507,2,254,0),(508,1,254,0),(509,2,255,0),(510,1,255,0),(511,2,256,0),(512,1,256,0),(513,2,257,0),(514,1,257,0),(515,2,258,0),(516,1,258,0),(517,2,259,0),(518,1,259,0),(519,2,260,0),(520,1,260,2),(521,2,261,0),(522,1,261,0),(523,2,262,0),(524,1,262,0),(525,2,263,0),(526,1,263,0),(527,2,264,0),(528,1,264,0),(529,2,265,0),(530,1,265,1),(531,2,266,0),(532,1,266,0),(533,2,267,0),(534,1,267,0),(535,2,268,0),(536,1,268,0),(537,2,269,0),(538,1,269,0),(539,2,270,0),(540,1,270,0),(541,2,271,0),(542,1,271,0),(543,2,272,0),(544,1,272,0),(545,2,273,0),(546,1,273,0),(547,2,274,0),(548,1,274,0),(549,2,275,0),(550,1,275,0),(551,2,276,0),(552,1,276,0),(553,2,277,0),(554,1,277,0),(555,2,278,0),(556,1,278,0),(557,2,279,0),(558,1,279,0),(559,2,280,0),(560,1,280,0),(561,2,281,0),(562,1,281,0),(563,2,282,0),(564,1,282,0),(565,2,283,0),(566,1,283,0),(567,2,284,0),(568,1,284,0),(569,2,285,0),(570,1,285,0),(571,2,286,0),(572,1,286,0),(573,2,287,0),(574,1,287,0),(575,2,288,0),(576,1,288,0),(577,2,289,0),(578,1,289,0),(579,2,290,1),(580,1,290,3),(581,2,291,2),(582,1,291,3),(583,2,292,1),(584,1,292,3),(585,2,293,1),(586,1,293,3),(587,2,294,1),(588,1,294,4),(589,2,295,1),(590,1,295,3),(591,2,296,0),(592,1,296,0),(593,2,297,0),(594,1,297,0),(595,2,298,0),(596,1,298,0),(597,2,299,0),(598,1,299,0),(599,2,300,0),(600,1,300,0),(601,2,301,0),(602,1,301,1),(603,2,302,0),(604,1,302,0),(605,2,303,0),(606,1,303,2),(607,2,304,0),(608,1,304,0),(609,2,305,0),(610,1,305,0),(611,2,306,0),(612,1,306,1),(613,2,307,0),(614,1,307,0),(615,2,308,0),(616,1,308,0),(617,2,309,0),(618,1,309,0),(619,2,310,2),(620,1,310,0),(621,2,311,0),(622,1,311,0),(623,2,312,0),(624,1,312,0),(625,2,313,0),(626,1,313,0),(627,2,314,0),(628,1,314,0),(629,2,315,0),(630,1,315,0),(631,2,316,0),(632,1,316,1),(633,2,317,8),(634,1,317,0),(635,2,318,6),(636,1,318,0),(637,2,319,0),(638,1,319,2),(639,2,320,0),(640,1,320,0),(641,2,321,0),(642,1,321,0),(643,2,322,0),(644,1,322,1),(645,2,323,0),(646,1,323,1),(647,2,324,0),(648,1,324,0),(649,2,325,0),(650,1,325,0),(651,2,326,0),(652,1,326,0),(653,2,327,0),(654,1,327,0),(655,2,328,0),(656,1,328,0),(657,2,329,0),(658,1,329,0),(659,2,330,1),(660,1,330,0),(661,2,331,0),(662,1,331,0),(663,2,332,0),(664,1,332,0),(665,2,333,0),(666,1,333,1),(667,2,334,0),(668,1,334,0),(669,2,335,0),(670,1,335,0),(671,2,336,0),(672,1,336,0),(673,2,337,0),(674,1,337,0),(675,2,338,0),(676,1,338,0),(677,2,339,0),(678,1,339,2),(679,2,340,0),(680,1,340,0),(681,2,341,0),(682,1,341,0),(683,2,342,0),(684,1,342,0),(685,2,343,0),(686,1,343,0),(687,2,344,7),(688,1,344,0),(689,2,345,0),(690,1,345,0),(691,2,346,0),(692,1,346,0),(693,2,347,0),(694,1,347,0),(695,2,348,1),(696,1,348,0),(697,2,349,0),(698,1,349,5),(699,2,350,0),(700,1,350,0),(701,2,351,0),(702,1,351,0),(703,2,352,0),(704,1,352,0),(705,2,353,0),(706,1,353,0),(707,2,354,0),(708,1,354,0),(709,2,355,0),(710,1,355,0),(711,2,356,0),(712,1,356,0),(713,2,357,0),(714,1,357,0),(715,2,358,7),(716,1,358,0),(717,2,359,0),(718,1,359,0),(719,2,360,0),(720,1,360,0),(721,2,361,0),(722,1,361,0),(723,2,362,0),(724,1,362,0),(725,2,363,0),(726,1,363,0),(727,2,364,0),(728,1,364,0),(729,2,365,0),(730,1,365,0),(731,2,366,5),(732,1,366,4),(733,2,367,0),(734,1,367,0),(735,2,368,2),(736,1,368,0),(737,2,369,0),(738,1,369,0),(739,2,370,0),(740,1,370,0),(741,2,371,1),(742,1,371,5),(743,2,372,0),(744,1,372,0),(745,2,373,0),(746,1,373,0),(747,2,374,0),(748,1,374,0),(749,2,375,1),(750,1,375,0),(751,2,376,0),(752,1,376,0),(753,2,377,9),(754,1,377,2),(755,2,378,5),(756,1,378,1),(757,2,379,2),(758,1,379,4),(759,2,380,1),(760,1,380,3),(761,2,381,1),(762,1,381,4),(763,2,382,2),(764,1,382,4),(765,2,383,1),(766,1,383,3),(767,2,384,2),(768,1,384,3),(769,2,385,0),(770,1,385,0),(771,2,386,0),(772,1,386,5),(773,2,387,0),(774,1,387,0),(775,2,388,0),(776,1,388,1),(777,2,389,5),(778,1,389,0),(779,2,390,0),(780,1,390,0),(781,2,391,0),(782,1,391,0),(783,2,392,0),(784,1,392,0),(785,2,393,0),(786,1,393,0),(787,2,394,0),(788,1,394,0),(789,2,395,0),(790,1,395,0),(791,2,396,0),(792,1,396,0),(793,2,397,0),(794,1,397,0),(795,2,398,0),(796,1,398,0),(797,2,399,0),(798,1,399,0),(799,2,400,0),(800,1,400,0),(801,2,401,0),(802,1,401,0),(803,2,402,0),(804,1,402,0),(805,2,403,0),(806,1,403,0),(807,2,404,0),(808,1,404,0),(809,2,405,0),(810,1,405,0),(811,2,406,0),(812,1,406,0),(813,2,407,0),(814,1,407,0),(815,2,408,1),(816,1,408,0),(817,2,409,0),(818,1,409,0),(819,2,410,0),(820,1,410,0),(821,2,411,0),(822,1,411,6),(823,2,412,0),(824,1,412,0),(825,2,413,0),(826,1,413,0),(827,2,414,0),(828,1,414,0),(829,2,415,0),(830,1,415,0),(831,2,416,0),(832,1,416,0),(833,2,417,0),(834,1,417,1),(835,2,418,0),(836,1,418,0),(837,2,419,0),(838,1,419,0),(839,2,420,0),(840,1,420,0),(841,2,421,0),(842,1,421,0),(843,2,422,0),(844,1,422,0),(845,2,423,0),(846,1,423,0),(847,2,424,0),(848,1,424,0),(849,2,425,0),(850,1,425,0),(851,2,426,0),(852,1,426,0),(853,2,427,0),(854,1,427,0),(855,2,428,0),(856,1,428,0),(857,2,429,0),(858,1,429,0),(859,2,430,0),(860,1,430,0),(861,2,431,0),(862,1,431,0),(863,2,432,0),(864,1,432,0),(865,2,433,0),(866,1,433,0),(867,2,434,0),(868,1,434,1),(869,2,435,0),(870,1,435,0),(871,2,436,0),(872,1,436,1),(873,2,437,0),(874,1,437,4),(875,2,438,0),(876,1,438,0),(877,2,439,1),(878,1,439,0),(879,2,440,0),(880,1,440,0),(881,2,441,0),(882,1,441,0),(883,2,442,0),(884,1,442,0),(885,2,443,0),(886,1,443,0),(887,2,444,1),(888,1,444,1),(889,2,445,0),(890,1,445,0),(891,2,446,0),(892,1,446,0),(893,2,447,0),(894,1,447,0),(895,2,448,0),(896,1,448,0),(897,2,449,0),(898,1,449,0),(899,2,450,1),(900,1,450,0),(901,2,451,0),(902,1,451,0),(903,2,452,1),(904,1,452,3),(905,2,453,1),(906,1,453,3),(907,2,454,1),(908,1,454,3),(909,2,455,1),(910,1,455,3),(911,2,456,1),(912,1,456,3),(913,2,457,1),(914,1,457,3),(915,2,458,1),(916,1,458,4),(917,2,459,0),(918,1,459,0),(919,2,460,0),(920,1,460,0),(921,2,461,0),(922,1,461,0),(923,2,462,0),(924,1,462,1),(925,2,463,0),(926,1,463,0),(927,2,464,0),(928,1,464,0),(929,2,465,0),(930,1,465,0),(931,2,466,0),(932,1,466,0),(933,2,467,0),(934,1,467,0),(935,2,468,0),(936,1,468,1),(937,2,469,0),(938,1,469,0),(939,2,470,0),(940,1,470,0),(941,2,471,0),(942,1,471,0),(943,2,472,0),(944,1,472,0),(945,2,473,0),(946,1,473,0),(947,2,474,0),(948,1,474,0),(949,2,475,0),(950,1,475,0),(951,2,476,0),(952,1,476,0),(953,2,477,0),(954,1,477,0),(955,2,478,0),(956,1,478,0),(957,2,479,0),(958,1,479,0),(959,2,480,0),(960,1,480,0),(961,2,481,0),(962,1,481,0),(963,2,482,0),(964,1,482,0),(965,2,483,1),(966,1,483,0),(967,2,484,0),(968,1,484,0),(969,2,485,0),(970,1,485,0),(971,2,486,0),(972,1,486,0),(973,2,487,0),(974,1,487,0),(975,2,488,0),(976,1,488,0),(977,2,489,0),(978,1,489,0),(979,2,490,0),(980,1,490,1),(981,2,491,0),(982,1,491,0),(983,2,492,0),(984,1,492,0),(985,2,493,0),(986,1,493,0),(987,2,494,0),(988,1,494,0),(989,2,495,0),(990,1,495,0),(991,2,496,0),(992,1,496,0),(993,2,497,0),(994,1,497,0),(995,2,498,0),(996,1,498,0),(997,2,499,0),(998,1,499,0),(999,2,500,0),(1000,1,500,0),(1001,2,501,0),(1002,1,501,0),(1003,2,502,0),(1004,1,502,0),(1005,2,503,0),(1006,1,503,0),(1007,2,504,0),(1008,1,504,0),(1009,2,505,0),(1010,1,505,0),(1011,2,506,0),(1012,1,506,0),(1013,2,507,0),(1014,1,507,0),(1015,2,508,0),(1016,1,508,0),(1017,2,509,0),(1018,1,509,0),(1019,2,510,0),(1020,1,510,0),(1021,2,511,0),(1022,1,511,0),(1023,2,512,0),(1024,1,512,0),(1025,2,513,0),(1026,1,513,0),(1027,2,514,0),(1028,1,514,0),(1029,2,515,0),(1030,1,515,0),(1031,2,516,0),(1032,1,516,0),(1033,2,517,0),(1034,1,517,0),(1035,2,518,0),(1036,1,518,1),(1037,2,519,0),(1038,1,519,0),(1039,2,520,0),(1040,1,520,0),(1041,2,521,0),(1042,1,521,0),(1043,2,522,0),(1044,1,522,0),(1045,2,523,0),(1046,1,523,0),(1047,2,524,0),(1048,1,524,3),(1049,2,525,0),(1050,1,525,0),(1051,2,526,0),(1052,1,526,0),(1053,2,527,0),(1054,1,527,0),(1055,2,528,0),(1056,1,528,0),(1057,2,529,0),(1058,1,529,0),(1059,2,530,0),(1060,1,530,0),(1061,2,531,0),(1062,1,531,0),(1063,2,532,0),(1064,1,532,0),(1065,2,533,0),(1066,1,533,0),(1067,2,534,0),(1068,1,534,0),(1069,2,535,0),(1070,1,535,0),(1071,2,536,0),(1072,1,536,0),(1073,2,537,1),(1074,1,537,3),(1075,2,538,1),(1076,1,538,3),(1077,2,539,1),(1078,1,539,3),(1079,2,540,1),(1080,1,540,3),(1081,2,541,1),(1082,1,541,3),(1083,2,542,1),(1084,1,542,3),(1085,2,543,0),(1086,1,543,0),(1087,2,544,0),(1088,1,544,0),(1089,2,545,0),(1090,1,545,0),(1091,2,546,0),(1092,1,546,0),(1093,2,547,0),(1094,1,547,0),(1095,2,548,0),(1096,1,548,0),(1097,2,549,0),(1098,1,549,0),(1099,2,550,0),(1100,1,550,0),(1101,2,551,0),(1102,1,551,0),(1103,2,552,0),(1104,1,552,0),(1105,2,553,0),(1106,1,553,0),(1107,2,554,0),(1108,1,554,0),(1109,2,555,0),(1110,1,555,0),(1111,2,556,0),(1112,1,556,0),(1113,2,557,0),(1114,1,557,0),(1115,2,558,0),(1116,1,558,0),(1117,2,559,0),(1118,1,559,0),(1119,2,560,0),(1120,1,560,0),(1121,2,561,0),(1122,1,561,0),(1123,2,562,0),(1124,1,562,0),(1125,2,563,0),(1126,1,563,0),(1127,2,564,0),(1128,1,564,0),(1129,2,565,0),(1130,1,565,0),(1131,2,566,0),(1132,1,566,0),(1133,2,567,0),(1134,1,567,0),(1135,2,568,0),(1136,1,568,0),(1137,2,569,0),(1138,1,569,0),(1139,2,570,0),(1140,1,570,0),(1141,2,571,0),(1142,1,571,0),(1143,2,572,0),(1144,1,572,0),(1145,2,573,0),(1146,1,573,0),(1147,2,574,0),(1148,1,574,0),(1149,2,575,0),(1150,1,575,0),(1151,2,576,0),(1152,1,576,0),(1153,2,577,0),(1154,1,577,0),(1155,2,578,0),(1156,1,578,0),(1157,2,579,0),(1158,1,579,0),(1159,2,580,0),(1160,1,580,0),(1161,2,581,0),(1162,1,581,0),(1163,2,582,0),(1164,1,582,0),(1165,2,583,0),(1166,1,583,0),(1167,2,584,0),(1168,1,584,0),(1169,2,585,0),(1170,1,585,0),(1171,2,586,0),(1172,1,586,0),(1173,2,587,0),(1174,1,587,0),(1175,2,588,0),(1176,1,588,0),(1177,2,589,0),(1178,1,589,0),(1179,2,590,0),(1180,1,590,0),(1181,2,591,0),(1182,1,591,0),(1183,2,592,0),(1184,1,592,0),(1185,2,593,0),(1186,1,593,0),(1187,2,594,0),(1188,1,594,0),(1189,2,595,0),(1190,1,595,0),(1191,2,596,0),(1192,1,596,0),(1193,2,597,1),(1194,1,597,3),(1195,2,598,1),(1196,1,598,3),(1197,2,599,1),(1198,1,599,3),(1199,2,600,1),(1200,1,600,3),(1201,2,601,1),(1202,1,601,3),(1203,2,602,3),(1204,1,602,3),(1205,2,603,1),(1206,1,603,3),(1207,2,604,1),(1208,1,604,3),(1209,2,605,1),(1210,1,605,3),(1211,2,606,0),(1212,1,606,0),(1213,2,607,0),(1214,1,607,0),(1215,2,608,0),(1216,1,608,0),(1217,2,609,0),(1218,1,609,0),(1219,2,610,0),(1220,1,610,0),(1221,2,611,0),(1222,1,611,0),(1223,2,612,0),(1224,1,612,0),(1225,2,613,0),(1226,1,613,0),(1227,2,614,0),(1228,1,614,0),(1229,2,615,0),(1230,1,615,0),(1231,2,616,0),(1232,1,616,1),(1233,2,617,0),(1234,1,617,0),(1235,2,618,0),(1236,1,618,0),(1237,2,619,0),(1238,1,619,0),(1239,2,620,0),(1240,1,620,0),(1241,2,621,0),(1242,1,621,0),(1243,2,622,0),(1244,1,622,0),(1245,2,623,0),(1246,1,623,0),(1247,2,624,0),(1248,1,624,0),(1249,2,625,0),(1250,1,625,0),(1251,2,626,0),(1252,1,626,0),(1253,2,627,0),(1254,1,627,0),(1255,2,628,0),(1256,1,628,0),(1257,2,629,0),(1258,1,629,0),(1259,2,630,0),(1260,1,630,0),(1261,2,631,0),(1262,1,631,0),(1263,2,632,0),(1264,1,632,0),(1265,2,633,0),(1266,1,633,0),(1267,2,634,0),(1268,1,634,0),(1269,2,635,0),(1270,1,635,0),(1271,2,636,0),(1272,1,636,0),(1273,2,637,0),(1274,1,637,0),(1275,2,638,0),(1276,1,638,0),(1277,2,639,0),(1278,1,639,0),(1279,2,640,0),(1280,1,640,0),(1281,2,641,0),(1282,1,641,0),(1283,2,642,0),(1284,1,642,0),(1285,2,643,0),(1286,1,643,0),(1287,2,644,0),(1288,1,644,0),(1289,2,645,0),(1290,1,645,0),(1291,2,646,0),(1292,1,646,0),(1293,2,647,0),(1294,1,647,0),(1295,2,648,0),(1296,1,648,0),(1297,2,649,0),(1298,1,649,0),(1299,2,650,0),(1300,1,650,0),(1301,2,651,0),(1302,1,651,0),(1303,2,652,0),(1304,1,652,0),(1305,2,653,0),(1306,1,653,0),(1307,2,654,0),(1308,1,654,0),(1309,2,655,0),(1310,1,655,0),(1311,2,656,0),(1312,1,656,0),(1313,2,657,0),(1314,1,657,0),(1315,2,658,0),(1316,1,658,0),(1317,2,659,0),(1318,1,659,0),(1319,2,660,0),(1320,1,660,0),(1321,2,661,0),(1322,1,661,0),(1323,2,662,0),(1324,1,662,0),(1325,2,663,0),(1326,1,663,0),(1327,2,664,0),(1328,1,664,0),(1329,2,665,0),(1330,1,665,0),(1331,2,666,0),(1332,1,666,0),(1333,2,667,2),(1334,1,667,0),(1335,2,668,0),(1336,1,668,0),(1337,2,669,0),(1338,1,669,0),(1339,2,670,0),(1340,1,670,0),(1341,2,671,0),(1342,1,671,0),(1343,2,672,0),(1344,1,672,0),(1345,2,673,0),(1346,1,673,0),(1347,2,674,0),(1348,1,674,0),(1349,2,675,0),(1350,1,675,0),(1351,2,676,0),(1352,1,676,0),(1353,2,677,0),(1354,1,677,0),(1355,2,678,0),(1356,1,678,0),(1357,2,679,0),(1358,1,679,0),(1359,2,680,0),(1360,1,680,0),(1361,2,681,0),(1362,1,681,0),(1363,2,682,0),(1364,1,682,0),(1365,2,683,0),(1366,1,683,0),(1367,2,684,0),(1368,1,684,0),(1369,2,685,0),(1370,1,685,0),(1371,2,686,1),(1372,1,686,3),(1373,2,687,1),(1374,1,687,3),(1375,2,688,1),(1376,1,688,3),(1377,2,689,1),(1378,1,689,3),(1379,2,690,1),(1380,1,690,3),(1381,2,691,1),(1382,1,691,4),(1383,2,692,1),(1384,1,692,4),(1385,2,693,0),(1386,1,693,0),(1387,2,694,0),(1388,1,694,1),(1389,2,695,0),(1390,1,695,0),(1391,2,696,0),(1392,1,696,0),(1393,2,697,0),(1394,1,697,0),(1395,2,698,0),(1396,1,698,0),(1397,2,699,0),(1398,1,699,0),(1399,2,700,0),(1400,1,700,0),(1401,2,701,0),(1402,1,701,0),(1403,2,702,0),(1404,1,702,0),(1405,2,703,0),(1406,1,703,0),(1407,2,704,0),(1408,1,704,0),(1409,2,705,0),(1410,1,705,0),(1411,2,706,0),(1412,1,706,7),(1413,2,707,0),(1414,1,707,0),(1415,2,708,2),(1416,1,708,0),(1417,2,709,0),(1418,1,709,0),(1419,2,710,0),(1420,1,710,0),(1421,2,711,0),(1422,1,711,0),(1423,2,712,0),(1424,1,712,0),(1425,2,713,0),(1426,1,713,0),(1427,2,714,0),(1428,1,714,0),(1429,2,715,0),(1430,1,715,0),(1431,2,716,0),(1432,1,716,0),(1433,2,717,0),(1434,1,717,0),(1435,2,718,0),(1436,1,718,0),(1437,2,719,0),(1438,1,719,0),(1439,2,720,0),(1440,1,720,0),(1441,2,721,0),(1442,1,721,0),(1443,2,722,0),(1444,1,722,0),(1445,2,723,0),(1446,1,723,0),(1447,2,724,0),(1448,1,724,0),(1449,2,725,0),(1450,1,725,0),(1451,2,726,0),(1452,1,726,0),(1453,2,727,0),(1454,1,727,3),(1455,2,728,0),(1456,1,728,0),(1457,2,729,0),(1458,1,729,0),(1459,2,730,0),(1460,1,730,0),(1461,2,731,0),(1462,1,731,0),(1463,2,732,0),(1464,1,732,0),(1465,2,733,0),(1466,1,733,0),(1467,2,734,0),(1468,1,734,0),(1469,2,735,0),(1470,1,735,0),(1471,2,736,0),(1472,1,736,0),(1473,2,737,0),(1474,1,737,0),(1475,2,738,0),(1476,1,738,0),(1477,2,739,0),(1478,1,739,0),(1479,2,740,0),(1480,1,740,0),(1481,2,741,0),(1482,1,741,0),(1483,2,742,0),(1484,1,742,0),(1485,2,743,0),(1486,1,743,0),(1487,2,744,0),(1488,1,744,0),(1489,2,745,0),(1490,1,745,0),(1491,2,746,0),(1492,1,746,0),(1493,2,747,0),(1494,1,747,0),(1495,2,748,0),(1496,1,748,0),(1497,2,749,0),(1498,1,749,0),(1499,2,750,0),(1500,1,750,0),(1501,2,751,0),(1502,1,751,0),(1503,2,752,0),(1504,1,752,0),(1505,2,753,0),(1506,1,753,0),(1507,2,754,0),(1508,1,754,0),(1509,2,755,0),(1510,1,755,0),(1511,2,756,0),(1512,1,756,0),(1513,2,757,0),(1514,1,757,0),(1515,2,758,0),(1516,1,758,0),(1517,2,759,0),(1518,1,759,0),(1519,2,760,0),(1520,1,760,0),(1521,2,761,0),(1522,1,761,0),(1523,2,762,0),(1524,1,762,0),(1525,2,763,0),(1526,1,763,9),(1527,2,764,0),(1528,1,764,0),(1529,2,765,0),(1530,1,765,0),(1531,2,766,0),(1532,1,766,0),(1533,2,767,0),(1534,1,767,0),(1535,2,768,0),(1536,1,768,2),(1537,2,769,0),(1538,1,769,0),(1539,2,770,0),(1540,1,770,0),(1541,2,771,0),(1542,1,771,0),(1543,2,772,0),(1544,1,772,0),(1545,2,773,0),(1546,1,773,0),(1547,2,774,0),(1548,1,774,0),(1549,2,775,0),(1550,1,775,0),(1551,2,776,0),(1552,1,776,0),(1553,2,777,0),(1554,1,777,0),(1555,2,778,0),(1556,1,778,0),(1557,2,779,0),(1558,1,779,1),(1559,2,780,0),(1560,1,780,0),(1561,2,781,0),(1562,1,781,0),(1563,2,782,1),(1564,1,782,3),(1565,2,783,1),(1566,1,783,3),(1567,2,784,1),(1568,1,784,3),(1569,2,785,1),(1570,1,785,3),(1571,2,786,1),(1572,1,786,3),(1573,2,787,1),(1574,1,787,3),(1575,2,788,0),(1576,1,788,0),(1577,2,789,0),(1578,1,789,0),(1579,2,790,0),(1580,1,790,0),(1581,2,791,0),(1582,1,791,0),(1583,2,792,0),(1584,1,792,0),(1585,2,793,0),(1586,1,793,0),(1587,2,794,0),(1588,1,794,0),(1589,2,795,0),(1590,1,795,0),(1591,2,796,0),(1592,1,796,0),(1593,2,797,0),(1594,1,797,0),(1595,2,798,0),(1596,1,798,0),(1597,2,799,0),(1598,1,799,0),(1599,2,800,0),(1600,1,800,0),(1601,2,801,0),(1602,1,801,0),(1603,2,802,0),(1604,1,802,0),(1605,2,803,0),(1606,1,803,0),(1607,2,804,0),(1608,1,804,0),(1609,2,805,0),(1610,1,805,0),(1611,2,806,0),(1612,1,806,0),(1613,2,807,0),(1614,1,807,0),(1615,2,808,0),(1616,1,808,0),(1617,2,809,0),(1618,1,809,0),(1619,2,810,0),(1620,1,810,0),(1621,2,811,0),(1622,1,811,0),(1623,2,812,0),(1624,1,812,0),(1625,2,813,0),(1626,1,813,0),(1627,2,814,0),(1628,1,814,0),(1629,2,815,0),(1630,1,815,0),(1631,2,816,0),(1632,1,816,0),(1633,2,817,0),(1634,1,817,0),(1635,2,818,0),(1636,1,818,0),(1637,2,819,0),(1638,1,819,0),(1639,2,820,0),(1640,1,820,0),(1641,2,821,0),(1642,1,821,0),(1643,2,822,0),(1644,1,822,0),(1645,2,823,0),(1646,1,823,0),(1647,2,824,0),(1648,1,824,0),(1649,2,825,0),(1650,1,825,0),(1651,2,826,0),(1652,1,826,0),(1653,2,827,0),(1654,1,827,0),(1655,2,828,0),(1656,1,828,0),(1657,2,829,0),(1658,1,829,0),(1659,2,830,0),(1660,1,830,0),(1661,2,831,0),(1662,1,831,0),(1663,2,832,0),(1664,1,832,0),(1665,2,833,0),(1666,1,833,0),(1667,2,834,0),(1668,1,834,0),(1669,2,835,0),(1670,1,835,0),(1671,2,836,0),(1672,1,836,0),(1673,2,837,0),(1674,1,837,0),(1675,2,838,0),(1676,1,838,0),(1677,2,839,0),(1678,1,839,0),(1679,2,840,0),(1680,1,840,0),(1681,2,841,0),(1682,1,841,0),(1683,2,842,0),(1684,1,842,0),(1685,2,843,0),(1686,1,843,0),(1687,2,844,0),(1688,1,844,0),(1689,2,845,0),(1690,1,845,0),(1691,2,846,0),(1692,1,846,0),(1693,2,847,0),(1694,1,847,0),(1695,2,848,0),(1696,1,848,0),(1697,2,849,0),(1698,1,849,0),(1699,2,850,1),(1700,1,850,3),(1701,2,851,1),(1702,1,851,3),(1703,2,852,1),(1704,1,852,3),(1705,2,853,1),(1706,1,853,3),(1707,2,854,1),(1708,1,854,3),(1709,2,855,1),(1710,1,855,3),(1711,2,856,0),(1712,1,856,0),(1713,2,857,0),(1714,1,857,0),(1715,2,858,0),(1716,1,858,0),(1717,2,859,0),(1718,1,859,0),(1719,2,860,0),(1720,1,860,0),(1721,2,861,0),(1722,1,861,0),(1723,2,862,0),(1724,1,862,0),(1725,2,863,0),(1726,1,863,0),(1727,2,864,0),(1728,1,864,0),(1729,2,865,0),(1730,1,865,0),(1731,2,866,0),(1732,1,866,0),(1733,2,867,0),(1734,1,867,0),(1735,2,868,0),(1736,1,868,0),(1737,2,869,0),(1738,1,869,0),(1739,2,870,0),(1740,1,870,0),(1741,2,871,0),(1742,1,871,0),(1743,2,872,0),(1744,1,872,0),(1745,2,873,0),(1746,1,873,0),(1747,2,874,0),(1748,1,874,0),(1749,2,875,0),(1750,1,875,0),(1751,2,876,0),(1752,1,876,0),(1753,2,877,0),(1754,1,877,0),(1755,2,878,0),(1756,1,878,0),(1757,2,879,0),(1758,1,879,0),(1759,2,880,0),(1760,1,880,0),(1761,2,881,0),(1762,1,881,0),(1763,2,882,0),(1764,1,882,0),(1765,2,883,0),(1766,1,883,0),(1767,2,884,0),(1768,1,884,0),(1769,2,885,0),(1770,1,885,0),(1771,2,886,0),(1772,1,886,0),(1773,2,887,0),(1774,1,887,0),(1775,2,888,0),(1776,1,888,0),(1777,2,889,0),(1778,1,889,0),(1779,2,890,0),(1780,1,890,0),(1781,2,891,0),(1782,1,891,0),(1783,2,892,0),(1784,1,892,0),(1785,2,893,0),(1786,1,893,0),(1787,2,894,0),(1788,1,894,0),(1789,2,895,0),(1790,1,895,0),(1791,2,896,0),(1792,1,896,0),(1793,2,897,0),(1794,1,897,0),(1795,2,898,0),(1796,1,898,0),(1797,2,899,0),(1798,1,899,0),(1799,2,900,0),(1800,1,900,0),(1801,2,901,0),(1802,1,901,0),(1803,2,902,0),(1804,1,902,0),(1805,2,903,0),(1806,1,903,0),(1807,2,904,0),(1808,1,904,0),(1809,2,905,0),(1810,1,905,0),(1811,2,906,0),(1812,1,906,0),(1813,2,907,0),(1814,1,907,0),(1815,2,908,0),(1816,1,908,0),(1817,2,909,0),(1818,1,909,0),(1819,2,910,1),(1820,1,910,0),(1821,2,911,1),(1822,1,911,3),(1823,2,912,1),(1824,1,912,4),(1825,2,913,1),(1826,1,913,3),(1827,2,914,1),(1828,1,914,3),(1829,2,915,1),(1830,1,915,3),(1831,2,916,1),(1832,1,916,3),(1833,2,917,1),(1834,1,917,3),(1835,2,918,0),(1836,1,918,0),(1837,2,919,0),(1838,1,919,0),(1839,2,920,0),(1840,1,920,0),(1841,2,921,0),(1842,1,921,0),(1843,2,922,0),(1844,1,922,0),(1845,2,923,0),(1846,1,923,0),(1847,2,924,0),(1848,1,924,0),(1849,2,925,0),(1850,1,925,0),(1851,2,926,0),(1852,1,926,0),(1853,2,927,0),(1854,1,927,0),(1855,2,928,0),(1856,1,928,1),(1857,2,929,0),(1858,1,929,0),(1859,2,930,0),(1860,1,930,0),(1861,2,931,0),(1862,1,931,0),(1863,2,932,0),(1864,1,932,0),(1865,2,933,0),(1866,1,933,0),(1867,2,934,0),(1868,1,934,0),(1869,2,935,0),(1870,1,935,0),(1871,2,936,0),(1872,1,936,0),(1873,2,937,0),(1874,1,937,0),(1875,2,938,0),(1876,1,938,0),(1877,2,939,0),(1878,1,939,0),(1879,2,940,0),(1880,1,940,0),(1881,2,941,0),(1882,1,941,0),(1883,2,942,0),(1884,1,942,0),(1885,2,943,0),(1886,1,943,0),(1887,2,944,0),(1888,1,944,0),(1889,2,945,0),(1890,1,945,0),(1891,2,946,0),(1892,1,946,0),(1893,2,947,0),(1894,1,947,0),(1895,2,948,0),(1896,1,948,0),(1897,2,949,0),(1898,1,949,0),(1899,2,950,0),(1900,1,950,0),(1901,2,951,0),(1902,1,951,0),(1903,2,952,0),(1904,1,952,0),(1905,2,953,0),(1906,1,953,0),(1907,2,954,0),(1908,1,954,0),(1909,2,955,0),(1910,1,955,0),(1911,2,956,0),(1912,1,956,0),(1913,2,957,0),(1914,1,957,0),(1915,2,958,0),(1916,1,958,0),(1917,2,959,0),(1918,1,959,0),(1919,2,960,0),(1920,1,960,0),(1921,2,961,0),(1922,1,961,0),(1923,2,962,0),(1924,1,962,0),(1925,2,963,0),(1926,1,963,0),(1927,2,964,0),(1928,1,964,0),(1929,2,965,0),(1930,1,965,0),(1931,2,966,0),(1932,1,966,0),(1933,2,967,0),(1934,1,967,0),(1935,2,968,0),(1936,1,968,0),(1937,2,969,0),(1938,1,969,0),(1939,2,970,0),(1940,1,970,0),(1941,2,971,0),(1942,1,971,0),(1943,2,972,0),(1944,1,972,0),(1945,2,973,0),(1946,1,973,0),(1947,2,974,0),(1948,1,974,0),(1949,2,975,0),(1950,1,975,0),(1951,2,976,0),(1952,1,976,0),(1953,2,977,0),(1954,1,977,0),(1955,2,978,0),(1956,1,978,0),(1957,2,979,0),(1958,1,979,0),(1959,2,980,0),(1960,1,980,0),(1961,2,981,0),(1962,1,981,0),(1963,2,982,0),(1964,1,982,0),(1965,2,983,0),(1966,1,983,0),(1967,2,984,0),(1968,1,984,0),(1969,2,985,0),(1970,1,985,0),(1971,2,986,0),(1972,1,986,0),(1973,2,987,0),(1974,1,987,0),(1975,2,988,0),(1976,1,988,0),(1977,2,989,0),(1978,1,989,0),(1979,2,990,0),(1980,1,990,0),(1981,2,991,0),(1982,1,991,0),(1983,2,992,0),(1984,1,992,0),(1985,2,993,0),(1986,1,993,0),(1987,2,994,0),(1988,1,994,0),(1989,2,995,0),(1990,1,995,0),(1991,2,996,0),(1992,1,996,0),(1993,2,997,0),(1994,1,997,1),(1995,2,998,0),(1996,1,998,0),(1997,2,999,0),(1998,1,999,0),(1999,2,1000,0),(2000,1,1000,1),(2001,2,1001,0),(2002,1,1001,0),(2003,2,1002,0),(2004,1,1002,0),(2005,2,1003,0),(2006,1,1003,0),(2007,2,1004,0),(2008,1,1004,1),(2009,2,1005,0),(2010,1,1005,0),(2011,2,1006,0),(2012,1,1006,0),(2013,2,1007,0),(2014,1,1007,0),(2015,2,1008,0),(2016,1,1008,0),(2017,2,1009,0),(2018,1,1009,0),(2019,2,1010,0),(2020,1,1010,0),(2021,2,1011,0),(2022,1,1011,0),(2023,2,1012,0),(2024,1,1012,0),(2025,2,1013,0),(2026,1,1013,1),(2027,2,1014,1),(2028,1,1014,3),(2029,2,1015,1),(2030,1,1015,3),(2031,2,1016,1),(2032,1,1016,3),(2033,2,1017,1),(2034,1,1017,4),(2035,2,1018,1),(2036,1,1018,3),(2037,2,1019,1),(2038,1,1019,3),(2039,2,1020,3),(2040,1,1020,6),(2041,2,1021,0),(2042,1,1021,0),(2043,2,1022,0),(2044,1,1022,0),(2045,2,1023,0),(2046,1,1023,0),(2047,2,1024,0),(2048,1,1024,0),(2049,2,1025,0),(2050,1,1025,0),(2051,2,1026,0),(2052,1,1026,0),(2053,2,1027,0),(2054,1,1027,0),(2055,2,1028,0),(2056,1,1028,0),(2057,2,1029,0),(2058,1,1029,0),(2059,2,1030,0),(2060,1,1030,0),(2061,2,1031,0),(2062,1,1031,0),(2063,2,1032,0),(2064,1,1032,0),(2065,2,1033,0),(2066,1,1033,5),(2067,2,1034,0),(2068,1,1034,0),(2069,2,1035,0),(2070,1,1035,0),(2071,2,1036,0),(2072,1,1036,0),(2073,2,1037,0),(2074,1,1037,0),(2075,2,1038,0),(2076,1,1038,0),(2077,2,1039,0),(2078,1,1039,0),(2079,2,1040,0),(2080,1,1040,0),(2081,2,1041,0),(2082,1,1041,0),(2083,2,1042,0),(2084,1,1042,0),(2085,2,1043,0),(2086,1,1043,0),(2087,2,1044,0),(2088,1,1044,0),(2089,2,1045,0),(2090,1,1045,0),(2091,2,1046,0),(2092,1,1046,0),(2093,2,1047,0),(2094,1,1047,0),(2095,2,1048,0),(2096,1,1048,0),(2097,2,1049,0),(2098,1,1049,0),(2099,2,1050,0),(2100,1,1050,0),(2101,2,1051,0),(2102,1,1051,0),(2103,2,1052,0),(2104,1,1052,0),(2105,2,1053,0),(2106,1,1053,0),(2107,2,1054,0),(2108,1,1054,0),(2109,2,1055,0),(2110,1,1055,0),(2111,2,1056,0),(2112,1,1056,0),(2113,2,1057,0),(2114,1,1057,2),(2115,2,1058,0),(2116,1,1058,0),(2117,2,1059,0),(2118,1,1059,0),(2119,2,1060,0),(2120,1,1060,0),(2121,2,1061,0),(2122,1,1061,0),(2123,2,1062,0),(2124,1,1062,0),(2125,2,1063,0),(2126,1,1063,0),(2127,2,1064,0),(2128,1,1064,0),(2129,2,1065,0),(2130,1,1065,0),(2131,2,1066,0),(2132,1,1066,0),(2133,2,1067,0),(2134,1,1067,0),(2135,2,1068,0),(2136,1,1068,0),(2137,2,1069,0),(2138,1,1069,0),(2139,2,1070,0),(2140,1,1070,0),(2141,2,1071,0),(2142,1,1071,0),(2143,2,1072,0),(2144,1,1072,0),(2145,2,1073,0),(2146,1,1073,0),(2147,2,1074,1),(2148,1,1074,0),(2149,2,1075,0),(2150,1,1075,0),(2151,2,1076,0),(2152,1,1076,0),(2153,2,1077,0),(2154,1,1077,0),(2155,2,1078,0),(2156,1,1078,0),(2157,2,1079,0),(2158,1,1079,0),(2159,2,1080,0),(2160,1,1080,0),(2161,2,1081,0),(2162,1,1081,0),(2163,2,1082,0),(2164,1,1082,0),(2165,2,1083,0),(2166,1,1083,0),(2167,2,1084,0),(2168,1,1084,0),(2169,2,1085,0),(2170,1,1085,0),(2171,2,1086,0),(2172,1,1086,0),(2173,2,1087,0),(2174,1,1087,0),(2175,2,1088,0),(2176,1,1088,0),(2177,2,1089,0),(2178,1,1089,0),(2179,2,1090,0),(2180,1,1090,0),(2181,2,1091,0),(2182,1,1091,0),(2183,2,1092,0),(2184,1,1092,0),(2185,2,1093,0),(2186,1,1093,0),(2187,2,1094,0),(2188,1,1094,0),(2189,2,1095,0),(2190,1,1095,0),(2191,2,1096,0),(2192,1,1096,0),(2193,2,1097,0),(2194,1,1097,0),(2195,2,1098,0),(2196,1,1098,0),(2197,2,1099,0),(2198,1,1099,0),(2199,2,1100,0),(2200,1,1100,0),(2201,2,1101,0),(2202,1,1101,0),(2203,2,1102,0),(2204,1,1102,0),(2205,2,1103,0),(2206,1,1103,0),(2207,2,1104,0),(2208,1,1104,0),(2209,2,1105,0),(2210,1,1105,0),(2211,2,1106,0),(2212,1,1106,0),(2213,2,1107,2),(2214,1,1107,4),(2215,2,1108,0),(2216,1,1108,2),(2217,2,1109,0),(2218,1,1109,1),(2219,2,1110,0),(2220,1,1110,6),(2221,2,1111,6),(2222,1,1111,1),(2223,2,1112,0),(2224,1,1112,0),(2225,2,1113,0),(2226,1,1113,0),(2227,2,1114,0),(2228,1,1114,0),(2229,2,1115,0),(2230,1,1115,0),(2231,2,1116,1),(2232,1,1116,0),(2233,2,1117,0),(2234,1,1117,0),(2235,2,1118,0),(2236,1,1118,0),(2237,2,1119,0),(2238,1,1119,0),(2239,2,1120,0),(2240,1,1120,0),(2241,2,1121,0),(2242,1,1121,0),(2243,2,1122,0),(2244,1,1122,0),(2245,2,1123,0),(2246,1,1123,0),(2247,2,1124,0),(2248,1,1124,0),(2249,2,1125,0),(2250,1,1125,0),(2251,2,1126,0),(2252,1,1126,0),(2253,2,1127,0),(2254,1,1127,0),(2255,2,1128,0),(2256,1,1128,0),(2257,2,1129,0),(2258,1,1129,0),(2259,2,1130,0),(2260,1,1130,0),(2261,2,1131,0),(2262,1,1131,0),(2263,2,1132,0),(2264,1,1132,0),(2265,2,1133,0),(2266,1,1133,0),(2267,2,1134,0),(2268,1,1134,0),(2269,2,1135,0),(2270,1,1135,0),(2271,2,1136,0),(2272,1,1136,0),(2273,2,1137,0),(2274,1,1137,0),(2275,2,1138,0),(2276,1,1138,0),(2277,2,1139,0),(2278,1,1139,0),(2279,2,1140,1),(2280,1,1140,3),(2281,2,1141,0),(2282,1,1141,0),(2283,2,1142,2),(2284,1,1142,3),(2285,2,1143,0),(2286,1,1143,0),(2287,2,1144,1),(2288,1,1144,3),(2289,2,1145,0),(2290,1,1145,0),(2291,2,1146,0),(2292,1,1146,0),(2293,2,1147,0),(2294,1,1147,0),(2295,2,1148,5),(2296,1,1148,5),(2297,2,1149,0),(2298,1,1149,0),(2299,2,1150,2),(2300,1,1150,4),(2301,2,1151,0),(2302,1,1151,0),(2303,2,1152,0),(2304,1,1152,0),(2305,2,1153,0),(2306,1,1153,0),(2307,2,1154,0),(2308,1,1154,0),(2309,2,1155,0),(2310,1,1155,1),(2311,2,1156,0),(2312,1,1156,2),(2313,2,1157,0),(2314,1,1157,1),(2315,2,1158,0),(2316,1,1158,1),(2317,2,1159,0),(2318,1,1159,1),(2319,2,1160,0),(2320,1,1160,1),(2321,2,1161,0),(2322,1,1161,1),(2323,2,1162,0),(2324,1,1162,1),(2325,2,1163,0),(2326,1,1163,1),(2327,2,1164,0),(2328,1,1164,1),(2329,2,1165,0),(2330,1,1165,0),(2331,2,1166,0),(2332,1,1166,1),(2333,2,1167,0),(2334,1,1167,1),(2335,2,1168,0),(2336,1,1168,0),(2337,2,1169,0),(2338,1,1169,0),(2339,2,1170,0),(2340,1,1170,0),(2341,2,1171,0),(2342,1,1171,0),(2343,2,1172,0),(2344,1,1172,0),(2345,2,1173,0),(2346,1,1173,0),(2347,2,1174,0),(2348,1,1174,0),(2349,2,1175,0),(2350,1,1175,0),(2351,2,1176,0),(2352,1,1176,0),(2353,2,1177,0),(2354,1,1177,1),(2355,2,1178,5),(2356,1,1178,2),(2357,2,1179,1),(2358,1,1179,1),(2359,2,1180,0),(2360,1,1180,0),(2361,2,1181,0),(2362,1,1181,0),(2363,2,1182,0),(2364,1,1182,0),(2365,2,1183,0),(2366,1,1183,0),(2367,2,1184,0),(2368,1,1184,0),(2369,2,1185,0),(2370,1,1185,8),(2371,2,1186,0),(2372,1,1186,0),(2373,2,1187,0),(2374,1,1187,0),(2375,2,1188,0),(2376,1,1188,0),(2377,2,1189,0),(2378,1,1189,0),(2379,2,1190,0),(2380,1,1190,0),(2381,2,1191,0),(2382,1,1191,0),(2383,2,1192,0),(2384,1,1192,7),(2385,2,1193,0),(2386,1,1193,0),(2387,2,1194,0),(2388,1,1194,1),(2389,2,1195,0),(2390,1,1195,2),(2391,2,1196,0),(2392,1,1196,4),(2393,2,1197,0),(2394,1,1197,4),(2395,2,1198,0),(2396,1,1198,0),(2397,2,1199,0),(2398,1,1199,0),(2399,2,1200,0),(2400,1,1200,0),(2401,2,1201,0),(2402,1,1201,0),(2403,2,1202,0),(2404,1,1202,0),(2405,2,1203,0),(2406,1,1203,0),(2407,2,1204,0),(2408,1,1204,0),(2409,2,1205,0),(2410,1,1205,0),(2411,2,1206,0),(2412,1,1206,0),(2413,2,1207,0),(2414,1,1207,2),(2415,2,1208,0),(2416,1,1208,0),(2417,2,1209,0),(2418,1,1209,1),(2419,2,1210,0),(2420,1,1210,0),(2421,2,1211,0),(2422,1,1211,1),(2423,2,1212,0),(2424,1,1212,0),(2425,2,1213,0),(2426,1,1213,0),(2427,2,1214,0),(2428,1,1214,2),(2429,2,1215,0),(2430,1,1215,0),(2431,2,1216,0),(2432,1,1216,0),(2433,2,1217,2),(2434,1,1217,4),(2435,2,1218,0),(2436,1,1218,0),(2437,2,1219,0),(2438,1,1219,0),(2439,2,1220,0),(2440,1,1220,1),(2441,2,1221,0),(2442,1,1221,5),(2443,2,1222,0),(2444,1,1222,4),(2445,2,1223,0),(2446,1,1223,0),(2447,2,1224,0),(2448,1,1224,3),(2449,2,1225,0),(2450,1,1225,0),(2451,2,1226,0),(2452,1,1226,1),(2453,2,1227,0),(2454,1,1227,0),(2455,2,1228,2),(2456,1,1228,4),(2457,2,1229,0),(2458,1,1229,0),(2459,2,1230,0),(2460,1,1230,0),(2461,2,1231,0),(2462,1,1231,0),(2463,2,1232,2),(2464,1,1232,4),(2465,2,1233,0),(2466,1,1233,0),(2467,2,1234,0),(2468,1,1234,0),(2469,2,1235,0),(2470,1,1235,0),(2471,2,1236,2),(2472,1,1236,5),(2473,2,1237,0),(2474,1,1237,0),(2475,2,1238,0),(2476,1,1238,0),(2477,2,1239,0),(2478,1,1239,2),(2479,2,1240,0),(2480,1,1240,1),(2481,2,1241,0),(2482,1,1241,0),(2483,2,1242,0),(2484,1,1242,1),(2485,2,1243,0),(2486,1,1243,1),(2487,2,1244,0),(2488,1,1244,1),(2489,2,1245,0),(2490,1,1245,1),(2491,2,1246,0),(2492,1,1246,0),(2493,2,1247,0),(2494,1,1247,1),(2495,2,1248,0),(2496,1,1248,0),(2497,2,1249,0),(2498,1,1249,0),(2499,2,1250,0),(2500,1,1250,0),(2501,2,1251,0),(2502,1,1251,0),(2503,2,1252,0),(2504,1,1252,0),(2505,2,1253,0),(2506,1,1253,0),(2507,2,1254,0),(2508,1,1254,0),(2509,2,1255,0),(2510,1,1255,0),(2511,2,1256,0),(2512,1,1256,0),(2513,2,1257,0),(2514,1,1257,0),(2515,2,1258,0),(2516,1,1258,1);
/*!40000 ALTER TABLE `personpagerank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-28 14:35:14