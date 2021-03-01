CREATE DATABASE  IF NOT EXISTS `covid_health_care` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `covid_health_care`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: covid_health_care
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hid` int NOT NULL AUTO_INCREMENT,
  `aplname` varchar(100) DEFAULT NULL,
  `desig` varchar(50) DEFAULT NULL,
  `hname` varchar(100) DEFAULT NULL,
  `prn` varchar(20) DEFAULT NULL,
  `hosptype` varchar(20) DEFAULT NULL,
  `contNum` varchar(15) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `states` varchar(50) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `moname` varchar(50) DEFAULT NULL,
  `numDoc` varchar(10) DEFAULT NULL,
  `numNurses` varchar(10) DEFAULT NULL,
  `ib` varchar(10) DEFAULT NULL,
  `sb` varchar(10) DEFAULT NULL,
  `gb` varchar(10) DEFAULT NULL,
  `ob` varchar(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `TotalBed` text,
  PRIMARY KEY (`hid`),
  UNIQUE KEY `prn` (`prn`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (8,'Ajinkya','Manager','Shri','RN0123456789','Government','9146443979','shri@gmail.com','Amravati','Amravati','Maharashtra','444602','Ajinkya','10','25','10','9','10','10','Ajinkya','Y','40'),(9,'Ashwini Yelorkar','Manager','Ganesha Hospital','RN2345678901','Semi Government','7788998865','ashwini@gmail.com','Amravati','Amravati','Maharashtra','444603','Ashwini Yelorkar','6','25','10','9','10','15','Ashwini','Y','93'),(10,'Shweta Bhandwalkar','Manager','PDMC','RN3456789012','Semi Government','7744554412','shweta@gmil.com','Amravati','Amravati','Maharashtra','444602','Shweta Bhandwalkar','6','15','10','9','10','4','Shweta@123','Y','71'),(11,'Priyanka Bayaskar','Medical Officer','Super Speciality Hospital','RN1234567891','Semi Government','9175779088','bayaskarpriyanka@gmail.com','Suyog Colony, Camp Road Amravati .','Amravati ','Maharatra','444602','Priyanka Bayaskar','20','30','10','9','10','150','priyanka@123','Y','420');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_report`
--

DROP TABLE IF EXISTS `patient_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_report` (
  `pr_id` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `hid` int DEFAULT NULL,
  `remarkDate` varchar(10) DEFAULT NULL,
  `p_stat` varchar(100) DEFAULT NULL,
  `critical_note` varchar(200) DEFAULT NULL,
  `treatment` varchar(200) DEFAULT NULL,
  `diet` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pr_id`),
  KEY `hid` (`hid`),
  KEY `pid` (`pid`),
  CONSTRAINT `patient_report_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospital` (`hid`),
  CONSTRAINT `patient_report_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `patients` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_report`
--

LOCK TABLES `patient_report` WRITE;
/*!40000 ALTER TABLE `patient_report` DISABLE KEYS */;
INSERT INTO `patient_report` VALUES (3,4,8,'2020-12-14','Stable','Not at all','Normal','Apple juice at morning');
/*!40000 ALTER TABLE `patient_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `hid` int DEFAULT NULL,
  `adhar_num` char(12) DEFAULT NULL,
  `ward_type` varchar(8) DEFAULT NULL,
  `ward_num` int DEFAULT NULL,
  `bed_num` int DEFAULT NULL,
  `p_fname` varchar(30) DEFAULT NULL,
  `p_mname` varchar(30) DEFAULT NULL,
  `p_lname` varchar(30) DEFAULT NULL,
  `p_gender` varchar(15) DEFAULT NULL,
  `p_weight` varchar(10) DEFAULT NULL,
  `p_bldgrp` varchar(8) DEFAULT NULL,
  `p_dob` varchar(10) DEFAULT NULL,
  `p_mob_num` varchar(10) DEFAULT NULL,
  `pa_mob_num` varchar(10) DEFAULT NULL,
  `p_address` varchar(200) DEFAULT NULL,
  `p_city` varchar(50) DEFAULT NULL,
  `p_state` varchar(50) DEFAULT NULL,
  `p_pin` varchar(6) DEFAULT NULL,
  `p_occupation` varchar(30) DEFAULT NULL,
  `p_income` varchar(10) DEFAULT NULL,
  `und_doc_name` varchar(50) DEFAULT NULL,
  `prov_dig` varchar(100) DEFAULT NULL,
  `fin_dig` varchar(100) DEFAULT NULL,
  `ref_hosp` varchar(100) DEFAULT NULL,
  `ref_doc` varchar(50) DEFAULT NULL,
  `k_fname` varchar(30) DEFAULT NULL,
  `k_mname` varchar(30) DEFAULT NULL,
  `k_lname` varchar(30) DEFAULT NULL,
  `k_mob_num` varchar(10) DEFAULT NULL,
  `k_address` varchar(200) DEFAULT NULL,
  `k_city` varchar(50) DEFAULT NULL,
  `k_state` varchar(50) DEFAULT NULL,
  `k_pin` varchar(6) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `adhar_num` (`adhar_num`),
  KEY `hid` (`hid`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospital` (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (3,8,'454545454545','ICU',1,1,'Ajinkya','V','Yerlekar','male','65','B+ve','1997-06-25','9146443979','9767989973','Amravati','Amravati','Maharashtra','444602','Student','not at all','Dr. Joshi','Minor Flue','Corona Symptoms','No','No','V','G','Yerlekar','9767989973','Amravati','Amravati','Maharashtra','444602','D'),(4,8,'998786547895','General',1,1,'Akash','M','Shrama','male','65','B+ve','1997-07-17','9767989973','9146443979','Amravati','Amravati','Maharashtra','444602','Labour','100000','Dr. SS Sharma','Flu, Fever','Tested Positive','Nil','Nil','Akshay','M','Sharma','9899775486','Amravati','Amravati','Maharashtra','444603','D');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plasma`
--

DROP TABLE IF EXISTS `plasma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plasma` (
  `pdonid` int NOT NULL AUTO_INCREMENT,
  `hid` int DEFAULT NULL,
  `pid` int DEFAULT NULL,
  PRIMARY KEY (`pdonid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plasma`
--

LOCK TABLES `plasma` WRITE;
/*!40000 ALTER TABLE `plasma` DISABLE KEYS */;
INSERT INTO `plasma` VALUES (13,8,3),(14,8,4);
/*!40000 ALTER TABLE `plasma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `reqstshow`
--

DROP TABLE IF EXISTS `reqstshow`;
/*!50001 DROP VIEW IF EXISTS `reqstshow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reqstshow` AS SELECT 
 1 AS `rid`,
 1 AS `hid`,
 1 AS `hname`,
 1 AS `uid`,
 1 AS `rqstType`,
 1 AS `fname`,
 1 AS `lname`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `mobNum`,
 1 AS `alt_mobNum`,
 1 AS `email`,
 1 AS `address`,
 1 AS `states`,
 1 AS `city`,
 1 AS `pincode`,
 1 AS `date`,
 1 AS `st`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `hid` int DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `rqstType` varchar(15) DEFAULT NULL,
  `age` varchar(3) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `alt_mobNum` varchar(12) DEFAULT NULL,
  `st` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `hid` (`hid`),
  KEY `uid` (`uid`),
  CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospital` (`hid`),
  CONSTRAINT `requests_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (5,9,4,'Covid Test','21','Fri Dec 04 13:32:18 IST 2020','9146443979','W'),(6,8,4,'Covid Test','23','Sat Dec 12 02:42:01 IST 2020','9767989973','A'),(7,8,6,'Covid Test','23','Mon Dec 14 13:48:39 IST 2020','8877445758','W');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `mobNum` varchar(12) DEFAULT NULL,
  `email` char(30) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `states` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`uid`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Ajinkya','Yerlekar','Male','9146443979','ajinkyayerlekar198@gmail.com','Ajinkya@123','Sambodhi Colony Rahatgaon','Maharashtra','Amravati','444602'),(5,'Ashwini','Yelorkar','Female','7755884466','ashwini@gmail.com','Ajinkya@123','Amravati','Maharashtra','Amravati','444603'),(6,'Priyanka','Bayaskar','Female','9874548875','priyanka@gmail.com','Ajinkya@123','Amravati','Maharashtra','Amravati','444602');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_plasma`
--

DROP TABLE IF EXISTS `view_plasma`;
/*!50001 DROP VIEW IF EXISTS `view_plasma`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_plasma` AS SELECT 
 1 AS `pdonid`,
 1 AS `hid`,
 1 AS `pid`,
 1 AS `hname`,
 1 AS `p_fname`,
 1 AS `p_lname`,
 1 AS `p_gender`,
 1 AS `p_weight`,
 1 AS `p_bldgrp`,
 1 AS `p_mob_num`,
 1 AS `p_address`,
 1 AS `p_city`,
 1 AS `p_state`,
 1 AS `p_pin`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `reqstshow`
--

/*!50001 DROP VIEW IF EXISTS `reqstshow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reqstshow` AS select `r`.`rid` AS `rid`,`h`.`hid` AS `hid`,`h`.`hname` AS `hname`,`u`.`uid` AS `uid`,`r`.`rqstType` AS `rqstType`,`u`.`fname` AS `fname`,`u`.`lname` AS `lname`,`u`.`gender` AS `gender`,`r`.`age` AS `age`,`u`.`mobNum` AS `mobNum`,`r`.`alt_mobNum` AS `alt_mobNum`,`u`.`email` AS `email`,`u`.`address` AS `address`,`u`.`states` AS `states`,`u`.`city` AS `city`,`u`.`pincode` AS `pincode`,`r`.`date` AS `date`,`r`.`st` AS `st` from ((`requests` `r` join `users` `u` on((`r`.`uid` = `u`.`uid`))) join `hospital` `h` on((`r`.`hid` = `h`.`hid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_plasma`
--

/*!50001 DROP VIEW IF EXISTS `view_plasma`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_plasma` AS select `p`.`pdonid` AS `pdonid`,`p`.`hid` AS `hid`,`p`.`pid` AS `pid`,`h`.`hname` AS `hname`,`pt`.`p_fname` AS `p_fname`,`pt`.`p_lname` AS `p_lname`,`pt`.`p_gender` AS `p_gender`,`pt`.`p_weight` AS `p_weight`,`pt`.`p_bldgrp` AS `p_bldgrp`,`pt`.`p_mob_num` AS `p_mob_num`,`pt`.`p_address` AS `p_address`,`pt`.`p_city` AS `p_city`,`pt`.`p_state` AS `p_state`,`pt`.`p_pin` AS `p_pin` from ((`plasma` `p` join `patients` `pt` on((`p`.`pid` = `pt`.`pid`))) join `hospital` `h` on((`h`.`hid` = `p`.`hid`))) where (`pt`.`status` = 'D') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-20  0:00:02
