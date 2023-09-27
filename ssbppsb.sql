/*
SQLyog Enterprise - MySQL GUI v8.2 RC2
MySQL - 5.5.5-10.4.28-MariaDB : Database - db_stmik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_stmik` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_stmik`;

/*Table structure for table `tb_jenispembayaran` */

DROP TABLE IF EXISTS `tb_jenispembayaran`;

CREATE TABLE `tb_jenispembayaran` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_jenispembayaran` */

insert  into `tb_jenispembayaran`(`id`,`jenis`) values (1,'Pendaftaran'),(2,'Her-Registrasi per semester (1-8)'),(3,'Biaya Kuliah persemester / bisa cicil perbulan (Jan s/d Des)'),(4,'Sumbangan panti social Amanah mulia per semester (1-8)'),(5,'UTS'),(6,'UAS'),(7,'Klinik Spesialis Kompetensi (KSK)'),(8,'Softskill'),(9,'Praktikum'),(10,'Sidang Yudisium kelulusan D & S1'),(11,'Bimbingan dan konsultasi D3&S1'),(12,'Pengembangan kampus'),(13,'IKA-PPG'),(14,'Sertifikasi PAPME (Rumpun Kesehatan)'),(15,'Table Manner'),(16,'TOEIC'),(17,'Beauty Class'),(18,'Janji Profesi'),(19,'Sumpah Profesi (Rumpun Kesehatan)'),(20,'Sumbangan Perpustakaan'),(21,'Sertifikat pendamping ijazah (SKPI)'),(22,'Wisuda');

/*Table structure for table `tb_mhs` */

DROP TABLE IF EXISTS `tb_mhs`;

CREATE TABLE `tb_mhs` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `npm` varchar(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `gen` varchar(3) DEFAULT NULL,
  `kelas` varchar(35) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_mhs` */

insert  into `tb_mhs`(`id`,`npm`,`nama`,`gen`,`kelas`,`datetime`) values (1,'23MIF001','Oky Galih Pratama','L','MIF-2023','0000-00-00 00:00:00'),(2,'523421001','Dewi Tya Azzahra','P','KAT-XA41/23','0000-00-00 00:00:00'),(3,'23TIK002','Ardi','L','TIK-XW41/2\r\n','0000-00-00 00:00:00'),(4,'23MIF002 ','Candra Saputra','L','MIF-XELW41/23\r\n',NULL),(5,'23TIK003','Yudi Permana','L','TIK-EXK41/23',NULL),(6,'23MIF002 ','Dede Rianto','L','MIF-XLW41/23\r\n',NULL),(7,NULL,'Anisah Nurhasanah','P','MIF/W41/23\r\n',NULL),(8,'','Muhammad Junaedy Lutfianto','L','KAT-XA41/23',NULL),(9,'','Syafiq Yoga Pangestu','L','KAT-XA41/23',NULL);

/*Table structure for table `tb_pembayaran` */

DROP TABLE IF EXISTS `tb_pembayaran`;

CREATE TABLE `tb_pembayaran` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `npm` varchar(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `gen` varchar(3) DEFAULT NULL,
  `kelas` varchar(35) DEFAULT NULL,
  `jenis` varchar(45) DEFAULT NULL,
  `nilai` int(15) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `detail` varchar(35) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `img` varchar(300) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_pembayaran` */

insert  into `tb_pembayaran`(`id`,`npm`,`nama`,`gen`,`kelas`,`jenis`,`nilai`,`total`,`detail`,`keterangan`,`img`,`datetime`) values (56,'23TIK002','Ardi',NULL,NULL,'Her-Registrasi per semester (1-8)',400000,400000,'2','x','kanban.jpg','2023-08-08 11:20:34'),(57,'23TIK002','Ardi',NULL,NULL,'Her-Registrasi per semester (1-8)',200000,400000,'1','x','logo-hypertable-web-v-400x.png','2023-08-08 11:20:51'),(58,'23TIK002','Ardi',NULL,NULL,'Her-Registrasi per semester (1-8)',200000,400000,'2','x','logo-hypertable-web-v-400x.png','2023-08-08 11:20:51'),(59,'23TIK003','Yudi Permana',NULL,NULL,'UTS',200000,NULL,'','UTS','composer.jpg','2023-08-08 13:52:57'),(60,'23MIF001','Oky Galih Pratama',NULL,NULL,'Table Manner',300000,300000,'-','Cash','1575346401147.png','2023-08-08 13:56:20'),(61,'23MIF001','Oky Galih Pratama',NULL,NULL,'UAS',300000,300000,'-','x','Hbase.png','2023-08-08 13:56:34');

/*Table structure for table `tb_tagihan` */

DROP TABLE IF EXISTS `tb_tagihan`;

CREATE TABLE `tb_tagihan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `npm` varchar(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `gen` varchar(3) DEFAULT NULL,
  `kelas` varchar(35) DEFAULT NULL,
  `jenis` varchar(45) DEFAULT NULL,
  `nilai` int(15) DEFAULT NULL,
  `total` varchar(11) DEFAULT NULL,
  `detail` varchar(35) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `status` varchar(2) DEFAULT '0',
  `nota` varchar(15) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_tagihan` */

insert  into `tb_tagihan`(`id`,`npm`,`nama`,`gen`,`kelas`,`jenis`,`nilai`,`total`,`detail`,`keterangan`,`status`,`nota`,`datetime`) values (11,'23TIK002','Ardi',NULL,NULL,'Her-Registrasi per semester (1-8)',400000,NULL,'2','x','1','054928','2023-08-08 10:49:28'),(12,'23TIK003','Yudi Permana',NULL,NULL,'Janji Profesi',600000,NULL,'-','x','0','054947','2023-08-08 10:49:47'),(13,'23TIK002','Ardi',NULL,NULL,'Her-Registrasi per semester (1-8)',200000,NULL,'1','x','1','061928','2023-08-08 11:19:28'),(14,'23TIK002','Ardi',NULL,NULL,'Her-Registrasi per semester (1-8)',200000,NULL,'2','x','1','061928','2023-08-08 11:19:28'),(15,'23TIK002','Ardi',NULL,NULL,'Sumpah Profesi (Rumpun Kesehatan)',800000,NULL,'-','x','0','061949','2023-08-08 11:19:49'),(16,'23MIF001','Oky Galih Pratama',NULL,NULL,'Table Manner',600000,NULL,'-','Table Manner','1','085345','2023-08-08 13:53:45'),(17,'23MIF001','Oky Galih Pratama',NULL,NULL,'UAS',300000,NULL,'-','Tunggakan UAS','1','085551','2023-08-08 13:55:51');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `role` varchar(21) DEFAULT NULL,
  `noId` varchar(21) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `username` varchar(33) DEFAULT NULL,
  `password` varchar(33) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`role`,`noId`,`nama`,`username`,`password`,`datetime`) values (0,'superadmin','admin','Ajeng','admin','admin',NULL),(1,'mahasiswa','23MIF001','Oky Galih Pratama','user','23MIF001','0000-00-00 00:00:00'),(2,'mahasiswa','523421001','Dewi Tya Azzahra','user','523421001','0000-00-00 00:00:00'),(3,'mahasiswa','23TIK002','Ardi','user','23TIK002','0000-00-00 00:00:00'),(4,'mahasiswa','23MIF002','Candra Saputra','user','23MIF002',NULL),(5,'mahasiswa','23TIK003','Yudi Permana','user','23TIK003',NULL),(6,'mahasiswa','23MIF002','Dede Rianto','user','23MIF005',NULL),(7,'mahasiswa','23MIF007','Anisah Nurhasanah','user','23MIF007',NULL),(8,'mahasiswa','23MIF008','Muhammad Junaedy Lutfianto','user','23MIF008',NULL),(9,'mahasiswa','23MIF009','Syafiq Yoga Pangestu','user','23MIF009',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
