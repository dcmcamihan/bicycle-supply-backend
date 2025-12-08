-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: ballast.proxy.rlwy.net    Database: dbbicycle_supply
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `attendance_details`
--

DROP TABLE IF EXISTS `attendance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_details` (
  `attendance_detail_id` int NOT NULL AUTO_INCREMENT,
  `attendance_id` int NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attendance_detail_id`),
  KEY `fk_attendance_details_employee_attendance1_idx` (`attendance_id`),
  CONSTRAINT `fk_attendance_details_employee_attendance1` FOREIGN KEY (`attendance_id`) REFERENCES `employee_attendance` (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_details`
--

LOCK TABLES `attendance_details` WRITE;
/*!40000 ALTER TABLE `attendance_details` DISABLE KEYS */;
INSERT INTO `attendance_details` VALUES (1,2,'07:45:00','12:00:00','Morning attendance'),(2,2,'12:45:00','17:00:00','Afternoon attendance'),(3,3,'07:35:00','12:05:00','Morning attendance'),(4,3,'12:55:00','17:10:00','Afternoon attendance'),(5,4,'07:49:00','12:01:00','Morning attendance'),(6,4,'12:51:00','17:02:00','Afternoon attendance'),(7,5,'07:56:00','12:01:00','Morning attendance'),(8,5,'12:59:00','17:20:00','Afternoon attendance'),(9,6,'07:47:00','12:02:00','Morning attendance'),(10,6,'12:55:00','17:10:00','Afternoon attendance'),(11,8,'07:53:00','12:05:00','Morning attendance'),(12,8,'12:58:00','17:01:00','Afternoon attendance'),(13,9,'07:25:00','12:00:00','Morning attendance'),(14,9,'12:39:00','17:03:00','Afternoon attendance'),(15,10,'07:46:00','12:14:00','Morning attendance'),(16,10,'12:58:00','17:08:00','Afternoon attendance'),(17,11,'07:49:00','12:01:00','Morning attendance'),(18,11,'12:49:00','17:08:00','Afternoon attendance'),(19,12,'07:51:00','12:10:00','Morning attendance'),(20,12,'12:59:00','17:04:00','Afternoon attendance'),(21,13,'08:00:00','12:01:00','Morning attendance'),(22,13,'12:41:00','17:06:00','Afternoon attendance'),(23,15,'08:00:00','12:00:00','Morning attendance'),(24,16,'00:00:00','00:00:00','Morning attendance'),(25,17,'00:00:00','00:00:00','Morning attendance'),(26,18,'00:00:00','00:00:00','Morning attendance'),(27,19,'08:00:00','12:00:00','Morning attendance'),(28,20,'08:00:00','12:00:00','Morning attendance'),(29,21,'08:00:00','12:00:00','Morning attendance'),(30,22,'00:00:00','00:00:00','Morning attendance'),(31,23,'00:00:00','00:00:00','Morning attendance'),(32,24,'00:00:00','00:00:00','Morning attendance'),(33,25,'00:00:00','00:00:00','Morning attendance'),(34,26,'00:00:00','00:00:00','Morning attendance'),(35,27,'00:00:00','00:00:00','Morning attendance'),(38,15,'13:00:00','17:00:00','Afternoon attendance'),(39,16,'00:00:00','00:00:00','Afternoon attendance'),(40,17,'00:00:00','00:00:00','Afternoon attendance'),(41,18,'00:00:00','00:00:00','Afternoon attendance'),(42,19,'13:00:00','17:00:00','Afternoon attendance'),(43,20,'13:00:00','17:00:00','Afternoon attendance'),(44,21,'13:00:00','17:00:00','Afternoon attendance'),(45,22,'00:00:00','00:00:00','Afternoon attendance'),(46,23,'00:00:00','00:00:00','Afternoon attendance'),(47,24,'00:00:00','00:00:00','Afternoon attendance'),(48,25,'00:00:00','00:00:00','Afternoon attendance'),(49,26,'00:00:00','00:00:00','Afternoon attendance'),(50,27,'00:00:00','17:00:00','Afternoon attendance'),(51,28,'00:00:00','00:00:00',NULL),(52,29,'08:00:00','12:00:00','Morning Attendance'),(53,30,'08:30:00','12:30:00','Morning Attendance'),(54,31,'08:27:00','12:49:00','Morning Attendance'),(55,34,'08:00:00','12:00:00','Morning Attendance'),(56,35,'08:00:00','12:00:00','Morning Attendance'),(57,36,'08:00:00','12:00:00','Morning Attendance'),(58,46,'08:30:00','12:30:00','Morning Attendance'),(59,47,'08:30:00','12:30:00','Morning Attendance'),(60,48,'08:30:00','12:30:00','Morning Attendance'),(61,49,'08:30:00','12:30:00','Morning Attendance'),(62,50,'08:30:00','12:30:00','Morning Attendance'),(63,51,'08:30:00','12:30:00','Morning Attendance'),(64,57,'00:00:00','00:00:00',NULL),(65,58,'00:00:00','00:00:00',NULL),(66,59,'00:00:00','00:00:00',NULL),(67,60,'00:00:00','00:00:00',NULL),(68,61,'00:00:00','00:00:00',NULL),(69,62,'00:00:00','00:00:00',NULL),(80,63,'08:00:00','12:00:00','Morning attendance'),(81,64,'08:00:00','12:00:00','Morning attendance'),(82,65,'08:00:00','12:00:00','Morning attendance'),(83,66,'08:00:00','12:00:00','Morning attendance'),(84,67,'08:00:00','12:00:00','Morning attendance'),(85,68,'00:00:00','00:00:00',NULL),(86,69,'00:00:00','00:00:00',NULL),(87,70,'00:00:00','00:00:00',NULL),(88,71,'00:00:00','00:00:00',NULL),(89,72,'00:00:00','00:00:00',NULL),(90,73,'00:00:00','00:00:00',NULL),(91,74,'00:00:00','00:00:00',NULL),(92,75,'08:00:00','12:30:00',NULL),(93,78,'07:55:00','11:30:00',NULL),(94,80,'07:58:00','11:30:00',NULL),(95,82,'08:03:00','12:00:00',NULL),(96,83,'08:10:00','11:54:00',NULL),(97,84,'08:23:00','12:05:00',NULL),(98,85,'08:30:00','12:30:00',NULL),(99,86,'08:30:00','12:30:00',NULL),(100,87,'08:45:00','12:45:00',NULL),(101,88,'09:00:00','12:00:00',NULL),(102,89,'08:00:00','13:30:00',NULL),(103,90,'12:16:00','05:30:00',NULL),(104,91,'10:44:00','05:30:00',NULL),(105,92,'08:12:00','05:30:00',NULL),(106,93,'08:14:00','05:30:00',NULL),(107,94,'08:14:00','05:30:00',NULL),(108,95,'09:40:00','05:30:00',NULL),(109,96,'08:40:00','05:30:00',NULL);
/*!40000 ALTER TABLE `attendance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) NOT NULL,
  `origin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Colnago','Italy'),(2,'Pinarello','Italy'),(3,'Specialized','USA'),(4,'Trek','USA'),(5,'Cervélo','Canada'),(6,'BMC','Switzerland'),(7,'Giant','Taiwan'),(8,'Canyon','Germany'),(9,'Shimano','Japan'),(10,'SRAM','USA'),(11,'Polygon Bikes','Indonesia'),(12,'Giro','USA'),(13,'Bell Helmets','USA'),(14,'MOB Philippines','Philippines'),(15,'Southside Bike Parts PH','Philippines'),(16,'Stan13 Bike Philippines','Philippines'),(17,'Fox Racing Shox','USA'),(18,'Campagnolo','Italy'),(19,'KMC','Taiwan'),(20,'Tektro','Taiwan'),(21,'Maxxis','Taiwan'),(22,'Rurok Industries','Philippines'),(23,'Colony Bike Parts','Philippines'),(26,'Decathlon','France'),(29,'Sagmit','Taiwan'),(30,'Leo','Philippines'),(31,'Maxzone','China'),(33,'Ragusa','Taiwan'),(34,'Kenda','Taiwan'),(35,'Kronos','Taiwan'),(36,'Leather','USA'),(37,'Kangdi','China'),(38,'Nikyo','Japan'),(39,'Kenli','China'),(40,'D.I.D','Japan'),(41,'Yaban','Taiwan'),(42,'Kronos','Taiwan'),(43,'Stark','Spain'),(44,'Giant','Taiwan'),(45,'Drive','Germany'),(46,'Trike','Philippines'),(47,'X-Game','United States'),(48,'AVP','Canada'),(49,'Spartan','Netherlands'),(50,'Volts','UK'),(51,'Tactical','United States'),(52,'Promax','China'),(53,'Alpha','Spain'),(54,'Kinetic','India'),(55,'Toseek','China'),(56,'Daisy','China'),(57,'Leo','Philippines'),(58,'Chaoyang','China'),(59,'Sony','China'),(60,'Wanda','China'),(61,'Princess','US'),(62,'Spider Man','UK'),(63,'Retro','Germany'),(64,'C-Drive','US'),(65,'C-Drive','US'),(66,'ADR','Italy'),(67,'Hello Kitty','Japan'),(68,'Super Star','China'),(69,'BDF','China'),(70,'Power Ranger','China'),(71,'Morison','New Zealand'),(72,'Paw Patrol','Canada'),(73,'Tommy Star','china'),(74,'Adventure','Taiwan'),(75,'Batman','Spain'),(76,'Superman','China'),(77,'Star Trooper','America'),(78,'Rock','Canada'),(79,'Lexia','China'),(80,'Space Vives','Taiwan');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_code` char(8) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('BIKECOMP','Bike Components'),('BikeU','Bike Units'),('CYCACCES','Cycling Accessories'),('CYCAPPRL','Cycling Apparel & Gear'),('MAINTREP','Maintenance & Repair');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_type`
--

DROP TABLE IF EXISTS `contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_type` (
  `contact_type_code` char(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_type`
--

LOCK TABLES `contact_type` WRITE;
/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
INSERT INTO `contact_type` VALUES ('EMAILADD','Email Address'),('FACEBOOK','Facebook Account'),('MOBILENO','Mobile Number'),('TELEPHNO','Telephone Number'),('WHATSAPP','WhatsApp Account');
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `middle_name` varchar(60) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Juan','Dela Cruz','Santos','M'),(2,'Maria','Reyes','Lourdes','F'),(3,'Ricardo','Bautista','Mendoza','M'),(4,'Angela','Garcia','Dimaculangan','F'),(5,'Mark','Santiago','Villanueva','M'),(6,'Camille','Ramos','Dizon','F'),(7,'Jonathan','Cruz','Ramos','M'),(8,'Patricia','Villanueva','Reyes','F'),(9,'Gabriel','Mendoza','Fernandez','M'),(10,'Kristine','Aquino','Soriano','F'),(11,'Michael','Santos','David','M'),(12,'Anne','Gonzales','Francisco','F'),(13,'Joseph','Soriano','Cruz','M'),(14,'Charlene','Pineda','Valenzuela','F'),(15,'Benedict','Ocampo','De Leon','M'),(16,'Alyssa','Navarro','Hernandez','F'),(17,'Patrick','Tan','Ong','M'),(18,'Jennifer','Lim','Go','F'),(19,'Carlo','De Guzman','Manalo','M'),(20,'Sofia','Evangelista','Cruz','F'),(21,'test','test','test','F'),(22,'Ambot','Langaw','Sa','M'),(23,'Angelo','Cruz',NULL,NULL),(24,'Julian','Tolentino',NULL,NULL),(25,'Migs','Fuentes',NULL,NULL),(26,'Christian','Ong',NULL,NULL),(27,'Ken','Pangilinan',NULL,NULL),(28,'Herra','Cruz',NULL,NULL),(29,'Anna','Reyes',NULL,NULL),(30,'Kurt','Santos',NULL,NULL),(31,'Kim','Rodriguez',NULL,NULL),(32,'Russel','Gomez',NULL,NULL),(33,'George','Ong',NULL,NULL),(34,'Carlo','Mendoza',NULL,NULL),(35,'Patrick','Navarro',NULL,NULL),(36,'Kevin','Soriano',NULL,NULL),(37,'Joanna','Lim',NULL,NULL),(38,'Denise','Gonzales',NULL,NULL),(39,'Dennis','Bautista',NULL,NULL),(40,'Raymond','Alonzo',NULL,NULL),(41,'Alvin','Reyes',NULL,NULL),(42,'Joseph','Gutierrez',NULL,NULL),(43,'Rogelio','Cruz',NULL,NULL),(44,'Ellaine','Ramos',NULL,NULL),(45,'Noel','Santiago',NULL,NULL),(46,'Dianne','Soriano',NULL,NULL),(47,'Arvin','Beltran',NULL,NULL),(48,'Vincent','Lagman',NULL,NULL),(49,'Mark','Anthony Dizon',NULL,NULL),(50,'Mark','Rivera',NULL,NULL),(51,'Test','Walk-in',NULL,NULL),(52,'Test','Walk-in',NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_contact`
--

DROP TABLE IF EXISTS `customer_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_contact` (
  `customer_contact_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `contact_type_code` char(8) NOT NULL,
  `contact_value` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y',
  `is_primary` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`customer_contact_id`),
  KEY `fk_customer_contact_customer1_idx` (`customer_id`),
  KEY `fk_customer_contact_contact_type1_idx` (`contact_type_code`),
  CONSTRAINT `fk_customer_contact_contact_type1` FOREIGN KEY (`contact_type_code`) REFERENCES `contact_type` (`contact_type_code`),
  CONSTRAINT `fk_customer_contact_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_contact`
--

LOCK TABLES `customer_contact` WRITE;
/*!40000 ALTER TABLE `customer_contact` DISABLE KEYS */;
INSERT INTO `customer_contact` VALUES (1,1,'EMAILADD','juan.delacruz@gmail.com','Y','Y'),(3,2,'MOBILENO','09281234568','Y','Y'),(4,2,'FACEBOOK','https://www.facebook.com/maria.reyes','Y','N'),(5,3,'TELEPHNO','(02) 8123-4567','Y','Y'),(6,4,'MOBILENO','09051234569','Y','Y'),(7,4,'EMAILADD','angela.garcia@gmail.com','Y','N'),(8,5,'WHATSAPP','+639271234570','Y','Y'),(9,6,'MOBILENO','09331234571','Y','Y'),(10,6,'EMAILADD','camille.ramos@gmail.com','Y','N'),(11,7,'FACEBOOK','https://www.facebook.com/jonathan.cruz','Y','Y'),(12,8,'MOBILENO','09561234572','Y','Y'),(13,9,'MOBILENO','09481234573','Y','Y'),(14,9,'TELEPHNO','(02) 8654-7890','Y','N'),(15,10,'EMAILADD','kristine.aquino@gmail.com','Y','Y'),(16,10,'WHATSAPP','+639181234574','Y','N'),(17,11,'MOBILENO','09191234575','Y','Y'),(18,11,'FACEBOOK','https://www.facebook.com/michael.santos','Y','N'),(19,12,'MOBILENO','09771234576','Y','Y'),(20,13,'MOBILENO','09611234577','Y','Y'),(21,14,'MOBILENO','09231234578','Y','Y'),(22,15,'EMAILADD','benedict.ocampo@gmail.com','Y','Y'),(23,16,'MOBILENO','09181234579','Y','Y'),(24,17,'MOBILENO','09291234580','Y','Y'),(25,18,'MOBILENO','09501234581','Y','Y'),(26,19,'WHATSAPP','+639071234582','Y','Y'),(44,1,'MOBILENO','09191234567','Y','Y'),(45,2,'EMAILADD','maria.reyes@example.com','Y','N'),(46,3,'EMAILADD','ricardo.bautista@example.com','Y','N'),(47,5,'EMAILADD','mark.santiago@example.com','Y','N'),(48,7,'EMAILADD','jonathan.cruz@example.com','Y','N'),(49,8,'EMAILADD','patricia.villanueva@example.com','Y','N'),(50,9,'EMAILADD','gabriel.mendoza@example.com','Y','N'),(51,11,'EMAILADD','michael.santos@example.com','Y','N'),(52,12,'EMAILADD','anne.gonzales@example.com','Y','N'),(53,13,'EMAILADD','joseph.soriano@example.com','Y','N'),(54,14,'EMAILADD','charlene.pineda@example.com','Y','N'),(55,16,'EMAILADD','alyssa.navarro@example.com','Y','N'),(56,17,'EMAILADD','patrick.tan@example.com','Y','N'),(57,18,'EMAILADD','jennifer.lim@example.com','Y','N'),(58,19,'EMAILADD','carlo.deguzman@example.com','Y','N'),(59,20,'EMAILADD','sofia.evangelista@example.com','Y','N'),(60,21,'EMAILADD','test.test@example.com','Y','N'),(61,22,'EMAILADD','ambot.langaw@example.com','Y','N'),(76,3,'MOBILENO','09700000003','Y','Y'),(77,5,'MOBILENO','09700000005','Y','Y'),(78,7,'MOBILENO','09700000007','Y','Y'),(79,10,'MOBILENO','09700000010','Y','Y'),(80,15,'MOBILENO','09700000015','Y','Y'),(81,19,'MOBILENO','09700000019','Y','Y'),(82,20,'MOBILENO','09700000020','Y','Y'),(83,21,'MOBILENO','09700000021','Y','Y'),(84,22,'MOBILENO','09700000022','Y','Y');
/*!40000 ALTER TABLE `customer_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_status` char(4) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_employee_status1_idx` (`employee_status`),
  CONSTRAINT `fk_employee_status1` FOREIGN KEY (`employee_status`) REFERENCES `status` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Dianna Claire Marie','Amihan','Cahayag','F','2004-12-16','dcmamihan','$2b$10$QwZWeQZPtob1/pli4GYRnuwpjqgGkoAyCPysjcITyGr.w7ttuf2a.','0001'),(2,'Elijah Raye Vel','Amihan','Cahayag','M','2004-10-22','ervamihan','$2b$10$JycklZMUviLac3sVrAab3ej.e5ejA/2IJAN0583wiXdKr5tdTiG6m','0001'),(3,'Brandon Boyd','Amihan','Cahayag','M','2004-01-17','bbamihan','$2b$10$btNuet4VgXj/1prMuZg6BurkTq/xZEnnyGpNKtjo.0h7CpbgPqLZC','0001'),(4,'Ireneo','Palmero','Dizon','M','1978-03-15','ireneopalmero','$2b$10$5Zfe8EbRaRgsFEtKv.FwbuW1uBCpiQWsGE53OolIlEKmm9ewL20nW','0001'),(5,'Angelo','Palen','Ramos','M','1992-07-22','angelopalen','$2b$10$FtKUec.jhERFyeeOmInDbuxBtyv6qFJ8mvNqEosrZnEeRR.VE9MC6','0001'),(6,'Menzi','Englatera','Reyes','F','1991-12-03','menzienglatera','$2b$10$xXM6lTlb88YTMp7YHfxpKeIzPNrkfjQv2E25coItXV0NPv6JFajF6','0001'),(7,'Raizel','Oppus','Soriano','F','1996-02-12','raizeloppus','$2b$10$zb/yAfYSiw3nkOZN4boJzOxNxxqYRr8pjpjemvqbauQZZl0ypjwPq','0001'),(8,'Editha','Quezada','Villanueva','F','1983-06-25','ediquezada','$2b$10$KJsRps2Iab7Cgm1ou.6SJu9vvCdn/YpliRvIhy6X6hFlv4/9WucR.','0001'),(9,'Geraldy','Toting','Mendoza','M','1979-08-08','gertoting','$2b$10$9fwnmktgbQNK8PKLyLPqPOFr8f4wwWNj0EXlMcsTATjb/A.Zy53hi','0001'),(10,'Rustico','Bravo','Santos','M','1977-09-30','rusbravo','$2b$10$4IXJYS1oU3yIbeaEZuxpX.QNl5pxHLRvrOeUio4GKcG63riPDGCt.','0001'),(11,'Herald Vann','Alalim',NULL,'M','2004-04-23','hvalalim','$2b$10$KXXUxeIZfSJIitdNVhCXEOBMPSPQFFqgKUTWuANtXjQBfpxEqtCt.','0001'),(12,'John Herbert','Yncierto',NULL,'M','2004-07-27','jhyncierto','$2b$10$3gCTdd7R9swLzg82O7AbJeIx5WX/XBx0lNzg8DwVgHqhmlncfQaqC','0001'),(13,'Jacqueline','Yncierto',NULL,'F','1981-12-03','jacyncierto','$2b$10$nP6NDkd1v9D3fNDOLZSZqOaLmx6e5eGQRbay1eCyRxhSZPrGCuFg6','0001'),(16,'Carlo','Mendoza',NULL,'M','2000-10-02','carlo.mendoza','$2b$10$/QHjx2s8fUhNMf0.uuMaeO7kD2qrBI4lhiS57.R3MQD3aoeSstkf2','0001'),(17,'test1','test',NULL,'O',NULL,'test.test','$2b$10$WBobO3du5ntY8CqReBJ67OxyHPhNLcSxd8W59mU9dOjX/rNpv0Uha','0001');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendance`
--

DROP TABLE IF EXISTS `employee_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `attendance_status` char(4) NOT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `fk_employee_attendance_employee1_idx` (`employee_id`),
  KEY `fk_employee_attendance_status1_idx` (`attendance_status`),
  CONSTRAINT `fk_employee_attendance_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_employee_attendance_status1` FOREIGN KEY (`attendance_status`) REFERENCES `status` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (1,1,'2025-03-12','1002'),(2,2,'2025-03-13','1001'),(3,3,'2025-03-12','1001'),(4,4,'2025-03-12','1001'),(5,5,'2025-03-12','1001'),(6,6,'2025-03-12','1001'),(7,7,'2025-03-12','1001'),(8,8,'2025-03-12','1001'),(9,9,'2025-03-12','1001'),(10,10,'2025-03-12','1001'),(11,11,'2025-03-12','1001'),(12,12,'2025-03-12','1001'),(13,13,'2025-03-12','1001'),(15,1,'2025-10-21','1001'),(16,2,'2025-10-23','1002'),(17,3,'2025-10-23','1002'),(18,4,'2025-10-23','1002'),(19,5,'2025-10-23','1001'),(20,6,'2025-10-23','1001'),(21,7,'2025-10-23','1001'),(22,8,'2025-10-23','1002'),(23,9,'2025-10-23','1002'),(24,10,'2025-10-23','1002'),(25,11,'2025-10-23','1002'),(26,12,'2025-10-23','1002'),(27,13,'2025-10-23','1002'),(28,1,'2025-10-23','1005'),(29,1,'2025-10-24','1001'),(30,1,'2025-10-25','1001'),(31,1,'2025-10-27','1001'),(34,7,'2025-10-24','1001'),(35,6,'2025-10-24','1001'),(36,4,'2025-10-24','1001'),(37,2,'2025-10-24','1002'),(38,3,'2025-10-24','1002'),(39,5,'2025-10-24','1002'),(40,8,'2025-10-24','1006'),(41,9,'2025-10-24','1002'),(42,10,'2025-10-24','1002'),(43,11,'2025-10-24','1005'),(44,12,'2025-10-24','1002'),(45,13,'2025-10-24','1002'),(46,2,'2025-10-25','1001'),(47,3,'2025-10-25','1001'),(48,4,'2025-10-25','1001'),(49,5,'2025-10-25','1001'),(50,6,'2025-10-25','1001'),(51,7,'2025-10-25','1001'),(57,8,'2025-10-25','1002'),(58,9,'2025-10-25','1002'),(59,10,'2025-10-25','1005'),(60,11,'2025-10-25','1002'),(61,12,'2025-10-25','1002'),(62,13,'2025-10-25','1002'),(63,7,'2025-10-27','1001'),(64,5,'2025-10-27','1001'),(65,6,'2025-10-27','1001'),(66,4,'2025-10-27','1001'),(67,3,'2025-10-27','1001'),(68,2,'2025-10-27','1002'),(69,8,'2025-10-27','1002'),(70,9,'2025-10-27','1002'),(71,10,'2025-10-27','1002'),(72,11,'2025-10-27','1002'),(73,12,'2025-10-27','1002'),(74,13,'2025-10-27','1002'),(75,1,'2025-10-28','1001'),(76,6,'2025-10-28','1005'),(77,8,'2025-10-28','1006'),(78,13,'2025-10-28','1001'),(79,3,'2025-10-28','1002'),(80,2,'2025-10-28','1001'),(81,4,'2025-10-28','1002'),(82,5,'2025-10-28','1001'),(83,6,'2025-10-28','1001'),(84,7,'2025-10-28','1001'),(85,9,'2025-10-28','1001'),(86,10,'2025-10-28','1001'),(87,11,'2025-10-28','1001'),(88,12,'2025-10-28','1001'),(89,1,'2025-11-30','1001'),(90,8,'2025-12-01','1001'),(91,8,'2025-12-02','1001'),(92,8,'2025-12-03','1001'),(93,8,'2025-12-04','1001'),(94,8,'2025-12-05','1001'),(95,8,'2025-12-06','1001'),(96,8,'2025-12-08','1001');
/*!40000 ALTER TABLE `employee_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_contact`
--

DROP TABLE IF EXISTS `employee_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_contact` (
  `employee_contact_id` int NOT NULL AUTO_INCREMENT,
  `contact_type_code` char(8) NOT NULL,
  `employee_id` int NOT NULL,
  `contact_value` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y',
  `is_primary` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`employee_contact_id`),
  KEY `fk_employee_contact_contact_type1_idx` (`contact_type_code`),
  KEY `fk_employee_contact_employee1_idx` (`employee_id`),
  CONSTRAINT `fk_employee_contact_contact_type1` FOREIGN KEY (`contact_type_code`) REFERENCES `contact_type` (`contact_type_code`),
  CONSTRAINT `fk_employee_contact_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_contact`
--

LOCK TABLES `employee_contact` WRITE;
/*!40000 ALTER TABLE `employee_contact` DISABLE KEYS */;
INSERT INTO `employee_contact` VALUES (1,'EMAILADD',1,'diannaclairemarie.amihan@gmail.com','Y','Y'),(2,'EMAILADD',11,'heraldvann.alalim@gmail.com','Y','N'),(3,'EMAILADD',12,'johnherbert.yncierto@gmail.com','Y','N'),(4,'MOBILENO',1,'09606026075','Y','Y'),(5,'MOBILENO',2,'09606026072','Y','Y'),(6,'TELEPHNO',4,'(02) 1272-0905','Y','Y'),(7,'FACEBOOK',7,'https://www.facebook.com/jolensbicycleshop','Y','Y'),(8,'WHATSAPP',9,'+63 917 123 4567','N','N'),(9,'MOBILENO',3,'09623608843','Y','Y'),(10,'WHATSAPP',5,'+63 123 456 7890','N','N'),(11,'MOBILENO',7,'09876543211','Y','N'),(12,'FACEBOOK',11,'https://www.facebook.com/heralalalim','Y','Y'),(13,'FACEBOOK',2,'https://www.facebook.com/elijahamihan','Y','N'),(14,'EMAILADD',3,'brandonboyd.amihan@gmail.com','Y','Y'),(15,'MOBILENO',7,'09987654322','Y','Y'),(16,'TELEPHNO',6,'(02) 8267-0902','Y','Y'),(17,'EMAILADD',10,'rusticobravo@gmail.com','Y','N'),(18,'TELEPHNO',8,'(02) 9292-0978','Y','Y'),(19,'EMAILADD',4,'ireneopalmero@gmail.com','Y','Y'),(20,'FACEBOOK',6,'https://www.facebook.com/menzienglatera','Y','Y'),(21,'EMAILADD',2,'elijahrayevel.amihan@company.example','Y','N'),(22,'EMAILADD',5,'angelo.palen@company.example','Y','N'),(23,'EMAILADD',6,'menzi.englatera@company.example','Y','N'),(24,'EMAILADD',7,'raizel.oppus@company.example','Y','N'),(25,'EMAILADD',8,'editha.quezada@company.example','Y','N'),(26,'EMAILADD',9,'geraldy.toting@company.example','Y','N'),(27,'EMAILADD',13,'jacqueline.yncierto@company.example','Y','N'),(28,'MOBILENO',4,'09800000004','Y','Y'),(29,'MOBILENO',5,'09800000005','Y','Y'),(30,'MOBILENO',6,'09800000006','Y','Y'),(31,'MOBILENO',8,'09800000008','Y','Y'),(32,'MOBILENO',9,'09800000009','Y','Y'),(33,'MOBILENO',10,'09800000010','Y','Y'),(34,'MOBILENO',11,'09800000011','Y','Y'),(35,'MOBILENO',12,'09800000012','Y','Y'),(36,'MOBILENO',13,'09800000013','Y','Y'),(38,'MOBILENO',16,'09288842235','Y','Y'),(39,'EMAILADD',16,'carlo.mendoza@gmail.com','Y','N'),(42,'TELEPHNO',17,'12323945','Y','Y');
/*!40000 ALTER TABLE `employee_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_role`
--

DROP TABLE IF EXISTS `employee_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_role` (
  `employee_role_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `role_type_code` char(8) NOT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_role_id`),
  KEY `fk_employee_role_role_type1_idx` (`role_type_code`),
  KEY `fk_employee_role_employee1_idx` (`employee_id`),
  CONSTRAINT `fk_employee_role_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_employee_role_role_type1` FOREIGN KEY (`role_type_code`) REFERENCES `role_type` (`role_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role`
--

LOCK TABLES `employee_role` WRITE;
/*!40000 ALTER TABLE `employee_role` DISABLE KEYS */;
INSERT INTO `employee_role` VALUES (4,4,'BIKEMECH','Bicycle Repair'),(5,5,'SALEATTN',NULL),(6,6,'CASHIER','Cashing in/out money'),(7,7,'CASHIER','Cashing in/out money'),(8,8,'CASHIER','Cashing in/out money'),(9,9,'BIKEMECH','Frame Welding'),(10,10,'BIKEMECH','Wheel & Tire Specialist'),(15,6,'SALEATTN',NULL),(16,8,'SALEATTN',NULL),(17,1,'CASHIER',NULL),(18,2,'CASHIER',NULL),(19,3,'CASHIER',NULL),(20,11,'CASHIER',NULL),(21,12,'CASHIER',NULL),(22,13,'MANAGER',NULL);
/*!40000 ALTER TABLE `employee_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_role_history`
--

DROP TABLE IF EXISTS `employee_role_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_role_history` (
  `role_history_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `role_type` varchar(45) NOT NULL,
  `date_effectivity` date NOT NULL,
  PRIMARY KEY (`role_history_id`),
  KEY `fk_employee_role_history_employee1_idx` (`employee_id`),
  CONSTRAINT `fk_employee_role_history_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role_history`
--

LOCK TABLES `employee_role_history` WRITE;
/*!40000 ALTER TABLE `employee_role_history` DISABLE KEYS */;
INSERT INTO `employee_role_history` VALUES (1,1,'CASHIER','2025-10-23'),(2,2,'CASHIER','2025-10-23'),(3,3,'CASHIER','2025-10-23'),(4,4,'CASHIER','2025-10-23'),(5,5,'CASHIER','2025-10-23'),(6,6,'CASHIER','2025-10-23'),(7,7,'CASHIER','2025-10-23'),(8,8,'CASHIER','2025-10-23'),(9,9,'CASHIER','2025-10-23'),(10,10,'CASHIER','2025-10-23'),(11,11,'CASHIER','2025-10-23'),(12,12,'CASHIER','2025-10-23'),(13,13,'CASHIER','2025-10-23'),(14,16,'SALEATTN','2025-10-27'),(15,16,'SALEATTN','2025-10-27'),(16,17,'BIKEMECH','2025-10-27'),(17,17,'BIKEMECH','2025-10-27'),(18,17,'CASHIER','2025-10-27');
/*!40000 ALTER TABLE `employee_role_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `payment_method_code` varchar(8) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_method_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES ('BT','Bank Transfer','Bank to Bank','ArrowRightLeft'),('CASH','Cash','Accept Cash Payment','Banknote'),('CC','Credit Card','Credit Card','CreditCard'),('DC','Debit Card','Debit Card','CreditCard'),('EWP','Digital','E-Wallet Payment','Smartphone');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_code` char(8) NOT NULL,
  `brand_id` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `reorder_level` int NOT NULL DEFAULT '3',
  `image_url` varchar(2000) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category1_idx` (`category_code`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_code`) REFERENCES `category` (`category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Shimano Deore M6100 Groupset',NULL,'BIKECOMP',9,12500.00,3,'https://iloilobikeshop.com/cdn/shop/products/image_6484f2e0-6bfc-402a-9966-e6d83757f588.jpg?v=1685631182',0),(2,'SRAM GX Eagle 12-Speed Chain',NULL,'BIKECOMP',10,2800.00,5,'https://media.tweekscycles.com/media/catalog/product/cache/938df1aa6fd582849f667e6a2d491158/s/r/srmchpc8030011_d6_feb22.jpg',0),(3,'Polygon Cascade 4 Mountain Bike',NULL,'BIKECOMP',11,25000.00,3,'https://media.polygonbikes.com/wp-content/uploads/2022/09/13150556/MY22-CASCADE-FOUR-RR-768x576.png',0),(4,'Bell Super DH MIPS Helmet','The Trek Mountain Explorer Pro 29\" is engineered for serious mountain biking enthusiasts who demand performance and reliability on challenging terrain. This premium mountain bike features a lightweight aluminum frame with advanced suspension technology, p','CYCAPPRL',13,9800.00,3,'https://winstanleysbikes.co.uk/media/catalog/product/b/e/bell-super-dh-spherical-mountain-bike-helmet-prime-matte-blue-crimson-right.jpg',0),(5,'MOB Alloy Flat Pedals',NULL,'BIKECOMP',14,1200.00,3,'https://ph-test-11.slatic.net/p/7437cf58236c05bb03e9533739396e91.png',0),(6,'Ranking T9 Cycling Glasses',NULL,'CYCACCES',15,1500.00,3,'https://rockbrossport.co.uk/cdn/shop/files/ROCKBROS-Cycling-Glasses-Polarised-Sports-Glasses-UV400-Protection_1.jpg?v=1713942669&width=2048',0),(7,'Stan13 Bike Chain Lube',NULL,'MAINTREP',16,350.00,5,'https://stans.com/cdn/shop/files/LC0002STAN_SBIOBASEDDRYCHAINLUBE_120ML-FRONT_grande.jpg?v=1724255320',0),(8,'Campagnolo Super Record 12-Speed Groupset',NULL,'BIKECOMP',18,45000.00,3,'https://images.bike24.com/i/mb/8e/97/26/280810-00-d-565613.jpg',0),(9,'Tektro HD-M275 Hydraulic Disc Brakes',NULL,'BIKECOMP',20,3500.00,3,'https://sportandleisure.com/cdn/shop/products/57_fcc110d2-3a9c-42ad-8741-db83ff20bfac_1000x.jpg?v=1686846239',0),(10,'KMC X11 11-Speed Chain',NULL,'BIKECOMP',19,1500.00,3,'https://www.bike-discount.de/media/image/2e/f4/8a/KMC-X11-11-fach-Kette-Master.jpg',0),(11,'Maxxis High Roller II 27.5” Tire',NULL,'BIKECOMP',21,2800.00,3,'https://content.competitivecyclist.com/images/items/large/MXX/MXX003T/BK.jpg',0),(12,'Fox 36 Factory Series Suspension Fork',NULL,'BIKECOMP',17,55000.00,3,'https://driftbikes.com.au/cdn/shop/files/Fox_36_Float_E_Optimized_Performance_Fork_2023_Grip_3_Pos_Matte_Black.webp?v=1701812945&width=1000',0),(13,'Rurok Cordillera Enduro Bike Frame',NULL,'BIKECOMP',22,65000.00,3,'https://static.wixstatic.com/media/b322f6_8284271da2de482ba78fd5c2d92c0f34~mv2_d_2500_1700_s_2.jpg/v1/fill/w_980,h_666,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/b322f6_8284271da2de482ba78fd5c2d92c0f34~mv2_d_2500_1700_s_2.jpg',0),(14,'Colony Bike Handlebar Grips',NULL,'CYCACCES',23,800.00,3,'https://colonybmx.com.au/news/wp-content/uploads/2013/06/muchroom-green-storm-grips.jpg',0),(15,'Shimano XT M8100 12-Speed Cassette',NULL,'BIKECOMP',9,8500.00,3,'https://images.bike24.com/i/mb/6c/31/03/324206-02-d-676202.jpg',0),(16,'SRAM Level TL Hydraulic Disc Brakes',NULL,'BIKECOMP',10,6500.00,3,'https://www.sram.com/globalassets/image-hierarchy/sram-product-root-images/brakes---disc/brakes---disc/db-level-t-a1/leveltleverfront.jpg?w=1000',0),(17,'Campagnolo Bora WTO 45 Carbon Wheelset',NULL,'BIKECOMP',18,120000.00,3,'https://www.campagnolo.com/dw/image/v2/BJSG_PRD/on/demandware.static/-/Sites-cmp-master-catalog/default/dw3f95ef67/images/hi-res-1/WWRBORAULTRAWTO45C23DB.standard.5.H1.jpg?sw=885&q=85',0),(18,'Tektro R539 Road Brake Calipers',NULL,'BIKECOMP',20,2500.00,3,'https://m.media-amazon.com/images/I/614jqD9zOQL._UF894,1000_QL80_.jpg',0),(19,'KMC X9 9-Speed Chain',NULL,'BIKECOMP',19,950.00,3,'https://www.bike-discount.de/media/image/23/88/92/KMC-X9-9-fach-Kette-Master.jpg',0),(20,'Maxxis Minion DHF 29” Tire',NULL,'BIKECOMP',21,3200.00,3,'https://www.christysports.com/dw/image/v2/BGBB_PRD/on/demandware.static/-/Sites-master-winter/default/dw110652f7/1008961_020_1.jpg?sw=800&sh=800',0),(21,'Fox Racing Speedframe Pro Helmet',NULL,'CYCAPPRL',17,12000.00,3,'https://rox.com.ph/cdn/shop/files/1000502229_01.jpg?v=1726543243&width=1080',0),(22,'Rurok Kanlaon Hardtail MTB Frame',NULL,'BIKECOMP',22,35000.00,3,'https://static.wixstatic.com/media/b322f6_84b362f5d0a24610ba4dd7045eb14c02~mv2_d_2500_1700_s_2.jpg/v1/fill/w_980,h_666,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/b322f6_84b362f5d0a24610ba4dd7045eb14c02~mv2_d_2500_1700_s_2.jpg',0),(23,'Colony BMX Pedals',NULL,'BIKECOMP',23,1400.00,3,'https://colonybmx.com.au/news/wp-content/uploads/2013/06/fantastic-pedals-copper.jpg',0),(24,'MOB Bike Maintenance Kit',NULL,'MAINTREP',14,750.00,3,'https://m.media-amazon.com/images/I/71an8tEb-DL._AC_UF894,1000_QL80_.jpg',0),(25,'Colnago Aero Race Cycling Jersey',NULL,'CYCAPPRL',1,6500.00,3,'https://my-test-11.slatic.net/p/2079ff2f84fe82ebcba8a3e667853a76.jpg',0),(26,'Colnago Carbon Fiber Bottle Cage',NULL,'CYCACCES',1,2000.00,3,'https://cdn11.bigcommerce.com/s-cw4c0mbnss/images/stencil/1280x1280/products/163/448/1PRB.CRB.000.000.00SL__21803.1577978661.jpg?c=1',0),(27,'Pinarello Dogma F12 Carbon Saddle',NULL,'CYCACCES',2,12000.00,3,'https://www.cicliserino.com/wp-content/uploads/2020/02/PINARELLO-DOGMA-F12.png',0),(28,'Pinarello Padded Cycling Bib Shorts',NULL,'CYCAPPRL',2,8500.00,3,'https://www.rdrbikes.it/24487-home_default/pinarello-bibshort-dogma-black.jpg',0),(29,'Specialized S-Works Evade II Helmet',NULL,'CYCAPPRL',3,15000.00,3,'https://www.pro-mstore.com/800/61882875/1632999694599/CASCO-SPECIALIZED-SWORKS-EVADE-II-MIPS.jpg',0),(30,'Specialized Purist Water Bottle',NULL,'CYCACCES',3,900.00,3,'https://www.balfesbikes.co.uk/images/products/4/44/44119-232_btl_purist-insulated-chromatek-wg-btl-trans-camo-23-oz_hero.jpg?width=1998&height=1998&quality=85&mode=pad&format=webp&bgcolor=ffffff',0),(31,'Trek Circuit Softshell Cycling Gloves',NULL,'CYCAPPRL',4,2500.00,3,'https://www.teamcycles.com/images/products/3/31/31057_528_1.webp?width=1998&height=1998&quality=85&mode=pad&format=webp&bgcolor=ffffff',0),(32,'Trek Blendr Universal Handlebar Mount',NULL,'CYCACCES',4,1800.00,3,'https://trekstore.lt/23596-large_default/stem-part-bontrager-blendr-universal-light-mount.jpg',0),(33,'Cervélo Carbon Seatpost',NULL,'CYCACCES',5,5500.00,3,'https://www.backcountry.com/images/items/large/CVL/CVL1WUH/BLA.jpg',0),(34,'Cervélo Cycling Arm Warmers',NULL,'CYCAPPRL',5,2000.00,3,'https://www.bikeandrun.co.uk/images/product/196115141-143_CER_ArmWarmers_8b765f847d1427894761.jpg',0),(35,'BMC Aero Race Cycling Socks',NULL,'CYCAPPRL',6,1500.00,3,'https://content.competitivecyclist.com/images/items/large/PLZ/PLZ1376/TEA.jpg',0),(36,'BMC Pro Chain Cleaner Kit',NULL,'MAINTREP',6,1200.00,3,'https://www.bmc-air-filter-shop.com/070@WA-200-500/BMC-Washing-Kit-oil-spray-%26-cleaner.jpg',0),(37,'Giant Control Tower 3 Floor Pump',NULL,'MAINTREP',7,2200.00,3,'https://images.performancebike.com/images/large/bikes/giant/610000079.jpg',0),(38,'Giant Recon HL800 Bike Light',NULL,'CYCACCES',7,3500.00,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBCwwYnqqn7imqUHZULoeXI09Sdl04Jcp52Q&s',0),(39,'Canyon Signature Pro Road Gloves',NULL,'CYCAPPRL',8,2800.00,3,'https://cdn.prod.website-files.com/668edfdb81f8044d1658c7a6/6695c013f94d1585609baa70_main-9101000-Signature-Pro-Short-Finger-gloves-gy.webp',0),(40,'Canyon Bike Care Cleaning Kit',NULL,'MAINTREP',8,1800.00,3,'https://images.bike24.com/i/mb/08/39/9e/muc-off-bike-care-essentials-kit-2-1381502.jpg',0),(56,'MOB Philippines Puncture Repair Kit',NULL,'MAINTREP',14,350.00,4,'https://ph-live-01.slatic.net/p/2de2ee6baf023fa837cb3f019b918f8a.jpg',0),(57,'Southside Bike Chain Cleaner Set','The Trek Mountain Explorer Pro 29\" is engineered for serious mountain biking enthusiasts who demand performance and reliability on challenging terrain. This premium mountain bike features a lightweight aluminum frame with advanced suspension technology, p','MAINTREP',15,650.00,5,'https://m.media-amazon.com/images/I/71tcUzoONyL.jpg',0),(58,'test',NULL,'CYCACCES',2,120.00,3,NULL,0),(59,'test',NULL,'BIKECOMP',1,1.00,1,NULL,0),(60,'Rurok Cordillera Enduro Jersey',NULL,'CYCAPPRL',22,1800.00,8,'https://www.cuyuna.com/wp-content/uploads/2023/06/Cuyuna-Mountain-Bike-Jersey-Enduro-Three-Quarter-Sleeve-1.jpg',0),(61,'Specialized BG Sport Gel Gloves',NULL,'CYCAPPRL',3,1250.00,4,'https://assets.specialized.com/i/specialized/67123-160_GLV_BG-SPORT-GEL-GLOVE-LF-VIVRED_HERO?$scom-pdp-product-image-xl$&fmt=webp',0),(62,'test1234de','The Trek Mountain Explorer Pro 29\" is engineered for serious mountain biking enthusiasts who demand performance and reliability on challenging terrain. This premium mountain bike features a lightweight aluminum frame with advanced suspension technology, p','MAINTREP',1,13579.50,2,'https://images.pexels.com/photos/100582/pexels-photo-100582.jpeg?auto=compress&cs=tinysrgb&w=800',0),(63,'test 12345',NULL,'MAINTREP',3,13579.50,3,NULL,0),(64,'Giro Tessa Women’s Cycling Gloves',NULL,'CYCAPPRL',12,1200.00,3,'https://terrycycling.com/cdn/shop/files/media_c4e38e10-43c9-4228-a3ff-344ee33b2162.jpg?v=1739993764',0),(65,'Shimano Deore XT 12-Speed Cassette',NULL,'BIKECOMP',9,4250.00,4,'https://dassets.shimano.com/content/dam/global/cg1SHICCycling/final/products/cg2SHICComponent/cg3SHICCasseteSprocket/cg4SHICCasseteSprocket/CS-M8100-12_10-51T_C260_1.jpg/jcr:content/renditions/CS-M8100-12_10-51T_C260_1_750_750.jpeg',0),(66,'Sagmit Tube 29x2.125',NULL,'BIKECOMP',29,195.00,3,NULL,1),(67,'Maxzone Tube 29x2.125',NULL,'BIKECOMP',31,265.00,3,NULL,1),(68,'Tube 27.5x1.95',NULL,'BIKECOMP',31,210.00,3,NULL,1),(69,'Tube 27.5x1.95',NULL,'BIKECOMP',34,235.00,3,NULL,1),(70,'Tube 26x1.95',NULL,'BIKECOMP',29,195.00,3,NULL,1),(71,'Tube 18x1.75',NULL,'BIKECOMP',33,165.00,3,NULL,1),(72,'Tube 16x2.125',NULL,'BIKECOMP',30,150.00,3,NULL,1),(73,'Tube 16x1.75',NULL,'BIKECOMP',30,150.00,3,NULL,0),(74,'Tube 14x1.75',NULL,'BIKECOMP',30,140.00,3,NULL,0),(75,'Tube 12x1.75',NULL,'BIKECOMP',30,130.00,3,NULL,1),(76,'Tube 26x1 3/8',NULL,'BIKECOMP',30,185.00,3,NULL,1),(77,'Tube 700C X 23/25C',NULL,'BIKECOMP',29,190.00,3,NULL,1),(78,'Tube 700C X 28/32C',NULL,'BIKECOMP',29,195.00,3,NULL,1),(79,'60mm Tube 700C X 23/32',NULL,'BIKECOMP',21,365.00,3,'https://westdenecycles.co.za/wp-content/uploads/2022/12/9N-NwzKhEHzwwqLN_liwMkUmuiYKdhwrBEj0FSf88854-QAnLiNPadfvjP-VwnbzlVTNJpRHwMFylzl3RY2K6jhIv9wcYO1MaG0BDIpbHoEXiwpjaw5VGXsaf0uh5lbiZlahMumLUcQZA4_G7L4un895lep0p43QZnl14MKtXEXn3yYQ-tjFX50_1800x1800.jpg',1),(80,'48mm Tube 700C X 23/32',NULL,'BIKECOMP',21,345.00,3,'https://images.bike24.com/i/mb/f2/b3/8c/maxxis-welterweight-road-tube-700x23-32c-presta-48mm-1095841.jpg',1),(81,'80mm Tube 700C X 23/32',NULL,'BIKECOMP',21,385.00,3,NULL,1),(82,'48mm Tube 700C X 33/50',NULL,'BIKECOMP',21,345.00,3,'https://contents.mediadecathlon.com/m22989799/k$489a6d3f1996773dba8e4527c405d911/maxxis-welter-weight-bicycle-inner-tube-700x33-50c-schrader-48mm-valve-maxxis-e26e4cf7-7627-4efb-9fba-f9df6dc5baa4.jpg',1),(83,'Tube 29x1.75/2.4',NULL,'BIKECOMP',21,320.00,3,NULL,1),(84,'Tube 27.5x1.90/2.3',NULL,'BIKECOMP',21,320.00,3,NULL,1),(85,'Tube 26x1.5/2.5',NULL,'BIKECOMP',21,320.00,3,NULL,1),(86,'Chain 9 speed CN-HG53',NULL,'BIKECOMP',9,970.00,3,NULL,1),(87,'Chain 10 speed CN-HG54',NULL,'BIKECOMP',9,1390.00,3,NULL,1),(88,'Chain 11 speed CN-HG601-11',NULL,'BIKECOMP',9,1650.00,3,NULL,1),(89,'Chain 12 speed CN-M6100',NULL,'BIKECOMP',9,1690.00,3,NULL,1),(90,'Pedal',NULL,'BIKECOMP',33,430.00,3,NULL,1),(91,'614 Pedal ',NULL,'BIKECOMP',29,1050.00,3,NULL,1),(92,'712 Pedal',NULL,'BIKECOMP',33,850.00,3,NULL,1),(93,'Monster Pedal',NULL,'BIKECOMP',29,890.00,3,NULL,1),(94,'Sprocket 8 speed 11-40T',NULL,'BIKECOMP',29,650.00,3,NULL,1),(95,'Sprocket 9 speed 11-42T',NULL,'BIKECOMP',29,850.00,3,NULL,1),(96,'Sprocket 9 speed 11-46T',NULL,'BIKECOMP',29,1150.00,3,NULL,1),(97,'Sprocket 10 speed 11-46T ',NULL,'BIKECOMP',29,1350.00,3,NULL,1),(98,'Sprocket 11 speed 11-50T',NULL,'BIKECOMP',29,1550.00,3,NULL,1),(99,'Sprocket 10 speed 11-50T',NULL,'BIKECOMP',29,1450.00,3,NULL,1),(100,'Cleats Pedal M520',NULL,'BIKECOMP',9,2350.00,3,NULL,1),(101,'Cleats Pedal ME700',NULL,'BIKECOMP',9,2550.00,3,NULL,1),(102,'RD 9 speed Alivio RD-M3100-SGS',NULL,'BIKECOMP',9,1490.00,3,NULL,1),(103,'RD 10/11 speed Cues RD-U6000-GS',NULL,'BIKECOMP',9,2485.00,3,NULL,1),(104,'RD 9 speed Cues RD-U3020-SGS',NULL,'BIKECOMP',9,1050.00,3,NULL,1),(105,'RD 12 Speed Deore RD-6100-SGS',NULL,'BIKECOMP',9,3050.00,3,NULL,1),(106,'RD 12 speed SLX RD-7120-SGS',NULL,'BIKECOMP',9,4190.00,3,NULL,1),(107,'Cues Shifter Lever 9 speed SL-U4000-9R',NULL,'BIKECOMP',9,950.00,3,NULL,1),(108,'Cues Shifter Lever 10 speed SL-U6000-11R',NULL,'BIKECOMP',9,1350.00,3,NULL,1),(109,'Deore Shifter Lever 12 speed SL-M6100-R',NULL,'BIKECOMP',9,1950.00,3,NULL,1),(110,'Deore Shifter Lever 11 speed SL-M5100-R',NULL,'BIKECOMP',9,1890.00,3,NULL,1),(111,'Deore Shifter Lever 10 speed SL-M4100-R',NULL,'BIKECOMP',9,1350.00,3,NULL,1),(112,'Sprocket 9 speed 11-36T CS-HG201-9',NULL,'BIKECOMP',9,1090.00,3,NULL,1),(113,'Sprocket 105 11-32T CS-R7000',NULL,'BIKECOMP',9,2950.00,3,NULL,1),(114,'Sprocket 9 speed 11-32T CS-HG400-9',NULL,'BIKECOMP',9,990.00,3,NULL,1),(115,'Sprocket 105 11 speed 11-34T CS-R7000',NULL,'BIKECOMP',9,2950.00,3,NULL,1),(116,'Sprocket 10 speed 11-32T CS-HG500-10',NULL,'BIKECOMP',9,1650.00,3,NULL,1),(117,'Chain 96L',NULL,'BIKECOMP',40,155.00,3,NULL,1),(118,'Chain 114L',NULL,'BIKECOMP',40,195.00,3,'https://lawsonspeedshop.com/cdn/shop/products/DSC_0173-2-removebg-preview.png?v=1748522986',1),(119,'Chain 116L',NULL,'BIKECOMP',40,195.00,3,NULL,1),(120,'Chain 9 speed',NULL,'BIKECOMP',33,320.00,3,NULL,1),(121,'Chain 10 speed',NULL,'BIKECOMP',33,370.00,3,NULL,1),(122,'Chain 8 speed',NULL,'BIKECOMP',41,370.00,3,NULL,1),(123,'Free Wheel 16T',NULL,'BIKECOMP',42,175.00,3,NULL,1),(124,'Free wheel 16T',NULL,'BIKECOMP',33,165.00,3,NULL,1),(125,'Free Wheel 18T',NULL,'BIKECOMP',36,185.00,3,NULL,1),(126,'Free Wheel 20T',NULL,'BIKECOMP',36,165.00,3,NULL,1),(127,'Free Wheel 22T',NULL,'BIKECOMP',37,185.00,3,NULL,1),(128,'Maxzone Spoke Set 26x258mm',NULL,'BIKECOMP',31,550.00,3,NULL,1),(129,'Ragusa Spoke Set 26x261mm',NULL,'BIKECOMP',33,550.00,3,NULL,1),(130,'Spoke Set 27.5x270mm',NULL,'BIKECOMP',33,550.00,3,NULL,1),(131,'Spoke Set 29x289mm',NULL,'BIKECOMP',33,550.00,3,NULL,1),(132,'Ragusa Head Parts Standard',NULL,'BIKECOMP',33,155.00,3,NULL,1),(133,'Nikyo Head Parts Standard',NULL,'BIKECOMP',38,155.00,3,NULL,1),(134,'OPC #20',NULL,'BIKECOMP',39,155.00,3,NULL,1),(135,'Rear Axle BmX',NULL,'BIKECOMP',33,95.00,3,NULL,1),(136,'Maxzone Handle Grip',NULL,'BIKECOMP',31,165.00,3,NULL,1),(137,'Ragusa Handle Grip',NULL,'BIKECOMP',33,155.00,3,NULL,1),(138,'Stark Handle Grip BMX',NULL,'BIKECOMP',43,95.00,3,NULL,1),(139,'Ragusa Handle Grip BMX',NULL,'BIKECOMP',33,185.00,3,NULL,1),(140,'Giant Handle Grip BMX',NULL,'BIKECOMP',7,185.00,3,NULL,1),(141,'Caliper Brake',NULL,'BIKECOMP',45,245.00,3,NULL,1),(142,'V-Brake Alloy',NULL,'BIKECOMP',33,450.00,3,NULL,1),(143,'Balancer #16-20',NULL,'BIKECOMP',33,410.00,3,NULL,1),(144,'Balancer #20',NULL,'BIKECOMP',33,390.00,3,NULL,1),(145,'Balancer #16',NULL,'BIKECOMP',33,295.00,3,NULL,1),(146,'Brake Drum',NULL,'BIKECOMP',33,245.00,3,NULL,1),(147,'Brake Lever (Ordinary)',NULL,'BIKECOMP',33,95.00,3,NULL,1),(148,'Brake Lever R200',NULL,'BIKECOMP',33,195.00,3,NULL,1),(149,'Brake Lever R300',NULL,'BIKECOMP',33,245.00,3,NULL,1),(150,'Valve Adaptor',NULL,'BIKECOMP',33,50.00,3,NULL,1),(151,'Cable Shifter',NULL,'BIKECOMP',9,120.00,3,NULL,1),(152,'Kiddie RA-19',NULL,'BikeU',46,1750.00,3,NULL,1),(153,'Kiddie Stoller RA-20',NULL,'BikeU',46,2650.00,3,NULL,1),(154,'Kiddie RA-22',NULL,'BikeU',46,1850.00,3,NULL,1),(155,'Kronos Kiddie Balancer Bike #12',NULL,'BikeU',35,3750.00,3,NULL,1),(156,'X-Game Kiddie Balancer Bike #12',NULL,'BikeU',47,3550.00,3,NULL,1),(157,'AVP BMX #16 W/SIDE STAND',NULL,'BikeU',48,3650.00,3,NULL,1),(158,'AVP BMX #16 Disc Brake',NULL,'BikeU',48,4350.00,3,NULL,1),(159,'AVP BMX #20 W/Side Stand',NULL,'BikeU',48,3850.00,3,NULL,1),(160,'Spartan BMX #20 W/Side Stand',NULL,'BikeU',49,3850.00,3,NULL,1),(161,'Stark BMX W/Side Stand #20',NULL,'BikeU',43,3750.00,3,NULL,1),(162,'Volts BMX #20 W/Side Stand',NULL,'BikeU',50,3650.00,3,NULL,1),(163,'X-Game BMX #20 W/Side Stand',NULL,'BikeU',47,3850.00,3,NULL,1),(164,'Disc Brake W/Side Stand',NULL,'BikeU',51,4950.00,3,NULL,1),(165,'Disc Brake #20 W/Side Stand',NULL,'BikeU',52,4950.00,3,NULL,1),(166,'Motor Bike #12',NULL,'BikeU',53,3950.00,3,NULL,1),(167,'Motor Bike #16',NULL,'BikeU',53,4200.00,3,NULL,1),(168,'Disc Brake #16',NULL,'BikeU',52,4950.00,3,NULL,1),(169,'Disc Brake MTB #20',NULL,'BikeU',52,5900.00,3,NULL,1),(170,'Disc Brake #16',NULL,'BikeU',51,3950.00,3,NULL,1),(171,'Kinetic MTB #20',NULL,'BikeU',54,6000.00,3,NULL,1),(172,'MTB Alloy #20',NULL,'BikeU',55,6900.00,3,NULL,1),(173,'Ladies Bike #26',NULL,'BikeU',56,4250.00,3,NULL,1),(174,'Ladies Bike #24',NULL,'BikeU',56,4250.00,3,NULL,1),(175,'Ragusa Tube #12',NULL,'BIKECOMP',33,130.00,3,NULL,1),(176,'Leo Tube #12',NULL,'BIKECOMP',30,130.00,3,NULL,1),(177,'Tube #14',NULL,'BIKECOMP',57,145.00,3,NULL,1),(178,'Tube #16x1.75',NULL,'BIKECOMP',30,150.00,3,NULL,1),(179,'Tube #22x1 3/8',NULL,'BIKECOMP',57,175.00,3,NULL,1),(180,'Tube #24x1 3/8',NULL,'BIKECOMP',57,175.00,3,NULL,1),(181,'Tube #24x1.75',NULL,'BIKECOMP',57,175.00,3,NULL,1),(182,'Tube #26x1.75',NULL,'BIKECOMP',57,185.00,3,NULL,1),(183,'Tube #26x1.75',NULL,'BIKECOMP',57,185.00,3,NULL,0),(184,'Tire # 12x1.75',NULL,'BIKECOMP',33,195.00,3,NULL,1),(185,'Tire #12x2.125',NULL,'BIKECOMP',33,205.00,3,NULL,1),(186,'Tire #14x1.75',NULL,'BIKECOMP',33,215.00,3,NULL,1),(187,'Tire #14x2.125',NULL,'BIKECOMP',57,225.00,3,NULL,1),(188,'Tire #14x2.125',NULL,'BIKECOMP',33,215.00,3,NULL,1),(189,'Tire #16x1.75',NULL,'BIKECOMP',33,215.00,3,NULL,1),(190,'Tire #16x1.75',NULL,'BIKECOMP',30,215.00,3,NULL,1),(191,'Tire #16x2.125',NULL,'BIKECOMP',58,275.00,3,NULL,1),(192,'Tire #16x2.125',NULL,'BIKECOMP',57,245.00,3,NULL,1),(193,'Tire #18x1.75',NULL,'BIKECOMP',33,265.00,3,NULL,1),(194,'Tire #20x2.125',NULL,'BIKECOMP',58,320.00,31,NULL,1),(195,'Tire #20x2.125',NULL,'BIKECOMP',59,395.00,3,NULL,1),(196,'Tire #20x1.95',NULL,'BIKECOMP',60,210.00,3,NULL,1),(197,'Road Bike PR-30',NULL,'BikeU',52,9500.00,3,NULL,1),(198,'Leo Tire #20x1.75',NULL,'BIKECOMP',57,255.00,3,NULL,1),(199,'Leo Tire #20x2.125',NULL,'BIKECOMP',30,295.00,3,NULL,1),(200,'Ragusa Tire #26x1.75',NULL,'BIKECOMP',33,310.00,3,NULL,1),(201,'Leo Tube #20x1.75',NULL,'BIKECOMP',30,165.00,3,NULL,1),(202,'Leo Tube #20x2.125',NULL,'BIKECOMP',30,185.00,3,NULL,1),(203,'Princess Pink #16',NULL,'BikeU',61,3650.00,3,NULL,1),(204,'Princess Purple #12',NULL,'BikeU',61,3650.00,3,NULL,1),(205,'Spider Man #16',NULL,'BikeU',62,3650.00,3,NULL,1),(206,'Retro #16',NULL,'BikeU',63,3450.00,3,NULL,1),(207,'C-Drive #16',NULL,'BikeU',65,2950.00,3,NULL,1),(208,'ADR #16',NULL,'BikeU',66,3650.00,3,NULL,1),(209,'Hello Kitty #16',NULL,'BikeU',67,3850.00,3,NULL,1),(210,'Super Star #16',NULL,'BikeU',68,3450.00,3,NULL,1),(211,'BDF #16',NULL,'BikeU',69,3550.00,3,NULL,1),(212,'Spider Man #12',NULL,'BikeU',62,3350.00,3,NULL,1),(213,'C-Drive #12',NULL,'BikeU',64,2750.00,3,NULL,1),(214,'Power Ranger #12',NULL,'BikeU',70,3150.00,3,NULL,1),(215,'Morison #12',NULL,'BikeU',71,2000.00,3,NULL,1),(216,'Paw Patrol #12',NULL,'BikeU',72,3250.00,3,NULL,0),(217,'Paw Patrol',NULL,'BikeU',72,3250.00,3,NULL,1),(218,'Princess Pink #12',NULL,'BikeU',61,3250.00,3,NULL,1),(219,'Tommy Star #12',NULL,'BikeU',73,3050.00,3,NULL,1),(220,'Stark #12',NULL,'BikeU',43,3350.00,3,NULL,1),(221,'Princess Purple #12',NULL,'BikeU',61,3250.00,3,NULL,1),(222,'Adventure #12',NULL,'BikeU',74,3250.00,3,NULL,1),(223,'Batman #12',NULL,'BikeU',75,2750.00,3,NULL,1),(224,'Retro #12',NULL,'BikeU',63,3250.00,3,NULL,1),(225,'Superman #12',NULL,'BikeU',76,2750.00,3,NULL,1),(226,'Star Trooper #16',NULL,'BikeU',77,3650.00,3,NULL,1),(227,'Rock#16',NULL,'BikeU',78,3550.00,3,NULL,1),(228,'Super Star #16',NULL,'BikeU',68,3550.00,3,NULL,1),(229,'X-Game #16',NULL,'BikeU',47,3550.00,3,NULL,1),(230,'Princess Purple #16',NULL,'BikeU',61,3650.00,3,NULL,1),(231,'Spiderman #14',NULL,'BikeU',62,3450.00,3,NULL,1),(232,'Paw Patrol #14',NULL,'BikeU',72,3550.00,3,NULL,1),(233,'Tommy Star #14',NULL,'BikeU',73,3550.00,3,NULL,1),(234,'Super Star #16',NULL,'BikeU',68,3450.00,3,NULL,1),(235,'Lexia #16',NULL,'BikeU',79,3250.00,3,NULL,1),(236,'Space Vives #16',NULL,'BikeU',80,3250.00,3,NULL,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `product_image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_url` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`product_image_id`),
  KEY `fk_product_images_product_id_idx` (`product_id`),
  CONSTRAINT `fk_product_images_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'https://iloilobikeshop.com/cdn/shop/products/image_6484f2e0-6bfc-402a-9966-e6d83757f588.jpg?v=1685631182'),(2,1,'https://iloilobikeshop.com/cdn/shop/products/image_5d824b83-fff8-4501-b155-ef64d9324469.jpg?v=1685631182'),(3,1,'https://iloilobikeshop.com/cdn/shop/products/image_45694869-b18c-4890-91a4-29170efddd72.jpg?v=1685631182'),(4,1,'https://iloilobikeshop.com/cdn/shop/products/image_1cefbe96-1b24-4f10-826a-23a149f22d97.jpg?v=1685631182'),(5,1,'https://iloilobikeshop.com/cdn/shop/products/image_13ee7764-5af5-475c-aa19-964eab5b43ea.jpg?v=1685631182'),(6,2,'https://media.tweekscycles.com/media/catalog/product/cache/938df1aa6fd582849f667e6a2d491158/s/r/srmchpc8030011_d6_feb22.jpg'),(7,2,'https://images.bike24.com/media/510/i/mb/fa/97/34/230859-01-d-445028.jpg'),(8,2,'https://www.tnc-hamburg.com/images/product_images/info_images/Kette_Sram_GX_Eagle_Transmission_65354_0.webp'),(9,2,'https://www.chain-nerds.com/cdn/shop/files/SRAM-GX-2_1.png?v=1717911801&width=1946'),(10,2,'https://risecomponents.com/cdn/shop/files/SramGXEagleSpeedChain.webp?v=1722356999'),(11,3,'https://i1.adis.ws/i/jpl/go_553040_a?w=638&h=638&&fmt=webp&fmt=webp'),(12,3,'https://bikes.fan/wp-content/uploads/bike_images/polygon-cascade-4-2024-2.jpeg'),(13,3,'https://m.media-amazon.com/images/I/517tYAGBPyL._UF350,350_QL80_.jpg'),(14,3,'https://i0.wp.com/staytunedbikesonline.in/wp-content/uploads/2025/08/MY22-CASCADE-TWO-LF.png?fit=1400%2C1050&ssl=1'),(17,64,'https://terrycycling.com/cdn/shop/files/media_c4e38e10-43c9-4228-a3ff-344ee33b2162.jpg?v=1739993764'),(18,64,'https://www.steepandcheap.com/images/items/medium/GIR/GIR00HU/BLA.jpg'),(19,64,'https://cdn.mammothbikes.com/product/xlarge/193660.jpg'),(20,65,'https://dassets.shimano.com/content/dam/global/cg1SHICCycling/final/products/cg2SHICComponent/cg3SHICCasseteSprocket/cg4SHICCasseteSprocket/CS-M8100-12_10-51T_C260_1.jpg/jcr:content/renditions/CS-M8100-12_10-51T_C260_1_750_750.jpeg'),(21,65,'https://thundermountainbikes.com/cdn/shop/files/shimano-deore-xt-cs-m8100-cassette-components-drivetrain-cassettes-and-freewheels-5.jpg?v=1720077596'),(22,65,'https://thebikerack.ie/cdn/shop/files/image_5_3492c445-2a03-4e9c-999e-45c645520e58_1200x.jpg'),(23,65,'https://ep1.pinkbike.org/p5pb17953117/p5pb17953117.jpg'),(24,80,'https://images.bike24.com/i/mb/f2/b3/8c/maxxis-welterweight-road-tube-700x23-32c-presta-48mm-1095841.jpg'),(25,82,'https://contents.mediadecathlon.com/m22989799/k$489a6d3f1996773dba8e4527c405d911/maxxis-welter-weight-bicycle-inner-tube-700x33-50c-schrader-48mm-valve-maxxis-e26e4cf7-7627-4efb-9fba-f9df6dc5baa4.jpg'),(26,79,'https://westdenecycles.co.za/wp-content/uploads/2022/12/9N-NwzKhEHzwwqLN_liwMkUmuiYKdhwrBEj0FSf88854-QAnLiNPadfvjP-VwnbzlVTNJpRHwMFylzl3RY2K6jhIv9wcYO1MaG0BDIpbHoEXiwpjaw5VGXsaf0uh5lbiZlahMumLUcQZA4_G7L4un895lep0p43QZnl14MKtXEXn3yYQ-tjFX50_1800x1800.jpg'),(27,80,'https://ph-test-11.slatic.net/p/ca62d53b56b96d4019a5cc7e24332ce9.jpg'),(28,79,'https://ycb.vn/wp-content/uploads/2021/05/ruot-xe-dap-maxxis-welter-weight-60mm2-1-800x800.jpg.webp'),(29,118,'https://lawsonspeedshop.com/cdn/shop/products/DSC_0173-2-removebg-preview.png?v=1748522986'),(30,118,'https://lawsonspeedshop.com/cdn/shop/products/DSC_0175-2-removebg-preview.png?v=1748522986');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_and_replacement`
--

DROP TABLE IF EXISTS `return_and_replacement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `return_and_replacement` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `sale_detail_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `return_status` char(4) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `replacement_product_id` int DEFAULT NULL,
  `action_type` varchar(12) NOT NULL DEFAULT 'refund',
  PRIMARY KEY (`return_id`),
  KEY `fk_return_and_replacement_sale_details1_idx` (`sale_detail_id`),
  KEY `fk_return_and_replacement_status1_idx` (`return_status`),
  KEY `fk_return_replacement_product` (`replacement_product_id`),
  CONSTRAINT `fk_return_and_replacement_sale_details1` FOREIGN KEY (`sale_detail_id`) REFERENCES `sale_details` (`sale_detail_id`),
  CONSTRAINT `fk_return_and_replacement_status1` FOREIGN KEY (`return_status`) REFERENCES `status` (`status_code`),
  CONSTRAINT `fk_return_replacement_product` FOREIGN KEY (`replacement_product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_and_replacement`
--

LOCK TABLES `return_and_replacement` WRITE;
/*!40000 ALTER TABLE `return_and_replacement` DISABLE KEYS */;
INSERT INTO `return_and_replacement` VALUES (28,6,2,'2009','2025-10-23 11:06:52','Customer changed mind - unopened product',NULL,'refund'),(29,5,1,'2009','2025-10-23 11:06:52','Customer changed mind - unopened product',NULL,'refund'),(30,4,1,'2009','2025-10-23 11:06:52','Customer changed mind - unopened product',NULL,'refund'),(31,3,1,'2009','2025-10-23 11:06:52','Customer changed mind - unopened product',NULL,'refund'),(32,2,1,'2009','2025-10-23 11:06:52','Customer changed mind - unopened product',NULL,'refund'),(34,29,1,'2009','2025-10-25 06:32:04','Customer changed mind - unopened product',NULL,'refund'),(35,6,1,'2009','2025-10-27 10:00:00','Damaged tire — replacement issued',20,'replacement'),(37,3,1,'2009','2025-10-27 10:05:00','Lens broken — replacement issued',6,'replacement'),(38,4,1,'2009','2025-10-27 10:10:00','Pedal faulty — replacement issued',5,'replacement'),(39,2,1,'2009','2025-10-27 10:15:00','Wrong chain delivered — replacement issued',2,'replacement'),(40,29,1,'2009','2025-10-27 10:20:00','Missing parts — replacement issued',57,'replacement'),(44,56,1,'2009','2025-10-27 08:50:50','Purchased too much',NULL,'refund');
/*!40000 ALTER TABLE `return_and_replacement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_type`
--

DROP TABLE IF EXISTS `role_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_type` (
  `role_type_code` char(8) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_type`
--

LOCK TABLES `role_type` WRITE;
/*!40000 ALTER TABLE `role_type` DISABLE KEYS */;
INSERT INTO `role_type` VALUES ('BIKEMECH','Bicycle Mechanic'),('CASHIER','Cashier'),('MANAGER','Manager'),('SALEATTN','Sales Attendant'),('SUPVISOR','Supervisor');
/*!40000 ALTER TABLE `role_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `sale_date` datetime NOT NULL,
  `cashier` int NOT NULL,
  `manager` int NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`sale_id`),
  KEY `fk_sale_customer1_idx` (`customer_id`),
  KEY `fk_sale_employee1_idx` (`cashier`),
  KEY `fk_sale_employee2_idx` (`manager`),
  CONSTRAINT `fk_sale_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_sale_employee1` FOREIGN KEY (`cashier`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_sale_employee2` FOREIGN KEY (`manager`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,1,'2025-10-21 14:37:57',1,13,'Completed'),(2,1,'2025-10-21 14:38:59',1,13,'Completed'),(3,23,'2025-10-23 10:49:15',6,13,'Completed'),(4,24,'2025-10-23 10:50:27',5,13,'Completed'),(5,25,'2025-10-23 10:51:44',5,13,'Completed'),(6,26,'2025-10-23 10:54:27',7,13,'Completed'),(7,27,'2025-10-24 03:44:38',7,13,'Completed'),(8,28,'2025-10-24 03:57:22',4,13,'Completed'),(9,29,'2025-10-24 03:58:21',1,13,'Completed'),(10,30,'2025-10-24 04:00:44',7,13,'Completed'),(11,31,'2025-10-24 10:23:16',6,13,'Completed'),(12,32,'2025-10-24 10:51:34',1,13,'Completed'),(13,33,'2025-10-25 02:35:16',7,13,'Completed'),(14,34,'2025-10-25 04:31:59',5,13,'Completed'),(15,35,'2025-10-25 04:32:23',4,13,'Completed'),(16,36,'2025-10-25 04:32:57',2,13,'Completed'),(17,37,'2025-10-25 04:33:20',1,13,'Completed'),(18,38,'2025-10-25 04:33:54',3,13,'Completed'),(19,39,'2025-10-25 08:16:38',6,13,'Completed'),(20,40,'2025-10-25 08:40:43',1,13,'Completed'),(21,41,'2025-10-25 09:13:30',5,13,'Completed'),(22,42,'2025-10-25 09:19:27',3,13,'Completed'),(23,43,'2025-10-27 04:52:37',1,13,'Completed'),(24,44,'2025-10-27 04:53:12',7,13,'Completed'),(25,45,'2025-10-27 08:11:10',5,13,'Completed'),(26,46,'2025-10-27 08:12:09',6,13,'Completed'),(27,47,'2025-10-27 08:14:06',3,13,'Completed'),(28,48,'2025-10-27 08:58:41',4,13,'Completed'),(29,49,'2025-10-27 16:41:43',3,13,'Completed'),(30,50,'2025-10-28 08:23:38',1,13,'Completed'),(31,51,'2025-11-30 04:26:22',1,13,'Completed'),(32,1,'2025-12-01 04:18:24',8,13,'Completed'),(33,1,'2025-12-01 07:31:57',8,13,'Completed'),(34,1,'2025-12-01 07:32:53',8,13,'Completed'),(35,1,'2025-12-01 07:33:48',8,13,'Completed'),(36,1,'2025-12-01 07:36:58',8,13,'Completed'),(37,1,'2025-12-01 07:37:31',8,13,'Completed'),(38,1,'2025-12-01 07:38:05',8,13,'Completed'),(39,1,'2025-12-01 07:38:39',8,13,'Completed'),(40,1,'2025-12-01 07:40:04',8,13,'Completed'),(41,1,'2025-12-02 02:48:10',8,13,'Completed'),(42,1,'2025-12-02 02:50:16',8,13,'Completed'),(43,1,'2025-12-02 08:01:42',8,13,'Completed'),(44,1,'2025-12-02 08:04:30',8,13,'Completed'),(45,1,'2025-12-02 08:05:58',8,13,'Completed'),(46,1,'2025-12-02 08:07:45',8,13,'Completed'),(47,1,'2025-12-02 08:08:10',8,13,'Completed'),(48,1,'2025-12-02 08:11:54',8,13,'Completed'),(49,1,'2025-12-02 08:13:20',8,13,'Completed'),(50,1,'2025-12-02 08:15:06',8,13,'Completed'),(51,1,'2025-12-02 08:59:06',8,13,'Completed'),(52,1,'2025-12-02 08:59:44',8,13,'Completed'),(53,1,'2025-12-03 01:35:20',8,13,'Completed'),(54,1,'2025-12-03 01:41:48',8,13,'Completed'),(55,1,'2025-12-03 01:45:17',8,13,'Completed'),(56,1,'2025-12-03 01:49:30',8,13,'Completed'),(57,1,'2025-12-03 05:05:52',8,13,'Completed'),(58,1,'2025-12-03 07:14:57',8,13,'Completed'),(59,1,'2025-12-03 07:15:31',8,13,'Completed'),(60,1,'2025-12-03 07:16:03',8,13,'Completed'),(61,1,'2025-12-03 08:23:49',8,13,'Completed'),(62,1,'2025-12-03 08:38:24',8,13,'Completed'),(63,1,'2025-12-04 03:28:33',8,13,'Completed'),(64,1,'2025-12-04 03:30:01',8,13,'Completed'),(65,1,'2025-12-04 08:34:52',8,13,'Completed'),(66,1,'2025-12-04 08:38:05',8,13,'Completed'),(67,1,'2025-12-04 08:43:18',8,13,'Completed'),(68,1,'2025-12-04 08:43:49',8,13,'Completed'),(69,1,'2025-12-04 08:46:11',8,13,'Completed'),(70,1,'2025-12-04 08:46:50',8,13,'Completed'),(71,1,'2025-12-04 08:47:35',8,13,'Completed'),(72,1,'2025-12-04 08:48:10',8,13,'Completed'),(73,1,'2025-12-04 08:49:05',8,13,'Completed'),(74,1,'2025-12-05 02:43:52',8,13,'Completed'),(75,1,'2025-12-05 03:02:37',8,13,'Completed'),(76,1,'2025-12-05 03:03:24',8,13,'Completed'),(77,1,'2025-12-05 03:04:11',8,13,'Completed'),(78,1,'2025-12-05 05:59:08',8,13,'Completed'),(79,1,'2025-12-05 06:00:58',8,13,'Completed'),(80,1,'2025-12-05 07:26:02',8,13,'Completed'),(81,1,'2025-12-05 07:28:24',8,13,'Completed'),(82,1,'2025-12-06 01:43:46',8,13,'Completed'),(83,1,'2025-12-06 01:44:39',8,13,'Completed'),(84,1,'2025-12-06 01:46:27',8,13,'Completed'),(85,1,'2025-12-06 01:47:44',8,13,'Completed'),(86,1,'2025-12-06 09:37:52',8,13,'Completed'),(87,1,'2025-12-06 09:38:42',8,13,'Completed'),(88,1,'2025-12-06 09:39:16',8,13,'Completed'),(89,1,'2025-12-06 09:39:46',8,13,'Completed'),(90,1,'2025-12-06 09:40:19',8,13,'Completed'),(91,52,'2025-12-06 09:48:49',8,13,'Completed'),(92,1,'2025-12-08 03:56:46',8,13,'Completed'),(93,1,'2025-12-08 03:57:19',8,13,'Completed'),(94,1,'2025-12-08 03:57:52',8,13,'Completed'),(95,1,'2025-12-08 03:58:36',8,13,'Completed'),(96,1,'2025-12-08 03:59:45',8,13,'Completed'),(97,1,'2025-12-08 04:00:19',8,13,'Completed'),(98,1,'2025-12-08 04:01:56',8,13,'Completed'),(99,1,'2025-12-08 04:02:59',8,13,'Completed'),(100,1,'2025-12-08 04:03:42',8,13,'Completed');
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_details`
--

DROP TABLE IF EXISTS `sale_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_details` (
  `sale_detail_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity_sold` int NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`sale_detail_id`),
  KEY `fk_sale_details_sale1_idx` (`sale_id`),
  KEY `fk_sale_details_product1_idx` (`product_id`),
  CONSTRAINT `fk_sale_details_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_sale_details_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_details`
--

LOCK TABLES `sale_details` WRITE;
/*!40000 ALTER TABLE `sale_details` DISABLE KEYS */;
INSERT INTO `sale_details` VALUES (1,1,1,1,12500.00,0.00),(2,1,2,1,2800.00,0.00),(3,2,6,1,1500.00,0.00),(4,2,5,1,1200.00,0.00),(5,2,10,1,1500.00,0.00),(6,2,11,2,2800.00,0.00),(7,3,25,1,6500.00,0.00),(8,4,7,3,350.00,0.00),(9,5,6,1,1500.00,0.00),(10,5,15,1,8500.00,0.00),(11,5,36,1,1200.00,0.00),(12,6,7,5,350.00,0.00),(13,6,36,1,1200.00,0.00),(14,7,2,1,2800.00,0.00),(15,7,7,1,350.00,0.00),(16,7,14,1,800.00,0.00),(17,8,6,1,1500.00,0.00),(18,8,11,1,2800.00,0.00),(19,8,14,1,800.00,0.00),(20,9,31,1,2500.00,0.00),(21,9,34,1,2000.00,0.00),(22,9,28,1,8500.00,0.00),(23,10,10,1,1500.00,0.00),(24,10,7,1,350.00,0.00),(25,10,24,1,750.00,0.00),(26,10,57,1,650.00,0.00),(27,11,4,1,9800.00,0.00),(28,12,4,1,9800.00,0.00),(29,13,57,1,650.00,0.00),(30,13,56,1,350.00,0.00),(31,13,37,1,2200.00,0.00),(32,14,5,1,1200.00,0.00),(33,15,57,1,650.00,0.00),(34,15,37,1,2200.00,0.00),(35,16,24,1,750.00,0.00),(36,16,32,1,1800.00,0.00),(37,16,38,1,3500.00,0.00),(38,17,27,1,12000.00,0.00),(39,18,35,1,1500.00,0.00),(40,18,29,1,15000.00,0.00),(41,19,60,1,1800.00,0.00),(42,20,61,1,1250.00,0.00),(43,21,20,1,3200.00,0.00),(44,22,18,1,2500.00,0.00),(45,22,14,1,800.00,0.00),(46,22,10,1,1500.00,0.00),(47,23,16,1,6500.00,0.00),(48,23,19,1,950.00,0.00),(49,23,29,1,15000.00,0.00),(50,24,60,1,1800.00,0.00),(51,24,21,1,12000.00,0.00),(52,24,5,1,1200.00,0.00),(53,25,2,1,2800.00,0.00),(54,26,19,1,950.00,0.00),(55,26,22,1,35000.00,0.00),(56,27,7,7,350.00,0.00),(57,28,30,1,900.00,0.00),(58,28,6,1,1500.00,0.00),(59,28,38,2,3500.00,0.00),(60,29,11,1,2800.00,0.00),(61,29,32,1,1800.00,0.00),(62,29,21,1,12000.00,0.00),(63,30,39,1,2800.00,0.00),(64,30,32,1,1800.00,0.00),(65,31,66,1,195.00,0.00),(66,31,101,1,2550.00,0.00),(67,32,88,1,1650.00,0.00),(68,33,135,1,95.00,0.00),(69,34,124,1,165.00,0.00),(70,35,90,1,430.00,0.00),(71,36,117,1,155.00,0.00),(72,37,138,1,95.00,0.00),(73,38,141,1,245.00,0.00),(74,39,118,1,195.00,0.00),(75,40,145,1,295.00,0.00),(76,41,83,2,320.00,0.00),(77,42,124,1,165.00,0.00),(78,43,118,1,195.00,0.00),(79,44,118,1,195.00,0.00),(80,44,124,1,165.00,0.00),(81,45,180,1,175.00,0.00),(82,46,118,1,195.00,0.00),(83,47,118,1,195.00,0.00),(84,48,197,1,9500.00,0.00),(85,49,164,1,4950.00,0.00),(86,50,163,1,3850.00,0.00),(87,51,68,1,210.00,0.00),(88,52,134,1,155.00,0.00),(89,53,77,1,190.00,0.00),(90,54,199,2,295.00,0.00),(91,55,202,2,185.00,0.00),(92,56,89,1,1690.00,0.00),(93,57,180,1,175.00,0.00),(94,58,185,1,205.00,0.00),(95,58,70,1,195.00,0.00),(96,59,201,1,165.00,0.00),(97,60,203,1,3650.00,0.00),(98,61,163,1,3850.00,0.00),(99,62,118,1,195.00,0.00),(100,63,121,1,370.00,0.00),(101,64,70,1,195.00,0.00),(102,65,76,1,185.00,0.00),(103,66,70,1,195.00,0.00),(104,67,178,2,150.00,0.00),(105,67,177,1,145.00,0.00),(106,67,192,2,245.00,0.00),(107,67,141,1,245.00,0.00),(108,68,123,1,175.00,0.00),(109,69,165,1,4950.00,0.00),(110,70,171,1,6000.00,0.00),(111,71,207,1,2950.00,0.00),(112,72,211,1,3550.00,0.00),(113,73,213,1,2750.00,0.00),(114,74,67,1,265.00,0.00),(115,75,118,1,195.00,0.00),(116,76,137,1,155.00,0.00),(117,77,203,1,3650.00,0.00),(118,78,134,1,155.00,0.00),(119,79,142,1,450.00,0.00),(120,80,159,1,3850.00,0.00),(121,81,68,1,210.00,0.00),(122,82,160,3,3850.00,0.00),(123,83,211,2,3550.00,0.00),(124,84,210,2,3450.00,0.00),(125,85,157,3,3650.00,0.00),(126,86,157,2,3650.00,0.00),(127,87,162,1,3650.00,0.00),(128,88,152,1,1750.00,0.00),(129,89,203,1,3650.00,0.00),(130,90,159,1,3850.00,0.00),(131,91,124,1,165.00,0.00),(132,92,157,1,3650.00,0.00),(133,93,235,1,3250.00,0.00),(134,94,203,1,3650.00,0.00),(135,95,210,1,3450.00,0.00),(136,96,120,1,320.00,0.00),(137,97,135,1,95.00,0.00),(138,98,89,1,1690.00,0.00),(139,99,199,2,295.00,0.00),(140,100,201,1,165.00,0.00);
/*!40000 ALTER TABLE `sale_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_payment_type`
--

DROP TABLE IF EXISTS `sale_payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_payment_type` (
  `sale_payment_type_id` int NOT NULL AUTO_INCREMENT,
  `sale_id` int NOT NULL,
  `payment_method_code` varchar(20) NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sale_payment_type_id`),
  KEY `fk_sale_payment_type_sale1_idx` (`sale_id`),
  KEY `fk_sale_payment_type_payment_method1_idx` (`payment_method_code`),
  CONSTRAINT `fk_sale_payment_type_payment_method1` FOREIGN KEY (`payment_method_code`) REFERENCES `payment_method` (`payment_method_code`),
  CONSTRAINT `fk_sale_payment_type_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_payment_type`
--

LOCK TABLES `sale_payment_type` WRITE;
/*!40000 ALTER TABLE `sale_payment_type` DISABLE KEYS */;
INSERT INTO `sale_payment_type` VALUES (5037,1,'CASH','TXN-1761057477865'),(5038,2,'EWP','TXN-1761057539713'),(5039,3,'EWP','TXN-1761216555967'),(5040,4,'BT','TXN-1761216627553'),(5041,5,'CC','TXN-1761216704769'),(5042,6,'CASH','TXN-1761216867813'),(5043,7,'CASH','TXN-1761277478762'),(5044,8,'CC','TXN-1761278242212'),(5045,9,'BT','TXN-1761278301203'),(5046,10,'EWP','TXN-1761278444156'),(5047,11,'CASH','TXN-1761301396597'),(5048,12,'DC','TXN-1761303094032'),(5049,13,'EWP','TXN-1761359716133'),(5050,14,'CASH','TXN-1761366719819'),(5051,15,'CC','TXN-1761366743778'),(5052,16,'BT','TXN-1761366777866'),(5053,17,'CC','TXN-1761366800271'),(5054,18,'DC','TXN-1761366834677'),(5055,19,'CASH','TXN-1761380198225'),(5056,20,'CASH','TXN-1761381643932'),(5057,21,'EWP','TXN-1761383610670'),(5058,22,'BT','TXN-1761383967748'),(5059,23,'CC','TXN-1761540757456'),(5060,24,'BT','TXN-1761540792335'),(5061,25,'CASH','TXN-1761552670119'),(5062,26,'DC','TXN-1761552729422'),(5063,27,'CASH','TXN-1761552846153'),(5064,28,'EWP','TXN-1761555521536'),(5065,29,'BT','TXN-1761583303375'),(5066,30,'CASH','TXN-1761639818079'),(5067,31,'CASH','TXN-1764476782978'),(5068,32,'CASH','TXN-1764562704146'),(5069,33,'CASH','TXN-1764574317010'),(5070,34,'CASH','TXN-1764574373439'),(5071,35,'CASH','TXN-1764574428035'),(5072,36,'CASH','TXN-1764574618779'),(5073,37,'CASH','TXN-1764574651931'),(5074,38,'CASH','TXN-1764574685173'),(5075,39,'CASH','TXN-1764574719248'),(5076,40,'CASH','TXN-1764574804327'),(5077,41,'CASH','TXN-1764643690383'),(5078,42,'CASH','TXN-1764643816002'),(5079,43,'CASH','TXN-1764662502386'),(5080,44,'CASH','TXN-1764662670327'),(5081,45,'CASH','TXN-1764662758743'),(5082,46,'CASH','TXN-1764662865364'),(5083,47,'CASH','TXN-1764662890279'),(5084,48,'CASH','TXN-1764663114742'),(5085,49,'CASH','TXN-1764663200455'),(5086,50,'CASH','TXN-1764663306310'),(5087,51,'CASH','TXN-1764665946459'),(5088,52,'CASH','TXN-1764665984759'),(5089,53,'CASH','TXN-1764725720662'),(5090,54,'CASH','TXN-1764726108496'),(5091,55,'CASH','TXN-1764726317150'),(5092,56,'CASH','TXN-1764726570695'),(5093,57,'CASH','TXN-1764738352069'),(5094,58,'CASH','TXN-1764746097983'),(5095,59,'CASH','TXN-1764746131691'),(5096,60,'CASH','TXN-1764746163408'),(5097,61,'CASH','TXN-1764750229436'),(5098,62,'CASH','TXN-1764751104298'),(5099,63,'CASH','TXN-1764818913809'),(5100,64,'CASH','TXN-1764819001804'),(5101,65,'CASH','TXN-1764837292588'),(5102,66,'CASH','TXN-1764837485655'),(5103,67,'CASH','TXN-1764837798520'),(5104,68,'CASH','TXN-1764837829264'),(5105,69,'CASH','TXN-1764837971339'),(5106,70,'CASH','TXN-1764838010666'),(5107,71,'CASH','TXN-1764838055037'),(5108,72,'CASH','TXN-1764838090650'),(5109,73,'CASH','TXN-1764838145077'),(5110,74,'DC','TXN-1764902632004'),(5111,75,'CASH','TXN-1764903757578'),(5112,76,'CASH','TXN-1764903804180'),(5113,77,'CASH','TXN-1764903851146'),(5114,78,'CASH','TXN-1764914348658'),(5115,79,'CASH','TXN-1764914458241'),(5116,80,'CASH','TXN-1764919562542'),(5117,81,'CASH','TXN-1764919704791'),(5118,82,'CASH','TXN-1764985426641'),(5119,83,'CASH','TXN-1764985479702'),(5120,84,'CASH','TXN-1764985587671'),(5121,85,'CASH','TXN-1764985664065'),(5122,86,'CASH','TXN-1765013872443'),(5123,87,'CASH','TXN-1765013922713'),(5124,88,'CASH','TXN-1765013956863'),(5125,89,'CASH','TXN-1765013986642'),(5126,90,'CASH','TXN-1765014019895'),(5127,91,'CASH','TXN-1765014529016'),(5128,92,'CASH','TXN-1765166206281'),(5129,93,'CASH','TXN-1765166239823'),(5130,94,'CASH','TXN-1765166272290'),(5131,95,'CASH','TXN-1765166316256'),(5132,96,'CC','TXN-1765166385806'),(5133,97,'CASH','TXN-1765166419434'),(5134,98,'CASH','TXN-1765166516706'),(5135,99,'CASH','TXN-1765166579600'),(5136,100,'CASH','TXN-1765166622170');
/*!40000 ALTER TABLE `sale_payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_code` char(4) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status_reference_code` char(8) NOT NULL,
  PRIMARY KEY (`status_code`),
  KEY `fk_status_status_reference_code1_idx` (`status_reference_code`),
  CONSTRAINT `fk_status_status_reference_code1` FOREIGN KEY (`status_reference_code`) REFERENCES `status_reference_code` (`status_reference_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES ('0001','Active','EMPLSTAT'),('0002','Probationary','EMPLSTAT'),('0003','Part-Time','EMPLSTAT'),('0004','Full-Time','EMPLSTAT'),('0005','Terminated','EMPLSTAT'),('0006','Resigned','EMPLSTAT'),('0007','Retired','EMPLSTAT'),('1001','Present','ATTNSTAT'),('1002','Leave of Absence','ATTNSTAT'),('1003','Suspended','ATTNSTAT'),('1004','Furloughed','ATTNSTAT'),('1005','Medical Leave','ATTNSTAT'),('1006','Parental Leave','ATTNSTAT'),('2001','Requested','SLRTSTAT'),('2002','Approved','SLRTSTAT'),('2003','Rejected','SLRTSTAT'),('2004','Pending','SLRTSTAT'),('2005','Received','SLRTSTAT'),('2006','In Process','SLRTSTAT'),('2007','Refunded','SLRTSTAT'),('2008','Exchanged','SLRTSTAT'),('2009','Completed','SLRTSTAT'),('2010','Cancelled','SLRTSTAT'),('2011','Resolved','SLRTSTAT'),('APPR','Approved return','RETURN'),('PEND','Pending return','RETURN'),('POST','Posted return','RETURN');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_reference_code`
--

DROP TABLE IF EXISTS `status_reference_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_reference_code` (
  `status_reference_code` char(8) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_reference_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_reference_code`
--

LOCK TABLES `status_reference_code` WRITE;
/*!40000 ALTER TABLE `status_reference_code` DISABLE KEYS */;
INSERT INTO `status_reference_code` VALUES ('ATTNSTAT','Attendance Status'),('EMPLSTAT','Employee Status'),('RETURN','Return/Replacement statuses'),('SLRTSTAT','Sales Return Status');
/*!40000 ALTER TABLE `status_reference_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment`
--

DROP TABLE IF EXISTS `stock_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_adjustment` (
  `adjustment_id` int NOT NULL AUTO_INCREMENT,
  `client_request_id` varchar(64) DEFAULT NULL,
  `return_id` int DEFAULT NULL,
  `adjustment_type` enum('return','replacement','manual') NOT NULL,
  `transaction_date` datetime NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `processed_by` int DEFAULT NULL,
  PRIMARY KEY (`adjustment_id`),
  UNIQUE KEY `ux_stock_adjustment_client_request_id` (`client_request_id`),
  KEY `fk_stock_adjustment_employee` (`processed_by`),
  KEY `fk_stock_adjustment_return` (`return_id`),
  KEY `idx_stock_adjustment_date` (`transaction_date`),
  KEY `idx_stock_adjustment_type` (`adjustment_type`),
  CONSTRAINT `fk_stock_adjustment_employee` FOREIGN KEY (`processed_by`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_stock_adjustment_return` FOREIGN KEY (`return_id`) REFERENCES `return_and_replacement` (`return_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment`
--

LOCK TABLES `stock_adjustment` WRITE;
/*!40000 ALTER TABLE `stock_adjustment` DISABLE KEYS */;
INSERT INTO `stock_adjustment` VALUES (1,NULL,NULL,'return','2025-10-24 14:17:14','Sale #1 • Defective Component',NULL),(2,NULL,NULL,'manual','2025-10-23 09:10:00','Manual adjustment via Product Details',NULL),(3,NULL,NULL,'manual','2025-10-23 09:10:00','Manual adjustment via Product Details',NULL),(4,'f779af56-8f09-4333-b960-e2ee4366a46f',34,'return','2025-10-25 06:32:04','Sale #13 • Broken Brush Handle',NULL),(5,NULL,NULL,'manual','2025-10-27 05:33:17','The quantity of Product #3 from Supply #1 has been changed from 23 to 22.',1),(6,'repl-35-8837a14c-b30b-11f0-90c3-2e3c71bc8e09',35,'replacement','2025-10-27 08:04:15','Replacement for return 35',NULL),(8,'repl-37-b1e1d72d-b30b-11f0-90c3-2e3c71bc8e09',37,'replacement','2025-10-27 08:05:25','Replacement for return 37',NULL),(9,'repl-38-bbc4390d-b30b-11f0-90c3-2e3c71bc8e09',38,'replacement','2025-10-27 08:05:42','Replacement for return 38',NULL),(10,'repl-39-c21e282b-b30b-11f0-90c3-2e3c71bc8e09',39,'replacement','2025-10-27 08:05:53','Replacement for return 39',NULL),(11,'repl-40-c934af5b-b30b-11f0-90c3-2e3c71bc8e09',40,'replacement','2025-10-27 08:06:05','Replacement for return 40',NULL),(12,NULL,NULL,'manual','2025-10-27 08:17:13','The quantity of Product #7 from Supply #18 has been changed from 10 to 9.',1),(14,'2d3a373e-7173-4c61-9115-be08921bb446',44,'return','2025-10-27 08:50:50','Purchased too much',NULL),(15,'backfill-28-711166d2-b314-11f0-90c3-2e3c71bc8e09',28,'return','2025-10-23 11:06:52','Refund return',NULL),(16,'backfill-29-7112a696-b314-11f0-90c3-2e3c71bc8e09',29,'return','2025-10-23 11:06:52','Refund return',NULL),(17,'backfill-30-7112ce0a-b314-11f0-90c3-2e3c71bc8e09',30,'return','2025-10-23 11:06:52','Refund return',NULL),(18,'backfill-31-71130777-b314-11f0-90c3-2e3c71bc8e09',31,'return','2025-10-23 11:06:52','Refund return',NULL),(19,'backfill-32-71134a62-b314-11f0-90c3-2e3c71bc8e09',32,'return','2025-10-23 11:06:52','Refund return',NULL),(20,NULL,NULL,'manual','2025-10-28 07:07:54','The quantity of Product #62 from Supply #19 has been changed from 1 to 2.',13),(21,NULL,NULL,'manual','2025-10-28 07:08:10','The quantity of Product #62 from Supply #19 has been changed from 2 to 3.',13),(22,NULL,NULL,'manual','2025-10-28 07:08:23','The quantity of Product #62 from Supply #19 has been changed from 3 to 1.',13);
/*!40000 ALTER TABLE `stock_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_adjustment_details`
--

DROP TABLE IF EXISTS `stock_adjustment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_adjustment_details` (
  `adjustment_detail_id` int NOT NULL AUTO_INCREMENT,
  `adjustment_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`adjustment_detail_id`),
  KEY `idx_stock_adjustment_detail_adj` (`adjustment_id`),
  KEY `idx_stock_adjustment_detail_product` (`product_id`),
  CONSTRAINT `fk_stock_adjustment_details_header` FOREIGN KEY (`adjustment_id`) REFERENCES `stock_adjustment` (`adjustment_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_stock_adjustment_details_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_adjustment_details`
--

LOCK TABLES `stock_adjustment_details` WRITE;
/*!40000 ALTER TABLE `stock_adjustment_details` DISABLE KEYS */;
INSERT INTO `stock_adjustment_details` VALUES (1,1,1,1),(2,2,4,1),(3,3,4,1),(4,4,57,1),(5,5,3,22),(6,6,11,1),(7,6,20,-1),(10,8,6,1),(11,8,6,-1),(12,9,5,1),(13,9,5,-1),(14,10,2,1),(15,10,2,-1),(16,11,57,1),(17,11,57,-1),(18,12,7,9),(20,14,7,1),(21,15,11,2),(22,16,10,1),(23,17,5,1),(24,18,6,1),(25,19,2,1),(26,20,62,2),(27,21,62,3),(28,22,62,1);
/*!40000 ALTER TABLE `stock_adjustment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockout`
--

DROP TABLE IF EXISTS `stockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockout` (
  `stockout_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `stockout_date` datetime NOT NULL,
  `reason` varchar(225) NOT NULL,
  `sale_attendant` int NOT NULL,
  `manager` int NOT NULL,
  PRIMARY KEY (`stockout_id`),
  KEY `fk_stockout_product1_idx` (`product_id`),
  KEY `fk_stockout_employee1_idx` (`sale_attendant`),
  KEY `fk_stockout_employee2_idx` (`manager`),
  CONSTRAINT `fk_stockout_employee1` FOREIGN KEY (`sale_attendant`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_stockout_employee2` FOREIGN KEY (`manager`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_stockout_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockout`
--

LOCK TABLES `stockout` WRITE;
/*!40000 ALTER TABLE `stockout` DISABLE KEYS */;
INSERT INTO `stockout` VALUES (1,8,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Lost',6,13),(2,13,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Shrinkage',6,13),(3,24,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(4,38,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Lost',6,13),(5,14,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Lost',6,13),(6,15,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(7,18,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(8,19,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Shrinkage',6,13),(9,37,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Shrinkage',6,13),(10,12,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(11,3,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(12,22,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Shrinkage',6,13),(13,27,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(14,33,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Damaged',6,13),(15,20,2,'Auto-generated stock adjustment','2025-10-23 09:36:02','Lost',6,13),(16,4,NULL,NULL,'2025-10-24 13:29:52','Inventory adjustment',1,13);
/*!40000 ALTER TABLE `stockout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(255) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Pedal Power Distributors'),(2,'Velocity Bike Parts Supply'),(3,'SpinTech Bicycle Solutions'),(4,'Trailblazer Cycle Wholesale'),(5,'GearUp Components and Accesories'),(9,'BikeWorld Trading PH'),(11,'Paombong'),(12,'Neo Zigma'),(13,'Progress'),(14,'Peregrine'),(15,'Trek'),(16,'Happy Cycle');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_address`
--

DROP TABLE IF EXISTS `supplier_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_address` (
  `supplier_address_id` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL,
  `country` varchar(50) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `barangay` varchar(50) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplier_address_id`),
  KEY `fk_supplier_address_supplier1_idx` (`supplier_id`),
  CONSTRAINT `fk_supplier_address_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_address`
--

LOCK TABLES `supplier_address` WRITE;
/*!40000 ALTER TABLE `supplier_address` DISABLE KEYS */;
INSERT INTO `supplier_address` VALUES (1,5,'Philippines','8002','Davao del Sur','Digos City','Zone II','Blk 5 Lot 8, Mabini Street'),(2,3,'Philippines','7000','Zamboanga del Sur','Zamboanga City','Barangay Bulua','555 Pedal Drive'),(3,4,'Philippines','8600','Agusan del Norte','Butuan City','Barangay Banago','101 Gearshift Blvd.'),(4,1,'Philippines','1210','Metro Manila','Makati City','Poblacion','123 P. Burgos Avenue'),(5,2,'Philippines','9000','Misamis Oriental','Cagayan de Oro','Barangay Kauswagan','456 Speed Avenue'),(7,9,'Philippines','8000','Davao del Sur','Davao City','Barangay Bucana','Blk 12, Lot 8, Sunrise Industrial Park');
/*!40000 ALTER TABLE `supplier_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_contact`
--

DROP TABLE IF EXISTS `supplier_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_contact` (
  `supplier_contact_id` int NOT NULL AUTO_INCREMENT,
  `contact_type_code` char(8) NOT NULL,
  `supplier_id` int NOT NULL,
  `contact_value` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y',
  `is_primary` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`supplier_contact_id`),
  KEY `fk_supplier_contact_contact_type1_idx` (`contact_type_code`),
  KEY `fk_supplier_contact_supplier1_idx` (`supplier_id`),
  CONSTRAINT `fk_supplier_contact_contact_type1` FOREIGN KEY (`contact_type_code`) REFERENCES `contact_type` (`contact_type_code`),
  CONSTRAINT `fk_supplier_contact_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_contact`
--

LOCK TABLES `supplier_contact` WRITE;
/*!40000 ALTER TABLE `supplier_contact` DISABLE KEYS */;
INSERT INTO `supplier_contact` VALUES (1,'MOBILENO',1,'09178886916','Y','Y'),(2,'EMAILADD',1,'pedalpowerdistributors@example.com','Y','N'),(3,'EMAILADD',2,'velocitybikepartssupply@example.com','Y','N'),(4,'EMAILADD',3,'spintechbicyclesolutions@example.com','Y','N'),(5,'EMAILADD',4,'trailblazercyclewholesale@example.com','Y','N'),(9,'MOBILENO',2,'09700000002','Y','Y'),(10,'MOBILENO',3,'09700000003','Y','Y'),(11,'MOBILENO',4,'09700000004','Y','Y'),(16,'TELEPHNO',1,'(02) 7000001','Y','N'),(17,'TELEPHNO',2,'(02) 7000002','Y','N'),(18,'TELEPHNO',3,'(02) 7000003','Y','N'),(19,'TELEPHNO',4,'(02) 7000004','Y','N'),(23,'FACEBOOK',1,'https://facebook.com/pedalpowerdistributors','Y','N'),(24,'FACEBOOK',2,'https://facebook.com/velocitybikepartssupply','Y','N'),(25,'FACEBOOK',3,'https://facebook.com/spintechbicyclesolutions','Y','N'),(26,'FACEBOOK',4,'https://facebook.com/trailblazercyclewholesale','Y','N'),(30,'WHATSAPP',1,'+639800000001','Y','N'),(31,'WHATSAPP',2,'+639800000002','Y','N'),(32,'WHATSAPP',3,'+639800000003','Y','N'),(33,'WHATSAPP',4,'+639800000004','Y','N'),(66,'MOBILENO',5,'09700000005','Y','Y'),(67,'TELEPHNO',5,'(02) 7000005','Y','N'),(68,'FACEBOOK',5,'https://facebook.com/gearupcomponentsandaccesories','Y','N'),(69,'EMAILADD',5,'gearupcomponentsandaccesories@example.com','Y','N'),(70,'WHATSAPP',5,'+639800000005','Y','N'),(73,'EMAILADD',9,'leog@bikeworldph.com','Y','N'),(74,'MOBILENO',9,'09457758834','Y','Y'),(75,'FACEBOOK',11,'0','Y','Y'),(76,'FACEBOOK',12,'0','Y','Y'),(77,'FACEBOOK',13,'0','Y','Y'),(78,'FACEBOOK',14,'0','Y','Y'),(79,'FACEBOOK',15,'0','Y','Y'),(80,'FACEBOOK',16,'0','Y','Y');
/*!40000 ALTER TABLE `supplier_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int NOT NULL,
  `supply_date` datetime NOT NULL,
  `payment_method_code` varchar(20) NOT NULL,
  `sale_attendant` int NOT NULL,
  `manager` int NOT NULL,
  PRIMARY KEY (`supply_id`),
  KEY `fk_supply_supplier1_idx` (`supplier_id`),
  KEY `fk_supply_payment_method1_idx` (`payment_method_code`),
  KEY `fk_supply_employee1_idx` (`sale_attendant`),
  KEY `fk_supply_employee2_idx` (`manager`),
  CONSTRAINT `fk_supply_employee1` FOREIGN KEY (`sale_attendant`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_supply_employee2` FOREIGN KEY (`manager`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_supply_payment_method1` FOREIGN KEY (`payment_method_code`) REFERENCES `payment_method` (`payment_method_code`),
  CONSTRAINT `fk_supply_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,1,'2025-02-01 09:50:00','CASH',6,13),(2,1,'2025-02-11 09:50:00','CASH',6,13),(3,1,'2025-10-23 09:09:46','CASH',6,13),(4,2,'2025-10-23 09:09:46','CASH',6,13),(5,3,'2025-10-23 09:09:46','CASH',6,13),(6,4,'2025-10-23 09:09:46','CASH',6,13),(7,5,'2025-10-23 09:09:46','CASH',6,13),(10,3,'2025-10-23 13:36:38','CASH',6,13),(11,3,'2025-10-23 13:48:28','CASH',6,13),(12,2,'2025-10-24 00:00:00','CASH',6,13),(13,1,'2025-10-24 13:26:33','CASH',1,13),(14,2,'2025-10-25 05:26:50','CASH',6,13),(15,1,'2025-10-25 06:23:17','CASH',6,13),(16,5,'2025-10-25 08:15:21','CASH',6,13),(17,5,'2025-10-25 08:30:41','CASH',6,13),(18,2,'2025-10-27 00:00:00','CASH',6,13),(19,1,'2025-10-27 09:45:25','CASH',6,13),(20,4,'2025-10-27 09:46:25','CASH',6,13),(21,1,'2025-10-28 00:00:00','CASH',6,13),(22,1,'2025-10-28 00:00:00','CASH',6,13),(23,9,'2025-10-28 09:08:40','CASH',6,13),(24,4,'2025-10-28 09:22:03','CASH',6,13),(25,11,'2025-11-29 07:45:26','CASH',6,13),(26,11,'2025-11-29 07:46:07','CASH',6,13),(27,11,'2025-11-29 07:47:46','CASH',6,13),(28,11,'2025-11-29 07:48:35','CASH',6,13),(29,11,'2025-11-29 07:49:32','CASH',6,13),(30,11,'2025-11-29 07:50:21','CASH',6,13),(31,11,'2025-11-29 07:51:01','CASH',6,13),(32,11,'2025-11-29 07:51:46','CASH',6,13),(33,11,'2025-11-29 07:52:49','CASH',6,13),(34,11,'2025-11-29 07:53:52','CASH',6,13),(35,11,'2025-11-29 07:55:05','CASH',6,13),(36,11,'2025-11-29 07:56:43','CASH',6,13),(37,11,'2025-11-29 07:57:42','CASH',6,13),(38,12,'2025-11-29 07:58:49','CASH',6,13),(39,12,'2025-11-29 07:59:42','CASH',6,13),(40,12,'2025-11-29 08:01:28','CASH',6,13),(41,12,'2025-11-29 08:03:01','CASH',6,13),(42,12,'2025-11-29 08:03:53','CASH',6,13),(43,12,'2025-11-29 08:04:37','CASH',6,13),(44,12,'2025-11-29 08:05:16','CASH',6,13),(45,12,'2025-11-29 08:11:08','CASH',6,13),(46,12,'2025-11-29 08:12:15','CASH',6,13),(47,12,'2025-11-29 08:13:06','CASH',6,13),(48,12,'2025-11-29 08:13:48','CASH',6,13),(49,11,'2025-11-29 08:14:44','CASH',6,13),(50,11,'2025-11-29 08:15:22','CASH',6,13),(51,11,'2025-11-29 08:16:03','CASH',6,13),(52,11,'2025-11-29 08:16:33','CASH',6,13),(53,11,'2025-11-29 08:17:48','CASH',6,13),(54,11,'2025-11-29 08:18:42','CASH',6,13),(55,11,'2025-11-29 08:22:03','CASH',6,13),(56,11,'2025-11-29 08:23:41','CASH',6,13),(57,11,'2025-11-29 09:02:56','CASH',6,13),(58,11,'2025-11-29 09:03:38','CASH',6,13),(59,12,'2025-11-29 09:04:22','CASH',6,13),(60,12,'2025-11-29 09:04:59','CASH',6,13),(61,12,'2025-11-29 09:06:42','CASH',6,13),(62,12,'2025-11-29 09:09:05','CASH',6,13),(63,12,'2025-11-29 09:10:10','CASH',6,13),(64,12,'2025-11-29 09:10:56','CASH',6,13),(65,12,'2025-11-29 09:11:44','CASH',6,13),(66,12,'2025-11-29 09:13:27','CASH',6,13),(67,12,'2025-11-29 09:14:23','CASH',6,13),(68,12,'2025-11-29 09:15:50','CASH',6,13),(69,12,'2025-11-29 09:16:41','CASH',6,13),(70,12,'2025-11-29 09:18:59','CASH',6,13),(71,12,'2025-11-29 09:20:31','CASH',6,13),(72,12,'2025-11-29 09:21:30','CASH',6,13),(73,12,'2025-11-29 09:23:06','CASH',6,13),(74,12,'2025-11-29 09:24:04','CASH',6,13),(75,12,'2025-11-29 09:24:49','CASH',6,13),(76,11,'2025-12-01 06:24:58','CASH',6,13),(77,11,'2025-12-01 06:25:40','CASH',6,13),(78,11,'2025-12-01 06:26:17','CASH',6,13),(79,11,'2025-12-01 07:01:30','CASH',6,13),(80,11,'2025-12-01 07:02:42','CASH',6,13),(81,11,'2025-12-01 07:03:38','CASH',6,13),(82,11,'2025-12-01 07:06:48','CASH',6,13),(83,11,'2025-12-01 07:07:25','CASH',6,13),(84,11,'2025-12-01 07:07:55','CASH',6,13),(85,11,'2025-12-01 07:08:30','CASH',6,13),(86,11,'2025-12-01 07:09:14','CASH',6,13),(87,11,'2025-12-01 07:10:26','CASH',6,13),(88,11,'2025-12-01 07:11:03','CASH',6,13),(89,11,'2025-12-01 07:11:48','CASH',6,13),(90,11,'2025-12-01 07:12:28','CASH',6,13),(91,11,'2025-12-01 07:13:04','CASH',6,13),(92,11,'2025-12-01 07:13:49','CASH',6,13),(93,11,'2025-12-01 07:14:17','CASH',6,13),(94,11,'2025-12-01 07:14:53','CASH',6,13),(95,11,'2025-12-01 07:15:52','CASH',6,13),(96,11,'2025-12-01 07:17:54','CASH',6,13),(97,11,'2025-12-01 07:18:31','CASH',6,13),(98,11,'2025-12-01 07:19:05','CASH',6,13),(99,11,'2025-12-01 07:20:08','CASH',6,13),(100,11,'2025-12-01 07:21:38','CASH',6,13),(101,11,'2025-12-01 07:25:05','CASH',6,13),(102,11,'2025-12-01 07:25:39','CASH',6,13),(103,11,'2025-12-01 07:26:10','CASH',6,13),(104,11,'2025-12-01 07:26:47','CASH',6,13),(105,11,'2025-12-01 07:27:13','CASH',6,13),(106,11,'2025-12-01 07:27:44','CASH',6,13),(107,11,'2025-12-01 07:28:23','CASH',6,13),(108,11,'2025-12-01 07:28:54','CASH',6,13),(109,11,'2025-12-01 07:29:52','CASH',6,13),(110,12,'2025-12-01 07:30:40','CASH',6,13),(111,14,'2025-12-02 03:47:12','CASH',6,13),(112,14,'2025-12-02 03:50:45','CASH',6,13),(113,14,'2025-12-02 03:52:23','CASH',6,13),(114,14,'2025-12-02 03:54:22','CASH',6,13),(115,14,'2025-12-02 03:56:55','CASH',6,13),(116,12,'2025-12-02 04:26:33','CASH',6,13),(117,12,'2025-12-02 04:31:22','CASH',6,13),(118,12,'2025-12-02 04:37:56','CASH',6,13),(119,12,'2025-12-02 05:18:51','CASH',6,13),(120,11,'2025-12-02 05:26:27','CASH',6,13),(121,14,'2025-12-02 05:30:49','CASH',6,13),(122,14,'2025-12-02 05:32:40','CASH',6,13),(123,16,'2025-12-02 06:24:53','CASH',6,13),(124,11,'2025-12-02 06:36:25','CASH',6,13),(125,13,'2025-12-02 06:37:10','CASH',6,13),(126,13,'2025-12-02 06:37:43','CASH',6,13),(127,11,'2025-12-02 06:38:21','CASH',6,13),(128,11,'2025-12-02 06:39:13','CASH',6,13),(129,16,'2025-12-02 06:40:00','CASH',6,13),(130,16,'2025-12-02 06:43:18','CASH',6,13),(131,11,'2025-12-02 06:43:55','CASH',6,13),(132,14,'2025-12-02 06:44:38','CASH',6,13),(133,14,'2025-12-02 06:45:26','CASH',6,13),(134,11,'2025-12-02 06:51:19','CASH',6,13),(135,11,'2025-12-02 06:51:51','CASH',6,13),(136,11,'2025-12-02 06:53:59','CASH',6,13),(137,11,'2025-12-02 06:54:47','CASH',6,13),(138,11,'2025-12-02 07:02:54','CASH',6,13),(139,11,'2025-12-02 07:04:23','CASH',6,13),(140,11,'2025-12-02 07:05:35','CASH',6,13),(141,11,'2025-12-02 07:06:17','CASH',6,13),(142,11,'2025-12-02 07:11:36','CASH',6,13),(143,11,'2025-12-02 07:12:45','CASH',6,13),(144,11,'2025-12-02 07:13:28','CASH',6,13),(145,11,'2025-12-02 07:14:07','CASH',6,13),(146,11,'2025-12-02 07:14:50','CASH',6,13),(147,11,'2025-12-02 07:15:23','CASH',6,13),(148,11,'2025-12-02 07:16:41','CASH',6,13),(149,11,'2025-12-02 07:18:19','CASH',6,13),(150,11,'2025-12-02 07:20:43','CASH',6,13),(151,11,'2025-12-02 07:22:38','CASH',6,13),(152,11,'2025-12-02 07:24:35','CASH',6,13),(153,11,'2025-12-02 07:25:26','CASH',6,13),(154,11,'2025-12-02 07:27:01','CASH',6,13),(155,11,'2025-12-02 07:29:07','CASH',6,13),(156,11,'2025-12-02 08:10:55','CASH',6,13),(157,11,'2025-12-03 01:29:50','CASH',6,13),(158,11,'2025-12-03 01:30:22','CASH',6,13),(159,11,'2025-12-03 01:31:19','CASH',6,13),(160,11,'2025-12-03 01:42:56','CASH',6,13),(161,11,'2025-12-03 01:43:30','CASH',6,13),(162,12,'2025-12-03 07:12:12','CASH',6,13),(163,12,'2025-12-03 07:13:00','CASH',6,13),(164,11,'2025-12-04 05:54:31','CASH',6,13),(165,12,'2025-12-04 05:57:22','CASH',6,13),(166,11,'2025-12-04 06:00:22','CASH',6,13),(167,11,'2025-12-04 06:03:51','CASH',6,13),(168,16,'2025-12-04 06:15:59','CASH',6,13),(169,16,'2025-12-04 06:23:15','CASH',6,13),(170,16,'2025-12-04 06:25:04','CASH',6,13),(171,11,'2025-12-04 06:27:38','CASH',6,13),(172,14,'2025-12-04 07:00:35','CASH',6,13),(173,14,'2025-12-04 07:02:35','CASH',6,13),(174,14,'2025-12-04 07:05:10','CASH',6,13),(175,12,'2025-12-04 07:07:49','CASH',6,13),(176,14,'2025-12-04 07:11:10','CASH',6,13),(177,12,'2025-12-04 07:15:17','CASH',6,13),(178,14,'2025-12-04 07:23:12','CASH',6,13),(179,11,'2025-12-04 07:26:24','CASH',6,13),(180,12,'2025-12-04 07:28:14','CASH',6,13),(181,14,'2025-12-04 07:32:01','CASH',6,13),(182,14,'2025-12-04 07:34:09','CASH',6,13),(183,12,'2025-12-04 07:37:09','CASH',6,13),(184,11,'2025-12-04 07:38:55','CASH',6,13),(185,11,'2025-12-04 07:56:21','CASH',6,13),(186,14,'2025-12-04 08:01:39','CASH',6,13),(187,16,'2025-12-04 08:05:09','CASH',6,13),(188,14,'2025-12-04 08:07:00','CASH',6,13),(189,12,'2025-12-04 08:16:20','CASH',6,13),(190,13,'2025-12-04 08:20:12','CASH',6,13),(191,14,'2025-12-04 08:22:27','CASH',6,13),(192,14,'2025-12-04 08:24:12','CASH',6,13),(193,16,'2025-12-04 08:26:11','CASH',6,13),(194,14,'2025-12-04 08:29:38','CASH',6,13),(195,14,'2025-12-04 08:31:33','CASH',6,13);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply_details`
--

DROP TABLE IF EXISTS `supply_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply_details` (
  `supply_details_id` int NOT NULL AUTO_INCREMENT,
  `supply_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity_supplied` int DEFAULT NULL,
  PRIMARY KEY (`supply_details_id`),
  KEY `fk_supply_details_supply1` (`supply_id`),
  KEY `fk_supply_details_product1_idx` (`product_id`),
  CONSTRAINT `fk_supply_details_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_supply_details_supply1` FOREIGN KEY (`supply_id`) REFERENCES `supply` (`supply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_details`
--

LOCK TABLES `supply_details` WRITE;
/*!40000 ALTER TABLE `supply_details` DISABLE KEYS */;
INSERT INTO `supply_details` VALUES (1,1,1,12),(2,1,2,15),(3,1,3,22),(4,1,4,11),(5,1,5,15),(6,1,6,14),(7,1,7,10),(8,1,8,50),(9,1,9,11),(10,1,10,21),(11,1,11,21),(12,1,12,31),(13,1,13,44),(14,1,14,36),(15,1,15,38),(16,1,16,30),(17,1,17,26),(18,1,18,33),(19,1,19,35),(20,1,20,26),(21,1,21,16),(22,1,22,32),(23,1,23,21),(24,1,24,42),(25,1,25,14),(26,1,26,17),(27,1,27,33),(28,1,28,24),(29,1,29,11),(30,1,30,13),(31,1,31,24),(32,1,32,31),(33,1,33,32),(34,1,34,18),(35,1,35,24),(36,1,36,15),(37,1,37,36),(38,1,38,43),(39,1,39,14),(40,1,40,16),(87,3,1,3),(88,2,1,2),(89,3,2,1),(90,2,2,3),(91,3,3,1),(92,2,3,5),(93,3,4,1),(94,2,4,2),(95,3,5,1),(96,2,5,2),(97,4,2,5),(98,4,7,2),(99,4,12,4),(100,4,17,2),(101,4,22,1),(102,5,3,5),(103,5,8,3),(104,5,13,3),(105,5,18,5),(106,5,23,2),(107,6,4,5),(108,6,9,4),(109,6,14,3),(110,6,19,1),(111,6,24,1),(112,7,5,4),(113,7,10,5),(114,7,15,1),(115,7,20,5),(116,7,25,2),(118,10,56,10),(119,11,57,6),(120,12,7,5),(121,13,4,2),(122,14,58,10),(123,15,59,1),(124,16,60,20),(125,17,61,12),(126,18,7,9),(127,19,62,1),(128,20,63,12),(129,21,62,1),(130,22,62,1),(131,23,64,5),(132,24,65,7),(133,25,66,27),(134,26,67,22),(135,27,68,8),(136,28,69,15),(137,29,70,75),(138,30,71,34),(139,31,72,56),(140,32,73,64),(141,33,74,36),(142,34,75,76),(143,35,76,74),(144,36,77,52),(145,37,78,40),(146,38,79,80),(147,39,80,68),(148,40,81,41),(149,41,82,32),(150,42,83,15),(151,43,84,45),(152,44,85,48),(153,45,86,15),(154,46,87,11),(155,47,88,15),(156,48,89,5),(157,49,90,12),(158,50,91,5),(159,51,92,6),(160,52,93,9),(161,53,94,3),(162,54,95,4),(163,55,96,8),(164,56,97,15),(165,57,98,4),(166,58,99,13),(167,59,100,10),(168,60,101,12),(169,61,102,7),(170,62,103,7),(171,63,104,12),(172,64,105,10),(173,65,106,7),(174,66,107,8),(175,67,108,5),(176,68,109,10),(177,69,110,10),(178,70,111,10),(179,71,112,7),(180,72,113,10),(181,73,114,9),(182,74,115,5),(183,75,116,5),(184,76,117,34),(185,77,118,38),(186,78,119,47),(187,79,120,15),(188,80,121,13),(189,81,122,35),(190,82,123,32),(191,83,124,10),(192,84,125,11),(193,85,126,12),(194,86,127,14),(195,87,128,6),(196,88,129,10),(197,89,130,10),(198,90,131,10),(199,91,132,26),(200,92,133,36),(201,93,134,21),(202,94,135,50),(203,95,136,7),(204,96,137,13),(205,97,138,7),(206,98,139,4),(207,99,140,4),(208,100,141,24),(209,101,142,25),(210,102,143,10),(211,103,144,16),(212,104,145,5),(213,105,146,34),(214,106,147,150),(215,107,148,7),(216,108,149,20),(217,109,150,100),(218,110,151,70),(219,111,152,5),(220,112,153,8),(221,113,154,6),(222,114,155,10),(223,115,156,10),(224,116,157,8),(225,117,158,8),(226,118,159,27),(227,119,160,48),(228,120,161,1),(229,121,162,11),(230,122,163,11),(231,123,164,10),(232,124,165,6),(233,125,166,6),(234,126,167,8),(235,127,168,3),(236,128,169,18),(237,129,170,9),(238,130,171,5),(239,131,172,7),(240,132,173,7),(241,133,174,5),(242,134,175,30),(243,135,176,61),(244,136,177,38),(245,137,178,73),(246,138,179,68),(247,139,180,20),(248,140,181,43),(249,141,182,105),(250,142,183,47),(251,143,184,15),(252,144,185,19),(253,145,186,27),(254,146,187,48),(255,147,188,46),(256,148,189,63),(257,149,190,8),(258,150,191,20),(259,151,192,47),(260,152,193,30),(261,153,194,320),(262,154,195,22),(263,155,196,38),(264,156,197,10),(265,157,198,50),(266,158,199,50),(267,159,200,30),(268,160,201,130),(269,161,202,91),(270,162,203,8),(271,163,204,12),(272,164,205,3),(273,165,206,3),(274,166,207,9),(275,167,208,16),(276,168,209,1),(277,169,210,7),(278,170,211,10),(279,171,212,6),(280,172,213,11),(281,173,214,2),(282,174,215,2),(283,175,216,3),(284,176,217,3),(285,177,218,15),(286,178,219,2),(287,179,220,27),(288,180,221,13),(289,181,222,2),(290,182,223,1),(291,183,224,1),(292,184,225,4),(293,185,226,2),(294,186,227,1),(295,187,228,2),(296,188,229,2),(297,189,230,12),(298,190,231,1),(299,191,232,5),(300,192,233,2),(301,193,234,7),(302,194,235,8),(303,195,236,8);
/*!40000 ALTER TABLE `supply_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-08 14:39:05
