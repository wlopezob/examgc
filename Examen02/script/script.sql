CREATE DATABASE  IF NOT EXISTS `employees` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `employees`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: employees
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` varchar(50) NOT NULL,
  `isOnline` int(11) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('574daa370866cd66710f5519',0,1393.47,22,'developer','Greta Mcfadden','female','gretamcfadden@fanfare.com','+0511 (917) 441-3834','497 Milford Street, Grimsley, Alaska, 9648'),('574daa37114b923fcb959533',1,1788.16,70,'developer','Bradley Kirk','male','bradleykirk@fanfare.com','+0511 (971) 547-3430','781 Randolph Street, Eagleville, Wisconsin, 3923'),('574daa3731aafea412b01231',1,3485.72,23,'developer','Brandy Everett','female','brandyeverett@fanfare.com','+0511 (910) 414-2740','895 Union Avenue, Catharine, Indiana, 3975'),('574daa3735fce3f5e9b0bdd9',1,2046.78,51,'developer','Dean Ramirez','male','deanramirez@fanfare.com','+0511 (894) 463-3263','184 Bleecker Street, Hannasville, Connecticut, 4908'),('574daa374124bc8ac066e65e',0,2787.84,43,'developer','Casey Lang','male','caseylang@fanfare.com','+0511 (839) 417-3910','165 Tabor Court, Kidder, Louisiana, 1670'),('574daa3788291a030a564e54',0,3872.94,42,'developer','Hayes Macias','male','hayesmacias@fanfare.com','+0511 (815) 442-3884','883 Pine Street, Zortman, Maryland, 9701'),('574daa378cb97f935a5c8e2e',1,1314.06,21,'developer','Chasity Carver','female','chasitycarver@fanfare.com','+0511 (833) 412-3736','218 Bulwer Place, Maybell, Utah, 4847'),('574daa379545e9af101c2731',1,1191.57,63,'developer','Foley Day','male','foleyday@fanfare.com','+0511 (895) 577-2157','850 Clara Street, Westmoreland, Kansas, 6963'),('574daa37b6b60c495de67280',1,1282.14,50,'developer','Mckee Summers','male','mckeesummers@fanfare.com','+0511 (873) 578-3997','733 Everett Avenue, Centerville, Colorado, 6706'),('574daa37bc4712260e3415d5',0,3848.90,65,'developer','Alfreda Ortiz','female','alfredaortiz@fanfare.com','+0511 (874) 515-3829','921 Rutledge Street, Hampstead, Northern Mariana Islands, 9259'),('574daa37c0e6294de5987cb5',1,2893.52,27,'developer','Regina Berg','female','reginaberg@fanfare.com','+0511 (843) 417-2788','674 Claver Place, Dennard, Pennsylvania, 3998'),('574daa37c66e1e38eb4e05c2',1,2374.26,43,'developer','Miranda Gross','female','mirandagross@fanfare.com','+0511 (986) 446-2789','727 Pooles Lane, Boomer, Marshall Islands, 6052'),('574daa37d0ef76e417a4571b',1,1495.46,51,'developer','Joseph Calhoun','male','josephcalhoun@fanfare.com','+0511 (886) 493-3295','129 Tompkins Place, Succasunna, South Dakota, 603');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Employees_id` varchar(50) NOT NULL,
  `skill` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Skills_Employees_idx` (`Employees_id`),
  CONSTRAINT `fk_Skills_Employees` FOREIGN KEY (`Employees_id`) REFERENCES `employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (6,'574daa370866cd66710f5519','Python'),(7,'574daa370866cd66710f5519','CSS'),(8,'574daa370866cd66710f5519','C#'),(9,'574daa370866cd66710f5519','JS'),(10,'574daa370866cd66710f5519','Lisp'),(11,'574daa37114b923fcb959533','Python'),(12,'574daa37114b923fcb959533','CSS'),(13,'574daa37114b923fcb959533','C#'),(14,'574daa37114b923fcb959533','JS'),(15,'574daa37114b923fcb959533','Lisp'),(16,'574daa3731aafea412b01231','Python'),(17,'574daa3731aafea412b01231','CSS'),(18,'574daa3731aafea412b01231','C#'),(19,'574daa3731aafea412b01231','JS'),(20,'574daa3731aafea412b01231','Lisp'),(21,'574daa3735fce3f5e9b0bdd9','Python'),(22,'574daa3735fce3f5e9b0bdd9','CSS'),(23,'574daa3735fce3f5e9b0bdd9','C#'),(24,'574daa3735fce3f5e9b0bdd9','JS'),(25,'574daa3735fce3f5e9b0bdd9','Lisp'),(45,'574daa374124bc8ac066e65e','C#'),(46,'574daa374124bc8ac066e65e','Python'),(47,'574daa3788291a030a564e54','Python'),(48,'574daa378cb97f935a5c8e2e','C#'),(49,'574daa378cb97f935a5c8e2e','Python'),(50,'574daa3788291a030a564e54','C#'),(51,'574daa379545e9af101c2731','Python'),(52,'574daa379545e9af101c2731','C#'),(53,'574daa37b6b60c495de67280','Python'),(54,'574daa37b6b60c495de67280','C#'),(55,'574daa37bc4712260e3415d5','Python'),(56,'574daa37bc4712260e3415d5','C#'),(57,'574daa37c0e6294de5987cb5','Python'),(58,'574daa37c0e6294de5987cb5','C#'),(59,'574daa37c66e1e38eb4e05c2','Python'),(60,'574daa37c0e6294de5987cb5','C#'),(61,'574daa37c66e1e38eb4e05c2','Python'),(62,'574daa37d0ef76e417a4571b','C#'),(63,'574daa37d0ef76e417a4571b','Python');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-23 18:50:15
