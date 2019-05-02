-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 12:38 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gunung_sari`
--

-- --------------------------------------------------------

--
-- Table structure for table `agen_marketing`
--

CREATE TABLE `agen_marketing` (
  `kode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `no_rek` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `agen_marketing`
--

INSERT INTO `agen_marketing` (`kode`, `nama`, `bank`, `no_rek`) VALUES
('A0001', 'PT.MBB', 'B.BCA', '542784'),
('AGEN-1', 'PT.TRIDJAYA KARTIKA', 'MANDIRI', '55741587564');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`nim`, `nama`, `email`, `alamat`, `telepon`, `foto`) VALUES
('MK001', 'Naning', 'naning@gmail.com', 'Wonokromo', '0851726371623', 'wanita.png'),
('P001', 'Jambol', 'jams@gmail.com', 'Blitar- malang', '081123456987', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kavling`
--

CREATE TABLE `kavling` (
  `nim1` varchar(50) NOT NULL,
  `no_kav` varchar(30) NOT NULL,
  `l_tanah` varchar(20) NOT NULL,
  `l_bangunan` varchar(100) NOT NULL,
  `tipe` varchar(13) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `ppn` int(50) NOT NULL,
  `total` int(50) NOT NULL,
  `pelunasan` int(50) NOT NULL,
  `utj` int(50) NOT NULL,
  `dp` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `kavling`
--

INSERT INTO `kavling` (`nim1`, `no_kav`, `l_tanah`, `l_bangunan`, `tipe`, `posisi`, `harga`, `ppn`, `total`, `pelunasan`, `utj`, `dp`, `status`) VALUES
('MR/A', '1', '150', '120', 'Idelia', 'Tusuk Sate', 1500000, 150000, 1650000, 0, 0, 1000000, '');

-- --------------------------------------------------------

--
-- Table structure for table `marketer`
--

CREATE TABLE `marketer` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kota1` varchar(50) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `marketer`
--

INSERT INTO `marketer` (`nim`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `email`, `alamat`, `kota1`, `telepon`, `foto`) VALUES
('MK001', 'Naning', '', '0000-00-00', '', 'naning@gmail.com', 'Wonokromo', '', '0851726371623', 'wanita.png'),
('P001', 'Jambol', '', '0000-00-00', '', 'jams@gmail.com', 'Blitar- Malang', '', '081123456987', 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `kode` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `norekening` int(15) NOT NULL,
  `alamat_bank` varchar(15) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`kode`, `nama`, `norekening`, `alamat_bank`, `telepon`, `fax`, `kontak`, `catatan`) VALUES
('1', 'David', 193013, 'Mandiri Indones', '13810309', '131736', '1316234', 'Coba Coba'),
('', 'Atmaja', 859004572, 'BRI', '', '', '', 'COBA AJA'),
('', 'Nadya', 88776655, 'BNI', '', '', '', 'cOBA aJA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `agen_marketing` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `level_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `foto`, `nama`, `username`, `password`, `agen_marketing`, `email`, `telp`, `level_user`) VALUES
(0, '', 'admin2', 'admin2', '21232f297a57a5a743894a0e4a801fc3', 'tridjaya', 'putnow@yahoo.com', '7845498746', 'admin'),
(2, '', 'admin', 'admin', 'c132115067a893c243184799a7be24b1', 'tridjaya', 'tridjaya@kartika.com', '0165444', 'admin'),
(78887, 'HARD_DISK_PC_1TB_SEAGATE_SKYHAWK_scaled.jpg', 'Purwo', 'purwo', '27b288e070d7029531dc05dedb22aa78', 'tridjaya', 'putnow1809@gmail.com', '8745487', 'member'),
(876412, 'royal ketintang.png', 'coba', 'coba', 'a3040f90cc20fa672fe31efcae41d2db', 'tridjaya', 'coba@tk.com', '08456648445', 'member'),
(115448745, 'HARD_DISK_PC_1TB_SEAGATE_SKYHAWK_scaled.jpg', 'Purwo Hadi', 'member', 'aa08769cdcb26674c6706093503ff0a3', 'PT.TRIDJAYA', 'tk@gmail.com', '186448745', 'member'),
(555548784, 'HARD_DISK_PC_1TB_SEAGATE_SKYHAWK_scaled.jpg', 'darius', 'darius', '90a624f1f9653941eba3b8589f75c041', 'pt.ems', 'dariustk@yahoo.com', '8454546545', 'member'),
(2147483647, 'HARD_DISK_PC_1TB_SEAGATE_SKYHAWK_scaled.jpg', 'Prabroro', 'prabroro', 'ffc695916259879f08f6b1deb8874e3b', 'tridjaya', 'it@tridjayakartika.com', '794541748454', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agen_marketing`
--
ALTER TABLE `agen_marketing`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `kavling`
--
ALTER TABLE `kavling`
  ADD PRIMARY KEY (`nim1`);

--
-- Indexes for table `marketer`
--
ALTER TABLE `marketer`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
