-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.48-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema firedetection
--

CREATE DATABASE IF NOT EXISTS firedetection;
USE firedetection;

--
-- Definition of table `busdetails`
--

DROP TABLE IF EXISTS `busdetails`;
CREATE TABLE `busdetails` (
  `busid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `busno` varchar(45) NOT NULL,
  `chasisno` varchar(45) NOT NULL,
  `wheelbase` varchar(45) NOT NULL,
  `battery` varchar(45) NOT NULL,
  `watertankmaterial` varchar(45) NOT NULL,
  `manhole` varchar(45) NOT NULL,
  `pumptype` varchar(45) NOT NULL,
  `pumpdischarge` varchar(45) NOT NULL,
  `delivery` varchar(45) NOT NULL,
  `make` varchar(45) NOT NULL,
  `overalllength` varchar(45) NOT NULL,
  `overallwidth` varchar(45) NOT NULL,
  `overallheight` varchar(45) NOT NULL,
  `bodyroof` varchar(45) NOT NULL,
  `bodydoortype` varchar(45) NOT NULL,
  `bodylocks` varchar(45) NOT NULL,
  `watertankcapacity` varchar(45) NOT NULL,
  PRIMARY KEY (`busid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busdetails`
--

/*!40000 ALTER TABLE `busdetails` DISABLE KEYS */;
INSERT INTO `busdetails` (`busid`,`busno`,`chasisno`,`wheelbase`,`battery`,`watertankmaterial`,`manhole`,`pumptype`,`pumpdischarge`,`delivery`,`make`,`overalllength`,`overallwidth`,`overallheight`,`bodyroof`,`bodydoortype`,`bodylocks`,`watertankcapacity`) VALUES 
 (2,'ka20EF34523','200','2','5000','none','50','a','b','45','TATA','1500','800','700','abc','abc','abc','100');
/*!40000 ALTER TABLE `busdetails` ENABLE KEYS */;


--
-- Definition of table `busservice`
--

DROP TABLE IF EXISTS `busservice`;
CREATE TABLE `busservice` (
  `Busserviceid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Busno` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `serviceDescription` varchar(45) NOT NULL,
  `Amount` varchar(45) NOT NULL,
  PRIMARY KEY (`Busserviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busservice`
--

/*!40000 ALTER TABLE `busservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `busservice` ENABLE KEYS */;


--
-- Definition of table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `complaintid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ComplaintNo` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`complaintid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` (`complaintid`,`ComplaintNo`,`username`,`description`,`date`,`status`) VALUES 
 (3,'38240','josline','bad','16/07/2021','Approve');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;


--
-- Definition of table `employeedetails`
--

DROP TABLE IF EXISTS `employeedetails`;
CREATE TABLE `employeedetails` (
  `EmpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EmployeeRegId` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Designation` varchar(45) NOT NULL,
  `Qualification` varchar(45) NOT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetails`
--

/*!40000 ALTER TABLE `employeedetails` DISABLE KEYS */;
INSERT INTO `employeedetails` (`EmpID`,`EmployeeRegId`,`Name`,`Phone`,`Email`,`Designation`,`Qualification`) VALUES 
 (2,'001','Megha Kumari','9740224095','meghapoojary05@gmail.com','Manager','PG');
/*!40000 ALTER TABLE `employeedetails` ENABLE KEYS */;


--
-- Definition of table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `registrationid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `UserType` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`registrationid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` (`registrationid`,`UserName`,`Password`,`UserType`,`Phone`,`Email`) VALUES 
 (1,'josline','josline@123','User','1234567890','abc@gmail.com'),
 (2,'megha','megha@123','Admin','1234567890','abc@gmail.com');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
firedetection	