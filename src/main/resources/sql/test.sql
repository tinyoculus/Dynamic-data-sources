/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.28 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `studentId` int(11) DEFAULT NULL COMMENT '学员ID',
  `subjectName` varchar(20) DEFAULT NULL COMMENT '科目名称',
  `score` float DEFAULT NULL COMMENT '考试成绩',
  `examTime` datetime DEFAULT NULL COMMENT '考试时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `score` */

insert  into `score`(`id`,`studentId`,`subjectName`,`score`,`examTime`) values (1,1,'语文',70,'2015-02-26 18:11:39'),(2,1,'数学',88.8,'2015-03-26 18:11:50'),(3,1,'英语',76,'2015-04-26 18:11:56'),(4,1,'历史',96,'2015-05-26 18:12:02'),(5,2,'语文\r\n数学\r\n英语\r\n历史\r\n语文',84,'2015-02-26 18:11:39'),(6,2,'数学',56,'2015-03-26 18:11:50'),(7,2,'英语',86,'2015-04-26 18:11:56'),(8,2,'历史',45,'2015-05-26 18:12:02'),(9,3,'语文',87,'2015-02-26 18:11:39'),(10,3,'数学',98,'2015-03-26 18:11:50'),(11,3,'英语',67,'2015-04-26 18:11:56'),(12,3,'历史',86,'2015-05-26 18:12:02'),(13,4,'语文',97,'2015-02-26 18:11:39'),(14,4,'数学',68,'2015-03-26 18:11:50'),(15,4,'英语',79,'2015-04-26 18:11:56'),(16,4,'历史',83,'2015-05-26 18:12:02'),(17,5,'语文',92,'2015-02-26 18:11:39'),(18,5,'数学',93,'2015-03-26 18:11:50'),(19,5,'英语',65,'2015-04-26 18:11:56'),(20,5,'历史',88,'2015-05-26 18:12:02'),(21,6,'语文',87,'2015-01-05 18:48:48'),(22,6,'数学',67,'2015-01-05 18:48:48'),(24,6,'历史',88,'2015-01-05 18:48:48');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `score_sum` varchar(20) DEFAULT NULL COMMENT '总成绩',
  `score_avg` varchar(20) DEFAULT NULL COMMENT '平均成绩',
  `age` int(11) DEFAULT NULL COMMENT '1男0女',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`score_sum`,`score_avg`,`age`) values (1,'小明','355','84',1),(2,'小王','187','62.3',1),(4,'柱子','230','76.7',1),(5,'大毛','','',0),(6,'亮子','0','0',1),(18,'莉莉','288.5','88.5',20);

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(32) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`permissionname`,`role_id`) values (1,'add',2),(2,'del',1),(3,'update',2),(4,'query',3),(5,'user:query',1),(6,'user:edit',2);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(32) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`rolename`) values (1,'admin'),(2,'manager'),(3,'normal');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`) values (1,'tom','123456'),(2,'jack','123456'),(3,'rose','123456');

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`user_id`,`role_id`) values (1,1),(1,3),(2,2),(2,3),(3,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
