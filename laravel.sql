-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Sep 2019 pada 17.23
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Ella Endah Nasyiah S.I.Kom', 'nihil', 37, 'Gg. Gedebage Selatan No. 255, Padangsidempuan 15610, Maluku'),
(2, 'Olivia Zahra Wijayanti', 'iste', 26, 'Jln. Basket No. 815, Kotamobagu 42455, KalUt'),
(3, 'Hafshah Elvina Yolanda', 'quia', 29, 'Gg. Bak Mandi No. 64, Pontianak 67003, DIY'),
(4, 'Olivia Laksmiwati S.Kom', 'magnam', 27, 'Jln. Cihampelas No. 756, Bitung 10170, SumUt'),
(5, 'Jasmin Winarsih', 'ipsa', 40, 'Gg. Thamrin No. 777, Cilegon 86745, MalUt'),
(6, 'Emas Artawan Budiman S.Farm', 'qui', 33, 'Psr. Rajawali Timur No. 971, Padangsidempuan 19135, JaBar'),
(7, 'Mahfud Jati Pradana', 'quaerat', 28, 'Jln. Pasirkoja No. 90, Batu 70692, JaTeng'),
(8, 'Lulut Adriansyah', 'perspiciatis', 30, 'Jr. Bak Air No. 226, Semarang 40083, DKI'),
(9, 'Hesti Pertiwi', 'eligendi', 36, 'Ds. Taman No. 613, Semarang 17687, SumBar'),
(10, 'Eli Permata', 'mengajar', 27, 'Jr. Bhayangkara No. 713, Pangkal Pinang 43697, JaTeng'),
(11, 'Tira Halima Novitasari', 'atque', 28, 'Gg. Basuki No. 909, Banjarbaru 92568, Aceh'),
(12, 'Silvia Purwanti M.Pd', 'sint', 35, 'Jr. Pelajar Pejuang 45 No. 437, Medan 96419, SumUt'),
(13, 'Jane Wahyuni', 'et', 31, 'Jln. Ciumbuleuit No. 729, Palu 80742, SumSel'),
(14, 'Among Raden Saputra S.Farm', 'quasi', 27, 'Jln. Rajawali Timur No. 155, Magelang 32906, SulTra'),
(15, 'Paramita Nasyidah', 'velit', 25, 'Psr. Arifin No. 577, Tangerang Selatan 73324, SulSel'),
(16, 'Kiandra Hassanah', 'aperiam', 40, 'Ds. Wahid No. 609, Malang 13383, Maluku'),
(17, 'Warsita Wibowo S.Gz', 'et', 27, 'Psr. Zamrud No. 988, Bekasi 47460, JaTim'),
(18, 'Gadang Cakrawala Anggriawan M.Farm', 'voluptatem', 40, 'Kpg. Cut Nyak Dien No. 866, Kupang 59862, KalUt'),
(19, 'Agnes Lestari', 'optio', 32, 'Jr. Panjaitan No. 561, Bitung 57988, SulSel'),
(20, 'Fitriani Pia Laksmiwati', 'non', 26, 'Ki. Basuki Rahmat  No. 120, Tangerang 49067, Lampung'),
(21, 'Najam Jono Megantara S.Farm', 'asperiores', 39, 'Ki. Ahmad Dahlan No. 488, Manado 54100, SumSel'),
(22, 'Sari Ayu Riyanti', 'quibusdam', 39, 'Ki. Jambu No. 932, Palu 96537, Papua'),
(23, 'Jatmiko Lazuardi', 'ut', 33, 'Dk. Ters. Buah Batu No. 623, Padang 13558, JaTim'),
(24, 'Tami Ciaobella Wijayanti S.H.', 'officia', 40, 'Psr. Gegerkalong Hilir No. 208, Padangsidempuan 73032, SulSel'),
(25, 'Fathonah Yuliarti S.Sos', 'voluptas', 35, 'Ds. Achmad Yani No. 625, Sungai Penuh 17895, Banten'),
(26, 'Siska Restu Puspasari', 'nihil', 35, 'Gg. Cokroaminoto No. 960, Tanjungbalai 22799, Lampung'),
(27, 'Dadi Prasasta S.Sos', 'vel', 37, 'Jln. Adisumarmo No. 577, Batu 68171, KepR'),
(28, 'Ozy Emil Hardiansyah', 'sapiente', 39, 'Kpg. Dewi Sartika No. 137, Binjai 27477, SumBar'),
(29, 'Oliva Dewi Widiastuti S.Pd', 'nulla', 34, 'Psr. Baranang Siang Indah No. 201, Administrasi Jakarta Selatan 91642, Bali'),
(30, 'Martana Nugroho M.Pd', 'dolorum', 29, 'Psr. Veteran No. 963, Tangerang Selatan 70262, Papua'),
(31, 'Jelita Yuliarti', 'iste', 32, 'Ki. Basuki Rahmat  No. 698, Cimahi 19654, Riau'),
(32, 'Asmianto Tampubolon', 'ducimus', 26, 'Ki. Basudewo No. 370, Administrasi Jakarta Timur 92369, KepR'),
(33, 'Cemplunk Damanik', 'ut', 33, 'Gg. Acordion No. 616, Bogor 76758, JaBar'),
(34, 'Putu Lanang Setiawan', 'velit', 37, 'Kpg. Gajah No. 86, Sibolga 21025, KepR'),
(35, 'Nadia Laksmiwati M.Kom.', 'dolor', 38, 'Jln. Imam No. 510, Palembang 26924, KalBar'),
(36, 'Kasim Viktor Mandala M.M.', 'assumenda', 40, 'Ds. Bakhita No. 460, Bekasi 33296, Maluku'),
(37, 'Eli Humaira Wahyuni', 'voluptas', 28, 'Jr. Bakau No. 502, Pematangsiantar 88971, DIY'),
(38, 'Hasta Waluyo', 'similique', 27, 'Jr. Madiun No. 990, Tual 99050, Gorontalo'),
(39, 'Hasim Prasetyo M.TI.', 'in', 38, 'Ki. Raden Saleh No. 562, Cirebon 14915, KalBar'),
(40, 'Lili Permata', 'et', 35, 'Gg. Honggowongso No. 839, Makassar 60659, SulUt'),
(41, 'Darmanto Jatmiko Pradana', 'iusto', 30, 'Ds. Baung No. 612, Lubuklinggau 24139, SulBar'),
(42, 'Kasim Saptono', 'minima', 31, 'Dk. Lumban Tobing No. 574, Gunungsitoli 98183, JaBar'),
(43, 'Adikara Anggriawan', 'totam', 40, 'Gg. Mulyadi No. 667, Metro 21963, PapBar'),
(44, 'Kanda Rajasa S.T.', 'non', 30, 'Gg. Tambun No. 367, Makassar 14391, MalUt'),
(45, 'Hairyanto Latupono', 'aperiam', 26, 'Kpg. Sutarjo No. 909, Ternate 77263, KalUt'),
(46, 'Dono Jaka Suryono', 'saepe', 26, 'Jln. Gajah No. 464, Pangkal Pinang 79089, NTT'),
(47, 'Gandi Anggriawan', 'magni', 25, 'Jln. Kali No. 265, Tangerang Selatan 33029, SulTra'),
(48, 'Reksa Kusuma Manullang S.IP', 'animi', 36, 'Ki. Yohanes No. 531, Palangka Raya 53628, Lampung'),
(49, 'Lalita Hartati', 'illum', 27, 'Ki. Bara No. 368, Subulussalam 73459, SulBar'),
(50, 'Pardi Rajasa', 'sunt', 36, 'Jln. Baja Raya No. 345, Makassar 66591, KalTeng');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
