CREATE DATABASE  IF NOT EXISTS `rulez` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rulez`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: rulez
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Temporary view structure for view `audiosource`
--

DROP TABLE IF EXISTS `audiosource`;
/*!50001 DROP VIEW IF EXISTS `audiosource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `audiosource` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `workflow_id`,
 1 AS `updated_ts`,
 1 AS `heightI`,
 1 AS `color`,
 1 AS `height`,
 1 AS `size`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `fact`
--

DROP TABLE IF EXISTS `fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact` (
  `id` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `workflow_id` int DEFAULT NULL,
  `updated_ts` timestamp NULL DEFAULT NULL,
  `created_ts` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `idx_workflow_id` (`workflow_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact`
--

LOCK TABLES `fact` WRITE;
/*!40000 ALTER TABLE `fact` DISABLE KEYS */;
INSERT INTO `fact` VALUES (1,'VideoSource','first product',1,'2021-08-26 06:09:20','2021-08-29 00:10:06'),(2,'AudioSource','second product',1,'2021-08-26 06:09:20','2021-08-29 00:10:06'),(3,'SubTitleSource',NULL,1,'2021-08-27 07:10:21','2021-08-29 00:10:06'),(4,'AudioSource','another AudioSource',1,'2021-08-29 04:51:10','2021-08-29 00:10:06');
/*!40000 ALTER TABLE `fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `int_attributes`
--

DROP TABLE IF EXISTS `int_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `int_attributes` (
  `id` int NOT NULL,
  `fieldname` varchar(10) NOT NULL,
  `fieldvalue` int DEFAULT NULL,
  PRIMARY KEY (`id`,`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY KEY ()
PARTITIONS 10 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `int_attributes`
--

LOCK TABLES `int_attributes` WRITE;
/*!40000 ALTER TABLE `int_attributes` DISABLE KEYS */;
INSERT INTO `int_attributes` VALUES (3,'heightI',3),(1,'bitrate',1000),(5,'heightI',5),(4,'heightI',4),(6,'heightI',6),(1,'heightI',103),(2,'heightI',2);
/*!40000 ALTER TABLE `int_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `str_attributes`
--

DROP TABLE IF EXISTS `str_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `str_attributes` (
  `id` int NOT NULL,
  `fieldname` varchar(10) NOT NULL,
  `fieldvalue` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`fieldname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY KEY (id)
PARTITIONS 10 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `str_attributes`
--

LOCK TABLES `str_attributes` WRITE;
/*!40000 ALTER TABLE `str_attributes` DISABLE KEYS */;
INSERT INTO `str_attributes` VALUES (2,'color','black'),(2,'height','13'),(2,'size','L'),(1,'color','red'),(1,'height','103'),(1,'size','S');
/*!40000 ALTER TABLE `str_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `subtitlesource`
--

DROP TABLE IF EXISTS `subtitlesource`;
/*!50001 DROP VIEW IF EXISTS `subtitlesource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `subtitlesource` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `workflow_id`,
 1 AS `updated_ts`,
 1 AS `heightI`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `touch`
--

DROP TABLE IF EXISTS `touch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `touch` (
  `workflow_id` int NOT NULL,
  `rule` varchar(45) NOT NULL,
  `fact_set_hash` varchar(45) NOT NULL,
  `evaluated_ts` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`workflow_id`,`rule`,`fact_set_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY KEY ()
PARTITIONS 10 */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `touch`
--

LOCK TABLES `touch` WRITE;
/*!40000 ALTER TABLE `touch` DISABLE KEYS */;
INSERT INTO `touch` VALUES (1,'rule1','37693cfc748049e45d87b8c7d8b9aacd','2021-08-29 04:49:08');
/*!40000 ALTER TABLE `touch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `videosource`
--

DROP TABLE IF EXISTS `videosource`;
/*!50001 DROP VIEW IF EXISTS `videosource`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `videosource` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `description`,
 1 AS `workflow_id`,
 1 AS `updated_ts`,
 1 AS `bitrate`,
 1 AS `heightI`,
 1 AS `color`,
 1 AS `height`,
 1 AS `size`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'rulez'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN

  select *, 
	MD5(CONCAT(va.id,`as`.id, ss.id)), 
    GREATEST(va.update_ts, `as`.update_ts, ss.update_ts) as GREATEST_ts
from ( select * from new_view where name = 'VideoSource') as va
join ( select * from new_view where name = 'AudioSource') as `as`
join ( select * from new_view where name = 'SubTitleSource') as ss
where `as`.bitrate > 100
having GREATEST_ts > TIMESTAMP("2021-07-30",  "13:10:11");

select 
	"sdf" as "rule_name", 
    "abc" as "extra",
    now() as "evaluate_ts",
    
@@session.pseudo_thread_id as "asd"
    ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spCreateOrReplaceFactViews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spCreateOrReplaceFactViews`()
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE fname varchar(100);
	DECLARE curFactname CURSOR FOR
		select distinct name from fact;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

	OPEN curFactname;

	factNameLoop: LOOP
			FETCH curFactname INTO fname;
			IF finished = 1 THEN 
				LEAVE factNameLoop;
			END IF;
			if fname is not NULL THEN
				call spGetFactColumnNames(fname, @emailList);

				SET @sql = CONCAT('CREATE OR REPLACE VIEW ', fname, ' AS ', @emailList);

				PREPARE stmt FROM @sql;
				EXECUTE stmt;

				select  @emailList;
				PREPARE stmt FROM @emailList;
				EXECUTE stmt;
				DEALLOCATE PREPARE stmt;
			END IF;
	END LOOP;
	CLOSE curFactname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spFindRuleMatches` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spFindRuleMatches`()
BEGIN

    select *, 
        MD5(CONCAT(asource.id, ssource.id)) as hash, 
        GREATEST(asource.updated_ts, ssource.updated_ts) as GREATEST_ts,
        "rule1" as rule
    from ( select * from AudioSource) as asource
    join ( select * from SubTitleSource) as ssource using (workflow_id)
    left join touch as t using (workflow_id)
    where workflow_id=1 and (t.rule = 'rule1' or t.rule is NULL)
    having (GREATEST_ts > t.evaluated_ts or t.evaluated_ts is NULL);

select *, 
	MD5(CONCAT(asource.id, ssource.id)) as hash, 
    GREATEST(asource.updated_ts, ssource.updated_ts) as GREATEST_ts,
    "rule1" as rule
from ( select * from AudioSource) as asource
join ( select * from SubTitleSource) as ssource using (workflow_id)
left join touch as t using (workflow_id)
where workflow_id=1 and (t.rule = 'rule1' or t.rule is NULL)
having (GREATEST_ts > t.evaluated_ts or t.evaluated_ts is NULL);




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetFactColumnNames` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetFactColumnNames`(
	IN factName varchar(25),
	OUT columnList varchar(900) 
)
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
    DECLARE fname varchar(100);
    DECLARE intcur CURSOR FOR
		SELECT DISTINCT fieldname
		FROM   fact AS f
               LEFT JOIN int_attributes using (id) WHERE f.name = factName;
    DECLARE strcur CURSOR FOR
        SELECT fieldname
        FROM   fact AS f
               LEFT JOIN str_attributes using (id) WHERE f.name = factName;
               
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

	SET columnList := "";
    
	OPEN intcur;

	getEmail: LOOP
			FETCH intcur INTO fname;
			IF finished = 1 THEN 
				LEAVE getEmail;
			END IF;
			if fname is not NULL THEN
				SET columnList := CONCAT(
					columnList,
					if(columnList='','',', '),
					'MAX(IF(ia.fieldname = ''', fname, ''', ia.fieldvalue, NULL)) AS ', fname
			);
			END IF;
	END LOOP;
	CLOSE intcur;
    
	OPEN strcur;
	SET finished := 0;
	getEmail: LOOP
			FETCH strcur INTO fname;
			IF finished = 1 THEN 
				LEAVE getEmail;
			END IF;
			if fname is not NULL THEN
				SET columnList := CONCAT(
					columnList,
					if(columnList='','',', '),
					'MAX(IF(sa.fieldname = ''', fname, ''', sa.fieldvalue, NULL)) AS ', fname
			);
			END IF;
	END LOOP;
	CLOSE strcur;

    SET columnList := CONCAT('SELECT f.id, f.name, f.description, f.workflow_id, f.updated_ts, ', 
				   columnList,' 
                   FROM fact f
                   LEFT JOIN str_attributes AS sa 
                   USING (id)
                   LEFT JOIN int_attributes AS ia 
                   USING (id)
                   WHERE f.name = ''', factName, '''
				   GROUP BY f.id, f.name, f.description');
                   
	SELECT columnList;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spGetFacts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetFacts`(IN  factName varchar(25))
BEGIN

SET @sql = '';

SELECT @sql := CONCAT(@sql,if(@sql='','',', '),temp.output)
FROM
(
    SELECT
      DISTINCT
        CONCAT(
         'MAX(IF(sa.fieldname = ''',
          fieldname,
          ''', sa.fieldvalue, NULL)) AS ',
          fieldname
        ) as output
    FROM
        str_attributes
) as temp;

SELECT @sql := CONCAT(@sql,if(@sql='','',', '),temp.output)
FROM
(
    SELECT
      DISTINCT
        CONCAT(
         'MAX(IF(ia.fieldname = ''',
          fieldname,
          ''', ia.fieldvalue, NULL)) AS ',
          fieldname
        ) as output
    FROM
        int_attributes
) as temp;


SET @sql = CONCAT('SELECT f.id, f.name, f.description, ', @sql, ' 
                   FROM fact f
                   LEFT JOIN str_attributes AS sa
                   USING (id)
                   LEFT JOIN int_attributes AS ia 
                   USING (id)
                   WHERE f.name = ''', factName, '''
                   GROUP BY f.id, f.name, f.description');
                   

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `audiosource`
--

/*!50001 DROP VIEW IF EXISTS `audiosource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `audiosource` AS select `f`.`id` AS `id`,`f`.`name` AS `name`,`f`.`description` AS `description`,`f`.`workflow_id` AS `workflow_id`,`f`.`updated_ts` AS `updated_ts`,max(if((`ia`.`fieldname` = 'heightI'),`ia`.`fieldvalue`,NULL)) AS `heightI`,max(if((`sa`.`fieldname` = 'color'),`sa`.`fieldvalue`,NULL)) AS `color`,max(if((`sa`.`fieldname` = 'height'),`sa`.`fieldvalue`,NULL)) AS `height`,max(if((`sa`.`fieldname` = 'size'),`sa`.`fieldvalue`,NULL)) AS `size` from ((`fact` `f` left join `str_attributes` `sa` on((`f`.`id` = `sa`.`id`))) left join `int_attributes` `ia` on((`f`.`id` = `ia`.`id`))) where (`f`.`name` = 'AudioSource') group by `f`.`id`,`f`.`name`,`f`.`description` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `subtitlesource`
--

/*!50001 DROP VIEW IF EXISTS `subtitlesource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `subtitlesource` AS select `f`.`id` AS `id`,`f`.`name` AS `name`,`f`.`description` AS `description`,`f`.`workflow_id` AS `workflow_id`,`f`.`updated_ts` AS `updated_ts`,max(if((`ia`.`fieldname` = 'heightI'),`ia`.`fieldvalue`,NULL)) AS `heightI` from ((`fact` `f` left join `str_attributes` `sa` on((`f`.`id` = `sa`.`id`))) left join `int_attributes` `ia` on((`f`.`id` = `ia`.`id`))) where (`f`.`name` = 'SubTitleSource') group by `f`.`id`,`f`.`name`,`f`.`description` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `videosource`
--

/*!50001 DROP VIEW IF EXISTS `videosource`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videosource` AS select `f`.`id` AS `id`,`f`.`name` AS `name`,`f`.`description` AS `description`,`f`.`workflow_id` AS `workflow_id`,`f`.`updated_ts` AS `updated_ts`,max(if((`ia`.`fieldname` = 'bitrate'),`ia`.`fieldvalue`,NULL)) AS `bitrate`,max(if((`ia`.`fieldname` = 'heightI'),`ia`.`fieldvalue`,NULL)) AS `heightI`,max(if((`sa`.`fieldname` = 'color'),`sa`.`fieldvalue`,NULL)) AS `color`,max(if((`sa`.`fieldname` = 'height'),`sa`.`fieldvalue`,NULL)) AS `height`,max(if((`sa`.`fieldname` = 'size'),`sa`.`fieldvalue`,NULL)) AS `size` from ((`fact` `f` left join `str_attributes` `sa` on((`f`.`id` = `sa`.`id`))) left join `int_attributes` `ia` on((`f`.`id` = `ia`.`id`))) where (`f`.`name` = 'VideoSource') group by `f`.`id`,`f`.`name`,`f`.`description` */;
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

-- Dump completed on 2021-08-28 22:27:39
