CREATE DATABASE  IF NOT EXISTS `avprtc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `avprtc`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: avprtc
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `scode` char(5) NOT NULL,
  `sname` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`scode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES ('AKE','Akanapet'),('AKP','Anakapalle'),('AKR','Akolner'),('ALER','Aler'),('ANG','Ahmadnagar'),('ANK','Ankai'),('ANV','Annavaram'),('ASAF','Asifabad Road'),('AWB','Aurangabad'),('BAP','Belapur'),('BDU','Badnapur'),('BG','Bhongir'),('BGSF','Bisugirsharif'),('BLSA','Bolsa'),('BMO','Bolarum'),('BN','Bibinagar'),('BPA','Belampalli'),('BPQ','Balharshah'),('BSX','Basar'),('BWD','Belvandi'),('BZA','Vijayawada Junction'),('CIT','Chitali'),('CRU','Chudawa'),('CSTM','Mumbai'),('CTH','Chikalthan'),('DAB','Dharmabad'),('DD','Daund Junction'),('DLB','Daulatabad'),('DR','Dadar'),('DVD','Duvvada'),('DVL','Devlali'),('EE','Eluru'),('GNP','Ghanpur'),('HDP','Hadapsar'),('HSP','Hasanparthi Road'),('IGP','Igatpuri'),('J','Jalna'),('JKM','Jankampet Junction'),('JMKT','Jamikunta'),('KAJG','Karanjgaon'),('KDG','Kedgaon'),('KDTN','Kadethan'),('KEK','Karkheli'),('KMC','Kamareddi'),('KMT','Khammam'),('KMV','Karmad'),('KNGN','Kanhegaon'),('KODI','Kodi'),('KOLR','Kolnur'),('KPG','Kopargaon'),('KSTH','Kashti'),('KTT','Khutbav'),('KYN','Kalyan Junction'),('KYOP','Kottapalli'),('KZJ','Kazipet Junction'),('LBG','Limbgaon'),('LONI','Loni'),('LS','Lasalgaon'),('LSR','Lasur'),('MAGH','Manikgarh'),('MCI','Mancheral'),('MGC','Mugat'),('MJBK','Manjari Budruk'),('MJF','Malkajgiri'),('MKDD','Mukundawadi Ha'),('MKDI','Makudi'),('MLY','Maula Ali'),('MMR','Manmad Junction'),('MMZ','Mandamari'),('MQL','Mirkhal'),('MUE','Mudkhed'),('MVO','Manwath Road'),('MZL','Mirzapali'),('NDD','Nidadavolu Junction'),('NED','Nanded'),('NK','Nasik Road'),('NPW','Nipani Vadgaon'),('NSL','Nagarsol'),('NVT','Navipet'),('NZB','Nizamabad'),('NZD','Nuzvid'),('OEA','Odela'),('OPL','Uppal'),('PAA','Patas'),('PAU','Purna Junction'),('PB','Puntamba'),('PBN','Parbhani Junction'),('PDG','Paradgaon'),('PDGN','Padhegaon'),('PDPL','Peddapalli'),('PG','Pergaon'),('PIZ','Pingli'),('POZ','Potul'),('PPZ','Peddempet'),('PQL','Pindlai'),('PSD','Parsoda'),('PTKP','Potkapalli'),('PTU','Partur'),('PUNE','Pune Junction'),('RDM','Ramgundam'),('RECH','Rechni Road'),('RGO','Rotegaon'),('RGP','Raghunathpalli'),('RGPM','Raghavapuram'),('RJY','Rajamundry'),('RNE','Ranjani'),('RNJD','Ranjangaon Road'),('RRI','Rahuri'),('RVKH','Ravindrakhani'),('SC','Secunderabad'),('SCO','Satuna'),('SELU','Selu'),('SGND','Shrigonda Road'),('SKZR','Sirpur Kagazngr'),('SLO','Samalkot Junction'),('SNVR','Sanvatsar'),('SRL','Sarola'),('SRUR','Sirpur Town'),('SVD','Sarwari'),('SVN','Sivungaon'),('TDD','Tadepalligudem'),('TKMY','Taklimiya'),('TNA','Thane'),('TR','Taru'),('TUNI','Tuni'),('UMRI','Umri'),('UPR','Usmanpur'),('URI','Uruli'),('VBR','Vambori'),('VHGN','Wihirgaon'),('VL','Vilad'),('VPR','Visapur'),('VSKP','Vishakapatnam'),('WIRR','Wirur'),('WL','Warangal'),('YL','Yeola'),('YT','Yevat'),('ZN','Jangaon');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainroute`
--

DROP TABLE IF EXISTS `trainroute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainroute` (
  `tid` int DEFAULT NULL,
  `scode` char(5) DEFAULT NULL,
  `order_num` int DEFAULT NULL,
  `Time` time DEFAULT NULL,
  KEY `tid` (`tid`),
  KEY `scode` (`scode`),
  CONSTRAINT `trainroute_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `trains` (`tid`),
  CONSTRAINT `trainroute_ibfk_2` FOREIGN KEY (`scode`) REFERENCES `stations` (`scode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainroute`
--

LOCK TABLES `trainroute` WRITE;
/*!40000 ALTER TABLE `trainroute` DISABLE KEYS */;
INSERT INTO `trainroute` VALUES (12757,'BZA',1,'06:05:00'),(12757,'NZD',2,'06:36:00'),(12757,'EE',3,'06:51:00'),(12757,'TDD',4,'07:23:00'),(12757,'NDD',5,'07:40:00'),(12757,'RJY',6,'08:21:00'),(12757,'SLO',7,'09:06:00'),(12757,'ANV',8,'09:32:00'),(12757,'TUNI',9,'09:47:00'),(12757,'AKP',10,'10:29:00'),(12757,'DVD',11,'11:24:00'),(12757,'VSKP',12,'12:05:00'),(126717,'NZB',1,'23:40:00'),(126717,'JKM',2,'23:48:00'),(126717,'NVT',3,'23:59:00'),(126717,'BSX',4,'00:16:00'),(126717,'DAB',5,'00:28:00'),(126717,'KEK',6,'00:41:00'),(126717,'BLSA',7,'00:50:00'),(126717,'UMRI',8,'01:14:00'),(126717,'SVN',9,'01:29:00'),(126717,'MUE',10,'01:58:00'),(126717,'MGC',11,'02:09:00'),(126717,'NED',12,'02:40:00'),(126717,'LBG',13,'02:57:00'),(126717,'CRU',14,'03:07:00'),(126717,'PAU',15,'03:25:00'),(126717,'MQL',16,'03:44:00'),(126717,'PIZ',17,'03:51:00'),(126717,'PBN',18,'04:03:00'),(126717,'PG',19,'04:16:00'),(126717,'MVO',20,'04:29:00'),(126717,'SELU',21,'04:41:00'),(126717,'SCO',22,'04:49:00'),(126717,'UPR',23,'04:59:00'),(126717,'PTU',24,'05:29:00'),(126717,'PDG',25,'05:39:00'),(126717,'RNE',26,'05:49:00'),(126717,'KODI',27,'06:09:00'),(126717,'SVD',28,'06:34:00'),(126717,'J',29,'07:03:00'),(126717,'BDU',30,'07:24:00'),(126717,'KMV',31,'07:39:00'),(126717,'CTH',32,'07:49:00'),(126717,'MKDD',33,'07:54:00'),(126717,'AWB',34,'08:15:00'),(126717,'DLB',35,'08:34:00'),(126717,'POZ',36,'08:49:00'),(126717,'LSR',37,'09:09:00'),(126717,'KAJG',38,'09:19:00'),(126717,'PSD',39,'09:29:00'),(126717,'RGO',40,'09:44:00'),(126717,'TR',41,'09:59:00'),(126717,'NSL',42,'10:19:00'),(126717,'ANK',43,'10:29:00'),(126717,'MMR',44,'11:30:00'),(126717,'YL',45,'12:34:00'),(126717,'KPG',46,'12:48:00'),(126717,'SNVR',47,'12:57:00'),(126717,'KNGN',48,'13:07:00'),(126717,'PB',49,'13:19:00'),(126717,'CIT',50,'13:29:00'),(126717,'BAP',51,'13:58:00'),(126717,'NPW',52,'14:07:00'),(126717,'PDGN',53,'14:16:00'),(126717,'TKMY',54,'14:24:00'),(126717,'RRI',55,'14:34:00'),(126717,'VBR',56,'14:48:00'),(126717,'VL',57,'15:18:00'),(126717,'ANG',58,'15:50:00'),(126717,'AKR',59,'16:13:00'),(126717,'SRL',60,'16:23:00'),(126717,'RNJD',61,'16:39:00'),(126717,'VPR',62,'16:48:00'),(126717,'BWD',63,'17:08:00'),(126717,'SGND',64,'17:28:00'),(126717,'KSTH',65,'17:44:00'),(126717,'DD',66,'18:35:00'),(126717,'PAA',67,'19:14:00'),(126717,'KDTN',68,'19:20:00'),(126717,'KDG',69,'19:29:00'),(126717,'KTT',70,'19:36:00'),(126717,'YT',71,'19:46:00'),(126717,'URI',72,'19:59:00'),(126717,'LONI',73,'20:12:00'),(126717,'MJBK',74,'20:19:00'),(126717,'HDP',75,'20:27:00'),(126717,'PUNE',76,'20:55:00'),(11951,'CSTM',1,'21:10:00'),(11951,'DR',2,'21:23:00'),(11951,'TNA',3,'21:43:00'),(11951,'KYN',4,'22:07:00'),(11951,'IGP',6,'23:48:00'),(11951,'DVL',7,'00:28:00'),(11951,'NK',8,'00:38:00'),(11951,'LS',9,'01:08:00'),(11951,'MMR',10,'02:15:00'),(11951,'RGO',11,'03:14:00'),(11951,'LSR',12,'03:39:00'),(11951,'AWB',13,'04:05:00'),(11951,'J',14,'04:58:00'),(11951,'PTU',15,'05:39:00'),(11951,'SELU',16,'06:04:00'),(11951,'MVO',17,'06:19:00'),(11951,'PBN',18,'07:10:00'),(11951,'PAU',19,'07:48:00'),(11951,'NED',20,'08:25:00'),(11951,'MUE',21,'09:23:00'),(11951,'UMRI',22,'09:43:00'),(11951,'DAB',23,'10:11:00'),(11951,'BSX',24,'10:30:00'),(11951,'NZB',25,'11:00:00'),(11951,'KMC',26,'11:50:00'),(11951,'AKE',27,'12:18:00'),(11951,'MZL',28,'12:26:00'),(11951,'BMO',29,'13:29:00'),(11951,'SC',30,'14:30:00'),(11950,'SC',1,'12:25:00'),(11950,'BMO',2,'12:40:00'),(11950,'MZL',3,'13:16:00'),(11950,'AKE',4,'13:24:00'),(11950,'KMC',5,'14:03:00'),(11950,'NZB',6,'15:00:00'),(11950,'BSX',7,'15:35:00'),(11950,'DAB',8,'15:46:00'),(11950,'UMRI',9,'16:20:00'),(11950,'MUE',10,'17:08:00'),(11950,'NED',11,'18:00:00'),(11950,'PAU',12,'18:40:00'),(11950,'PBN',13,'19:25:00'),(11950,'MVO',14,'19:54:00'),(11950,'SELU',15,'20:19:00'),(11950,'PTU',16,'20:49:00'),(11950,'J',17,'22:05:00'),(11950,'AWB',18,'23:20:00'),(11950,'LSR',19,'23:49:00'),(11950,'RGO',20,'00:19:00'),(11950,'MMR',21,'01:50:00'),(11950,'LS',22,'02:18:00'),(11950,'NK',23,'02:55:00'),(11950,'DVL',24,'03:08:00'),(11950,'IGP',25,'04:10:00'),(11950,'KYN',26,'05:47:00'),(11950,'TNA',27,'06:12:00'),(11950,'DR',28,'06:38:00'),(11950,'CSTM',29,'07:10:00'),(12758,'VSKP',1,'12:40:00'),(12758,'DVD',2,'13:08:00'),(12758,'AKP',3,'13:23:00'),(12758,'TUNI',4,'14:06:00'),(12758,'ANV',5,'14:20:00'),(12758,'SLO',6,'14:37:00'),(12758,'RJY',7,'15:36:00'),(12758,'NDD',8,'16:01:00'),(12758,'TDD',9,'16:18:00'),(12758,'EE',10,'16:51:00'),(12758,'NZD',11,'17:04:00'),(12758,'BZA',12,'18:35:00'),(126718,'PUNE',1,'14:25:00'),(126718,'HDP',2,'14:36:00'),(126718,'MJBK',3,'14:43:00'),(126718,'LONI',4,'14:51:00'),(126718,'URI',5,'15:04:00'),(126718,'YT',6,'15:18:00'),(126718,'KTT',7,'15:24:00'),(126718,'KDG',8,'15:31:00'),(126718,'KDTN',9,'15:38:00'),(126718,'PAA',10,'15:47:00'),(126718,'DD',11,'16:10:00'),(126718,'KSTH',12,'16:39:00'),(126718,'SGND',13,'16:54:00'),(126718,'BWD',14,'17:09:00'),(126718,'VPR',15,'17:29:00'),(126718,'RNJD',16,'17:42:00'),(126718,'SRL',17,'17:58:00'),(126718,'AKR',18,'18:07:00'),(126718,'ANG',19,'18:27:00'),(126718,'VL',20,'18:49:00'),(126718,'VBR',21,'19:04:00'),(126718,'RRI',22,'19:17:00'),(126718,'TKMY',23,'19:23:00'),(126718,'PDGN',24,'19:32:00'),(126718,'NPW',25,'19:40:00'),(126718,'BAP',26,'19:59:00'),(126718,'CIT',27,'20:15:00'),(126718,'PB',28,'20:25:00'),(126718,'KNGN',29,'20:35:00'),(126718,'SNVR',30,'20:45:00'),(126718,'KPG',31,'21:14:00'),(126718,'YL',32,'21:29:00'),(126718,'ANK',33,'21:44:00'),(126718,'MMR',34,'22:45:00'),(126718,'NSL',35,'23:24:00'),(126718,'TR',36,'23:35:00'),(126718,'RGO',37,'23:46:00'),(126718,'PSD',38,'23:56:00'),(126718,'KAJG',39,'00:01:00'),(126718,'LSR',40,'00:14:00'),(126718,'POZ',41,'00:24:00'),(126718,'DLB',42,'00:34:00'),(126718,'AWB',43,'00:50:00'),(126718,'MKDD',44,'01:09:00'),(126718,'CTH',45,'01:14:00'),(126718,'KMV',46,'01:29:00'),(126718,'BDU',47,'01:44:00'),(126718,'J',48,'01:58:00'),(126718,'SVD',49,'02:09:00'),(126718,'KODI',50,'02:19:00'),(126718,'RNE',51,'02:29:00'),(126718,'PDG',52,'02:39:00'),(126718,'PTU',53,'02:49:00'),(126718,'UPR',54,'02:59:00'),(126718,'SCO',55,'03:09:00'),(126718,'SELU',56,'03:19:00'),(126718,'MVO',58,'03:39:00'),(126718,'PG',60,'03:59:00'),(126718,'PBN',61,'04:28:00'),(126718,'PIZ',62,'04:39:00'),(126718,'MQL',63,'04:49:00'),(126718,'PAU',64,'05:28:00'),(126718,'CRU',65,'05:44:00'),(126718,'LBG',66,'05:54:00'),(126718,'NED',68,'06:35:00'),(126718,'MGC',70,'07:04:00'),(126718,'MUE',71,'07:58:00'),(126718,'SVN',72,'08:08:00'),(126718,'UMRI',74,'08:25:00'),(126718,'BLSA',75,'08:35:00'),(126718,'KEK',76,'08:45:00'),(126718,'CSTM',77,'08:52:00'),(126718,'DAB',78,'09:01:00'),(126718,'BSX',79,'09:18:00'),(126718,'CSTM',80,'09:26:00'),(126718,'NVT',81,'09:36:00'),(126718,'JKM',82,'09:45:00'),(126718,'NZB',83,'10:20:00'),(17234,'SKZR',1,'03:45:00'),(17234,'ASAF',2,'04:08:00'),(17234,'RECH',3,'04:16:00'),(17234,'BPA',4,'04:28:00'),(17234,'MMZ',5,'04:38:00'),(17234,'RVKH',6,'04:43:00'),(17234,'MCI',7,'04:58:00'),(17234,'PPZ',8,'05:08:00'),(17234,'RDM',9,'05:13:00'),(17234,'RGPM',10,'05:23:00'),(17234,'PDPL',11,'05:39:00'),(17234,'KYOP',12,'05:53:00'),(17234,'KOLR',13,'05:58:00'),(17234,'OEA',14,'06:03:00'),(17234,'PTKP',15,'06:08:00'),(17234,'BGSF',16,'06:13:00'),(17234,'JMKT',17,'06:18:00'),(17234,'OPL',18,'06:33:00'),(17234,'HSP',19,'06:43:00'),(17234,'KZJ',20,'07:45:00'),(17234,'PQL',21,'07:58:00'),(17234,'GNP',22,'08:03:00'),(17234,'RGP',23,'08:13:00'),(17234,'ZN',24,'08:23:00'),(17234,'ALER',25,'08:33:00'),(17234,'BG',26,'08:58:00'),(17234,'BN',27,'09:13:00'),(17234,'SC',28,'10:45:00'),(17235,'SC',1,'15:25:00'),(17235,'BN',2,'15:49:00'),(17235,'BG',3,'16:04:00'),(17235,'ALER',4,'16:19:00'),(17235,'ZN',5,'16:34:00'),(17235,'RGP',6,'16:44:00'),(17235,'GNP',7,'16:54:00'),(17235,'PQL',8,'17:09:00'),(17235,'KZJ',9,'17:30:00'),(17235,'HSP',10,'17:53:00'),(17235,'OPL',11,'18:03:00'),(17235,'JMKT',12,'18:09:00'),(17235,'BGSF',13,'18:17:00'),(17235,'PTKP',14,'18:24:00'),(17235,'OEA',15,'18:29:00'),(17235,'KOLR',16,'18:34:00'),(17235,'KYOP',17,'18:39:00'),(17235,'PDPL',18,'18:59:00'),(17235,'RGPM',19,'19:19:00'),(17235,'RDM',20,'19:28:00'),(17235,'PPZ',21,'19:34:00'),(17235,'MCI',22,'19:44:00'),(17235,'RVKH',23,'19:49:00'),(17235,'MMZ',24,'19:54:00'),(17235,'BPA',25,'20:09:00'),(17235,'RECH',26,'20:19:00'),(17235,'ASAF',27,'20:29:00'),(17235,'SKZR',28,'23:00:00'),(11296,'SC',1,'08:20:00'),(11296,'BG',2,'08:59:00'),(11296,'ALER',3,'09:19:00'),(11296,'ZN',4,'09:29:00'),(11296,'GNP',5,'09:53:00'),(11296,'KZJ',6,'10:23:00'),(11296,'OPL',7,'10:44:00'),(11296,'JMKT',8,'10:54:00'),(11296,'OEA',9,'11:24:00'),(11296,'PDPL',10,'11:39:00'),(11296,'RDM',11,'11:57:00'),(11296,'MCI',12,'12:14:00'),(11296,'RVKH',13,'12:23:00'),(11296,'BPA',14,'12:39:00'),(11296,'SKZR',15,'13:30:00'),(11297,'SKZR',1,'14:45:00'),(11297,'BPA',2,'15:14:00'),(11297,'RVKH',3,'15:19:00'),(11297,'MCI',4,'15:24:00'),(11297,'RDM',5,'15:34:00'),(11297,'PDPL',6,'15:49:00'),(11297,'OEA',7,'16:04:00'),(11297,'JMKT',8,'16:19:00'),(11297,'OPL',9,'16:34:00'),(11297,'KZJ',10,'16:59:00'),(11297,'GNP',11,'17:19:00'),(11297,'ZN',12,'17:41:00'),(11297,'ALER',13,'17:54:00'),(11297,'BG',14,'18:29:00'),(11297,'SC',15,'20:00:00'),(12784,'SC',1,'17:55:00'),(12784,'MLY',2,'18:05:00'),(12784,'KZJ',3,'19:44:00'),(12784,'WL',4,'19:59:00'),(12784,'KMT',5,'21:44:00'),(12784,'BZA',6,'23:45:00'),(12784,'EE',7,'00:49:00'),(12784,'TDD',8,'01:19:00'),(12784,'RJY',9,'02:05:00'),(12784,'SLO',10,'02:49:00'),(12784,'ANV',11,'03:14:00'),(12784,'TUNI',12,'03:24:00'),(12784,'AKP',13,'05:19:00'),(12784,'DVD',14,'06:14:00'),(12784,'VSKP',15,'07:00:00'),(12785,'VSKP',1,'18:55:00'),(12785,'DVD',2,'19:25:00'),(12785,'AKP',3,'19:39:00'),(12785,'TUNI',4,'20:19:00'),(12785,'ANV',5,'20:34:00'),(12785,'SLO',6,'21:04:00'),(12785,'RJY',7,'21:55:00'),(12785,'TDD',8,'22:34:00'),(12785,'EE',9,'23:06:00'),(12785,'BZA',10,'01:15:00'),(12785,'KMT',11,'02:39:00'),(12785,'WL',12,'04:35:00'),(12785,'KZJ',13,'04:45:00'),(12785,'MLY',14,'07:14:00'),(12785,'SC',15,'07:40:00');
/*!40000 ALTER TABLE `trainroute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trains` (
  `tid` int NOT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `scount` int DEFAULT '100',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (11296,'Pallilu SF Express',100),(11297,'Pallilu SF Express',100),(11950,'Devagiri Express',100),(11951,'Devagiri Express',100),(12757,'Intercity Express',100),(12758,'Intercity Express',100),(12784,'Pranayani SF Express',100),(12785,'Pranayani SF Express',100),(17234,'Bhagyanagar Passenger',100),(17235,'Bhagyanagar Passenger',100),(126717,'Vivek Express',100),(126718,'Vivek Express',100);
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;

--  
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uname` varchar(50) NOT NULL,
  `pass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`uname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('',''),('akash','akash@123'),('Avprtc','avprtc'),('sheelam','sai12'),('vivek','123');
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

-- Dump completed on 2023-10-14 14:32:36
