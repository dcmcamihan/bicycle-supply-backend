-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: dbbicycle_supply
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_details`
--

LOCK TABLES `attendance_details` WRITE;
/*!40000 ALTER TABLE `attendance_details` DISABLE KEYS */;
INSERT INTO `attendance_details` VALUES (1,2,'07:45:00','12:00:00','Morning attendance'),(2,2,'12:45:00','17:00:00','Afternoon attendance'),(3,3,'07:35:00','12:05:00','Morning attendance'),(4,3,'12:55:00','17:10:00','Afternoon attendance'),(5,4,'07:49:00','12:01:00','Morning attendance'),(6,4,'12:51:00','17:02:00','Afternoon attendance'),(7,5,'07:56:00','12:01:00','Morning attendance'),(8,5,'12:59:00','17:20:00','Afternoon attendance'),(9,6,'07:47:00','12:02:00','Morning attendance'),(10,6,'12:55:00','17:10:00','Afternoon attendance'),(11,8,'07:53:00','12:05:00','Morning attendance'),(12,8,'12:58:00','17:01:00','Afternoon attendance'),(13,9,'07:25:00','12:00:00','Morning attendance'),(14,9,'12:39:00','17:03:00','Afternoon attendance'),(15,10,'07:46:00','12:14:00','Morning attendance'),(16,10,'12:58:00','17:08:00','Afternoon attendance'),(17,11,'07:49:00','12:01:00','Morning attendance'),(18,11,'12:49:00','17:08:00','Afternoon attendance'),(19,12,'07:51:00','12:10:00','Morning attendance'),(20,12,'12:59:00','17:04:00','Afternoon attendance'),(21,13,'08:00:00','12:01:00','Morning attendance'),(22,13,'12:41:00','17:06:00','Afternoon attendance'),(23,15,'08:00:00','12:00:00','Morning attendance'),(24,16,'08:00:00','12:00:00','Morning attendance'),(25,17,'08:00:00','12:00:00','Morning attendance'),(26,18,'08:00:00','12:00:00','Morning attendance'),(27,19,'08:00:00','12:00:00','Morning attendance'),(28,20,'08:00:00','12:00:00','Morning attendance'),(29,21,'08:00:00','12:00:00','Morning attendance'),(30,22,'08:00:00','12:00:00','Morning attendance'),(31,23,'08:00:00','12:00:00','Morning attendance'),(32,24,'08:00:00','12:00:00','Morning attendance'),(33,25,'08:00:00','12:00:00','Morning attendance'),(34,26,'08:00:00','12:00:00','Morning attendance'),(35,27,'08:00:00','12:00:00','Morning attendance'),(38,15,'13:00:00','17:00:00','Afternoon attendance'),(39,16,'13:00:00','17:00:00','Afternoon attendance'),(40,17,'13:00:00','17:00:00','Afternoon attendance'),(41,18,'13:00:00','17:00:00','Afternoon attendance'),(42,19,'13:00:00','17:00:00','Afternoon attendance'),(43,20,'13:00:00','17:00:00','Afternoon attendance'),(44,21,'13:00:00','17:00:00','Afternoon attendance'),(45,22,'13:00:00','17:00:00','Afternoon attendance'),(46,23,'13:00:00','17:00:00','Afternoon attendance'),(47,24,'13:00:00','17:00:00','Afternoon attendance'),(48,25,'13:00:00','17:00:00','Afternoon attendance'),(49,26,'13:00:00','17:00:00','Afternoon attendance'),(50,27,'13:00:00','17:00:00','Afternoon attendance');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Colnago','Italy'),(2,'Pinarello','Italy'),(3,'Specialized','USA'),(4,'Trek','USA'),(5,'Cervélo','Canada'),(6,'BMC','Switzerland'),(7,'Giant','Taiwan'),(8,'Canyon','Germany'),(9,'Shimano','Japan'),(10,'SRAM','USA'),(11,'Polygon Bikes','Indonesia'),(12,'Giro','USA'),(13,'Bell Helmets','USA'),(14,'MOB Philippines','Philippines'),(15,'Southside Bike Parts PH','Philippines'),(16,'Stan13 Bike Philippines','Philippines'),(17,'Fox Racing Shox','USA'),(18,'Campagnolo','Italy'),(19,'KMC','Taiwan'),(20,'Tektro','Taiwan'),(21,'Maxxis','Taiwan'),(22,'Rurok Industries','Philippines'),(23,'Colony Bike Parts','Philippines');
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
INSERT INTO `category` VALUES ('BIKECOMP','Bike Components'),('CYCACCES','Cycling Accessories'),('CYCAPPRL','Cycling Apparel & Gear'),('MAINTREP','Maintenance & Repair');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Juan','Dela Cruz','Santos','M'),(2,'Maria','Reyes','Lourdes','F'),(3,'Ricardo','Bautista','Mendoza','M'),(4,'Angela','Garcia','Dimaculangan','F'),(5,'Mark','Santiago','Villanueva','M'),(6,'Camille','Ramos','Dizon','F'),(7,'Jonathan','Cruz','Ramos','M'),(8,'Patricia','Villanueva','Reyes','F'),(9,'Gabriel','Mendoza','Fernandez','M'),(10,'Kristine','Aquino','Soriano','F'),(11,'Michael','Santos','David','M'),(12,'Anne','Gonzales','Francisco','F'),(13,'Joseph','Soriano','Cruz','M'),(14,'Charlene','Pineda','Valenzuela','F'),(15,'Benedict','Ocampo','De Leon','M'),(16,'Alyssa','Navarro','Hernandez','F'),(17,'Patrick','Tan','Ong','M'),(18,'Jennifer','Lim','Go','F'),(19,'Carlo','De Guzman','Manalo','M'),(20,'Sofia','Evangelista','Cruz','F'),(21,'test','test','test','F'),(22,'Ambot','Langaw','Sa','M'),(23,'Angelo','Cruz',NULL,NULL),(24,'Julian','Tolentino',NULL,NULL),(25,'Migs','Fuentes',NULL,NULL),(26,'Christian','Ong',NULL,NULL),(27,'Ken','Pangilinan',NULL,NULL),(28,'Herra','Cruz',NULL,NULL),(29,'Anna','Reyes',NULL,NULL),(30,'Kurt','Santos',NULL,NULL),(31,'Kim','Rodriguez',NULL,NULL),(32,'Russel','Gomez',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Dianna Claire Marie','Amihan','Cahayag','F','2004-12-16','dcmamihan','$2b$10$QwZWeQZPtob1/pli4GYRnuwpjqgGkoAyCPysjcITyGr.w7ttuf2a.','0001'),(2,'Elijah Raye Vel','Amihan','Cahayag','M','2004-10-22','ervamihan','$2b$10$JycklZMUviLac3sVrAab3ej.e5ejA/2IJAN0583wiXdKr5tdTiG6m','0001'),(3,'Brandon Boyd','Amihan','Cahayag','M','2004-01-17','bbamihan','$2b$10$btNuet4VgXj/1prMuZg6BurkTq/xZEnnyGpNKtjo.0h7CpbgPqLZC','0001'),(4,'Ireneo','Palmero','Dizon','M','1978-03-15','ireneopalmero','$2b$10$5Zfe8EbRaRgsFEtKv.FwbuW1uBCpiQWsGE53OolIlEKmm9ewL20nW','0001'),(5,'Angelo','Palen','Ramos','M','1992-07-22','angelopalen','$2b$10$FtKUec.jhERFyeeOmInDbuxBtyv6qFJ8mvNqEosrZnEeRR.VE9MC6','0001'),(6,'Menzi','Englatera','Reyes','F','1991-12-03','menzienglatera','$2b$10$xXM6lTlb88YTMp7YHfxpKeIzPNrkfjQv2E25coItXV0NPv6JFajF6','0001'),(7,'Raizel','Oppus','Soriano','F','1996-02-12','raizeloppus','$2b$10$zb/yAfYSiw3nkOZN4boJzOxNxxqYRr8pjpjemvqbauQZZl0ypjwPq','0001'),(8,'Editha','Quezada','Villanueva','F','1983-06-25','ediquezada','$2b$10$KJsRps2Iab7Cgm1ou.6SJu9vvCdn/YpliRvIhy6X6hFlv4/9WucR.','0001'),(9,'Geraldy','Toting','Mendoza','M','1979-08-08','gertoting','$2b$10$9fwnmktgbQNK8PKLyLPqPOFr8f4wwWNj0EXlMcsTATjb/A.Zy53hi','0001'),(10,'Rustico','Bravo','Santos','M','1977-09-30','rusbravo','$2b$10$4IXJYS1oU3yIbeaEZuxpX.QNl5pxHLRvrOeUio4GKcG63riPDGCt.','0001'),(11,'Herald Vann','Alalim',NULL,'M','2004-04-23','hvalalim','$2b$10$KXXUxeIZfSJIitdNVhCXEOBMPSPQFFqgKUTWuANtXjQBfpxEqtCt.','0001'),(12,'John Herbert','Yncierto',NULL,'M','2004-07-27','jhyncierto','$2b$10$3gCTdd7R9swLzg82O7AbJeIx5WX/XBx0lNzg8DwVgHqhmlncfQaqC','0001'),(13,'Jacqueline','Yncierto',NULL,'F','1981-12-03','jacyncierto','$2b$10$nP6NDkd1v9D3fNDOLZSZqOaLmx6e5eGQRbay1eCyRxhSZPrGCuFg6','0001');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (1,1,'2025-03-12','1002'),(2,2,'2025-03-13','1001'),(3,3,'2025-03-12','1001'),(4,4,'2025-03-12','1001'),(5,5,'2025-03-12','1001'),(6,6,'2025-03-12','1001'),(7,7,'2025-03-12','1001'),(8,8,'2025-03-12','1001'),(9,9,'2025-03-12','1001'),(10,10,'2025-03-12','1001'),(11,11,'2025-03-12','1001'),(12,12,'2025-03-12','1001'),(13,13,'2025-03-12','1001'),(15,1,'2025-10-23','1001'),(16,2,'2025-10-23','1001'),(17,3,'2025-10-23','1001'),(18,4,'2025-10-23','1001'),(19,5,'2025-10-23','1001'),(20,6,'2025-10-23','1001'),(21,7,'2025-10-23','1001'),(22,8,'2025-10-23','1001'),(23,9,'2025-10-23','1001'),(24,10,'2025-10-23','1001'),(25,11,'2025-10-23','1001'),(26,12,'2025-10-23','1001'),(27,13,'2025-10-23','1001');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_contact`
--

LOCK TABLES `employee_contact` WRITE;
/*!40000 ALTER TABLE `employee_contact` DISABLE KEYS */;
INSERT INTO `employee_contact` VALUES (1,'EMAILADD',1,'diannaclairemarie.amihan@gmail.com','Y','Y'),(2,'EMAILADD',11,'heraldvann.alalim@gmail.com','Y','N'),(3,'EMAILADD',12,'johnherbert.yncierto@gmail.com','Y','N'),(4,'MOBILENO',1,'09606026075','Y','Y'),(5,'MOBILENO',2,'09606026072','Y','Y'),(6,'TELEPHNO',4,'(02) 1272-0905','Y','Y'),(7,'FACEBOOK',7,'https://www.facebook.com/jolensbicycleshop','Y','Y'),(8,'WHATSAPP',9,'+63 917 123 4567','N','N'),(9,'MOBILENO',3,'09623608843','Y','Y'),(10,'WHATSAPP',5,'+63 123 456 7890','N','N'),(11,'MOBILENO',7,'09876543211','Y','N'),(12,'FACEBOOK',11,'https://www.facebook.com/heralalalim','Y','Y'),(13,'FACEBOOK',2,'https://www.facebook.com/elijahamihan','Y','N'),(14,'EMAILADD',3,'brandonboyd.amihan@gmail.com','Y','Y'),(15,'MOBILENO',7,'09987654322','Y','Y'),(16,'TELEPHNO',6,'(02) 8267-0902','Y','Y'),(17,'EMAILADD',10,'rusticobravo@gmail.com','Y','N'),(18,'TELEPHNO',8,'(02) 9292-0978','Y','Y'),(19,'EMAILADD',4,'ireneopalmero@gmail.com','Y','Y'),(20,'FACEBOOK',6,'https://www.facebook.com/menzienglatera','Y','Y'),(21,'EMAILADD',2,'elijahrayevel.amihan@company.example','Y','N'),(22,'EMAILADD',5,'angelo.palen@company.example','Y','N'),(23,'EMAILADD',6,'menzi.englatera@company.example','Y','N'),(24,'EMAILADD',7,'raizel.oppus@company.example','Y','N'),(25,'EMAILADD',8,'editha.quezada@company.example','Y','N'),(26,'EMAILADD',9,'geraldy.toting@company.example','Y','N'),(27,'EMAILADD',13,'jacqueline.yncierto@company.example','Y','N'),(28,'MOBILENO',4,'09800000004','Y','Y'),(29,'MOBILENO',5,'09800000005','Y','Y'),(30,'MOBILENO',6,'09800000006','Y','Y'),(31,'MOBILENO',8,'09800000008','Y','Y'),(32,'MOBILENO',9,'09800000009','Y','Y'),(33,'MOBILENO',10,'09800000010','Y','Y'),(34,'MOBILENO',11,'09800000011','Y','Y'),(35,'MOBILENO',12,'09800000012','Y','Y'),(36,'MOBILENO',13,'09800000013','Y','Y');
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
INSERT INTO `employee_role` VALUES (4,4,'BIKEMECH','Bicycle Repair'),(5,5,'SALEATTN',NULL),(6,6,'CASHIER','Cashing in/out money'),(7,7,'CASHIER','Cashing in/out money'),(8,8,'CASHIER','Cashing in/out money'),(9,9,'BIKEMECH','Frame Welding'),(10,10,'BIKEMECH','Wheel & Tire Specialist'),(15,6,'SALEATTN',NULL),(16,8,'SALEATTN',NULL),(17,1,'CASHIER',NULL),(18,2,'CASHIER',NULL),(19,3,'CASHIER',NULL),(20,11,'CASHIER',NULL),(21,12,'CASHIER',NULL),(22,13,'CASHIER',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role_history`
--

LOCK TABLES `employee_role_history` WRITE;
/*!40000 ALTER TABLE `employee_role_history` DISABLE KEYS */;
INSERT INTO `employee_role_history` VALUES (1,1,'CASHIER','2025-10-23'),(2,2,'CASHIER','2025-10-23'),(3,3,'CASHIER','2025-10-23'),(4,4,'CASHIER','2025-10-23'),(5,5,'CASHIER','2025-10-23'),(6,6,'CASHIER','2025-10-23'),(7,7,'CASHIER','2025-10-23'),(8,8,'CASHIER','2025-10-23'),(9,9,'CASHIER','2025-10-23'),(10,10,'CASHIER','2025-10-23'),(11,11,'CASHIER','2025-10-23'),(12,12,'CASHIER','2025-10-23'),(13,13,'CASHIER','2025-10-23');
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
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category1_idx` (`category_code`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_code`) REFERENCES `category` (`category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Shimano Deore M6100 Groupset',NULL,'BIKECOMP',9,12500.00,3,'https://iloilobikeshop.com/cdn/shop/products/image_6484f2e0-6bfc-402a-9966-e6d83757f588.jpg?v=1685631182'),(2,'SRAM GX Eagle 12-Speed Chain',NULL,'BIKECOMP',10,2800.00,5,'https://media.tweekscycles.com/media/catalog/product/cache/938df1aa6fd582849f667e6a2d491158/s/r/srmchpc8030011_d6_feb22.jpg'),(3,'Polygon Cascade 4 Mountain Bike',NULL,'BIKECOMP',11,25000.00,3,'https://media.polygonbikes.com/wp-content/uploads/2022/09/13150556/MY22-CASCADE-FOUR-RR-768x576.png'),(4,'Bell Super DH MIPS Helmet','The Trek Mountain Explorer Pro 29\" is engineered for serious mountain biking enthusiasts who demand performance and reliability on challenging terrain. This premium mountain bike features a lightweight aluminum frame with advanced suspension technology, p','CYCAPPRL',13,9800.00,3,'https://winstanleysbikes.co.uk/media/catalog/product/b/e/bell-super-dh-spherical-mountain-bike-helmet-prime-matte-blue-crimson-right.jpg'),(5,'MOB Alloy Flat Pedals',NULL,'BIKECOMP',14,1200.00,3,'https://ph-test-11.slatic.net/p/7437cf58236c05bb03e9533739396e91.png'),(6,'Ranking T9 Cycling Glasses',NULL,'CYCACCES',15,1500.00,3,'https://rockbrossport.co.uk/cdn/shop/files/ROCKBROS-Cycling-Glasses-Polarised-Sports-Glasses-UV400-Protection_1.jpg?v=1713942669&width=2048'),(7,'Stan13 Bike Chain Lube',NULL,'MAINTREP',16,350.00,5,'https://stans.com/cdn/shop/files/LC0002STAN_SBIOBASEDDRYCHAINLUBE_120ML-FRONT_grande.jpg?v=1724255320'),(8,'Campagnolo Super Record 12-Speed Groupset',NULL,'BIKECOMP',18,45000.00,3,'https://images.bike24.com/i/mb/8e/97/26/280810-00-d-565613.jpg'),(9,'Tektro HD-M275 Hydraulic Disc Brakes',NULL,'BIKECOMP',20,3500.00,3,'https://sportandleisure.com/cdn/shop/products/57_fcc110d2-3a9c-42ad-8741-db83ff20bfac_1000x.jpg?v=1686846239'),(10,'KMC X11 11-Speed Chain',NULL,'BIKECOMP',19,1500.00,3,'https://www.bike-discount.de/media/image/2e/f4/8a/KMC-X11-11-fach-Kette-Master.jpg'),(11,'Maxxis High Roller II 27.5” Tire',NULL,'BIKECOMP',21,2800.00,3,'https://content.competitivecyclist.com/images/items/large/MXX/MXX003T/BK.jpg'),(12,'Fox 36 Factory Series Suspension Fork',NULL,'BIKECOMP',17,55000.00,3,'https://driftbikes.com.au/cdn/shop/files/Fox_36_Float_E_Optimized_Performance_Fork_2023_Grip_3_Pos_Matte_Black.webp?v=1701812945&width=1000'),(13,'Rurok Cordillera Enduro Bike Frame',NULL,'BIKECOMP',22,65000.00,3,'https://static.wixstatic.com/media/b322f6_8284271da2de482ba78fd5c2d92c0f34~mv2_d_2500_1700_s_2.jpg/v1/fill/w_980,h_666,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/b322f6_8284271da2de482ba78fd5c2d92c0f34~mv2_d_2500_1700_s_2.jpg'),(14,'Colony Bike Handlebar Grips',NULL,'CYCACCES',23,800.00,3,'https://colonybmx.com.au/news/wp-content/uploads/2013/06/muchroom-green-storm-grips.jpg'),(15,'Shimano XT M8100 12-Speed Cassette',NULL,'BIKECOMP',9,8500.00,3,'https://images.bike24.com/i/mb/6c/31/03/324206-02-d-676202.jpg'),(16,'SRAM Level TL Hydraulic Disc Brakes',NULL,'BIKECOMP',10,6500.00,3,'https://www.sram.com/globalassets/image-hierarchy/sram-product-root-images/brakes---disc/brakes---disc/db-level-t-a1/leveltleverfront.jpg?w=1000'),(17,'Campagnolo Bora WTO 45 Carbon Wheelset',NULL,'BIKECOMP',18,120000.00,3,'https://www.campagnolo.com/dw/image/v2/BJSG_PRD/on/demandware.static/-/Sites-cmp-master-catalog/default/dw3f95ef67/images/hi-res-1/WWRBORAULTRAWTO45C23DB.standard.5.H1.jpg?sw=885&q=85'),(18,'Tektro R539 Road Brake Calipers',NULL,'BIKECOMP',20,2500.00,3,'https://m.media-amazon.com/images/I/614jqD9zOQL._UF894,1000_QL80_.jpg'),(19,'KMC X9 9-Speed Chain',NULL,'BIKECOMP',19,950.00,3,'https://www.bike-discount.de/media/image/23/88/92/KMC-X9-9-fach-Kette-Master.jpg'),(20,'Maxxis Minion DHF 29” Tire',NULL,'BIKECOMP',21,3200.00,3,'https://www.christysports.com/dw/image/v2/BGBB_PRD/on/demandware.static/-/Sites-master-winter/default/dw110652f7/1008961_020_1.jpg?sw=800&sh=800'),(21,'Fox Racing Speedframe Pro Helmet',NULL,'CYCAPPRL',17,12000.00,3,'https://rox.com.ph/cdn/shop/files/1000502229_01.jpg?v=1726543243&width=1080'),(22,'Rurok Kanlaon Hardtail MTB Frame',NULL,'BIKECOMP',22,35000.00,3,'https://static.wixstatic.com/media/b322f6_84b362f5d0a24610ba4dd7045eb14c02~mv2_d_2500_1700_s_2.jpg/v1/fill/w_980,h_666,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/b322f6_84b362f5d0a24610ba4dd7045eb14c02~mv2_d_2500_1700_s_2.jpg'),(23,'Colony BMX Pedals',NULL,'BIKECOMP',23,1400.00,3,'https://colonybmx.com.au/news/wp-content/uploads/2013/06/fantastic-pedals-copper.jpg'),(24,'MOB Bike Maintenance Kit',NULL,'MAINTREP',14,750.00,3,'https://m.media-amazon.com/images/I/71an8tEb-DL._AC_UF894,1000_QL80_.jpg'),(25,'Colnago Aero Race Cycling Jersey',NULL,'CYCAPPRL',1,6500.00,3,'https://my-test-11.slatic.net/p/2079ff2f84fe82ebcba8a3e667853a76.jpg'),(26,'Colnago Carbon Fiber Bottle Cage',NULL,'CYCACCES',1,2000.00,3,'https://cdn11.bigcommerce.com/s-cw4c0mbnss/images/stencil/1280x1280/products/163/448/1PRB.CRB.000.000.00SL__21803.1577978661.jpg?c=1'),(27,'Pinarello Dogma F12 Carbon Saddle',NULL,'CYCACCES',2,12000.00,3,'https://www.cicliserino.com/wp-content/uploads/2020/02/PINARELLO-DOGMA-F12.png'),(28,'Pinarello Padded Cycling Bib Shorts',NULL,'CYCAPPRL',2,8500.00,3,'https://www.rdrbikes.it/24487-home_default/pinarello-bibshort-dogma-black.jpg'),(29,'Specialized S-Works Evade II Helmet',NULL,'CYCAPPRL',3,15000.00,3,'https://www.pro-mstore.com/800/61882875/1632999694599/CASCO-SPECIALIZED-SWORKS-EVADE-II-MIPS.jpg'),(30,'Specialized Purist Water Bottle',NULL,'CYCACCES',3,900.00,3,'https://www.balfesbikes.co.uk/images/products/4/44/44119-232_btl_purist-insulated-chromatek-wg-btl-trans-camo-23-oz_hero.jpg?width=1998&height=1998&quality=85&mode=pad&format=webp&bgcolor=ffffff'),(31,'Trek Circuit Softshell Cycling Gloves',NULL,'CYCAPPRL',4,2500.00,3,'https://www.teamcycles.com/images/products/3/31/31057_528_1.webp?width=1998&height=1998&quality=85&mode=pad&format=webp&bgcolor=ffffff'),(32,'Trek Blendr Universal Handlebar Mount',NULL,'CYCACCES',4,1800.00,3,'https://trekstore.lt/23596-large_default/stem-part-bontrager-blendr-universal-light-mount.jpg'),(33,'Cervélo Carbon Seatpost',NULL,'CYCACCES',5,5500.00,3,'https://www.backcountry.com/images/items/large/CVL/CVL1WUH/BLA.jpg'),(34,'Cervélo Cycling Arm Warmers',NULL,'CYCAPPRL',5,2000.00,3,'https://www.bikeandrun.co.uk/images/product/196115141-143_CER_ArmWarmers_8b765f847d1427894761.jpg'),(35,'BMC Aero Race Cycling Socks',NULL,'CYCAPPRL',6,1500.00,3,'https://content.competitivecyclist.com/images/items/large/PLZ/PLZ1376/TEA.jpg'),(36,'BMC Pro Chain Cleaner Kit',NULL,'MAINTREP',6,1200.00,3,'https://www.bmc-air-filter-shop.com/070@WA-200-500/BMC-Washing-Kit-oil-spray-%26-cleaner.jpg'),(37,'Giant Control Tower 3 Floor Pump',NULL,'MAINTREP',7,2200.00,3,'https://images.performancebike.com/images/large/bikes/giant/610000079.jpg'),(38,'Giant Recon HL800 Bike Light',NULL,'CYCACCES',7,3500.00,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBCwwYnqqn7imqUHZULoeXI09Sdl04Jcp52Q&s'),(39,'Canyon Signature Pro Road Gloves',NULL,'CYCAPPRL',8,2800.00,3,'https://cdn.prod.website-files.com/668edfdb81f8044d1658c7a6/6695c013f94d1585609baa70_main-9101000-Signature-Pro-Short-Finger-gloves-gy.webp'),(40,'Canyon Bike Care Cleaning Kit',NULL,'MAINTREP',8,1800.00,3,'https://images.bike24.com/i/mb/08/39/9e/muc-off-bike-care-essentials-kit-2-1381502.jpg'),(56,'MOB Philippines Puncture Repair Kit',NULL,'MAINTREP',14,350.00,4,'https://ph-live-01.slatic.net/p/2de2ee6baf023fa837cb3f019b918f8a.jpg'),(57,'Southside Bike Chain Cleaner Set','The Trek Mountain Explorer Pro 29\" is engineered for serious mountain biking enthusiasts who demand performance and reliability on challenging terrain. This premium mountain bike features a lightweight aluminum frame with advanced suspension technology, p','MAINTREP',15,650.00,5,'https://m.media-amazon.com/images/I/71tcUzoONyL.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,1,'https://iloilobikeshop.com/cdn/shop/products/image_6484f2e0-6bfc-402a-9966-e6d83757f588.jpg?v=1685631182'),(2,1,'https://iloilobikeshop.com/cdn/shop/products/image_5d824b83-fff8-4501-b155-ef64d9324469.jpg?v=1685631182'),(3,1,'https://iloilobikeshop.com/cdn/shop/products/image_45694869-b18c-4890-91a4-29170efddd72.jpg?v=1685631182'),(4,1,'https://iloilobikeshop.com/cdn/shop/products/image_1cefbe96-1b24-4f10-826a-23a149f22d97.jpg?v=1685631182'),(5,1,'https://iloilobikeshop.com/cdn/shop/products/image_13ee7764-5af5-475c-aa19-964eab5b43ea.jpg?v=1685631182'),(6,2,'https://media.tweekscycles.com/media/catalog/product/cache/938df1aa6fd582849f667e6a2d491158/s/r/srmchpc8030011_d6_feb22.jpg'),(7,2,'https://images.bike24.com/media/510/i/mb/fa/97/34/230859-01-d-445028.jpg'),(8,2,'https://www.tnc-hamburg.com/images/product_images/info_images/Kette_Sram_GX_Eagle_Transmission_65354_0.webp'),(9,2,'https://www.chain-nerds.com/cdn/shop/files/SRAM-GX-2_1.png?v=1717911801&width=1946'),(10,2,'https://risecomponents.com/cdn/shop/files/SramGXEagleSpeedChain.webp?v=1722356999');
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
  `return_status` char(4) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`return_id`),
  KEY `fk_return_and_replacement_sale_details1_idx` (`sale_detail_id`),
  KEY `fk_return_and_replacement_status1_idx` (`return_status`),
  CONSTRAINT `fk_return_and_replacement_sale_details1` FOREIGN KEY (`sale_detail_id`) REFERENCES `sale_details` (`sale_detail_id`),
  CONSTRAINT `fk_return_and_replacement_status1` FOREIGN KEY (`return_status`) REFERENCES `status` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_and_replacement`
--

LOCK TABLES `return_and_replacement` WRITE;
/*!40000 ALTER TABLE `return_and_replacement` DISABLE KEYS */;
INSERT INTO `return_and_replacement` VALUES (1,2031,'2001','2025-02-25 10:30:00','Request received'),(2,2031,'2004','2025-02-25 11:00:00','Pending validation'),(3,2031,'2006','2025-02-25 11:20:00','In process by concerned department'),(4,2031,'2002','2025-02-25 13:30:00','Approved by manager'),(5,2031,'2009','2025-02-25 13:35:00','Replacement processed'),(6,2031,'2009','2025-02-25 14:00:00','Replacement request resolved'),(7,6,'2001','2025-10-23 09:36:42','Request received'),(8,5,'2001','2025-10-23 09:36:42','Request received'),(9,4,'2001','2025-10-23 09:36:42','Request received'),(10,3,'2001','2025-10-23 09:36:42','Request received'),(11,2,'2001','2025-10-23 09:36:42','Request received'),(14,6,'2004','2025-10-23 09:51:45','Pending validation'),(15,5,'2004','2025-10-23 09:51:45','Pending validation'),(16,4,'2004','2025-10-23 09:51:45','Pending validation'),(17,3,'2004','2025-10-23 09:51:45','Pending validation'),(18,2,'2004','2025-10-23 09:51:45','Pending validation'),(21,6,'2002','2025-10-23 10:21:49','Approved by manager'),(22,5,'2002','2025-10-23 10:21:49','Approved by manager'),(23,4,'2002','2025-10-23 10:21:49','Approved by manager'),(24,3,'2002','2025-10-23 10:21:49','Approved by manager'),(25,2,'2002','2025-10-23 10:21:49','Approved by manager'),(28,6,'2009','2025-10-23 11:06:52','Completed'),(29,5,'2009','2025-10-23 11:06:52','Completed'),(30,4,'2009','2025-10-23 11:06:52','Completed'),(31,3,'2009','2025-10-23 11:06:52','Completed'),(32,2,'2009','2025-10-23 11:06:52','Completed');
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
  PRIMARY KEY (`sale_id`),
  KEY `fk_sale_customer1_idx` (`customer_id`),
  KEY `fk_sale_employee1_idx` (`cashier`),
  KEY `fk_sale_employee2_idx` (`manager`),
  CONSTRAINT `fk_sale_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_sale_employee1` FOREIGN KEY (`cashier`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `fk_sale_employee2` FOREIGN KEY (`manager`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,1,'2025-10-21 14:37:57',1,13),(2,1,'2025-10-21 14:38:59',1,13),(3,23,'2025-10-23 10:49:15',6,13),(4,24,'2025-10-23 10:50:27',5,13),(5,25,'2025-10-23 10:51:44',5,13),(6,26,'2025-10-23 10:54:27',7,13),(7,27,'2025-10-24 03:44:38',7,13),(8,28,'2025-10-24 03:57:22',4,13),(9,29,'2025-10-24 03:58:21',1,13),(10,30,'2025-10-24 04:00:44',7,13),(11,31,'2025-10-24 10:23:16',6,13),(12,32,'2025-10-24 10:51:34',1,13);
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
  PRIMARY KEY (`sale_detail_id`),
  KEY `fk_sale_details_sale1_idx` (`sale_id`),
  KEY `fk_sale_details_product1_idx` (`product_id`),
  CONSTRAINT `fk_sale_details_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_sale_details_sale1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_details`
--

LOCK TABLES `sale_details` WRITE;
/*!40000 ALTER TABLE `sale_details` DISABLE KEYS */;
INSERT INTO `sale_details` VALUES (1,1,1,1),(2,1,2,1),(3,2,6,1),(4,2,5,1),(5,2,10,1),(6,2,11,2),(7,3,25,1),(8,4,7,3),(9,5,6,1),(10,5,15,1),(11,5,36,1),(12,6,7,5),(13,6,36,1),(14,7,2,1),(15,7,7,1),(16,7,14,1),(17,8,6,1),(18,8,11,1),(19,8,14,1),(20,9,31,1),(21,9,34,1),(22,9,28,1),(23,10,10,1),(24,10,7,1),(25,10,24,1),(26,10,57,1),(27,11,4,1),(28,12,4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5049 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_payment_type`
--

LOCK TABLES `sale_payment_type` WRITE;
/*!40000 ALTER TABLE `sale_payment_type` DISABLE KEYS */;
INSERT INTO `sale_payment_type` VALUES (5037,1,'CASH','TXN-1761057477865'),(5038,2,'EWP','TXN-1761057539713'),(5039,3,'EWP','TXN-1761216555967'),(5040,4,'BT','TXN-1761216627553'),(5041,5,'CC','TXN-1761216704769'),(5042,6,'CASH','TXN-1761216867813'),(5043,7,'CASH','TXN-1761277478762'),(5044,8,'CC','TXN-1761278242212'),(5045,9,'BT','TXN-1761278301203'),(5046,10,'EWP','TXN-1761278444156'),(5047,11,'CASH','TXN-1761301396597'),(5048,12,'DC','TXN-1761303094032');
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
INSERT INTO `status` VALUES ('0001','Active','EMPLSTAT'),('0002','Probationary','EMPLSTAT'),('0003','Part-Time','EMPLSTAT'),('0004','Full-Time','EMPLSTAT'),('0005','Terminated','EMPLSTAT'),('0006','Resigned','EMPLSTAT'),('0007','Retired','EMPLSTAT'),('1001','Present','ATTNSTAT'),('1002','Leave of Absence','ATTNSTAT'),('1003','Suspended','ATTNSTAT'),('1004','Furloughed','ATTNSTAT'),('1005','Medical Leave','ATTNSTAT'),('1006','Parental Leave','ATTNSTAT'),('2001','Requested','SLRTSTAT'),('2002','Approved','SLRTSTAT'),('2003','Rejected','SLRTSTAT'),('2004','Pending','SLRTSTAT'),('2005','Received','SLRTSTAT'),('2006','In Process','SLRTSTAT'),('2007','Refunded','SLRTSTAT'),('2008','Exchanged','SLRTSTAT'),('2009','Completed','SLRTSTAT'),('2010','Cancelled','SLRTSTAT'),('2011','Resolved','SLRTSTAT');
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
INSERT INTO `status_reference_code` VALUES ('ATTNSTAT','Attendance Status'),('EMPLSTAT','Employee Status'),('SLRTSTAT','Sales Return Status');
/*!40000 ALTER TABLE `status_reference_code` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Pedal Power Distributors'),(2,'Velocity Bike Parts Supply'),(3,'SpinTech Bicycle Solutions'),(4,'Trailblazer Cycle Wholesale'),(5,'GearUp Components and Accesories');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_address`
--

LOCK TABLES `supplier_address` WRITE;
/*!40000 ALTER TABLE `supplier_address` DISABLE KEYS */;
INSERT INTO `supplier_address` VALUES (1,5,'Philippines','9200','Lanao del Norte','Iligan City','Barangay Pala-o','789 Crankset Road'),(2,3,'Philippines','7000','Zamboanga del Sur','Zamboanga City','Barangay Bulua','555 Pedal Drive'),(3,4,'Philippines','8600','Agusan del Norte','Butuan City','Barangay Banago','101 Gearshift Blvd.'),(4,1,'Philippines','8000','Davao del Sur','Davao City','Barangay San Isidro','123 Chainring St.'),(5,2,'Philippines','9000','Misamis Oriental','Cagayan de Oro','Barangay Kauswagan','456 Speed Avenue');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_contact`
--

LOCK TABLES `supplier_contact` WRITE;
/*!40000 ALTER TABLE `supplier_contact` DISABLE KEYS */;
INSERT INTO `supplier_contact` VALUES (1,'MOBILENO',1,'09178886916','Y','Y'),(2,'EMAILADD',1,'pedalpowerdistributors@example.com','Y','N'),(3,'EMAILADD',2,'velocitybikepartssupply@example.com','Y','N'),(4,'EMAILADD',3,'spintechbicyclesolutions@example.com','Y','N'),(5,'EMAILADD',4,'trailblazercyclewholesale@example.com','Y','N'),(6,'EMAILADD',5,'gearupcomponentsandaccesories@example.com','Y','N'),(9,'MOBILENO',2,'09700000002','Y','Y'),(10,'MOBILENO',3,'09700000003','Y','Y'),(11,'MOBILENO',4,'09700000004','Y','Y'),(12,'MOBILENO',5,'09700000005','Y','Y'),(16,'TELEPHNO',1,'(02) 7000001','Y','N'),(17,'TELEPHNO',2,'(02) 7000002','Y','N'),(18,'TELEPHNO',3,'(02) 7000003','Y','N'),(19,'TELEPHNO',4,'(02) 7000004','Y','N'),(20,'TELEPHNO',5,'(02) 7000005','Y','N'),(23,'FACEBOOK',1,'https://facebook.com/pedalpowerdistributors','Y','N'),(24,'FACEBOOK',2,'https://facebook.com/velocitybikepartssupply','Y','N'),(25,'FACEBOOK',3,'https://facebook.com/spintechbicyclesolutions','Y','N'),(26,'FACEBOOK',4,'https://facebook.com/trailblazercyclewholesale','Y','N'),(27,'FACEBOOK',5,'https://facebook.com/gearupcomponentsandaccesories','Y','N'),(30,'WHATSAPP',1,'+639800000001','Y','N'),(31,'WHATSAPP',2,'+639800000002','Y','N'),(32,'WHATSAPP',3,'+639800000003','Y','N'),(33,'WHATSAPP',4,'+639800000004','Y','N'),(34,'WHATSAPP',5,'+639800000005','Y','N');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,1,'2025-02-01 09:50:00','CASH',6,13),(2,1,'2025-02-11 09:50:00','CASH',6,13),(3,1,'2025-10-23 09:09:46','CASH',6,13),(4,2,'2025-10-23 09:09:46','CASH',6,13),(5,3,'2025-10-23 09:09:46','CASH',6,13),(6,4,'2025-10-23 09:09:46','CASH',6,13),(7,5,'2025-10-23 09:09:46','CASH',6,13),(10,3,'2025-10-23 13:36:38','CASH',6,13),(11,3,'2025-10-23 13:48:28','CASH',6,13),(12,2,'2025-10-24 00:00:00','CASH',6,13),(13,1,'2025-10-24 13:26:33','CASH',1,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_details`
--

LOCK TABLES `supply_details` WRITE;
/*!40000 ALTER TABLE `supply_details` DISABLE KEYS */;
INSERT INTO `supply_details` VALUES (1,1,1,12),(2,1,2,15),(3,1,3,23),(4,1,4,11),(5,1,5,15),(6,1,6,14),(7,1,7,10),(8,1,8,50),(9,1,9,11),(10,1,10,21),(11,1,11,21),(12,1,12,31),(13,1,13,44),(14,1,14,36),(15,1,15,38),(16,1,16,30),(17,1,17,26),(18,1,18,33),(19,1,19,35),(20,1,20,26),(21,1,21,16),(22,1,22,32),(23,1,23,21),(24,1,24,42),(25,1,25,14),(26,1,26,17),(27,1,27,33),(28,1,28,24),(29,1,29,11),(30,1,30,13),(31,1,31,24),(32,1,32,31),(33,1,33,32),(34,1,34,18),(35,1,35,24),(36,1,36,15),(37,1,37,36),(38,1,38,43),(39,1,39,14),(40,1,40,16),(87,3,1,3),(88,2,1,2),(89,3,2,1),(90,2,2,3),(91,3,3,1),(92,2,3,5),(93,3,4,1),(94,2,4,2),(95,3,5,1),(96,2,5,2),(97,4,2,5),(98,4,7,2),(99,4,12,4),(100,4,17,2),(101,4,22,1),(102,5,3,5),(103,5,8,3),(104,5,13,3),(105,5,18,5),(106,5,23,2),(107,6,4,5),(108,6,9,4),(109,6,14,3),(110,6,19,1),(111,6,24,1),(112,7,5,4),(113,7,10,5),(114,7,15,1),(115,7,20,5),(116,7,25,2),(118,10,56,10),(119,11,57,6),(120,12,7,5),(121,13,4,2);
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

-- Dump completed on 2025-10-24 22:45:29
