/*
SQLyog Ultimate v11.33 (32 bit)
MySQL - 5.1.39-community : Database - librarymanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`librarymanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `librarymanagement`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `user_name` varchar(10) NOT NULL,
  `name` char(10) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `sec_q` char(100) DEFAULT NULL,
  `answer` char(20) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`user_name`,`name`,`password`,`sec_q`,`answer`) values ('galaxy123','raja','galaxyj7','What is your Nickname ?','bholu'),('gaurav123','gaurav','12345','What is your Nickname ?','gauriya'),('mk920684','mukesh','qwerty','What is your Nickname ?','muksi'),('nandan123','nandan','123456','What is your First Childhood friend ?','feku'),('nitin123','nitin','123456','What is your Nickname ?','golu'),('rit123','rit','1234','What is your Nickname ?','chiku');

/*Table structure for table `add_book` */

DROP TABLE IF EXISTS `add_book`;

CREATE TABLE `add_book` (
  `book_id` int(10) NOT NULL DEFAULT '0',
  `edition` int(4) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `page` int(100) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `add_book` */

insert  into `add_book`(`book_id`,`edition`,`name`,`publisher`,`price`,`page`) values (1,11,'3','yashwant',104.6,200),(2,67,'5','milman',400,500),(3,1,'mICROeLECTRONICS','Sedra Smith',800,1233),(9,3,'ggfg','fgfggf',44,444),(123,4,'java','mukesh',105,444);

/*Table structure for table `add_student` */

DROP TABLE IF EXISTS `add_student`;

CREATE TABLE `add_student` (
  `student_id` varchar(20) NOT NULL,
  `name` char(20) NOT NULL,
  `father_name` char(20) NOT NULL,
  `course` char(10) NOT NULL,
  `branch` char(10) NOT NULL,
  `year` char(20) NOT NULL,
  `semester` char(10) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `add_student` */

insert  into `add_student`(`student_id`,`name`,`father_name`,`course`,`branch`,`year`,`semester`) values ('0133Ec151064','Guddu Kumar','Shri Gautam mahto','BE/B.TECH','ECE','FORTH','VIII'),('0133EC151076','manishankar','bidhubhushan','BE/B.TECH','ECE','FORTH','VIII'),('0133ec151083','mukesh','shyamkant pd','BE/B.TECH','ECE','FORTH','VIII');

/*Table structure for table `issuedbookdetails` */

DROP TABLE IF EXISTS `issuedbookdetails`;

CREATE TABLE `issuedbookdetails` (
  `book_id` int(15) NOT NULL,
  `edition` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `page` int(20) NOT NULL,
  `student_id` varchar(30) NOT NULL,
  `studentname` varchar(25) DEFAULT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `year` varchar(15) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `issuedbookdetails` */

insert  into `issuedbookdetails`(`book_id`,`edition`,`name`,`publisher`,`price`,`page`,`student_id`,`studentname`,`father_name`,`course`,`branch`,`year`,`semester`,`date`) values (3,1,'mICROeLECTRONICS','Sedra Smith',800,1233,'0133ec151083','mukesh','shyamkant pd','BE/B.TECH','ECE','FORTH','VIII','20/03/19');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
