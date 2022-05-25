-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2022 at 04:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: 'uas_pbwd_dellawidyati'
--

-- --------------------------------------------------------

--
-- Table structure for table `donat`
--

CREATE TABLE uas_donat(
id_donat INT(11) NOT NULL AUTO_INCREMENT,
nama_pembeli VARCHAR(100) NOT NULL,
alamat VARCHAR(100) NOT NULL,
tambahan VARCHAR(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donat`
--

INSERT INTO `laundry` (`id_laundry`, `id_pelanggan`, `nama_petugas`, `alamat`, `tambahan`) VALUES
(1, 1, 'Lili', 'Jalan Desa Pantai Cermin', 'Tambahkan 2 donat'),
(2, 22, 'Lala', 'gg keluarga', '3 donat');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CCREATE TABLE uas_pelanggan (
id_pelanggan INT(11) NOT NULL AUTO_INCREMENT,
nama_pelanggan INT(100) NOT NULL,
berat VARCHAR(100) NOT NULL,
harga VARCHAR(100) NOT NULL,
id_donat INT(11) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `berat`, `harga`) VALUES
(1, 'Arief Marzuki', '2 Kg', '22000'),
(2, 'Aldi Pratama', '1 kg', '13000'),
(3, 'Aldi Pratama', '1 kg', '13000'),
(4, 'Aldi Pratama', '1 kg', '13000'),
(5, 'Aldi Pratama', '1 kg', '13000'),
(6, 'Aldi Pratama', '1 kg', '13000'),
(7, 'Aldi Pratama', '1 kg', '13000'),
(8, 'Aldi Pratama', '1 kg', '13000'),
(9, 'Aldi Pratama', '1 kg', '13000'),
(10, 'Aldi Pratama', '1 kg', '13000'),
(11, 'Aldi Pratama', '1 kg', '13000'),
(12, 'Aldi Pratama', '1 kg', '13000'),
(13, 'Aldi Pratama', '1 kg', '13000'),
(14, '', '', ''),
(15, '', '', ''),
(16, '', '', ''),
(17, '', '', ''),
(18, '', '', ''),
(19, 'Aldi Pratama', '1 kg', '13000'),
(20, 'Aldi Pratama', '1 kg', '13000'),
(21, 'Aldi Pratama', '1 kg', '13000'),
(22, 'Aldi Pratama', '1 kg', '13000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('Arief', '62c216f8da2d9127cfd78ea2152ce2bf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`id_laundry`),
  ADD KEY `id_laundry` (`id_pelanggan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id_laundry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laundry`
--
ALTER TABLE `laundry`
  ADD CONSTRAINT `laundry_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
