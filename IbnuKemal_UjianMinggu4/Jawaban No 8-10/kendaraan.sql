-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 09:20 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `nomor_polisi` varchar(12) NOT NULL,
  `merk` varchar(10) DEFAULT NULL,
  `tipe` varchar(15) DEFAULT NULL,
  `varian` varchar(30) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`nomor_polisi`, `merk`, `tipe`, `varian`, `warna`, `tahun`, `harga_jual`) VALUES
('B1054SWX', 'Bajaj', 'Qute', NULL, 'Biru', 2017, 40000000),
('B2664FD', 'Bajaj', 'FE 2S', NULL, 'Orange', 1975, 15000000),
('B4145TZA', 'TVS', 'King', NULL, 'Biru', 2018, 25000000),
('B5130LR', 'Daihatsu', 'Bemo', 'MP5', 'Biru-Kuning', 1967, 35000000),
('D1138FA', 'Toyota', 'Kijang', 'LGX 1.8 EFI', 'Coklat Metalik', 2000, 75000000),
('D138LS', 'Mitsubishi', 'Kuda', 'Grandia Diesel', 'Hitam Metalik', 2002, 70000000),
('D1412GQ', 'Toyota', 'Kijang', 'Mb Super Kencana', 'Abu-abu Metalik', 1992, 40000000),
('D1856AGD', 'Toyota', 'Avanza', 'Veloz 1.5', 'Merah Metalik', 2017, 160000000),
('D8892DL', 'Suzuki', 'ST20', 'Mb Liling Putera', 'Abu-abu', 1982, 12000000),
('E7732VA', 'Mitsubishi', 'ColtL300', 'Mb Starwagon Diesel', 'Putih', 2015, 130000000),
('E8155VB', 'Datsun', 'GN620', 'Pick Up Long', 'Coklat Susu', 1979, 15000000),
('H8409CM', 'Isuzu', 'Panther', 'Grand Touring', 'Hitam Metalik', 2015, 145000000),
('L1356LV', 'Toyota', 'Kijang', 'Krista Diesel', 'Hitam Metalik', 2003, 90000000),
('M649VB', 'Mitsubishi', 'Colt120ss', 'Mb Internasional', 'Abu-abu', 1980, 25000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`nomor_polisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
