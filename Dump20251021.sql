CREATE DATABASE  IF NOT EXISTS `dbbicycle_supply` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbbicycle_supply`;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_details`
--

LOCK TABLES `attendance_details` WRITE;
/*!40000 ALTER TABLE `attendance_details` DISABLE KEYS */;
INSERT INTO `attendance_details` VALUES (1,2,'07:45:00','12:00:00','Morning attendance'),(2,2,'12:45:00','17:00:00','Afternoon attendance'),(3,3,'07:35:00','12:05:00','Morning attendance'),(4,3,'12:55:00','17:10:00','Afternoon attendance'),(5,4,'07:49:00','12:01:00','Morning attendance'),(6,4,'12:51:00','17:02:00','Afternoon attendance'),(7,5,'07:56:00','12:01:00','Morning attendance'),(8,5,'12:59:00','17:20:00','Afternoon attendance'),(9,6,'07:47:00','12:02:00','Morning attendance'),(10,6,'12:55:00','17:10:00','Afternoon attendance'),(11,8,'07:53:00','12:05:00','Morning attendance'),(12,8,'12:58:00','17:01:00','Afternoon attendance'),(13,9,'07:25:00','12:00:00','Morning attendance'),(14,9,'12:39:00','17:03:00','Afternoon attendance'),(15,10,'07:46:00','12:14:00','Morning attendance'),(16,10,'12:58:00','17:08:00','Afternoon attendance'),(17,11,'07:49:00','12:01:00','Morning attendance'),(18,11,'12:49:00','17:08:00','Afternoon attendance'),(19,12,'07:51:00','12:10:00','Morning attendance'),(20,12,'12:59:00','17:04:00','Afternoon attendance'),(21,13,'08:00:00','12:01:00','Morning attendance'),(22,13,'12:41:00','17:06:00','Afternoon attendance');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Juan','Dela Cruz','Santos','M'),(2,'Maria','Reyes','Lourdes','F'),(3,'Ricardo','Bautista','Mendoza','M'),(4,'Angela','Garcia','Dimaculangan','F'),(5,'Mark','Santiago','Villanueva','M'),(6,'Camille','Ramos','Dizon','F'),(7,'Jonathan','Cruz','Ramos','M'),(8,'Patricia','Villanueva','Reyes','F'),(9,'Gabriel','Mendoza','Fernandez','M'),(10,'Kristine','Aquino','Soriano','F'),(11,'Michael','Santos','David','M'),(12,'Anne','Gonzales','Francisco','F'),(13,'Joseph','Soriano','Cruz','M'),(14,'Charlene','Pineda','Valenzuela','F'),(15,'Benedict','Ocampo','De Leon','M'),(16,'Alyssa','Navarro','Hernandez','F'),(17,'Patrick','Tan','Ong','M'),(18,'Jennifer','Lim','Go','F'),(19,'Carlo','De Guzman','Manalo','M'),(20,'Sofia','Evangelista','Cruz','F'),(21,'test','test','test','F'),(22,'Ambot','Langaw','Sa','M');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_contact`
--

LOCK TABLES `customer_contact` WRITE;
/*!40000 ALTER TABLE `customer_contact` DISABLE KEYS */;
INSERT INTO `customer_contact` VALUES (1,1,'EMAILADD','juan.delacruz@gmail.com','Y','Y'),(3,2,'MOBILENO','09281234568','Y','Y'),(4,2,'FACEBOOK','https://www.facebook.com/maria.reyes','Y','N'),(5,3,'TELEPHNO','(02) 8123-4567','Y','Y'),(6,4,'MOBILENO','09051234569','Y','Y'),(7,4,'EMAILADD','angela.garcia@gmail.com','Y','N'),(8,5,'WHATSAPP','+639271234570','Y','Y'),(9,6,'MOBILENO','09331234571','Y','Y'),(10,6,'EMAILADD','camille.ramos@gmail.com','Y','N'),(11,7,'FACEBOOK','https://www.facebook.com/jonathan.cruz','Y','Y'),(12,8,'MOBILENO','09561234572','Y','Y'),(13,9,'MOBILENO','09481234573','Y','Y'),(14,9,'TELEPHNO','(02) 8654-7890','Y','N'),(15,10,'EMAILADD','kristine.aquino@gmail.com','Y','Y'),(16,10,'WHATSAPP','+639181234574','Y','N'),(17,11,'MOBILENO','09191234575','Y','Y'),(18,11,'FACEBOOK','https://www.facebook.com/michael.santos','Y','N'),(19,12,'MOBILENO','09771234576','Y','Y'),(20,13,'MOBILENO','09611234577','Y','Y'),(21,14,'MOBILENO','09231234578','Y','Y'),(22,15,'EMAILADD','benedict.ocampo@gmail.com','Y','Y'),(23,16,'MOBILENO','09181234579','Y','Y'),(24,17,'MOBILENO','09291234580','Y','Y'),(25,18,'MOBILENO','09501234581','Y','Y'),(26,19,'WHATSAPP','+639071234582','Y','Y'),(44,1,'MOBILENO','09191234567','Y','Y');
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
INSERT INTO `employee` VALUES (1,'Dianna Claire Marie','Amihan','Cahayag','F','2004-12-16','dcmamihan','$2b$10$nRQrVNqanT2m5fvCsig1pOkT/TyUAYfQQTJdbQTxN.d4QlqqiWohS','0001'),(2,'Elijah Raye Vel','Amihan','Cahayag','M','2004-10-22','ervamihan','$2b$10$rDX2SrhIdPkiBDdGJ30CU.bsL6U2JvEms513kSTlYrViuQRe.mUB.','0001'),(3,'Brandon Boyd','Amihan','Cahayag','M','2004-01-17','bbamihan','$2b$10$Ia5Qi0efC9btB1fH5Kr7GO4Q8ViH5/vgRnHo5Bc/0H5Zl0YP0CwIy','0001'),(4,'Ireneo','Palmero','Dizon','M','1978-03-15','ireneopalmero','bKeu^823','0001'),(5,'Angelo','Palen','Ramos','M','1992-07-22','angelopalen','checNNsw1','0001'),(6,'Menzi','Englatera','Reyes','F','1991-12-03','menzienglatera','cn!ejfiLIcbj','0001'),(7,'Raizel','Oppus','Soriano','F','1996-02-12','raizeloppus','ceb@4icjndso','0001'),(8,'Editha','Quezada','Villanueva','F','1983-06-25','ediquezada','vjijrfi(-+P','0001'),(9,'Geraldy','Toting','Mendoza','M','1979-08-08','gertoting','cvndjfc&%','0001'),(10,'Rustico','Bravo','Santos','M','1977-09-30','rusbravo','bvhfkca\"\'','0001'),(11,'Herald Vann','Alalim',NULL,'M','2004-04-23','hvalalim','feufh%\\\'nd','0001'),(12,'John Herbert','Yncierto',NULL,'M','2004-07-27','jhyncierto','cdf$5&6()','0001'),(13,'Jacqueline','Yncierto',NULL,'F','1981-12-03','jacyncierto','ncjd\"{nsq<>','0001');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendance`
--

LOCK TABLES `employee_attendance` WRITE;
/*!40000 ALTER TABLE `employee_attendance` DISABLE KEYS */;
INSERT INTO `employee_attendance` VALUES (1,1,'2025-03-12','1002'),(2,2,'2025-03-13','1001'),(3,3,'2025-03-12','1001'),(4,4,'2025-03-12','1001'),(5,5,'2025-03-12','1001'),(6,6,'2025-03-12','1001'),(7,7,'2025-03-12','1001'),(8,8,'2025-03-12','1001'),(9,9,'2025-03-12','1001'),(10,10,'2025-03-12','1001'),(11,11,'2025-03-12','1001'),(12,12,'2025-03-12','1001'),(13,13,'2025-03-12','1001');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_contact`
--

LOCK TABLES `employee_contact` WRITE;
/*!40000 ALTER TABLE `employee_contact` DISABLE KEYS */;
INSERT INTO `employee_contact` VALUES (1,'EMAILADD',1,'diannaclairemarie.amihan@gmail.com','Y','Y'),(2,'EMAILADD',11,'heraldvann.alalim@gmail.com','Y','N'),(3,'EMAILADD',12,'johnherbert.yncierto@gmail.com','Y','N'),(4,'MOBILENO',1,'09606026075','Y','Y'),(5,'MOBILENO',2,'09606026072','Y','Y'),(6,'TELEPHNO',4,'(02) 1272-0905','Y','Y'),(7,'FACEBOOK',7,'https://www.facebook.com/jolensbicycleshop','Y','Y'),(8,'WHATSAPP',9,'+63 917 123 4567','N','N'),(9,'MOBILENO',3,'09623608843','Y','Y'),(10,'WHATSAPP',5,'+63 123 456 7890','N','N'),(11,'MOBILENO',7,'09876543211','Y','N'),(12,'FACEBOOK',11,'https://www.facebook.com/heralalalim','Y','Y'),(13,'FACEBOOK',2,'https://www.facebook.com/elijahamihan','Y','N'),(14,'EMAILADD',3,'brandonboyd.amihan@gmail.com','Y','Y'),(15,'MOBILENO',7,'09987654322','Y','Y'),(16,'TELEPHNO',6,'(02) 8267-0902','Y','Y'),(17,'EMAILADD',10,'rusticobravo@gmail.com','Y','N'),(18,'TELEPHNO',8,'(02) 9292-0978','Y','Y'),(19,'EMAILADD',4,'ireneopalmero@gmail.com','Y','Y'),(20,'FACEBOOK',6,'https://www.facebook.com/menzienglatera','Y','Y');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role`
--

LOCK TABLES `employee_role` WRITE;
/*!40000 ALTER TABLE `employee_role` DISABLE KEYS */;
INSERT INTO `employee_role` VALUES (4,4,'BIKEMECH','Bicycle Repair'),(5,5,'SALEATTN',NULL),(6,6,'CASHIER','Cashing in/out money'),(7,7,'CASHIER','Cashing in/out money'),(8,8,'CASHIER','Cashing in/out money'),(9,9,'BIKEMECH','Frame Welding'),(10,10,'BIKEMECH','Wheel & Tire Specialist'),(15,6,'SALEATTN',NULL),(16,8,'SALEATTN',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role_history`
--

LOCK TABLES `employee_role_history` WRITE;
/*!40000 ALTER TABLE `employee_role_history` DISABLE KEYS */;
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
  `barcode` varchar(45) DEFAULT NULL,
  `category_code` char(8) NOT NULL,
  `brand_id` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `reorder_level` int NOT NULL DEFAULT '3',
  `weight` decimal(10,2) DEFAULT NULL COMMENT 'In lbs',
  `size` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `warranty_period` varchar(45) DEFAULT NULL,
  `image_url` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_category1_idx` (`category_code`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_code`) REFERENCES `category` (`category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Shimano Deore M6100 Groupset',NULL,NULL,'BIKECOMP',9,12500.00,3,NULL,NULL,NULL,NULL,NULL,'https://images.performancebike.com/cdn-cgi/image/f=auto,width=950/images/large/bikes/shimano/shimandeoregrp1-bdl_3.jpg'),(2,'SRAM GX Eagle 12-Speed Chain',NULL,NULL,'BIKECOMP',10,2800.00,5,NULL,NULL,NULL,NULL,NULL,'https://media.tweekscycles.com/media/catalog/product/cache/938df1aa6fd582849f667e6a2d491158/s/r/srmchpc8030011_d6_feb22.jpg'),(3,'Polygon Cascade 4 Mountain Bike',NULL,NULL,'BIKECOMP',11,25000.00,3,NULL,NULL,NULL,NULL,NULL,'https://media.polygonbikes.com/wp-content/uploads/2022/09/13150556/MY22-CASCADE-FOUR-RR-768x576.png'),(4,'Bell Super DH MIPS Helmet',NULL,NULL,'CYCAPPRL',13,9800.00,4,NULL,NULL,NULL,NULL,NULL,'https://winstanleysbikes.co.uk/media/catalog/product/b/e/bell-super-dh-spherical-mountain-bike-helmet-prime-matte-blue-crimson-right.jpg'),(5,'MOB Alloy Flat Pedals',NULL,NULL,'BIKECOMP',14,1200.00,3,NULL,NULL,NULL,NULL,NULL,'https://ph-test-11.slatic.net/p/7437cf58236c05bb03e9533739396e91.png'),(6,'Ranking T9 Cycling Glasses',NULL,NULL,'CYCACCES',15,1500.00,3,NULL,NULL,NULL,NULL,NULL,'https://rockbrossport.co.uk/cdn/shop/files/ROCKBROS-Cycling-Glasses-Polarised-Sports-Glasses-UV400-Protection_1.jpg?v=1713942669&width=2048'),(7,'Stan13 Bike Chain Lube',NULL,NULL,'MAINTREP',16,350.00,5,NULL,NULL,NULL,NULL,NULL,'https://stans.com/cdn/shop/files/LC0002STAN_SBIOBASEDDRYCHAINLUBE_120ML-FRONT_grande.jpg?v=1724255320'),(8,'Campagnolo Super Record 12-Speed Groupset',NULL,NULL,'BIKECOMP',18,45000.00,3,NULL,NULL,NULL,NULL,NULL,'https://images.bike24.com/i/mb/8e/97/26/280810-00-d-565613.jpg'),(9,'Tektro HD-M275 Hydraulic Disc Brakes',NULL,NULL,'BIKECOMP',20,3500.00,3,NULL,NULL,NULL,NULL,NULL,'https://sportandleisure.com/cdn/shop/products/57_fcc110d2-3a9c-42ad-8741-db83ff20bfac_1000x.jpg?v=1686846239'),(10,'KMC X11 11-Speed Chain',NULL,NULL,'BIKECOMP',19,1500.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.bike-discount.de/media/image/2e/f4/8a/KMC-X11-11-fach-Kette-Master.jpg'),(11,'Maxxis High Roller II 27.5” Tire',NULL,NULL,'BIKECOMP',21,2800.00,3,NULL,NULL,NULL,NULL,NULL,'https://content.competitivecyclist.com/images/items/large/MXX/MXX003T/BK.jpg'),(12,'Fox 36 Factory Series Suspension Fork',NULL,NULL,'BIKECOMP',17,55000.00,3,NULL,NULL,NULL,NULL,NULL,'https://driftbikes.com.au/cdn/shop/files/Fox_36_Float_E_Optimized_Performance_Fork_2023_Grip_3_Pos_Matte_Black.webp?v=1701812945&width=1000'),(13,'Rurok Cordillera Enduro Bike Frame',NULL,NULL,'BIKECOMP',22,65000.00,3,NULL,NULL,NULL,NULL,NULL,'https://static.wixstatic.com/media/b322f6_8284271da2de482ba78fd5c2d92c0f34~mv2_d_2500_1700_s_2.jpg/v1/fill/w_980,h_666,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/b322f6_8284271da2de482ba78fd5c2d92c0f34~mv2_d_2500_1700_s_2.jpg'),(14,'Colony Bike Handlebar Grips',NULL,NULL,'CYCACCES',23,800.00,3,NULL,NULL,NULL,NULL,NULL,'https://colonybmx.com.au/news/wp-content/uploads/2013/06/muchroom-green-storm-grips.jpg'),(15,'Shimano XT M8100 12-Speed Cassette',NULL,NULL,'BIKECOMP',9,8500.00,3,NULL,NULL,NULL,NULL,NULL,'https://images.bike24.com/i/mb/6c/31/03/324206-02-d-676202.jpg'),(16,'SRAM Level TL Hydraulic Disc Brakes',NULL,NULL,'BIKECOMP',10,6500.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.sram.com/globalassets/image-hierarchy/sram-product-root-images/brakes---disc/brakes---disc/db-level-t-a1/leveltleverfront.jpg?w=1000'),(17,'Campagnolo Bora WTO 45 Carbon Wheelset',NULL,NULL,'BIKECOMP',18,120000.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.campagnolo.com/dw/image/v2/BJSG_PRD/on/demandware.static/-/Sites-cmp-master-catalog/default/dw3f95ef67/images/hi-res-1/WWRBORAULTRAWTO45C23DB.standard.5.H1.jpg?sw=885&q=85'),(18,'Tektro R539 Road Brake Calipers',NULL,NULL,'BIKECOMP',20,2500.00,3,NULL,NULL,NULL,NULL,NULL,'https://m.media-amazon.com/images/I/614jqD9zOQL._UF894,1000_QL80_.jpg'),(19,'KMC X9 9-Speed Chain',NULL,NULL,'BIKECOMP',19,950.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.bike-discount.de/media/image/23/88/92/KMC-X9-9-fach-Kette-Master.jpg'),(20,'Maxxis Minion DHF 29” Tire',NULL,NULL,'BIKECOMP',21,3200.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.christysports.com/dw/image/v2/BGBB_PRD/on/demandware.static/-/Sites-master-winter/default/dw110652f7/1008961_020_1.jpg?sw=800&sh=800'),(21,'Fox Racing Speedframe Pro Helmet',NULL,NULL,'CYCAPPRL',17,12000.00,3,NULL,NULL,NULL,NULL,NULL,'https://rox.com.ph/cdn/shop/files/1000502229_01.jpg?v=1726543243&width=1080'),(22,'Rurok Kanlaon Hardtail MTB Frame',NULL,NULL,'BIKECOMP',22,35000.00,3,NULL,NULL,NULL,NULL,NULL,'https://static.wixstatic.com/media/b322f6_84b362f5d0a24610ba4dd7045eb14c02~mv2_d_2500_1700_s_2.jpg/v1/fill/w_980,h_666,al_c,q_85,usm_0.66_1.00_0.01,enc_avif,quality_auto/b322f6_84b362f5d0a24610ba4dd7045eb14c02~mv2_d_2500_1700_s_2.jpg'),(23,'Colony BMX Pedals',NULL,NULL,'BIKECOMP',23,1400.00,3,NULL,NULL,NULL,NULL,NULL,'https://colonybmx.com.au/news/wp-content/uploads/2013/06/fantastic-pedals-copper.jpg'),(24,'MOB Bike Maintenance Kit',NULL,NULL,'MAINTREP',14,750.00,3,NULL,NULL,NULL,NULL,NULL,'https://m.media-amazon.com/images/I/71an8tEb-DL._AC_UF894,1000_QL80_.jpg'),(25,'Colnago Aero Race Cycling Jersey',NULL,NULL,'CYCAPPRL',1,6500.00,3,NULL,NULL,NULL,NULL,NULL,'https://my-test-11.slatic.net/p/2079ff2f84fe82ebcba8a3e667853a76.jpg'),(26,'Colnago Carbon Fiber Bottle Cage',NULL,NULL,'CYCACCES',1,2000.00,3,NULL,NULL,NULL,NULL,NULL,'https://cdn11.bigcommerce.com/s-cw4c0mbnss/images/stencil/1280x1280/products/163/448/1PRB.CRB.000.000.00SL__21803.1577978661.jpg?c=1'),(27,'Pinarello Dogma F12 Carbon Saddle',NULL,NULL,'CYCACCES',2,12000.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.cicliserino.com/wp-content/uploads/2020/02/PINARELLO-DOGMA-F12.png'),(28,'Pinarello Padded Cycling Bib Shorts',NULL,NULL,'CYCAPPRL',2,8500.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.rdrbikes.it/24487-home_default/pinarello-bibshort-dogma-black.jpg'),(29,'Specialized S-Works Evade II Helmet',NULL,NULL,'CYCAPPRL',3,15000.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.pro-mstore.com/800/61882875/1632999694599/CASCO-SPECIALIZED-SWORKS-EVADE-II-MIPS.jpg'),(30,'Specialized Purist Water Bottle',NULL,NULL,'CYCACCES',3,900.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.balfesbikes.co.uk/images/products/4/44/44119-232_btl_purist-insulated-chromatek-wg-btl-trans-camo-23-oz_hero.jpg?width=1998&height=1998&quality=85&mode=pad&format=webp&bgcolor=ffffff'),(31,'Trek Circuit Softshell Cycling Gloves',NULL,NULL,'CYCAPPRL',4,2500.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.teamcycles.com/images/products/3/31/31057_528_1.webp?width=1998&height=1998&quality=85&mode=pad&format=webp&bgcolor=ffffff'),(32,'Trek Blendr Universal Handlebar Mount',NULL,NULL,'CYCACCES',4,1800.00,3,NULL,NULL,NULL,NULL,NULL,'https://trekstore.lt/23596-large_default/stem-part-bontrager-blendr-universal-light-mount.jpg'),(33,'Cervélo Carbon Seatpost',NULL,NULL,'CYCACCES',5,5500.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.backcountry.com/images/items/large/CVL/CVL1WUH/BLA.jpg'),(34,'Cervélo Cycling Arm Warmers',NULL,NULL,'CYCAPPRL',5,2000.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.bikeandrun.co.uk/images/product/196115141-143_CER_ArmWarmers_8b765f847d1427894761.jpg'),(35,'BMC Aero Race Cycling Socks',NULL,NULL,'CYCAPPRL',6,1500.00,3,NULL,NULL,NULL,NULL,NULL,'https://content.competitivecyclist.com/images/items/large/PLZ/PLZ1376/TEA.jpg'),(36,'BMC Pro Chain Cleaner Kit',NULL,NULL,'MAINTREP',6,1200.00,3,NULL,NULL,NULL,NULL,NULL,'https://www.bmc-air-filter-shop.com/070@WA-200-500/BMC-Washing-Kit-oil-spray-%26-cleaner.jpg'),(37,'Giant Control Tower 3 Floor Pump',NULL,NULL,'MAINTREP',7,2200.00,3,NULL,NULL,NULL,NULL,NULL,'https://images.performancebike.com/images/large/bikes/giant/610000079.jpg'),(38,'Giant Recon HL800 Bike Light',NULL,NULL,'CYCACCES',7,3500.00,3,NULL,NULL,NULL,NULL,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBCwwYnqqn7imqUHZULoeXI09Sdl04Jcp52Q&s'),(39,'Canyon Signature Pro Road Gloves',NULL,NULL,'CYCAPPRL',8,2800.00,3,NULL,NULL,NULL,NULL,NULL,'https://cdn.prod.website-files.com/668edfdb81f8044d1658c7a6/6695c013f94d1585609baa70_main-9101000-Signature-Pro-Short-Finger-gloves-gy.webp'),(40,'Canyon Bike Care Cleaning Kit',NULL,NULL,'MAINTREP',8,1800.00,3,NULL,NULL,NULL,NULL,NULL,'https://images.bike24.com/i/mb/08/39/9e/muc-off-bike-care-essentials-kit-2-1381502.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_and_replacement`
--

LOCK TABLES `return_and_replacement` WRITE;
/*!40000 ALTER TABLE `return_and_replacement` DISABLE KEYS */;
INSERT INTO `return_and_replacement` VALUES (1,2031,'2001','2025-02-25 10:30:00','Request received'),(2,2031,'2004','2025-02-25 11:00:00','Pending validation'),(3,2031,'2006','2025-02-25 11:20:00','In process by concerned department'),(4,2031,'2002','2025-02-25 13:30:00','Approved by manager'),(5,2031,'2009','2025-02-25 13:35:00','Replacement processed'),(6,2031,'2009','2025-02-25 14:00:00','Replacement request resolved');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,1,'2025-10-21 14:37:57',1,13),(2,1,'2025-10-21 14:38:59',1,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_details`
--

LOCK TABLES `sale_details` WRITE;
/*!40000 ALTER TABLE `sale_details` DISABLE KEYS */;
INSERT INTO `sale_details` VALUES (1,1,1,1),(2,1,2,1),(3,2,6,1),(4,2,5,1),(5,2,10,1),(6,2,11,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=5039 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_payment_type`
--

LOCK TABLES `sale_payment_type` WRITE;
/*!40000 ALTER TABLE `sale_payment_type` DISABLE KEYS */;
INSERT INTO `sale_payment_type` VALUES (5037,1,'CASH','TXN-1761057477865'),(5038,2,'EWP','TXN-1761057539713');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockout`
--

LOCK TABLES `stockout` WRITE;
/*!40000 ALTER TABLE `stockout` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_contact`
--

LOCK TABLES `supplier_contact` WRITE;
/*!40000 ALTER TABLE `supplier_contact` DISABLE KEYS */;
INSERT INTO `supplier_contact` VALUES (1,'MOBILENO',1,'09178886916','Y','Y');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,1,'2025-02-01 09:50:00','CASH',6,13),(2,1,'2025-02-11 09:50:00','CASH',6,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply_details`
--

LOCK TABLES `supply_details` WRITE;
/*!40000 ALTER TABLE `supply_details` DISABLE KEYS */;
INSERT INTO `supply_details` VALUES (1,1,1,12),(2,1,2,15),(3,1,3,23),(4,1,4,11),(5,1,5,15),(6,1,6,14),(7,1,7,10),(8,1,8,50),(9,1,9,11),(10,1,10,21),(11,1,11,21),(12,1,12,31),(13,1,13,44),(14,1,14,36),(15,1,15,38),(16,1,16,30),(17,1,17,26),(18,1,18,33),(19,1,19,35),(20,1,20,26),(21,1,21,16),(22,1,22,32),(23,1,23,21),(24,1,24,42),(25,1,25,14),(26,1,26,17),(27,1,27,33),(28,1,28,24),(29,1,29,11),(30,1,30,13),(31,1,31,24),(32,1,32,31),(33,1,33,32),(34,1,34,18),(35,1,35,24),(36,1,36,15),(37,1,37,36),(38,1,38,43),(39,1,39,14),(40,1,40,16);
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

-- Dump completed on 2025-10-21 22:58:57
