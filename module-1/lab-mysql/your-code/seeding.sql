CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `Car`
--

DROP TABLE IF EXISTS `Car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Car` (
  `idcar` int NOT NULL AUTO_INCREMENT,
  `VIN` varchar(45) NOT NULL,
  `Manufacturer` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Year` year NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Fuel` varchar(45) DEFAULT NULL,
  `Hybrid` tinyint DEFAULT NULL,
  PRIMARY KEY (`idcar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Car`
--

LOCK TABLES `Car` WRITE;
/*!40000 ALTER TABLE `Car` DISABLE KEYS */;
INSERT INTO `Car` VALUES (1,'3ABC75','Volskwagen','Tiguan',2019,'Blue','Diesel',1),(2,'3ABC76','Peugeot','Rifter',2019,'Red','Diesel',0),(3,'3ABC77','Ford','Fusion',2018,'White','Gas',1),(4,'3ABC78','Toyota','Rav4',2018,'Silver','Gas',0),(5,'3ABC79','Volvo','V60',2019,'Grey','Diesel',1),(6,'3ABC71','Volvo','V60 Cross Country',2019,'Grey','Diesel',1);
/*!40000 ALTER TABLE `Car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `Customer ID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` int NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State/Province` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Postal` int NOT NULL,
  `Birth day` date DEFAULT NULL,
  PRIMARY KEY (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,20001,'Abraham Lincoln',59077086,'-','120 SW 8th St','Miami','Florida','United States',33130,'1987-05-05'),(2,30001,'Napoleón Bonaparte',179754000,'-','40 Rue du Colisée','Paris','Île-de-France','France',275008,'1982-05-05'),(3,10001,'Pablo Picasso',636176382,'-','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045,'1983-05-05');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_has_Car`
--

DROP TABLE IF EXISTS `Customer_has_Car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_has_Car` (
  `Car Buyer` int NOT NULL,
  `Purchased Car` int NOT NULL,
  `Car Seller` int NOT NULL,
  PRIMARY KEY (`Car Buyer`,`Purchased Car`,`Car Seller`),
  KEY `fk_Customer_has_Car_Car1_idx` (`Purchased Car`),
  KEY `fk_Customer_has_Car_Customer_idx` (`Car Buyer`),
  KEY `fk_Customer_has_Car_Salesperson1_idx` (`Car Seller`),
  CONSTRAINT `fk_Customer_has_Car_Car1` FOREIGN KEY (`Purchased Car`) REFERENCES `Car` (`idcar`),
  CONSTRAINT `fk_Customer_has_Car_Customer` FOREIGN KEY (`Car Buyer`) REFERENCES `Customer` (`idCustomer`),
  CONSTRAINT `fk_Customer_has_Car_Salesperson1` FOREIGN KEY (`Car Seller`) REFERENCES `Salesperson` (`idSalesperson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_has_Car`
--

LOCK TABLES `Customer_has_Car` WRITE;
/*!40000 ALTER TABLE `Customer_has_Car` DISABLE KEYS */;
/*!40000 ALTER TABLE `Customer_has_Car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoice` (
  `idInvoice` int NOT NULL AUTO_INCREMENT,
  `Invoice Number` int NOT NULL,
  `Date` date NOT NULL,
  `Car Sold` int NOT NULL,
  `Buyer` int NOT NULL,
  PRIMARY KEY (`idInvoice`,`Car Sold`,`Buyer`),
  KEY `fk_Invoice_Car1_idx` (`Car Sold`),
  KEY `fk_Invoice_Customer1_idx` (`Buyer`),
  CONSTRAINT `fk_Invoice_Car1` FOREIGN KEY (`Car Sold`) REFERENCES `Car` (`idcar`),
  CONSTRAINT `fk_Invoice_Customer1` FOREIGN KEY (`Buyer`) REFERENCES `Customer` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
INSERT INTO `Invoice` VALUES (1,852399038,'2018-08-22',0,1),(1,731166526,'2018-12-31',3,0),(2,271135104,'2019-01-22',2,2);
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salesperson`
--

DROP TABLE IF EXISTS `Salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salesperson` (
  `idSalesperson` int NOT NULL AUTO_INCREMENT,
  `Staff ID` int NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Store` varchar(45) NOT NULL,
  `Arrival Date` date DEFAULT NULL,
  `Employee Rank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSalesperson`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salesperson`
--

LOCK TABLES `Salesperson` WRITE;
/*!40000 ALTER TABLE `Salesperson` DISABLE KEYS */;
INSERT INTO `Salesperson` VALUES (1,1,'Petey Cruiser','Madrid','2016-09-09','Junior Salesman'),(2,2,'Anna Sthesia','Barcelona','2015-09-09','Junior Salesman'),(3,3,'Paul Molive','Berlin','2013-09-09','Junior Salesman'),(4,4,'Gail Forcewind','Paris','2019-09-09','Junior Salesman'),(5,5,'Paige Turner','Mimia','2018-08-09','Junior Salesman'),(6,6,'Bob Frapples','Mexico city','2007-09-06','Senior Salesman'),(7,7,'Walter Melon','Amsterdam','2014-08-02','Junior Salesman'),(8,8,'Shonda Leer','São Paulo','2014-09-09','Junior Salesman');
/*!40000 ALTER TABLE `Salesperson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-26 10:40:21
