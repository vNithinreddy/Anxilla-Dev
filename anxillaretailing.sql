-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 165.227.83.152    Database: anxillaretailing
-- ------------------------------------------------------
-- Server version	5.7.42-0ubuntu0.18.04.1

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
-- Table structure for table `Arc_FlightSchedules`
--

DROP TABLE IF EXISTS `Arc_FlightSchedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arc_FlightSchedules` (
  `Snapshot` datetime DEFAULT NULL,
  `Route` varchar(6) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Aircraft` varchar(10) DEFAULT NULL,
  `FlightNo` varchar(10) DEFAULT NULL,
  `Cabin` varchar(3) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `Capacity` int(3) DEFAULT NULL,
  `SeatsAvailable` int(3) DEFAULT NULL,
  `LoadFactor` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arc_FlightSchedules`
--

LOCK TABLES `Arc_FlightSchedules` WRITE;
/*!40000 ALTER TABLE `Arc_FlightSchedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arc_FlightSchedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Archive_TicketingData`
--

DROP TABLE IF EXISTS `Archive_TicketingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Archive_TicketingData` (
  `Snapshot` datetime DEFAULT NULL,
  `PNR` varchar(6) DEFAULT NULL,
  `TicketNo` varchar(6) DEFAULT NULL,
  `BookingDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `BookingStatus` varchar(3) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `Cabin` varchar(3) DEFAULT NULL,
  `FareFamily` varchar(36) DEFAULT NULL,
  `FareBasisCode` varchar(36) DEFAULT NULL,
  `Title` varchar(36) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Gender` varchar(36) DEFAULT NULL,
  `EmailID` varchar(100) DEFAULT NULL,
  `PrimaryPhone` varchar(100) DEFAULT NULL,
  `SecondaryPhone` varchar(100) DEFAULT NULL,
  `PaxType` varchar(36) DEFAULT NULL,
  `FlightNo` varchar(36) DEFAULT NULL,
  `Aircraft` varchar(36) DEFAULT NULL,
  `IATACode` varchar(36) DEFAULT NULL,
  `TIDS` varchar(36) DEFAULT NULL,
  `LoyaltyProgramNo` varchar(36) DEFAULT NULL,
  `SSRCode` text,
  `SeatSelected` varchar(100) DEFAULT NULL,
  `UniqueIdentifier` varchar(50) DEFAULT NULL,
  `LoadType` int(1) DEFAULT NULL,
  `Channel` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Archive_TicketingData`
--

LOCK TABLES `Archive_TicketingData` WRITE;
/*!40000 ALTER TABLE `Archive_TicketingData` DISABLE KEYS */;
/*!40000 ALTER TABLE `Archive_TicketingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_AncillaryProducts`
--

DROP TABLE IF EXISTS `Cfg_AncillaryProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_AncillaryProducts` (
  `APID` varchar(36) DEFAULT NULL,
  `AncillaryName` varchar(100) DEFAULT NULL,
  `AncillaryDescription` varchar(200) DEFAULT NULL,
  `EntityID` varchar(36) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_AncillaryProducts`
--

LOCK TABLES `Cfg_AncillaryProducts` WRITE;
/*!40000 ALTER TABLE `Cfg_AncillaryProducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_AncillaryProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_CustomRuleExtraSeatScheduler`
--

DROP TABLE IF EXISTS `Cfg_CustomRuleExtraSeatScheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_CustomRuleExtraSeatScheduler` (
  `OfferID` varchar(36) DEFAULT NULL,
  `OfferTitle` varchar(200) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `RuleType` varchar(36) DEFAULT NULL,
  `DaysOfWeek` varchar(1) DEFAULT NULL,
  `OfferForever` int(1) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `BookingDateCondition` int(1) DEFAULT NULL,
  `BookingStartDate` datetime DEFAULT NULL,
  `BookingEndDate` datetime DEFAULT NULL,
  `DepBookDateCondition` varchar(3) DEFAULT NULL,
  `Route` longtext,
  `Leg` longtext,
  `FlightNo` longtext,
  `POS` longtext,
  `RBD` longtext,
  `MinValue` decimal(5,2) DEFAULT NULL,
  `MaximumValue` decimal(5,2) DEFAULT NULL,
  `SuccessRatio` decimal(5,2) DEFAULT NULL,
  `Multiplier` decimal(5,2) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_CustomRuleExtraSeatScheduler`
--

LOCK TABLES `Cfg_CustomRuleExtraSeatScheduler` WRITE;
/*!40000 ALTER TABLE `Cfg_CustomRuleExtraSeatScheduler` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_CustomRuleExtraSeatScheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_CustomRuleSeatUpgradeScheduler`
--

DROP TABLE IF EXISTS `Cfg_CustomRuleSeatUpgradeScheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_CustomRuleSeatUpgradeScheduler` (
  `OfferID` varchar(36) DEFAULT NULL,
  `OfferTitle` varchar(200) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `RuleType` varchar(36) DEFAULT NULL,
  `DaysOfWeek` varchar(1) DEFAULT NULL,
  `OfferForever` int(1) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `BookingDateCondition` int(1) DEFAULT NULL,
  `BookingStartDate` datetime DEFAULT NULL,
  `BookingEndDate` datetime DEFAULT NULL,
  `DepBookDateCondition` varchar(3) DEFAULT NULL,
  `Route` longtext,
  `Leg` longtext,
  `FlightNo` longtext,
  `POS` longtext,
  `RBD` longtext,
  `MinValue` decimal(5,2) DEFAULT NULL,
  `MaximumValue` decimal(5,2) DEFAULT NULL,
  `SuccessRatio` decimal(5,2) DEFAULT NULL,
  `Multiplier` decimal(5,2) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_CustomRuleSeatUpgradeScheduler`
--

LOCK TABLES `Cfg_CustomRuleSeatUpgradeScheduler` WRITE;
/*!40000 ALTER TABLE `Cfg_CustomRuleSeatUpgradeScheduler` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_CustomRuleSeatUpgradeScheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_EntityDetails`
--

DROP TABLE IF EXISTS `Cfg_EntityDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_EntityDetails` (
  `EntityID` varchar(36) DEFAULT NULL,
  `EntityName` varchar(200) DEFAULT NULL,
  `ParentOrChild` int(1) DEFAULT NULL,
  `ParentID` varchar(36) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_EntityDetails`
--

LOCK TABLES `Cfg_EntityDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_EntityDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_EntityDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_ExtraSeatBasicDetails`
--

DROP TABLE IF EXISTS `Cfg_ExtraSeatBasicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_ExtraSeatBasicDetails` (
  `ProductID` varchar(36) DEFAULT NULL,
  `ProductTitle` varchar(200) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductVariant` varchar(36) DEFAULT NULL,
  `ExtraSeat` int(1) DEFAULT NULL,
  `Provider` varchar(36) DEFAULT NULL,
  `ProductDescription` blob,
  `ThumbnailImages` text,
  `BannerImages` text,
  `PaymentMethod` int(1) DEFAULT NULL,
  `CabinVisualsForAll` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_ExtraSeatBasicDetails`
--

LOCK TABLES `Cfg_ExtraSeatBasicDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_ExtraSeatBasicDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_ExtraSeatBasicDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_ExtraSeatCustomSettings`
--

DROP TABLE IF EXISTS `Cfg_ExtraSeatCustomSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_ExtraSeatCustomSettings` (
  `CSID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `CheckTypes` varchar(200) DEFAULT NULL,
  `EnabledOrNot` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_ExtraSeatCustomSettings`
--

LOCK TABLES `Cfg_ExtraSeatCustomSettings` WRITE;
/*!40000 ALTER TABLE `Cfg_ExtraSeatCustomSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_ExtraSeatCustomSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_ExtraSeatFareDetails`
--

DROP TABLE IF EXISTS `Cfg_ExtraSeatFareDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_ExtraSeatFareDetails` (
  `FareID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `FareFamily` varchar(36) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `FlightNo` varchar(6) DEFAULT NULL,
  `SeatType` varchar(100) DEFAULT NULL,
  `RBD` varchar(36) DEFAULT NULL,
  `Cabin` varchar(1) DEFAULT NULL,
  `MinPrice` int(10) DEFAULT NULL,
  `MaxPrice` int(10) DEFAULT NULL,
  `BuyPrice` int(10) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_ExtraSeatFareDetails`
--

LOCK TABLES `Cfg_ExtraSeatFareDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_ExtraSeatFareDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_ExtraSeatFareDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_ExtraSeatTaxDetails`
--

DROP TABLE IF EXISTS `Cfg_ExtraSeatTaxDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_ExtraSeatTaxDetails` (
  `TaxID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `Cabin` varchar(1) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `TaxCode` varchar(6) DEFAULT NULL,
  `CurrencyCode` varchar(3) DEFAULT NULL,
  `Rate` decimal(10,2) DEFAULT NULL,
  `PercentOrAbsolute` varchar(36) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_ExtraSeatTaxDetails`
--

LOCK TABLES `Cfg_ExtraSeatTaxDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_ExtraSeatTaxDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_ExtraSeatTaxDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_ExtraSeatVisuals`
--

DROP TABLE IF EXISTS `Cfg_ExtraSeatVisuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_ExtraSeatVisuals` (
  `VID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `Aircraft` varchar(36) DEFAULT NULL,
  `SeatType` varchar(100) DEFAULT NULL,
  `FileType` varchar(36) DEFAULT NULL,
  `FilePath` text,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_ExtraSeatVisuals`
--

LOCK TABLES `Cfg_ExtraSeatVisuals` WRITE;
/*!40000 ALTER TABLE `Cfg_ExtraSeatVisuals` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_ExtraSeatVisuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_FareBasisCodes`
--

DROP TABLE IF EXISTS `Cfg_FareBasisCodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_FareBasisCodes` (
  `Cabin` varchar(3) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `FareBasis` varchar(36) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `ActionCode` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_FareBasisCodes`
--

LOCK TABLES `Cfg_FareBasisCodes` WRITE;
/*!40000 ALTER TABLE `Cfg_FareBasisCodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_FareBasisCodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_OfferMgmtExtraSeatBasicDetails`
--

DROP TABLE IF EXISTS `Cfg_OfferMgmtExtraSeatBasicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_OfferMgmtExtraSeatBasicDetails` (
  `OfferID` varchar(36) DEFAULT NULL,
  `OfferTitle` varchar(200) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `RuleMode` varchar(36) DEFAULT NULL,
  `RuleType` varchar(36) DEFAULT NULL,
  `DaysOfWeek` varchar(1) DEFAULT NULL,
  `OfferForever` int(1) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `BookingDateCondition` int(1) DEFAULT NULL,
  `BookingStartDate` datetime DEFAULT NULL,
  `BookingEndDate` datetime DEFAULT NULL,
  `DepBookDateCondition` varchar(3) DEFAULT NULL,
  `Route` longtext,
  `Leg` longtext,
  `FlightNo` longtext,
  `POS` longtext,
  `RBD` longtext,
  `FareBasis` longtext,
  `PriorityOrder` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_OfferMgmtExtraSeatBasicDetails`
--

LOCK TABLES `Cfg_OfferMgmtExtraSeatBasicDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_OfferMgmtExtraSeatBasicDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_OfferMgmtExtraSeatBasicDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_OfferMgmtExtraSeatDynamicPricing`
--

DROP TABLE IF EXISTS `Cfg_OfferMgmtExtraSeatDynamicPricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_OfferMgmtExtraSeatDynamicPricing` (
  `DPID` varchar(36) DEFAULT NULL,
  `OfferID` varchar(36) DEFAULT NULL,
  `AMin` decimal(5,2) DEFAULT NULL,
  `AMax` decimal(5,2) DEFAULT NULL,
  `BMin` decimal(5,2) DEFAULT NULL,
  `BMax` decimal(5,2) DEFAULT NULL,
  `CMin` decimal(5,2) DEFAULT NULL,
  `CMax` decimal(5,2) DEFAULT NULL,
  `APercent` decimal(5,2) DEFAULT NULL,
  `BPercent` decimal(5,2) DEFAULT NULL,
  `CPercent` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_OfferMgmtExtraSeatDynamicPricing`
--

LOCK TABLES `Cfg_OfferMgmtExtraSeatDynamicPricing` WRITE;
/*!40000 ALTER TABLE `Cfg_OfferMgmtExtraSeatDynamicPricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_OfferMgmtExtraSeatDynamicPricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_OfferMgmtSeatUpgradeBasicDetails`
--

DROP TABLE IF EXISTS `Cfg_OfferMgmtSeatUpgradeBasicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_OfferMgmtSeatUpgradeBasicDetails` (
  `OfferID` varchar(36) DEFAULT NULL,
  `OfferTitle` varchar(200) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `RuleMode` varchar(36) DEFAULT NULL,
  `RuleType` varchar(36) DEFAULT NULL,
  `DaysOfWeek` varchar(1) DEFAULT NULL,
  `OfferForever` int(1) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `BookingDateCondition` int(1) DEFAULT NULL,
  `BookingStartDate` datetime DEFAULT NULL,
  `BookingEndDate` datetime DEFAULT NULL,
  `DepBookDateCondition` varchar(3) DEFAULT NULL,
  `Route` longtext,
  `Leg` longtext,
  `FlightNo` longtext,
  `POS` longtext,
  `RBD` longtext,
  `FareBasis` longtext,
  `PriorityOrder` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_OfferMgmtSeatUpgradeBasicDetails`
--

LOCK TABLES `Cfg_OfferMgmtSeatUpgradeBasicDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_OfferMgmtSeatUpgradeBasicDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_OfferMgmtSeatUpgradeBasicDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_OfferMgmtSeatUpgradeDynamicPricing`
--

DROP TABLE IF EXISTS `Cfg_OfferMgmtSeatUpgradeDynamicPricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_OfferMgmtSeatUpgradeDynamicPricing` (
  `DPID` varchar(36) DEFAULT NULL,
  `OfferID` varchar(36) DEFAULT NULL,
  `AMin` decimal(5,2) DEFAULT NULL,
  `AMax` decimal(5,2) DEFAULT NULL,
  `BMin` decimal(5,2) DEFAULT NULL,
  `BMax` decimal(5,2) DEFAULT NULL,
  `CMin` decimal(5,2) DEFAULT NULL,
  `CMax` decimal(5,2) DEFAULT NULL,
  `APercent` decimal(5,2) DEFAULT NULL,
  `BPercent` decimal(5,2) DEFAULT NULL,
  `CPercent` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_OfferMgmtSeatUpgradeDynamicPricing`
--

LOCK TABLES `Cfg_OfferMgmtSeatUpgradeDynamicPricing` WRITE;
/*!40000 ALTER TABLE `Cfg_OfferMgmtSeatUpgradeDynamicPricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_OfferMgmtSeatUpgradeDynamicPricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_Roles`
--

DROP TABLE IF EXISTS `Cfg_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_Roles` (
  `RoleID` varchar(36) DEFAULT NULL,
  `RoleName` varchar(36) DEFAULT NULL,
  `RoleDescription` varchar(100) DEFAULT NULL,
  `InHouseUser` int(1) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_Roles`
--

LOCK TABLES `Cfg_Roles` WRITE;
/*!40000 ALTER TABLE `Cfg_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_SSRCodes`
--

DROP TABLE IF EXISTS `Cfg_SSRCodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_SSRCodes` (
  `SSRCode` varchar(10) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `ActionCode` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_SSRCodes`
--

LOCK TABLES `Cfg_SSRCodes` WRITE;
/*!40000 ALTER TABLE `Cfg_SSRCodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_SSRCodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_SeatUpgradeBasicDetails`
--

DROP TABLE IF EXISTS `Cfg_SeatUpgradeBasicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_SeatUpgradeBasicDetails` (
  `ProductID` varchar(36) DEFAULT NULL,
  `ProductTitle` varchar(200) DEFAULT NULL,
  `ProductType` varchar(50) DEFAULT NULL,
  `ProductVariant` varchar(36) DEFAULT NULL,
  `FromCabin` varchar(1) DEFAULT NULL,
  `ToCabin` varchar(1) DEFAULT NULL,
  `Provider` varchar(36) DEFAULT NULL,
  `ProductDescription` blob,
  `ThumbnailImages` text,
  `BannerImages` text,
  `PaymentMethod` int(1) DEFAULT NULL,
  `CabinVisualsForAll` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_SeatUpgradeBasicDetails`
--

LOCK TABLES `Cfg_SeatUpgradeBasicDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeBasicDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeBasicDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_SeatUpgradeCabinVisuals`
--

DROP TABLE IF EXISTS `Cfg_SeatUpgradeCabinVisuals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_SeatUpgradeCabinVisuals` (
  `VID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `Aircraft` varchar(36) DEFAULT NULL,
  `FileType` varchar(36) DEFAULT NULL,
  `FilePath` text,
  `Cabin` varchar(3) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_SeatUpgradeCabinVisuals`
--

LOCK TABLES `Cfg_SeatUpgradeCabinVisuals` WRITE;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeCabinVisuals` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeCabinVisuals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_SeatUpgradeCustomSettings`
--

DROP TABLE IF EXISTS `Cfg_SeatUpgradeCustomSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_SeatUpgradeCustomSettings` (
  `CSID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `CheckTypes` varchar(200) DEFAULT NULL,
  `EnabledOrNot` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_SeatUpgradeCustomSettings`
--

LOCK TABLES `Cfg_SeatUpgradeCustomSettings` WRITE;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeCustomSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeCustomSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_SeatUpgradeFareDetails`
--

DROP TABLE IF EXISTS `Cfg_SeatUpgradeFareDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_SeatUpgradeFareDetails` (
  `FareID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `FareFamily` varchar(36) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `FlightNo` varchar(6) DEFAULT NULL,
  `FromRBD` varchar(36) DEFAULT NULL,
  `FromCabin` varchar(1) DEFAULT NULL,
  `ToCabin` varchar(1) DEFAULT NULL,
  `MinPrice` int(10) DEFAULT NULL,
  `MaxPrice` int(10) DEFAULT NULL,
  `BuyPrice` int(10) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_SeatUpgradeFareDetails`
--

LOCK TABLES `Cfg_SeatUpgradeFareDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeFareDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeFareDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_SeatUpgradeTaxDetails`
--

DROP TABLE IF EXISTS `Cfg_SeatUpgradeTaxDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_SeatUpgradeTaxDetails` (
  `TaxID` varchar(36) DEFAULT NULL,
  `ProductID` varchar(36) DEFAULT NULL,
  `FromCabin` varchar(1) DEFAULT NULL,
  `ToCabin` varchar(1) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `TaxCode` varchar(6) DEFAULT NULL,
  `CurrencyCode` varchar(3) DEFAULT NULL,
  `Rate` decimal(10,2) DEFAULT NULL,
  `PercentOrAbsolute` varchar(36) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_SeatUpgradeTaxDetails`
--

LOCK TABLES `Cfg_SeatUpgradeTaxDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeTaxDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_SeatUpgradeTaxDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cfg_UserBasicDetails`
--

DROP TABLE IF EXISTS `Cfg_UserBasicDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cfg_UserBasicDetails` (
  `UserID` varchar(36) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `EmailID` varchar(200) DEFAULT NULL,
  `RoleID` varchar(36) DEFAULT NULL,
  `EntityID` varchar(36) DEFAULT NULL,
  `EmployeeID` varchar(100) DEFAULT NULL,
  `ProfilePic` text,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cfg_UserBasicDetails`
--

LOCK TABLES `Cfg_UserBasicDetails` WRITE;
/*!40000 ALTER TABLE `Cfg_UserBasicDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cfg_UserBasicDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Das_ExchangeRates`
--

DROP TABLE IF EXISTS `Das_ExchangeRates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Das_ExchangeRates` (
  `Snapshot` datetime DEFAULT NULL,
  `FromCurrency` varchar(3) DEFAULT NULL,
  `ToCurrency` varchar(3) DEFAULT NULL,
  `ConversionRate` decimal(20,8) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Das_ExchangeRates`
--

LOCK TABLES `Das_ExchangeRates` WRITE;
/*!40000 ALTER TABLE `Das_ExchangeRates` DISABLE KEYS */;
/*!40000 ALTER TABLE `Das_ExchangeRates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Das_FlightSchedules`
--

DROP TABLE IF EXISTS `Das_FlightSchedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Das_FlightSchedules` (
  `Route` varchar(6) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Aircraft` varchar(10) DEFAULT NULL,
  `FlightNo` varchar(10) DEFAULT NULL,
  `Cabin` varchar(3) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `Capacity` int(3) DEFAULT NULL,
  `SeatsAvailable` int(3) DEFAULT NULL,
  `LoadFactor` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Das_FlightSchedules`
--

LOCK TABLES `Das_FlightSchedules` WRITE;
/*!40000 ALTER TABLE `Das_FlightSchedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `Das_FlightSchedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Das_TicketingData`
--

DROP TABLE IF EXISTS `Das_TicketingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Das_TicketingData` (
  `PNR` varchar(6) DEFAULT NULL,
  `TicketNo` varchar(6) DEFAULT NULL,
  `BookingDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `BookingStatus` varchar(3) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `Cabin` varchar(3) DEFAULT NULL,
  `FareFamily` varchar(36) DEFAULT NULL,
  `FareBasisCode` varchar(36) DEFAULT NULL,
  `Title` varchar(36) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Gender` varchar(36) DEFAULT NULL,
  `EmailID` varchar(100) DEFAULT NULL,
  `PrimaryPhone` varchar(100) DEFAULT NULL,
  `SecondaryPhone` varchar(100) DEFAULT NULL,
  `PaxType` varchar(36) DEFAULT NULL,
  `FlightNo` varchar(36) DEFAULT NULL,
  `Aircraft` varchar(36) DEFAULT NULL,
  `IATACode` varchar(36) DEFAULT NULL,
  `TIDS` varchar(36) DEFAULT NULL,
  `LoyaltyProgramNo` varchar(36) DEFAULT NULL,
  `SSRCode` text,
  `SeatSelected` varchar(100) DEFAULT NULL,
  `UniqueIdentifier` varchar(50) DEFAULT NULL,
  `FlownOrNot` int(1) DEFAULT NULL,
  `LoadType` int(1) DEFAULT NULL,
  `Channel` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Das_TicketingData`
--

LOCK TABLES `Das_TicketingData` WRITE;
/*!40000 ALTER TABLE `Das_TicketingData` DISABLE KEYS */;
/*!40000 ALTER TABLE `Das_TicketingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log_AdminAudit`
--

DROP TABLE IF EXISTS `Log_AdminAudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log_AdminAudit` (
  `AAID` varchar(36) DEFAULT NULL,
  `UserID` varchar(36) DEFAULT NULL,
  `EventID` varchar(36) DEFAULT NULL,
  `ModuleName` varchar(200) DEFAULT NULL,
  `IP` varchar(50) DEFAULT NULL,
  `UserAgent` text,
  `LoggedTime` datetime DEFAULT NULL,
  `Request` longtext,
  `Response` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log_AdminAudit`
--

LOCK TABLES `Log_AdminAudit` WRITE;
/*!40000 ALTER TABLE `Log_AdminAudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `Log_AdminAudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log_TicketingData`
--

DROP TABLE IF EXISTS `Log_TicketingData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log_TicketingData` (
  `PNR` varchar(6) DEFAULT NULL,
  `TicketNo` varchar(6) DEFAULT NULL,
  `BookingDate` datetime DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `ArrivalDate` datetime DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `BookingStatus` varchar(3) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `Cabin` varchar(3) DEFAULT NULL,
  `FareFamily` varchar(36) DEFAULT NULL,
  `FareBasisCode` varchar(36) DEFAULT NULL,
  `Title` varchar(36) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Gender` varchar(36) DEFAULT NULL,
  `EmailID` varchar(100) DEFAULT NULL,
  `PrimaryPhone` varchar(100) DEFAULT NULL,
  `SecondaryPhone` varchar(100) DEFAULT NULL,
  `PaxType` varchar(36) DEFAULT NULL,
  `FlightNo` varchar(36) DEFAULT NULL,
  `Aircraft` varchar(36) DEFAULT NULL,
  `IATACode` varchar(36) DEFAULT NULL,
  `TIDS` varchar(36) DEFAULT NULL,
  `LoyaltyProgramNo` varchar(36) DEFAULT NULL,
  `SSRCode` text,
  `SeatSelected` varchar(100) DEFAULT NULL,
  `UniqueIdentifier` varchar(50) DEFAULT NULL,
  `FlownOrNot` int(1) DEFAULT NULL,
  `LoadType` int(1) DEFAULT NULL,
  `Channel` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log_TicketingData`
--

LOCK TABLES `Log_TicketingData` WRITE;
/*!40000 ALTER TABLE `Log_TicketingData` DISABLE KEYS */;
/*!40000 ALTER TABLE `Log_TicketingData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas_AuditEventTypes`
--

DROP TABLE IF EXISTS `Mas_AuditEventTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas_AuditEventTypes` (
  `EventID` varchar(36) DEFAULT NULL,
  `EventType` varchar(36) DEFAULT NULL,
  `EventDescription` varchar(100) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas_AuditEventTypes`
--

LOCK TABLES `Mas_AuditEventTypes` WRITE;
/*!40000 ALTER TABLE `Mas_AuditEventTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas_AuditEventTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas_CabinRBDMapping`
--

DROP TABLE IF EXISTS `Mas_CabinRBDMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas_CabinRBDMapping` (
  `Cabin` varchar(3) DEFAULT NULL,
  `CabinName` varchar(36) DEFAULT NULL,
  `RBD` varchar(3) DEFAULT NULL,
  `SortOrder` int(1) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas_CabinRBDMapping`
--

LOCK TABLES `Mas_CabinRBDMapping` WRITE;
/*!40000 ALTER TABLE `Mas_CabinRBDMapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas_CabinRBDMapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas_ExchangeRates`
--

DROP TABLE IF EXISTS `Mas_ExchangeRates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas_ExchangeRates` (
  `UpdatedOn` datetime DEFAULT NULL,
  `FromCurrencyISO3` varchar(3) DEFAULT NULL,
  `ToCurrencyISO3` varchar(3) DEFAULT NULL,
  `ToRate` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas_ExchangeRates`
--

LOCK TABLES `Mas_ExchangeRates` WRITE;
/*!40000 ALTER TABLE `Mas_ExchangeRates` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas_ExchangeRates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas_FareFamilies`
--

DROP TABLE IF EXISTS `Mas_FareFamilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas_FareFamilies` (
  `FFID` varchar(36) DEFAULT NULL,
  `FareFamily` varchar(36) DEFAULT NULL,
  `OrderInfo` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas_FareFamilies`
--

LOCK TABLES `Mas_FareFamilies` WRITE;
/*!40000 ALTER TABLE `Mas_FareFamilies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas_FareFamilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas_POSMapping`
--

DROP TABLE IF EXISTS `Mas_POSMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas_POSMapping` (
  `POS` varchar(36) DEFAULT NULL,
  `CountryISO2` varchar(2) DEFAULT NULL,
  `CountryISO3` varchar(3) DEFAULT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  `PhoneCode` varchar(10) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `CurrencyISO3` varchar(3) DEFAULT NULL,
  `CurrencyName` varchar(100) DEFAULT NULL,
  `UTCTimeDifference` int(1) DEFAULT NULL,
  `CountryFlag` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas_POSMapping`
--

LOCK TABLES `Mas_POSMapping` WRITE;
/*!40000 ALTER TABLE `Mas_POSMapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas_POSMapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mas_RouteLegFlightCabinMapping`
--

DROP TABLE IF EXISTS `Mas_RouteLegFlightCabinMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mas_RouteLegFlightCabinMapping` (
  `RegionName` varchar(36) DEFAULT NULL,
  `CountryISO2` varchar(2) DEFAULT NULL,
  `CountryISO3` varchar(3) DEFAULT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  `Route` varchar(6) DEFAULT NULL,
  `Leg` varchar(6) DEFAULT NULL,
  `FlightNo` varchar(6) DEFAULT NULL,
  `Cabin` varchar(1) DEFAULT NULL,
  `Aircraft` varchar(36) DEFAULT NULL,
  `RegionGroup` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mas_RouteLegFlightCabinMapping`
--

LOCK TABLES `Mas_RouteLegFlightCabinMapping` WRITE;
/*!40000 ALTER TABLE `Mas_RouteLegFlightCabinMapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mas_RouteLegFlightCabinMapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-01 19:26:22
