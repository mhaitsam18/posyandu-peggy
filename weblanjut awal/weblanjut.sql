﻿/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.1.37-MariaDB : Database - weblanjut
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`weblanjut` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `weblanjut`;

/*Table structure for table `ibuhamil` */

DROP TABLE IF EXISTS `ibuhamil`;

CREATE TABLE `ibuhamil` (
  `id_reg` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `nama_suami` varchar(255) NOT NULL,
  `pekerjaan_suami` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ibuhamil` */

insert  into `ibuhamil`(`id_reg`,`nama`,`pekerjaan`,`nama_suami`,`pekerjaan_suami`,`umur`,`alamat`,`notelp`) values 
(4,'reza','pns','dodool','hm','23','bb','6282285139826'),
(6,'tasya','pns','dodo','swasta','30','pku','082285139826');

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bln` varchar(255) NOT NULL,
  `thn` varchar(255) NOT NULL,
  `wilayah` varchar(255) NOT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `a` (`id_wilayah`),
  KEY `b` (`id_petugas`),
  CONSTRAINT `a` FOREIGN KEY (`id_wilayah`) REFERENCES `wilayah` (`id_wilayah`),
  CONSTRAINT `b` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `jadwal` */

insert  into `jadwal`(`id_jadwal`,`id_petugas`,`id_wilayah`,`nama`,`bln`,`thn`,`wilayah`) values 
(123,0,1,'ayu','04','2020','wilayah 2'),
(1007,0,2,'eza','04','2020','wilayah 6'),
(1008,0,1,'nana','07','2020','wilayah 4'),
(1066,0,3,'ani','04','2020','wilayah 5'),
(1133,0,2,'tia','04','2020','wilayah 7'),
(1144,0,4,'putri','06','2020','wilayah 3'),
(5646,0,5,'reza','12','2020','wilayah 1');

/*Table structure for table `pasienrujukan` */

DROP TABLE IF EXISTS `pasienrujukan`;

CREATE TABLE `pasienrujukan` (
  `id_rujukan` int(15) NOT NULL AUTO_INCREMENT,
  `namapasien` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nopasien` varchar(255) NOT NULL,
  `diagnosa` varchar(255) NOT NULL,
  `rumahsakit` varchar(255) NOT NULL,
  `puskesmas` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rujukan`)
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=latin1;

/*Data for the table `pasienrujukan` */

insert  into `pasienrujukan`(`id_rujukan`,`namapasien`,`umur`,`alamat`,`nopasien`,`diagnosa`,`rumahsakit`,`puskesmas`) values 
(123,'putri','7','bbc4','001','bbc','makrayu',''),
(736,'reza','12','bbc','002','demam','makrayu','');

/*Table structure for table `pemeriksaan` */

DROP TABLE IF EXISTS `pemeriksaan`;

CREATE TABLE `pemeriksaan` (
  `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT,
  `id_pasien` int(15) NOT NULL,
  `id_reg` int(15) NOT NULL,
  `id_petugas` int(15) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `gravida` int(11) NOT NULL,
  `partes` int(11) NOT NULL,
  `abortus` int(11) NOT NULL,
  `jarak_kehamilan` int(11) NOT NULL,
  `usia_kehamilan` int(11) NOT NULL,
  `tinggi_badan` float NOT NULL,
  `lila` float NOT NULL,
  `sistol` float NOT NULL,
  `diastol` float NOT NULL,
  `tetanus_toksoid` varchar(30) NOT NULL,
  `fe` float NOT NULL,
  `tfu` float NOT NULL,
  `letak_bayi` varchar(50) NOT NULL,
  `hpht` date NOT NULL,
  `tp` date NOT NULL,
  `hb` varchar(30) NOT NULL,
  `gol_dar` enum('A','AB','B','O') DEFAULT NULL,
  `namaobat` varchar(255) NOT NULL,
  `tindakanmedis` varchar(255) NOT NULL,
  `hbsag` enum('Positif','Negatif') DEFAULT NULL,
  `hiv` enum('Positif','Negatif') DEFAULT NULL,
  `sypilis` enum('Positif','Negatif') DEFAULT NULL,
  `pembayaran` enum('Jamsoskes','BPJS','Bayar') DEFAULT NULL,
  PRIMARY KEY (`id_pemeriksaan`),
  KEY `c` (`id_reg`),
  KEY `d` (`id_petugas`),
  CONSTRAINT `c` FOREIGN KEY (`id_reg`) REFERENCES `ibuhamil` (`id_reg`),
  CONSTRAINT `d` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `pemeriksaan` */

insert  into `pemeriksaan`(`id_pemeriksaan`,`id_pasien`,`id_reg`,`id_petugas`,`tgl_periksa`,`gravida`,`partes`,`abortus`,`jarak_kehamilan`,`usia_kehamilan`,`tinggi_badan`,`lila`,`sistol`,`diastol`,`tetanus_toksoid`,`fe`,`tfu`,`letak_bayi`,`hpht`,`tp`,`hb`,`gol_dar`,`namaobat`,`tindakanmedis`,`hbsag`,`hiv`,`sypilis`,`pembayaran`) values 
(23,5,4,1,'2020-04-18',1,2,3,15,3,167,33,80,90,'12',77,55,'Letak Bokong','2020-06-18','2020-07-18','Rendah','AB','obat flu','fluuu','Negatif','Negatif','Negatif','Jamsoskes'),
(25,7,6,2,'2020-04-18',1,5,2,12,3,145,45,90,100,'16',19,20,'Letak Bokong','2020-05-18','2020-08-18','Normal','AB','obat flu','fluuy','Negatif','Negatif','Negatif','Jamsoskes'),
(26,2,4,3,'2020-04-18',0,4,0,13,2,155,39,90,100,'45',54,77,'Letak Kepala','2020-06-18','2020-11-18','Normal','AB','nope','katek','Negatif','Negatif','Negatif','Jamsoskes'),
(27,1,6,4,'2020-04-18',4,5,1,16,5,165,36,90,110,'47',45,53,'Letak Bokong','2020-04-18','2020-08-18','Normal','AB','no','yes','Negatif','Negatif',NULL,'Jamsoskes'),
(28,4,4,5,'2020-04-18',1,2,1,15,7,177,35,80,90,'66',55,44,'Letak Kepala','2020-05-18','2020-08-18','Normal','AB','obat flu','pluuu','Negatif','Negatif',NULL,'Jamsoskes'),
(29,8,6,6,'2020-04-18',2,6,2,18,3,145,45,88,102,'66',55,44,'Letak Bokong','2020-04-18','2020-06-18','Rendah','B','katek','obat','Negatif','Negatif','Negatif','Jamsoskes');

/*Table structure for table `pencatatan` */

DROP TABLE IF EXISTS `pencatatan`;

CREATE TABLE `pencatatan` (
  `id_pencatatan` int(11) NOT NULL AUTO_INCREMENT,
  `no_pasien` varchar(50) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nama_bidan` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `tinggi` varchar(255) NOT NULL,
  `bb` varchar(255) NOT NULL,
  `temperatur` varchar(255) NOT NULL,
  `lingkar` varchar(255) NOT NULL,
  `jenis_imunisasi` varchar(255) NOT NULL,
  `diagnosa` varchar(255) NOT NULL,
  `penyuluhan` varchar(255) NOT NULL,
  `vitamin` varchar(255) NOT NULL,
  `obat` varchar(255) NOT NULL,
  `notelp` varchar(255) NOT NULL,
  `tgl_pencatatan` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_pencatatan`),
  KEY `e` (`id_petugas`),
  KEY `g` (`no_pasien`),
  CONSTRAINT `e` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  CONSTRAINT `g` FOREIGN KEY (`no_pasien`) REFERENCES `regisanak` (`no_pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pencatatan` */

insert  into `pencatatan`(`id_pencatatan`,`no_pasien`,`id_petugas`,`nama_bidan`,`umur`,`kategori`,`tinggi`,`bb`,`temperatur`,`lingkar`,`jenis_imunisasi`,`diagnosa`,`penyuluhan`,`vitamin`,`obat`,`notelp`,`tgl_pencatatan`,`status`) values 
(1,'001',0,'ana','12','Bayi (0-12 bln)','67','4','33','56','9 bulan (Campak)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-02-27',0),
(4,'002',0,'indra','3','Bayi (0-12 bln)','34','4','36','22','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6281367191856','2020-02-27',1),
(5,'003',0,'ani','3','Bayi (0-12 bln)','67','4','32','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-02-27',1),
(6,'004',0,'ana','3','Bayi (0-12 bln)','56','4','32','34','3 bulan (BPT2 +Volio3)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-02-27',1),
(7,'5',0,'ani','6','Bayi (0-12 bln)','67','4','32','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-02-27',0),
(10,'002',0,'gukguk','12','Bayi (0-12 bln)','64','6','34','66','0 - 7 hari (HBO)','demam','sakit','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-08',1),
(11,'1234',0,'wsgj','1','Bayi (0-12 bln)','42','3','32','33','0 - 7 hari (HBO)','demam','rceoh','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-09',1),
(14,'1024',0,'gh','3','Bayi (0-12 bln)','123','45','32','33','2 bulan (BPT1 +Volio2)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-13',1),
(15,'022',0,'gukguk','19','Bayi (0-12 bln)','36','4','34','34','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-13',1),
(16,'133',0,'wsgj','2','Batita (16-19 bln)','4245','2','32','31','0 - 7 hari (HBO)','gf','bjkdsha','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-13',0),
(17,'16',0,'wsgj7','2','Batita (16-19 bln)','4245','2','32','31','0 - 7 hari (HBO)','gf','bjkdsha','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-13',0),
(18,'16',0,'wsgj7789','2','Batita (16-19 bln)','4245','2','32','31','0 - 7 hari (HBO)','gf','bjkdsha','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-13',0),
(19,'133',0,'gh','3','Bayi (0-12 bln)','67','7','34','34','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 1 tahun - 5 tahun ) warna merah','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-13',0),
(21,'20',0,'ani','1','Bayi (0-12 bln)','56','4','34','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','082285139826','2020-03-14',0),
(22,'20',0,'ani','1','Bayi (0-12 bln)','56','4','34','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','082285139826','2020-03-14',0),
(23,'20',0,'anina','1','Bayi (0-12 bln)','56','4','34','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','-- PILIH --','082285139826','2020-03-14',0),
(25,'144',0,'ani','3','Bayi (0-12 bln)','56','4','32','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-03-19',1),
(26,'46',0,'ana','1','Bayi (0-12 bln)','46','4','33','34','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','9846557887','2020-04-12',1),
(27,'00033',0,'ani','4','Bayi (0-12 bln)','56','4','33','46','0 - 7 hari (HBO)','sehat','tdk ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-04-14',0),
(29,'002',0,'nana','19','Batita (16-19 bln)','56','6','38','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-04-18',0),
(31,'4',0,'indra','3','Bayi (0-12 bln)','34','4','36','22','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6281367191856','2020-04-18',0),
(34,'11',0,'wsgj','1','Bayi (0-12 bln)','42','3','32','33','0 - 7 hari (HBO)','demam','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6282285139826','2020-04-19',0),
(35,'25',0,'ani','3','Bayi (0-12 bln)','56','4','32','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','6283186730718','2020-04-20',0),
(36,'27',0,'nana','4','Bayi (0-12 bln)','56','4','33','46','0 - 7 hari (HBO)','sehat','tdk ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','082285139826','2020-04-20',0),
(37,'02',0,'nana','4','Bayi (0-12 bln)','56','44','38','46','0 - 7 hari (HBO)','sehat','tidak ada','Vitamin A (umur 6 bulan - 1 tahun ) warna biru','½ pil (umur 1 - 2 tahun)','08346348289','2020-04-20',0);

/*Table structure for table `petugas` */

DROP TABLE IF EXISTS `petugas`;

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('posyandu','puskesmas') NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_petugas`),
  UNIQUE KEY `id_petugas` (`id_petugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `petugas` */

insert  into `petugas`(`id_petugas`,`username`,`nama`,`foto`,`password`,`status`,`pekerjaan`) values 
(0,'ayu@gmail.com','ayu','default.png','123','puskesmas',''),
(1,'reza@gmail.com','reza','default.png','123','posyandu',''),
(2,'trifandrap@gmail.com','gygy','default.png','123','puskesmas',''),
(3,'ayu@gmail.com','ayu','img_5e576b9961235.JPG','123','posyandu',''),
(4,'peggy@gmail.com','peggy tf','default.png','123','puskesmas',''),
(5,'reza@gmail.com','reza','img_5e6666649f1a3.JPG','123','puskesmas',''),
(6,'ayu@gmail.com','ayu','img_5e66668f6327f.JPG','123','puskesmas',''),
(7,'nana@Gmail.com','nana','img_5e6666d73b214.JPG','123','puskesmas',''),
(8,'ayu@gmail.com','ayu','img_5e74987449773.JPG','123','puskesmas',''),
(9,'selly@gmail.com','selly','img_5e7498950d7ce.JPG','123','puskesmas',''),
(10,'reza1@gmail.com','reza','img_5e772ba3ebdf3.JPG','123','puskesmas',''),
(11,'reza2@gmail.com','reza','default.png','123','puskesmas',''),
(12,'ini@gmail.com','ayu','default.png','123','puskesmas',''),
(13,'nana@Gmail.com','nana','default.png','123','puskesmas',''),
(14,'WE@gmail.com','12','default.png','123','posyandu',''),
(15,'123@gmail.com','123','default.png','123','posyandu',''),
(16,'ayu@gmail.com','ayu','img_5e95cf6f9173b.JPG','123','posyandu',''),
(18,'nana@Gmail.com','nana','default.png','123','puskesmas',''),
(19,'za@gmail.com','reza','img_5e9addb3ba16f.JPG','123','posyandu','admin'),
(20,'peggy@gmail.com','peggy','img_5e9c03193dc6e.JPG','123','puskesmas','petugas'),
(21,'putri@gmail.com','putri','img_5e9c714708486.JPG','123','posyandu','petugas posyandu'),
(22,'ja@gmail.com','ja','img_5e9c72ce8f1bf.JPG','123','puskesmas','petugas puskesmas');

/*Table structure for table `regisanak` */

DROP TABLE IF EXISTS `regisanak`;

CREATE TABLE `regisanak` (
  `no_pasien` varchar(50) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `p_ibu` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `p_ayah` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_daftar` varchar(255) NOT NULL,
  PRIMARY KEY (`no_pasien`),
  KEY `f` (`id_wilayah`),
  CONSTRAINT `f` FOREIGN KEY (`id_wilayah`) REFERENCES `wilayah` (`id_wilayah`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `regisanak` */

insert  into `regisanak`(`no_pasien`,`id_wilayah`,`nama_anak`,`tempat_lahir`,`tanggal_lahir`,`jk`,`nama_ibu`,`p_ibu`,`nama_ayah`,`p_ayah`,`alamat`,`tgl_daftar`) values 
('00033',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('000333',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('001',3,'yuyi','bandung','2020-02-12','Perempuan','mama','dokter','ady','dokter','pga','2020-02-27'),
('002',2,'ana','pekanbaru','2020-04-18','Laki - Laki','ani','dokter','andi','dokter','bbc','2020-04-18'),
('003',2,'reza','pekanbaru','2020-03-21','Perempuan','ana','dokter','ady','dokter','bbc','2020-03-09'),
('004',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('02',1,'putri','bandung','2020-02-04','Perempuan','ani','pns','andi','dokter','pekanbaru','2020-04-20'),
('022',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('1024',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('11',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('1234',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('133',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('144',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('16',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('20',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('25',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('27',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('4',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('46',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20'),
('5',1,'Reza','pekanbaru','2020-03-11','Perempuan','tia','dokter','Adi','dokter','bbc','2020-04-20');

/*Table structure for table `wilayah` */

DROP TABLE IF EXISTS `wilayah`;

CREATE TABLE `wilayah` (
  `id_wilayah` int(11) NOT NULL AUTO_INCREMENT,
  `nama_wilayah` varchar(225) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `rw` varchar(255) NOT NULL,
  `rt` varchar(255) NOT NULL,
  `nama_posyandu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_wilayah`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `wilayah` */

insert  into `wilayah`(`id_wilayah`,`nama_wilayah`,`kelurahan`,`rw`,`rt`,`nama_posyandu`) values 
(1,'Wilayah 1','27 Ilir','1 - 2','1 - 10','Posyandu A'),
(2,'Wilayah 2','28 Ilir','1 - 3','1 - 14','Posyandu B'),
(3,'Wilayah 3','29 Ilir','1 - 11','1 - 35','Posyandu C'),
(4,'Wilayah 4','30 Ilir','1 - 16','1 - 60','Posyandu D'),
(5,'Wilayah 5','32 Ilir','1 - 8','1 - 38','Posyandu E'),
(6,'Wliayah 6','35 Ilir','1 - 7','1 - 36','Posyandu F'),
(7,'Wilayah 7','Kemang Manis','1 - 4','1 - 13','Posyandu G');

/* Trigger structure for table `regisanak` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `hapus_regisAnakk` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `hapus_regisAnakk` BEFORE DELETE ON `regisanak` FOR EACH ROW 
	begin
		delete from pencatatan where no_pasien = old.no_pasien;
end */$$


DELIMITER ;

/* Function  structure for function  `jumlah_daftar` */

/*!50003 DROP FUNCTION IF EXISTS `jumlah_daftar` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `jumlah_daftar`(wil INT) RETURNS int(11)
    DETERMINISTIC
BEGIN 
	RETURN (SELECT COUNT(*) AS "Jumlah Pendaftar" FROM regisanak WHERE id_wilayah=wil);
END */$$
DELIMITER ;

/* Function  structure for function  `jumlah_history` */

/*!50003 DROP FUNCTION IF EXISTS `jumlah_history` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `jumlah_history`(wil INT) RETURNS int(11)
    DETERMINISTIC
BEGIN 
	RETURN (SELECT COUNT(*) AS "Jumlah Laporan" FROM pencatatan p,regisanak r WHERE p.no_pasien=r.no_pasien AND id_wilayah = wil AND STATUS=1);
END */$$
DELIMITER ;

/* Function  structure for function  `jumlah_laporan` */

/*!50003 DROP FUNCTION IF EXISTS `jumlah_laporan` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `jumlah_laporan`(wil INT) RETURNS int(11)
    DETERMINISTIC
BEGIN 
	RETURN (SELECT COUNT(*) AS "Jumlah Laporan" FROM pencatatan p,regisanak r WHERE p.no_pasien=r.no_pasien AND id_wilayah = wil AND STATUS=0);
END */$$
DELIMITER ;

/* Function  structure for function  `jumlah_pencatatan` */

/*!50003 DROP FUNCTION IF EXISTS `jumlah_pencatatan` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `jumlah_pencatatan`(wil INT) RETURNS int(11)
    DETERMINISTIC
BEGIN 
	RETURN (SELECT COUNT(*) AS "Jumlah Pencatatan" FROM pencatatan p,regisanak r WHERE p.no_pasien=r.no_pasien AND r.id_wilayah=wil);
END */$$
DELIMITER ;

/* Procedure structure for procedure `getAllHistory` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAllHistory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllHistory`(IN wil INT)
BEGIN
	SELECT * FROM pencatatan p,regisanak r WHERE p.no_pasien=r.no_pasien AND id_wilayah = wil AND STATUS=1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `getAllLaporan` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAllLaporan` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLaporan`(IN wil INT)
BEGIN
	SELECT * FROM pencatatan p,regisanak r WHERE p.no_pasien=r.no_pasien and id_wilayah = wil and status=0;
END */$$
DELIMITER ;

/* Procedure structure for procedure `getPencatatan_RegisAnak` */

/*!50003 DROP PROCEDURE IF EXISTS  `getPencatatan_RegisAnak` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getPencatatan_RegisAnak`(in wil int)
begin
	select p.*,r.nama_anak from pencatatan p,regisanak r 
	where p.no_pasien = r.no_pasien and r.id_wilayah = wil;
end */$$
DELIMITER ;

/* Procedure structure for procedure `getRegisAnak` */

/*!50003 DROP PROCEDURE IF EXISTS  `getRegisAnak` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getRegisAnak`(IN wil INT)
BEGIN
	SELECT * FROM regisanak where id_wilayah = wil;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
