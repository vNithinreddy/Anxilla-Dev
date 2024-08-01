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
-- Dumping routines for database 'anxillaretailing'
--
/*!50003 DROP PROCEDURE IF EXISTS `Daily_PNR_Load` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`test1`@`%` PROCEDURE `Daily_PNR_Load`()
BEGIN
	-- ADD_NEW_PNR
	INSERT INTO Ticketing (
			PNR, BookingID, Created_Bookingdate, Modified_Bookingdate, passengerID, SegmentID, InventoryLegID, DepartureDate,
			STD, STA, DepartureStation, ArrivalStation, BookingStatus, ClassOfService,farefamily, Title, FirstName, MiddleName, LastName,
			Gender, DOB, EmailAddress, HomePhone, WorkPhone, Channel, PaxType, CreatedLocationCode, FareClassOfService, FareBasis,
			FlightNumber, Aircraft, Capacity, CarrierCode, OperatingCarrier, CompartmentDesignator, UnitDesignator, Snapshot, UniqueIdentifier
		)
	select T.PNR, T.BookingID, T.Created_Bookingdate, T.Modified_Bookingdate, T.passengerID, T.SegmentID, T.InventoryLegID, T.DepartureDate,
		T.STD, T.STA, T.DepartureStation, T.ArrivalStation, T.BookingStatus, T.ClassOfService, R.Segment, T.Title, T.FirstName, T.MiddleName, T.LastName,
		T.Gender, T.DOB, T.EmailAddress, T.HomePhone, T.WorkPhone, T.Channel, T.PaxType, T.CreatedLocationCode, T.FareClassOfService, T.FareBasis,
		T.FlightNumber, T.Aircraft, T.Capacity, T.CarrierCode, T.OperatingCarrier, T.CompartmentDesignator, T.UnitDesignator, T.Snapshot, T.UniqueIdentifier
		FROM Ticketing_Archive as T
			Left join FY_RBD_Mapping as R on T.ClassOfService=R.RBD
	where PNR not in ( select distinct PNR from Ticketing) and date(T.Snapshot)=CURDATE();
	
    -- Creating a temp table for store the modified data
	DROP TEMPORARY TABLE IF EXISTS modified_PNR;
	CREATE TEMPORARY TABLE modified_PNR	as
	select distinct t.PNR from (select distinct tt.* from Ticketing as tt
		inner join (select * from Ticketing_Archive where DATE(snapshot) = CURDATE()) as tta
		 on tt.PNR = tta.PNR
		 ) t
		 left join (select * from Ticketing_Archive where DATE(snapshot) = CURDATE()) ta
		 on t.PNR = ta.PNR
		 and t.passengerID=ta.passengerID
		 and t.SegmentID=ta.SegmentID
		 and t.DepartureDate=ta.DepartureDate
		 and t.DepartureStation=ta.DepartureStation
		 and t.ArrivalStation=ta.ArrivalStation
		 and t.ClassOfService=ta.ClassOfService
		 and t.FlightNumber=ta.FlightNumber
		 where  ta.PNR is null;
		 
	-- Delete modified data from Ticketing 
	Delete from Ticketing where PNR in (select distinct PNR from modified_PNR);

	-- Insert Modified data to Ticketing 
	INSERT INTO Ticketing (
			PNR, BookingID, Created_Bookingdate, Modified_Bookingdate, passengerID, SegmentID, InventoryLegID, DepartureDate,
			STD, STA, DepartureStation, ArrivalStation, BookingStatus, ClassOfService,farefamily, Title, FirstName, MiddleName, LastName,
			Gender, DOB, EmailAddress, HomePhone, WorkPhone, Channel, PaxType, CreatedLocationCode, FareClassOfService, FareBasis,
			FlightNumber, Aircraft, Capacity, CarrierCode, OperatingCarrier, CompartmentDesignator, UnitDesignator, Snapshot, UniqueIdentifier
		)
	select T.PNR, T.BookingID, T.Created_Bookingdate, T.Modified_Bookingdate, T.passengerID, T.SegmentID, T.InventoryLegID, T.DepartureDate,
		T.STD, T.STA, T.DepartureStation, T.ArrivalStation, T.BookingStatus, T.ClassOfService, R.Segment, T.Title, T.FirstName, T.MiddleName, T.LastName,
		T.Gender, T.DOB, T.EmailAddress, T.HomePhone, T.WorkPhone, T.Channel, T.PaxType, T.CreatedLocationCode, T.FareClassOfService, T.FareBasis,
		T.FlightNumber, T.Aircraft, T.Capacity, T.CarrierCode, T.OperatingCarrier, T.CompartmentDesignator, T.UnitDesignator, T.Snapshot, T.UniqueIdentifier
		FROM Ticketing_Archive as T
			Left join FY_RBD_Mapping as R on T.ClassOfService=R.RBD
	where DATE(snapshot) = CURDATE() and PNR in (select distinct PNR from modified_PNR);
	
            
    DELETE SSR FROM DS_PassengerJourneySSR SSR
    INNER JOIN DS_PassengerJourneySSRArchive SSRA ON 
         SSR.passengerID = SSRA.passengerID
    WHERE DATE(SSRA.snapshot) = CURDATE();
    
    INSERT INTO DS_PassengerJourneySSR (
        PassengerID, SegmentID, LegNumber, SSRCode, SSRNumber, CreatedUserID, CreatedUTC, ModifiedUserID, ModifiedUTC,
        SSRDetail, FeeCode, UnitValue, Note, Status, IsInServiceBundle, Snapshot
    )
    SELECT
        PassengerID, SegmentID, LegNumber, SSRCode, SSRNumber, CreatedUserID, CreatedUTC, ModifiedUserID, ModifiedUTC,
        SSRDetail, FeeCode, UnitValue, Note, Status, IsInServiceBundle, NOW() as Snapshot
    FROM
        DS_PassengerJourneySSRArchive 
    WHERE
        DATE(snapshot) = CURDATE();
	
    -- Updating status in SysCartdetails
    UPDATE Sys_CartDetails AS t
	JOIN (
		SELECT distinct t.PNR
		FROM (
			SELECT DISTINCT tt.*
			FROM Sys_CartDetails AS tt
			INNER JOIN (
				SELECT *
				FROM Ticketing
			   WHERE DATE(snapshot) = curdate()
			) AS tta ON tt.PNR = tta.PNR
		) AS t
		LEFT JOIN (
			SELECT *
			FROM Ticketing
			WHERE DATE(snapshot) = curdate()
		) AS ta ON t.PNR = ta.PNR
		AND t.passengerID = ta.passengerID
		AND cast(t.DepartureDate as date)  = ta.DepartureDate
		AND t.DepartureStation = ta.DepartureStation
		AND t.ArrivalStation = ta.ArrivalStation
		AND t.FlightNo = ta.FlightNumber
		WHERE ta.PNR IS NULL
	) AS matched_rows ON t.PNR = matched_rows.PNR
	SET t.status = 30;

select * from DS_PassengerJourneySSR;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-01 19:27:16
