-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2026 pada 02.44
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tka2027`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `detail` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_history`
--

CREATE TABLE `backup_history` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `ukuran` int(11) DEFAULT 0,
  `dibuat_oleh` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `backup_history`
--

INSERT INTO `backup_history` (`id`, `filename`, `ukuran`, `dibuat_oleh`, `created_at`) VALUES
(2, 'backup_tka_kecamatan_20260325_073409.sql', 47051, 'admin', '2026-03-25 07:34:09'),
(5, 'backup_tka_kecamatan_20260407_151821.sql', 95944, 'admin', '2026-04-07 15:18:22'),
(6, 'autobackup_20260416.sql', 45073, 'auto-daily', '2026-04-16 06:08:05'),
(7, 'autobackup_20260417.sql', 45073, 'auto-daily', '2026-04-17 07:56:43'),
(8, 'autobackup_20260420.sql', 45029, 'auto-daily', '2026-04-20 07:13:57'),
(9, 'autobackup_20260421.sql', 8505, 'auto-daily', '2026-04-21 04:34:05'),
(10, 'autobackup_20260426.sql', 9363, 'auto-daily', '2026-04-26 07:32:13'),
(11, 'autobackup_20260427.sql', 9363, 'auto-daily', '2026-04-27 10:28:21'),
(12, 'autobackup_20260428.sql', 9864, 'auto-daily', '2026-04-28 04:15:37'),
(13, 'autobackup_20260429.sql', 10372, 'auto-daily', '2026-04-29 06:41:52'),
(14, 'autobackup_20260430.sql', 11563, 'auto-daily', '2026-04-30 05:52:56'),
(23, 'autobackup_20260506.sql', 19795, 'auto-daily', '2026-05-06 06:44:19'),
(24, 'autobackup_20260507.sql', 17660, 'auto-daily', '2026-05-07 03:34:23'),
(32, 'backup_tka_kecamatan_20260512_081833.sql', 59650, 'admin', '2026-05-12 08:18:33'),
(33, 'autobackup_20260512.sql', 43341, 'auto-daily', '2026-05-12 08:20:51'),
(34, 'autobackup_20260517.sql', 44208, 'auto-daily', '2026-05-17 08:53:09'),
(35, 'autobackup_20260519.sql', 43147, 'auto-daily', '2026-05-19 13:58:26'),
(36, 'backup_tka_kecamatan_20260519_135937.sql', 52178, 'admin', '2026-05-19 13:59:37'),
(37, 'backup_tka_kecamatan_20260519_190040.sql', 44678, 'admin', '2026-05-19 19:00:40'),
(38, 'autobackup_20260520.sql', 20419, 'auto-daily', '2026-05-20 05:14:16'),
(39, 'backup_bilhilln_osn_20260520_140234.sql', 53811, 'admin', '2026-05-20 14:02:35'),
(40, 'backup_bilhilln_osn_20260520_140420.sql', 54025, 'admin', '2026-05-20 14:04:21'),
(41, 'autobackup_20260521.sql', 20171, 'auto-daily', '2026-05-21 07:54:21'),
(42, 'autobackup_20260522.sql', 21503, 'auto-daily', '2026-05-22 07:08:40'),
(43, 'autobackup_20260523.sql', 21816, 'auto-daily', '2026-05-23 02:22:52'),
(44, 'autobackup_20260524.sql', 95207, 'auto-daily', '2026-05-24 06:19:43'),
(45, 'backup_bilhilln_osn_20260524_191031.sql', 216702, 'admin', '2026-05-24 19:10:33'),
(46, 'autobackup_20260525.sql', 59163, 'auto-daily', '2026-05-25 21:08:30'),
(47, 'backup_tka2027_20260525_211707.sql', 67368, 'admin', '2026-05-25 21:17:07'),
(48, 'autobackup_20260526.sql', 63548, 'auto-daily', '2026-05-26 07:45:28'),
(49, 'autobackup_20260527.sql', 73935, 'auto-daily', '2026-05-27 13:10:15'),
(50, 'autobackup_20260528.sql', 68637, 'auto-daily', '2026-05-28 00:16:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `export_log`
--

CREATE TABLE `export_log` (
  `id` int(11) NOT NULL,
  `tipe` varchar(20) NOT NULL DEFAULT 'soal',
  `filename` varchar(255) NOT NULL,
  `dibuat_oleh` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_ujian`
--

CREATE TABLE `hasil_ujian` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `peserta_id` int(11) NOT NULL,
  `jadwal_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `total_soal` int(11) NOT NULL DEFAULT 0,
  `jml_benar` int(11) NOT NULL DEFAULT 0,
  `jml_salah` int(11) NOT NULL DEFAULT 0,
  `jml_kosong` int(11) NOT NULL DEFAULT 0,
  `nilai` decimal(6,2) NOT NULL DEFAULT 0.00,
  `ada_essay` tinyint(1) NOT NULL DEFAULT 0,
  `essay_dinilai` tinyint(1) NOT NULL DEFAULT 0,
  `nilai_essay` decimal(6,2) DEFAULT NULL,
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `durasi_detik` int(11) DEFAULT NULL,
  `submitted_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_ujian`
--

INSERT INTO `hasil_ujian` (`id`, `ujian_id`, `peserta_id`, `jadwal_id`, `kategori_id`, `total_soal`, `jml_benar`, `jml_salah`, `jml_kosong`, `nilai`, `ada_essay`, `essay_dinilai`, `nilai_essay`, `waktu_mulai`, `waktu_selesai`, `durasi_detik`, `submitted_at`) VALUES
(13, 14, 463, 11, 39, 40, 12, 28, 0, 30.00, 0, 0, NULL, '2026-05-28 08:01:17', '2026-05-28 08:02:51', 94, '2026-05-28 08:02:51'),
(14, 15, 483, 11, 39, 40, 9, 31, 0, 22.50, 0, 0, NULL, '2026-05-28 08:15:28', '2026-05-28 08:16:50', 82, '2026-05-28 08:16:50'),
(15, 16, 484, 11, 39, 40, 1, 8, 31, 2.50, 0, 0, NULL, '2026-05-28 09:09:05', '2026-05-28 09:09:31', 26, '2026-05-28 09:09:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_ujian`
--

CREATE TABLE `jadwal_ujian` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `durasi_menit` int(11) NOT NULL DEFAULT 60,
  `kategori_id` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `tampil_pembahasan` tinyint(1) DEFAULT 0 COMMENT '0=global, 1=tampilkan, 2=sembunyikan',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `jumlah_soal` int(11) DEFAULT NULL COMMENT 'Override jumlah soal global; NULL = pakai pengaturan global',
  `kelas_diizinkan` varchar(100) DEFAULT NULL COMMENT 'Kosong = semua kelas; isi cth: 5,6 untuk kelas tertentu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_ujian`
--

INSERT INTO `jadwal_ujian` (`id`, `tanggal`, `jam_mulai`, `jam_selesai`, `durasi_menit`, `kategori_id`, `keterangan`, `status`, `tampil_pembahasan`, `created_at`, `jumlah_soal`, `kelas_diizinkan`) VALUES
(11, '2026-05-28', '01:00:00', '23:57:00', 75, 39, '', 'aktif', 0, '2026-05-24 12:21:23', 40, 'VI'),
(12, '2026-05-28', '01:00:00', '23:15:00', 75, 44, '', 'aktif', 0, '2026-05-24 12:22:17', 30, 'VI'),
(13, '2026-05-28', '01:00:00', '23:15:00', 60, 40, '', 'aktif', 0, '2026-05-24 12:23:03', 60, 'VI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `peserta_id` int(11) NOT NULL,
  `soal_id` int(11) NOT NULL,
  `jawaban` varchar(20) DEFAULT NULL,
  `teks_jawaban` text DEFAULT NULL,
  `skor_essay` decimal(5,2) DEFAULT NULL,
  `dinilai_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id`, `ujian_id`, `peserta_id`, `soal_id`, `jawaban`, `teks_jawaban`, `skor_essay`, `dinilai_at`) VALUES
(188, 14, 463, 938, 'b', NULL, NULL, NULL),
(189, 14, 463, 994, 'b', NULL, NULL, NULL),
(190, 14, 463, 953, 'c', NULL, NULL, NULL),
(191, 14, 463, 935, 'a', NULL, NULL, NULL),
(192, 14, 463, 973, 'c', NULL, NULL, NULL),
(194, 14, 463, 942, 'd', NULL, NULL, NULL),
(195, 14, 463, 959, 'd', NULL, NULL, NULL),
(196, 14, 463, 982, 'a', NULL, NULL, NULL),
(197, 14, 463, 986, 'b', NULL, NULL, NULL),
(198, 14, 463, 951, 'c', NULL, NULL, NULL),
(199, 14, 463, 954, 'd', NULL, NULL, NULL),
(200, 14, 463, 978, 'b', NULL, NULL, NULL),
(201, 14, 463, 964, 'a', NULL, NULL, NULL),
(202, 14, 463, 960, 'b', NULL, NULL, NULL),
(203, 14, 463, 977, 'b', NULL, NULL, NULL),
(204, 14, 463, 972, 'b', NULL, NULL, NULL),
(205, 14, 463, 987, 'b', NULL, NULL, NULL),
(206, 14, 463, 966, 'b', NULL, NULL, NULL),
(207, 14, 463, 950, 'b', NULL, NULL, NULL),
(208, 14, 463, 946, 'c', NULL, NULL, NULL),
(209, 14, 463, 931, 'd', NULL, NULL, NULL),
(210, 14, 463, 974, 'b', NULL, NULL, NULL),
(211, 14, 463, 940, 'd', NULL, NULL, NULL),
(212, 14, 463, 979, 'c', NULL, NULL, NULL),
(213, 14, 463, 971, 'a', NULL, NULL, NULL),
(214, 14, 463, 934, 'a', NULL, NULL, NULL),
(215, 14, 463, 993, 'd', NULL, NULL, NULL),
(216, 14, 463, 932, 'a', NULL, NULL, NULL),
(217, 14, 463, 936, 'a', NULL, NULL, NULL),
(218, 14, 463, 992, 'b', NULL, NULL, NULL),
(219, 14, 463, 984, 'a', NULL, NULL, NULL),
(220, 14, 463, 991, 'b', NULL, NULL, NULL),
(221, 14, 463, 944, 'c', NULL, NULL, NULL),
(222, 14, 463, 995, 'd', NULL, NULL, NULL),
(223, 14, 463, 955, 'c', NULL, NULL, NULL),
(224, 14, 463, 937, 'c', NULL, NULL, NULL),
(226, 14, 463, 948, 'c', NULL, NULL, NULL),
(227, 14, 463, 933, 'b', NULL, NULL, NULL),
(228, 14, 463, 939, 'b', NULL, NULL, NULL),
(229, 14, 463, 957, 'b', NULL, NULL, NULL),
(230, 15, 483, 987, 'a', NULL, NULL, NULL),
(231, 15, 483, 957, 'a', NULL, NULL, NULL),
(232, 15, 483, 951, 'd', NULL, NULL, NULL),
(233, 15, 483, 955, 'a', NULL, NULL, NULL),
(234, 15, 483, 931, 'a', NULL, NULL, NULL),
(235, 15, 483, 993, 'b', NULL, NULL, NULL),
(236, 15, 483, 982, 'd', NULL, NULL, NULL),
(237, 15, 483, 984, 'b', NULL, NULL, NULL),
(238, 15, 483, 959, 'a', NULL, NULL, NULL),
(239, 15, 483, 994, 'b', NULL, NULL, NULL),
(240, 15, 483, 932, 'a', NULL, NULL, NULL),
(241, 15, 483, 950, 'd', NULL, NULL, NULL),
(242, 15, 483, 964, 'a', NULL, NULL, NULL),
(243, 15, 483, 938, 'd', NULL, NULL, NULL),
(244, 15, 483, 995, 'd', NULL, NULL, NULL),
(245, 15, 483, 986, 'b', NULL, NULL, NULL),
(246, 15, 483, 935, 'c', NULL, NULL, NULL),
(248, 15, 483, 948, 'c', NULL, NULL, NULL),
(249, 15, 483, 937, 'b', NULL, NULL, NULL),
(250, 15, 483, 934, 'c', NULL, NULL, NULL),
(251, 15, 483, 966, 'a', NULL, NULL, NULL),
(252, 15, 483, 972, 'c', NULL, NULL, NULL),
(253, 15, 483, 979, 'c', NULL, NULL, NULL),
(254, 15, 483, 953, 'c', NULL, NULL, NULL),
(255, 15, 483, 991, 'a', NULL, NULL, NULL),
(256, 15, 483, 973, 'b', NULL, NULL, NULL),
(257, 15, 483, 992, 'a', NULL, NULL, NULL),
(258, 15, 483, 974, 'c', NULL, NULL, NULL),
(259, 15, 483, 977, 'b', NULL, NULL, NULL),
(260, 15, 483, 942, 'b', NULL, NULL, NULL),
(261, 15, 483, 944, 'a', NULL, NULL, NULL),
(262, 15, 483, 940, 'c', NULL, NULL, NULL),
(263, 15, 483, 933, 'c', NULL, NULL, NULL),
(264, 15, 483, 936, 'd', NULL, NULL, NULL),
(265, 15, 483, 939, 'b', NULL, NULL, NULL),
(266, 15, 483, 960, 'c', NULL, NULL, NULL),
(267, 15, 483, 954, 'a', NULL, NULL, NULL),
(268, 15, 483, 946, 'b', NULL, NULL, NULL),
(269, 15, 483, 978, 'd', NULL, NULL, NULL),
(270, 15, 483, 971, 'c', NULL, NULL, NULL),
(271, 16, 484, 977, 'a', NULL, NULL, NULL),
(272, 16, 484, 942, 'c', NULL, NULL, NULL),
(273, 16, 484, 957, 'b', NULL, NULL, NULL),
(274, 16, 484, 955, 'c', NULL, NULL, NULL),
(275, 16, 484, 995, 'a', NULL, NULL, NULL),
(276, 16, 484, 982, 'b', NULL, NULL, NULL),
(277, 16, 484, 946, 'a', NULL, NULL, NULL),
(278, 16, 484, 950, 'c', NULL, NULL, NULL),
(279, 16, 484, 978, 'b', NULL, NULL, NULL),
(280, 17, 485, 984, 'b', NULL, NULL, NULL),
(281, 17, 485, 954, 'b', NULL, NULL, NULL),
(282, 17, 485, 955, 'a', NULL, NULL, NULL),
(283, 17, 485, 959, 'a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_soal`
--

CREATE TABLE `kategori_soal` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_soal`
--

INSERT INTO `kategori_soal` (`id`, `nama_kategori`) VALUES
(36, 'MTK-SIMULASI'),
(37, 'IPA-SIMULASI'),
(38, 'IPS-SIMULASI'),
(39, 'OSN-IPA'),
(40, 'OSN-IPS'),
(44, 'OSN-MATEMATIKA'),
(45, 'IPAS'),
(46, 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `aktivitas` varchar(255) NOT NULL,
  `detail` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `waktu` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `user_id`, `username`, `aktivitas`, `detail`, `ip_address`, `waktu`) VALUES
(1315, 1, 'admin', 'Reset Ujian', 'Semua data ujian dihapus oleh admin', '125.164.123.77', '2026-05-24 19:24:53'),
(1316, NULL, 'guest', 'Login Peserta', 'Peserta ALICE CLEMIRA TANISHA (TKA92BE58) login ujian', '101.255.168.6', '2026-05-24 19:26:12'),
(1317, NULL, 'guest', 'Login Peserta', 'Peserta KANAYA ARDANI (TKA3B00FD) login ujian', '182.2.180.33', '2026-05-24 19:27:24'),
(1318, NULL, 'guest', 'Submit Ujian', 'Peserta ID 383, benar: 12/40, nilai: 30', '182.2.180.33', '2026-05-24 19:30:22'),
(1319, NULL, 'guest', 'Submit Ujian', 'Peserta ID 404, benar: 5/30, nilai: 16.67', '101.255.168.6', '2026-05-24 19:33:29'),
(1320, 1, 'admin', 'Reset Ujian', 'Semua data ujian dihapus oleh admin', '101.255.168.6', '2026-05-24 19:34:21'),
(1321, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '103.171.31.202', '2026-05-24 20:47:23'),
(1322, 1, 'admin', 'Edit Soal', 'ID 997 | Kategori ID 44 | Tipe pg', '103.171.31.202', '2026-05-24 20:49:45'),
(1323, 1, 'admin', 'Edit Soal', 'ID 999 | Kategori ID 44 | Tipe pg', '103.171.31.202', '2026-05-24 20:50:16'),
(1324, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '125.164.123.77', '2026-05-24 20:52:47'),
(1325, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-25 21:08:30'),
(1326, 1, 'admin', 'Backup Otomatis', 'Backup harian: autobackup_20260525.sql', '::1', '2026-05-25 21:08:30'),
(1327, 1, 'admin', 'Auto Nonaktif Token', '1 token dinonaktifkan otomatis (jam selesai terlewat)', '::1', '2026-05-25 21:11:18'),
(1328, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=TKA CIPAYUNG, kkm=0, jumlah_soal=10, ujian_ulang=0', '::1', '2026-05-25 21:12:57'),
(1329, 1, 'admin', 'Backup database manual', 'backup_tka2027_20260525_211707.sql', '::1', '2026-05-25 21:17:07'),
(1330, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:24:00'),
(1331, 21, 'korektor', 'Login', 'Berhasil login sebagai korektor', '::1', '2026-05-25 21:27:31'),
(1332, 21, 'korektor', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:27:41'),
(1333, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-25 21:27:46'),
(1334, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:30:48'),
(1335, 21, 'korektor', 'Login', 'Berhasil login sebagai korektor', '::1', '2026-05-25 21:31:33'),
(1336, 21, 'korektor', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:31:40'),
(1337, 21, 'korektor', 'Login', 'Berhasil login sebagai korektor', '::1', '2026-05-25 21:35:43'),
(1338, 21, 'korektor', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:37:11'),
(1339, 21, 'korektor', 'Login', 'Berhasil login sebagai korektor', '::1', '2026-05-25 21:38:39'),
(1340, 21, 'korektor', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:38:42'),
(1341, 21, 'korektor', 'Login', 'Berhasil login sebagai korektor', '::1', '2026-05-25 21:39:46'),
(1342, 21, 'korektor', 'Logout', 'Keluar dari sistem', '::1', '2026-05-25 21:40:49'),
(1343, 21, 'korektor', 'Login', 'Korektor masuk: korektor', '::1', '2026-05-25 21:42:56'),
(1344, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-25 21:52:13'),
(1345, 1, 'admin', 'Tambah Soal', 'ID 1026 | Kategori ID 36 | Tipe pg', '::1', '2026-05-25 22:05:25'),
(1346, 1, 'admin', 'Edit Soal', 'ID 1026 | Kategori ID 36 | Tipe pg', '::1', '2026-05-25 22:06:06'),
(1347, 21, 'korektor', 'Login', 'Berhasil login sebagai korektor', '::1', '2026-05-25 22:10:51'),
(1348, NULL, 'guest', 'Login Peserta', 'Peserta ADHYASTHA PRASRAYA WINATA (TKA0731CC) login ujian', '::1', '2026-05-25 22:14:49'),
(1349, 1, 'admin', 'Import soal', '12 soal berhasil diimport', '::1', '2026-05-25 22:42:31'),
(1350, NULL, 'guest', 'Submit Ujian', 'Peserta ID 441, benar: 0/40, nilai: 0', '::1', '2026-05-25 22:48:04'),
(1351, 1, 'admin', 'Reset Ujian', 'Reset ujian peserta: ADHYASTHA PRASRAYA WINATA (ID: 441)', '::1', '2026-05-25 22:51:42'),
(1352, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 07:45:28'),
(1353, 1, 'admin', 'Backup Otomatis', 'Backup harian: autobackup_20260526.sql', '::1', '2026-05-26 07:45:28'),
(1354, 1, 'admin', 'Tambah Soal', 'ID 1039 | Kategori ID 46 | Tipe pg', '::1', '2026-05-26 07:46:49'),
(1355, 1, 'admin', 'Edit Soal', 'ID 1039 | Kategori ID 46 | Tipe pg', '::1', '2026-05-26 07:47:07'),
(1356, 1, 'admin', 'Tambah Soal', 'ID 1040 | Kategori ID 46 | Tipe pg', '::1', '2026-05-26 07:51:59'),
(1357, 1, 'admin', 'Tambah Soal', 'ID 1041 | Kategori ID 46 | Tipe pg', '::1', '2026-05-26 08:00:26'),
(1358, 1, 'admin', 'Edit Soal', 'ID 1041 | Kategori ID 46 | Tipe pg', '::1', '2026-05-26 08:00:52'),
(1359, 29, 'ips', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-26 08:40:48'),
(1360, 1, 'admin', 'Tambah Peserta', 'Nama: Anggi | NISN: 1234 | Kelas: I | Sekolah ID: 22 | Kode: TKA67D241', '::1', '2026-05-26 08:59:46'),
(1361, 29, 'ips', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-26 10:30:53'),
(1362, NULL, 'guest', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 11:33:38'),
(1363, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 12:20:44'),
(1364, NULL, 'guest', 'Login Peserta', 'Peserta ADHYASTHA PRASRAYA WINATA (TKA0731CC) login ujian', '::1', '2026-05-26 12:49:04'),
(1365, NULL, 'guest', 'Submit Ujian', 'Peserta ID 441, benar: 0/40, nilai: 0', '::1', '2026-05-26 12:49:25'),
(1366, NULL, 'guest', 'Login Peserta', 'Peserta AFIKA FATHUL FAUZIYYAH (TKA142C38) login ujian', '::1', '2026-05-26 14:06:34'),
(1367, NULL, 'guest', 'Submit Ujian', 'Peserta ID 368, benar: 0/40, nilai: 0', '::1', '2026-05-26 14:06:41'),
(1368, NULL, 'guest', 'Login Peserta', 'Peserta ANDARA TANISYA ALVIENA (TKAA1BDC3) login ujian', '::1', '2026-05-26 14:36:16'),
(1369, NULL, 'guest', 'Submit Ujian', 'Peserta ID 379, benar: 0/40, nilai: 0', '::1', '2026-05-26 14:47:17'),
(1370, NULL, 'guest', 'Login Peserta', 'Peserta Anggi (TKA67D241) login ujian', '::1', '2026-05-26 16:23:11'),
(1371, NULL, 'guest', 'Submit Ujian', 'Peserta ID 453, benar: 7/40, nilai: 17.5', '::1', '2026-05-26 16:30:17'),
(1372, NULL, 'guest', 'Login Peserta', 'Peserta Andi Pratama (TKAC6EAE3) login ujian', '::1', '2026-05-26 16:32:33'),
(1373, NULL, 'guest', 'Submit Ujian', 'Peserta ID 449, benar: 0/40, nilai: 0', '::1', '2026-05-26 16:32:47'),
(1374, NULL, 'guest', 'Login Peserta', 'Peserta Budi Santoso (TKA03E281) login ujian', '::1', '2026-05-26 16:36:47'),
(1375, NULL, 'guest', 'Login Peserta', 'Peserta Citra Dewi (TKA69889D) login ujian', '::1', '2026-05-26 16:46:07'),
(1376, NULL, 'guest', 'Submit Ujian', 'Peserta ID 451, benar: 4/40, nilai: 10', '::1', '2026-05-26 16:47:13'),
(1377, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 17:06:27'),
(1378, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 17:06:37'),
(1379, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 18:33:54'),
(1380, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 18:34:00'),
(1381, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 18:44:07'),
(1382, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 18:44:12'),
(1383, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 18:48:50'),
(1384, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 18:49:11'),
(1385, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 18:57:25'),
(1386, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 18:58:07'),
(1387, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-26 20:38:39'),
(1388, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=0, jumlah_soal=10, ujian_ulang=0', '::1', '2026-05-26 20:39:02'),
(1389, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=0, jumlah_soal=10, ujian_ulang=0', '::1', '2026-05-26 20:39:42'),
(1390, 31, 'mtk', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-26 20:40:45'),
(1391, 31, 'mtk', 'Logout', 'Keluar dari sistem', '::1', '2026-05-26 20:43:54'),
(1392, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 13:10:15'),
(1393, 1, 'admin', 'Backup Otomatis', 'Backup harian: autobackup_20260527.sql', '::1', '2026-05-27 13:10:15'),
(1394, 1, 'admin', 'Reset Ujian', 'Reset ujian peserta: Peserta (ID: 9)', '::1', '2026-05-27 13:11:54'),
(1395, 1, 'admin', 'Reset Ujian', 'Reset ujian peserta: Peserta (ID: 9)', '::1', '2026-05-27 13:12:00'),
(1396, 1, 'admin', 'Reset Ujian', 'Semua data ujian dihapus oleh admin', '::1', '2026-05-27 13:12:16'),
(1397, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 13:18:57'),
(1398, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 13:20:18'),
(1399, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 13:20:47'),
(1400, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 13:22:11'),
(1401, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=0, jumlah_soal=10, ujian_ulang=0', '::1', '2026-05-27 13:25:43'),
(1402, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=0, jumlah_soal=10, ujian_ulang=0', '::1', '2026-05-27 13:29:47'),
(1403, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=10, ujian_ulang=0', '::1', '2026-05-27 13:32:29'),
(1404, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=10, mode_maintenance=1, ujian_ulang=0', '::1', '2026-05-27 13:33:47'),
(1405, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=10, mode_maintenance=1, ujian_ulang=0', '::1', '2026-05-27 13:34:31'),
(1406, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=, mode_maintenance=1, ujian_ulang=0', '::1', '2026-05-27 13:35:39'),
(1407, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=, mode_maintenance=1, ujian_ulang=0', '::1', '2026-05-27 13:36:10'),
(1408, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 13:37:13'),
(1409, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 13:45:47'),
(1410, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 13:47:58'),
(1411, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 14:15:56'),
(1412, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 14:18:12'),
(1413, 31, 'mtk', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-27 14:18:33'),
(1414, 31, 'mtk', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 14:27:13'),
(1415, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 14:33:05'),
(1416, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=, mode_maintenance=1, ujian_ulang=0', '::1', '2026-05-27 14:33:26'),
(1417, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-27 15:09:36'),
(1418, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 15:52:40'),
(1419, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-27 21:33:16'),
(1420, 1, 'admin', 'Update Pengaturan', 'nama_aplikasi=CBT TKA KOTA BEKASI, kkm=50, jumlah_soal=, ujian_ulang=0', '::1', '2026-05-27 21:39:43'),
(1421, NULL, 'guest', 'Login Peserta', 'Peserta ADHYASTHA PRASRAYA WINATA login ujian', '::1', '2026-05-27 23:12:50'),
(1422, NULL, 'guest', 'Submit Ujian', 'Peserta ID 441, benar: 0/40, nilai: 0', '::1', '2026-05-27 23:13:37'),
(1423, NULL, 'guest', 'Login Peserta', 'Peserta AFIKA FATHUL FAUZIYYAH login ujian', '::1', '2026-05-27 23:28:16'),
(1424, NULL, 'guest', 'Login Peserta', 'Peserta AFIKA FATHUL FAUZIYYAH login ujian', '::1', '2026-05-27 23:29:13'),
(1425, NULL, 'guest', 'Submit Ujian', 'Peserta ID 368, benar: 0/40, nilai: 0', '::1', '2026-05-27 23:44:30'),
(1426, 31, 'mtk', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-27 23:45:50'),
(1427, 1, 'admin', 'Backup Otomatis', 'Backup harian: autobackup_20260528.sql', '::1', '2026-05-28 00:16:35'),
(1428, 31, 'mtk', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-28 01:06:12'),
(1429, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 01:06:55'),
(1430, 1, 'admin', 'Hapus Peserta', 'Nama: Anggi', '::1', '2026-05-28 01:50:10'),
(1431, 36, 'bambu3', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-28 02:03:58'),
(1432, NULL, 'guest', 'Login Peserta', 'Peserta Andi Pratgcama login ujian', '::1', '2026-05-28 02:12:48'),
(1433, NULL, 'guest', 'Submit Ujian', 'Peserta ID 460, benar: 3/40, nilai: 7.5', '::1', '2026-05-28 02:14:21'),
(1434, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 06:45:14'),
(1435, 37, '20254469', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-28 07:03:43'),
(1436, 63, '20253942', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-28 07:19:50'),
(1437, NULL, 'guest', 'Login Peserta', 'Peserta AAN FIRMANSYAH login ujian', '::1', '2026-05-28 08:01:17'),
(1438, NULL, 'guest', 'Submit Ujian', 'Peserta ID 463, benar: 12/40, nilai: 30', '::1', '2026-05-28 08:02:51'),
(1439, NULL, 'guest', 'Login Peserta', 'Peserta ADHITAMA DELVIN login ujian', '::1', '2026-05-28 08:15:28'),
(1440, NULL, 'guest', 'Submit Ujian', 'Peserta ID 483, benar: 9/40, nilai: 22.5', '::1', '2026-05-28 08:16:50'),
(1441, 1, 'admin', 'Logout', 'Keluar dari sistem', '::1', '2026-05-28 08:26:44'),
(1442, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 08:30:19'),
(1443, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 09:08:17'),
(1444, NULL, 'guest', 'Login Peserta', 'Peserta ADIBA DWI RAFANDA login ujian', '::1', '2026-05-28 09:09:05'),
(1445, NULL, 'guest', 'Submit Ujian', 'Peserta ID 484, benar: 1/40, nilai: 2.5', '::1', '2026-05-28 09:09:31'),
(1446, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 09:42:01'),
(1447, 1, 'admin', 'Export Soal', 'Export 173 soal ke XLSX', '::1', '2026-05-28 10:56:42'),
(1448, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 16:14:52'),
(1449, NULL, 'guest', 'Login Peserta', 'Peserta ADITYA DWI DZAKY login ujian', '::1', '2026-05-28 16:22:51'),
(1450, 63, '20253942', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-28 16:24:57'),
(1451, 1, 'admin', 'Login', 'Berhasil login sebagai admin_kecamatan', '::1', '2026-05-28 18:58:35'),
(1452, 1, 'admin', 'Export Excel Admin', '2 data (XLSX)', '::1', '2026-05-28 19:05:09'),
(1453, 1, 'admin', 'Export Excel Admin', '2 data (XLSX)', '::1', '2026-05-28 19:05:18'),
(1454, 1, 'admin', 'Export Excel Admin', '1 data (XLSX)', '::1', '2026-05-28 19:11:33'),
(1455, 1, 'admin', 'Export Excel Admin', '3 data (XLSX)', '::1', '2026-05-28 19:18:29'),
(1456, 1, 'admin', 'Export Excel Admin', '3 data (XLSX)', '::1', '2026-05-28 19:41:24'),
(1457, 63, '20253942', 'Login', 'Berhasil login sebagai sekolah', '::1', '2026-05-28 19:48:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_val` text DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `setting_key`, `setting_val`, `keterangan`) VALUES
(1, 'nama_aplikasi', 'CBT TKA KOTA BEKASI', 'Nama aplikasi yang tampil di header'),
(2, 'nama_kecamatan', 'Bantargebang', 'Nama kecamatan penyelenggara'),
(3, 'durasi_ujian', '075', 'Durasi ujian default (menit)'),
(4, 'jumlah_soal', '', 'Jumlah soal per sesi ujian'),
(5, 'maks_pelanggaran', '3', 'Maks pindah tab sebelum ujian diakhiri'),
(6, 'display_info', 'Selamat datang di lomba Olimpiade Sains Nasional  (OSN) 2026 tingkat Kecamatan Bantargebang', 'Teks info di layar tunggu'),
(7, 'display_video_url', 'https://www.youtube.com/embed/Lcul-C1a7ss?autoplay=1&loop=1&mute=1', 'URL video untuk layar tunggu (YouTube embed)'),
(8, 'nama_penyelenggara', 'Kelompok Kerja Kepala Sekoah Kec. Bantargebang', NULL),
(9, 'mata_pelajaran', 'CBT TKA KOTA EKASI', NULL),
(10, 'tampil_pembahasan', '0', NULL),
(20, 'logo_url', '', NULL),
(71, 'kkm', '50', 'Nilai KKM minimum lulus'),
(72, 'ujian_ulang', '0', 'Izinkan peserta ujian ulang (0=tidak, 1=ya'),
(86, 'logo_file_path', 'assets/uploads/logo/logo_1779863143.png', NULL),
(187, 'tahun_pelajaran', '2026/2027', 'Tahun pelajaran aktif'),
(202, 'tahun_ajaran', '2025/2026', 'Tahun ajaran aktif'),
(386, 'pembahasan_mode', 'langsung', 'Kapan pembahasan ditampilkan: langsung / setelah_semua_selesai'),
(388, 'jenjang_default', 'SD', 'Jenjang default saat tambah sekolah baru'),
(448, 'wa_api_key', '', NULL),
(449, 'wa_sender', '081291858580', NULL),
(450, 'wa_auto_send', '0', NULL),
(451, 'pesan_maintenance', 'Sistem sedang dalam pemeliharaan Silakan tunggu.', NULL),
(452, 'wa_share_hasil', '0', NULL),
(453, 'mode_maintenance', '0', NULL),
(454, 'acak_pilihan', '1', NULL),
(476, 'dev_nama', 'Cahyana Wijaya', 'Nama pengembang'),
(477, 'dev_role', 'Fullstack Developer', 'Role pengembang'),
(478, 'dev_bio', 'Berfokus pada pengembangan sistem informasi yang efisien dan solusi digital berbasis web untuk mendukung kemajuan teknologi di sektor pendidikan.', 'Bio pengembang'),
(479, 'dev_email', 'mrkuncen89@gmail.com', 'Email pengembang'),
(480, 'dev_wa', '6287781743048', 'WhatsApp pengembang'),
(481, 'dev_tiktok', '@mrkuncen', 'TikTok pengembang'),
(482, 'dev_foto', '', 'Foto pengembang'),
(483, 'dev_skills', 'PHP 8,MySQL,Bootstrap,CBT System,Data Export', 'Skills pengembang'),
(631, 'update_check_cache', '{\"ts\":1779959692,\"data\":{\"version\":\"1.0.9\",\"release_date\":\"2026-05-16\",\"download_url\":\"https:\\/\\/github.com\\/mrkuncen89-ui\\/CBT-TKA-Kecamatan\\/releases\\/latest\\/download\\/TKAKecamatan_Setup.exe\",\"changelog\":\"Rilis pertama CBT TKA Kecamatan\",\"min_version\":\"1.0.0\"}}', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `sekolah_id` int(11) NOT NULL,
  `kode_sekolah` varchar(100) DEFAULT NULL,
  `kode_peserta` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peserta`
--

INSERT INTO `peserta` (`id`, `nama`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `kelas`, `sekolah_id`, `kode_sekolah`, `kode_peserta`, `password`) VALUES
(463, 'AAN FIRMANSYAH', '3144580795', 'CILACAP', '2015-03-19', 'VI', 31, NULL, '0203111001', 'NY7H7*'),
(464, 'ABBAD NAILUN NABHAN', '3169502257', 'JAKARTA', '2016-03-20', 'VI', 31, NULL, '0203111002', 'YRN9H*'),
(465, 'ABDAN AL KAHFI', '3176115024', 'JAKARTA', '2017-09-10', 'VI', 31, NULL, '0203111003', 'AZ4RG*'),
(466, 'ABDULLAH ZULFIKAR RAIHAN', '3178342641', 'Jakarta', '2017-07-06', 'VI', 31, NULL, '0203111004', 'BQLPB*'),
(467, 'ABHIZAR ALGHIFARI', '3166501898', 'Pekanbaru', '2016-01-15', 'VI', 31, NULL, '0203111005', 'PXD28*'),
(468, 'ABIDZAR RASYA PRANAJA', '3157088424', 'JAKARTA', '2015-07-10', 'VI', 31, NULL, '0203111006', '44VMM*'),
(469, 'ABIE MARUP', '0144699600', 'JAKARTA', '2014-12-23', 'VI', 31, NULL, '0203111007', '7DWLZ*'),
(470, 'ABIWARA RADHIKA CESAR KITNASTO', '3176918638', 'JAKARTA', '2017-03-26', 'VI', 31, NULL, '0203111008', 'NV5ED*'),
(471, 'ABIZAR AL MUTAQIN', '3155800764', 'JAKARTA', '2014-05-17', 'VI', 31, NULL, '0203111009', 'PSBGQ*'),
(472, 'ABIZAR GHIFARI', '3144082525', 'JAKARTA', '2014-09-05', 'VI', 31, NULL, '0203111010', '5YMBD*'),
(473, 'Abraham Shidiq', '3175369341', 'Bekasi', '2017-12-21', 'VI', 31, NULL, '0203111011', 'C26VV*'),
(474, 'ACHMAD ADHYASTHA KALAFI', '3182287155', 'JAKARTA', '2018-04-08', 'VI', 31, NULL, '0203111012', 'EQF52*'),
(475, 'ACHMAD KHAIRUN NISZAM', '3128227113', 'JAKARTA', '2012-12-21', 'VI', 31, NULL, '0203111013', '37X3G*'),
(476, 'ADAM ADINATA FALAH', '3145551341', 'JAKARTA', '2014-10-19', 'VI', 31, NULL, '0203111014', 'A5CRD*'),
(477, 'ADDLINA AIKO FIDELYA', '3154114555', 'JAKARTA', '2015-02-02', 'VI', 31, NULL, '0203111015', '4U8ZQ*'),
(478, 'ADEEVA GENDIS PRIANI', '3187708111', 'JAKARTA', '2018-04-29', 'VI', 31, NULL, '0203111016', 'L5D8W*'),
(479, 'Adelio Azka Yuliansyah', '3153476249', 'Jakarta', '2015-12-08', 'VI', 31, NULL, '0203111017', 'TZSDL*'),
(480, 'ADEVA HASNA KAMILA', '3155385516', 'JAKARTA', '2015-05-28', 'VI', 31, NULL, '0203111018', 'SXJNU*'),
(481, 'ADHEENA AFSHEEN MYESHA', '3174755917', 'PEKALONGAN', '2017-08-06', 'VI', 31, NULL, '0203111019', 'UL3GR*'),
(482, 'Adhisakha Prabaswara', '3197480368', 'Jakarta', '2019-01-15', 'VI', 31, NULL, '0203111020', 'XXP8N*'),
(483, 'ADHITAMA DELVIN', '3187618933', 'JAKARTA', '2018-03-20', 'VI', 57, NULL, '0203445001', 'BJFF7*'),
(484, 'ADIBA DWI RAFANDA', '3174547401', 'Jakarta', '2017-04-04', 'VI', 57, NULL, '0203445002', 'AAC3V*'),
(485, 'ADITYA DWI DZAKY', '3168350861', 'JAKARTA', '2016-01-25', 'VI', 57, NULL, '0203445003', '8W83N*'),
(486, 'ADITYA DYKHA PURNOMO', '3166864804', 'JAKARTA', '2016-06-23', 'VI', 57, NULL, '0203445004', 'AHPR9*'),
(487, 'ADITYA RAMADHAN', '3137850712', 'JAKARTA', '2013-07-21', 'VI', 57, NULL, '0203445005', 'S3KBS*'),
(488, 'ADITYA RIZKY PRATAMA', '3151809865', 'JAKARTA', '2015-05-22', 'VI', 57, NULL, '0203445006', 'LSZ2B*'),
(489, 'ADITYA SYAHPUTRA', '0137945275', 'JAKARTA', '2013-10-28', 'VI', 57, NULL, '0203445007', 'W5UJS*'),
(490, 'ADLI AMZAR ALFARIZY', '3142043354', 'JAKARTA', '2014-04-22', 'VI', 57, NULL, '0203445008', 'QP7C7*'),
(491, 'ADNAN ALFAREZI', '3176033558', 'Depok', '2017-02-27', 'VI', 57, NULL, '0203445009', 'KTTQY*'),
(492, 'Adnan Fikri Maulana', '3166401263', 'Jakarta', '2016-08-12', 'VI', 57, NULL, '0203445010', 'BRW4X*'),
(493, 'ADYASTHA ARSYAUQI RIYANTO', '3189762989', 'JAKARTA', '2018-04-29', 'VI', 57, NULL, '0203445011', 'KM8Y6*'),
(494, 'ADZKIA FARHANA ALZIDNI', '3159822353', 'JAKARTA', '2015-10-07', 'VI', 57, NULL, '0203445012', '66J4T*'),
(495, 'ADZKIYA AZZAHRA RAHMANIA', '', 'JAKARTA', '2017-12-07', 'VI', 57, NULL, '0203445013', 'J8EYP*'),
(496, 'ADZRA ZAITUNISA', '3186826405', 'Jakarta', '2018-04-11', 'VI', 57, NULL, '0203445014', 'KHCPY*'),
(497, 'AFIFAH ADAWIYAH', '3170912919', 'Jakarta', '2017-04-12', 'VI', 57, NULL, '0203445015', 'VAFE8*'),
(498, 'AFIFAH NAHDA RAFANDA', '3187567672', 'JAKARTA', '2018-04-15', 'VI', 57, NULL, '0203445016', 'NFLJ9*'),
(499, 'AFIQAH QUEENSHA AZZAHRA', '3156067599', 'JAKARTA', '2015-06-01', 'VI', 57, NULL, '0203445017', 'SD3RX*'),
(500, 'AFIZAH RAMADANI', '3151026449', 'JAKARTA', '2014-08-10', 'VI', 57, NULL, '0203445018', '68XJX*'),
(501, 'AFLAH GRANDIS PUTRA YANTO', '3141644707', 'JAKARTA', '2014-08-10', 'VI', 57, NULL, '0203445019', '5NN2C*'),
(502, 'AGHNAA KENNA PRAGYA', '3174474684', 'Bogor', '2017-12-17', 'VI', 57, NULL, '0203445020', 'D3CVF*');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate_limit`
--

CREATE TABLE `rate_limit` (
  `rl_key` varchar(200) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `first_attempt` int(11) NOT NULL DEFAULT 0,
  `locked_until` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rate_limit`
--

INSERT INTO `rate_limit` (`rl_key`, `attempts`, `first_attempt`, `locked_until`) VALUES
('login_110.137.59.107', 1, 1779420567, 0),
('login_114.10.64.98', 2, 1779416504, 0),
('login_114.8.199.26', 2, 1779323213, 0),
('login_125.160.236.180', 1, 1779432364, 0),
('login_125.164.120.106', 1, 1779419047, 0),
('login_14.137.225.168', 4, 1779413167, 0),
('login_140.213.35.1', 4, 1779247361, 0),
('login_140.213.9.94', 1, 1779248735, 0),
('login_182.2.185.120', 3, 1779247323, 0),
('login_182.6.43.44', 2, 1779247450, 0),
('login_182.6.47.44', 1, 1779419805, 0),
('login_182.6.7.5', 3, 1779247332, 0),
('login_218.33.120.79', 4, 1779415173, 0),
('login_38.210.85.95', 3, 1779414228, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(150) NOT NULL,
  `jenjang` varchar(10) DEFAULT 'SD' COMMENT 'SD / MI / SMP / MTS / SMA / MA / SMK',
  `kecamatan` varchar(100) DEFAULT NULL,
  `npsn` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kepala_sekolah` varchar(100) DEFAULT NULL COMMENT 'Nama kepala sekolah',
  `telepon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id`, `nama_sekolah`, `jenjang`, `kecamatan`, `npsn`, `alamat`, `kepala_sekolah`, `telepon`, `email`, `status`) VALUES
(31, 'SD DINAMIKA INDONESIA', 'SD', 'Bantargebang', '20254469', '', NULL, '', '', 'aktif'),
(32, 'SD INSAN KAMIL', 'SD', 'Bantargebang', '20254017', '', NULL, '', '', 'aktif'),
(33, 'SD ISLAM CIKIWUL', 'SD', 'Bantargebang', '20231581', '', NULL, '', '', 'aktif'),
(34, 'SD ISLAM EL-GOZALI', 'SD', 'Bantargebang', '20254576', '', NULL, '', '', 'aktif'),
(35, 'SD ISLAM IBNU HAJAR', 'SD', 'Bantargebang', '20231577', '', NULL, '', '', 'aktif'),
(36, 'SD IT YAA BUNAYYA', 'SD', 'Bantargebang', '69864695', '', NULL, '', '', 'aktif'),
(37, 'SD NEGERI BANTARGEBANG 1', 'SD', 'Bantargebang', '20223719', '', NULL, '', '', 'aktif'),
(38, 'SD NEGERI BANTARGEBANG 5', 'SD', 'Bantargebang', '20223700', '', NULL, '', '', 'aktif'),
(39, 'SD NEGERI BANTARGEBANG II', 'SD', 'Bantargebang', '20223718', '', NULL, '', '', 'aktif'),
(40, 'SD NEGERI BANTARGEBANG III', 'SD', 'Bantargebang', '20223702', '', NULL, '', '', 'aktif'),
(41, 'SD NEGERI BANTARGEBANG IV', 'SD', 'Bantargebang', '20223701', '', NULL, '', '', 'aktif'),
(42, 'SD NEGERI BANTARGEBANG VI', 'SD', 'Bantargebang', '20223699', '', NULL, '', '', 'aktif'),
(43, 'SD NEGERI CIKETING UDIK 1', 'SD', 'Bantargebang', '20223546', '', NULL, '', '', 'aktif'),
(44, 'SD NEGERI CIKETING UDIK 2', 'SD', 'Bantargebang', '20223547', '', NULL, '', '', 'aktif'),
(45, 'SD NEGERI CIKETING UDIK 3', 'SD', 'Bantargebang', '20223561', '', NULL, '', '', 'aktif'),
(46, 'SD NEGERI CIKETING UDIK 4', 'SD', 'Bantargebang', '69952525', '', NULL, '', '', 'aktif'),
(47, 'SD NEGERI CIKIWUL 3', 'SD', 'Bantargebang', '20223558', '', NULL, '', '', 'aktif'),
(48, 'SD NEGERI CIKIWUL 4', 'SD', 'Bantargebang', '20223557', '', NULL, '', '', 'aktif'),
(49, 'SD NEGERI CIKIWUL II', 'SD', 'Bantargebang', '20223559', '', NULL, '', '', 'aktif'),
(50, 'SD NEGERI SUMUR BATU 2', 'SD', 'Bantargebang', '20222725', '', NULL, '', '', 'aktif'),
(51, 'SD NEGERI SUMUR BATU 4', 'SD', 'Bantargebang', '20222724', '', NULL, '', '', 'aktif'),
(52, 'SD NEGERI SUMUR BATU I', 'SD', 'Bantargebang', '20222726', '', NULL, '', '', 'aktif'),
(53, 'SDIT AL-BARKAH', 'SD', 'Bantargebang', '20270558', '', NULL, '', '', 'aktif'),
(54, 'SDIT NURUL IMAN', 'SD', 'Bantargebang', '20253149', '', NULL, '', '', 'aktif'),
(55, 'SDIT ROUDHOTUL JANNAH', 'SD', 'Bantargebang', '20231612', '', NULL, '', '', 'aktif'),
(56, 'SDN CIKIWUL I', 'SD', 'Bantargebang', '20223560', '', NULL, '', '', 'aktif'),
(57, 'SD ALAM PERTIWI', 'SD', 'Mustikajaya', '20253942', '', NULL, '', '', 'aktif'),
(58, 'SD ALAM TERPADU TAMAN FIRDAUS', 'SD', 'Mustikajaya', '69873993', '', NULL, '', '', 'aktif'),
(59, 'SD BINA KREASI MANDIRI', 'SD', 'Mustikajaya', '20253944', '', NULL, '', '', 'aktif'),
(60, 'SD ISLAM AL FARISI', 'SD', 'Mustikajaya', '69967110', '', NULL, '', '', 'aktif'),
(61, 'SD ISLAM AL ILMU', 'SD', 'Mustikajaya', '70045119', '', NULL, '', '', 'aktif'),
(62, 'SD ISLAM ASSURYANIYAH', 'SD', 'Mustikajaya', '20276420', '', NULL, '', '', 'aktif'),
(63, 'SD ISLAM IBNU HAJAR MANDIRI', 'SD', 'Mustikajaya', '69909179', '', NULL, '', '', 'aktif'),
(64, 'SD ISLAM RIYADHUS SHALIHIN', 'SD', 'Mustikajaya', '69943820', '', NULL, '', '', 'aktif'),
(65, 'SD ISLAM TERATAI PUTIH GLOBAL', 'SD', 'Mustikajaya', '20231631', '', NULL, '', '', 'aktif'),
(66, 'SD ISLAM TERPADU AL IHSAN LEGENDA', 'SD', 'Mustikajaya', '20231546', '', NULL, '', '', 'aktif'),
(67, 'SD Islam Terpadu Daya Utama', 'SD', 'Mustikajaya', '70036065', '', NULL, '', '', 'aktif'),
(68, 'SD ISLAM TERPADU INSAN MADANI', 'SD', 'Mustikajaya', '20254042', '', NULL, '', '', 'aktif'),
(69, 'SD ISLAM ZAID BIN TSABIT', 'SD', 'Mustikajaya', '70031879', '', NULL, '', '', 'aktif'),
(70, 'SD ISLAMIC GREEN SCHOOL', 'SD', 'Mustikajaya', '69948054', '', NULL, '', '', 'aktif'),
(71, 'SD IT MUTIARA', 'SD', 'Mustikajaya', '20231597', '', NULL, '', '', 'aktif'),
(72, 'SD IT RIYADH EL JANNAH', 'SD', 'Mustikajaya', '69830096', '', NULL, '', '', 'aktif'),
(73, 'SD LUGHATUNA', 'SD', 'Mustikajaya', '70004891', '', NULL, '', '', 'aktif'),
(74, 'SD NEGERI CIMUNING I', 'SD', 'Mustikajaya', '20223556', '', NULL, '', '', 'aktif'),
(75, 'SD NEGERI CIMUNING II', 'SD', 'Mustikajaya', '20223554', '', NULL, '', '', 'aktif'),
(76, 'SD NEGERI CIMUNING III', 'SD', 'Mustikajaya', '20254028', '', NULL, '', '', 'aktif'),
(77, 'SD NEGERI CIMUNING IV', 'SD', 'Mustikajaya', '20223552', '', NULL, '', '', 'aktif'),
(78, 'SD NEGERI CIMUNING V', 'SD', 'Mustikajaya', '20254552', '', NULL, '', '', 'aktif'),
(79, 'SD NEGERI MUSTIKA JAYA VI', 'SD', 'Mustikajaya', '20222740', '', NULL, '', '', 'aktif'),
(80, 'SD NEGERI MUSTIKAJAYA I', 'SD', 'Mustikajaya', '20222745', '', NULL, '', '', 'aktif'),
(81, 'SD NEGERI MUSTIKAJAYA II', 'SD', 'Mustikajaya', '20222744', '', NULL, '', '', 'aktif'),
(82, 'SD NEGERI MUSTIKAJAYA III', 'SD', 'Mustikajaya', '20222743', '', NULL, '', '', 'aktif'),
(83, 'SD NEGERI MUSTIKAJAYA IV', 'SD', 'Mustikajaya', '20222742', '', NULL, '', '', 'aktif'),
(84, 'SD NEGERI MUSTIKAJAYA VII', 'SD', 'Mustikajaya', '20253870', '', NULL, '', '', 'aktif'),
(85, 'SD NEGERI MUSTIKASARI I', 'SD', 'Mustikajaya', '20222739', '', NULL, '', '', 'aktif'),
(86, 'SD NEGERI MUSTIKASARI II', 'SD', 'Mustikajaya', '20222738', '', NULL, '', '', 'aktif'),
(87, 'SD NEGERI MUSTIKASARI III', 'SD', 'Mustikajaya', '20222737', '', NULL, '', '', 'aktif'),
(88, 'SD NEGERI MUSTIKASARI IV', 'SD', 'Mustikajaya', '20222736', '', NULL, '', '', 'aktif'),
(89, 'SD NEGERI PADURENAN I', 'SD', 'Mustikajaya', '20253939', '', NULL, '', '', 'aktif'),
(90, 'SD NEGERI PADURENAN II', 'SD', 'Mustikajaya', '20222749', '', NULL, '', '', 'aktif'),
(91, 'SD NEGERI PADURENAN III', 'SD', 'Mustikajaya', '20222762', '', NULL, '', '', 'aktif'),
(92, 'SD NEGERI PADURENAN IV', 'SD', 'Mustikajaya', '20222761', '', NULL, '', '', 'aktif'),
(93, 'SD NEGERI PADURENAN V', 'SD', 'Mustikajaya', '20222760', '', NULL, '', '', 'aktif'),
(94, 'SD NEGERI PADURENAN VI', 'SD', 'Mustikajaya', '20222759', '', NULL, '', '', 'aktif'),
(95, 'SD PELITA GLOBAL MANDIRI', 'SD', 'Mustikajaya', '70004992', '', NULL, '', '', 'aktif'),
(96, 'SD PRIMA SAKINAH', 'SD', 'Mustikajaya', '20270816', '', NULL, '', '', 'aktif'),
(97, 'SD SATU BANGSA', 'SD', 'Mustikajaya', '70061635', '', NULL, '', '', 'aktif'),
(98, 'SD TAHFIDZ YARQI', 'SD', 'Mustikajaya', '70001481', '', NULL, '', '', 'aktif'),
(99, 'SDI BINA INSAN MANDIRI', 'SD', 'Mustikajaya', '69946830', '', NULL, '', '', 'aktif'),
(100, 'SDI UMMUL QURO', 'SD', 'Mustikajaya', '20253903', '', NULL, '', '', 'aktif'),
(101, 'SDIT AL AZHAR JAYA INDONESIA', 'SD', 'Mustikajaya', '70043141', '', NULL, '', '', 'aktif'),
(102, 'SDIT AR RAHMAH', 'SD', 'Mustikajaya', '69978922', '', NULL, '', '', 'aktif'),
(103, 'SDIT ARKAN CENDEKIA', 'SD', 'Mustikajaya', '69988637', '', NULL, '', '', 'aktif'),
(104, 'SDIT BAHANA MANDIRI', 'SD', 'Mustikajaya', '69984907', '', NULL, '', '', 'aktif'),
(105, 'SDIT INSAN AULIA', 'SD', 'Mustikajaya', '20253948', '', NULL, '', '', 'aktif'),
(106, 'SDIT KHAIRUL BARIYYAH', 'SD', 'Mustikajaya', '70061779', '', NULL, '', '', 'aktif'),
(107, 'SDIT MIFTAHUL JANNAH PADURENAN', 'SD', 'Mustikajaya', '70052712', '', NULL, '', '', 'aktif'),
(108, 'SDN MUSTIKA JAYA V', 'SD', 'Mustikajaya', '20222741', '', NULL, '', '', 'aktif'),
(109, 'SDS IT TITIAN ILMU', 'SD', 'Mustikajaya', '69786294', '', NULL, '', '', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `tipe_soal` enum('pg','bs','mcma','essay') NOT NULL DEFAULT 'pg',
  `pertanyaan` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `teks_bacaan` text DEFAULT NULL,
  `pilihan_a` text DEFAULT NULL,
  `gambar_pilihan_a` varchar(255) DEFAULT NULL,
  `pilihan_b` text DEFAULT NULL,
  `gambar_pilihan_b` varchar(255) DEFAULT NULL,
  `pilihan_c` text DEFAULT NULL,
  `gambar_pilihan_c` varchar(255) DEFAULT NULL,
  `pilihan_d` text DEFAULT NULL,
  `gambar_pilihan_d` varchar(255) DEFAULT NULL,
  `jawaban_benar` text DEFAULT NULL,
  `pembahasan` text DEFAULT NULL,
  `essay_bobot` tinyint(3) UNSIGNED NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `kategori_id`, `tipe_soal`, `pertanyaan`, `gambar`, `teks_bacaan`, `pilihan_a`, `gambar_pilihan_a`, `pilihan_b`, `gambar_pilihan_b`, `pilihan_c`, `gambar_pilihan_c`, `pilihan_d`, `gambar_pilihan_d`, `jawaban_benar`, `pembahasan`, `essay_bobot`) VALUES
(854, 37, 'pg', 'Tanaman pada gambar di atas dapat diolah menjadi sayur-sayuran. Salah satu ciri-cirinya yaitu...', 'soal_6a0c58e2cc573.jpg', 'Perhatikan gambar ini !', 'Batang berongga dan lunak', '', 'Batangnya beruas-ruas', '', 'Batangnya keras dan kuat', '', 'Batangnya berkayu', '', 'a', '', 10),
(855, 37, 'pg', 'Gaya gesek yang terjadi pada suatu benda dipengaruhi oleh dua hal. Dua hal tersebut ditunjukkan oleh pernyataan nomor .', 'soal_6a0c5a240d550.jpg', 'Perhatikan tabel berikut!', '1 dan 2', '', '1 dan 3', '', '2 dan 3', '', '3 dan 4', '', 'c', '', 10),
(856, 37, 'pg', 'Tim merah menarik tali ke kanan, sedangkan tim putih menarik tali ke kiri. Apabila tim merah menarik lebih kuat daripada tim\r\nputih, maka . .', 'soal_6a0c5aa31f706.jpg', 'Perhatikan gambar di bawah!', 'Tidak ada yang bergerak', '', 'Kedua tim akan bergerak', '', 'Tim merah akan bergerak mendekati tim putih', '', 'Tim putih akan bergerak mendekati tim merah', '', 'd', '', 10),
(857, 37, 'pg', 'Gambar di atas menunjukkan adanya perpindahan energi. Sumber energi utama pada gambar tersebut yaitu. . .', 'soal_6a0c5b7b06252.jpg', 'Perhatikan gambar di bawah!', 'Manusia', '', 'Tumbuhan', '', 'Hewan', '', 'Sinar matahari', '', 'd', '', 10),
(858, 37, 'pg', 'Benda yang mengalami perubahan energi kimia menjadi energi listrik ditunjukkan oleh gambar nomor. . . .', 'soal_6a0c5b8e5ae18.jpg', '', '1', '', '2', '', '3', '', '4', '', 'c', '', 10),
(859, 37, 'pg', 'Siswa kelas IV melaksanakan percobaan seperti gambar di atas. Setelah 15-30 menit, siswa melihat adanya gelembunggelembung pada daun. Percobaan tersebut bertujuan untuk menunjukkan bahwa fotosintesis . . .', 'soal_6a0c5bddc9561.jpg', 'Perhatikan gambar berikut!', 'Menghasilkan karbohidrat', '', 'Menghasilkan oksigen', '', 'Memerlukan karbon dioksida', '', 'Memerlukan air', '', 'b', '', 10),
(860, 37, 'pg', 'Bahan bakar dari benda di atas adalah bensin. Bensin akan diubah menjadi energi gerak dan energi lainnya. Energi lainnya yang\r\ndimaksud yaitu . . .', 'soal_6a0c5c6dbab69.jpg', 'Perhatikan gambar berikut!', 'Energi panas dan energi kimia', '', 'Energi panas dan energi listrik', '', 'Energi listrik dan energi kimia', '', 'Energi listrik dan energi cahaya', '', 'b', '', 10),
(861, 37, 'pg', 'Pengaruh gaya terhadap benda pada gambar di atas yaitu. . .', 'soal_6a0c5ccf64f73.jpg', 'Perhatikan gambar berikut!', 'Mengubah bentuk benda', '', 'Membuat benda bergerak', '', 'Mengubah arah gerak benda', '', 'Membuat benda diam menjadi bergerak', '', 'c', '', 10),
(862, 37, 'pg', 'Peristiwa yang terjadi selama musim panas ditunjukkan oleh nomor . . .', 'soal_6a0c5d1aa9ba2.jpg', 'Perhatikan tabel berikut!', '1', '', '2', '', '3', '', '4', '', 'a', '', 10),
(863, 37, 'pg', 'Baterai menyimpan energi ....', 'soal_6a0c5d717548f.jpg', 'Perhatikan gambar berikut!', 'Cahaya', '', 'Gerak', '', 'Panas', '', 'Kimia', '', 'd', '', 10),
(864, 38, 'pg', 'Keragaman budaya bangsa Indonesia salah satunya terlihat dari\r\npakaian adat. Pakaian adat pada gambar di atas berasal dari\r\ndaerah...', 'soal_6a0c5e0d02934.jpg', 'Perhatikan gambar pakaian adat di bawah ini!', 'Sumatera Barat', '', 'Jawa Tengah', '', 'Papua', '', 'Sulawesi Selatan', '', 'b', '', 10),
(865, 38, 'pg', 'Berdasarkan alur kegiatan ekonomi, aktivitas yang dilakukan oleh\r\norang-orang pada gambar di atas termasuk dalam kegiatan...', 'soal_6a0c5e5c3d7b4.jpg', 'Perhatikan gambar kegiatan ekonomi berikut!', 'Konsumsi', '', 'Distribusi', '', 'Transportasi', '', 'Produksi', '', 'd', '', 10),
(866, 38, 'pg', 'Peninggalan sejarah yang sangat megah pada gambar di atas\r\nmerupakan bukti pengaruh dari kerajaan bercorak...', 'soal_6a0c5eb113911.jpg', 'Perhatikan gambar peninggalan sejarah di bawah ini!', 'Budhha', '', 'Islam', '', 'Kristen', '', 'Hindu', '', 'a', '', 10),
(867, 38, 'pg', 'Kenampakan alam pada gambar di atas terletak di daerah\r\ndataran tinggi. Aktivitas ekonomi masyarakat yang paling cocok\r\nuntuk daerah tersebut adalah...', 'soal_6a0c5f1527302.jpg', 'Perhatikan gambar kenampakan alam berikut!', 'Menjadi nelayan', '', 'Bertani padi', '', 'Perkebunan teh', '', 'Membuat garam', '', 'a', '', 10),
(868, 38, 'pg', 'Komponen peta yang ditunjukkan oleh tanda panah berfungsi\r\nuntuk...', 'soal_6a0c5f705e673.jpg', 'Perhatikan gambar peta di bawah ini!', 'Mengetahui jarak tempat', '', 'Menentukan arah mata angin', '', 'Membaca arti simbol peta', '', 'Mengetahui judul peta', '', 'b', '', 10),
(869, 38, 'pg', 'Uang pada gambar di atas digunakan sebagai alat pembayaran\r\nyang sah. Nilai nominal dari uang tersebut adalah...', 'soal_6a0c5fce11d7d.jpg', 'Perhatikan gambar uang di bawah ini!', 'Lima ribu rupiah', '', 'Sepuluh ribu rupiah', '', 'Dua puluh ribu rupiah', '', 'Lima puluh ribu rupiah', '', 'b', '', 10),
(870, 38, 'pg', 'Jenis pekerjaan yang ditunjukkan oleh gambar di atas\r\nmenghasilkan...', 'soal_6a0c601f3ad03.jpg', 'Perhatikan gambar pekerjaan berikut!', 'Barang', '', 'Makanan', '', 'Jasa', '', 'Kerajinan', '', 'c', '', 10),
(871, 38, 'pg', 'Kegiatan jual beli pada gambar di atas biasanya terjadi di...', 'soal_6a0c60734b826.jpg', 'Perhatikan gambar di bawah ini!', 'Supermarket', '', 'Pasar tradisional', '', 'Toko Online', '', 'Apotek', '', 'b', '', 10),
(872, 38, 'pg', 'Gambar tersebut merupakan salah satu rumah adat yang ada di\r\nIndonesia. Rumah adat termasuk ke dalam lingkungan...', 'soal_6a0c60c7693f0.jpg', 'Perhatikan gambar berikut!', 'Alamiah', '', 'Buatan Manusia', '', 'Gaib', '', 'Angkasa', '', 'b', '', 10),
(873, 38, 'pg', 'Gambar di atas menunjukkan denah sebuah sekolah. Jika kamu\r\nberada di gerbang sekolah dan ingin pergi ke lapangan sepak\r\nbola, arah mata angin yang harus kamu tuju berdasarkan denah\r\nadalah...', 'soal_6a0c6124ca6f2.jpg', 'Perhatikan gambar di bawah ini!', 'Utara', '', 'Selatan', '', 'Timur', '', 'Barat', '', 'c', '', 10),
(874, 36, 'pg', 'Seutas tali sepanjang 15 meter dipotong menjadi dua bagian. Jika bagian pertama\r\npanjangnya 725 cm, maka panjang bagian kedua adalah...', 'soal_6a0c61b220860.jpg', '', '7,75', '', '7,25', '', '8,25', '', '8,75', '', 'a', '', 10),
(875, 36, 'pg', 'Sebuah mobil menempuh perjalanan selama 2 jam 45 menit, kemudian berhenti\r\nselama 20 menit, dan lanjut lagi selama 1 jam 15 menit. Total waktu perjalanan\r\ntersebut adalah...', 'soal_6a0c62080194a.jpg', '', '4 jam 10 menit', '', '4 jam 20 menit', '', '4 jam 30 menit', '', '4 jam 40 menit', '', 'a', '', 10),
(876, 36, 'pg', 'Ibu membeli 2 kg tepung terigu, 500 gram mentega, dan 25 ons gula pasir. Berat\r\ntotal belanjaan Ibu adalah...', 'soal_6a0c625613f2f.jpg', '', '3 kg', '', '4 kg', '', '5 kg', '', '6 kg', '', 'a', '', 10),
(877, 36, 'pg', 'Manakah di antara pecahan berikut yang nilainya paling mendekati 1/2?', '', '', '2/5', '', '3/7', '', '4/9', '', '5/11', '', 'd', '', 10),
(878, 36, 'pg', 'Bentuk pecahan paling sederhana dari 0, 363636 adala', '', '', '36/100', '', '4/11', '', '9/25', '', '12/33', '', 'a', '', 10),
(879, 36, 'pg', 'Hasil dari 1/2 + 1/4 + 1/8 + 1/16 adalah...', '', '', '13/16', '', '15/16', '', '7/8', '', '1', '', 'b', '', 10),
(880, 36, 'pg', 'Sebuah bilangan jika dibagi 7 memberikan hasil 12 dan sisa 4. Bilangan tersebut\r\nadalah...', '', '', '80', '', '84', '', '88', '', '92', '', 'c', '', 10),
(881, 36, 'pg', 'Perhatikan barisan bilangan cacah berikut:\r\n3, 7, 11, 15, ….\r\nSuku ke-10 dari barisan tersebut adalah...', '', '', '35', '', '39', '', '41', '', '43', '', 'b', '', 10),
(882, 36, 'pg', 'Seorang dermawan ingin membagikan 1.440 buku tulis kepada anak-anak di panti\r\nasuhan. Jika setiap anak mendapatkan 15 buku, dan buku tersebut dikemas dalam\r\nkardus yang masing-masing berisi 120 buku, berapa banyak anak yang akan\r\nmenerima bantuan tersebut?', '', '', '84 anak', '', '90 anak', '', '96 anak', '', '102 anak', '', 'c', '', 10),
(883, 36, 'pg', 'Di sebuah kompetisi matematika, panitia menyediakan 12 kotak berisi medali.\r\nSetiap kotak memiliki isi yang sama yaitu 36 buah medali. Panitia ingin\r\nmendistribusikan seluruh medali tersebut secara merata kepada sejumlah siswa\r\nberprestasi. Jika terdapat 24 siswa, tentukan berapakah total medali yang diterima\r\noleh setiap siswa?', '', '', '12 Medali', '', '16 Medali', '', '18 Medali', '', '20 Medali', '', 'c', '', 10),
(894, 40, 'pg', 'Melihat gambar denah di atas, benda yang terletak di paling depan kelas dan digunakan guru untuk menulis adalah...', 'soal_6a0dde2e46e19.png', 'Perhatikan gambar di bawah ini!', 'Meja murid', '', 'Lemari buku', '', 'Papan tulis', '', 'Jendela', '', 'c', '', 10),
(895, 40, 'pg', 'Lingkungan yang dibuat oleh manusia untuk mempermudah kehidupan sehari-hari disebut lingkungan...', '', '', 'Alami', '', 'Buatan', '', 'Gaib', '', 'Semesta', '', 'b', '', 10),
(896, 40, 'pg', 'Gambar di atas menunjukkan salah satu contoh lingkungan alam, yaitu...', 'soal_6a11d1255c22c.jpg', 'Perhatikan gambar di bawah ini!', 'Sawah', '', 'Waduk', '', 'Sungai', '', 'Kolam', '', 'c', '', 10),
(897, 40, 'pg', 'Berikut ini yang termasuk contoh lingkungan buatan di sekitar sekolah adalah...', '', '', 'Gunung', '', 'Gedung sekolah dan lapangan upacara', '', 'Hutan Rimba', '', 'Lautan', '', 'b', '', 10),
(898, 40, 'pg', 'Berdasarkan gambar arah mata angin tersebut, arah yang berada di antara Utara dan Timur adalah...', 'soal_6a11d222270c5.png', 'Perhatikan gambar di bawah ini!', 'Selatan', '', 'Barat Daya', '', 'TImur Laut', '', 'Barat Laut', '', 'c', '', 10),
(900, 40, 'pg', 'Alat bantu yang digunakan untuk menunjukkan letak suatu tempat atau ruangan secara terperinci disebut...', '', '', 'Kompas', '', 'Denah', '', 'Barometer', '', 'Termometer', '', 'b', '', 10),
(901, 40, 'pg', 'Kegiatan membersihkan rumah bersama-sama dengan ayah, ibu, dan kakak merupakan bentuk kerja sama di lingkungan...', '', '', 'Sekolah', '', 'Rumah/Keluarga', '', 'Kelurahan', '', 'Pasar', '', 'b', '', 10),
(902, 40, 'pg', 'Manfaat utama dari kegiatan kerja sama pada gambar di atas adalah...', 'soal_6a11d34d5c189.png', 'Perhatikan gambar di bawah ini!', 'Mendapatkan uang jajan tambahan', '', 'Membuat kelas menjadi cepat bersih dan rapi', '', 'Supaya bisa bermain di dalam kelas', '', 'Menunda waktu pulang sekolah', '', 'b', '', 10),
(903, 40, 'pg', 'Pekerjaan berikut ini yang menghasilkan barang berupa makanan pokok adalah...', '', '', 'Guru', '', 'Dokter', '', 'Petani', '', 'Sopir', '', 'c', '', 10),
(904, 40, 'pg', 'Orang yang bekerja memberikan layanan kesehatan kepada pasien di rumah sakit disebut...', '', '', 'Polisi', '', 'Dokter', '', 'Pemadam Kebakaran', '', 'Montir', '', 'b', '', 10),
(905, 40, 'pg', 'Pada peta, simbol segitiga berwarna merah seperti gambar di atas digunakan untuk menunjukkan...', 'soal_6a11d69be2cdc.jpeg', 'Perhatikan gambar di bawah ini!', 'Gunung berapi yang aktif', '', 'Danau air tawar', '', 'Ibu kota provinsi', '', 'Bandar udara', '', 'a', '', 10),
(906, 40, 'pg', 'Jika kamu sedang menghadap ke arah Barat, maka punggungmu menghadap ke arah...', '', '', 'Utara', '', 'Selatan', '', 'Timur', '', 'Barat Daya', '', 'c', '', 10),
(907, 40, 'pg', 'Lingkungan buatan pada gambar di atas memiliki fungsi utama bagi masyarakat sekitar untuk...', 'soal_6a11d9f990945.jpg', 'Perhatikan gambar di bawah ini!', 'Tempat membuang limbah pabrik', '', 'Sarana irigasi pertanian dan pembangkit listrik', '', 'Tempat memperluas lahan pemukiman', '', 'Mencari kayu bakar', '', 'b', '', 10),
(908, 40, 'pg', 'Salah satu cara menjaga kelestarian lingkungan alam di sekitar rumah kita adalah...', '', '', 'Menebang pohon sembarangan', '', 'Membuang sampah di selokan depan rumah', '', 'Menanam tanaman hias atau apotek hidup di pekarangan', '', 'Menutup seluruh permukaan tanah dengan semen', '', 'c', '', 10),
(909, 40, 'pg', 'Kerja sama sangat penting dilakukan dalam kehidupan bermasyarakat. Contoh kerja sama di lingkungan warga tingkat RT adalah...', '', '', 'Mengerjakan ujian sekolah bersama-sama', '', 'Melaksanakan ronda malam dan kerja bakti membersihkan selokan', '', 'Membantu ibu memasak di dapur', '', 'Berbelanja bersama ke supermarket', '', 'b', '', 10),
(911, 40, 'pg', 'Nilai luhur bangsa Indonesia yang tercermin pada kegiatan gambar di atas adalah...', 'soal_6a11dbcb73377.jpg', '', 'Individualisme', '', 'Gotong royong', '', 'Bersaing sehat', '', 'Konsumtif', '', 'b', '', 10),
(912, 40, 'pg', 'Seseorang bekerja untuk memenuhi kebutuhan hidup keluarganya. Kebutuhan paling mendasar yang harus dipenuhi terlebih dahulu adalah...', '', '', 'Mobil mewah dan perhiasan', '', 'Handphone baru dan kuota internet', '', 'Makanan, pakaian, dan tempat tinggal (pangan, sandang, papan)', '', 'Liburan ke luar negeri', '', 'c', '', 10),
(913, 40, 'pg', 'Pak Badu memiliki keahlian memperbaiki sepeda motor yang rusak. Pekerjaan Pak Badu termasuk jenis pekerjaan yang menghasilkan...', '', '', 'Barang dagangan', '', 'Jasa perbaikan', '', 'Bahan makanan', '', 'Kerajinan tangan', '', 'b', '', 10),
(914, 40, 'pg', 'Uang seperti pada gambar di atas dikeluarkan secara resmi oleh bank sentral negara kita, yaitu...', 'soal_6a11dd376e668.jpg', 'Perhatikan gambar di bawah ini!', 'Bank Asia', '', 'Bank Indonesia', '', 'Bank Rakyat Indonesia', '', 'Bank Mandiri', '', 'b', '', 10),
(915, 40, 'pg', 'Penggunaan uang sebagai alat tukar yang sah membuat kegiatan jual beli menjadi lebih mudah dibandingkan zaman dahulu yang menggunakan sistem tukar menukar barang yang disebut...', '', '', 'Monetisasi', '', 'Kredit', '', 'Barter', '', 'Investasi', '', 'c', '', 10),
(916, 40, 'pg', 'Masyarakat di daerah pantai sering membuat rumah berbentuk panggung seperti gambar. Hal ini merupakan bentuk adaptasi manusia terhadap lingkungan alam untuk menghindari...', 'soal_6a11dfdc944f8.jpg', 'Perhatikan gambar di bawah ini!', 'Tanah longsor dari perbukitan', '', 'Udara dingin pegunungan', '', 'Pasang air laut atau banjir rob', '', 'Serangan hewan buas di hutan', '', 'c', '', 10),
(917, 40, 'pg', 'Koperasi sekolah merupakan contoh kerja sama di lingkungan sekolah yang bertujuan untuk...', '', '', 'Mencari keuntungan sebesar-besarnya dari siswa', '', 'Melatih siswa berwirausaha dan memenuhi kebutuhan alat tulis siswa', '', 'Menggantikan tugas kantin secara keseluruhan', '', 'Memberikan pinjaman uang tunai kepada masyarakat umum', '', 'b', '', 10),
(918, 40, 'pg', 'Perhatikan pernyataan berikut!\r\n1.	Membantu teman saat menyontek ujian.\r\n2.	Membersihkan halaman rumah bersama adik.\r\n3.	Mengikuti kerja bakti membersihkan tempat ibadah.\r\n4.	Membantu pencuri melarikan diri.\r\n\r\nKerja sama yang bernilai positif dan boleh dilakukan ditunjukkan oleh nomor...', '', '', '1 dan 2', '', '2 dan 3', '', '3 dan 4', '', '1 dan 4', '', 'b', '', 10),
(919, 40, 'pg', 'Dampak negatif jangka panjang bagi kesehatan manusia jika lingkungan perkotaan berubah seperti pada gambar di atas adalah...', 'soal_6a11e161f2c74.jpeg', 'Perhatikan gambar di bawah ini!', 'Meningkatnya penyakit saluran pernapasan (ISPA)', '', 'Air bersih menjadi semakin melimpah', '', 'Suhu udara kota menjadi semakin sejuk', '', 'Angka kecelakaan menurun drastis', '', 'a', '', 10),
(920, 40, 'pg', 'Kebakaran hutan yang sering terjadi saat musim kemarau panjang dapat merusak lingkungan alam. Langkah penanggulangan yang paling tepat agar hutan tetap lestari setelah terbakar adalah...', '', '', 'Mengubah lahan hutan menjadi perkebunan kelapa sawit', '', 'Melakukan reboisasi atau penanaman hutan kembali', '', 'Membiarkan hutan mengering dan menjadi semak belukar', '', 'Membangun pemukiman baru di bekas lahan hutan', '', 'b', '', 10),
(921, 40, 'pg', 'Seseorang yang memiliki kemampuan mengelola modal, tenaga kerja, dan peluang usaha untuk menghasilkan barang atau jasa baru disebut...', '', '', 'Karyawan', '', 'Buruh', '', 'Wirausahawan', '', 'Pegawai Negeri Sipil', '', 'c', '', 10),
(922, 40, 'pg', 'Sebelum menggunakan uang kertas dan logam modern seperti sekarang, manusia pernah menggunakan \"uang barang\". Syarat utama suatu barang bisa dijadikan alat tukar pada masa itu adalah...', 'soal_6a11e2c207f32.png', 'Perhatikan gambar di bawah ini!', 'Harganya sangat mahal dan sulit ditemukan', '', 'Barang tersebut disukai, berharga, dan diterima oleh banyak orang', '', 'Barang tersebut harus berukuran sangat besar', '', 'Barang tersebut cepat busuk atau rusak', '', 'b', '', 10),
(923, 40, 'pg', 'Di dalam sebuah denah atau peta resmi, terdapat simbol arah mata angin yang biasanya menunjuk ke arah atas. Arah atas pada denah tersebut selalu menunjukkan arah...', '', '', 'Timur', '', 'Barat', '', 'Utara', '', 'Selatan', '', 'c', '', 10),
(924, 40, 'pg', 'Hubungan ketergantungan antara masyarakat kota dan masyarakat desa tercermin dalam kegiatan ekonomi. Contoh ketergantungan masyarakat kota terhadap desa adalah...', '', '', 'Masyarakat kota membutuhkan pasokan bahan makanan segar seperti sayur dan beras dari desa', '', 'Masyarakat kota mengirimkan tenaga medis ke desa', '', 'Masyarakat desa membeli barang-barang elektronik dari kota', '', 'Masyarakat desa mencari pekerjaan di kota', '', 'a', '', 10),
(925, 40, 'pg', 'Berdasarkan bagan alur kegiatan ekonomi di atas, peran toko beras dalam rantai ekonomi tersebut adalah sebagai...', 'soal_6a11e4cb4d723.png', 'Perhatikan gambar di bawah ini!', 'Produsen', '', 'Distributor', '', 'Konsumen', '', 'Pengolah Bahan Baku', '', 'b', '', 10),
(926, 40, 'pg', 'Komponen peta yang berupa daftar penjelasan simbol-simbol yang digunakan pada peta disebut...', 'soal_6a126e21e1894.jpg', 'Perhatikan gambar di bawah ini!', 'Judul peta', '', 'Skala peta', '', 'Legenda', '', 'Inset', '', 'c', '', 10),
(927, 40, 'pg', '2.	Skala peta 1 : 100.000  artinya 1 cm pada peta sama dengan... di lapangan (jarak sebenarnya)', '', '', '1 meter', '', '100 meter', '', '1 kilometer', '', '10 kilometer', '', 'c', '', 10),
(928, 40, 'pg', 'Bentuk muka bumi berupa daratan luas yang terletak pada ketinggian lebih dari 600 meter di atas permukaan laut disebut...', 'soal_6a126fc4e4e04.jpg', 'Perhatikan gambar di bawah ini!', 'Dataran rendah', '', 'Dataran tinggi', '', 'Lembah', '', 'Pantai', '', 'b', '', 10),
(929, 40, 'pg', 'Sumber daya alam yang tidak akan habis meskipun digunakan secara terus-menerus karena dapat memperbanyak diri disebut sumber daya alam yang...', '', '', 'Dapat diperbarui', '', 'Tidak dapat diperbarui', '', 'Cepat habis', '', 'Sangat langka', '', 'a', '', 10),
(930, 40, 'pg', 'Gambar di atas menunjukkan salah satu hasil pemanfaatan sumber daya alam yang berasal dari lingkungan...', 'soal_6a12708666a48.jpg', 'Perhatikan gambar di bawah ini!', 'Laut', '', 'Sungai', '', 'Hutan', '', 'Sawah', '', 'c', '', 10),
(931, 39, 'pg', 'Bagian tumbuhan yang berfungsi menyerap air adalah ....', 'soal_6a129974b0c3b.jpeg', 'Perhatikan gambar dibawah ini!', 'Daun', '', 'Bunga', '', 'Akar', '', 'Batang', '', 'c', '', 10),
(932, 39, 'pg', 'Tumbuhan membuat makanan melalui proses ....', 'soal_6a12a16d59354.jpeg', 'Perhatikan gambar berikut!', 'penguapan', '', 'fotosintesis', '', 'pernapasan', '', 'pembusukan', '', 'b', '', 10),
(933, 39, 'pg', 'Gaya dapat menyebabkan benda menjadi ....', '', '', 'diam terus', '', 'berubah gerak', '', 'hilang', '', 'pecah semua', '', 'b', '', 10),
(934, 39, 'pg', 'Pada gambar berikut, dipengaruhi oleh adanya gaya...', 'soal_6a12a2936ffbb.jpeg', 'Perhatikan gambar berikut!', 'Gravitasi Bumi', '', 'Magnet', '', 'Pegas', '', 'Gesek', '', 'a', '', 10),
(935, 39, 'pg', 'Jika diluncurkan di suatu permukaan yang halus, bola akan mengalami pengurangan gaya gesek. Hal ini menyebabkan bola meluncur secara…', '', '', 'sesuai takaran', '', 'tidak menentu', '', 'cepat', '', 'lambat', '', 'c', '', 10),
(936, 39, 'pg', 'Panel surya memanfaatkan energi ....', 'soal_6a12a3ae0e35b.jpeg', 'Perhatikan gambar dibawah ini!', 'panas bumi', '', 'air', '', 'cahaya matahari', '', 'angin', '', 'c', '', 10),
(937, 39, 'pg', 'Kipas angin mengubah energi listrik menjadi energi ....', 'soal_6a12a67be6e22.jpeg', 'Perhatikan gambar dibawah ini!', 'panas', '', 'bunyi', '', 'gerak', '', 'cahaya', '', 'c', '', 10),
(938, 39, 'pg', 'Mobil pada gambar mengalami perubahan energi dari ....', 'soal_6a12a746d92ba.jpeg', 'Perhatikan gambar dibawah ini!', 'energi listrik menjadi energi panas', '', 'energi kimia menjadi energi gerak', '', 'energi cahaya menjadi energi bunyi', '', 'energi gerak menjadi energi listrik', '', 'b', '', 10),
(939, 39, 'pg', 'Saat mengayuh sepeda, tubuh menggunakan energi ....', '', '', 'kimia dari makanan', '', 'cahaya matahari', '', 'listrik', '', 'magnet', '', 'a', '', 10),
(940, 39, 'pg', 'Contoh sumber energi alternatif adalah ....', '', '', 'minyak bumi', '', 'batu bara', '', 'matahari', '', 'bensin', '', 'c', '', 10),
(941, 40, 'pg', 'Keragaman suku bangsa dan budaya di Indonesia merupakan kekayaan bangsa yang harus kita...', '', '', 'Permusuhkan', '', 'Lestarikan dan hormati', '', 'Hilangkan agar seragam', '', 'Lupakan', '', 'b', '', 10),
(942, 39, 'pg', 'Peralatan elektronik pada gambar di atas mengubah energi listrik menjadi. . .', 'soal_6a12a867624a2.jpeg', 'Perhatikan gambar berikut!', 'energi panas', '', 'energi gerak', '', 'energi bunyi', '', 'energi cahaya dan bunyi', '', 'd', '', 10),
(943, 40, 'pg', 'Rumah adat yang memiliki atap melengkung menyerupai tanduk kerbau atau perahu pada gambar di atas berasal dari suku...', 'soal_6a12a8a22ae8f.jpg', 'Perhatikan gambar di bawah ini!', 'Minangkabau', '', 'Toraja', '', 'Dani', '', 'Jawa', '', 'b', '', 10),
(944, 39, 'pg', 'Planet tempat tinggal manusia adalah ....', '', '', 'Mars', '', 'Venus', '', 'Bumi', '', 'Jupiter', '', 'c', '', 10),
(945, 40, 'pg', 'Kegiatan manusia yang bertujuan untuk menghasilkan barang atau jasa guna memenuhi kebutuhan hidup dinamakan...', '', '', 'Kegiatan konsumsi', '', 'Kegiatan distribusi', '', 'Kegiatan ekonomi', '', 'Kegiatan rekreasi', '', 'c', '', 10),
(946, 39, 'pg', 'Benda pada gambar di atas sering kita gunakan saat listrik padam. Perubahan energi yang terjadi pada benda tersebut yaitu . . .', 'soal_6a12dba298635.jpeg', 'Perhatikan gambar berikut!', 'energi panas ➜ energi gerak ➜ energi cahaya', '', 'energi gerak ➜ energi listrik ➜ energi cahaya', '', 'energi listrik ➜ energi kimia ➜ energi cahaya', '', 'energi kimia ➜ energi listrik ➜ energi cahaya', '', 'd', '', 10),
(947, 40, 'pg', 'Orang atau pihak yang menggunakan/menghabiskan nilai guna barang dan jasa seperti pada gambar disebut..', 'soal_6a12a981d3fb4.jpg', 'Perhatikan gambar di bawah ini!', 'Produsen', '', 'Distributor', '', 'Konsumen', '', 'Agen', '', 'c', '', 10),
(948, 39, 'pg', 'Bumi mengelilingi matahari disebut ....', '', '', 'rotasi', '', 'gravitasi', '', 'revolusi', '', 'orbit', '', 'c', '', 10),
(949, 40, 'pg', 'Pahlawan nasional yang mendapat julukan \"Bapak Pendidikan Nasional\" adalah...', '', '', 'Ir. Soekarno', '', 'Ki Hajar Dewantara', '', 'Pangeran Diponegoro', '', 'Jenderal Sudirman', '', 'b', '', 10),
(950, 39, 'pg', 'Hasil dari fotosintesis yang berlebihan akan disimpan oleh tumbuhan. Bagian tumbuhan yang berfungsi menyimpannya ditunjukkan oleh nomor. . .', 'soal_6a12a9ea979e3.jpeg', 'Perhatikan gambar di bawah!', '1', '', '2', '', '3', '', '4', '', 'd', '', 10),
(951, 39, 'pg', 'Tumbuhan menghasilkan oksigen pada siang hari melalui ....', '', '', 'bernapas', '', 'fotosintesis', '', 'berkembang biak', '', 'bergerak', '', 'b', '', 10),
(952, 40, 'pg', 'Fungsi utama dari garis astronomis (garis lintang dan garis bujur) pada sebuah peta adalah untuk...', 'soal_6a12ab23f01b5.jpg', 'Perhatikan gambar di bawah ini!', 'Mengetahui keindahan suatu daerah', '', 'Menentukan letak absolut/pasti suatu tempat di permukaan bumi', '', 'Mengukur ketinggian gunung', '', 'Menghitung jumlah penduduk', '', 'b', '', 10),
(953, 39, 'pg', 'Pernyataan berikut yang sesuai dengan kedua gambar di atas yaitu. . .', 'soal_6a12aacceca23.jpeg', 'Perhatikan gambar di bawah!', 'tempat 1 menghasilkan banyak karbondiksida', '', 'lebih banyak cahaya matahari di tempat 2', '', 'ketersediaan oksigen lebih banyak di tempat 1', '', 'kabohidrat sulit dicari ditempat 2', '', 'c', '', 10),
(954, 39, 'pg', 'Kendaraan yang menghasilkan asap berlebihan dapat menyebabkan ....', '', '', 'udara segar', '', 'pencemaran udara', '', 'hujan deras', '', 'tanah subur', '', 'b', '', 10),
(955, 39, 'pg', 'Contoh hubungan saling menguntungkan adalah ....', '', '', 'benalu pada pohon', '', 'lebah dan bunga', '', 'kucing dan tikus', '', 'ular dan ayam', '', 'b', '', 10),
(956, 40, 'pg', 'Wilayah daratan yang menjorok ke arah laut dinamakan...', '', '', 'Teluk', '', 'Tanjung', '', 'Selat', '', 'Pulau', '', 'b', '', 10),
(957, 39, 'pg', 'Air hujan berasal dari ....', '', '', 'laut yang menguap', '', 'batu', '', 'tanah', '', 'api', '', 'a', '', 10),
(958, 40, 'pg', 'Batu bara merupakan sumber daya alam yang tidak dapat diperbarui karena...', 'soal_6a12ac92c6f4a.jpeg', 'Perhatikan gambar di bawah ini!', 'Proses pembentukannya membutuhkan waktu jutaan tahun', '', 'Jumlahnya di alam sangat melimpah dan tidak terbatas', '', 'Dapat dibuat kembali di laboratorium dalam waktu singkat', '', 'Harganya sangat murah di pasaran', '', 'a', '', 10),
(959, 39, 'pg', 'Tanaman yang tidak memiliki klorofil ditunjukkan oleh nomor...', 'soal_6a12ac5e522d1.jpeg', 'Perhatikan gambar di bawah!', '1 saja', '', '1 dan 4', '', '2 dan 3', '', '2 dan 4', '', 'b', '', 10),
(960, 39, 'pg', 'Gempa bumi dapat terjadi karena ....', '', '', 'angin', '', 'pergeseran lempeng bumi', '', 'panas matahari', '', 'hujan', '', 'b', '', 10),
(961, 40, 'pg', 'Upacara adat \"Rambu Solo\" merupakan upacara pemakaman adat yang sangat terkenal di Indonesia. Upacara ini berasal dari daerah...', '', '', 'Bali', '', 'Tana Toraja', '', 'Yogyakarta', '', 'Papua', '', 'b', '', 10),
(962, 40, 'pg', 'Sikap yang paling tepat dalam menghadapi keragaman budaya seperti yang ditunjukkan pada gambar di atas adalah...', 'soal_6a12aeab8e15b.jpg', 'Perhatikan gambar di bawah ini!', 'Menganggap budaya sendiri sebagai yang paling hebat dan merendahkan budaya lain', '', 'Saling menghormati dan menghargai perbedaan demi persatuan bangs', '', 'Meminta pemerintah menghapus budaya yang minoritas', '', 'Mempelajari budaya asing saja agar terlihat keren', '', 'b', '', 10),
(963, 40, 'pg', 'Kebutuhan manusia yang pemenuhannya dapat ditunda setelah kebutuhan pokok terpenuhi, seperti kebutuhan akan televisi, motor, atau meja belajar, dinamakan kebutuhan...', '', '', 'Primer', '', 'Sekunder', '', 'Tersier', '', 'Mutlak', '', 'b', '', 10),
(964, 39, 'pg', 'Menanam pohon dapat membantu ....', '', '', 'menyebabkan banjir', '', 'menjaga udara tetap bersih', '', 'membuat tanah rusak', '', 'mengurangi oksigen', '', 'b', '', 10),
(965, 40, 'pg', 'Kegiatan menyalurkan barang dari produsen kepada konsumen seperti pada gambar termasuk dalam jenis kegiatan ekonomi...', 'soal_6a12afa2c545f.jpeg', 'Perhatikan gambar di bawah ini!', 'Produksi', '', 'Konsumsi', '', 'Distribusi', '', 'Urbanisasi', '', 'c', '', 10),
(966, 39, 'pg', 'Alat untuk melihat benda langit adalah ....', '', '', 'mikroskop', '', 'stetoskop', '', 'teleskop', '', 'thermometer', '', 'c', '', 10),
(967, 40, 'pg', 'Kerajaan Kutai merupakan kerajaan Hindu tertua di Indonesia. Kerajaan ini terletak di tepi sungai Mahakam, tepatnya di provinsi...', '', '', 'Sumatra Utara', '', 'Kalimantan Timur', '', 'Jawa Barat', '', 'Sulawesi Utara', '', 'b', '', 10),
(968, 40, 'pg', 'Prasasti pada gambar merupakan peninggalan sejarah yang sangat berharga dari Kerajaan...', 'soal_6a12b0c79de41.jpg', 'Perhatikan gambar di bawah ini!', 'Tarumanagara', '', 'Majapahit', '', 'Sriwijaya', '', 'Demak', '', 'a', '', 10),
(969, 40, 'pg', 'Mahapatih Gajah Mada terkenal dengan sumpahnya yang bertekad untuk menyatukan wilayah Nusantara di bawah kekuasaan Kerajaan Majapahit. Sumpah tersebut dikenal dengan nama...', '', '', 'Sumpah Pemuda', '', 'Sumpah Palapa', '', 'Sumpah Setia', '', 'Sumpah Sakti', '', 'b', '', 10),
(970, 40, 'pg', 'Berdasarkan perbandingan kedua peta di atas, pernyataan yang paling benar adalah...', 'soal_6a12b5340d953.jpg', 'Perhatikan gambar di bawah ini!', 'Peta A menampilkan wilayah yang lebih luas tetapi kurang detail dibanding Peta B', '', 'Peta A menampilkan objek yang lebih detail dan rinci dibanding Peta B', '', 'Peta B memiliki tingkat ketelitian gambar yang lebih tinggi dibanding Peta A', '', 'Skala Peta B lebih besar nilainya daripada skala Peta A', '', 'b', '', 10),
(971, 39, 'pg', 'Satrio berangkat sekolah di antar sama keluarganya naik mobil . namun ketika di perjalanan mobilnya mogok. Saat mobil mogok berdasarkan gambar diatas termasuk jenis gaya . . . .', 'soal_6a12b330f06f2.jpeg', 'Perhatikan gambar berikut!', 'pegas', '', 'magnet', '', 'tarikan', '', 'dorongan', '', 'd', '', 10),
(972, 39, 'pg', 'Seorang peserta didik disuruh menggunakan ketapel untuk mengenai buah, gaya yang dimanfaatkan dalam tugas ini adalah…', '', '', 'Gerak', '', 'Magnet', '', 'Otot', '', 'Pegas', '', 'd', '', 10),
(973, 39, 'pg', 'Berdasarkan  gambar di atas Fajar sedang menarik barang  dengan menggunakan ….', 'soal_6a12e6f66a59a.jpeg', 'Perhatikan gambar berikut !', 'Gaya gesek dan gaya otot', '', 'Gaya Tarik  dan gaya magnet', '', 'Gaya magnet dan gaya otot', '', 'Gaya otot dan gaya gravitasi', '', 'a', '', 10),
(974, 39, 'pg', 'Hewan yang berkembang biak dengan bertelur disebut ....', '', '', 'Vivipar', '', 'Ovipar', '', 'Ovovivipar', '', 'Mamalia', '', 'b', '', 10),
(975, 40, 'pg', 'Di daerah dataran tinggi, aktivitas ekonomi masyarakat umumnya berpusat pada sektor perkebunan tanaman tertentu. Jenis tanaman yang paling cocok tumbuh subur di daerah tersebut adalah...', '', '', 'Kelapa, padi, dan bakau', '', 'Teh, kopi, dan sayur-sayuran', '', 'Tebu, kapuk, dan tembakau dataran rendah', '', 'Rumput laut dan sagu', '', 'b', '', 10),
(976, 40, 'pg', 'Upacara penanggulangan lingkungan yang paling efektif untuk mencegah bencana alam seperti pada gambar di atas adalah...', 'soal_6a12b74ce57fd.jpg', 'Perhatikan gambar di bawah ini!', 'Membangun gedung pencakar langit di tepi pantai', '', 'Menanam hutan bakau (mangrove) di sepanjang garis pantai', '', 'Melakukan pengerukan pasir pantai secara besar-besaran', '', 'Membuat tambak udang ilegal', '', 'b', '', 10),
(977, 39, 'pg', 'BerdasarkanTahap metamorposis pada gambar di atas  disebut . . . .', 'soal_6a12b76f1dd4e.jpeg', 'Perhatikan gambar berikut !', 'Berudu', '', 'Kecambah', '', 'Pupa', '', 'Larva', '', 'c', '', 10),
(978, 39, 'pg', 'Manusia bernapas menggunakan ....', '', '', 'paru-paru', '', 'insang', '', 'kulit', '', 'trakea', '', 'a', '', 10),
(979, 39, 'pg', 'Pada metamorfosis tidak sempurna , hewan muda disebut dengan istilah . . . .', '', '', 'Imago', '', 'Larva', '', 'nimfa', '', 'pupa', '', 'c', '', 10),
(980, 40, 'pg', 'Keanekaragaman suku bangsa di Indonesia dipengaruhi oleh banyak faktor fisik lingkungan. Faktor geografis utama yang menyebabkan terbentuknya banyak suku bangsa yang terisolasi dan memiliki budaya berbeda satu sama lain di Indonesia adalah...', '', '', 'Indonesia terletak di jalur perdagangan internasional', '', 'Bentuk wilayah Indonesia yang terdiri dari ribuan pulau (negara kepulauan)', '', 'Indonesia memiliki iklim tropis dengan dua musim', '', 'Adanya penjajahan bangsa asing di masa lalu', '', 'b', '', 10),
(981, 40, 'pg', 'Pekerjaan yang bergerak dalam sektor penyedia jasa ditunjukkan oleh nomor...', 'soal_6a12b8c57c7dc.jpg', 'Perhatikan tabel jenis pekerjaan berikut!', '1 dan 2', '', '2 dan 3', '', '3 dan 4', '', '1 dan 4', '', 'b', '', 10),
(982, 39, 'pg', 'Di sebuah lapangan sekolah, Ani berdiri diam sambil memegang alat penghasil bunyi yang mengeluarkan nada dengan frekuensi tetap 600 Hz. Tiba-tiba, seorang temannya berlari melewati Ani dengan kecepatan 5 m/s sambil mendengarkan suara tersebut. Kecepatan bunyi di udara adalah 340 m/s. Frekuensi bunyi yang didengar teman Ani saat berlari mendekati Ani adalah…..', '', '', 'Lebih kecil dari 600 Hz', '', 'Lebih besar dari 600 Hz', '', 'Sama dengan 600 Hz', '', 'Tidak terdengar sama sekali', '', 'b', '', 10),
(983, 40, 'pg', 'Bapak Koperasi Indonesia yang juga merupakan salah satu tokoh proklamator kemerdekaan Indonesia adalah...', 'soal_6a12b9418a004.png', 'Perhatikan gambar di bawah ini!', 'Ir. Soekarno', '', 'Drs. Mohammad Hatta', '', 'Sutan Sjahrir', '', 'Tan Malaka', '', 'b', '', 10),
(984, 39, 'pg', 'Air pada suhu 37 oC jika dikonversi ke skala Kelvin, Fahrenheit, dan Reaumur adalah….', '', '', 'Kelvin = 98,6 K, Fahrenheit = 300 oF, Reaumur = 29,6', '', 'Kelvin = 310 K, Fahrenheit = 29,6 oF, Reaumur = 98,6', '', 'Kelvin = 310 K, Fahrenheit = 98,6 oF, Reaumur = 29,6', '', 'Kelvin = 29,60 K, Fahrenheit = 98,6 oF, Reaumur = 29,6', '', 'c', '', 10),
(985, 40, 'pg', 'Kerajaan Sriwijaya berkembang menjadi kerajaan maritim yang sangat besar dan menguasai jalur perdagangan di Selat Malaka. Faktor utama yang mendukung Sriwijaya menjadi pusat perdagangan maritim adalah...', '', '', 'Memiliki tanah pertanian yang paling subur di pulau Jawa', '', 'Letaknya yang sangat strategis di jalur pelayaran internasional antara India dan Tiongkok', '', 'Kerajaan tersebut mengisolasi diri dari pedagang asing', '', 'Menghasilkan tambang emas terbesar di dunia', '', 'b', '', 10),
(986, 39, 'pg', 'Pada panel surya terdapat efisiensi yang dinyatakan dalam persentase (%). Makna dari persentase tersebut adalah …', '', '', 'Rasio sel surya yang digunakan terhadap daya listrik yang dihasilkan', '', 'Rasio energi listrik yang dihasilkan terhadap energi matahari yang diterima', '', 'Rasio energi listrik yang diterima terhadap energi matahari yang dihasilkan', '', 'Rasio energi matahari yang diterima terhadap energi listrik yang dihasilkan', '', 'b', '', 10),
(987, 39, 'pg', 'Frekuensi yang dihasilkan oleh audiosonik adalah…..', '', '', '< 20 getaran/detik', '', '> 20.000 getaran/detik', '', '20 – 20.000 getaran/detik', '', '> 20 getaran/detik', '', 'c', '', 10),
(988, 40, 'pg', 'Kompleks candi pada gambar di atas merupakan peninggalan sejarah bercorak... yang dibangun pada masa Kerajaan Mataram Kuno.', 'soal_6a12ba627ffed.jpg', 'Perhatikan gambar di bawah ini!', 'Buddha', '', 'Islam', '', 'Hindu', '', 'Kristen', '', 'c', '', 10),
(989, 40, 'pg', 'Masuknya pengaruh Islam ke Indonesia membawa perubahan dalam sistem pemerintahan, yaitu berubahnya sebutan pemimpin wilayah dari \"Raja\" menjadi...', '', '', 'Sultan', '', 'Kaisar', '', 'Presiden', '', 'Datuk', '', 'a', '', 10),
(990, 40, 'pg', 'Provinsi Papua memiliki kekayaan alam tambang yang sangat terkenal di dunia karena menghasilkan...', 'soal_6a12bb2a831a8.jpg', 'Perhatikan gambar di bawah ini!', 'Aspal alam', '', 'Tembaga dan Emas', '', 'Intan dan Permata', '', 'Gas alam cair (LNG)', '', 'b', '', 10),
(991, 39, 'pg', 'Berdasarkan tabel peristiwa di atas, peristiwa yang menunjukkan ciri-ciri musim gugur ditunjukkan oleh nomor . . . .', 'soal_6a12bbde86ab6.jpeg', 'Perhatikan tabel berikut!', '1 dan 2', '', '2 dan 3', '', '3 dan 4', '', '1 dan 4', '', 'c', '', 10),
(992, 39, 'pg', 'Perubahan air menjadi uap disebut ....', '', '', 'mencair', '', 'membeku', '', 'menguap', '', 'mengembun', '', 'c', '', 10),
(993, 39, 'pg', 'Lina menarik kereta mainan dengan benang. Ia menariknya dengan gaya konstan selama 3 detik di lantai licin. Selama itu, kereta bergerak semakin cepat. Apa yang dapat disimpulkan tentang energi dan gaya yang bekerja?', '', '', 'Gaya hanya bekerja di awal, lalu berhenti', '', 'Kereta dipercepat karena gaya tarik lebih besar dari gaya gesek', '', 'Energi kinetik tetap karena gaya tarik konstan', '', 'Kereta melambat karena energi potensial berubah', '', 'b', '', 10),
(994, 39, 'pg', 'Apa sumber energi utama pada gambar tersebut?', 'soal_6a12be50efb67.jpeg', 'Perhatikan gambar dibawah ini!', 'Air', '', 'Tanah', '', 'Matahari', '', 'Angin', '', 'c', '', 10),
(995, 39, 'pg', 'Bunyi dihasilkan oleh benda yang ....', '', '', 'diam', '', 'berputar', '', 'bergetar', '', 'tenggelam', '', 'c', '', 10),
(996, 44, 'pg', 'Berikut adalah data banyaknya jawaban benar dari 10 siswa yang mengikuti kompetisi matematika SD: 10, 12, 8, 15, 17, 18, 20, 22, 14, 24. Rata-rata banyaknya jawaban benar dari 10 siswa tersebut adalah ...', '', '', '14', '', '16', '', '18', '', '20', '', 'b', '', 10),
(997, 44, 'pg', 'Dinda memiliki tiga kotak berisi buku tulis. Kotak pertama berisi 18 buku tulis. Kotak kedua berisi empat kali dari isi kotak pertama, dan kotak ketiga berisi setengah dari isi kotak kedua. Banyak buku tulis yang dimiliki Dinda dari ketiga kotak tersebut adalah…', '', '', '108', '', '126', '', '144', '', '162', '', 'b', '', 10),
(998, 44, 'pg', 'Jika 40% dari suatu bilangan adalah 120, maka 15% dari bilangan tersebut adalah …', '', '', '35', '', '45', '', '50', '', '60', '', 'b', '', 10),
(999, 44, 'pg', 'Adit berbelanja di toko alat-alat tulis membeli beberapa barang yaitu delapan buku tulis, enam pensil, dua penggaris, dan satu kotak pensil. Harga satu buku Rp6.000,00; satu pensil atau satu penggaris Rp2.500,00; dan satu kotak pensil Rp40.000,00. Jika toko memberikan diskon 15% untuk buku dan 10% untuk kotak pensil, maka jumlah yang harus dibayar oleh Adit adalah ...', '', '', 'Rp92.600', '', 'Rp96.800', '', 'Rp98.400', '', 'Rp102.000', '', 'b', '', 10),
(1000, 44, 'pg', 'FPB dari 72, 108, dan 144 adalah…', '', '', '12', '', '18', '', '24', '', '36', '', 'd', '', 10),
(1001, 44, 'pg', 'KPK dari 14, 21, dan 28 adalah…', '', '', '42', '', '56', '', '84', '', '126', '', 'c', '', 10),
(1002, 44, 'pg', 'Luas bangun datar dibawah ini adalah….', 'soal_6a12c84e66e97.jpeg', 'Perhatikan gambar berikut!', '108', '', '112', '', '196', '', '308', '', 'd', '', 10),
(1003, 44, 'pg', 'Hasil dari 1.368 : 36 × 12 adalah…', '', '', '396', '', '420', '', '456', '', '480', '', 'c', '', 10),
(1004, 44, 'pg', 'Data hasil panen mangga dari tiga kebun milik Pak Hasan disajikan pada diagram batang berikut.', 'soal_6a12c90ab32ab.jpeg', 'Perhatikan gambar dibawah ini!', 'rata-rata hasil panen dari ketiga kebun adalah 35 kg', '', 'selisih hasil panen kebun C dan kebun A adalah 20 kg', '', 'median dari data hasil panen adalah 35 kg.', '', 'jumlah seluruh hasil panen adalah 100 kg.', '', 'c', '', 10),
(1005, 44, 'pg', 'Volume kubus tersebut adalah…', 'soal_6a12c99400950.jpeg', 'Perhatikan gambar berikut ini!', '512 cm', '', '384 cm', '', '256 cm', '', '640 cm', '', 'a', '', 10),
(1006, 44, 'pg', 'Suhu udara di Pegunungan Himalaya tanggal 10 Juni 2026 pukul 05.00 mencapai −35°C. Dua jam kemudian suhu udara mengalami kenaikan sebesar 4 derajat Celsius dan dua jam kemudian suhu mengalami penurunan sebesar 5 derajat Celsius. Pernyataan yang tepat adalah…', '', '', 'pukul 07.00 mencapai −39°C.', '', 'pukul 09.00 mencapai −36°C.', '', 'pukul 07.00 mencapai −29°C.', '', 'pukul 09.00 mencapai −26°C.', '', 'b', '', 10),
(1007, 44, 'pg', 'Jika P adalah 3 cm2, maka luas daerah ABCDEFGH adalah …. cm2', '', 'Perhatikan gambar dibawah ini!', '60', '', '40', '', '36', '', '72', '', 'a', '', 10),
(1008, 44, 'pg', 'Lisa membeli 3 3/4 kg ikan mas, 4 1/2 kg ikan mujaer, dan 6 3/4 kg ikan nila. Berat\r\nikan yang dibeli Lisa adalah...', '', '', '15 ons', '', '150 ons', '', '1.500 ons', '', '15.000 ons', '', 'b', '', 10),
(1009, 44, 'pg', 'Seorang pedagang roti membawa 80 roti untuk dijual. Harga beli setiap roti adalah Rp1.000,00. Pedagang menjual 50 roti dengan harga Rp2.000,00 per roti. Sisa roti dijual dengan harga Rp1.500,00 per roti, tetapi masih tersisa 10 roti yang tidak terjual. Pernyataan yang benar adalah…', '', '', 'Pedagang untung Rp50.000,00', '', 'Pedagang untung Rp25.000,00', '', 'Pedagang rugi Rp10.000,00', '', 'Pedagang tidak untung dan tidak rugi', '', 'a', '', 10),
(1010, 44, 'pg', 'Nina ingin membeli sebuah sepeda seharga Rp3.600.000,00. Untuk membeli sepeda tersebut, Nina menyisihkan sebagian dari uang jajannya sebesar Rp25.000,00 setiap hari sekolah. Jika Nina masuk sekolah rata-rata 20 hari setiap bulan, berapa uang yang harus ditabung Nina setiap hari agar dapat membeli sepeda setelah 12 bulan?', '', '', 'A. Rp12.500,00', '', 'Rp15.000,00', '', 'Rp16.000,00', '', 'Rp18.000,00', '', 'b', '', 10),
(1011, 44, 'pg', 'Adalah …', 'soal_6a12cc0c2731f.jpeg', 'Median dari data berikut:', '0,5', '', '0,625', '', '0,75', '', '1', '', 'b', '', 10),
(1012, 44, 'pg', 'Andi berlibur ke rumah neneknya. Dia berangkat dari rumah pada pukul 5.15 menggunakan bus, dan sampai di rumah neneknya pada pukul 12.10. Jika dalam perjalanan bus yang ditumpanginya berhenti selama 30 menit untuk beristirahat, maka lamanya perjalanan yang ditempuh Andi jika busnya tidak berhenti adalah ...', '', '', '5 jam 25 menit', '', '5 jam 45 menit', '', '6 jam 25 menit', '', '6 jam 55 menit', '', 'c', '', 10),
(1013, 44, 'pg', 'Setiap hari Rani belajar di sekolah mulai pukul 07.00 sampai pukul 12.00. Waktu istirahat dilakukan 2 kali, masing-masing selama 10 menit. Jika dalam satu hari ada 6 jam pelajaran, maka lama 1 jam pelajaran adalah .... menit.', '', '', '40 menit', '', '45 menit', '', '50 menit', '', '60 menit', '', 'b', '', 10),
(1014, 44, 'pg', 'Berapa persentase siswa yang belajar lebih dari 4 jam sehari?', 'soal_6a12cce0df2e2.jpeg', 'Sebuah tabel frekuensi menunjukkan jumlah jam belajar per hari untuk siswa kelas lima. Berikut adalah data dalam tabel:', '20%', '', '25%', '', '30%', '', '35%', '', 'd', '', 10),
(1015, 44, 'pg', 'Gambar berpola di atas terbentuk dari beberapa persegi. Banyak persegi pada gambar ke-7 adalah…', 'soal_6a12d0746820f.jpeg', 'Perhatikan gambar berikut!', '21', '', '25', '', '29', '', '46', '', 'b', '', 10),
(1016, 44, 'pg', 'Perbandingan alas dan tinggi suatu segitiga adalah 3 : 4. Jika luas segitiga tersebut 864 cm², maka panjang alas segitiga adalah … cm.', '', '', '24', '', '30', '', '36', '', '48', '', 'c', '', 10),
(1017, 44, 'pg', 'Perhatikan sifat-sifat bangun datar berikut!\r\ni. mempunyai tiga sisi sama panjang\r\nii. mempunyai tiga simetri lipat\r\niii. mempunyai tiga sudut sama besar\r\niv. besar ketiga sudutnya 90°\r\nSifat-sifat segitiga sama sisi ditunjukkan oleh….', '', '', 'i dan ii', '', 'i dan iii', '', 'ii dan iv', '', 'iii dan iv', '', 'b', '', 10),
(1018, 44, 'pg', 'Hasil dari 5 jam – 175 menit + 3.600 detik adalah….', '', '', '125 menit', '', '145 menit', '', '185 menit', '', '205 menit', '', 'c', '', 10),
(1019, 44, 'pg', 'Ada berapa rute berbeda yang dapat ditempuh oleh seseorang yang berangkat dari M ke N?', 'soal_6a12d207ca91d.jpeg', 'Perhatikan gambar berikut ini!', '9', '', '8', '', '7', '', '6', '', 'd', '', 10),
(1020, 44, 'pg', 'Hasil dari -6 x (15-9) + 24 : (8-2) – 5 adalah...', '', '', '-37', '', '-39', '', '-41', '', '-43', '', 'a', '', 10),
(1021, 44, 'pg', 'Pak Ahmad memiliki sebidang tanah berbentuk persegi panjang dengan ukuran 40 m × 24 m. Tanah tersebut akan dibuat kolam ikan berbentuk lingkaran dengan diameter 14 m. Sisa tanah yang tidak dibuat kolam akan ditanami rumput. Luas tanah yang ditanami rumput adalah… m² (π = 22/7)', '', '', '806', '', '816', '', '826', '', '836', '', 'a', '', 10),
(1022, 44, 'pg', 'Dalam suatu kompetisi, skor akhir dihitung dengan aturan: jawaban benar +4, salah –1, tidak dijawab 0. Andi menjawab 40 soal, mendapat skor 125. Berapa banyak soal yang dijawab benar oleh Andi?', '', '', '30', '', '32', '', '33', '', '35', '', 'c', '', 10),
(1023, 44, 'pg', 'Perhatikan pola bilangan berikut:\r\n2, 6, 12, 20, 30, …\r\nDua suku berikutnya adalah…', '', '', '42, 56', '', '42, 60', '', '40, 52', '', '40, 54', '', 'a', '', 10),
(1024, 44, 'pg', 'Dalam suatu kelas, 18 siswa suka matematika, 15 siswa suka IPA, dan 8 siswa suka keduanya. Jika jumlah siswa seluruhnya 30, maka banyak siswa yang tidak suka matematika maupun IPA adalah…', '', '', '3', '', '4', '', '5', '', '6', '', 'c', '', 10),
(1025, 44, 'pg', 'Seekor ayam menghabiskan 1,5 kg pakan dalam 5 hari. Jika tersedia 12 kg pakan, berapa hari pakan tersebut akan habis untuk 4 ekor ayam?', '', '', '8 hari', '', '10 hari', '', '12 hari', '', '15 hari', '', 'b', '', 10),
(1027, 44, 'pg', 'Hasil dari 125 × 8 adalah...', NULL, '', '100', NULL, '800', NULL, '1.000', NULL, '1.600', NULL, 'c', NULL, 10),
(1028, 45, 'bs', 'Matahari terbit dari arah Timur.', NULL, '', 'Benar', NULL, 'Salah', NULL, '', NULL, '', NULL, 'benar', NULL, 10),
(1029, 45, 'mcma', 'Manakah yang termasuk pulau besar di Indonesia?', NULL, '', 'Jawa', NULL, 'Sumatra', NULL, 'Bali', NULL, 'Kalimantan', NULL, 'a,b,d', NULL, 10),
(1030, 46, 'essay', 'Jelaskan pengertian teks narasi dan berikan contohnya!', NULL, '', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 10),
(1031, 46, 'pg', 'Ke mana Siti pergi pada pagi hari?', NULL, 'Pada suatu pagi yang cerah, Siti pergi ke pasar bersama ibunya. Di pasar, mereka membeli berbagai kebutuhan dapur seperti beras, sayuran, dan ikan segar. Siti sangat senang karena ia boleh memilih buah-buahan kesukaannya. Sesampainya di rumah, ibu memasak dengan penuh kasih sayang untuk keluarga mereka.', 'Ke sekolah', NULL, 'Ke pasar', NULL, 'Ke sungai', NULL, 'Ke kebun', NULL, 'b', NULL, 10),
(1032, 46, 'pg', 'Apa saja yang dibeli Siti dan ibunya di pasar?', NULL, 'Pada suatu pagi yang cerah, Siti pergi ke pasar bersama ibunya. Di pasar, mereka membeli berbagai kebutuhan dapur seperti beras, sayuran, dan ikan segar. Siti sangat senang karena ia boleh memilih buah-buahan kesukaannya. Sesampainya di rumah, ibu memasak dengan penuh kasih sayang untuk keluarga mereka.', 'Baju dan sepatu', NULL, 'Buku dan pensil', NULL, 'Beras, sayuran, dan ikan', NULL, 'Mainan dan permen', NULL, 'c', NULL, 10),
(1033, 46, 'pg', 'Bagaimana perasaan Siti saat di pasar?', NULL, 'Pada suatu pagi yang cerah, Siti pergi ke pasar bersama ibunya. Di pasar, mereka membeli berbagai kebutuhan dapur seperti beras, sayuran, dan ikan segar. Siti sangat senang karena ia boleh memilih buah-buahan kesukaannya. Sesampainya di rumah, ibu memasak dengan penuh kasih sayang untuk keluarga mereka.', 'Sedih', NULL, 'Marah', NULL, 'Bosan', NULL, 'Senang', NULL, 'd', NULL, 10),
(1034, 46, 'essay', 'Ceritakan kembali isi bacaan di atas dengan kata-katamu sendiri!', NULL, 'Pada suatu pagi yang cerah, Siti pergi ke pasar bersama ibunya. Di pasar, mereka membeli berbagai kebutuhan dapur seperti beras, sayuran, dan ikan segar. Siti sangat senang karena ia boleh memilih buah-buahan kesukaannya. Sesampainya di rumah, ibu memasak dengan penuh kasih sayang untuk keluarga mereka.', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 10),
(1035, 45, 'pg', 'Di mana proses fotosintesis terjadi?', NULL, 'Fotosintesis adalah proses pembuatan makanan oleh tumbuhan. Proses ini terjadi di dalam klorofil yang terdapat pada daun. Tumbuhan membutuhkan cahaya matahari, air, dan karbondioksida untuk melakukan fotosintesis. Hasil dari fotosintesis adalah oksigen yang kita hirup setiap hari.', 'Akar', NULL, 'Batang', NULL, 'Klorofil pada daun', NULL, 'Bunga', NULL, 'c', NULL, 10),
(1036, 45, 'pg', 'Apa saja yang dibutuhkan tumbuhan untuk fotosintesis?', NULL, 'Fotosintesis adalah proses pembuatan makanan oleh tumbuhan. Proses ini terjadi di dalam klorofil yang terdapat pada daun. Tumbuhan membutuhkan cahaya matahari, air, dan karbondioksida untuk melakukan fotosintesis. Hasil dari fotosintesis adalah oksigen yang kita hirup setiap hari.', 'Air dan garam', NULL, 'Cahaya, air, dan CO₂', NULL, 'Tanah dan pupuk', NULL, 'Angin dan hujan', NULL, 'b', NULL, 10),
(1037, 45, 'bs', 'Hasil fotosintesis adalah oksigen yang berguna bagi manusia.', NULL, 'Fotosintesis adalah proses pembuatan makanan oleh tumbuhan. Proses ini terjadi di dalam klorofil yang terdapat pada daun. Tumbuhan membutuhkan cahaya matahari, air, dan karbondioksida untuk melakukan fotosintesis. Hasil dari fotosintesis adalah oksigen yang kita hirup setiap hari.', 'Benar', NULL, 'Salah', NULL, '', NULL, '', NULL, 'benar', NULL, 10),
(1038, 45, 'essay', 'Jelaskan 3 contoh kegiatan ekonomi di lingkungan sekitarmu!', NULL, '↑ lihat baris atas', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, 15),
(1041, 46, 'pg', 'tes', 'soal_6a14f0aa84c3f.jpg', 'tes', 'tes', 'soal_6a14f0aa8527e.jpeg', 'tes', '', 'tes', '', 'tes', '', 'a', '', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_ujian`
--

CREATE TABLE `token_ujian` (
  `id` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `token_ujian`
--

INSERT INTO `token_ujian` (`id`, `token`, `tanggal`, `jam_mulai`, `jam_selesai`, `keterangan`, `status`, `created_at`) VALUES
(3, 'COBA', '2026-05-28', '01:00:00', '23:59:00', 'Gelombang1 - Sesi 1', 'aktif', '2026-05-28 00:12:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `peserta_id` int(11) NOT NULL,
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `token_id` int(11) DEFAULT NULL,
  `jadwal_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `soal_order` text DEFAULT NULL,
  `pelanggaran` int(11) NOT NULL DEFAULT 0,
  `last_activity` datetime DEFAULT NULL,
  `cache_version` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id`, `peserta_id`, `waktu_mulai`, `waktu_selesai`, `nilai`, `token_id`, `jadwal_id`, `kategori_id`, `soal_order`, `pelanggaran`, `last_activity`, `cache_version`) VALUES
(14, 463, '2026-05-28 08:01:17', '2026-05-28 08:02:51', 30, 3, 11, 39, '[\"938\",\"994\",\"953\",\"935\",\"973\",\"942\",\"959\",\"982\",\"986\",\"951\",\"954\",\"978\",\"964\",\"960\",\"977\",\"972\",\"987\",\"966\",\"950\",\"946\",\"931\",\"974\",\"940\",\"979\",\"971\",\"934\",\"993\",\"932\",\"936\",\"992\",\"984\",\"991\",\"944\",\"995\",\"955\",\"937\",\"948\",\"933\",\"939\",\"957\"]', 0, '2026-05-28 08:02:17', 0),
(15, 483, '2026-05-28 08:15:28', '2026-05-28 08:16:50', 23, 3, 11, 39, '[\"987\",\"957\",\"951\",\"955\",\"931\",\"993\",\"982\",\"984\",\"959\",\"994\",\"932\",\"950\",\"964\",\"938\",\"995\",\"986\",\"935\",\"948\",\"937\",\"934\",\"966\",\"972\",\"979\",\"953\",\"991\",\"973\",\"992\",\"974\",\"977\",\"942\",\"944\",\"940\",\"933\",\"936\",\"939\",\"960\",\"954\",\"946\",\"978\",\"971\"]', 0, '2026-05-28 08:16:28', 0),
(16, 484, '2026-05-28 09:09:05', '2026-05-28 09:09:31', 3, 3, 11, 39, '[\"977\",\"942\",\"957\",\"955\",\"995\",\"982\",\"946\",\"950\",\"978\",\"973\",\"951\",\"991\",\"954\",\"974\",\"935\",\"959\",\"939\",\"940\",\"979\",\"933\",\"936\",\"993\",\"938\",\"932\",\"944\",\"934\",\"953\",\"960\",\"966\",\"931\",\"992\",\"972\",\"984\",\"937\",\"986\",\"987\",\"971\",\"948\",\"964\",\"994\"]', 0, '2026-05-28 09:09:05', 0),
(17, 485, '2026-05-28 16:22:51', NULL, NULL, 3, 11, NULL, '[\"984\",\"954\",\"955\",\"959\",\"951\",\"933\",\"960\",\"977\",\"982\",\"942\",\"992\",\"934\",\"994\",\"957\",\"935\",\"972\",\"978\",\"950\",\"953\",\"944\",\"986\",\"974\",\"973\",\"937\",\"948\",\"964\",\"991\",\"966\",\"938\",\"987\",\"946\",\"940\",\"936\",\"971\",\"979\",\"995\",\"931\",\"932\",\"993\",\"939\"]', 7, '2026-05-28 17:41:46', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `foto_profil` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'sekolah',
  `kelas_diampu` varchar(20) DEFAULT NULL,
  `sekolah_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nama_lengkap`, `foto_profil`, `password`, `role`, `kelas_diampu`, `sekolah_id`) VALUES
(1, 'admin', 'Imam Nurmana', 'assets/uploads/profil/profil_1_1779203044.jpeg', '$2y$10$bexgP4Imawk.2yCCM/6xguh03BmfN.hJ2/g7KaV2Zt0LX3hrhq5KK', 'admin_kecamatan', NULL, NULL),
(21, 'korektor', 'Tim Korektor', NULL, '$2y$10$jQMD2sB5C8.1d2RM0So5qOEy8JFWNHJfQbWo2tHqnvt.ic4k5kSNK', 'korektor', NULL, NULL),
(37, '20254469', NULL, NULL, '$2y$10$HG5jqtW0ZHpLNehZibvUiO9oryF0jz/HMCwR.xRbEgF1kv7QgCKtG', 'sekolah', NULL, 31),
(38, '20254017', NULL, NULL, '$2y$10$gVCSqAZKK7tSULK8a/zPTucOulJrWUowMAO1XGgaBBGk1ZBFvjSeC', 'sekolah', NULL, 32),
(39, '20231581', NULL, NULL, '$2y$10$hML4vFb4eG9LGbW1iSzFRubEF5XcHJlZ2Q693Jbt0J83aiteWMkJa', 'sekolah', NULL, 33),
(40, '20254576', NULL, NULL, '$2y$10$0ZDAvqpcHYPxTtBdXizyY.bB/ZVAtA4M5mlKmbvbYuCMQFG0ANon.', 'sekolah', NULL, 34),
(41, '20231577', NULL, NULL, '$2y$10$fFmjnfOSPlixk9fbENcq8OhsUISJabSjZmiDFLYiuof2ze8BUBNRG', 'sekolah', NULL, 35),
(42, '69864695', NULL, NULL, '$2y$10$.0U1Q6fnfXepLLAYZNr69OLRBTDHtMpjlryqU8TQLCb7n7aRE9AFm', 'sekolah', NULL, 36),
(43, '20223719', NULL, NULL, '$2y$10$zhMXcZfaagccgc/5yPcF0.l/3stByLpUeW.rP.aP2mDxMkOMNT/cW', 'sekolah', NULL, 37),
(44, '20223700', NULL, NULL, '$2y$10$ssgcyPTnfe0mldhhvgmEKebQTIs0lOPurLlePuHsV.RHKHzAcDkTu', 'sekolah', NULL, 38),
(45, '20223718', NULL, NULL, '$2y$10$HzvsVB9u5e8Xn5/wy/OszuIfAWIViOnmZfDv0ls2.Ic.CX4CeSyU.', 'sekolah', NULL, 39),
(46, '20223702', NULL, NULL, '$2y$10$UaaF.BSW0yl6NOOaG5a9iugoZ1cIL.Qpb//fBwyncCzgvW3K8FEaG', 'sekolah', NULL, 40),
(47, '20223701', NULL, NULL, '$2y$10$VcmFyp1rInvGZa597swyMel/qEGsple3p5XqeGChDZD.Js7JA8if6', 'sekolah', NULL, 41),
(48, '20223699', NULL, NULL, '$2y$10$wRdUExFjAfLkuKGCpsqTF.TgJRl8dkPOZUT51b1bx6Y6AOsX8y9lS', 'sekolah', NULL, 42),
(49, '20223546', NULL, NULL, '$2y$10$PkpVERHKpQnaMEAJ.Iigt.p3z6zUWLEAFkzjqcK7xAJYe9oyeV/z2', 'sekolah', NULL, 43),
(50, '20223547', NULL, NULL, '$2y$10$jOFGLf/SJbMLpwfa/sDTrekS3RrYubm5j9u/fF86f1nHfTkVaOEM2', 'sekolah', NULL, 44),
(51, '20223561', NULL, NULL, '$2y$10$s.gkOSqBmafOU3ROw29xEO5WOgXQfvG6qFKVa0SMqLkl9R1CuU2mC', 'sekolah', NULL, 45),
(52, '69952525', NULL, NULL, '$2y$10$ejsscBbx5O4zKljZ1qcWNeSB4hanp47IaBAOLRAWNoqkK/Vs74Jcq', 'sekolah', NULL, 46),
(53, '20223558', NULL, NULL, '$2y$10$36PHHYIQpj8Mdm3BhiJsB.5TxHNmSlHUTzlTY6.Pmy9X600nTjrTO', 'sekolah', NULL, 47),
(54, '20223557', NULL, NULL, '$2y$10$QQ7X4c7TTkC62A4Weer5KOBfNP3OJ/Q.WUqa.BleU5PN/fZWZYBOe', 'sekolah', NULL, 48),
(55, '20223559', NULL, NULL, '$2y$10$F7Vn2..JtqEM8QxGaAbSIeCMHK97Fk8ulVupl7CGjwjtNaQZF/7DC', 'sekolah', NULL, 49),
(56, '20222725', NULL, NULL, '$2y$10$reJn3ltbutK9OjKhxkVVKOK3dN6UZ17/T9MaT1jBwl7eH9d8Qe9cC', 'sekolah', NULL, 50),
(57, '20222724', NULL, NULL, '$2y$10$B.4Mk4o/n7aTsU60vm2zCus2FOENRWferrNxIy9crFmjvaO08xvhy', 'sekolah', NULL, 51),
(58, '20222726', NULL, NULL, '$2y$10$MBgOuHvS6lnR3VfYLh3HRuYSbRHFvPweuE2m1CvvbJRMbWU0OWBrm', 'sekolah', NULL, 52),
(59, '20270558', NULL, NULL, '$2y$10$LMxh0cjMwwLX/NqL.hSyou0Ltr03UPc9jNaThhvciqYhEufCAKFOu', 'sekolah', NULL, 53),
(60, '20253149', NULL, NULL, '$2y$10$NQOwI7MN.JhrDjX42igEfumc4dIyIKPUBdCOO4IGA9b9AfoT3D7Qy', 'sekolah', NULL, 54),
(61, '20231612', NULL, NULL, '$2y$10$eLfG80zunl4A86vUtahRduwVef7c5s77e6HH90R98o/jdyNlpO5au', 'sekolah', NULL, 55),
(62, '20223560', NULL, NULL, '$2y$10$KdffOXtFqs3eQ945GFGdXuxgIZay5DQK7EqrK8QRVcBD1OgZc5xlm', 'sekolah', NULL, 56),
(63, '20253942', NULL, NULL, '$2y$10$PZEVdh1Wy0yROwKgaJKi9.naT1zLCncpxuN79x/UvaveuvIG1peue', 'sekolah', NULL, 57),
(64, '69873993', NULL, NULL, '$2y$10$GybOqmBQ1Orva0wg8JteO.BZfliCgOeIn0wrtgeotHAp2a4DOKDDi', 'sekolah', NULL, 58),
(65, '20253944', NULL, NULL, '$2y$10$slxezCjN/EEazufZ2MJp0uYVTrAWWM.ousP.wK9Knlc58h6e0jTGm', 'sekolah', NULL, 59),
(66, '69967110', NULL, NULL, '$2y$10$GUBJdY4hAApZ0t/CcSMz5eecJTMV4NGeau5o5hbaa7RLqbKifmoGW', 'sekolah', NULL, 60),
(67, '70045119', NULL, NULL, '$2y$10$UrjdjsD6lPtexe7gytTTjuiPDjkY1jjqLLnWFR8d41.d3lIma.AiO', 'sekolah', NULL, 61),
(68, '20276420', NULL, NULL, '$2y$10$k7vgCOn/IoMDKtwh6NDUpOgsHpG8cLWLqpgXkW7eh2Nc6UuoMQF9G', 'sekolah', NULL, 62),
(69, '69909179', NULL, NULL, '$2y$10$i2s/5/mhg2CPq.Q98XZ/m.pxgK2ax.RXEfBKLXdPGX/lUWSTrHcMW', 'sekolah', NULL, 63),
(70, '69943820', NULL, NULL, '$2y$10$1H2lVxeuinp5I/7sN/ICLOMhoHjHZOMxST1dVWraeZowsUmI0WPQ.', 'sekolah', NULL, 64),
(71, '20231631', NULL, NULL, '$2y$10$hszsgQwgXT3c.g6W7QjwiOK.D041Zl5rO21UxFVzQvOmujplQLnxS', 'sekolah', NULL, 65),
(72, '20231546', NULL, NULL, '$2y$10$o3Y2irSXtNfgw9pKjC7T1uSKz1JsZy2oABhvCZE8ye6G6F6upvxD.', 'sekolah', NULL, 66),
(73, '70036065', NULL, NULL, '$2y$10$Iy1okpXj9agtWa7xtTKhx.0ZkXTeTFFqOF2ho/OKvtARjBCysfSSi', 'sekolah', NULL, 67),
(74, '20254042', NULL, NULL, '$2y$10$pJORejUIhzVmdNFqwI1X6eJJr0z4EiGIZAptRH/gLLGiaITVfdOvu', 'sekolah', NULL, 68),
(75, '70031879', NULL, NULL, '$2y$10$DlJRmEpSBoEPWWtwWqx82urMxuiALBZsxdbDs2k11P/UZv1Dnkbd.', 'sekolah', NULL, 69),
(76, '69948054', NULL, NULL, '$2y$10$G5zb7C6BbxBjecNsDxEK1.0aC/0K1mUSFkqlBFdClwZUwSuECo1Dq', 'sekolah', NULL, 70),
(77, '20231597', NULL, NULL, '$2y$10$tqIYsRZIzZTRm9w8IGQ6Pe4GV.T.uqVAaPduOrgw9y.N2KyUMtvXC', 'sekolah', NULL, 71),
(78, '69830096', NULL, NULL, '$2y$10$kRjEdwcVHO7oW1oD.qVkDegT/VyqvPdj4F8viVR3hivm9ERBau1GK', 'sekolah', NULL, 72),
(79, '70004891', NULL, NULL, '$2y$10$bLqfSMr92oErRICx6PO4TOWHQL8MRiPlND1gh7scGca02DBHEEcJy', 'sekolah', NULL, 73),
(80, '20223556', NULL, NULL, '$2y$10$wQQnrdBecNkqhB4aUxE0c.6QAPMHoX0sMXZQcz82/UaFJCNL6WXVG', 'sekolah', NULL, 74),
(81, '20223554', NULL, NULL, '$2y$10$3UKrnbxzYNfAS1FGbILDounwWEhRYFQLfkWzwf9Trn7it9zCxw7l2', 'sekolah', NULL, 75),
(82, '20254028', NULL, NULL, '$2y$10$x.uUwUl5asueI8y0CHXPieGxYkkn0KZ5Ts/NURSXw1f.zD1Fhc5Wa', 'sekolah', NULL, 76),
(83, '20223552', NULL, NULL, '$2y$10$Hz38WqYqKTNV2OFNm0nEeO08sg1aHjo5l8l3gLyBfmO1DSTEXItvi', 'sekolah', NULL, 77),
(84, '20254552', NULL, NULL, '$2y$10$mbJPQvzOJGRP/Ha1KaYJbuqd140vKzS6WMRkdVc5eunWGgUri3bc.', 'sekolah', NULL, 78),
(85, '20222740', NULL, NULL, '$2y$10$96HEoykZw2ekMPH3ScTe.OXLZBoCn0yvZ.gGHYCtUYufTuJTTru6S', 'sekolah', NULL, 79),
(86, '20222745', NULL, NULL, '$2y$10$OUKkzpk9pntnz6jiKEEVuOheo6X20wN01C5DDsPCBAkYN4OY.T3KO', 'sekolah', NULL, 80),
(87, '20222744', NULL, NULL, '$2y$10$ObDWVDkeQjY.8wPWbA/Mn.1S7p.Zch9WpQLsl/4pfO31Hc6Hzokyq', 'sekolah', NULL, 81),
(88, '20222743', NULL, NULL, '$2y$10$eahM33kvxOJxvLR4cZCVAu9sc1fOUJiT8OPRRX6F.IrbgSmkmdaki', 'sekolah', NULL, 82),
(89, '20222742', NULL, NULL, '$2y$10$qwwXBCOML9ZBB6.8RZuNPeYTMfrNJrkeHdVG6EZffNO1RZMjpoPiq', 'sekolah', NULL, 83),
(90, '20253870', NULL, NULL, '$2y$10$EIMSsaZFOymoiGfCBhKZwOvBC3WpVUwIj0/0EF4EBOTKyogVQwk6m', 'sekolah', NULL, 84),
(91, '20222739', NULL, NULL, '$2y$10$T5YrU4SMDw4KXzokIgfqC./fzvBiXsVM.6929Z4hJd0UonvJPVJkW', 'sekolah', NULL, 85),
(92, '20222738', NULL, NULL, '$2y$10$0FNeNDORlq5KVnUr7JN0zen/3UBD7aTGBp..w6e1Syga/gWBDS7LO', 'sekolah', NULL, 86),
(93, '20222737', NULL, NULL, '$2y$10$vm77MDda/dU4Z8wtOOH1.e.g9xlgR60vh8Cei8Vb4eK3TVRr4l9lC', 'sekolah', NULL, 87),
(94, '20222736', NULL, NULL, '$2y$10$Pf9m9nPZqjg91QkZB4QkVOW8OBTH.uw40csMH8Ko1sdx1YQxXU2TO', 'sekolah', NULL, 88),
(95, '20253939', NULL, NULL, '$2y$10$.S8iMCnmteo.rwMpUqFMueT5ulKp46sLFZmqXppL6xaYJccRgrCAu', 'sekolah', NULL, 89),
(96, '20222749', NULL, NULL, '$2y$10$WnxqM/ILuUGrRGE3NyU6T.1GjEj2DPcDcGtaYaeSUTTkLEUZQV9t2', 'sekolah', NULL, 90),
(97, '20222762', NULL, NULL, '$2y$10$wJmg8Udn2bXykQcVbQLEGegf4GMXGVCE/hL3NTAq3d/j2i7kz0a3W', 'sekolah', NULL, 91),
(98, '20222761', NULL, NULL, '$2y$10$XEE6lOesHfFWdUiqddhcwuE8WCT0eMcrI.M03zLMyPtf4l7KGRXsW', 'sekolah', NULL, 92),
(99, '20222760', NULL, NULL, '$2y$10$hbTvo5dA57isl1sWlb6Hfu/DUNtPP0Ro6FtWlbnaDFCf/phyENyDC', 'sekolah', NULL, 93),
(100, '20222759', NULL, NULL, '$2y$10$Osak0q8gKROPRdeDg7KQn.NHABvtfTjlJTDB2mrcYnfi3nI1NTELu', 'sekolah', NULL, 94),
(101, '70004992', NULL, NULL, '$2y$10$gAsVHgQqBRjLYsAN1b0fkesBc1YoPkFTL2TLp.qReIkyQKllQbcfO', 'sekolah', NULL, 95),
(102, '20270816', NULL, NULL, '$2y$10$8sNQea4b1qzq00GDN99r0.W.DUdBMvx/H3O3vjHUjs3ieSUQkGh2i', 'sekolah', NULL, 96),
(103, '70061635', NULL, NULL, '$2y$10$fxu3pq1/veS98x39g4BPbe54OfNNP5WtiY/ceKnV/lZu.mgu/7JIy', 'sekolah', NULL, 97),
(104, '70001481', NULL, NULL, '$2y$10$C07KUtCpDPNzXkLrDfX.z.BZ8QJBMYpbinLecQUYHrUTbhlOGL772', 'sekolah', NULL, 98),
(105, '69946830', NULL, NULL, '$2y$10$mAmeXoPqvkpglV/jFFbMbeUAzR9zn6mDag/MmfHVXr45Sg4Y3Wh.q', 'sekolah', NULL, 99),
(106, '20253903', NULL, NULL, '$2y$10$i7UDtGdZMDD7VMHcVHFgNuz0Q0OXEZ3Fl3DoimBzNjo6eVu8XD6Hu', 'sekolah', NULL, 100),
(107, '70043141', NULL, NULL, '$2y$10$5LAEWF0OJI.osaKNJlW60eabsO6g4THfokGlEQfUqgm4CQpruNih.', 'sekolah', NULL, 101),
(108, '69978922', NULL, NULL, '$2y$10$K4wBPSU2bvECE/u2qv3.3utYzCuMohgbT.WS0j82h6WdOnt2QXGGG', 'sekolah', NULL, 102),
(109, '69988637', NULL, NULL, '$2y$10$bn3yqRpAtvrx.Di0c4DTBusn2NUPamPRQvPe9BeHh9UhrbPvQHmdm', 'sekolah', NULL, 103),
(110, '69984907', NULL, NULL, '$2y$10$vCma44j40E6E56ON2fG/OOhPbrqARKS5lm7K7Y9Bf7atiqs2/MHla', 'sekolah', NULL, 104),
(111, '20253948', NULL, NULL, '$2y$10$jGiE3bkCqiaXWn/1Ja9K6OWn9LjVBO2mngukY0rjvdXS8Y1oIOkz2', 'sekolah', NULL, 105),
(112, '70061779', NULL, NULL, '$2y$10$Pg.85T2NrZnnHrBxn/jCx.X6Z7F3ezXPsjAGmseK5oP8idBnSfdUy', 'sekolah', NULL, 106),
(113, '70052712', NULL, NULL, '$2y$10$qaD4Z0Sjo6xf.pfxIr3i0uyiDdPUheE1GgycK2LYf7wTk.5isfkoS', 'sekolah', NULL, 107),
(114, '20222741', NULL, NULL, '$2y$10$g9vh02K/fb15qXNm4B49iOL1LH3atnFjDwOTGfd8KB6eromFASScG', 'sekolah', NULL, 108),
(115, '69786294', NULL, NULL, '$2y$10$iKEf1Xt5HsiaaqU64RyVN..PuBj4HRN93gv7827LMPKPHHxW8uBSu', 'sekolah', NULL, 109);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indeks untuk tabel `backup_history`
--
ALTER TABLE `backup_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `export_log`
--
ALTER TABLE `export_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_hasil_ujian` (`ujian_id`,`peserta_id`),
  ADD KEY `idx_hasil_peserta` (`peserta_id`),
  ADD KEY `idx_hasil_jadwal` (`jadwal_id`),
  ADD KEY `idx_hasil_nilai` (`nilai`),
  ADD KEY `idx_hasil_peserta_jadwal` (`peserta_id`,`jadwal_id`),
  ADD KEY `idx_hasil_kategori_nilai` (`kategori_id`,`nilai`),
  ADD KEY `idx_hu_dinilai` (`essay_dinilai`);

--
-- Indeks untuk tabel `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_ujian_peserta_soal` (`ujian_id`,`peserta_id`,`soal_id`),
  ADD KEY `fk_jawaban_soal` (`soal_id`),
  ADD KEY `idx_jawaban_peserta` (`peserta_id`),
  ADD KEY `idx_jawaban_ujian_soal` (`ujian_id`,`soal_id`),
  ADD KEY `idx_jaw_skor` (`skor_essay`);

--
-- Indeks untuk tabel `kategori_soal`
--
ALTER TABLE `kategori_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_waktu` (`waktu`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_key` (`setting_key`);

--
-- Indeks untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_kode_peserta` (`kode_peserta`),
  ADD KEY `fk_peserta_sekolah` (`sekolah_id`),
  ADD KEY `idx_peserta_sekolah_kelas` (`sekolah_id`,`kelas`),
  ADD KEY `idx_pes_kelas` (`kelas`);

--
-- Indeks untuk tabel `rate_limit`
--
ALTER TABLE `rate_limit`
  ADD PRIMARY KEY (`rl_key`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sekolah_jenjang` (`jenjang`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_soal_kategori` (`kategori_id`),
  ADD KEY `idx_soal_kategori_tipe` (`kategori_id`,`tipe_soal`),
  ADD KEY `idx_soal_tipe` (`tipe_soal`);

--
-- Indeks untuk tabel `token_ujian`
--
ALTER TABLE `token_ujian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_token` (`token`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ujian_peserta` (`peserta_id`),
  ADD KEY `idx_ujian_peserta_selesai` (`peserta_id`,`waktu_selesai`),
  ADD KEY `idx_ujian_status` (`waktu_selesai`,`waktu_mulai`),
  ADD KEY `idx_ujian_peserta_jadwal` (`peserta_id`,`jadwal_id`),
  ADD KEY `idx_ujian_jadwal` (`jadwal_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_username` (`username`),
  ADD KEY `fk_users_sekolah` (`sekolah_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `backup_history`
--
ALTER TABLE `backup_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `export_log`
--
ALTER TABLE `export_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `jadwal_ujian`
--
ALTER TABLE `jadwal_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT untuk tabel `kategori_soal`
--
ALTER TABLE `kategori_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1458;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1215;

--
-- AUTO_INCREMENT untuk tabel `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1042;

--
-- AUTO_INCREMENT untuk tabel `token_ujian`
--
ALTER TABLE `token_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_ujian`
--
ALTER TABLE `hasil_ujian`
  ADD CONSTRAINT `fk_hasil_peserta` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hasil_ujian` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `fk_jawaban_peserta` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jawaban_soal` FOREIGN KEY (`soal_id`) REFERENCES `soal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_jawaban_ujian` FOREIGN KEY (`ujian_id`) REFERENCES `ujian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `fk_peserta_sekolah` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_soal_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_soal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `fk_ujian_peserta` FOREIGN KEY (`peserta_id`) REFERENCES `peserta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_sekolah` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
