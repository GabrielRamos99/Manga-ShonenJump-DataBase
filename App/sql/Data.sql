-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `anime`
--


DROP TABLE IF EXISTS `ANIME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ANIME` (
  `AnimeId` int NOT NULL AUTO_INCREMENT,
  `MangaId` int NOT NULL,
  `StudioId` int NOT NULL,
  `pre_quel` int DEFAULT NULL,
  `animeName` varchar(255) NOT NULL,
  `episode_number` smallint NOT NULL,
  `animeRating` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`AnimeId`),
  KEY `pre_quel` (`pre_quel`),
  KEY `MangaId` (`MangaId`),
  KEY `StudioId` (`StudioId`),
  CONSTRAINT `anime_ibfk_1` FOREIGN KEY (`pre_quel`) REFERENCES `ANIME` (`AnimeId`) ON UPDATE CASCADE,
  CONSTRAINT `anime_ibfk_2` FOREIGN KEY (`MangaId`) REFERENCES `MANGA` (`MangaId`) ON UPDATE CASCADE,
  CONSTRAINT `anime_ibfk_3` FOREIGN KEY (`StudioId`) REFERENCES `STUDIOS` (`StudioId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime`
--

LOCK TABLES `ANIME` WRITE;
/*!40000 ALTER TABLE `anime` DISABLE KEYS */;
INSERT INTO `ANIME` VALUES (1,173,1,NULL,'Naruto',220,7.98,'2002-10-03','2007-02-08'),(2,173,1,1,'Naruto Shippuden',500,8.25,'2007-02-15','2017-03-23'),(3,176,1,2,'Boruto: Naruto the Next Generation ',56,5.74,'2017-04-05',NULL),(4,3,2,NULL,'Bleach',366,7.89,'2004-10-05','2012-03-27'),(5,3,3,4,'Bleach Thowsand Year Blood War Arc',13,9.1,'2022-10-11',NULL),(6,174,3,NULL,'One Piece',1043,8.68,'1999-10-20',NULL),(7,175,4,NULL,'Full Metal Alchemist',51,8.12,'2003-10-04','2004-10-02'),(8,175,4,NULL,'Full Metal Alchemist: Brotherhood',64,9.11,'2009-04-05','2010-07-04'),(9,2,5,NULL,'Black Cat',23,7.34,'2005-10-07','2006-03-31'),(10,4,3,NULL,'Bobobo',76,7.48,'2003-11-08','2005-09-30'),(11,6,6,NULL,'Buso Renkin',26,7.31,'2006-10-05','2007-03-29'),(12,7,7,NULL,'D.Gray-man',103,8.02,'2006-10-03','2008-09-30'),(13,8,8,NULL,'Death Note',37,8.62,'2006-10-04','2007-06-27'),(14,9,9,NULL,'Eyeshield 21',145,7.92,'2005-04-06','2008-03-19'),(15,11,10,NULL,'Gintama',201,8.94,'2006-04-04','2010-03-25'),(16,11,10,15,'Gintama\'',51,9.04,'2011-04-04','2012-03-26'),(17,11,10,16,'Gintama\': Enchousen',13,9.03,'2012-10-04','2013-03-28'),(18,14,8,NULL,'Ichigo 100%',12,6.63,'2005-04-06','2005-06-22'),(19,14,8,18,'Ichigo 100%: Koi ga Hajimaru?! Satsuei Gasshuku - Yureru Kokoro ga Higashi e Nishi e',1,6.83,'2004-09-23','2004-09-23'),(20,15,11,NULL,'JoJo no Kimy na Baken',26,7.9,'2012-10-06','2013-04-06'),(21,17,11,20,'JoJo no Kimy na Baken Part 3: Stardust Crusaders',24,8.1,'2014-04-05','2014-09-13'),(22,18,11,21,'JoJo no Kimy na Baken Part 4: Diamond is Unbreakable',39,8.5,'2016-04-02','2016-12-24'),(23,19,11,22,'JoJo no Kimy na Baken Part 5: Golden Wind',39,8.28,'2018-10-06','2019-07-28'),(24,20,11,23,'JoJo no Kimy na Baken Part 6: Stone Ocean',12,8.25,'2021-12-01','2021-12-01'),(25,21,11,23,'JoJo no Kimy na Baken Part 6: Stone Ocean Part 2',12,8.17,'2022-09-01','2022-09-01'),(26,22,11,23,'JoJo no Kimy na Baken Part 6: Stone Ocean Part 3',14,8.8,'2022-12-01','2022-12-02'),(27,23,12,NULL,'Katekyo Hitman Reborn!',203,8.14,'2006-10-07','2010-09-25'),(28,28,13,NULL,'Muhyo to Rouji no Mahouritsu Soudan Jimusho',12,6.71,'2018-08-03','2018-10-19'),(29,28,13,28,'Muhyo to Rouji no Mahouritsu Soudan Jimusho 2nd Season',12,6.9,'2020-07-07','2020-09-22'),(30,32,14,NULL,'Pyu to Fuku! Jaguar',3,6.6,'2007-11-19','2008-01-21'),(31,43,15,NULL,'Bakuman',25,8.19,'2010-10-02','2011-04-02'),(32,43,15,31,'Bakuman. 2nd Season',25,8.35,'2011-10-01','2012-03-24'),(33,43,15,32,'Bakuman. 3rd Season',25,8.54,'2012-10-06','2013-03-30'),(34,45,2,NULL,'Beelzebub',60,7.87,'2011-01-09','2012-03-25'),(35,47,2,NULL,'Blue Dragon',51,6.38,'2007-04-07','2008-03-29'),(36,54,15,NULL,'Hatsukoi Limited',12,7.28,'2009-04-12','2009-06-29'),(37,58,16,NULL,'Inumarudashii',4,5.15,'2010-06-10','2011-07-22'),(38,62,17,NULL,'Kuroko no Basket',25,8.07,'2012-04-08','2012-09-22'),(39,65,8,NULL,'Majin Tantei Nougami Neuro',25,7.59,'2007-10-03','2008-03-26'),(40,66,18,NULL,'Medaka Box',12,7.03,'2012-04-05','2012-06-21'),(41,66,18,40,'Medaka Box Abnormal',12,7.41,'2012-10-11','2012-12-27'),(42,72,13,NULL,'Nurarihyon no Mago',24,7.62,'2010-07-06','2010-12-21'),(43,72,13,42,'Nurarihyon no Mago: Sennen Makyou',24,7.95,'2011-07-03','2011-12-18'),(44,81,19,NULL,'SKET Dance',77,8.22,'2011-04-07','2012-09-27'),(45,86,6,NULL,'To Love-Ru',26,7,'2008-04-04','2008-09-26'),(46,87,3,NULL,'Toriko',147,7.52,'2001-04-03','2014-03-30'),(47,103,20,NULL,'Nisekoi',20,7.58,'2014-01-11','2014-05-24'),(48,103,20,47,'Nisekoi 2nd Season',12,7.35,'2015-04-10','2015-06-26'),(49,105,17,NULL,'Haikyu!!',25,8.45,'2014-04-06','2014-09-21'),(50,105,17,49,'Haikyu!! Second Season',25,8.64,'2015-10-04','2016-03-27'),(51,105,17,50,'Haikyuu!! Karasuno Koukou vs. Shiratorizawa Gakuen Koukou',10,8.79,'2016-10-08','2016-12-10'),(52,108,15,NULL,'Saiki Kusuo no Psi-nan',120,8.42,'2016-07-04','2016-12-26'),(53,108,15,52,'Saiki Kusuo no Psi-nan 2',24,8.43,'2018-01-17','2018-06-27'),(54,108,15,53,'Saiki Kusuo no ?-nan: Kanketsu-hen',1,8.21,'2018-12-28','2018-12-28'),(55,108,15,54,'Saiki Kusuo no ?-nan: ?-shidou-hen',6,8.11,'2019-12-30','2019-12-30'),(56,110,21,NULL,'Assassination Classroom',22,8.09,'2015-01-10','2015-06-20'),(57,110,21,56,'Assassination Classroom 2nd Season',25,8.5,'2016-01-08','2016-07-01'),(58,116,15,NULL,'Food Wars: Shokugeki no Soma',24,8.17,'2015-04-04','2015-09-26'),(59,116,15,58,'Shokugeki no Souma: Ni no Sara',13,8.1,'2016-07-02','2016-09-24'),(60,127,5,NULL,'Hinomaru Sumo',24,7.56,'2018-10-05','2019-03-29'),(61,128,4,NULL,'Boku no Hero Academia',13,7.91,'2016-04-03','2016-06-26'),(62,128,4,61,'Boku no Hero Academia 2nd Season',25,8.13,'2017-04-01','2017-09-30'),(63,128,4,62,'Boku no Hero Academia 3rd Season',25,8.06,'2018-04-07','2018-09-29'),(64,128,4,63,'Boku no Hero Academia 4th Season',25,7.92,'2019-10-21','2020-04-04'),(65,128,4,64,'Boku no Hero Academia 5th Season',25,7.41,'2021-03-27','2021-09-25'),(66,128,4,65,'Boku no Hero Academia 6th Season',25,8.29,'2022-10-01',NULL),(67,136,7,NULL,'Dr. Stone',24,8.29,'2019-07-05','2019-12-13'),(68,136,7,67,'Dr. Stone: Stone Wars',11,8.18,'2021-01-14','2021-03-25'),(69,136,7,68,'Dr. Stone: Ryuusui',1,8.35,'2022-07-10','2022-07-10'),(70,138,2,NULL,'Black Clover',170,8.13,'2017-10-03','2021-03-30'),(71,149,22,NULL,'Chainsaw Man',12,8.81,'2022-10-12','2022-12-28'),(72,150,22,NULL,'Jujutsu Kaisen',24,8.66,'2020-10-03','2021-03-27'),(73,151,23,NULL,'Kimetsu no Yaiba',26,8.52,'2019-04-06','2019-09-28'),(74,162,6,NULL,'Yuragi-Sou no Yuuna-san',12,7.01,'2018-07-14','2018-09-29'),(75,163,24,NULL,'Bokutachi wa Benkyou ga Dekinai',13,7.29,'2019-04-07','2019-06-30'),(76,163,24,75,'Bokutachi wa Benkyou ga Dekinai!',13,7.35,'2019-10-06','2019-12-29'),(77,165,25,NULL,'Yakusoku no Neverland',12,8.52,'2019-01-10','2019-03-29'),(78,165,25,77,'Yakusoku no Neverland 2nd Season',11,5.33,'2021-01-08','2021-03-26');
/*!40000 ALTER TABLE `anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anime_genre`
--

DROP TABLE IF EXISTS `ANIME_GENRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ANIME_GENRE` (
  `AnimeId` int NOT NULL,
  `GenreId` int NOT NULL,
  PRIMARY KEY (`AnimeId`,`GenreId`),
  KEY `GenreId` (`GenreId`),
  CONSTRAINT `anime_genre_ibfk_1` FOREIGN KEY (`AnimeId`) REFERENCES `ANIME` (`AnimeId`) ON UPDATE CASCADE,
  CONSTRAINT `anime_genre_ibfk_2` FOREIGN KEY (`GenreId`) REFERENCES `GENRE` (`GenreId`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime_genre`
--

LOCK TABLES `ANIME_GENRE` WRITE;
/*!40000 ALTER TABLE `anime_genre` DISABLE KEYS */;
INSERT INTO `ANIME_GENRE` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(11,1),(12,1),(15,1),(16,1),(17,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(34,1),(40,1),(41,1),(42,1),(43,1),(46,1),(56,1),(57,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(70,1),(71,1),(72,1),(73,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(12,2),(20,2),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(35,2),(46,2),(67,2),(68,2),(69,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(11,3),(35,3),(46,3),(70,3),(71,3),(72,3),(73,3),(9,4),(10,4),(11,4),(12,4),(15,4),(16,4),(17,4),(27,4),(30,4),(31,4),(32,4),(33,4),(34,4),(35,4),(36,4),(37,4),(39,4),(40,4),(41,4),(44,4),(45,4),(46,4),(47,4),(48,4),(52,4),(53,4),(54,4),(55,4),(56,4),(57,4),(67,4),(68,4),(69,4),(70,4),(74,4),(75,4),(76,4),(9,5),(10,5),(15,5),(16,5),(17,5),(45,5),(67,5),(68,5),(69,5),(77,5),(78,5),(11,6),(13,6),(20,6),(21,6),(22,6),(23,6),(24,6),(25,6),(26,6),(28,6),(29,6),(34,6),(35,6),(39,6),(42,6),(43,6),(52,6),(53,6),(54,6),(55,6),(74,6),(13,7),(77,7),(78,7),(14,8),(38,8),(49,8),(50,8),(51,8),(60,8),(28,9),(29,9),(39,9),(77,9),(78,9),(7,10),(8,10),(31,10),(32,10),(33,10),(18,11),(19,11),(31,11),(32,11),(33,11),(36,11),(45,11),(47,11),(48,11),(74,11),(75,11),(76,11),(18,12),(19,12),(40,12),(41,12),(58,12),(59,12),(74,12),(46,16),(58,16),(59,16);
/*!40000 ALTER TABLE `anime_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `AUTHORS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHORS` (
  `AuthorId` int NOT NULL AUTO_INCREMENT,
  `authorName` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_death` date DEFAULT NULL,
  PRIMARY KEY (`AuthorId`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `AUTHORS` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `AUTHORS` VALUES (1,'Yuki Kobayashi','Japanese','1978-02-21',NULL),(2,'Kentarou Yabuki','Japanese','1980-02-04',NULL),(3,'Tite kubo','Japanese','1977-06-26',NULL),(4,'Yoshio Sawai','Japanese','1977-03-14',NULL),(5,'Haruto Umezawa','Japanese','1966-03-27',NULL),(6,'Nobuhiro Watsuki','Japanese','1970-05-25',NULL),(7,'Katsura Hoshino','Japanese','1980-04-21',NULL),(8,'Takeshi Obata','Japanese','1969-02-11',NULL),(9,'Riichiro Inagaki','Japanese','1976-06-20',NULL),(10,'Takeshi Okano','Japanese','1967-05-09',NULL),(11,'Hideaki Sorachi','Japanese','1979-05-25',NULL),(12,'Ami Sugimoto','Japanese','1978-02-27',NULL),(13,'Mizuki Kawashita','Japanese','1971-08-30',NULL),(14,'Hirohiko Araki','Japanese','1960-06-07',NULL),(15,'Takeo Horibe','Japanese','1979-01-19',NULL),(16,'Akira Amano','Japanese','1973-06-22',NULL),(17,'Ryouko Takashina','Japanese','1946-02-18',NULL),(18,'Shinya Suzuki','Japanese','1975-06-11',NULL),(19,'Yoshiyuki Nishi','Japanese','1976-12-27',NULL),(20,'Amon dai','Japanese','1977-05-29',NULL),(21,'Mikio Ito','Japanese','1962-10-21',NULL),(22,'Yasuhiro Kano','Japanese','1970-12-16',NULL),(23,'Kyousuke Usuta','Japanese','1974-05-25',NULL),(24,'Ryuu Fujisaki','Japanese','1971-03-10',NULL),(25,'Akira Toriyama','Japanese','1955-04-05',NULL),(26,'Yukiaki Kurando','Japanese','1975-04-12',NULL),(27,'Namie Odama','Japanese','1979-06-01',NULL),(28,'Osamu Kajisa','Japanese','1973-12-30',NULL),(29,'Nakaba Suzuki','Japanese','1977-02-08',NULL),(30,'Youchi Amano','Japanese','1981-06-22',NULL),(31,'Tooru Uchimizu','Japanese','1975-07-30',NULL),(32,'Tsugumi Ohba','Japanese','1981-06-22',NULL),(33,'Ryuuhei Tamura','Japanese','1980-04-18',NULL),(34,'Ishioka Shomei','Japanese','1960-02-08',NULL),(35,'Tsuneo Takano','Japanese','1980-04-18',NULL),(36,'Shuuichi Asou','Japanese','1985-12-26',NULL),(37,'Kousuke Hamada','Japanese','1985-10-11',NULL),(38,'Naoshi Komi','Japanese','1986-03-28',NULL),(39,'Yuuichi Itakura','Japanese','1982-02-15',NULL),(40,'Yasunori Tanaka','Japanese','1985-07-10',NULL),(41,'Shou Aimoto','Japanese','1987-12-22',NULL),(42,'Yukinori kawaguchi','Japanese','1979-04-03',NULL),(43,'Kouji Ooshi','Japanese','1982-07-14',NULL),(44,'Katsutoshi Murase','Japanese','1979-08-07',NULL),(45,'Tadatoshi Fujimaki','Japanese','1982-06-09',NULL),(46,'Kouji Ooishi','Japanese','1982-07-14',NULL),(47,'Yuusei Matsui','Japanese','1979-01-31',NULL),(48,'Akira Akatsuki','Japanese','1977-08-18',NULL),(49,'kamiya Kaji','Japanese','1975-01-28',NULL),(50,'Toshiaki Iwashiro','Japanese','1977-12-11',NULL),(51,'Naoya Matsumoto','Japanese','1982-05-02',NULL),(52,'Hiroshi Shiibashi','Japanese','1980-06-06',NULL),(53,'Kazuki Kitashima','Japanese','1985-08-06',NULL),(54,'Youichi Amano','Japanese','1981-06-22',NULL),(55,'Tatsuma Eijiri','Japanese','1975-06-18',NULL),(56,'Teppei Fukushima','Japanese','1979-04-23',NULL),(57,'Shinichirou Ooe','Japanese','1971-03-20',NULL),(58,'Kenta Shinohara','Japanese','1974-01-09',NULL),(59,'Daisuke Ashihara','Japanese','1981-02-13',NULL),(60,'Yuujirou Sakamoto','Japanese','1980-04-18',NULL),(61,'Saki Hasemi','Japanese','1970-10-25',NULL),(62,'Mitsutoshi Shimabukuro','Japanese','1975-05-19',NULL),(63,'Ichirou Takahashi','Japanese','1983-01-26',NULL),(64,'Satoshi Nejima','Japanese','1981-02-14',NULL),(65,'Naoya Sugita','Japanese','1981-06-28',NULL),(66,'Kenta Tsuchida','Japanese','1981-10-31',NULL),(67,'Haruichi Furudate','Japanese','1983-03-07',NULL),(68,'Yuuto Tsukuda','Japanese','1986-03-13',NULL),(69,'Kenji Sakaki','Japanese','1985-08-16',NULL),(70,'Hideo Shinkai','Japanese','1982-07-27',NULL),(71,'Naoki Iwamoto','Japanese','1985-08-05',NULL),(72,'Shouta Sasaki','Japanese','1993-01-10',NULL),(73,'Kenta Komiyama','Japanese','1985-10-29',NULL),(74,'Haruto Ikezawa','Japanese','1989-06-01',NULL),(75,'Retsu','Japanese','1977-10-22',NULL),(76,'Tsugirou Sakamoto','Japanese','1968-02-17',NULL),(77,'Kouhei Horikoshi','Japanese','1986-11-20',NULL),(78,'Juuzou Kawai','Japanese','1980-11-28',NULL),(79,'Shinsuke Kondou','Japanese','1986-11-18',NULL),(80,'KAITO','Japanese','1980-09-27',NULL),(81,'Yuuki Tabata','Japanese','1984-07-30',NULL),(82,'Masahiro Hirakata','Japanese','1985-09-16',NULL),(83,'Yuki Morisaki','Japanese','1979-12-29',NULL),(84,'Kizuku Watanabe','Japanese','1979-05-26',NULL),(85,'Atsushi Nakamura','Japanese','1980-02-24',NULL),(86,'Kazuro Kyou','Japanese','1972-05-01',NULL),(87,'Tomohiro Hasegawa','Japanese','1990-07-31',NULL),(88,'Ryou Nakama','Japanese','1990-08-29',NULL),(89,'Kento Shimoyama','Japanese','1982-03-12',NULL),(90,'Kawada','Japanese','1963-12-08',NULL),(91,'Ryou Ishiyama','Japanese','1986-08-29',NULL),(92,'Yuusaku Shibata','Japanese','1962-01-09',NULL),(93,'Ippei Gotou','Japanese','1969-09-13',NULL),(94,'Yuuto Kubota','Japanese','1988-08-06',NULL),(95,'Itsuki Furuya','Japanese','1973-11-18',NULL),(96,'Ryouhei Yamamoto','Japanese','1974-12-30',NULL),(97,'Yuu Miki','Japanese','1975-03-19',NULL),(98,'Yuusuke Utsumi','Japanese','1983-06-17',NULL),(99,'Masashi Kishimoto','Japanese','1974-11-08',NULL),(100,'Takuma Yokota','Japanese','1986-04-17',NULL),(101,'Ken Ogino','Japanese','1970-07-19',NULL),(102,'Kentarou Fukuda','Japanese','1995-07-27',NULL),(103,'Shun Numa','Japanese','1971-07-25',NULL),(104,'Tatsuki Fujimoto','Japanese','1992-10-10',NULL),(105,'Gege Akutami','Japanese','1992-02-26',NULL),(106,'Koyoharu Gotouge','Japanese','1989-05-05',NULL),(107,'Hajime Koumoto','Japanese','1989-06-26',NULL),(108,'Yoshifumi Tozuka','Japanese','1989-02-16',NULL),(109,'Hitsuji Gondaira','Japanese','1992-09-29',NULL),(110,'Shuuhei Miyazaki','Japanese','1987-07-27',NULL),(111,'Tatsuya Matsuki','Japanese','1991-05-29',NULL),(112,'Kei Kamiki','Japanese','1990-07-29',NULL),(113,'Yuuto Suzuki','Japanese','1993-07-06',NULL),(114,'Kouji Miura','Japanese','1966-11-28',NULL),(115,'Tadahiro Miura','Japanese','1991-10-15',NULL),(116,'Taishi Tsutsui','Japanese','1982-10-08',NULL),(117,'Kaiu Shirai','Japanese','1987-02-22',NULL),(118,'Tougo Gotou','Japanese','1984-08-27',NULL),(119,'Kenji Ichima','Japanese','1982-05-17',NULL),(120,'Eiichiro Oda','Japanese','1975-01-01',NULL),(121,'Hiromu Arakawa','Japanese','1973-05-08',NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `GENRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GENRE` (
  `GenreId` int NOT NULL AUTO_INCREMENT,
  `Label` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`GenreId`),
  UNIQUE KEY `Label` (`Label`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `GENRE` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `GENRE` VALUES (1,'Action'),(2,'Adventure'),(4,'Comedy'),(10,'Drama'),(12,'Ecchi'),(3,'Fantasy'),(16,'Gourmet'),(17,'Harem'),(15,'Horror'),(9,'Mystery'),(11,'Romance'),(5,'Sci-Fi'),(13,'Slice of Life'),(8,'Sports'),(6,'Supernatural'),(7,'Suspense');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manga`
--

DROP TABLE IF EXISTS `MANGA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MANGA` (
  `MangaId` int NOT NULL AUTO_INCREMENT,
  `pre_quel` int DEFAULT NULL,
  `manga_name` varchar(255) NOT NULL,
  `chapters` smallint NOT NULL,
  `volumes` smallint NOT NULL,
  `mangaRating` float DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`MangaId`),
  KEY `pre_quel` (`pre_quel`),
  CONSTRAINT `manga_ibfk_1` FOREIGN KEY (`pre_quel`) REFERENCES `MANGA` (`MangaId`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manga`
--

LOCK TABLES `MANGA` WRITE;
/*!40000 ALTER TABLE `manga` DISABLE KEYS */;
INSERT INTO `MANGA` VALUES (1,NULL,'Akkera Kanjinchou',14,2,NULL,'2002-02-12','2022-04-30'),(2,NULL,'Black Cat',187,20,7.81,'2000-07-11','2004-06-14'),(3,NULL,'Bleach',686,74,7.8,'2001-08-07',NULL),(4,NULL,'Bobobo',230,21,7.46,'2001-02-20','2005-12-12'),(5,NULL,'Bremen',82,9,7.41,'1999-12-14','2001-09-11'),(6,NULL,'Buso Renkin',83,10,7.26,'2003-06-23','2006-04-25'),(7,NULL,'D.Gray-man',82,9,8.29,'2004-05-31','2005-12-12'),(8,NULL,'Death Note',108,12,8.7,'2003-12-01','2006-05-15'),(9,NULL,'Eyeshield 21',333,37,8.48,'2002-07-23','2009-06-15'),(10,NULL,'Gedo the Unidentified Mysterious Boy',48,5,NULL,'2004-03-08','2005-02-21'),(11,NULL,'Gintama',709,77,8.62,'2003-12-08','2019-06-20'),(12,NULL,'Granada',5,1,7.17,'2005-02-25','2006-04-25'),(13,NULL,'Gun Blaze West',28,3,6.53,'2000-12-12','2001-07-31'),(14,NULL,'Ichigo 100%',167,19,7.78,'2002-02-19','2005-08-01'),(15,NULL,'JoJo no Kimy na Baken Part 1 Phantom Blood',44,5,7.31,'1986-12-02','1987-10-13'),(16,15,'JoJo no Kimy na Baken Part 2 Battle Tendacy',69,7,8.16,'1987-10-20','1989-03-14'),(17,16,'JoJo no Kimy na Baken Part 3 Stardust Crusaders',152,16,8.1,'1989-03-20','1992-04-14'),(18,17,'JoJo no Kimy na Baken Part 4 Diamond is Unbreakable',174,18,8.57,'1992-04-21','1995-11-21'),(19,18,'JoJo no Kimy na Baken Part 5 Golden Wind',155,17,8.17,'1995-11-28','1999-03-23'),(20,19,'JoJo no Kimy na Baken Part 6 Stone Ocean',158,17,8.26,'1999-12-07','2003-04-08'),(21,20,'JoJo no Kimy na Baken Part 7 Steel ball Run',96,24,9.28,'2004-01-19','2019-04-19'),(22,NULL,'Kannade',15,2,6.48,'2003-09-22','2003-12-15'),(23,NULL,'Hitman Reborn',411,42,8.13,'2004-05-24','2012-11-12'),(24,NULL,'Lilim Kiss',24,2,7.04,'2000-10-31','2001-04-24'),(25,NULL,'Live',10,1,6.89,'2003-12-15','2004-03-01'),(26,NULL,'Magician',60,19,7.39,'1981-12-29','1995-04-24'),(27,NULL,'Mr. Fullswing',227,24,7.33,'2001-05-08','2006-05-08'),(28,NULL,'Muhyo to Rouji no Mahouritsu Soudan Jimusho',159,18,7.53,'2004-11-29','2008-03-03'),(29,NULL,'Muteki Tetsuhime Spin-chan',11,1,NULL,'2004-03-15','2004-05-31'),(30,NULL,'Normandy Secret Club',46,5,NULL,'2000-05-15','2001-04-16'),(31,NULL,'Pretty Face',43,6,7.58,'2002-05-14','2003-06-09'),(32,NULL,'Pyu to Fuku! Jaguar',438,10,7.5,'2000-08-22','2010-08-23'),(33,NULL,'Sakuratetsu Taiwahen',14,2,6.72,'2001-12-04','2002-04-23'),(34,NULL,'Sand Land',14,1,7.01,'2000-05-09','2000-08-08'),(35,NULL,'Santa',12,2,NULL,'2003-04-07','2003-06-30'),(36,NULL,'Shounen Espa Nejime',20,2,NULL,'2003-12-15','2004-03-01'),(37,NULL,'Sword Breaker',16,2,NULL,'2002-07-30','2002-11-19'),(38,NULL,'Tattoo Hearts',15,2,NULL,'2002-12-10','2003-03-25'),(39,NULL,'Ultra Red',34,4,7.19,'2002-10-08','2003-06-16'),(40,NULL,'Akaboshi: Ibun Suikoden',24,3,6.96,'2009-05-18','2009-11-02'),(41,NULL,'Anedoki',26,3,7.42,'2009-07-06','2010-01-18'),(42,NULL,'Asklepios',21,3,7.13,'2008-09-22','2009-02-09'),(43,NULL,'Bakuman',176,20,8.4,'2008-08-11','2012-04-23'),(44,NULL,'Bari Haken',34,4,7.2,'2008-03-17','2008-11-22'),(45,NULL,'Beelzebub',250,28,8.15,'2009-02-23','2015-03-13'),(46,NULL,'Belmonde Le VisiteuR',21,3,6.77,'2007-07-09','2007-11-19'),(47,NULL,'Blue Dragon',29,4,6.74,'2006-12-04','2007-07-09'),(48,NULL,'Bokke-san',18,2,6.65,'2008-12-15','2009-04-27'),(49,NULL,'Boku no Watashi no Yusha Gaku',66,6,6.76,'2007-05-14','2008-07-28'),(50,NULL,'Chagecha',8,1,5.5,'2008-09-13','2008-11-01'),(51,NULL,'Dogashi Kaden',15,2,6.66,'2008-06-02','2008-09-01'),(52,NULL,'Double Arts',24,3,7.56,'2008-05-24','2008-09-08'),(53,NULL,'Hand\'s',10,1,6.39,'2006-10-02','2006-12-04'),(54,NULL,'Hatsukoi Limited',33,4,7.39,'2007-10-01','2008-05-26'),(55,NULL,'Hitomi no Catoblepas',15,2,6.68,'2007-05-21','2007-09-03'),(56,NULL,'Hokenshitsu no Shinigami',87,10,7.12,'2009-09-07','2011-06-27'),(57,NULL,'Hoopmen',17,2,6.4,'2009-03-02','2009-06-29'),(58,NULL,'Inumarudashii',182,11,NULL,'2008-08-25','2012-06-04'),(59,NULL,'K.O. Sen',15,2,6.95,'2007-12-10','2008-03-10'),(60,NULL,'Kagijin',17,2,6.49,'2009-07-13','2009-11-09'),(61,NULL,'Kain',21,3,6.86,'2005-05-16','2005-09-26'),(62,NULL,'Kuroko no Basket',276,30,8.13,'2008-12-08','2014-09-01'),(63,NULL,'Mx0',99,10,7.93,'2006-05-08','2008-05-12'),(64,NULL,'Maison Du Penguin',61,5,NULL,'2006-02-13','2007-05-14'),(65,NULL,'Majin Tantei Nougami Neuro ',203,23,8.12,'2005-02-21','2009-04-20'),(66,NULL,'Medaka Box',194,22,7.79,'2022-05-11','2013-04-27'),(67,NULL,'Meister',13,2,7.09,'2008-12-01','2009-02-16'),(68,NULL,'Mieru Hito',60,7,6.85,'2005-07-16','2006-09-16'),(69,NULL,'Muddy',14,1,6.58,'2007-12-17','2008-03-17'),(70,NULL,'Nazo no Murasame-kun',22,3,NULL,'2006-04-17','2006-09-25'),(71,NULL,'Neko Wappa',13,2,6.44,'2009-11-09','2010-02-15'),(72,NULL,'Nurarihyon no Mago',218,25,7.98,'2008-03-10','2012-12-28'),(73,NULL,'Odorobo Poruta',16,2,NULL,'2005-10-10','2006-01-30'),(74,NULL,'Over Time',22,3,7.04,'2006-07-15','2006-11-27'),(75,NULL,'Let\'s Play Pingpong',59,7,6.94,'2006-09-25','2008-02-08'),(76,NULL,'Psyren',145,16,7.98,'2007-12-03','2010-11-29'),(77,NULL,'Samurai Usagi',69,8,7.24,'2007-03-05','2008-07-14'),(78,NULL,'Shinseiki Idol Densetsu Kanata Seven Change',13,1,NULL,'2009-11-16','2010-02-22'),(79,4,'Shinsetsu Bobobo',74,7,7.28,'2005-12-19','2007-07-02'),(80,NULL,'Shiritsu Poseidon Gakuen Koutoubu',22,2,NULL,'2007-12-22','2008-05-12'),(81,NULL,'Sket Dance',288,32,8.37,'2007-07-14','2013-07-08'),(82,NULL,'Super Dog Rilienthal',34,4,6.64,'2009-09-14','2010-05-10'),(83,NULL,'Taizo Mote King Saga',90,8,NULL,'2005-07-25','2007-05-14'),(84,NULL,'Takaya -Senbu Gakuen Gekitouden',41,5,NULL,'2005-05-23','2006-02-20'),(85,84,'Takaya -Yoake no Enjin-ou',14,1,NULL,'2006-02-27','2006-05-29'),(86,NULL,'To Love-Ru',162,18,7.49,'2006-04-24','2009-08-31'),(87,NULL,'Toriko',396,43,7.64,'2008-05-19','2016-11-21'),(88,NULL,'Volleyball Tsukai Godago',24,3,NULL,'2007-03-12','2007-08-27'),(89,NULL,'Wasshoi Waji Mania',20,1,NULL,'2009-07-18','2009-11-16'),(90,NULL,'Zan',18,2,6.6,'2006-07-24','2006-11-27'),(91,NULL,'Lock On',18,2,7.27,'2010-02-22','2010-07-28'),(92,NULL,'Kiben Gakuha',22,3,7.35,'2010-03-01','2010-07-05'),(93,NULL,'Shonen Shikku',16,2,NULL,'2010-05-24','2010-09-06'),(94,NULL,'SWOT',22,3,6.62,'2010-07-05','2010-11-22'),(95,NULL,'Enigma',56,7,7.09,'2010-09-13','2011-10-30'),(96,NULL,'Light Wing',23,3,6.45,'2010-09-18','2011-02-21'),(97,NULL,'Dois Sol',17,2,6.6,'2011-02-14','2011-06-20'),(98,NULL,'Magico',68,8,7.73,'2011-02-28','2012-08-11'),(99,NULL,'Sengoku Armors',17,2,6.38,'2011-03-07','2011-07-11'),(100,NULL,'Kikai Banashi Hanasaka Ikkyuu ',15,2,6.4,'2011-05-09','2011-08-22'),(101,NULL,'Kagami no Kuni no Harisugawa',29,3,7.4,'2022-07-11','2012-02-13'),(102,NULL,'Kurogane',70,8,7.44,'2011-09-06','2013-01-28'),(103,NULL,'Nisekoi',229,25,7.73,'2011-11-07','2016-08-08'),(104,NULL,'Genson Kodai Seibutsu-shi Packy',23,2,NULL,'2011-11-14','2012-05-07'),(105,NULL,'Haikyu',407,45,8.84,'2012-02-20','2020-07-20'),(106,NULL,'Pajama na Kanojo',26,3,6.83,'2012-02-27','2012-09-03'),(107,NULL,'Koisome Momiji',33,34,7.65,'2012-05-07','2012-11-19'),(108,NULL,'Saiki Kusuo no Psi-nan',290,26,8.3,'2012-05-14','2018-07-26'),(109,NULL,'Sensei no Bulge',16,2,6.54,'2012-05-21','2012-09-10'),(110,NULL,'Assassination Classroom',187,21,8.27,'2012-07-02','2016-04-25'),(111,NULL,'Takamagahara',17,2,6.34,'2012-07-09','2012-11-05'),(112,NULL,'Retsu Date Senpai',20,2,NULL,'2012-09-10','2013-02-04'),(113,NULL,'Cross Manage',43,5,7.06,'2012-09-15','2013-10-15'),(114,NULL,'Hungry Joker',24,3,6.63,'2012-11-12','2013-05-13'),(115,NULL,'Shinmai Fukei Kiruko-san',25,3,6.65,'2012-11-10','2013-05-20'),(116,NULL,'Food Wars: Shokugeki no Soma',325,36,7.94,'2012-11-26','2019-08-29'),(117,NULL,'Koisuru Edison',40,3,6.06,'2013-02-04','2013-07-29'),(118,NULL,'Soul Catcher(S)',90,11,7.3,'2013-05-13','2016-02-14'),(119,NULL,'Smoky B.B.',16,2,6.39,'2013-05-27','2013-09-09'),(120,NULL,'Jaco the Galactic Patrolman',12,1,7,'2013-07-13','2013-09-30'),(121,NULL,'Kurokuroku',21,3,6.69,'2013-07-29','2013-11-25'),(122,NULL,'Hime-dol',17,2,6.95,'2013-08-05','2013-11-25'),(123,NULL,'Hachi -Tokyo 23-ku',22,3,6.57,'2013-09-14','2014-02-17'),(124,NULL,'Koi no Cupid Yakenohara Jin',20,3,NULL,'2013-09-21','2014-02-17'),(125,NULL,'Isobe Isobee Monogatari: Ukiyo wa Tsurai yo',303,16,7.05,'2013-05-27','2017-11-24'),(126,NULL,'Tokyo Wonder Boys',10,1,5.9,'2014-03-03','2014-05-12'),(127,NULL,'Hinomaru Sumo',252,28,7.77,'2014-05-26','2019-07-22'),(128,NULL,'Boku no Hero Academia',375,36,8.14,'2014-07-07',NULL),(129,NULL,'Mitsukubi Condor',23,3,6.6,'2014-07-14','2014-11-03'),(130,NULL,'Yoakemono',17,2,6.57,'2014-07-19','2014-11-10'),(131,NULL,'Judos',21,3,6.38,'2014-09-08','2015-01-19'),(132,NULL,'Hi-Fi Cluster',21,3,6.14,'2014-09-13','2015-01-26'),(133,NULL,'Sporting Salt',22,3,6.3,'2014-09-22','2015-02-02'),(134,NULL,'Takujou no Ageha ',23,3,NULL,'2014-11-17','2015-04-27'),(135,NULL,'E-Robot',13,2,NULL,'2014-11-22','2015-02-16'),(136,NULL,'Dr. Stone',233,26,8.2,'2017-03-06','2022-03-07'),(137,NULL,'Kagamigami',41,5,6.63,'2015-02-09','2015-11-16'),(138,NULL,'Black Clover',337,33,7.86,'2015-02-16',NULL),(139,NULL,'Cyborg Roggy',13,2,NULL,'2015-02-23','2015-05-11'),(140,NULL,'Ultra Battle Satellite',21,3,6.76,'2015-03-02','2015-06-29'),(143,NULL,'Lady Justice',16,2,5.85,'2015-05-18','2015-09-07'),(144,NULL,'Devily Man',16,2,6.45,'2015-05-25','2015-09-14'),(145,NULL,'Best Blue',21,3,6.2,'2015-07-13','2015-11-21'),(146,NULL,'Mononofu',43,5,6.89,'2015-09-14','2016-07-25'),(147,NULL,'Samon-kun wa Summoner',89,10,7.13,'2015-09-19','2017-07-28'),(148,NULL,'Buddy Strike',11,1,NULL,'2015-11-16','2016-02-08'),(149,NULL,'Chainsaw Man',97,12,8.75,'2018-12-03',NULL),(150,NULL,'Jujutsu Kaisen',212,21,8.54,'2018-03-05',NULL),(151,NULL,'Kimetsu no Yaiba',207,23,8.26,'2016-02-15','2020-05-18'),(152,NULL,'Mashle: Magic and Muscles',110,14,7.64,'2020-01-27',NULL),(153,NULL,'Undead Unluck',140,14,7.25,'2020-01-20',NULL),(154,NULL,'Mission: Yozakura Family',159,18,7.6,'2019-08-26',NULL),(155,NULL,'Me & Roboco',118,9,6.26,'2020-07-06',NULL),(156,NULL,'Act-Age',123,12,8.24,'2018-01-22','2020-08-11'),(157,NULL,'Magu-chan: God of destruction',78,9,6.76,'2020-06-22','2022-02-07'),(158,NULL,'Ayakashi Triangle',114,11,6.69,'2020-06-15',NULL),(159,NULL,'Sakamoto Days',100,9,7.91,'2020-11-21',NULL),(160,NULL,'Shakunetsu no Nirai Kani',47,5,6.57,'2020-06-27','2021-06-21'),(161,NULL,'Ao no Hako',82,8,7.81,'2021-04-12',NULL),(162,NULL,'Yuragi-Sou no Yuuna-san',214,24,7.24,'2016-02-08','2020-06-08'),(163,NULL,'We Never Learn',187,21,7.66,'2017-02-06','2020-12-21'),(164,NULL,'Samurai 8',43,5,5.77,'2019-05-13','2020-03-23'),(165,NULL,'Yakusoku no Neverland',181,20,8.18,'2016-08-01','2020-01-15'),(166,NULL,'Moriking',38,4,5.75,'2020-04-13','2021-01-18'),(167,NULL,'Phantom Seer',32,4,6.73,'2020-08-31','2021-04-05'),(168,NULL,'Agravity Boys',59,7,6.6,'2019-12-09','2021-04-30'),(169,NULL,'Time Paradox Ghostwriter',15,2,6.33,'2020-05-18','2020-08-31'),(170,NULL,'Build King',25,3,4.99,'2020-11-16','2021-09-03'),(171,NULL,'The Elusive Samurai',91,8,6.45,'2021-01-25',NULL),(172,NULL,'Burn The Witch',4,1,6.9,'2020-08-24',NULL),(173,NULL,'Naruto ',700,79,8.07,'1999-09-21','2014-11-10'),(174,NULL,'One Piece',1067,104,9.2,'1997-07-19',NULL),(175,NULL,'Full Metal Alchemist',106,27,9.04,'2001-07-12','2011-09-11'),(176,173,'Boruto',73,18,6.83,'2016-05-09',NULL);
/*!40000 ALTER TABLE `manga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manga_author`
--

DROP TABLE IF EXISTS `MANGA_AUTHOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MANGA_AUTHOR` (
  `MangaId` int NOT NULL,
  `AuthorId` int NOT NULL,
  PRIMARY KEY (`MangaId`,`AuthorId`),
  KEY `AuthorId` (`AuthorId`),
  CONSTRAINT `manga_author_ibfk_1` FOREIGN KEY (`MangaId`) REFERENCES `MANGA` (`MangaId`) ON UPDATE CASCADE,
  CONSTRAINT `manga_author_ibfk_2` FOREIGN KEY (`AuthorId`) REFERENCES `AUTHORS` (`AuthorId`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manga_author`
--

LOCK TABLES `MANGA_AUTHOR` WRITE;
/*!40000 ALTER TABLE `manga_author` DISABLE KEYS */;
INSERT INTO `MANGA_AUTHOR` VALUES (1,1),(2,2),(158,2),(3,3),(172,3),(4,4),(50,4),(79,4),(5,5),(25,5),(37,5),(6,6),(13,6),(7,7),(8,8),(9,9),(136,9),(10,10),(11,11),(12,12),(14,13),(24,13),(41,13),(54,13),(15,14),(16,14),(17,14),(18,14),(19,14),(20,14),(21,14),(22,15),(23,16),(26,17),(27,18),(44,18),(28,19),(48,19),(123,19),(29,20),(83,20),(30,21),(70,21),(31,22),(63,22),(101,22),(32,23),(33,24),(34,25),(120,25),(35,26),(36,27),(38,28),(39,29),(40,30),(42,31),(61,31),(43,32),(45,33),(160,33),(46,34),(47,35),(49,36),(78,36),(108,36),(51,37),(106,37),(52,38),(103,38),(53,39),(55,40),(60,40),(56,41),(69,41),(57,42),(58,43),(59,44),(97,44),(62,45),(64,46),(65,47),(110,47),(171,47),(66,48),(67,49),(68,50),(76,50),(137,50),(71,51),(72,52),(73,53),(74,54),(75,55),(77,56),(80,57),(81,58),(82,59),(84,60),(85,60),(86,61),(87,62),(170,62),(88,63),(89,64),(90,65),(94,65),(91,66),(92,67),(105,67),(93,68),(95,69),(96,70),(118,70),(98,71),(99,72),(100,73),(119,73),(102,74),(146,74),(104,75),(107,76),(109,77),(128,77),(111,78),(112,79),(131,79),(113,80),(148,80),(114,81),(138,81),(115,82),(145,82),(116,83),(117,84),(121,85),(168,85),(122,86),(124,87),(166,87),(125,88),(126,89),(127,90),(129,91),(130,92),(132,93),(133,94),(134,95),(135,96),(139,97),(140,98),(164,99),(173,99),(176,99),(143,101),(144,102),(147,103),(149,104),(150,105),(151,106),(152,107),(153,108),(154,109),(155,110),(156,111),(157,112),(159,113),(161,114),(162,115),(163,116),(165,117),(167,118),(169,119),(174,120),(175,121);
/*!40000 ALTER TABLE `manga_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manga_genre`
--

DROP TABLE IF EXISTS `MANGA_GENRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MANGA_GENRE` (
  `MangaId` int NOT NULL,
  `GenreId` int NOT NULL,
  PRIMARY KEY (`MangaId`,`GenreId`),
  KEY `GenreId` (`GenreId`),
  CONSTRAINT `manga_genre_ibfk_1` FOREIGN KEY (`MangaId`) REFERENCES `MANGA` (`MangaId`) ON UPDATE CASCADE,
  CONSTRAINT `manga_genre_ibfk_2` FOREIGN KEY (`GenreId`) REFERENCES `GENRE` (`GenreId`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manga_genre`
--

LOCK TABLES `MANGA_GENRE` WRITE;
/*!40000 ALTER TABLE `manga_genre` DISABLE KEYS */;
INSERT INTO `MANGA_GENRE` VALUES (1,1),(2,1),(3,1),(6,1),(7,1),(11,1),(13,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(25,1),(26,1),(27,1),(28,1),(34,1),(38,1),(39,1),(40,1),(42,1),(45,1),(47,1),(48,1),(50,1),(52,1),(55,1),(60,1),(61,1),(63,1),(66,1),(68,1),(70,1),(72,1),(76,1),(77,1),(84,1),(85,1),(87,1),(90,1),(94,1),(98,1),(99,1),(102,1),(109,1),(110,1),(111,1),(114,1),(115,1),(118,1),(120,1),(121,1),(123,1),(124,1),(128,1),(129,1),(130,1),(131,1),(132,1),(137,1),(138,1),(139,1),(140,1),(143,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(158,1),(159,1),(164,1),(167,1),(170,1),(172,1),(173,1),(174,1),(176,1),(1,2),(2,2),(3,2),(4,2),(7,2),(10,2),(13,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(34,2),(37,2),(40,2),(42,2),(46,2),(47,2),(52,2),(60,2),(73,2),(76,2),(79,2),(87,2),(90,2),(95,2),(98,2),(129,2),(136,2),(157,2),(170,2),(171,2),(173,2),(174,2),(175,2),(176,2),(1,3),(2,3),(3,3),(6,3),(33,3),(34,3),(37,3),(46,3),(47,3),(52,3),(60,3),(61,3),(83,3),(87,3),(98,3),(109,3),(121,3),(123,3),(129,3),(130,3),(138,3),(150,3),(151,3),(157,3),(170,3),(172,3),(173,3),(174,3),(175,3),(176,3),(2,4),(4,4),(5,4),(6,4),(10,4),(11,4),(13,4),(14,4),(23,4),(24,4),(25,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(33,4),(36,4),(40,4),(41,4),(43,4),(44,4),(45,4),(46,4),(49,4),(50,4),(51,4),(52,4),(54,4),(56,4),(57,4),(58,4),(61,4),(62,4),(63,4),(64,4),(66,4),(67,4),(69,4),(70,4),(71,4),(77,4),(78,4),(79,4),(80,4),(81,4),(82,4),(83,4),(86,4),(87,4),(88,4),(89,4),(90,4),(91,4),(93,4),(94,4),(95,4),(98,4),(99,4),(101,4),(103,4),(104,4),(106,4),(108,4),(109,4),(110,4),(111,4),(112,4),(113,4),(114,4),(115,4),(117,4),(120,4),(121,4),(122,4),(124,4),(125,4),(126,4),(131,4),(133,4),(135,4),(138,4),(139,4),(140,4),(147,4),(152,4),(153,4),(154,4),(155,4),(157,4),(158,4),(159,4),(160,4),(162,4),(163,4),(166,4),(168,4),(171,4),(4,5),(11,5),(33,5),(69,5),(76,5),(86,5),(104,5),(109,5),(114,5),(120,5),(132,5),(135,5),(136,5),(139,5),(155,5),(164,5),(165,5),(168,5),(169,5),(6,6),(8,6),(21,6),(24,6),(25,6),(28,6),(34,6),(35,6),(38,6),(42,6),(45,6),(48,6),(55,6),(56,6),(60,6),(65,6),(68,6),(72,6),(74,6),(76,6),(86,6),(95,6),(96,6),(100,6),(101,6),(102,6),(106,6),(108,6),(111,6),(114,6),(121,6),(124,6),(132,6),(137,6),(144,6),(147,6),(149,6),(152,6),(153,6),(162,6),(166,6),(167,6),(169,6),(8,7),(165,7),(9,8),(27,8),(51,8),(53,8),(57,8),(59,8),(62,8),(67,8),(74,8),(75,8),(93,8),(95,8),(97,8),(105,8),(113,8),(119,8),(126,8),(127,8),(133,8),(134,8),(145,8),(146,8),(148,8),(161,8),(10,9),(21,9),(22,9),(26,9),(28,9),(65,9),(92,9),(95,9),(96,9),(137,9),(165,9),(12,10),(14,10),(43,10),(66,10),(77,10),(81,10),(92,10),(95,10),(106,10),(109,10),(118,10),(156,10),(175,10),(14,11),(24,11),(26,11),(31,11),(52,11),(53,11),(54,11),(76,11),(86,11),(91,11),(98,11),(101,11),(103,11),(106,11),(107,11),(113,11),(117,11),(122,11),(135,11),(154,11),(158,11),(161,11),(162,11),(14,12),(24,12),(31,12),(41,12),(47,12),(54,12),(66,12),(86,12),(101,12),(106,12),(107,12),(133,12),(135,12),(143,12),(158,12),(162,12),(29,13),(30,13),(58,13),(64,13),(91,13),(113,13),(48,15),(72,15),(92,15),(167,15),(87,16),(116,16),(163,17);
/*!40000 ALTER TABLE `manga_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studios`
--

DROP TABLE IF EXISTS `STUDIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDIOS` (
  `StudioId` int NOT NULL AUTO_INCREMENT,
  `studioName` varchar(255) NOT NULL,
  `studioOwner` varchar(255) NOT NULL,
  `LCountry` varchar(255) NOT NULL,
  `LCity` varchar(255) NOT NULL,
  PRIMARY KEY (`StudioId`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studios`
--

LOCK TABLES `STUDIOS` WRITE;
/*!40000 ALTER TABLE `studios` DISABLE KEYS */;
INSERT INTO `STUDIOS` VALUES (1,'Aniplex','Sony Music Entertainment Japan','Japan','Tokyo'),(2,'Pierrot','Yuji Nunokawa','Japan','Tokyo'),(3,'Toei Animation','Kenzo Masaika','Japan','Tokyo'),(4,'Bones','Masahiko Minami','Japan ','Tokyo'),(5,'Gonzo','ADK','Japan ','Tokyo'),(6,'Xebec','IG Port','Japan ','Tokyo'),(7,'TMS Entertainment',' Tadashi Takezaki','Japan ','Tokyo'),(8,'Madhouse','Masao Maruyama','Japan ','Tokyo'),(9,'Gallop','Akio Wakana','Japan ','Tokyo'),(10,'Sunrise','Takayuki Yoshii','Japan ','Tokyo'),(11,'David Production','Taito Okiura','Japan ','Tokyo'),(12,'Artland',' Noboru Ishiguro','Japan ','Tokyo'),(13,'Studio Deen','Hiroshi Hasegawa','Japan ','Tokyo'),(14,'Kaeruotoko Shokai','Kaeruotoko Shokai','Japan ','Tokyo'),(15,'J.C.Staff','Tomoyuki Miyata','Japan ','Tokyo'),(16,'Gathering','Kazuhiro Toda','Japan ','Tokyo'),(17,'Production I.G',' Mitsuhisa Ishikawa','Japan ','Tokyo'),(18,'Gainax',' Hideaki Anno','Japan ','Tokyo'),(19,'Tatsunoko Production','Tatsuo Yoshida','Japan ','Tokyo'),(20,'Shaft','Hiroshi Wakao','Japan ','Tokyo'),(21,'Lerche','Studio Hibari','Japan ','Tokyo'),(22,'MAPPA','Masao Maruyama','Japan ','Tokyo'),(23,'Ufotable','Hikaru Kondo','Japan ','Tokyo'),(24,'Arvo Animation','Taiichi Kawaguchi','Japan ','Tokyo'),(25,'CloverWorks','Hiroyuki Shimizu','Japan ','Tokyo');
/*!40000 ALTER TABLE `studios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydatabase'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-26 14:26:09
