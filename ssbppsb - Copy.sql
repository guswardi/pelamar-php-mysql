-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2023 at 03:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssbppsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenispembayaran`
--

CREATE TABLE `tb_jenispembayaran` (
  `id` int(3) NOT NULL,
  `jenis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jenispembayaran`
--

INSERT INTO `tb_jenispembayaran` (`id`, `jenis`) VALUES
(1, 'Pendaftaran SSB'),
(2, 'Sodaqoh SSB Per Bulan'),
(3, 'Sodaqoh Peralatan SSB Per Tahun'),
(4, 'Seragam SSB '),
(5, 'Try IN (Sparing Kedalam)'),
(6, 'Try Out (Separing Keluar)'),
(7, 'Sodaqoh Kompetisi (Tournament)');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `id` int(5) NOT NULL,
  `npm` varchar(15) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `orangtua` varchar(30) DEFAULT NULL,
  `nomerhp` int(20) DEFAULT NULL,
  `gen` varchar(3) DEFAULT NULL,
  `kelas` varchar(35) DEFAULT NULL,
  `usia` text DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`id`, `npm`, `nama`, `tanggal`, `alamat`, `orangtua`, `nomerhp`, `gen`, `kelas`, `usia`, `image`, `datetime`) VALUES
(22, '23siswa23', 'ronaldinho', NULL, 'Karaba', NULL, NULL, 'L', '11', '14 Tahun', NULL, '2023-08-20 18:05:50'),
(23, '1231JKL23', 'Percobaan', NULL, 'Karawang', NULL, NULL, 'L', '12', '14 Tahun', NULL, '2023-08-21 10:41:00'),
(24, '23MSI21', 'Percontohan ', '2023-08-15', 'Ciherang', 'contoh', 841514541, 'L', '11', '17 tahun ', '', '2023-08-21 11:06:02'),
(25, '32MP45', 'SAMIR NASRI', '2023-08-01', 'Karaba', 'kirom', 2147483647, 'L', 'U8', '12 tahun ', '', '2023-08-21 18:52:12'),
(26, '22KK12', 'KAKA', '2023-08-09', 'DEPOK', 'ADEK', 2147483647, 'L', '3', '13 Tahun ', '', '2023-08-21 21:44:50'),
(27, 'DBAN12', 'ROPIK HAMID DUROHMAN', '2021-06-12', 'BADAMI', 'COBA', 2147483647, 'L', 'SMP', '14', '', '2023-08-22 21:56:50'),
(28, '14 NP354', 'UJI COBA', '2023-08-24', 'karawang', 'ujian', 2147483647, 'L', 'SMP', '12 Tahun ', '', '2023-08-24 13:52:40'),
(29, '121NS23', 'Daffa', '2023-08-15', 'Ciherang', 'Didik', 87121120, 'L', '12 ', '15 Tahun ', '', '2023-08-24 14:08:45'),
(30, '', '', '0000-00-00', '', '', 0, '', '', '', '', '2023-08-27 18:53:40'),
(31, '', '', '0000-00-00', '', '', 0, '', '', '', '', '2023-08-27 18:57:34'),
(32, '21MIG23', 'SULAIMAN', '2023-08-15', 'KARAWANG', 'ADEK', 58712333, 'L', 'SMP', '14 TAHUN', '', '2023-08-27 18:59:56'),
(33, '21MIG23', 'SULAIMAN', '2023-08-15', 'KARAWANG', 'ADEK', 58712333, 'L', 'SMP', '14 TAHUN', '', '2023-08-27 19:00:48'),
(34, '21MIG23', 'SULAIMAN', '2023-08-15', 'KARAWANG', 'ADEK', 58712333, 'L', 'SMP', '14 TAHUN', '', '2023-08-27 19:02:41'),
(35, '08MG 23', 'pamong', '2023-08-02', 'Ciherang', 'bebas', 2147483647, 'L', 'SMA', '14 tahun', '', '2023-08-27 19:04:15'),
(36, '08MG 23', 'Ronaldo', '2023-08-27', 'Ciherang', 'bebas', 2147483647, 'L', 'MIF-2023', '12 tahun', '', '2023-08-27 19:07:31'),
(37, '08MG 23', 'Ronaldo', '2023-08-27', 'Ciherang', 'bebas', 2147483647, 'L', 'MIF-2023', '12 tahun', '', '2023-08-27 19:07:57');

--
-- Triggers `tb_mhs`
--
DELIMITER $$
CREATE TRIGGER `butruser` AFTER INSERT ON `tb_mhs` FOR EACH ROW INSERT INTO tb_user
SET 
role = new.nama,
nama = new.nama,
  username = 'user',
  password  = new.nama
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id` int(5) NOT NULL,
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
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id`, `npm`, `nama`, `gen`, `kelas`, `jenis`, `nilai`, `total`, `detail`, `keterangan`, `img`, `datetime`) VALUES
(56, '23TIK002', 'Ardi', NULL, NULL, 'Her-Registrasi per semester (1-8)', 400000, 400000, '2', 'x', 'kanban.jpg', '2023-08-08 11:20:34'),
(57, '23TIK002', 'Ardi', NULL, NULL, 'Her-Registrasi per semester (1-8)', 200000, 400000, '1', 'x', 'logo-hypertable-web-v-400x.png', '2023-08-08 11:20:51'),
(58, '23TIK002', 'Ardi', NULL, NULL, 'Her-Registrasi per semester (1-8)', 200000, 400000, '2', 'x', 'logo-hypertable-web-v-400x.png', '2023-08-08 11:20:51'),
(59, '23TIK003', 'Yudi Permana', NULL, NULL, 'UTS', 200000, NULL, '', 'UTS', 'composer.jpg', '2023-08-08 13:52:57'),
(60, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'Table Manner', 300000, 300000, '-', 'Cash', '1575346401147.png', '2023-08-08 13:56:20'),
(61, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'UAS', 300000, 300000, '-', 'x', 'Hbase.png', '2023-08-08 13:56:34'),
(62, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'Seragam SSB', 150000, NULL, '', 'Belum Lunas', '407082100518.jpg', '2023-08-19 15:17:55'),
(63, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'Pendaftaran SSB', 280000, 280000, '-', 'Lunas', 'dirgahayu.jpeg', '2023-08-20 17:19:32'),
(64, '23MIF001', 'Messi', NULL, NULL, 'Pendaftaran SSB', 230000, NULL, '', 'Pendaftaran awal', 'dirgahayu 17.jpeg', '2023-08-20 17:21:34'),
(65, '23MIF001', 'Messi', NULL, NULL, 'Seragam SSB', 150000, NULL, '', 'Jersey', '407082100518.jpg', '2023-08-20 17:23:13'),
(66, '2121sggg', 'Zidane', NULL, NULL, 'Seragam SSB', 150000, NULL, '', 'Lunas', 'Admin.jpg', '2023-08-21 18:39:37'),
(67, '2121sggg', 'Zidane', NULL, NULL, 'Pendaftaran SSB', 230000, NULL, '', 'SSB Pendaftar', 'WhatsApp Image 2023-01-20 at 18.24.04.jpeg', '2023-08-24 14:11:41'),
(68, '23siswa23', 'ronaldinho', NULL, NULL, 'Seragam SSB', 150000, NULL, '', 'Lunas', 'dirgahayu 17.jpeg', '2023-08-27 18:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `id` int(5) NOT NULL,
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
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`id`, `npm`, `nama`, `gen`, `kelas`, `jenis`, `nilai`, `total`, `detail`, `keterangan`, `status`, `nota`, `datetime`) VALUES
(11, '23TIK002', 'Ardi', NULL, NULL, 'Her-Registrasi per semester (1-8)', 400000, NULL, '2', 'x', '1', '054928', '2023-08-08 10:49:28'),
(12, '23TIK003', 'Yudi Permana', NULL, NULL, 'Janji Profesi', 600000, NULL, '-', 'x', '0', '054947', '2023-08-08 10:49:47'),
(13, '23TIK002', 'Ardi', NULL, NULL, 'Her-Registrasi per semester (1-8)', 200000, NULL, '1', 'x', '1', '061928', '2023-08-08 11:19:28'),
(14, '23TIK002', 'Ardi', NULL, NULL, 'Her-Registrasi per semester (1-8)', 200000, NULL, '2', 'x', '1', '061928', '2023-08-08 11:19:28'),
(15, '23TIK002', 'Ardi', NULL, NULL, 'Sumpah Profesi (Rumpun Kesehatan)', 800000, NULL, '-', 'x', '0', '061949', '2023-08-08 11:19:49'),
(16, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'Table Manner', 600000, NULL, '-', 'Table Manner', '1', '085345', '2023-08-08 13:53:45'),
(17, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'UAS', 300000, NULL, '-', 'Tunggakan UAS', '1', '085551', '2023-08-08 13:55:51'),
(18, '23MIF001', 'Oky Galih Pratama', NULL, NULL, 'Pendaftaran SSB', 280000, NULL, '-', 'Belum Lunas', '1', '121114', '2023-08-19 17:11:14'),
(19, '2121sggg', 'Zidane', NULL, NULL, 'Seragam SSB', 150000, NULL, '-', 'Jersey SSB', '0', '122526', '2023-08-20 17:25:26'),
(20, '2121sggg', 'Zidane', NULL, NULL, 'Sodaqoh SSB Per Bulan', 30000, NULL, '-', 'Spp SSB', '0', '122550', '2023-08-20 17:25:50'),
(21, '2121sggg', 'Zidane', NULL, NULL, 'Sodaqoh Kompetisi (Tournament)', 100000, NULL, '-', 'Tournament', '0', '122616', '2023-08-20 17:26:16'),
(22, '23siswa23', 'ronaldinho', NULL, NULL, 'Pendaftaran SSB', 230000, NULL, '-', 'pendaftaran awal ', '0', '170936', '2023-08-20 22:09:36'),
(23, '', 'Abror', NULL, NULL, 'Sodaqoh SSB Per Bulan', 30000, NULL, '-', 'spp ssb', '0', '024916', '2023-08-21 07:49:16'),
(24, '23MIF002 ', 'Candra Saputra', NULL, NULL, 'Sodaqoh SSB Per Bulan', 30000, NULL, '-', 'spp', '0', '025316', '2023-08-21 07:53:16'),
(25, '', 'Abror', NULL, NULL, 'Seragam SSB', 150000, NULL, '-', 'jersey', '0', '025344', '2023-08-21 07:53:44'),
(26, '', 'Abror', NULL, NULL, 'Sodaqoh Kompetisi (Tournament)', 100000, NULL, '-', 'ASKAB', '0', '032036', '2023-08-21 08:20:36'),
(27, '32MP45', 'SAMIR NASRI', NULL, NULL, 'Sodaqoh SSB Per Bulan', 30000, NULL, '-', 'SSB SPP', '0', '033643', '2023-08-22 08:36:43'),
(28, 'DBAN12', 'ROPIK HAMID DUROHMAN', NULL, NULL, 'Seragam SSB', 150000, NULL, '-', 'JERSEY', '0', '165742', '2023-08-22 21:57:42'),
(29, '23siswa23', 'ronaldinho', NULL, NULL, 'Seragam SSB', 150000, NULL, '-', 'JERSEY', '0', '130019', '2023-08-27 18:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL,
  `role` varchar(21) DEFAULT NULL,
  `noId` varchar(21) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `username` varchar(33) DEFAULT NULL,
  `password` varchar(33) DEFAULT NULL,
  `datetime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `role`, `noId`, `nama`, `username`, `password`, `datetime`) VALUES
(0, 'superadmin', 'admin', 'FIRDAUS_DAUS', 'admin', 'admin', NULL),
(1, 'mahasiswa', '23MIF111', 'Oky Galih Pratama', 'user', '23MIF001', '0000-00-00 00:00:00'),
(2, 'mahasiswa', '523421001', 'Dewi Tya Azzahra', 'user', '523421001', '0000-00-00 00:00:00'),
(3, 'mahasiswa', '23TIK002', 'Ardi', 'user', '23TIK002', '0000-00-00 00:00:00'),
(4, 'mahasiswa', '23MIF002', 'Candra Saputra', 'user', '23MIF002', NULL),
(5, 'mahasiswa', '23TIK003', 'Yudi Permana', 'user', '23TIK003', NULL),
(6, 'mahasiswa', '23MIF002', 'Dede Rianto', 'user', '23MIF005', NULL),
(7, 'mahasiswa', '23MIF007', 'Anisah Nurhasanah', 'user', '23MIF007', NULL),
(8, 'mahasiswa', '23MIF008', 'Muhammad Junaedy Lutfianto', 'user', '23MIF008', NULL),
(9, 'mahasiswa', '23MIF009', 'Syafiq Yoga Pangestu', 'user', '23MIF009', NULL),
(10, 'mahasiswa', NULL, NULL, 'user', 'Ronaldo', '2023-08-20 18:00:40'),
(11, 'mahasiswa', NULL, 'ronaldinho', 'user', 'ronaldinho', '2023-08-20 18:05:50'),
(12, 'Percobaan', NULL, 'Percobaan', 'user', 'Percobaan', '2023-08-21 10:41:00'),
(13, 'Percontohan ', NULL, 'Percontohan ', 'user', 'Percontohan ', '2023-08-21 11:06:02'),
(14, 'SAMIR NASRI', NULL, 'SAMIR NASRI', 'user', 'SAMIR NASRI', '2023-08-21 18:52:12'),
(15, 'KAKA', NULL, 'KAKA', 'user', 'KAKA', '2023-08-21 21:44:50'),
(16, 'ROPIK HAMID DUROHMAN', NULL, 'ROPIK HAMID DUROHMAN', 'user', 'ROPIK HAMID DUROHMAN', '2023-08-22 21:56:50'),
(17, 'UJI COBA', NULL, 'UJI COBA', 'user', 'UJI COBA', '2023-08-24 13:52:40'),
(18, 'Daffa', NULL, 'Daffa', 'user', 'Daffa', '2023-08-24 14:08:45'),
(19, '', NULL, '', 'user', '', '2023-08-27 18:53:40'),
(20, '', NULL, '', 'user', '', '2023-08-27 18:57:34'),
(21, 'SULAIMAN', NULL, 'SULAIMAN', 'user', 'SULAIMAN', '2023-08-27 18:59:56'),
(22, 'SULAIMAN', NULL, 'SULAIMAN', 'user', 'SULAIMAN', '2023-08-27 19:00:48'),
(23, 'SULAIMAN', NULL, 'SULAIMAN', 'user', 'SULAIMAN', '2023-08-27 19:02:41'),
(24, 'pamong', NULL, 'pamong', 'user', 'pamong', '2023-08-27 19:04:15'),
(25, 'Ronaldo', NULL, 'Ronaldo', 'user', 'Ronaldo', '2023-08-27 19:07:31'),
(26, 'Ronaldo', NULL, 'Ronaldo', 'user', 'Ronaldo', '2023-08-27 19:07:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jenispembayaran`
--
ALTER TABLE `tb_jenispembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jenispembayaran`
--
ALTER TABLE `tb_jenispembayaran`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
