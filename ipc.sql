-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 09:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipc`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumens`
--

CREATE TABLE `dokumens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `judul_umum` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` date NOT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `halaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abstrak` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kata_kunci` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publiser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul_khusus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chapter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counsel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_putusan` date DEFAULT NULL,
  `nomor_seri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_kejadian` date DEFAULT NULL,
  `departemen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `universitas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institusi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumens`
--

INSERT INTO `dokumens` (`id`, `user_id`, `kategori_id`, `judul_umum`, `tahun`, `volume`, `isu`, `halaman`, `abstrak`, `kata_kunci`, `url`, `nomor`, `file`, `penulis`, `publikasi`, `kota`, `edisi`, `editor`, `publiser`, `judul_khusus`, `chapter`, `counsel`, `tanggal_putusan`, `nomor_seri`, `waktu_kejadian`, `departemen`, `universitas`, `tipe`, `institusi`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Manajemen Isu dan Tantangan Masa Depan: Pendekatan Public Relations', '2017-06-29', '4', '2', '1', 'Issues Management is the management process whose\r\ngoal is to help preserve markets, reduce risk, create opportunities\r\nand manage image as an organizational asset for the benefit\r\nof both an organization and its primary stakeholders. This is\r\naccomplished by: anticipating, researching and prioritizing\r\nissues; assessing the impact of issues on the organization:\r\nrecommending policies and strategies to minimize risk and\r\nseize opportunities, participating and implementing strategy;\r\nevaluating program impact. Issues management both as a\r\nscience and managerial practice has developed dynamically\r\nin the past three decades. This paper examines approaches to\r\nissues management as a science, corporate social responsibility\r\nas a pre-emptive policy of issues management, and issues\r\nmanagement as skill for public relations practitioners.', 'manajemen isu, corporate social responsibility, public relations', NULL, '2017', 'jurnal 1.pdf', 'Prayudi', 'Jurnal ILMU KOMUNIKASI', NULL, NULL, NULL, NULL, 'Jurnal ILMU KOMUNIKASI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-30 18:27:27', '2021-07-04 21:03:55'),
(2, 3, 6, 'Penerapan Knowledge Management System (KMS) Berbasis Web\r\nStudi Kasus Bagian Teknisi dan Jaringan Fakultas Ilmu Komputer Universitas\r\nSriwijaya', '2014-01-01', '6', '2', '2', 'Fakultas Ilmu Komputer Universitas Sriwijaya adalah salah satu perguruan tinggi yang menyadari\r\npentingnya sebuah pendokumentasian dari data dan informasi bagi keberlangsungan kegiatan perguruan\r\ntinggi. Saat ini pendokumentasian pengetahuan tentang teknis komputer dan jaringan yang ada di\r\nFASILKOM belum terstruktur sehingga berdampak pada kegiatan fakultas yang terasa tidak efektif.\r\nBerdasarkan hasil analisa, terdapat banyak knowledge penting dibagian teknisi komputer dan jaringan yang\r\nfungsinya untuk menunjang kegiatan perguruan tinggi. Metodologi yang digunakan pada penelitian ini\r\nmerujuk ke metodologi knowledge management yang dikembangkan oleh Amrit Tiwana. Pada metodologi ini\r\nterdapat 4 tahap utama, yaitu: persiapan dan evaluasi infrastruktur, analisis dan desain knowledge\r\nmanagement, pengembangan knowledge management dan evaluasi. Knowledge management terasa sangat\r\ndibutuhkan pada saat ini untuk memfasilitasi masalah pendokumentasian dan penggunaannya serta\r\nmeningkatkan kualitas kerja bagi pegawai Fakultas Ilmu Komputer Universitas Sriwijaya', 'Knowledge Management System', NULL, '2085-1588', '131229-ID-penerapan-knowledge-management-system-km.pdf', 'Winda Kurnia Sari, Ken Ditha Tania', NULL, NULL, NULL, NULL, NULL, 'Jurnal Sistem Informasi (JSI)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-02 13:55:52', '2021-07-02 13:55:52'),
(3, 28, 6, 'KNOWLEDGE MANAGEMENT SYSTEM MODEL PADA FORUM DISKUSI PETANI\r\nBUAH NAGA MENGGUNAKAN CMS phpBB', '2018-06-08', '4', '1', '44', 'Buah naga adalah buah yang baru – baru ini dibudidayakan di Indonesia. Banyak yang gemar akan buah\r\nnaga ini karena banyak sekali khasiatnya. Jenis buah naga juga bermacam – macam dan harga setiap jenis dan\r\nkualitasnya pun berbeda. Namun kualitas buah naga di Indonesia belum ada Standar Nasionalnya, untuk itu\r\npendapat antar petani mengenai kualitas buah naga sangat bervariasi sehingga diperlukan adanya Knowledge\r\nManagement System (KMS) dimana KMS merupakan sebuah System yang dibuat untuk mengelola pengetahuan.\r\nDengan menggunakan Content Management System (CMS) php Buletin Board (phpBB) yang dasarnya adalah\r\nsebuah CMS yang mendukung untuk sebuah forum diskusi, maka diskusi antar petanipun dapat dilakukan dengan\r\nharapan para petani dapat saling bertukar pengetahuan – pengetahuan mereka mengenai kualitas buah naga.\r\nDengan menggunakan proses dari model Knowledge Management yaitu SECI (Sosialization, Eksternalization,\r\nCombination, Internalization) maka hasil diskusi tersebut nantinya akan disimpulkan dan disimpan sebagai\r\npengetahuan baru.', 'buah naga, content management system, knowledge management system, PHP buletin board, SECI.', NULL, '23557699', 'jurnal_1.pdf', 'Anderias Eko Wijaya', NULL, NULL, NULL, NULL, NULL, 'Jurnal Teknologi Informasi dan Ilmu Komputer (JTIIK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-03 10:59:12', '2021-07-03 10:59:12'),
(4, 28, 6, 'Knowledge Management System Untuk SDM\r\nMenggunakan Seci Model (Studi Kasus:\r\nKoperasi Karyawan)', '2018-04-01', '5', '1', '157', 'Koperasi Pegawai Badan Urusan Logistik adalah sebuah Koperasi yang bergerak dalam bidang\r\njasa, simpan-pinjam. Knowledge Managment System tersebut, nampaknya sudah menjadi\r\nsuatu kebutuhan mendasarkan untuk meningkatkan kualitas sumber daya manusia yang\r\nkhususnya kepada karyawan. Knowledge management merupakan usaha untuk meningkatkan\r\nknowledge yang berguna dalam koperasi. Knowledge management tidak hanya merupakan\r\npengaturan akan knowldge, namun lebih pada manajemen suatu koperasi dengan fokus\r\nkhususnya terhadap knowledge, knowledge management dengan sebuah sistem, yang\r\ndiharapkan dapat menjadi solusi dari kebutuhan aliran knowledge yang tidak dihalangi oleh\r\nbatasan waktu dan tempat. Penelitian ini akan mengembangkan analisa knowledge\r\nmanagement system dan merancang aplikasi dari analisa yang dikembangkan. Metodologi\r\nyang digunakan dengan model SECI dan melakukan analisa untuk mendapatkan knowledge\r\nmanagement system tersebut. Analisa knowledge management system yang dihasilkan\r\nmendukung proses Sosialisasi, Eksternalisasi, Kombinasi, Internalisasi (SECI). Knowledge\r\nmanagement system ini dikembangkan sebagai sarana sharing pada karyawan.', 'Knowledge Management System,SECI, Koperasi,SDM', NULL, '25282247', 'jurnal_2.pdf', 'Eva Zuraidah', NULL, NULL, NULL, NULL, NULL, 'JURNAL INFORMATIKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-03 19:14:53', '2021-07-03 19:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `forumdiskusi`
--

CREATE TABLE `forumdiskusi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forumdiskusi`
--

INSERT INTO `forumdiskusi` (`id`, `judul`, `konten`, `user_id`, `created_at`, `updated_at`) VALUES
(15, 'Pelindo 1 Ekspor Perdana Plywood dari Sibolga', 'Tumpukan peti barang ekspor impor di Pelabuhan Tanjung Priok, Jakarta, Senin (17/7). Ekspor dan impor masing-masing anjlok 18,82 persen dan ‎27,26 persen pada momen puasa dan Lebaran pada bulan keenam ini dibanding Mei 2017.', 3, '2021-04-19 11:42:35', '2021-04-19 11:42:35'),
(16, 'Pelindo 1 Targetkan Layani Bongkar Muat Petikemas 1,5 Juta TEUs di 2021', 'PT Pelabuhan Indonesia I (Persero) atau Pelindo 1 menargetkan pertumbuhan throughput bongkar muat sebesar 10–20 persen pada 2021.', 58, '2021-04-19 11:48:02', '2021-04-19 11:48:02'),
(17, 'Pelindo I Layani Bongkar Muat Petikemas 1,42 Juta TEUs sepanjang 2020', 'Di tengah pandemi Covid-19 yang menghantam perekonomian nasional dan global, PT Pelabuhan Indonesia I (Persero) atau Pelindo 1 tetap mampu mencatat kinerja positif sepanjang 2020.', 28, '2021-04-19 11:50:47', '2021-04-19 11:50:47'),
(18, 'Tol Pontianak-Singkawang akan Perkuat Akses ke Pelabuhan Kijing', 'Kepala Badan Pengatur Jalan Tol (BPJT) Danang Parikesit mengatakan, pemerintah tengah mengkaji pembangunan Jalan Tol Pontianak-Singkawang yang akan menjadi jalur tol pertama di tanah Kalimantan Barat (Kalbar).\r\n\r\nDanang menyampaikan, inisiasi proyek ini dimaksudkan untuk memperlancar arus konektivitas menuju Pelabuhan Kijing di Pontianak yang kini tengah dikembangkan Kementerian Perhubungan (Kemenhub).', 28, '2021-04-19 11:53:46', '2021-04-19 11:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(10) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Aplikasi', '2021-04-01 16:42:29', '2021-06-12 10:48:41'),
(2, 'Hardware', '2021-04-01 16:42:29', '2021-06-12 10:48:53');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Book', NULL, '2021-04-18 14:30:26'),
(2, 'Book section', NULL, '2021-04-18 14:30:35'),
(3, 'Case', NULL, '2021-04-18 14:30:42'),
(4, 'Proceeding', NULL, '2021-04-18 14:30:51'),
(6, 'Journal', NULL, '2021-04-18 14:30:59'),
(7, 'Newspaper', NULL, '2021-04-18 14:31:08'),
(8, 'Report', NULL, '2021-04-18 14:31:17'),
(9, 'Thesis', NULL, '2021-04-18 14:31:24'),
(10, 'Web Page', NULL, '2021-04-10 12:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `kluster`
--

CREATE TABLE `kluster` (
  `id` int(11) NOT NULL,
  `nama_kluster` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kluster`
--

INSERT INTO `kluster` (`id`, `nama_kluster`, `created_at`, `updated_at`) VALUES
(1, 'BARANG', NULL, NULL),
(2, 'KEUANGAN', NULL, NULL),
(3, 'RUPA-RUPA', NULL, NULL),
(5, 'EOFFICE', '2021-06-12 11:03:32', '2021-06-12 11:03:32'),
(6, 'MAIL', '2021-06-12 11:03:55', '2021-06-12 11:03:55'),
(7, 'KEUANGAN', '2021-06-12 11:04:02', '2021-06-12 11:04:02'),
(8, 'SDM', '2021-06-12 11:04:18', '2021-06-12 11:04:18'),
(9, 'NPKTOS', '2021-06-12 11:04:39', '2021-06-12 11:04:39'),
(10, 'KAPAL', '2021-06-21 05:54:04', '2021-07-02 14:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `forumdiskusi_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `konten`, `user_id`, `forumdiskusi_id`, `parent`, `created_at`, `updated_at`) VALUES
(17, 'boleh', 58, 15, 0, '2021-07-04 20:44:11', '2021-07-04 20:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_01_13_214912_create_dokumen_table', 1),
(4, '2021_01_30_220945_create_forumdiskusi_table', 1),
(5, '2021_01_30_222125_create_komentar_table', 1),
(6, '2021_02_23_235740_create_faqs_table', 1),
(7, '2021_02_24_001850_create_table_isu', 1),
(8, '2021_02_24_001958_create_table_wiki', 1),
(9, '2021_02_28_235910_add_kolom_on_isu_permasalahan_table', 1),
(10, '2021_03_03_033748_add_user_id_on_faq', 1),
(11, '2021_03_03_054805_dok_table', 1),
(12, '2021_03_03_055706_faq_new_table', 1),
(13, '2021_03_03_055731_wiki_new_table', 1),
(14, '2021_03_03_055811_isu_new_table', 1),
(15, '2021_03_03_055843_dokumen_new_table', 1),
(16, '2021_03_03_061401_kategori_table', 1),
(17, '2021_03_09_222234_create_table_book', 1),
(18, '2021_03_09_222313_create_table_book_section', 1),
(19, '2021_03_09_222330_create_table_case', 1),
(20, '2021_03_09_234352_create_table_proceedings', 1),
(21, '2021_03_09_234457_create_table_encyclopedia', 1),
(22, '2021_03_09_234520_create_table_journal', 1),
(23, '2021_03_09_234544_create_table_newspaper', 1),
(24, '2021_03_09_234606_create_table_report', 1),
(25, '2021_03_09_234621_create_table_thesis', 1),
(26, '2021_03_09_234645_create_table_web_page', 1),
(27, '2021_03_09_234713_create_table_working_paper', 1),
(28, '2021_04_02_130041_create_newforum_table', 2),
(29, '2021_04_08_105436_create_dokumenfile', 3),
(30, '2021_04_17_040015_create_tabel_kategorilain', 4),
(31, '2021_04_20_045826_add_jenis_id_tablefaq', 5),
(32, '2021_04_20_050524_table__f_a_q_s', 6),
(33, '2021_06_08_032435_create_table_kluster', 7),
(34, '2021_06_12_041345_create_table_isuhardware', 8),
(35, '2021_06_30_110238_tabel_wikis', 9),
(36, '2021_06_30_110503_tabel_wikis', 10),
(37, '2021_06_30_111101_tabel_dokumens', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newfaq`
--

CREATE TABLE `newfaq` (
  `id` int(20) UNSIGNED NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newfaq`
--

INSERT INTO `newfaq` (`id`, `pertanyaan`, `jawaban`, `user_id`, `jenis_id`, `created_at`, `updated_at`) VALUES
(29, 'Apa itu Sistem Pemantauan Kapal Perikanan (Vessel Monitoring System atau VMS) ?', 'Sistem Pemantauan Kapal Perikanan (SPKP) adalah salah satu sistem pengawasan kapal perikanan dengan menggunakan peralatan yang telah ditentukan untuk mengetahui pergerakan dan aktifitas kapal perikanan. Sejak tahun 2003, SPKP telah diterapkan dengan memasang alat pemancar atau transmitter pada kapal-kapal perikanan berukuran di atas 30 GT.', 3, 1, '2021-04-20 12:52:03', '2021-04-20 12:52:03'),
(31, 'Apakah setelah selesai memasang VMS kapal perikanan langsung bisa melaut?', 'Tidak. Kapal perikanan bisa melaut setelah diterbitkannya Surat Keterangan Aktivitas Transmiter (SKAT).', 3, 1, '2021-04-20 12:52:55', '2021-04-20 12:52:55'),
(33, 'Bagaimana mengatasi kabel yang rusak?', 'Cara paling mudah dan juga simple untuk mengatasi hal ini adalah dengan cara mengganti kabel yang megalami kerusakan, sehingga bisa bekerja dengan lebih optimal lagi. Untuk itu user maupun teknisi perlu tau apa saja jenis-jenis kabel jaringan komputer agar penggunaannya tepat dengan jaringan yang digunakan sehingga tidak perlu merasakan kerusakan untuk kesekian kalinya.', 3, 2, '2021-04-20 12:55:14', '2021-04-20 12:55:14'),
(34, 'Komputer Tak Mau Menyala?', 'Cek bagian kabel (yang hubungkan komputer ke stop kontak) cek apakah kendor, lebih baik lagi Kamu coba pakai kabel lain, supaya bisa tahu apakah kabelnya rusak atau tidak\r\nCek bagian stabilizer, khususnya untuk Kamu yang pakai ini, untuk pastikan tak ada yang rusak atau kendor.\r\nCek kabel power dalam (dari power supply ke tombol power CPU) pastikan juga tak kendor atau rusak\r\nKalau semuanya sudah dicek dan kondisinya normal, peluangnya rusak di bagian motherboard atau power supply', 3, 2, '2021-04-20 12:56:34', '2021-04-20 12:56:34'),
(40, 'TIDAK BISA CETAK SPK PANDU', 'Koordinasi dengan KSOP Resend SPOG', 3, 1, '2021-07-02 14:49:23', '2021-07-02 14:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `newisu`
--

CREATE TABLE `newisu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kluster_id` int(11) DEFAULT NULL,
  `namaob_rusak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time DEFAULT NULL,
  `lama` time DEFAULT NULL,
  `kode` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bagianob_rusak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pelapor` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_permasalahan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyelesaian` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_permasalahan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_tiket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newisu`
--

INSERT INTO `newisu` (`id`, `kluster_id`, `namaob_rusak`, `tanggal`, `jam_mulai`, `jam_selesai`, `lama`, `kode`, `bagianob_rusak`, `pelapor`, `nama_permasalahan`, `penyelesaian`, `detail_permasalahan`, `no_tiket`, `status`, `user_id`, `jenis_id`, `created_at`, `updated_at`) VALUES
(10, NULL, 'Jaringan Internet Astinet Lite', '2021-04-17', '09:33:00', '10:00:00', '00:27:00', NULL, 'MODEM TELKOM', 'INDRA', 'Jaringan Internet Astinet mengalami gangguan dari telkom', NULL, 'info dari team sih fo Cut mas ,Rfo Nya sambung Ulang DC 30 meter', NULL, 'selesai', 3, 2, '2021-06-08 11:39:43', '2021-07-02 14:33:09'),
(11, NULL, 'Jaringan area Lini 2', '2021-05-16', '16:49:00', '20:20:00', '03:31:00', NULL, 'MIKROTIK CRS212', 'YULIANTO', 'Jaringan Lapangan MTI Down', NULL, 'Mikrotik CRS 212 mengalami kerusakan pada port ether 1', NULL, 'selesai', 3, 2, '2021-06-13 05:27:58', '2021-07-02 14:37:40'),
(14, 10, 'VMS', '2020-06-01', '14:25:00', '15:25:00', '01:07:00', NULL, 'SIMOP KAPAL & VMS', 'AGENT PELAYARAN', 'TIDAK BISA CETAK SPK PANDU', 'Koordinasi dengan KSOP Resend SPOG', 'PKK       : PKK.LN.IDPNK.2005.000156  KAPAL       : MV. HAI PHUONG ASIA PPKB         : 2 MASALAH  : SPK PANDU DAN SPOG TIDAK MUNCUL', NULL, 'selesai', 3, 1, '2021-07-02 14:43:32', '2021-07-02 14:43:32'),
(15, 10, 'VMS', '2020-06-23', '14:44:00', '16:11:00', '01:27:00', NULL, 'SPK PANDU', 'ARY', 'PPKB sudah di tetapkan namun PPK Pindah nya tidak muncul', 'KORDINASI PIHAK ITSD', 'PKK.DN.IDPNK.2006.000086 KAPAL		: TK. MANNA LINES - 9003  PPKB 		: KE 5 (PINDAH)  MASALAH	: TIDAK BISA CETAK SPK PANDU, PPK DAN SPOG TIDAK MUNCUL', 'INC2020/6/004014', 'selesai', 28, 1, '2021-07-03 11:14:10', '2021-07-03 11:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `jabatan`, `telepon`, `alamat`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 'Admin KMS-DISI', 'admin', 'adminipc@gmail.com', '$2y$10$5BnrC8OOBbauTyImFSQ4eulCd4ZmV/y/617hYFddEInhOlxGIqKY6', 'Admin KMS', '1234567890', 'Pontianak', '1625177436.png', '2021-03-25 03:26:46', '2021-07-02 12:10:36'),
(28, 'User IPC', 'visitor', 'useripc@gmail.com', '$2y$10$bxcaepZMZ3zjyV5bKaK5R.gwL6XaIRReEVz7h6SgnHx.dKIGhwkru', 'User IPC', '089211111111', 'Pontianak', '1623218392.jpg', '2021-04-02 12:37:40', '2021-07-02 14:55:33'),
(58, 'Anton Wisnu Prabowo', 'visitor', 'anton@gmail.com', '$2y$10$wGLPFnSlP/08G0IosziFT.GI2FKB65c4OQPnu7G/EV7YQ5BSsUbEu', 'ASS. DGM SISTEM INFORMASI', '0856317898', 'Paring Pangeran 1. Siantan.', NULL, '2021-04-19 11:03:11', '2021-07-02 14:58:30'),
(60, 'Machel Alvaldo', 'visitor', 'maechel@gmail.com', '$2y$10$F8Ba5SLWOaAMSgpWY9RMee.eB2YNryg38H17jlisAeqpHR0WVGXxu', 'Asisten Office', '083112778192', 'JL. 28 Oktober. Gg. Bersatu', '1623208735.png', '2021-04-19 11:05:41', '2021-07-02 14:58:20'),
(63, 'Sutrisno', 'visitor', 'sutrisno@gmail.com', '$2y$10$rYnI0T7KbRciNAC.N93yr.cpxyW4LKErfqTBccRWYKyyJLIL4ipV.', 'Tno Sistem Informasi', '085721729011', 'JL. Daya Nasional', NULL, '2021-04-19 11:11:46', '2021-07-02 14:58:57'),
(64, 'Tika Meirawati', 'admin', 'tika@gmail.com', '$2y$10$p81bj983vpVopAa2QMVl.uQjwQEuCpMHZWJs3k13NgCd7b.315Jny', 'SPV. SISTEM INFORMASI', '089772315788', 'JL. Tani Makmur', NULL, '2021-04-19 11:30:44', '2021-07-02 14:59:07'),
(72, 'Verdian Anumza', 'visitor', 'verdian@gmail.com', '$2y$10$Dq0Q8YcfRFlNuST.8uBOZOXIOesMXdW5HfKPW5XzhwYD3ntKe4Eai', 'Tno Sistem Informasi', '089211111111', 'Pontianak', NULL, '2021-07-02 15:00:26', '2021-07-02 15:00:26'),
(73, 'Indra Permana', 'visitor', 'indra@gmail.com', '$2y$10$y88BXGf29KjMpbOdyxuYjO5MpwSZyAj9QvxGQTUgEIoSbiJs8AUO2', 'Tno Sistem Informasi', '089211111111', 'Pontianak', NULL, '2021-07-02 15:00:52', '2021-07-02 15:00:52'),
(74, 'Dani Apriansyah', 'visitor', 'dani@gmail.com', '$2y$10$5VKNaueL33SLDbtG98ZQNuEAvw1fNXxeP8FFE7ora0.qrpJ8RbTz6', 'Tno Sistem Informasi', '089211111111', 'Pontianak', NULL, '2021-07-02 15:01:14', '2021-07-02 15:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `wikis`
--

CREATE TABLE `wikis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_artikel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wikis`
--

INSERT INTO `wikis` (`id`, `judul`, `deskripsi`, `isi_artikel`, `gambar`, `editor`, `sumber`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'New Normal, IPC Percepat Digitalisasi Layanan Kepelabuhan', 'PT Pelabuhan Indonesia II (Persero) atau IPC menjadikan momentum era normal baru (new normal) untuk mempercepat pergeseran layanan kepelabuhanan ke arah digital.', '<p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased;\">Direktur Utama&nbsp;<a href=\"https://www.tempo.co/tag/ipc\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(0, 176, 255);\">IPC</a>&nbsp;Arif Suhartono mengatakan, transformasi menuju digitalisasi di pelabuhan itu tidak hanya terbatas pada penerapan teknologi, tetapi juga menyangkut proses dan orang-orang yang terlibat di dalamnya. Proses ini membutuhkan komitmen kuat semua pemangku kepentingan guna mempercepat digitalisasi kepelabuhanan.</p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased;\">“IPC akan terus mendorong semua pemangku kepentingan, terutama para pengguna jasa untuk bersama-sama melakukan transformasi ke arah aktivitas bisnis digital,” ujarnya dikutip dari keterangan pers, Jumat, 19 Juni 2020.</p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased;\">Arif menjelaskan, transformasi digital yang dilakukan IPC terbagi menjadi dua fokus, yakni internal dan eksternal. Di lingkup internal, IPC telah menerapkan sistemisasi dan menggunakan aplikasi digital, baik di sisi laut maupun di sisi darat yang mencakup terminal pelabuhan, pergudangan serta area pendukung lainnya.</p>', '1625184752.jpg', 'Oleh: Kodrat Setiawan', 'https://bisnis.tempo.co/.', 3, '2021-06-30 18:09:12', '2021-07-04 20:42:23'),
(2, 'IHSG Melemah 0,32 Persen, Samuel Sekuritas: Tekanan Perbankan dan Ledakan Covid', 'Indeks Harga Saham Gabungan atau IHSG terpantau melemah cukup dalam di sesi pertama perdagangan hari ini. IHSG menutup sesi pertama di level 6.0,15 atau -0,32 persen lebih rendah dari angka penutupan kemarin yang sebesar 6.087.', '<p dir=\"ltr\" style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: medium; line-height: 22px; font-family: Roboto, HelveticaNeueW01-45Light, Helvetica, Arial; vertical-align: baseline; letter-spacing: 0.16px; text-rendering: optimizespeed; -webkit-font-smoothing: antialiased;\">asasaIndeks Harga Saham Gabungan atau IHSG terpantau melemah cukup dalam di sesi pertama perdagangan hari ini. IHSG menutup sesi pertama di level 6.0,15 atau -0,32 persen lebih rendah dari angka penutupan kemarin yang sebesar 6.087.Indeks Harga Saham Gabungan atau IHSG terpantau melemah cukup dalam di sesi pertama perdagangan hari ini. IHSG menutup sesi pertama di level 6.0,15 atau -0,32 persen lebih rendah dari angka penutupan kemarin yang sebesar 6.087.Indeks Harga Saham Gabungan atau IHSG terpantau melemah cukup dalam di sesi pertama perdagangan hari ini. IHSG menutup sesi pertama di level 6.0,15 atau -0,32 persen lebih rendah dari angka penutupan kemarin yang sebesar 6.087.Indeks Harga Saham Gabungan atau IHSG terpantau melemah cukup dalam di sesi pertama perdagangan hari ini. IHSG menutup sesi pertama di level 6.0,15 atau -0,32 persen lebih rendah dari angka penutupan kemarin yang sebesar 6.087.Indeks Harga Saham Gabungan atau IHSG terpantau melemah cukup dalam di sesi pertama perdagangan hari ini. IHSG menutup sesi pertama di level 6.0,15 atau -0,32 persen lebih rendah dari angka penutupan kemarin yang sebesar 6.087.</p><p></p>', '1625184996.jpg', 'Martha Warta Silaban', 'tempo.co', 3, '2021-07-02 07:54:35', '2021-07-02 14:27:47'),
(5, 'Pelabuhan Pelindo III Tetap Beroperasi Normal Selama Libur Lebaran 2021', 'PT Pelindo III memastikan pelabuhan yang dikelola perseroan akan beroperasi penuh selama masa libur lebaran tanggal 12 Mei 2021 hingga 16 Mei 2021.', '<p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Pelayanan yang dimaksud mulai dari pelayanan kapal, bongkar muat barang, penumpukan barang, penyediaan air bersih untuk kapal dan layanan pendukung lainnya.<p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">&acirc;&#128;&#156;Kami berkomitmen untuk menjaga kelancaran arus logistik di pelabuhan yang menjadi tanggung jawab kami dengan harapan agar distribusi logistik ke masyarakat tetap berjalan dengan baik dan lancar,&acirc;&#128;&#157; kata Suryo di kantor pusat&nbsp;<a href=\"https://www.liputan6.com/tag/pelindo-iii\" style=\"color: rgb(255, 51, 0);\">Pelindo III</a>, Rabu (12/5/2021).</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">Pelayanan operasional jasa kepelabuhanan di Pelindo III, lanjutnya, ditopang penggunaan teknologi informasi yang terintegrasi. Selama periode Idul Fitri tahun 2021 pengguna jasa tetap dapat mengakses seluruh layanan Pelindo III di seluruh pelabuhan melalui portal pelanggan yang tersedia secara daring. Pengguna jasa juga sekaligus dapat mengakses nota tagihan atas pelayanan jasa yang telah dilakukan oleh&nbsp;<a href=\"https://www.liputan6.com/tag/pelindo-iii\" style=\"color: rgb(255, 51, 0);\">Pelindo III</a>.</p><p style=\"color: rgb(68, 68, 68); font-family: AcuminPro, arial, helvetica, sans-serif; font-size: 15px;\">&acirc;&#128;&#156;Pelayanan tetap berjalan sebagaimana pelayanan harian, tidak ada yang berbeda, karena kami telah mengimplementasikan sistem pelayanan operasional yang berjalan selama 24 jam 7 hari secara non-stop yang kami sebut dengan Port Operations Command Center (POCC),&acirc;&#128;&#157; lanjutnya.</p></p>\n', '1625185583.jpg', 'Athika Rahma', 'liputan6.com', 3, '2021-07-02 14:26:23', '2021-07-02 14:26:23'),
(6, 'Digitalisasi Pelabuhan Tanjung Priok Menuju Smart Port', 'PT Pelabuhan Indonesia II Cabang Tanjung Priok kini bertransformasi menjadi pelabuhan digital. Hingga telah mengimplementasikan beberapa sistem yang terotomatisasi dalam rangka menuju Smart Port.', '<p style=\"margin-bottom: 8px; line-height: 22px; color: rgb(119, 119, 119); font-family: Roboto, sans-serif; font-size: 17px; background-color: rgb(252, 252, 252); text-align: justify;\">PT Pelabuhan Indonesia II Cabang Tanjung Priok kini bertransformasi menjadi pelabuhan digital. Hingga telah mengimplementasikan beberapa sistem yang terotomatisasi dalam rangka menuju Smart Port. Demikian diungkapkan General Manager PT Pelabuhan Indonesia II&nbsp;Cabang Tanjung Priok Guna Mulyana dalam kegiatan webinar dalam rangka Hari Pers Nasional 2021 di&nbsp; Menara Maritim Pelindo 2 Tanjung Priok Jakarta, Rabu (5/2/2021). Diskusi diikuti ratusan peserta,terutama media dan perwakilan PWI Provinsi.Webinar yang digagas PWI Jaya bertajuk Nasional Kepelabuhan menghadirkan pembicara kunci Gubernur DKI Jakarta Anies Baswedan, Ketua PWI Pusat Atal S Depari, Pengamat Pelabuhan Sabri Saiman dan Kepala Kantor Otoritas Pelabuhan Utama Tanjung Priok (KSOP) Captain Mugen S Hartoto .Dalam diskusi tersebut, sebagai pembicara pertama sekaligus me wakili tuan rumah Guna Mulyana membawakan makalah sesuai tajuk yakni&nbsp; &nbsp; &nbsp; &nbsp;Menyongsong Wajah Baru Pelabuhan Tanjung Priok,&nbsp; sedangkan KSOP Tanjung Priok membawakan makalah ”Tanjung Priok as a Port City”.<br></p><p></p>', '1625203462.jpg', 'Nasrudin Jahari', 'https://rri.co.id/\r\nNasrudin Jahari', 28, '2021-07-02 19:14:50', '2021-07-02 19:24:48'),
(7, '7 Cara Memperbaiki Koneksi Internet Laptop dan Komputer Windows', 'Beberapa cara yang bisa anda coba agar koneksi internet anda bisa berjalan kembali. Langsung saja, ini dia cara memperbaiki koneksi internet laptop dan komputer Windows', 'Isi artikel', '1625381740.jpg', 'ARIS', 'https://windowsku.com/', 58, '2021-07-04 20:55:40', '2021-07-04 21:04:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumens`
--
ALTER TABLE `dokumens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forumdiskusi`
--
ALTER TABLE `forumdiskusi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kluster`
--
ALTER TABLE `kluster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newfaq`
--
ALTER TABLE `newfaq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newisu`
--
ALTER TABLE `newisu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wikis`
--
ALTER TABLE `wikis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumens`
--
ALTER TABLE `dokumens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forumdiskusi`
--
ALTER TABLE `forumdiskusi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kluster`
--
ALTER TABLE `kluster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `newfaq`
--
ALTER TABLE `newfaq`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `newisu`
--
ALTER TABLE `newisu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `wikis`
--
ALTER TABLE `wikis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
