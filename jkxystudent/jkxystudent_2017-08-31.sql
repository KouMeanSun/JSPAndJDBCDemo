# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.19)
# Database: jkxystudent
# Generation Time: 2017-08-31 08:59:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table studentinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `studentinfo`;

CREATE TABLE `studentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nicheng` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truename` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xb` bit(1) DEFAULT NULL,
  `csrq` date DEFAULT NULL,
  `zy` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xq` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bz` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `studentinfo` WRITE;
/*!40000 ALTER TABLE `studentinfo` DISABLE KEYS */;

INSERT INTO `studentinfo` (`id`, `nicheng`, `truename`, `xb`, `csrq`, `zy`, `kc`, `xq`, `bz`)
VALUES
	(3,'番号','明阳',b'0','2017-12-06',' 计算机','数据','吃饭睡觉','一等侯'),
	(4,'番号','赵学萍',b'0','1987-02-14',' 计算机','数据','吃饭睡觉','一等侯'),
	(5,'娜娜','赵娜',b'1','1991-02-08','计算机科学与技术',NULL,NULL,NULL),
	(6,'Alice','小罗莉',b'1','1997-02-14','  计算机','数据','吃饭睡觉','一等侯');

/*!40000 ALTER TABLE `studentinfo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usertable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usertable`;

CREATE TABLE `usertable` (
  `username` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `userpassword` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;

INSERT INTO `usertable` (`username`, `userpassword`)
VALUES
	('11','11'),
	('22','22');

/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
