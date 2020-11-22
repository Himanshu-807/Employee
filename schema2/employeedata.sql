-- MySQL dump 10.13  Distrib 8.0.22, for osx10.16 (x86_64)
--
-- Host: localhost    Database: EmployeeManagementData
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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `Address_Id` int NOT NULL AUTO_INCREMENT,
  `Emp_Id` char(7) NOT NULL,
  `Address_Type` varchar(25) NOT NULL DEFAULT 'Permanent',
  `House_No` int NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Pincode` tinyint NOT NULL,
  PRIMARY KEY (`Address_Id`),
  KEY `FK_EmployeeInfoPermanentAddress` (`Emp_Id`),
  CONSTRAINT `FK_EmployeeInfoPermanentAddress` FOREIGN KEY (`Emp_Id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DepartmentInfo`
--

DROP TABLE IF EXISTS `DepartmentInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DepartmentInfo` (
  `Dept_Id` char(7) NOT NULL,
  `Dept_Name` varchar(25) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `Contact_No` int NOT NULL,
  `Total_Emp` int unsigned NOT NULL,
  `Current_Emp` int unsigned NOT NULL,
  PRIMARY KEY (`Dept_Id`),
  UNIQUE KEY `Designation` (`Designation`),
  UNIQUE KEY `Contact_No` (`Contact_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DepartmentInfo`
--

LOCK TABLES `DepartmentInfo` WRITE;
/*!40000 ALTER TABLE `DepartmentInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `DepartmentInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EducationBack`
--

DROP TABLE IF EXISTS `EducationBack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EducationBack` (
  `Emp_Id` char(7) NOT NULL,
  `Edu_Id` int NOT NULL AUTO_INCREMENT,
  `University` varchar(25) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `Decipline` varchar(25) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  PRIMARY KEY (`Edu_Id`),
  KEY `FK_EmployeeInfoEducationBack` (`Emp_Id`),
  CONSTRAINT `FK_EmployeeInfoEducationBack` FOREIGN KEY (`Emp_Id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EducationBack`
--

LOCK TABLES `EducationBack` WRITE;
/*!40000 ALTER TABLE `EducationBack` DISABLE KEYS */;
/*!40000 ALTER TABLE `EducationBack` ENABLE KEYS */;
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
  `Name` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `Phone_No` int NOT NULL,
  `Email_Id` varchar(50) NOT NULL,
  `Aadhar_No` int NOT NULL,
  `Pan_No` char(10) NOT NULL,
  `Join_Date` date NOT NULL,
  `Leave_Date` date DEFAULT NULL,
  PRIMARY KEY (`Emp_Id`),
  KEY `FK_DepartmentInfoEmployeeInfo` (`Dept_Id`),
  CONSTRAINT `FK_DepartmentInfoEmployeeInfo` FOREIGN KEY (`Dept_Id`) REFERENCES `DepartmentInfo` (`Dept_Id`)
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
-- Table structure for table `ProfessionalBack`
--

DROP TABLE IF EXISTS `ProfessionalBack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProfessionalBack` (
  `Emp_Id` char(7) NOT NULL,
  `Comp_Id` char(7) NOT NULL,
  `Company_Name` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date DEFAULT NULL,
  PRIMARY KEY (`Comp_Id`),
  KEY `FK_EmployeeInfoProfessionalBack` (`Emp_Id`),
  CONSTRAINT `FK_EmployeeInfoProfessionalBack` FOREIGN KEY (`Emp_Id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProfessionalBack`
--

LOCK TABLES `ProfessionalBack` WRITE;
/*!40000 ALTER TABLE `ProfessionalBack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProfessionalBack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalaryInfo`
--

DROP TABLE IF EXISTS `SalaryInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SalaryInfo` (
  `Emp_Id` char(7) NOT NULL,
  `Sal_Id` int NOT NULL AUTO_INCREMENT,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  PRIMARY KEY (`Sal_Id`),
  KEY `FK_EmployeeInfoSalaryInfo` (`Emp_Id`),
  CONSTRAINT `FK_EmployeeInfoSalaryInfo` FOREIGN KEY (`Emp_Id`) REFERENCES `EmployeeInfo` (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalaryInfo`
--

LOCK TABLES `SalaryInfo` WRITE;
/*!40000 ALTER TABLE `SalaryInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `SalaryInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-22 19:38:15
