/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.26 : Database - db_staff
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_staff` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_staff`;

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staffcode` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `depart_name` varchar(30) DEFAULT NULL,
  `depart_id` varchar(20) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `position_id` varchar(20) DEFAULT NULL,
  `add_name` varchar(20) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `power` char(1) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Data for the table `staff` */

insert  into `staff`(`staff_id`,`staffcode`,`name`,`password`,`phone`,`email`,`address`,`state`,`depart_name`,`depart_id`,`position`,`position_id`,`add_name`,`add_time`,`power`,`remark`) values (1,'001','莲花','123456','1341324234','123412@qq.com','21313','12123','研发部','321','的23','1','23123','2022-04-28 10:09:33','1','123'),(3,'123','23141','123456','1233','2341','1','23414','1','2341','1','3241','1','2022-04-28 10:09:33','1','123'),(5,'123456','帅哥','123456','188189','744621980@qq.com','陕西','1','研发部','1','员工','1','admin','2022-04-28 23:02:05','2','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
