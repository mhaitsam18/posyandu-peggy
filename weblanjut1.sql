-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 01:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weblanjut1`
--

-- --------------------------------------------------------

--
-- Table structure for table `entitas_imunisasi_kategori`
--

CREATE TABLE `entitas_imunisasi_kategori` (
  `id_imunisasi_kategori` int(11) NOT NULL,
  `id_kategori_usia` int(11) NOT NULL,
  `id_imunisasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entitas_imunisasi_kategori`
--

INSERT INTO `entitas_imunisasi_kategori` (`id_imunisasi_kategori`, `id_kategori_usia`, `id_imunisasi`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 1, 3),
(4, 2, 3),
(5, 1, 6),
(6, 2, 6),
(7, 1, 8),
(8, 2, 8),
(9, 1, 9),
(10, 2, 9),
(11, 1, 10),
(12, 2, 10),
(13, 1, 11),
(14, 3, 11),
(15, 1, 12),
(16, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `ibuhamil`
--

CREATE TABLE `ibuhamil` (
  `id_reg` int(15) NOT NULL,
  `tanggal_daftar` date NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gol_dar` enum('A','B','AB','O') NOT NULL,
  `nama_suami` varchar(255) NOT NULL,
  `pekerjaan_suami` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelurahan` enum('27 Ilir','28 Ilir','29 Ilir','30 Ilir','32 Ilir','35 Ilir','Kemang Manis') NOT NULL,
  `notelp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ibuhamil`
--

INSERT INTO `ibuhamil` (`id_reg`, `tanggal_daftar`, `nama`, `pekerjaan`, `tgl_lahir`, `gol_dar`, `nama_suami`, `pekerjaan_suami`, `umur`, `alamat`, `kelurahan`, `notelp`) VALUES
(1212, '2021-03-02', 'zackaaaaa', 'PNS', '1999-05-27', 'O', 'Jerry', 'Swasta', '25', 'Bandung', '28 Ilir', '08121755498'),
(1234, '2021-04-29', 'Haitsam', '', '2021-04-08', 'A', 'Reza', '', '0', '12', '27 Ilir', '+6285380033500'),
(2706, '2021-04-24', 'nana', 'IRT', '1998-06-28', 'AB', 'dudun', 'PNS', '34', 'jalan bbc', '30 Ilir', '0853677324544'),
(4546, '2021-04-24', 'juju', 'PNS', '1995-08-30', 'B', 'zaza', 'Swasta', '25', 'jalan kecil no 1', '27 Ilir', '081324356798'),
(12344, '2021-04-29', 'Rini Sarlita', 'IRT', '2021-04-29', 'A', 'Reza', '', '0', 'oke', '27 Ilir', '+628538003350'),
(6847890, '2021-07-08', 'ayu', 'PNS', '2019-12-05', 'A', 'ufhc', 'Karyawan Swasta', '1', 'bbc', '28 Ilir', '47857857989090'),
(8912093, '2021-04-24', 'Haitsam', 'PNS', '1999-02-18', 'A', 'Inul', 'PNS', '22', 'oke', '28 Ilir', '+6285380033500'),
(8912097, '2021-04-24', 'Olga Paurenta', 'IRT', '2000-11-26', 'O', 'Inul', 'PNS', '22', 'Jl. Kota', 'Kemang Manis', '+6285380033500'),
(89120971, '2021-04-29', 'Eva Sofia', 'PNS', '2021-04-29', 'B', 'Reza', '', '0', 'oke', '28 Ilir', '+6285380033500'),
(2147483647, '2021-04-29', 'Eva Sofia', '', '2021-05-08', 'B', 'Inul', '', '', 'wq', '29 Ilir', '+6285380033500');

-- --------------------------------------------------------

--
-- Table structure for table `imunisasi`
--

CREATE TABLE `imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `imunisasi` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imunisasi`
--

INSERT INTO `imunisasi` (`id_imunisasi`, `imunisasi`) VALUES
(2, '2 bulan (DPT1/Volio I)'),
(3, '0 - 7 hari (HBO)'),
(6, '1 bulan (BCG)'),
(8, '3 bulan (DPT 2/Volio 2)'),
(9, '4 bulan (DPT 3/Volio 3)'),
(10, '9 bulan (Campak)'),
(11, '18 bulan (Boster DPT)'),
(12, '2 tahun (Boster Campak)');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bln` varchar(255) NOT NULL,
  `thn` varchar(255) NOT NULL,
  `wilayah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_petugas`, `id_wilayah`, `nama`, `bln`, `thn`, `wilayah`) VALUES
(137, 0, 0, 'nana putri', '11', '2020', 'Wliayah 6'),
(876, 0, 0, 'sasan', '09', '2020', 'Wilayah 1'),
(1133, 1, 5, 'tia', '03', '2020', 'Wilayah 7'),
(53738, 0, 0, 'Reza Ayu Putri', '01', '2021', 'Wilayah 3'),
(937823, 0, 0, 'peggy tri fandra', '12', '2021', 'Wilayah 7');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `id_jenis` int(11) NOT NULL,
  `pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`id_jenis`, `pembayaran`) VALUES
(1, 'Jamsoskes'),
(3, 'BPJS'),
(4, 'Bayar');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_usia`
--

CREATE TABLE `kategori_usia` (
  `id_usia` int(11) NOT NULL,
  `usia` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_usia`
--

INSERT INTO `kategori_usia` (`id_usia`, `usia`) VALUES
(1, 'Balita (0-5 tahun)'),
(2, 'Bayi (0-12 bulan)'),
(3, 'Batita (1-3 tahun)');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_hb`
--

CREATE TABLE `kondisi_hb` (
  `id_hb` int(11) NOT NULL,
  `kondisiHb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kondisi_hb`
--

INSERT INTO `kondisi_hb` (`id_hb`, `kondisiHb`) VALUES
(1, 'Rendah (< 10 gram %)'),
(3, 'Normal (> 11 gram %)');

-- --------------------------------------------------------

--
-- Table structure for table `letak_bayi`
--

CREATE TABLE `letak_bayi` (
  `id_letak` int(11) NOT NULL,
  `letakBayi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `letak_bayi`
--

INSERT INTO `letak_bayi` (`id_letak`, `letakBayi`) VALUES
(1, 'LETBO (Letak Bokong)'),
(2, 'LKEP (Letak Kepala)'),
(3, 'LETLI (Letak Lintang)');

-- --------------------------------------------------------

--
-- Table structure for table `obat_cacing`
--

CREATE TABLE `obat_cacing` (
  `id_obat` int(11) NOT NULL,
  `obatCacing` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat_cacing`
--

INSERT INTO `obat_cacing` (`id_obat`, `obatCacing`) VALUES
(1, '1/2 pil (umur 1 - 2 tahun)'),
(2, '1 pil (umur 2 - 5 tahun)');

-- --------------------------------------------------------

--
-- Table structure for table `pasienrujukan`
--

CREATE TABLE `pasienrujukan` (
  `id_rujukan` int(15) NOT NULL,
  `no_rujukan` varchar(255) NOT NULL,
  `puskesmas` varchar(255) NOT NULL,
  `rumahsakit` varchar(255) NOT NULL,
  `kab_kota` varchar(255) NOT NULL,
  `poli` varchar(255) NOT NULL,
  `namapasien` varchar(255) NOT NULL,
  `umur` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nopasien` varchar(255) NOT NULL,
  `diagnosa` varchar(255) NOT NULL,
  `tgl_pembuatan` date NOT NULL,
  `pasien_rujukan_dari` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasienrujukan`
--

INSERT INTO `pasienrujukan` (`id_rujukan`, `no_rujukan`, `puskesmas`, `rumahsakit`, `kab_kota`, `poli`, `namapasien`, `umur`, `alamat`, `nopasien`, `diagnosa`, `tgl_pembuatan`, `pasien_rujukan_dari`, `status`) VALUES
(42, '638493943', 'Puskesmas Makrayu', '', 'Palembang, Ilir II', 'Poli KIA Posyandu', 'Ayu', '18 Bulan', 'bbc4 sukapura', '6383499', 'Demam Tinggi, Panas', '2021-07-05', '', 0),
(47, '7328358', 'Puskesmas Makrayu', '', 'Palembang', 'Poli KIA Posyandu', 'peggy', '18 Bulan', 'jalan babakan ciamis', '92786389', 'Demam Tinggi, panas tinggi dan flu', '2021-07-09', 'Posyandu', 0),
(49, '78487925809', 'Puskesmas Makrayu', '', 'Palembang', 'Poli KIA Posyandu', 'putri ana ayu', '18 Bulan', 'pku ya', '46578589', 'flu', '2021-07-10', '', 0),
(50, '252789', 'Puskesmas Makrayu', '', 'Palembang', 'Poli KIA Posyandu mawar', 'tiaaa', '18 Bulan', 'pku', '658749785', 'Demam Tinggi', '2021-07-10', 'Posyandu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_akses`
--

CREATE TABLE `password_akses` (
  `id_password` int(11) NOT NULL,
  `role` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password_akses`
--

INSERT INTO `password_akses` (`id_password`, `role`, `password`) VALUES
(1, 'Posyandu', '1234'),
(2, 'Puskesmas', '4321'),
(3, 'Superadmin', '321');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `nama_pekerjaan` varchar(255) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `nama_pekerjaan`, `tipe`) VALUES
(1, 'PNS', 'pasien'),
(2, 'Guru', 'suami'),
(4, 'Wirausaha', 'pasien'),
(5, 'Karyawan Swasta', 'suami'),
(8, 'IRT', 'pasien'),
(10, 'PNS', 'Suami'),
(11, 'Ngurus Anak', 'Pasien');

-- --------------------------------------------------------

--
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id_pemeriksaan` int(11) NOT NULL,
  `id_reg` int(15) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_petugas` int(15) NOT NULL,
  `idWilayah` int(11) NOT NULL,
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
  `detak_jantung` varchar(225) NOT NULL,
  `hpht` date NOT NULL,
  `tp` date NOT NULL,
  `hb` varchar(30) NOT NULL,
  `namaobat` varchar(225) NOT NULL,
  `tindakanmedis` varchar(225) NOT NULL,
  `hbsag` enum('Positif','Negatif') DEFAULT NULL,
  `hiv` enum('Positif','Negatif') DEFAULT NULL,
  `sypilis` enum('Positif','Negatif') DEFAULT NULL,
  `pembayaran` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id_pemeriksaan`, `id_reg`, `id_pasien`, `id_petugas`, `idWilayah`, `tgl_periksa`, `gravida`, `partes`, `abortus`, `jarak_kehamilan`, `usia_kehamilan`, `tinggi_badan`, `lila`, `sistol`, `diastol`, `tetanus_toksoid`, `fe`, `tfu`, `letak_bayi`, `detak_jantung`, `hpht`, `tp`, `hb`, `namaobat`, `tindakanmedis`, `hbsag`, `hiv`, `sypilis`, `pembayaran`) VALUES
(5, 0, 1212, 5092, 1, '2020-01-02', 29, 1, 2, 3, 6, 145, 22, 90, 80, '11', 33, 44, 'LENJEH', '90/100', '2020-12-03', '2020-12-25', 'Rendah (< 10 gram %)', 'cacing pita', 'medis', 'Negatif', 'Negatif', 'Negatif', 'Bayar'),
(6, 0, 778866, 21231, 1, '2020-12-03', 0, 0, 1, 1, 4, 177, 54, 89, 99, '53', 17, 19, 'Letak Bokong', '90/100', '2020-11-29', '2021-01-09', 'Normal', 'neurobion', 'memberikan obat tambah darah', 'Negatif', 'Positif', 'Positif', 'Bayar'),
(7, 0, 555, 50924, 1, '2020-12-03', 1, 0, 2, 2, 3, 155, 32, 45, 55, '5', 6, 7, 'Letak Kepala', '90/100', '2020-12-03', '2020-12-03', 'Rendah', 'tidak ada ', 'melakukan pemeriksaan rutin', 'Positif', 'Negatif', 'Negatif', 'Bayar'),
(8, 0, 505432, 2705, 1, '2020-12-21', 0, 0, 2, 4, 8, 145, 56, 90, 110, '34', 60, 6, 'Letak Bokong', '90/100', '2020-12-07', '2021-03-31', 'Pilih kondisi hb', 'neuobion ', 'memberikan obat tambah darah', 'Negatif', 'Negatif', 'Negatif', 'Jamsoskes'),
(9, 0, 131, 2705, 2, '2020-12-21', 0, 0, 1, 6, 9, 156, 45, 80, 90, '5', 67, 50, 'Letak Kepala', '90/100', '2020-11-29', '2021-01-28', 'Normal', 'tidak ada ', 'melakukan pemeriksaan saja', 'Negatif', 'Negatif', 'Negatif', 'BPJS'),
(10, 0, 555, 270500, 3, '2020-12-24', 1, 1, 2, 7, 9, 165, 23, 80, 90, '50', 42, 12, 'Letak Bokong', '90/100', '2020-10-13', '2021-03-03', 'Rendah', 'neurobion', 'memberikan obat tambah darah', 'Negatif', 'Negatif', 'Negatif', 'Bayar'),
(11, 0, 1212, 5092, 2, '2021-04-07', 12, 12, 12, 1, 1, 123, 12, 12, 12, '12', 121, 121, 'LETBO (Letak Bokong)', 'ada', '2021-03-30', '2021-04-07', 'Rendah (< 10 gram %)', 'asdas', 'adasda', 'Negatif', 'Negatif', 'Negatif', 'Jamsoskes'),
(12, 0, 1212, 5092, 2, '2021-04-06', 12, 112, 12, 121, 12, 12, 12, 112, 12, '12', 12, 12, 'LKEP (Letak Kepala)', '12', '2021-03-28', '2021-05-07', 'Rendah (< 10 gram %)', '12', '12', 'Positif', 'Positif', 'Positif', 'BPJS'),
(13, 0, 1212, 5092, 0, '2021-04-08', 1, 1, 1, 4, 2, 132, 123, 9, 10, '2', 2, 31, 'LKEP (Letak Kepala)', '90/100', '2021-04-24', '2021-04-24', 'Normal (> 11 gram %)', '-', 'medis', NULL, NULL, NULL, NULL),
(14, 0, 1212, 5092, 0, '2021-04-08', 1, 1, 1, 4, 2, 132, 123, 9, 10, '2', 2, 31, 'LKEP (Letak Kepala)', '90/100', '2021-04-24', '2021-04-24', 'Normal (> 11 gram %)', '-', 'medis', 'Positif', 'Positif', 'Negatif', 'BPJS'),
(15, 0, 1212, 17, 0, '2021-04-24', 1, 1, 1, 12, 12, 11, 12, 11, 11, '11', 11, 11, 'LETBO (Letak Bokong)', '11/11', '2021-04-17', '2021-04-24', 'Rendah (< 10 gram %)', '-', '-', 'Negatif', 'Negatif', 'Positif', 'JAMSOSKES'),
(16, 0, 2706, 17, 0, '2021-04-24', 2, 1, 1, 6, 5, 165, 32, 90, 90, '12', 11, 13, 'LETBO (Letak Bokong)', '90/100', '2021-04-23', '2021-04-23', 'Normal (> 11 gram %)', 'tidak ada ', 'pemeriksaan', 'Positif', 'Negatif', 'Negatif', 'Jamsoskes'),
(17, 0, 4546, 17, 0, '2021-04-24', 0, 0, 1, 4, 7, 165, 23, 80, 90, '13', 12, 16, 'LETBO (Letak Bokong)', '90/100', '2021-04-23', '2021-04-23', 'Normal (> 11 gram %)', 'neurobion', 'pemeriksaan dan obat', 'Negatif', 'Negatif', 'Negatif', 'BAYAR');

-- --------------------------------------------------------

--
-- Table structure for table `pencatatan`
--

CREATE TABLE `pencatatan` (
  `id_pencatatan` int(11) NOT NULL,
  `no_pasien` varchar(50) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `idWilayah` int(11) NOT NULL,
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
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pencatatan`
--

INSERT INTO `pencatatan` (`id_pencatatan`, `no_pasien`, `id_petugas`, `idWilayah`, `nama_bidan`, `umur`, `kategori`, `tinggi`, `bb`, `temperatur`, `lingkar`, `jenis_imunisasi`, `diagnosa`, `penyuluhan`, `vitamin`, `obat`, `notelp`, `tgl_pencatatan`, `status`) VALUES
(96, '6383499', 0, 1, 'nani', '18', '1', '78', '6', '36', '34', '2', 'Demam Tinggi', 'rujuk ke puskesmas makrayu', 'Vitamin A (umur 1 tahun - 5 tahun ) warna merah', '1/2 pil (umur 1 - 2 tahun)', '0894252901517', '2021-07-08', 0),
(97, '68578', 0, 0, 'naniiii', '18', '3', '78', '6', '36', '34', '11', 'Demam Tinggi', 'memberikan anak vitamin ', 'Vitamin A (umur 1 tahun - 5 tahun ) warna merah', '1/2 pil (umur 1 - 2 tahun)', '082285139876777', '2021-07-08', 1),
(98, '7498', 0, 1, 'nani', '18', '3', '78', '6', '36', '34', '11', 'Demam Tinggi', 'memberi vitamin dan merujuk ke puskesmas', 'Vitamin A warna biru(6 bln-1 thn)', '1/2 pil (umur 1 - 2 tahun)', '47857857989088', '2021-07-09', 1),
(99, '92786389', 0, 0, 'putriiiii', '18', '1', '78', '6', '36', '34', '11', 'Demam Tinggi, panas tinggi', 'memberikan anak vitamin hbo', 'Vitamin A warna biru(6 bln-1 thn)', '1/2 pil (umur 1 - 2 tahun)', '082285139827', '2021-07-10', 1),
(100, '6383628829', 0, 0, 'ani', '18', '2', '78', '6', '36', '34', '11', 'Demam Tinggi', 'rujuk ke puskesmas makrayu', 'Vitamin A (umur 1 tahun - 5 tahun ) warna merah', '1 pil (umur 2 - 5 tahun)', '082285139828', '2021-07-09', 1),
(101, '46578589', 0, 0, 'naniiiiii', '18', '1', '78', '6', '36', '34', '2', 'flu', 'rujuk ke puskesmas makrayu', 'Vitamin A warna biru(6 bln-1 thn)', '1/2 pil (umur 1 - 2 tahun)', '08346780956789', '2021-07-10', 1),
(102, '658749785', 0, 1, 'nani', '18', '1', '78', '6', '36', '34', '2', 'Demam Tinggi', 'rujuk ke puskesmas makrayu', 'Vitamin A warna biru(6 bln-1 thn)', '1/2 pil (umur 1 - 2 tahun)', '47857857989099', '2021-07-10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('posyandu','puskesmas','superadmin') NOT NULL,
  `id_wilayah` varchar(250) DEFAULT NULL,
  `status_aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `nama`, `foto`, `password`, `status`, `id_wilayah`, `status_aktif`) VALUES
(3, 'superadmin@gmail.com', 'superadmin', 'img_602a6c648d478.jpg', '123', 'superadmin', NULL, 1),
(11, 'reza@mail.com', 'reza ayu putri yaawwwtttt', '60e277323d41b.jpg', '1234', 'posyandu', '112', 1),
(17, 'cosager773@684hh.com', 'Nathaniel', 'ahaitsam.jpg', '1234', 'puskesmas', NULL, 1),
(42, 'peggytrifandra@gmail.com', 'peggy tri ljkl', '6082f0cf303b1.jpg', '1234', 'puskesmas', NULL, 1),
(84, 'rezaayuputri76@gmail.com', 'reza ayu putri', 'imagesCAI0HV39.jpg', '1234', 'posyandu', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `regisanak`
--

CREATE TABLE `regisanak` (
  `no_pasien` varchar(50) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `nama_anak` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jk` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `p_ibu` varchar(255) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `p_ayah` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_daftar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regisanak`
--

INSERT INTO `regisanak` (`no_pasien`, `id_wilayah`, `nama_anak`, `tempat_lahir`, `tanggal_lahir`, `jk`, `nama_ibu`, `ktp`, `p_ibu`, `nama_ayah`, `p_ayah`, `alamat`, `tgl_daftar`) VALUES
('46578589', 1, 'putri ana ayu', 'Bandung', '2021-05-21', 'Perempuan', 'nana', '85678598990579657', 'dokter', 'ady', 'dokter', 'pku', '2021-07-10'),
('6383628829', 1, 'rara yaaa', 'Bandung', '2021-04-21', 'Perempuan', 'tryana', '83537833874648', 'dokter', 'al', 'pns', 'jalan pga', '2021-07-10'),
('64378', 1, 'putri', 'Pekanbaru', '2021-05-21', 'Perempuan', 'nana', '672787986998', 'dokter', 'ady', 'dokter', 'bbc', '2021-07-10'),
('658749785', 1, 'tiaaa', 'Bandung', '2021-04-21', 'Perempuan', 'nana', '8578947900', 'dokter', 'ady', 'dokter', 'pku', '2021-07-10'),
('92786389', 1, 'peggy', 'Bandung', '2021-04-21', 'Perempuan', 'Ayu', '6478895786905790', 'Guru', 'aldy', 'dokter', 'jalan babakan ciamis', '2021-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL,
  `date_created` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(42, 'ayu@gmail.com', 'n3VFBA7zShZETuvThxDfQW6f2M7kbfJ6YITWenyz650=', '1619959468'),
(43, 'putri@mail.com', 'FMu1zMB+e7xv9Wfztj0BnZWXle2XSTXVaqbGcfQ4BPo=', '1619959523'),
(44, 'ayu@mail.com', 'kk4fAG/V5kQ0fvDlj7NWvJwpODE9kQ7mGXhDuNZpI+k=', '1623124370'),
(68, 'rezaayu321@gmail.com', 'E9sBb46/u7rEgWu5aaEJyMvnXOASp7jfu8lBpcxohco=', '1624778055'),
(75, 'peggytrifandra@gmail.com', 'K4B5YUocp4Tmgfi48IXwhIoUctien8eF24pLXXGsEOE=', '1625386446');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin`
--

CREATE TABLE `vitamin` (
  `id_vitamin` int(11) NOT NULL,
  `vitamin` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vitamin`
--

INSERT INTO `vitamin` (`id_vitamin`, `vitamin`) VALUES
(3, 'Vitamin A warna biru(6 bln-1 thn)'),
(4, 'Vitamin A (umur 1 tahun - 5 tahun ) warna merah'),
(11, 'Vitamin AB');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id_wilayah` int(11) NOT NULL,
  `nama_wilayah` varchar(225) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `rw` varchar(255) NOT NULL,
  `rt` varchar(255) NOT NULL,
  `nama_posyandu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id_wilayah`, `nama_wilayah`, `kelurahan`, `rw`, `rt`, `nama_posyandu`) VALUES
(1, 'Wilayah 1', '27 Ilir', '1 - 2', '1 - 10', 'Posyandu A'),
(2, 'Wilayah 2', '28 Ilir', '1 - 3', '1 - 14', 'Posyandu B'),
(3, 'Wilayah 3', '29 Ilir', '1 - 11', '1 - 35', 'Posyandu C'),
(4, 'Wilayah 4', '30 Ilir', '1 - 16', '1 - 60', 'Posyandu D'),
(5, 'Wilayah 5', '32 Ilir', '1 - 8', '1 - 38', 'Posyandu E'),
(6, 'Wliayah 6', '35 Ilir', '1 - 7', '1 - 36', 'Posyandu F'),
(7, 'Wilayah 7', 'Kemang Manis', '1 - 4', '1 - 13', 'Posyandu G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entitas_imunisasi_kategori`
--
ALTER TABLE `entitas_imunisasi_kategori`
  ADD PRIMARY KEY (`id_imunisasi_kategori`);

--
-- Indexes for table `ibuhamil`
--
ALTER TABLE `ibuhamil`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indexes for table `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `a` (`id_wilayah`),
  ADD KEY `b` (`id_petugas`);

--
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kategori_usia`
--
ALTER TABLE `kategori_usia`
  ADD PRIMARY KEY (`id_usia`);

--
-- Indexes for table `kondisi_hb`
--
ALTER TABLE `kondisi_hb`
  ADD PRIMARY KEY (`id_hb`);

--
-- Indexes for table `letak_bayi`
--
ALTER TABLE `letak_bayi`
  ADD PRIMARY KEY (`id_letak`);

--
-- Indexes for table `obat_cacing`
--
ALTER TABLE `obat_cacing`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasienrujukan`
--
ALTER TABLE `pasienrujukan`
  ADD PRIMARY KEY (`id_rujukan`);

--
-- Indexes for table `password_akses`
--
ALTER TABLE `password_akses`
  ADD PRIMARY KEY (`id_password`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id_pemeriksaan`);

--
-- Indexes for table `pencatatan`
--
ALTER TABLE `pencatatan`
  ADD PRIMARY KEY (`id_pencatatan`),
  ADD KEY `e` (`id_petugas`),
  ADD KEY `g` (`no_pasien`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `regisanak`
--
ALTER TABLE `regisanak`
  ADD PRIMARY KEY (`no_pasien`),
  ADD KEY `f` (`id_wilayah`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitamin`
--
ALTER TABLE `vitamin`
  ADD PRIMARY KEY (`id_vitamin`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id_wilayah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entitas_imunisasi_kategori`
--
ALTER TABLE `entitas_imunisasi_kategori`
  MODIFY `id_imunisasi_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `imunisasi`
--
ALTER TABLE `imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori_usia`
--
ALTER TABLE `kategori_usia`
  MODIFY `id_usia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kondisi_hb`
--
ALTER TABLE `kondisi_hb`
  MODIFY `id_hb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `letak_bayi`
--
ALTER TABLE `letak_bayi`
  MODIFY `id_letak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `obat_cacing`
--
ALTER TABLE `obat_cacing`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pasienrujukan`
--
ALTER TABLE `pasienrujukan`
  MODIFY `id_rujukan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `password_akses`
--
ALTER TABLE `password_akses`
  MODIFY `id_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id_pemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pencatatan`
--
ALTER TABLE `pencatatan`
  MODIFY `id_pencatatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `vitamin`
--
ALTER TABLE `vitamin`
  MODIFY `id_vitamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id_wilayah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
