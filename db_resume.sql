-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2020 at 02:23 AM
-- Server version: 10.5.0-MariaDB-log
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portofolio`
--

CREATE TABLE `tbl_portofolio` (
  `portofolio_id` int(11) NOT NULL,
  `title_cv` varchar(64) NOT NULL,
  `description_cv` varchar(64) NOT NULL,
  `img_cv` text NOT NULL,
  `backlink` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portofolio`
--

INSERT INTO `tbl_portofolio` (`portofolio_id`, `title_cv`, `description_cv`, `img_cv`, `backlink`, `timestamp`) VALUES
(4, 'Cover Sekolah', 'Edisi sekolah lagi di rehab bagian depannya', 'a8bdbcc0ec0b9eaa1a6d321baf600d02.jpg', '-', '2020-09-14 02:01:18'),
(5, 'Banner ', 'Banner biaya pendaftaran ', '3ffa5418900a201876da97aa0b20717e.jpg', '-', '2020-09-14 02:02:41'),
(6, 'Web Kelulusan Siswa Kelas XII', 'Banner ini  Web Kelulusan Siswa Kelas XII Tahun pelajaran 2019/2', '10b4f0dc952a445ecfbd066ff2847b9a.jpg', '-', '2020-09-14 02:04:31'),
(7, 'Cintaku Management', '-', '1beaff8edd4134cf917c52b2da0aea2e.jpg', '-', '2020-09-14 02:05:21'),
(8, 'Kunjungan Industri', '-', '173b887143ae03ec8d3f2a7ac61d3ab1.jpg', '-', '2020-09-14 02:05:45'),
(9, 'Dr. Ir. M Bakrun, MM', '-', 'b2a17a5c5be56c6f0df05032e1f5b3fe.jpg', '-', '2020-09-14 02:07:17'),
(10, 'Spanduk 17 Agustus Tahun 2020', '-', 'a45b399c24b66453616e19e2a58b7d2b.jpg', '-', '2020-09-14 02:12:54'),
(11, 'Walimah', '-', '0de6758a9f66668ab96a055e1ba4dab8.jpg', '-', '2020-09-14 02:14:40'),
(12, 'PPDB', '-', 'a3f36227b6723985d07406a237f6e2bd.jpg', '-', '2020-09-14 02:22:26'),
(13, 'PPDB 2', '-', 'a6e043be58b83e62dfbc22c3641c147c.jpg', '-', '2020-09-14 02:22:44'),
(14, 'Brosur PPDB Cover Depan', '-', '46c29dbf51fed265077091417a298967.jpg', '-', '2020-09-14 02:24:39'),
(15, 'Brosur PPDB Cover Dalam', '-', '9eab87aa6d754454ec94fd6ddad387ed.jpg', '-', '2020-09-14 02:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `users_id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `img` varchar(128) NOT NULL,
  `img_bg` varchar(128) NOT NULL,
  `role` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`users_id`, `email`, `password`, `name`, `img`, `img_bg`, `role`) VALUES
(1, 'asepcb100@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Asep Septian', 'profile-img-2.jpg', 'hero-bg.jpg', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_portofolio`
--
ALTER TABLE `tbl_portofolio`
  ADD PRIMARY KEY (`portofolio_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_portofolio`
--
ALTER TABLE `tbl_portofolio`
  MODIFY `portofolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
