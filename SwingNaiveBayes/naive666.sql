-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2013 at 06:01 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tugas_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `naive666`
--

CREATE TABLE IF NOT EXISTS `naive666` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_cuti` varchar(30) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `ipk` varchar(20) NOT NULL,
  `status_kelulusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `naive666`
--

INSERT INTO `naive666` (`id`, `jenis_kelamin`, `status_cuti`, `marital_status`, `ipk`, `status_kelulusan`) VALUES
(1, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(2, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(3, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(4, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(5, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(6, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(7, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(8, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(9, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(10, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tepat Waktu'),
(11, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(12, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(13, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(14, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(15, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(16, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(17, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(18, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(19, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(20, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(21, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(22, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(23, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(24, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(25, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(26, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(27, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(28, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(29, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(30, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(31, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(32, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(33, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(34, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(35, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(36, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(37, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(38, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(39, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(40, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(41, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
