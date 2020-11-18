-- MySQL dump 10.13  Distrib 8.0.22, for osx10.16 (x86_64)
--
-- Host: localhost    Database: EmployeeManagement
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CompanyInfo`
--

DROP TABLE IF EXISTS `CompanyInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CompanyInfo` (
  `Emp_Id` char(7) DEFAULT NULL,
  `Salary` int unsigned NOT NULL,
  `Join_Date` date NOT NULL,
  `Experience` int unsigned NOT NULL,
  KEY `FK_EmployeeInfoDepartmentInfo` (`Emp_Id`),
  CONSTRAINT `FK_EmployeeInfoDepartmentInfo` FOREIGN KEY (`Emp_Id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyInfo`
--

LOCK TABLES `CompanyInfo` WRITE;
/*!40000 ALTER TABLE `CompanyInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `CompanyInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Education`
--

DROP TABLE IF EXISTS `Education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Education` (
  `Emp_id` char(7) DEFAULT NULL,
  `University` varchar(50) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `Course_End` date NOT NULL,
  KEY `FK_EmployeeInfoEducation` (`Emp_id`),
  CONSTRAINT `FK_EmployeeInfoEducation` FOREIGN KEY (`Emp_id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Education`
--

LOCK TABLES `Education` WRITE;
/*!40000 ALTER TABLE `Education` DISABLE KEYS */;
/*!40000 ALTER TABLE `Education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeInfo`
--

DROP TABLE IF EXISTS `EmployeeInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeInfo` (
  `Emp_Id` char(7) NOT NULL,
  `Dept_Id` char(7) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `Email_Id` varchar(25) NOT NULL,
  `Phone_No` int NOT NULL,
  `Aadhar_No` int NOT NULL,
  `Pan_No` char(10) NOT NULL,
  `Join_Date` date NOT NULL,
  `Leave_Date` date DEFAULT NULL,
  `Address` varchar(50) NOT NULL,
  PRIMARY KEY (`Emp_Id`,`Dept_Id`,`Email_Id`,`Phone_No`,`Aadhar_No`,`Pan_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeInfo`
--

LOCK TABLES `EmployeeInfo` WRITE;
/*!40000 ALTER TABLE `EmployeeInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmployeeInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectInfo`
--

DROP TABLE IF EXISTS `ProjectInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProjectInfo` (
  `Emp_Id` char(7) DEFAULT NULL,
  `Project_Name` varchar(15) NOT NULL,
  `Last_Date` date NOT NULL,
  `Department` varchar(15) NOT NULL,
  `Project_Id` char(7) NOT NULL,
  KEY `FK_EmployeeInfoProjectInfo` (`Emp_Id`),
  CONSTRAINT `FK_EmployeeInfoProjectInfo` FOREIGN KEY (`Emp_Id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectInfo`
--

LOCK TABLES `ProjectInfo` WRITE;
/*!40000 ALTER TABLE `ProjectInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19  0:09:52
