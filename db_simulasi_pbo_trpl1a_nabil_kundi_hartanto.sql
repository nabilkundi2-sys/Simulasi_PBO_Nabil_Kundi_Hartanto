-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2026 at 03:22 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_trpl1a_nabil_kundi_hartanto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(150) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(12,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Andi Pratama', 'SMAN 1 Semarang', 85.50, 300000.00, 'Reguler', 'Teknik Informatika', 'Semarang', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMAN 2 Surakarta', 78.00, 300000.00, 'Reguler', 'Sistem Informasi', 'Surakarta', NULL, NULL, NULL, NULL),
(3, 'Citra Lestari', 'SMKN 1 Kudus', 88.25, 300000.00, 'Reguler', 'Manajemen Informatika', 'Semarang', NULL, NULL, NULL, NULL),
(4, 'Dewi Anggraini', 'SMAN 1 Magelang', 82.40, 300000.00, 'Reguler', 'Teknik Komputer', 'Yogyakarta', NULL, NULL, NULL, NULL),
(5, 'Eko Saputra', 'SMKN 2 Purwokerto', 79.75, 300000.00, 'Reguler', 'Teknik Informatika', 'Purwokerto', NULL, NULL, NULL, NULL),
(6, 'Farhan Rizki', 'SMAN 3 Tegal', 86.10, 300000.00, 'Reguler', 'Sistem Informasi', 'Semarang', NULL, NULL, NULL, NULL),
(7, 'Gina Maharani', 'SMAN 1 Pekalongan', 90.00, 300000.00, 'Reguler', 'Teknik Informatika', 'Yogyakarta', NULL, NULL, NULL, NULL),
(8, 'Hana Putri', 'SMAN 1 Semarang', 91.20, 300000.00, 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Indra Gunawan', 'SMKN 1 Solo', 87.50, 300000.00, 'Prestasi', NULL, NULL, 'Lomba Robotik', 'Provinsi', NULL, NULL),
(10, 'Joko Wijaya', 'SMAN 5 Semarang', 89.80, 300000.00, 'Prestasi', NULL, NULL, 'Olimpiade Fisika', 'Nasional', NULL, NULL),
(11, 'Kartika Sari', 'SMAN 1 Kudus', 92.10, 300000.00, 'Prestasi', NULL, NULL, 'Kejuaraan Atletik', 'Internasional', NULL, NULL),
(12, 'Lukman Hakim', 'SMKN 2 Jepara', 85.90, 300000.00, 'Prestasi', NULL, NULL, 'Lomba Pemrograman', 'Nasional', NULL, NULL),
(13, 'Maya Aulia', 'SMAN 2 Magelang', 90.50, 300000.00, 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Provinsi', NULL, NULL),
(14, 'Nanda Prakoso', 'SMAN 1 Tegal', 88.70, 300000.00, 'Prestasi', NULL, NULL, 'Kejuaraan Bulutangkis', 'Nasional', NULL, NULL),
(15, 'Oki Firmansyah', 'SMAN 1 Semarang', 84.50, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD-001', 'Kementerian Keuangan'),
(16, 'Putri Ayuningtyas', 'SMAN 2 Surakarta', 86.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD-002', 'Kementerian Perhubungan'),
(17, 'Qori Ahmad', 'SMKN 1 Purwokerto', 82.30, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD-003', 'Pemerintah Provinsi Jawa Tengah'),
(18, 'Rina Melati', 'SMAN 1 Kudus', 88.90, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD-004', 'Kementerian Komunikasi'),
(19, 'Satria Nugraha', 'SMAN 4 Semarang', 81.70, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD-005', 'Badan Pusat Statistik'),
(20, 'Tia Rahmawati', 'SMKN 2 Tegal', 87.40, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SKD-006', 'Kementerian Dalam Negeri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
