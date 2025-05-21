-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2024 at 09:01 AM
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
-- Database: `db_warungonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`, `level`) VALUES
(1, 'Melaaa', 'admin', 'admin', '+685754143331', 'jamfebriana@gmail.com', 'Jl. A.Yani Pasayangan Utara, Martapuraa', 'admin'),
(2, 'Doni', 'doni', 'doni', '+6282217603245', 'doniandre@gmail.com', 'Jl. Petojo VIJ VI, Cideng, Gambir, Jakarta Pusat 10150.', 'pelanggan'),
(4, 'budi', 'budi', 'budi', '081251226324', 'budi@gmail.com', 'Jl. A.Yani Km.11', 'pelanggan'),
(5, 'irma', 'irma', 'irma', '081251226324', 'irma@gmail.com', 'Jl. A.Yani Km.11 BJB', 'pelanggan'),
(6, 'Mela bungas', 'melabungas', 'melabungas', '085754143331', 'melaafebr@gmail.com', 'Jalan Ahmad Yani', 'pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(5, 'Handphone'),
(7, 'Pakaian Pria'),
(8, 'Pakaian Wanita'),
(9, 'Buah'),
(10, 'Sayur ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_chart`
--

CREATE TABLE `tb_chart` (
  `chart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_chart`
--

INSERT INTO `tb_chart` (`chart_id`, `product_id`, `jml`, `admin_id`) VALUES
(32, 25, 3, 5),
(49, 33, 1, 1),
(50, 33, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_checkout`
--

CREATE TABLE `tb_checkout` (
  `ck_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bukti` varchar(50) NOT NULL,
  `validasi` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_checkout`
--

INSERT INTO `tb_checkout` (`ck_id`, `product_id`, `jml`, `admin_id`, `total`, `bukti`, `validasi`, `status`, `tgl`) VALUES
(29, 30, 1, 5, 10000, 'produk1717394462.png', 'Valid', 'Selesai', '2024-06-03'),
(30, 30, 1, 5, 10000, 'tf1718087977.jpg', 'Menunggu', 'Pending', '2024-06-11'),
(31, 33, 1, 5, 250000, 'tf1718087977.jpg', 'Menunggu', 'Pending', '2024-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_checkout_temp`
--

CREATE TABLE `tb_checkout_temp` (
  `chart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_checkout_temp`
--

INSERT INTO `tb_checkout_temp` (`chart_id`, `product_id`, `jml`, `admin_id`) VALUES
(48, 30, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`, `stok`) VALUES
(30, 10, 'Bayam', 10000, 'sayur', 'produk1705538920.jpg', 1, '2024-01-18 00:48:40', 71),
(33, 7, 'Kemeja', 250000, 'Kemeja laki2', 'produk1707099827.jpg', 1, '2024-02-05 02:23:47', 69);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_chart`
--
ALTER TABLE `tb_chart`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `tb_checkout`
--
ALTER TABLE `tb_checkout`
  ADD PRIMARY KEY (`ck_id`);

--
-- Indexes for table `tb_checkout_temp`
--
ALTER TABLE `tb_checkout_temp`
  ADD PRIMARY KEY (`chart_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_chart`
--
ALTER TABLE `tb_chart`
  MODIFY `chart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_checkout`
--
ALTER TABLE `tb_checkout`
  MODIFY `ck_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
