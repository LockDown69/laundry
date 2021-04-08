-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 02:50 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outletplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses_pegawai`
--

CREATE TABLE `akses_pegawai` (
  `id_akses` int(11) NOT NULL,
  `id_pegawai` varchar(25) NOT NULL,
  `penugasan` varchar(100) NOT NULL,
  `izin_hak_akses` varchar(25) NOT NULL,
  `izin_pengolahan_aplikasi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akses_pegawai`
--

INSERT INTO `akses_pegawai` (`id_akses`, `id_pegawai`, `penugasan`, `izin_hak_akses`, `izin_pengolahan_aplikasi`) VALUES
(1, '1', 'Admin Aplikasi', 'ALL', 'ALL'),
(2, '2', 'Admin Outlet', 'ALL', 'ALL'),
(3, '3', 'Kasir', 'ALL', 'ALL');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `id_list_produk` varchar(11) NOT NULL,
  `kuantiti` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `id_penjualan` varchar(11) NOT NULL,
  `id_setting_pajak` varchar(11) NOT NULL,
  `id_setting_diskon` varchar(11) NOT NULL,
  `catatan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_list_produk`, `kuantiti`, `jumlah`, `id_penjualan`, `id_setting_pajak`, `id_setting_diskon`, `catatan`) VALUES
(1, '1', '46', '13', '1', '1', '1', 'sda'),
(2, '90', '2', '15', '2', '1', '1', ''),
(3, '1', '12', '', '1', '1', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `devisit`
--

CREATE TABLE `devisit` (
  `id_devisit` int(11) NOT NULL,
  `id_setting_outlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kontrak`
--

CREATE TABLE `kontrak` (
  `id_kontrak` int(11) NOT NULL,
  `nama_kontrak` varchar(100) NOT NULL,
  `identitas` varchar(100) NOT NULL,
  `code` varchar(255) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kontrak_kerja`
--

CREATE TABLE `kontrak_kerja` (
  `id_pegawai` int(11) NOT NULL,
  `nama_karyawan` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(5) NOT NULL,
  `id_setting_outlet` varchar(25) DEFAULT NULL,
  `alamat` varchar(600) NOT NULL,
  `gambar` varchar(500) NOT NULL,
  `tgl_masuk_karyawan` date NOT NULL,
  `tgl_keluar_karyawan` date NOT NULL,
  `status` varchar(2) NOT NULL,
  `create_user` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontrak_kerja`
--

INSERT INTO `kontrak_kerja` (`id_pegawai`, `nama_karyawan`, `email`, `no_telepon`, `jabatan`, `jenis_kelamin`, `id_setting_outlet`, `alamat`, `gambar`, `tgl_masuk_karyawan`, `tgl_keluar_karyawan`, `status`, `create_user`) VALUES
(14, 'TES', 'TES', '0895367081854', '1', '1', '1', 'TES', 'TES_1571019719.jpg', '2019-10-17', '2021-07-01', '0', '0000-00-00 00:00:00'),
(16, 'Vebri', 'vebripradanamva@gmail.com', '0895367081854', '1', '1', '4', 'ww', 'Edit_1571198101.JPG', '2019-10-17', '2021-07-01', '1', '0000-00-00 00:00:00'),
(25, 'Haidar', 'vebripradanamva@gmail.com', '0895367081854', '1', '0', '1', 'D', 'Haidar_1571197030.JPG', '2019-10-17', '2021-07-01', '1', '0000-00-00 00:00:00'),
(26, 'Arya', 'aryaduta@gmail.com', '08125201475', '2', '1', '2', 'TES', 'Arya_1571208889.JPG', '2019-10-17', '2021-07-01', '1', '0000-00-00 00:00:00'),
(27, 'Cak', 'cakmatxrpld@xirpld.com', '01010101010101', '1', '1', '4', 'Tes', 'Cak_1571210307.jpg', '2019-10-17', '2021-07-01', '1', '0000-00-00 00:00:00'),
(28, 'TES Tanggal', 'TES Tanggal', '0895367081854', '1', '1', '2', 'TES Tanggal', 'TES_Tanggal_1571278153.jpg', '2019-10-17', '2019-10-26', '1', '0000-00-00 00:00:00'),
(29, 'ZAIDAN', 'tgl_keluar_karyawan', '0895367081854', 'HMM', '0', '2', 'ZAIDAN', 'profile-photos/1.png', '2018-03-01', '2018-03-07', '1', '0000-00-00 00:00:00'),
(30, 'TES DATE', 'TES DATE', '0895367081854', 'Admin', '0', '2', 'TES DATE', 'profile-photos/1.png', '2019-10-24', '2019-10-31', '0', '2019-10-17 14:50:31'),
(33, 'Default', 'vebripradanamva@gmail.com', '0895367081854', 'Suppliyer', '0', '2', 'Default', 'profile-photos/1.png', '2019-10-22', '2019-10-26', '1', '2019-10-22 09:28:01'),
(35, 'Tes dari hp', 'vebripradanamva@gmail.com', '085855096637', 'Kasir', '1', '2', 'Tes', 'profile-photos/1.png', '2019-10-22', '2022-11-25', '1', '2019-10-22 10:58:35'),
(36, 'Kelamin', 'Kelamin', '2235', 'Bos Bray', '0', '2', 'Kelamin', 'profile-photos/1.png', '2019-10-23', '2019-10-25', '1', '2019-10-23 16:14:45'),
(37, 'Tes Lagi 1 Nama KAeyawan', 'Tes Lagi 1', '325212412412412', 'Admin Vebri', '1', '4', 'Tes Lagi 1', 'profile-photos/1.png', '2019-10-24', '2019-10-26', '0', '2019-10-23 16:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `list_devisit`
--

CREATE TABLE `list_devisit` (
  `id_list_devisit` int(11) NOT NULL,
  `id_devisit` varchar(11) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `tanggal_jatuh_tempo` varchar(100) NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `nama_penjual` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `dibayar` varchar(100) NOT NULL,
  `kurang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_produk`
--

CREATE TABLE `list_produk` (
  `id_list_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `harga_beli` varchar(100) NOT NULL,
  `harga_jual` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_produk` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_produk`
--

INSERT INTO `list_produk` (`id_list_produk`, `nama_produk`, `jumlah`, `harga_beli`, `harga_jual`, `gambar`, `id_produk`) VALUES
(1, 'Martabak', '12', '', 'martabak.jpg', '', '1'),
(90, 'Ikan', '4', '', 'wkwkwkwkwk.jpg', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `code_barang` varchar(200) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `jumlah`, `code_barang`, `id_kategori`) VALUES
(1, 'Martabak', '1421', 'XXCSSC', 1),
(2, 'Ikan', '4', '11', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `id_akun` int(11) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `saldo` varchar(100) NOT NULL,
  `telepon_bank` varchar(25) NOT NULL,
  `alamat_bank` varchar(100) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id_user` int(11) NOT NULL,
  `no_tlp` varchar(16) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `login_stat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_outlet` int(11) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `no_tlp`, `username`, `password`, `email`, `status`, `login_stat`, `id_outlet`, `cek`) VALUES
(1, '', 'admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '', 1, '2019-08-29 07:48:27', 0, 0),
(26, '123456789', 'hummasoft', '3044840b13c7ef1ded03c3870653b9e9fd0c5e40', 'info@hummasoft.com', 2, '2019-10-23 21:03:18', 0, 0),
(27, '56764675', 'Bambang', '8d915418744c262d862505a7747465e62d918c29', 'bambang@gmail.com', 1, '2019-10-24 00:19:16', 0, 1),
(29, '083888927287', 'admin1', 'f6949a8c7d5b90b4a698660bbfb9431503fbb995', 'info@hummasoft.com', 2, '2019-10-24 01:12:10', 0, 1),
(30, '0239840230', 'outlet1', 'd6cfbab6cf333beefc20ab873423589a267e82e1', 'outlet1@gmail.com', 3, '2019-10-24 15:16:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_outlet` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `code_penjualan` varchar(100) NOT NULL,
  `pembeli` varchar(100) NOT NULL,
  `penjual` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `id_outlet`, `tanggal`, `code_penjualan`, `pembeli`, `penjual`) VALUES
(1, 1, '2019-10-17 09:47:07', 'wqd', 'Arif', 'Duta'),
(2, 2, '2019-10-25 10:39:14', '12r', 'Bagas', 'Aldi'),
(3, 5, '2019-10-25 01:18:28', 'ASDASD', 'Haidar', 'Om'),
(4, 4, '2019-10-25 02:23:24', 'qwe12', 'Haidar ', 'Duta'),
(5, 1, '2019-10-25 03:12:30', '212twe', 'Arip', 'Bagas'),
(6, 2, '2019-10-25 04:49:13', '123ew', 'aldi', 'arip'),
(7, 3, '2019-10-25 05:34:18', '14ewfew', 'duta', 'aldi'),
(8, 3, '2019-10-25 06:00:00', '2532f', 'Alda', 'Duta'),
(9, 3, '2019-10-25 07:08:22', '2398wfi', 'Arif', 'Vebri'),
(10, 4, '2019-10-25 08:08:24', '321t43g', 'Arif', 'Bagas'),
(11, 4, '2019-10-25 11:21:38', 'qfwqwf', 'Arif', 'Duta'),
(12, 1, '2019-10-25 12:41:27', 'qwd', 'Arif', 'Bagas'),
(13, 1, '2019-10-25 13:20:41', 'qwdq', 'Haidar', 'Aldi'),
(14, 4, '2019-10-25 14:10:45', 'qwdqwfqwf', 'aldi', 'bagas'),
(15, 4, '2019-10-25 15:23:43', '123332', 'Haidar', 'bagas'),
(16, 3, '2019-10-25 16:17:37', 'qwdqw21', 'Vebri', 'Bagas'),
(17, 2, '2019-10-25 17:21:44', '7ay8scvas', 'Bagas', 'Aldi'),
(18, 2, '2019-10-25 18:32:46', '12r', 'Arif', 'Aldi'),
(19, 3, '2019-10-25 19:35:18', 'wqd', 'Arif', 'vebri'),
(20, 1, '2019-10-25 20:30:30', '78asdasu', 'Vebri', 'Haidar'),
(21, 1, '2019-10-25 21:33:41', 'qwd21r', 'Vebri', 'Bagas'),
(22, 4, '2019-10-25 22:19:33', '8912iiwoqd', 'Aldi', 'Vebri'),
(23, 3, '2019-10-25 23:37:42', 'qwoid', 'Aldi', 'Arif'),
(24, 1, '2019-10-25 00:24:35', '124', 'Bagas', 'Duta'),
(25, 4, '2019-10-25 10:14:37', '12r', 'Bagas', 'alda'),
(26, 2, '2019-10-25 13:33:23', 'qwdq', 'Haidar', 'duta'),
(27, 3, '2019-10-25 14:37:24', 'qwdqwfqwf', 'aldi', 'arif'),
(28, 1, '2019-10-25 15:37:19', '123332', 'Arif', 'bagas'),
(29, 1, '2019-10-25 11:10:22', 'qfwqwf', 'Arif', 'Duta'),
(30, 2, '2019-10-25 12:28:44', 'qwd', 'Arif', 'Bagas'),
(31, 3, '2019-10-25 13:29:19', 'qwdq', 'Haidar', 'Aldi'),
(32, 4, '2019-10-25 14:18:29', 'qwdqwfqwf', 'aldi', 'bagas'),
(33, 1, '2019-10-25 15:38:19', '123332', 'Haidar', 'bagas'),
(34, 2, '2019-10-25 16:28:23', 'qwdqw21', 'Vebri', 'Bagas'),
(35, 3, '2019-10-25 17:35:24', '7ay8scvas', 'Bagas', 'Aldi'),
(36, 4, '2019-10-25 18:17:31', '12r', 'Arif', 'Aldi'),
(37, 1, '2019-10-25 19:23:47', 'wqd', 'Arif', 'vebri'),
(38, 1, '2019-10-25 13:37:20', 'qwdq', 'Haidar', 'Aldi'),
(39, 2, '2019-10-25 14:29:25', 'qwdqwfqwf', 'aldi', 'bagas'),
(40, 3, '2019-10-25 15:35:51', '123332', 'Haidar', 'bagas'),
(41, 4, '2019-10-25 16:33:09', 'qwdqw21', 'Vebri', 'Bagas'),
(42, 1, '2019-10-25 17:36:07', '7ay8scvas', 'Bagas', 'Aldi'),
(43, 2, '2019-10-25 18:49:15', '12r', 'Arif', 'Aldi'),
(44, 3, '2019-10-25 19:08:37', 'wqd', 'Arif', 'vebri'),
(45, 4, '2019-10-25 20:48:09', '78asdasu', 'Vebri', 'Haidar'),
(46, 1, '2019-10-25 21:55:00', 'qwd21r', 'Vebri', 'Bagas'),
(47, 2, '2019-10-25 22:43:33', '8912iiwoqd', 'Aldi', 'Vebri'),
(48, 3, '2019-10-25 23:43:30', 'qwoid', 'Aldi', 'Arif'),
(49, 4, '2019-10-25 00:15:31', '124', 'Bagas', 'Duta'),
(50, 1, '2019-10-25 10:46:23', '12r', 'Bagas', 'alda'),
(51, 1, '2019-10-25 12:11:25', 'qwd', 'Arif', 'Bagas'),
(52, 2, '2019-10-25 13:42:31', 'qwdq', 'Haidar', 'Aldi'),
(53, 3, '2019-10-25 14:36:22', 'qwdqwfqwf', 'aldi', 'bagas'),
(54, 4, '2019-10-25 15:16:47', '123332', 'Haidar', 'bagas'),
(55, 1, '2019-10-25 16:46:11', 'qwdqw21', 'Vebri', 'Bagas'),
(56, 3, '2019-10-25 17:35:24', '7ay8scvas', 'Bagas', 'Aldi'),
(57, 4, '2019-10-25 18:17:31', '12r', 'Arif', 'Aldi'),
(58, 1, '2019-10-25 19:23:47', 'wqd', 'Arif', 'vebri'),
(59, 1, '2019-10-25 13:37:20', 'qwdq', 'Haidar', 'Aldi'),
(60, 2, '2019-10-25 14:29:25', 'qwdqwfqwf', 'aldi', 'bagas'),
(61, 3, '2019-10-25 15:35:51', '123332', 'Haidar', 'bagas'),
(62, 4, '2019-10-25 16:33:09', 'qwdqw21', 'Vebri', 'Bagas'),
(63, 1, '2019-10-25 17:36:07', '7ay8scvas', 'Bagas', 'Aldi'),
(64, 2, '2019-10-25 18:49:15', '12r', 'Arif', 'Aldi'),
(65, 3, '2019-10-25 19:08:37', 'wqd', 'Arif', 'vebri'),
(66, 4, '2019-10-25 20:48:09', '78asdasu', 'Vebri', 'Haidar'),
(67, 1, '2019-10-25 21:55:00', 'qwd21r', 'Vebri', 'Bagas'),
(68, 2, '2019-10-25 22:43:33', '8912iiwoqd', 'Aldi', 'Vebri'),
(69, 3, '2019-10-25 23:43:30', 'qwoid', 'Aldi', 'Arif'),
(70, 4, '2019-10-25 00:15:31', '124', 'Bagas', 'Duta'),
(71, 1, '2019-10-25 10:46:23', '12r', 'Bagas', 'alda'),
(72, 3, '2019-10-25 17:35:24', '7ay8scvas', 'Bagas', 'Aldi'),
(73, 4, '2019-10-25 18:17:31', '12r', 'Arif', 'Aldi'),
(74, 1, '2019-10-25 19:23:47', 'wqd', 'Arif', 'vebri'),
(75, 1, '2019-10-25 13:37:20', 'qwdq', 'Haidar', 'Aldi'),
(76, 2, '2019-10-25 14:29:25', 'qwdqwfqwf', 'aldi', 'bagas'),
(77, 3, '2019-10-25 15:35:51', '123332', 'Haidar', 'bagas'),
(78, 4, '2019-10-25 16:33:09', 'qwdqw21', 'Vebri', 'Bagas'),
(79, 1, '2019-10-25 17:36:07', '7ay8scvas', 'Bagas', 'Aldi'),
(80, 2, '2019-10-25 18:49:15', '12r', 'Arif', 'Aldi'),
(81, 3, '2019-10-25 19:08:37', 'wqd', 'Arif', 'vebri'),
(82, 4, '2019-10-25 20:48:09', '78asdasu', 'Vebri', 'Haidar'),
(83, 1, '2019-10-25 21:55:00', 'qwd21r', 'Vebri', 'Bagas'),
(84, 2, '2019-10-25 22:43:33', '8912iiwoqd', 'Aldi', 'Vebri'),
(85, 3, '2019-10-25 23:43:30', 'qwoid', 'Aldi', 'Arif'),
(86, 4, '2019-10-25 00:15:31', '124', 'Bagas', 'Duta'),
(87, 1, '2019-10-25 10:46:23', '12r', 'Bagas', 'alda'),
(88, 3, '2019-10-25 23:43:30', 'qwoid', 'Aldi', 'Arif'),
(89, 4, '2019-10-25 00:15:31', '124', 'Bagas', 'Duta'),
(90, 1, '2019-10-25 10:46:23', '12r', 'Bagas', 'alda'),
(91, 3, '2019-10-25 17:35:24', '7ay8scvas', 'Bagas', 'Aldi'),
(92, 4, '2019-10-25 18:17:31', '12r', 'Arif', 'Aldi'),
(93, 1, '2019-10-25 19:23:47', 'wqd', 'Arif', 'vebri'),
(94, 1, '2019-10-25 13:37:20', 'qwdq', 'Haidar', 'Aldi'),
(95, 2, '2019-10-25 14:29:25', 'qwdqwfqwf', 'aldi', 'bagas'),
(96, 3, '2019-10-25 15:35:51', '123332', 'Haidar', 'bagas'),
(97, 4, '2019-10-25 16:33:09', 'qwdqw21', 'Vebri', 'Bagas'),
(98, 1, '2019-10-25 17:36:07', '7ay8scvas', 'Bagas', 'Aldi'),
(99, 2, '2019-10-25 18:49:15', '12r', 'Arif', 'Aldi'),
(100, 3, '2019-10-25 19:08:37', 'wqd', 'Arif', 'vebri'),
(101, 4, '2019-10-25 20:48:09', '78asdasu', 'Vebri', 'Haidar'),
(102, 1, '2019-10-25 21:55:00', 'qwd21r', 'Vebri', 'Bagas'),
(103, 2, '2019-10-25 22:43:33', '8912iiwoqd', 'Aldi', 'Vebri'),
(104, 3, '2019-10-25 23:43:30', 'qwoid', 'Aldi', 'Arif'),
(105, 4, '2019-10-25 00:15:31', '124', 'Bagas', 'Duta'),
(106, 1, '2019-10-25 10:46:23', '12r', 'Bagas', 'alda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `id_kategori` varchar(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `kode_barang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk`, `id_kategori`, `gambar`, `kode_barang`) VALUES
(1, 'hg', '', '', '45'),
(2, 'ff', '', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `id_profile` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `limit_grup` int(11) NOT NULL DEFAULT '3',
  `gambar` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile`
--

INSERT INTO `tb_profile` (`id_profile`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `email`, `id_user`, `limit_grup`, `gambar`) VALUES
(9, 'mlg', 'manadooooo', '', 'pria', 'fadilahastri21@gmail.com', 9, 3, ''),
(10, 'malang', 'manado', '1 mei 2000', 'pria', 'aldifaisa@gmail.com', 0, 0, ''),
(11, '', 'manado', '21juni1999', 'pria', 'agungjokosupriyanto5@gmail.com', 13, 0, ''),
(12, 'malang', 'malang', '1966-09-17', 'pria', 'agungjokosupriyanto5@gmail.com', 13, 0, ''),
(13, 'sawojajar', 'surabaya', '', 'wanita', 'acitsky@gmail.com', 4, 0, ''),
(14, 'sgs', 'malang', '2019-09-18', 'wanita', 'bagassss@gmail.com', 16, 0, ''),
(15, 'sgs', 'malang', '2019-09-18', 'wanita', 'bagassss@gmail.com', 16, 0, 'file_1569835038.png'),
(16, 'sgs', 'malang', '2019-09-18', 'wanita', 'bagassss@gmail.com', 16, 0, ''),
(17, 'malang', 'surabaya', '2019-09-23', 'wanita', 'acitsky@gmail.com', 17, 3, ''),
(18, 'a', '19', '21juni1999', 'priaaaa', 'agungjokosupriyanto5@gmail.com', 18, 3, ''),
(19, 'abcd', 'manado', '2019-09-30', 'wanita', 'fadilahastri21@gmail.com', 15, 3, 'file_1569835179.png'),
(20, '', '', '', NULL, '', 0, 3, 'nmfile6.png'),
(21, '', '', '', NULL, '', 0, 3, 'file_1569832355.png'),
(22, 'mm', 'sulfat', '2020-01-31', 'pria', 'mama@gmail.com', 19, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting_outlet`
--

CREATE TABLE `tb_setting_outlet` (
  `id_setting_outlet` int(11) NOT NULL,
  `nama_outlet` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(25) NOT NULL,
  `nama_manager` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_setting_outlet`
--

INSERT INTO `tb_setting_outlet` (`id_setting_outlet`, `nama_outlet`, `alamat`, `no_telepon`, `nama_manager`, `gambar`, `email`) VALUES
(1, 'Outlet 1 X', 'dimana', '0891', 'X', 'defalult.jpg', 'gmaiil.com'),
(2, 'Outlet 2 X GH', 'dimana', '0895', 'X.X', 'default.jpg', 'gmail.com'),
(3, 'Outlet 3 X', 'dimana', '0895', 'X.X.3', 'default.jpg', 'gmail.com\r\n'),
(4, 'Outlet 4 X', 'dimana', '0895', 'X.X.4', 'default.jpg', 'gmail.com\r\n'),
(5, 'Outlet 5 X', 'dimana', '0895', 'X.X.5', 'default.jpg', 'gmail.com\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting_pajak`
--

CREATE TABLE `tb_setting_pajak` (
  `id_pajak` int(11) NOT NULL,
  `nama_pajak` varchar(100) NOT NULL,
  `kurs_pajak` varchar(100) NOT NULL,
  `jenis_pajak` varchar(100) NOT NULL,
  `status_pajak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting_perusahaan`
--

CREATE TABLE `tb_setting_perusahaan` (
  `id_setting_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama_direktur` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transfer`
--

CREATE TABLE `tb_transfer` (
  `id_transfer` int(11) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `dari_rekening` varchar(100) NOT NULL,
  `ke_rekening` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`, `created`) VALUES
(1, 'fead86c331874ba5b4bf2ae68bfe15', 13, '2019-10-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses_pegawai`
--
ALTER TABLE `akses_pegawai`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `devisit`
--
ALTER TABLE `devisit`
  ADD PRIMARY KEY (`id_devisit`);

--
-- Indexes for table `kontrak`
--
ALTER TABLE `kontrak`
  ADD PRIMARY KEY (`id_kontrak`);

--
-- Indexes for table `kontrak_kerja`
--
ALTER TABLE `kontrak_kerja`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `list_devisit`
--
ALTER TABLE `list_devisit`
  ADD PRIMARY KEY (`id_list_devisit`);

--
-- Indexes for table `list_produk`
--
ALTER TABLE `list_produk`
  ADD PRIMARY KEY (`id_list_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_profile`
--
ALTER TABLE `tb_profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indexes for table `tb_setting_outlet`
--
ALTER TABLE `tb_setting_outlet`
  ADD PRIMARY KEY (`id_setting_outlet`);

--
-- Indexes for table `tb_setting_pajak`
--
ALTER TABLE `tb_setting_pajak`
  ADD PRIMARY KEY (`id_pajak`);

--
-- Indexes for table `tb_setting_perusahaan`
--
ALTER TABLE `tb_setting_perusahaan`
  ADD PRIMARY KEY (`id_setting_perusahaan`);

--
-- Indexes for table `tb_transfer`
--
ALTER TABLE `tb_transfer`
  ADD PRIMARY KEY (`id_transfer`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_pegawai`
--
ALTER TABLE `akses_pegawai`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `devisit`
--
ALTER TABLE `devisit`
  MODIFY `id_devisit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontrak`
--
ALTER TABLE `kontrak`
  MODIFY `id_kontrak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontrak_kerja`
--
ALTER TABLE `kontrak_kerja`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `list_devisit`
--
ALTER TABLE `list_devisit`
  MODIFY `id_list_devisit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_produk`
--
ALTER TABLE `list_produk`
  MODIFY `id_list_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_profile`
--
ALTER TABLE `tb_profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_setting_outlet`
--
ALTER TABLE `tb_setting_outlet`
  MODIFY `id_setting_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_setting_pajak`
--
ALTER TABLE `tb_setting_pajak`
  MODIFY `id_pajak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_setting_perusahaan`
--
ALTER TABLE `tb_setting_perusahaan`
  MODIFY `id_setting_perusahaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_transfer`
--
ALTER TABLE `tb_transfer`
  MODIFY `id_transfer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
