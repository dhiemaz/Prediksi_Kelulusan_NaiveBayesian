-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2013 at 01:40 AM
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
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_user`, `nama`, `password`) VALUES
(1, 'admin', '1234'),
(2, 'aris', '123');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

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
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(43, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(44, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(45, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(46, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(47, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(48, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(49, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(50, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(51, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(52, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(53, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(54, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(55, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(56, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(57, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(58, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(59, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(60, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(61, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(62, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(63, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(64, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(65, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(66, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(67, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(68, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(69, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(70, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(71, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(72, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(73, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(74, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(75, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(76, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(77, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(78, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(79, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(80, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(81, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(82, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(83, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(84, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(85, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(86, 'Laki - Laki', 'Pernah  Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(87, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(88, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(89, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(90, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(91, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(92, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(93, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(94, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(95, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(96, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(97, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(98, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(99, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(100, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu');

-- --------------------------------------------------------

--
-- Table structure for table `prosesdua`
--

CREATE TABLE IF NOT EXISTS `prosesdua` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_cuti` varchar(30) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `ipk` varchar(20) NOT NULL,
  `status_kelulusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `prosesdua`
--

INSERT INTO `prosesdua` (`id`, `jenis_kelamin`, `status_cuti`, `marital_status`, `ipk`, `status_kelulusan`) VALUES
(1, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(2, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(3, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(4, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(5, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(6, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(7, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(8, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(9, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(10, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tepat Waktu'),
(11, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(12, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(13, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(14, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(15, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(16, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(17, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(18, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
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
(29, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(30, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(31, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(32, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(33, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(34, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(35, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(36, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(37, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(38, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(39, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(40, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(41, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(43, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(44, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(45, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(46, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(47, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(48, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(49, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(50, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(51, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(52, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(53, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(54, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(55, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(56, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(57, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(58, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(59, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(60, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(61, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(62, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(63, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(64, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(65, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(66, 'Laki - Laki', 'Pernah  Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(67, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(68, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(69, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(70, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(71, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(72, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(73, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(74, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(75, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(76, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(77, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(78, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(79, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(80, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu');

-- --------------------------------------------------------

--
-- Table structure for table `prosesempat`
--

CREATE TABLE IF NOT EXISTS `prosesempat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_cuti` varchar(30) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `ipk` varchar(20) NOT NULL,
  `status_kelulusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `prosesempat`
--

INSERT INTO `prosesempat` (`id`, `jenis_kelamin`, `status_cuti`, `marital_status`, `ipk`, `status_kelulusan`) VALUES
(1, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(2, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(3, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
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
(18, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(19, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(20, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(21, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(22, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(23, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(24, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(25, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(26, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(27, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(28, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(29, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(30, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(31, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(32, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(33, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(34, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(35, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(36, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(37, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(38, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(39, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(40, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(41, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(43, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(44, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(45, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(46, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(47, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(48, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(49, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(50, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(51, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(52, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(53, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(54, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(55, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(56, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(57, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(58, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(59, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(60, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(61, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(62, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(63, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(64, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(65, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(66, 'Laki - Laki', 'Pernah  Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(67, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(68, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(69, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(70, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(71, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(72, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(73, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(74, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(75, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(76, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(77, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(78, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(79, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(80, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu');

-- --------------------------------------------------------

--
-- Table structure for table `proseslima`
--

CREATE TABLE IF NOT EXISTS `proseslima` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_cuti` varchar(30) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `ipk` varchar(20) NOT NULL,
  `status_kelulusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `proseslima`
--

INSERT INTO `proseslima` (`id`, `jenis_kelamin`, `status_cuti`, `marital_status`, `ipk`, `status_kelulusan`) VALUES
(1, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(2, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(3, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(4, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(5, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(6, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(7, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(8, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(9, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(10, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(11, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(12, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(13, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(14, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(15, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(16, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(17, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(18, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(19, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(20, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(21, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(22, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(23, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(24, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(25, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(26, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(27, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(28, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(29, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(30, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(31, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(32, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(33, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(34, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(35, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(36, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(37, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(38, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(39, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(40, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(41, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(43, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(44, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(45, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(46, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(47, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(48, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(49, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(50, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(51, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(52, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(53, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(54, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(55, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(56, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(57, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(58, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(59, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(60, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(61, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(62, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(63, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(64, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(65, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(66, 'Laki - Laki', 'Pernah  Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(67, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(68, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(69, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(70, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(71, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(72, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(73, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(74, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(75, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(76, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(77, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(78, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(79, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(80, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu');

-- --------------------------------------------------------

--
-- Table structure for table `prosessatu`
--

CREATE TABLE IF NOT EXISTS `prosessatu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_cuti` varchar(30) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `ipk` varchar(20) NOT NULL,
  `status_kelulusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `prosessatu`
--

INSERT INTO `prosessatu` (`id`, `jenis_kelamin`, `status_cuti`, `marital_status`, `ipk`, `status_kelulusan`) VALUES
(1, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(2, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(3, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(4, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(5, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(6, 'Laki - Laki', 'Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
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
(18, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(19, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(20, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(21, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(22, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(23, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(24, 'Laki - Laki', 'Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(25, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(26, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(27, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(28, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(29, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(30, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(31, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(32, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(33, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(34, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(35, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(36, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(37, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(38, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(39, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(40, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(41, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(43, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(44, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(45, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(46, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(47, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(48, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(49, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(50, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(51, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(52, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(53, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(54, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(55, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(56, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(57, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(58, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(59, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(60, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(61, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(62, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(63, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(64, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(65, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(66, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(67, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(68, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(69, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(70, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(71, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(72, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(73, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(74, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(75, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(76, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(77, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(78, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(79, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(80, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu');

-- --------------------------------------------------------

--
-- Table structure for table `prosestiga`
--

CREATE TABLE IF NOT EXISTS `prosestiga` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` varchar(20) NOT NULL,
  `status_cuti` varchar(30) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `ipk` varchar(20) NOT NULL,
  `status_kelulusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `prosestiga`
--

INSERT INTO `prosestiga` (`id`, `jenis_kelamin`, `status_cuti`, `marital_status`, `ipk`, `status_kelulusan`) VALUES
(1, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(2, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(3, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(4, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(5, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(6, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(7, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(8, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu'),
(9, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(10, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tepat Waktu'),
(11, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(12, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(13, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(14, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(15, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(16, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(17, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(18, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(19, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(20, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(21, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(22, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(23, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(24, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(25, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(26, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(27, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(28, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(29, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(30, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tidak Tepat Waktu'),
(31, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(32, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(33, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(34, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(35, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(36, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(37, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(38, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(39, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(40, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(41, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(42, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(43, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(44, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(45, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(46, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Sangat Baik', 'Lulus Tepat Waktu'),
(47, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(48, 'Laki - Laki', 'Tidak Pernah Cuti', 'Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(49, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(50, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(51, 'Perempuan', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(52, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(53, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(54, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(55, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(56, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(57, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(58, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(59, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(60, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(61, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(62, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(63, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Kurang', 'Lulus Tidak Tepat Waktu'),
(64, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(65, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(66, 'Laki - Laki', 'Pernah  Cuti', 'Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(67, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(68, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(69, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(70, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(71, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(72, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(73, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(74, 'Laki - Laki', 'Pernah  Cuti', 'Belum Menikah', 'Cukup', 'Lulus Tidak Tepat Waktu'),
(75, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(76, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(77, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(78, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(79, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tidak Tepat Waktu'),
(80, 'Laki - Laki', 'Tidak Pernah Cuti', 'Belum Menikah', 'Baik', 'Lulus Tepat Waktu');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
