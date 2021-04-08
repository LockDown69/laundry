-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2021 pada 09.36
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `nama_pemesan` varchar(70) NOT NULL,
  `jumlah_kg` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_kembali` varchar(16) NOT NULL,
  `tanggal_dibayar` varchar(16) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `nama_pemesan`, `jumlah_kg`, `jumlah_bayar`, `tanggal`, `tanggal_kembali`, `tanggal_dibayar`, `keterangan`) VALUES
(2, '12', 12, 12, '0000-00-00 00:00:00', '2002', '20002', '12'),
(3, 'Glaucus', 5, 6000, '2021-04-07 06:34:02', '2021-04-08', '2021-05-07', 'mboh\r\n'),
(4, 'mboh', 9, 1, '2021-04-07 07:26:21', '2021-04-07', '2021-04-07', 'kosong i ae lah\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(70) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`) VALUES
(2, 'aku', 20000),
(3, 'Joss Gandos', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `nama_pemesan` varchar(70) NOT NULL,
  `jumlah_kg` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_paket`, `nama_pemesan`, `jumlah_kg`, `jumlah_bayar`, `tanggal`, `keterangan`) VALUES
(9, 4, 2, 'lockdown', 1, 1, '2021-04-07 04:05:48', '1'),
(10, 5, 2, '12', 12, 12, '2021-04-07 04:06:54', '12'),
(11, 6, 3, 'mboh', 9, 1, '2021-04-07 04:09:59', 'kosong i ae lah\r\n'),
(12, 5, 2, '1', 1, 1, '2021-04-07 04:10:39', '1'),
(15, 5, 2, '', 0, 1, '2021-04-07 06:17:54', 'anyyar'),
(16, 7, 2, 'Glaucus', 5, 6000, '2021-04-07 06:24:26', 'mboh\r\n'),
(17, 9, 3, 'aku', 5, 50000, '2021-04-07 07:23:41', 'mboh\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `no_tlp` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `no_tlp`, `level`) VALUES
(2, 'aku', '21232f297a57a5a743894a0e4a801fc3', 'admin', '4', 0, 1),
(5, 'petugas2', 'ac5604a8b8504d4ff5b842480df02e91', 'hehehe', 'mburi omahku', 69, 2),
(6, 'petugas1', 'b53fe7751b37e40ff34d012c7774d65f', 'hee hee hee', 'ndek mburi omahku', 666899, 1),
(7, 'ange', 'e7880f4be5b280cb33e4148d01e10192', 'Blue Poison-chan', '', 0, 2),
(8, 'kasir', 'c7911af3adbd12a035b289556d96470a', 'kasir', 'kasir', 1, 2),
(9, 'petugas5', 'bd71eb9c0e0e5f21713f18bb58ec3f15', 'aku', '', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `id_paket` (`id_paket`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
