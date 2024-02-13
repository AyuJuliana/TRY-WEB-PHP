-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 04:34 PM
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
-- Database: `db_sewa`
--

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `no_cabang` int(15) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `kode_pos` int(15) NOT NULL,
  `jalan` varchar(15) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`no_cabang`, `no_tlp`, `kode_pos`, `jalan`, `kota`, `provinsi`) VALUES
(1, '081939197582', 1234, 'AlasKedaton', 'Tabanan', 'Bali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` int(15) NOT NULL,
  `no_cabang` int(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telpon` varchar(200) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jumlah` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `no_cabang`, `nama`, `alamat`, `telpon`, `tgl_daftar`, `jumlah`) VALUES
(1, 1, 'Ni Komang Ayu Juliana', 'Jalan alaskedaton', '081939187392', '2023-12-16', '2'),
(2, 1, 'Ni Made Ayu Wirasih', 'Jalan slemadeg', '081939678952', '2023-12-18', '1'),
(3, 2, 'I Dewa Made Mardana', 'Jalan raya tegeh', '081939180998', '2023-12-17', '1'),
(4, 4, 'I Putu Herdy Juniawan', 'Jalan nusantara', '081939453272', '2023-12-16', '3'),
(5, 4, 'I Gusti Ngurah Bagus Lanang Phurbawa', 'Jalan alaskedaton', '081939187392', '2023-12-16', '2'),
(6, 3, 'Ida Ayu Made Putri ', 'Jalan Kesatrian', '081939185172', '2023-12-18', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_denda`
--

CREATE TABLE `tb_denda` (
  `id_denda` int(15) NOT NULL,
  `rusak_berat` double NOT NULL,
  `rusak_ringan` double NOT NULL,
  `terlambat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_denda`
--

INSERT INTO `tb_denda` (`id_denda`, `rusak_berat`, `rusak_ringan`, `terlambat`) VALUES
(1, 100000, 20000, 50000),
(2, 120000, 20000, 60000),
(3, 130000, 30000, 70000),
(4, 140000, 40000, 80000),
(5, 150000, 35000, 90000),
(7, 40000, 20000, 10000),
(8, 40000, 20000, 10000),
(9, 100000, 20000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama`, `deskripsi`) VALUES
(1, 'Bus Wisata', 'Pickup adalah kendaraan bermotor dengan kabin penumpang di bagian depan dan area bak terbuka di belakang. Pickup sering digunakan untuk keperluan komersial dan pribadi. Mereka dapat digunakan untuk membawa barang, seperti peralatan konstruksi atau barang-barang pribadi, dan juga populer sebagai kendaraan pribadi sehari-hari.\r\n'),
(2, 'Pickup', 'Pickup adalah kendaraan bermotor dengan kabin penumpang di bagian depan dan area bak terbuka di belakang. Pickup sering digunakan untuk keperluan komersial dan pribadi. Mereka dapat digunakan untuk membawa barang, seperti peralatan konstruksi atau barang-barang pribadi, dan juga populer sebagai kendaraan pribadi sehari-hari.'),
(3, 'Truck', 'Truk adalah kendaraan bermotor yang didesain untuk membawa barang dalam bak belakangnya. Mereka memiliki berbagai ukuran, mulai dari truk ringan yang cocok untuk penggunaan sehari-hari hingga truk berat yang dapat mengangkut muatan besar. Truk digunakan di berbagai industri, termasuk logistik dan konstruksi.'),
(4, 'Mobil', 'Mobil adalah kendaraan beroda empat yang dirancang untuk transportasi pribadi. Mereka sangat umum digunakan di seluruh dunia dan memiliki berbagai jenis, termasuk sedan, hatchback, SUV, dan lainnya. Mobil biasanya dirancang untuk kenyamanan dan keamanan penumpang serta efisiensi bahan bakar.'),
(5, 'Motor', 'Motor adalah kendaraan beroda dua atau tiga yang digerakkan oleh mesin. Motor sangat populer untuk perjalanan pribadi, terutama di kota-kota dengan lalu lintas padat. Ada berbagai jenis motor, termasuk sport, touring, dan off-road, masing-masing dirancang untuk keperluan berkendara yang berbeda.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kendaraan`
--

CREATE TABLE `tb_kendaraan` (
  `id_kendaraan` int(15) NOT NULL,
  `no_cabang` int(15) NOT NULL,
  `no_polisi` varchar(25) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `tipe` varchar(200) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahun` int(4) NOT NULL,
  `harga_mount` decimal(20,0) NOT NULL,
  `status` enum('sedang_disewa','tersedia','diperbaiki') NOT NULL,
  `denda` decimal(20,0) NOT NULL,
  `harga_day` decimal(20,0) NOT NULL,
  `harga_week` decimal(20,0) NOT NULL,
  `harga_year` decimal(20,0) NOT NULL,
  `id_kategori` int(15) NOT NULL,
  `id_denda` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kendaraan`
--

INSERT INTO `tb_kendaraan` (`id_kendaraan`, `no_cabang`, `no_polisi`, `merk`, `tipe`, `warna`, `tahun`, `harga_mount`, `status`, `denda`, `harga_day`, `harga_week`, `harga_year`, `id_kategori`, `id_denda`) VALUES
(1, 1, 'DK 2456 FM', 'Honda', 'Vario', 'Hitam', 2020, 1400000, '', 150000, 50000, 350000, 16800000, 4, 1),
(2, 1, 'DK 2457 IP', 'Honda', 'Carry', 'Biru', 2022, 1400000, 'diperbaiki', 150000, 50000, 350000, 16800000, 2, 2),
(3, 2, 'DK 2458 YU', 'Yamaha', 'BusWis', 'Orang', 2018, 1400000, '', 200000, 50000, 350000, 16800000, 1, 1),
(4, 2, 'DK 2459 IK', 'YAMAHA', 'Truckie', 'Hitam', 2019, 1400000, 'tersedia', 100000, 50000, 350000, 16800000, 3, 3),
(5, 3, 'DK 2460 OP', 'Honda', 'Avanza', 'Hitam', 2022, 2800000, '', 250000, 100000, 700000, 33600000, 5, 4),
(6, 3, 'DK 2461 QR', 'Honda', 'PCX', 'Hitam', 2022, 2800000, 'tersedia', 250000, 100000, 700000, 33600000, 4, 5),
(7, 4, 'DK 2412 ST', 'Honda', 'PCX', 'Merah', 2023, 2800000, 'tersedia', 150000, 100000, 700000, 33600000, 4, 3),
(8, 4, 'DK 2423 UV', 'Honda', 'Ayla', 'Putih', 2023, 3500000, '', 125000, 125000, 875000, 42000000, 5, 4),
(9, 5, 'DK 2434 KL', 'Honda', 'Beat', 'Pink', 2021, 3500000, 'tersedia', 100000, 125000, 875000, 42000000, 4, 3),
(10, 5, 'DK 2445 RT', 'Honda', 'Scoppy', 'hijau', 2022, 1400000, '', 100000, 50000, 350000, 16800000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nota`
--

CREATE TABLE `tb_nota` (
  `invoice` int(20) NOT NULL,
  `total_denda` double NOT NULL,
  `jumlah_sewa` double NOT NULL,
  `total_harga` double NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `id_anggota` int(15) NOT NULL,
  `id_sewa` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_nota`
--

INSERT INTO `tb_nota` (`invoice`, `total_denda`, `jumlah_sewa`, `total_harga`, `tanggal_sewa`, `tanggal_kembali`, `id_anggota`, `id_sewa`) VALUES
(2, 150000, 1, 140000, '2023-06-20', '2023-06-30', 1, 1),
(3, 50000, 1, 120000, '2023-07-20', '2023-08-20', 2, 2),
(4, 240000, 2, 200000, '2023-06-21', '2023-07-20', 3, 2),
(5, 150000, 1, 700000, '2023-05-20', '2023-06-30', 4, 3),
(6, 150000, 1, 100000, '2023-02-20', '2023-03-20', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(15) NOT NULL,
  `no_cabang` int(15) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `gaji` int(10) NOT NULL,
  `desa` varchar(200) NOT NULL,
  `kecamatan` varchar(200) NOT NULL,
  `provinsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `no_cabang`, `nama`, `telpon`, `jabatan`, `gaji`, `desa`, `kecamatan`, `provinsi`) VALUES
(1, 1, 'I Made Dirga', '098765456234', 'Pegawai', 1000000, 'Keramas', 'Blahbatuh', 'Bali'),
(2, 1, 'I Dewa Karsa', '098765457865', 'Pegawai', 1000000, 'Pinda', 'Blahbatuh', 'Bali'),
(3, 1, 'I Made Warsi', '098765410935', 'Pegawai', 1000000, 'Pekandelan', 'Gianyar', 'Bali'),
(4, 1, 'I Gede Sori', '098765458267', 'Manajer', 2000000, 'Keramas', 'Blahbatuh', 'Bali'),
(5, 2, 'Martini Dewi', '098765456167', 'Pegawai', 1000000, 'Blayu', 'Marga', 'Bali'),
(6, 2, 'Ni Made Ayuk', '098965457865', 'Pegawai', 1000000, 'Marga', 'Marga', 'Bali'),
(7, 2, 'Ni Luh Pager', '098965301935', 'Pegawai', 1000000, 'Gadungan', 'Selemadeg Timur', 'Bali'),
(8, 2, 'Ida Bagus Putu Aditya Karana', '098766358267', 'Manajer', 2000000, 'Tedungsari', 'Selemadeg Timur', 'Bali'),
(9, 3, 'Muhammad Alfa', '098765455151', 'Pegawai', 1000000, 'Bunutin', 'Bangli', 'Bali'),
(10, 3, 'Dewa Gede Dwi', '098965456362', 'Pegawai', 1000000, 'Landih', 'Bangli', 'Bali'),
(11, 3, 'Dewa Anom', '098965308982', 'Pegawai', 1000000, 'Taman Bali', 'Bangli', 'Bali'),
(12, 3, 'Dwi Rahmawati', '098766355678', 'Manajer', 2000000, 'Kayubihi', 'Bangli', 'Bali'),
(13, 4, 'Muhammad Alfarizi', '098765459090', 'Pegawai', 1000000, 'Pekandelan', 'Gianyar', 'Bali'),
(14, 4, 'Dewa Andika', '098965458080', 'Pegawai', 1000000, 'Pekandelan', 'Gianyar', 'Bali'),
(15, 4, 'Dewa Agus Yana', '098965307070', 'Pegawai', 1000000, 'Bonbiu', 'Blahbatuh', 'Bali'),
(16, 4, 'Rahma Andini', '098766356060', 'Manajer', 2000000, 'Bonbiu', 'Blahbatuh', 'Bali'),
(17, 5, 'Made Anggreni', '098765455050', 'Pegawai', 1000000, 'Mas', 'Gianyar', 'Bali'),
(18, 5, 'Dewa Asna', '098965454040', 'Pegawai', 1000000, 'Peliatan', 'Gianyar', 'Bali'),
(19, 5, 'Komang Wayah', '098965303030', 'Pegawai', 1000000, 'Petulu', 'Blahbatuh', 'Bali'),
(20, 5, 'Made Purna', '098766352020', 'Manajer', 2000000, 'Singakerta', 'Blahbatuh', 'Bali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `no_cabang` int(15) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `kode_pos` int(15) NOT NULL,
  `jalan` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `provinsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_perusahaan`
--

INSERT INTO `tb_perusahaan` (`no_cabang`, `no_telpon`, `kode_pos`, `jalan`, `kota`, `provinsi`) VALUES
(1, '082147390098', 1178, 'jalan mangkugiweng', 'Gianyar', 'Bali'),
(2, '082147398990', 1168, 'jalan \r\nkamboja', 'Tabanan', 'Bali'),
(3, '082147397889', 1193, 'jalan nusantara', 'Bangli', 'Bali'),
(4, '082147392334', 1156, 'jalan dharmagiri', 'Gianyar', 'Bali'),
(5, '082147397886', 1145, 'jalan selatan', 'Ubud', 'Bali');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sewa`
--

CREATE TABLE `tb_sewa` (
  `id` int(15) NOT NULL,
  `id_sewa` int(15) NOT NULL,
  `denda` double DEFAULT NULL,
  `harga_sewa` double NOT NULL,
  `id_kendaraan` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_sewa`
--

INSERT INTO `tb_sewa` (`id`, `id_sewa`, `denda`, `harga_sewa`, `id_kendaraan`) VALUES
(2, 1, NULL, 1400000, 1),
(3, 1, NULL, 350000, 2),
(4, 2, NULL, 50000, 3),
(5, 2, NULL, 50000, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`no_cabang`);

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `no_cabang` (`no_cabang`);

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`),
  ADD KEY `no_cabang` (`no_cabang`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_denda` (`id_denda`);

--
-- Indexes for table `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`invoice`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_sewa` (`id_sewa`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `no_cabang` (`no_cabang`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`no_cabang`);

--
-- Indexes for table `tb_sewa`
--
ALTER TABLE `tb_sewa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kendaraan` (`id_kendaraan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `no_cabang` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `id_anggota` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `id_denda` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  MODIFY `id_kendaraan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_nota`
--
ALTER TABLE `tb_nota`
  MODIFY `invoice` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id_pegawai` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  MODIFY `no_cabang` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_sewa`
--
ALTER TABLE `tb_sewa`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD CONSTRAINT `tb_anggota_ibfk_1` FOREIGN KEY (`no_cabang`) REFERENCES `tb_perusahaan` (`no_cabang`);

--
-- Constraints for table `tb_kendaraan`
--
ALTER TABLE `tb_kendaraan`
  ADD CONSTRAINT `tb_kendaraan_ibfk_1` FOREIGN KEY (`no_cabang`) REFERENCES `tb_perusahaan` (`no_cabang`),
  ADD CONSTRAINT `tb_kendaraan_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`),
  ADD CONSTRAINT `tb_kendaraan_ibfk_3` FOREIGN KEY (`id_denda`) REFERENCES `tb_denda` (`id_denda`);

--
-- Constraints for table `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD CONSTRAINT `tb_nota_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`);

--
-- Constraints for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD CONSTRAINT `tb_pegawai_ibfk_1` FOREIGN KEY (`no_cabang`) REFERENCES `tb_perusahaan` (`no_cabang`);

--
-- Constraints for table `tb_sewa`
--
ALTER TABLE `tb_sewa`
  ADD CONSTRAINT `tb_sewa_ibfk_1` FOREIGN KEY (`id_kendaraan`) REFERENCES `tb_kendaraan` (`id_kendaraan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
