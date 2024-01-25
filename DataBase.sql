-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: gaminggears
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('gajendra','12345678'),('Ganesh','12345678'),('swapnil','12345678');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `askexpert`
--

DROP TABLE IF EXISTS `askexpert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `askexpert` (
  `queid` int NOT NULL AUTO_INCREMENT,
  `que` varchar(255) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `custid` int DEFAULT NULL,
  `expid` int DEFAULT NULL,
  PRIMARY KEY (`queid`),
  KEY `FK5c7rqcyix275wn018j4t3113c` (`custid`),
  KEY `FKm0ke20xsmcnwryfd9rrjy5gxc` (`expid`),
  CONSTRAINT `FK5c7rqcyix275wn018j4t3113c` FOREIGN KEY (`custid`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FKm0ke20xsmcnwryfd9rrjy5gxc` FOREIGN KEY (`expid`) REFERENCES `expert` (`expid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `askexpert`
--

LOCK TABLES `askexpert` WRITE;
/*!40000 ALTER TABLE `askexpert` DISABLE KEYS */;
INSERT INTO `askexpert` VALUES (5,'21121321','yet to resolved',0,2,3),(6,'gaming console under 20000 Rs','ps5',1,4,2),(7,'which is better ps4 or ps5 ','ps5 is much better',2,25,2),(8,'which is better ps4 or ps5 ','PS 5 is much more better than ps4',2,5,2),(12,'hello there','ps5',0,2,25),(13,'which is better ps4 or ps56','yet to resolved',0,2,25),(14,'which is better ps4 or ps57','yet to resolved',0,2,25),(15,'which is better ps4 or ps5 ','yet to resolved',0,2,25),(16,'which is better ps4 or ps5 ','PS4',2,26,2),(17,'which gaming console under 20000 is best','Sony ',2,26,2),(18,'pc','yet to resolved',0,27,1),(19,'pc','yet to resolved',0,27,1),(20,'Hey Swapnil suggest me a good pc under 200000','Try HP Horizon 200',2,2,26),(21,'which is better ps4 or ps5 ','yet to resolved',1,2,26),(22,'which is better ps4 or ps5 ','PS5',2,2,26),(23,'which is better ps4 or ps5 ','PS',2,2,26),(28,'Hey Anand, I Want to purchase a gaming console under 15000 RS what are the best options.','Try Tony XYZ 300 . This in demand high quality in lowest price',2,5,2),(30,'which is the best gaming mouse under 500 Rs.','ZEBRONICS ZEB-TRANSFORMER Mouse ZEBRONICS ZEB-TRANSFORMER-M Wired Optical Gaming Mouse (USB 3.0, Black)',2,5,2),(31,'Suggest a monitor for gaming purpose under 30000','yet to resolved',0,2,25),(32,'Which is Better Ryzen 7 or Intel Core i7','Ry...',2,5,29),(33,'which is better ps4 or ps5 ','ps5 is much better',2,2,5);
/*!40000 ALTER TABLE `askexpert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brandid` int NOT NULL,
  `brandname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1111,'AMD'),(1122,'intel'),(1133,'Zebronics'),(1144,'Arctic Fox'),(1155,'HP'),(1166,'Portronics'),(1177,'TOSHIBA'),(1188,'WD'),(1199,'G.Skill'),(1200,'XPG ADATA'),(1201,'Asus'),(1202,'MSI'),(1203,'NVIDIA'),(1204,'AMD'),(1205,'ATEKT'),(1206,'STORITE'),(1207,'Artis'),(1208,'LG'),(1209,'Dell'),(1210,'GALAX'),(1211,'Logitech'),(1212,'Xbox'),(1213,'Sony');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartid` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `qty` int NOT NULL,
  `custid` int DEFAULT NULL,
  `proid` int DEFAULT NULL,
  PRIMARY KEY (`cartid`),
  KEY `FKsigf5brtgghasucorb3kaqxda` (`custid`),
  KEY `FKfd8cq8925lj84l39uek1s9kce` (`proid`),
  CONSTRAINT `FKfd8cq8925lj84l39uek1s9kce` FOREIGN KEY (`proid`) REFERENCES `product` (`proid`),
  CONSTRAINT `FKsigf5brtgghasucorb3kaqxda` FOREIGN KEY (`custid`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `catid` int NOT NULL,
  `catname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (213,'Processor'),(214,'Mouse'),(215,'Keybord'),(216,'SSD'),(217,'HDD'),(218,'Ram'),(219,'MotherBoard'),(220,'GraphicsCard'),(221,'coolerFan'),(222,'PSU'),(223,'Moniter'),(224,'CPUcabinat'),(225,'Controller'),(226,'GamingConsole');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `is_expert` int NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `mob_number` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `user_status` int NOT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `UKdwk6cx0afu8bs9o4t536v1j5v` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'yavatmal','asbalki@gmail.com','Anand',0,'Balki',NULL,'12345',0),(2,'yavatmal','asb@gmail.com','Anand',0,'Balki',NULL,'12345',0),(3,'nagpur','champak@gmail.com','Champak',0,'Gadha',NULL,'12345',0),(4,'wani','gsbalki@gmail.com','Ganesh',0,'Balki',NULL,'12345',0),(5,'sdd','gsb@gmail.com','122',0,'212',NULL,'12345678',0),(6,'vcvcvc','cvcv@jxh.com','122',0,'cvcv',NULL,'cvvc',0),(7,'xcxx','ff@gmail.com','ssd',0,'fd',NULL,'1234',0),(8,'yavatmal','aasb@gmail.com','Anand',0,'Balki',NULL,'ss',0),(9,'yavatmal','basb@gmail.com','Anand',0,'Balki',NULL,'12',0),(10,'yavatmal','absb@gmail.com','Anand',0,'Balki',NULL,'asasasas',0),(11,'yavatmal','aaabsb@gmail.com','Anand',0,'Balki',NULL,'asasasas',0),(12,'yavatmal','aaaaabsb@gmail.com','Anand',0,'Balki',NULL,'asasasas',0),(14,'mumbai','jetha@gmail.com','jethalal',0,'gadda',NULL,'12345678',0),(18,'formData','formData.email',' formData.fname',0,'formData.lname',NULL,'formData.pass',0),(20,'yavatmal','aaaaasb@gmail.com','Anand',0,'Balki',NULL,'aaaaaaaa',0),(21,'yavatmal','abbbbsb@gmail.com','Anand',0,'Balki',NULL,'12345678',0),(22,'yavatmal','asbll@gmail.com','Anand',0,'Balki',NULL,'lllllll',0),(23,'yavatmal','azxcv@gmail.com','1dfdf',0,'ddd',NULL,'asdcxzfv',0),(24,'yavatmal','ganesh@gmail.com','Ganesh',0,'Balki',NULL,'1234567',0),(25,'pune','sam@gmail.com','Sam',0,'Bilings',NULL,'12345',0),(26,'Pune','swapnilsk1516@gmail.com','Swapnil',0,'kakade',NULL,'12345',0),(27,'mumbai','sk1516@gmail.com','Swapnil',0,'kakade',NULL,'123456',0),(28,'wani','rm@gmail.com','RAM',0,'MRl',NULL,'12345678',0),(29,'Rankar Nagar,Wardha','rk@gmail.com','Ram',0,'Kumar',NULL,'12345678',0),(30,'at.mangrul tapo maregaon yavatmal','ganesha@yahoo.com','gana',0,'balki',NULL,'12345678',0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `disid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `disname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `licence` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `storename` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`disid`),
  UNIQUE KEY `UKa004plwmnsvwfo4jr2w96huvg` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=545668 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES (545646,'punjab','Preet Singh','uttf@gmail.com','uhhg6512hk','6542132316','12345','VedaTrans',1),(545660,'at.mangrul tapo maregaon yavatmal','Jethalal','ganesh@yahoo.com','bapuji','07875829874','12345','Gada Electronics',1),(545664,'Pune','skk','swapnilsk1516@gmail.com','h12345','09172167162','123','kk',1),(545666,'Mangrul','Prakash','peka@gmail.com','122456','9865787485','12345678','Paiku Electronics',1),(545667,'Nagpur','Akshay','ak@gmail.com','k5545665l','7875748595','12345678','AkkiElectronics',0);
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expert`
--

DROP TABLE IF EXISTS `expert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expert` (
  `expid` int NOT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `commission` double NOT NULL,
  `experience` int NOT NULL,
  `expname` varchar(255) DEFAULT NULL,
  `sells` int NOT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`expid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expert`
--

LOCK TABLES `expert` WRITE;
/*!40000 ALTER TABLE `expert` DISABLE KEYS */;
INSERT INTO `expert` VALUES (1,'National',0,1,'Ganesh',0,'java',1),(2,'National',0,1,'Anand',2,'java',1),(3,'national',0,2,'ChampMaster',0,NULL,1),(5,'national',0,2,'GSB',1,'Computer',1),(25,'national',0,10,'Sam',0,NULL,1),(26,'national',0,10,'Swapnil',3,NULL,1),(27,'national',0,23,'Swapnil',0,NULL,0),(29,'national',0,2,'Tony Stark',1,NULL,1),(30,'national',0,12,'Captain',0,'Computer',0);
/*!40000 ALTER TABLE `expert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `odate` varchar(255) DEFAULT NULL,
  `paymentmode` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `status` int NOT NULL,
  `transactionid` varchar(255) DEFAULT NULL,
  `custid` int DEFAULT NULL,
  `proid` int DEFAULT NULL,
  `deliverydate` varchar(255) DEFAULT NULL,
  `mobileno` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKaldxjnsvq0p51da5ta9nbu8ys` (`custid`),
  KEY `FKnur3aitbs9j4r1190wtioirni` (`proid`),
  CONSTRAINT `FKaldxjnsvq0p51da5ta9nbu8ys` FOREIGN KEY (`custid`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `FKnur3aitbs9j4r1190wtioirni` FOREIGN KEY (`proid`) REFERENCES `product` (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Anand Balki, 07875725143, Gokhale Pune Maharashtra 411016','2023-08-31T18:26:21.695089100','COD',3999,0,'22023-08-31T18:26:21.695089100',2,10048,NULL,NULL,NULL),(2,'Anand Balki, 07875725143, Gokhale Pune Maharashtra 411016','2023-08-31T18:30:55.552092700','COD',187976,0,'22023-08-31T18:30:55.552092700',2,1025,NULL,NULL,NULL),(3,'Anand Balki, 07875725143, Gokhale Pune Maharashtra 411016','2023-08-31T18:33:26.936283700','COD',234970,0,'22023-08-31T18:33:26.936283700',2,1025,NULL,NULL,NULL),(4,'Ganesh Balki, 07875748595, Gokhale Pune Maharashtra 411016','2023-08-31T23:10:22.147667','Online',104970,0,'52023-08-31T23:10:22.148162100',5,1048,NULL,NULL,NULL),(5,'Ganesh Balki, 07875748595, Gokhale Pune Maharashtra 411016','2023-08-31T23:15:53.564854800','Online',140982,0,'52023-08-31T23:15:53.564854800',5,1025,NULL,NULL,NULL),(6,'Ganesh Balki, 07875748595, Gokhale123 Pune Maharashtra 411016','2023-08-31T23:18:15.540955300','Online',46994,0,'52023-08-31T23:18:15.541554200',5,1025,NULL,NULL,NULL),(7,'Ganesh Balki, 07875748595, zxzxz Pune Maharashtra 411016','2023-08-31T23:25:06.912117900','Online',140982,0,'52023-08-31T23:25:06.912117900',5,1025,NULL,NULL,NULL),(8,'Ganesh Balki, 07875748595, zxzxz Pune Maharashtra 411016','2023-08-31T23:30:10.076378300','COD',187976,0,'52023-08-31T23:30:10.076378300',5,1025,NULL,NULL,NULL),(9,'Ganesh Balki, 07875748595, Gokhale Pune Maharashtra 411016','2023-08-31T23:31:42.193749500','Online',46994,0,'52023-08-31T23:31:42.193749500',5,1025,NULL,NULL,NULL),(10,'gana balki, 07875829874, zxzxz Pune Maharashtra 411016','2023-08-31T23:34:14.309065500','Online',6990,0,'52023-08-31T23:34:14.309065500',5,1026,NULL,NULL,NULL),(11,'Ganesh Balki, 07875748595, zxzxz Pune Maharashtra 411016','2023-08-31T23:36:02.800854300','Online',6990,0,'52023-08-31T23:36:02.800854300',5,1026,NULL,NULL,NULL),(12,'Ganesh Balki, 07875748595, Model Colony Pune Maharashtra 411016','2023-09-01T14:38:43.185264400','Online',20970,0,'52023-09-01T14:38:43.186270300',5,1026,NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `proid` int NOT NULL AUTO_INCREMENT,
  `description` varchar(1500) DEFAULT NULL,
  `price` double NOT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `url1` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `url3` varchar(255) DEFAULT NULL,
  `url4` varchar(255) DEFAULT NULL,
  `brandid` int DEFAULT NULL,
  `catid` int DEFAULT NULL,
  `disid` int DEFAULT NULL,
  PRIMARY KEY (`proid`),
  KEY `FKbjg13m30ju2y2g5icqbuycglv` (`brandid`),
  KEY `FKq6hhjex8p6noh29xumcr247oc` (`catid`),
  KEY `FKby7a6b091ykgk1s9t09pg74q5` (`disid`),
  CONSTRAINT `FKbjg13m30ju2y2g5icqbuycglv` FOREIGN KEY (`brandid`) REFERENCES `brand` (`brandid`),
  CONSTRAINT `FKby7a6b091ykgk1s9t09pg74q5` FOREIGN KEY (`disid`) REFERENCES `distributor` (`disid`),
  CONSTRAINT `FKq6hhjex8p6noh29xumcr247oc` FOREIGN KEY (`catid`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=10050 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1019,'HP EX900 M.2 PCIe 3.1 x4 NVMe 3D TLC NAND 500 GB Laptop Internal Solid State Drive (SSD) (2YY44AA#ABC)  (Interface: PCIe NVMe, Form Factor: M.2)',216,'HP EX900 M.2 500 GB','https://shorturl.at/nvEK5','https://shorturl.at/jBIQ0','https://shorturl.at/bwQ24','https://shorturl.at/fgkrP',1155,216,545646),(1025,'Logitech G923 Racing Wheel and Pedals,Dual Clutch, for Motion Controller  (Black, For Xbox, PS2, PS3, PS4, PS5, PC)',46994,'Logitech G923 Motion Controller','https://shorturl.at/aopMN','https://shorturl.at/apG36','https://shorturl.at/wzSW6','https://shorturl.at/pLNSX',1211,225,545646),(1026,'Xbox One Controller with Wireless Adapter For Windows Joystick  (Black, For Xbox One)',6990,'Xbox One Controller Windows Joystick','https://shorturl.at/hHKOX','https://shorturl.at/pzCP1','https://shorturl.at/hlNPS','https://shorturl.at/kOPQ5',1212,225,545646),(1027,'MICROSOFT Xbox Series X 1024 GB  (Black)',49990,'MICROSOFT Xbox Series X 1024 GB','https://shorturl.at/bruC3','https://shorturl.at/frNP3','https://shorturl.at/aftx1','https://shorturl.at/dmoAM',1212,226,545646),(1028,'SONY PlayStation 5 console 825 GB  (NA)',54990,'SONY PlayStation 5 console 825 GB','https://shorturl.at/uBGX0','https://shorturl.at/ekOQT','https://shorturl.at/bMNQW','https://shorturl.at/uBGX0',1213,226,545646),(1042,'HP M27f 27-inches 68.6cm 1920 x 1080 Pixels Eye-Safe Certified Full HD IPS 3-Sided Micro-Edge Monitor, 75Hz, AMD Free Sync with 1xVGA, 2xHDMI 1.4 Ports, 300 nits 2H0N1AA, M27f FHD Monitor Silver',14990,'HP M27f 27-inches Micro-Edge Monitor','http://surl.li/kgpzp','http://surl.li/kgpzw','http://surl.li/kgqae','http://surl.li/kgqan',1155,223,545660),(1048,'Xbox Series S Go all-digital and enjoy disc-free, next-gen gaming with the smallest Xbox console ever made',34990,'Xbox Series S','http://surl.li/kgrov','http://surl.li/kgrpf','http://surl.li/kgrpj','http://surl.li/kgrpo',1212,226,545646),(1051,'AMD 5000 Series Ryzen 7 5700X Desktop Processor 8 cores 16 Threads 36 MB Cache 3.4 GHz Upto 4.6 GHz Socket AM4 500 Series Chipset (100-100000926WOF)',20799,'AMD 5000 Series Ryzen 7 5700X Desktop Processor','http://surl.li/kgryo','http://surl.li/kgryv','http://surl.li/kgrza','http://surl.li/kgrzj',1111,213,545660),(10028,'Intel Core i7-10700K 3.8 GHz Upto 5.1 GHz LGA 1200 Socket 8 Cores 16 Threads 16 MB Smart Cache Desktop Processor  (Silver)',28499,'Intel Core i7 Processor','https://rb.gy/jbybn','https://t.ly/ywHI_','https://t.ly/5Gne5','https://shorturl.ac/7bf46',1122,213,545646),(10029,'amd Ryzen 5 5600X 3.7 GHz Upto 4.6 GHz AM4 Socket 6 Cores 12 Threads Desktop Processor  (Silver)',16848,'amd Ryzen 5 5600X Processor','https://rb.gy/kqfkp','https://rb.gy/twl83','https://rb.gy/12ocm','https://rb.gy/31xe9',1111,213,545646),(10030,'ZEBRONICS ZEB-TRANSFORMER-M Wired Optical Gaming Mouse  (USB 3.0, Black)',399,'ZEBRONICS ZEB-TRANSFORMER Mouse','https://shorturl.ac/7bf4a','https://shorturl.ac/7bf4b','https://shorturl.ac/7bf4d','https://shorturl.ac/7bf4e',1133,214,545646),(10043,'High Quality Gaming Mouse',1002,'Gaming Mouse','https://tinyurl.com/2p9fu7cj','https://tinyurl.com/2p9fu7cj','https://tinyurl.com/2p9fu7cj','https://tinyurl.com/2p9fu7cj',1199,214,545660),(10045,'2.4G Power Plus Wireless Mouse Wireless Optical Mouse  (2.4GHz Wireless, Black)',2029,'Black USB Mouse','https://tinyurl.com/mpe3nwd3','https://tinyurl.com/mpe3nwd3','https://tinyurl.com/mpe3nwd3','https://tinyurl.com/mpe3nwd3',1202,214,545660),(10046,'cpu cabinet',1230,'cpu cabinet','https://5.imimg.com/data5/PV/BK/MY-39187693/zebronics-cpu-cabinet-500x500.jpg','https://5.imimg.com/data5/PV/BK/MY-39187693/zebronics-cpu-cabinet-500x500.jpg','https://5.imimg.com/data5/PV/BK/MY-39187693/zebronics-cpu-cabinet-500x500.jpg','https://5.imimg.com/data5/PV/BK/MY-39187693/zebronics-cpu-cabinet-500x500.jpg',1155,224,545664),(10047,'The Zebronics EvoFox Fireblade USB gaming keyboard gaming keyboard comes with rainbow backlighting and a breathing effect that helps enhance visibility during your gaming sessions. ',1999,'Zebronics EvoFox Fireblade LED Backlit Wired USB Gaming Keyboard  (Black)','https://tinyurl.com/nxhw58th','https://tinyurl.com/bdzt77mc','https://tinyurl.com/34p9mc3y','https://tinyurl.com/3vwuy23j',1133,215,545660),(10048,'\nCoolerMaster MasterLiquid ML360L ARGB V2 is a refreshed design from the popular MasterLiquid Lite Series that elevates the exterior design elements. The Pump of the ML360L ARGB V2 has been enhanced with the newly designed 3rd Gen.',3999,'COOLER MASTER MASTERLIQUID ML360L V2 ARGB Cooler  (Black)','https://tinyurl.com/yc8z9zmb','https://tinyurl.com/ys8k3tdc','https://tinyurl.com/3wzwrcu9','https://tinyurl.com/3wzwrcu9',1210,221,545660),(10049,'HIGH PERFORMANCE MEMBRANE KEYBOARD?12 multimedia keys to facilitate your gaming operation or work efficiency. • Membrane But Mechanical Feeling keyboard: The bottom of the 61 response keycaps is of silicone structure, which makes it feel skin-like and more comfortable. Mouse - • LED Effect: 7 RGB color effect gaming mouse, creates a cool and colorful game atmosphere to enhance the excitement of the game. best for pc games.',999,'Gaming Keyboard and Mouse Combo ','https://tinyurl.com/4hefmzda','https://tinyurl.com/3dtm8uc8','https://tinyurl.com/25r27sme','https://rukminim2.flixcart.com/image/416/416/xif0q/keyboard/gaming-keyboard/h/u/n/gaming-keyboard-and-mouse-combo-keyboard-87-keys-backlit-3200-original-imagz84zy6asmdp5.jpeg?q=70',1199,215,545660);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-01 15:05:56
