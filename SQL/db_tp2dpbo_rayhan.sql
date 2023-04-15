-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 04:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tp2dpbo_rayhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `digital_download`
--

CREATE TABLE `digital_download` (
  `id_digital_download` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `menit_durasi` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `id_komika` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `digital_download`
--

INSERT INTO `digital_download` (`id_digital_download`, `judul`, `menit_durasi`, `cover`, `id_komika`) VALUES
(2, 'Re-Write', 95, 'images/cover/RE-WRITE.png', 2),
(6, 'Komoidoumenoi', 184, 'images/cover/Komoidoumenoi.jpg', 8),
(8, 'Pidato Presiden', 68, 'images/cover/Pidato-Presiden.jpg', 9),
(10, 'Musti Ngapain Nih?', 65, 'images/cover/Musti-Ngapain-Nih.jpg', 12),
(11, 'Ternyata Ini Sebabnya', 127, 'images/cover/Ternyata-Ini-Sebabnya.png', 8);

-- --------------------------------------------------------

--
-- Table structure for table `komika`
--

CREATE TABLE `komika` (
  `id_komika` int(11) NOT NULL,
  `nama_komika` varchar(255) NOT NULL,
  `foto_komika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komika`
--

INSERT INTO `komika` (`id_komika`, `nama_komika`, `foto_komika`) VALUES
(2, 'Abdur Arsyad', 'images/komika/abdur-arsyad.jpg'),
(8, 'Pandji Pragiwaksono', 'images/komika/pandji-pragiwaksono.jpg'),
(9, 'Awwe', 'images/komika/awwe.jpg'),
(12, 'Yudha Brajamusti', 'images/komika/yudha-brajamusti.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'Muhammad Rayhan Nur', 'mrayhannur', 'mrayhannur'),
(2, 'Rafi Arsalan', 'raparsalan', 'raparsalan'),
(3, 'Bintang Fajar', 'bintangfjr', 'bintang'),
(4, 'Rafi Arsalan', 'raparsalan', 'rapiars'),
(5, 'Admin', 'admin', 'admin'),
(6, 'Putri Ajeng', 'putriavirgo', 'putriavirgo'),
(7, 'AkunBaru', 'akunbaru', 'akunbaru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `digital_download`
--
ALTER TABLE `digital_download`
  ADD PRIMARY KEY (`id_digital_download`),
  ADD KEY `idx_id_komika` (`id_komika`);

--
-- Indexes for table `komika`
--
ALTER TABLE `komika`
  ADD PRIMARY KEY (`id_komika`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `digital_download`
--
ALTER TABLE `digital_download`
  MODIFY `id_digital_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `komika`
--
ALTER TABLE `komika`
  MODIFY `id_komika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `digital_download`
--
ALTER TABLE `digital_download`
  ADD CONSTRAINT `idx_id_komika` FOREIGN KEY (`id_komika`) REFERENCES `komika` (`id_komika`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
