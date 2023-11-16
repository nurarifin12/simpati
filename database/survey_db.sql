-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 11:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `date_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `survey_id`, `user_id`, `answer`, `question_id`, `date_created`) VALUES
(1683, 6, 5, 'OroMm', 11, '2023-11-16 14:18:00'),
(1684, 6, 5, 'JAkGU', 12, '2023-11-16 14:18:00'),
(1685, 6, 5, 'UetsQ', 13, '2023-11-16 14:18:00'),
(1686, 6, 5, 'nNIyB', 14, '2023-11-16 14:18:00'),
(1687, 6, 5, 'SEFVz', 15, '2023-11-16 14:18:00'),
(1688, 6, 5, 'tUXzB', 16, '2023-11-16 14:18:00'),
(1689, 6, 5, 'qGmPI', 17, '2023-11-16 14:18:00'),
(1690, 6, 5, 'ekMyZ', 18, '2023-11-16 14:18:00'),
(1691, 6, 5, 'Xjulq', 19, '2023-11-16 14:18:00'),
(1692, 6, 5, 'XLgER', 20, '2023-11-16 14:18:00'),
(1693, 6, 5, 'IEgcb', 21, '2023-11-16 14:18:00'),
(1694, 6, 5, 'HXBFa', 22, '2023-11-16 14:18:00'),
(1695, 6, 5, 'QJIme', 23, '2023-11-16 14:18:00'),
(1696, 6, 5, 'xRzqn', 24, '2023-11-16 14:18:00'),
(1697, 6, 5, 'QTtro', 25, '2023-11-16 14:18:00'),
(1698, 6, 5, 'qSODC', 26, '2023-11-16 14:18:00'),
(1699, 6, 5, 'rRdim', 27, '2023-11-16 14:18:00'),
(1700, 6, 5, 'hswmG', 28, '2023-11-16 14:18:00'),
(1701, 6, 5, 'Cxnlh', 29, '2023-11-16 14:18:00'),
(1702, 6, 5, 'OKcfe', 30, '2023-11-16 14:18:00'),
(1703, 6, 5, 'ylMsi', 31, '2023-11-16 14:18:00'),
(1704, 6, 5, 'hZxtE', 32, '2023-11-16 14:18:00'),
(1705, 6, 5, 'xznPB', 33, '2023-11-16 14:18:00'),
(1706, 6, 5, 'LMDkC', 34, '2023-11-16 14:18:00'),
(1707, 6, 5, 'JBSpO', 35, '2023-11-16 14:18:00'),
(1708, 6, 5, 'rzGXQ', 36, '2023-11-16 14:18:00'),
(1709, 6, 5, 'XMEZs', 37, '2023-11-16 14:18:00'),
(1710, 6, 5, 'JFTWv', 38, '2023-11-16 14:18:00'),
(1711, 6, 5, 'oZbVv', 39, '2023-11-16 14:18:00'),
(1712, 6, 5, 'lowEI', 40, '2023-11-16 14:18:00'),
(1713, 6, 5, 'iTYzw', 41, '2023-11-16 14:18:00'),
(1714, 6, 5, 'uBraG', 42, '2023-11-16 14:18:00'),
(1715, 6, 5, 'Ltspq', 43, '2023-11-16 14:18:00'),
(1716, 6, 5, 'dkiVw', 44, '2023-11-16 14:18:00'),
(1717, 6, 5, 'wovGj', 45, '2023-11-16 14:18:00'),
(1718, 6, 5, 'paHoi', 46, '2023-11-16 14:18:00'),
(1719, 6, 5, 'DMJAB', 47, '2023-11-16 14:18:00'),
(1720, 6, 5, 'KkoUE', 48, '2023-11-16 14:18:00'),
(1721, 6, 5, 'FxuJI', 49, '2023-11-16 14:18:00'),
(1722, 6, 5, 'sVnaX', 50, '2023-11-16 14:18:00'),
(1723, 6, 5, 'MARsl', 51, '2023-11-16 14:18:00'),
(1724, 6, 5, 'TXiOy', 6, '2023-11-16 14:18:00'),
(1725, 6, 5, 'BiMJS', 9, '2023-11-16 14:18:00'),
(1726, 6, 5, 'zlIOF', 10, '2023-11-16 14:18:00'),
(1727, 6, 12, 'wotnC', 11, '2021-11-16 14:18:00'),
(1728, 6, 12, 'bfQZD', 12, '2021-11-16 14:18:00'),
(1729, 6, 12, 'tfoBX', 13, '2021-11-16 14:18:00'),
(1730, 6, 12, 'cudfo', 14, '2021-11-16 14:18:00'),
(1731, 6, 12, 'SEFVz', 15, '2021-11-16 14:18:00'),
(1732, 6, 12, 'sEncS', 16, '2021-11-16 14:18:00'),
(1733, 6, 12, 'XBLFQ', 17, '2021-11-16 14:18:00'),
(1734, 6, 12, 'amWnq', 18, '2021-11-16 14:18:00'),
(1735, 6, 12, 'WwCKf', 19, '2021-11-16 14:18:00'),
(1736, 6, 12, 'XLgER', 20, '2021-11-16 14:18:00'),
(1737, 6, 12, 'IEgcb', 21, '2021-11-16 14:18:00'),
(1738, 6, 12, 'HXBFa', 22, '2021-11-16 14:18:00'),
(1739, 6, 12, 'QJIme', 23, '2021-11-16 14:18:00'),
(1740, 6, 12, 'xRzqn', 24, '2021-11-16 14:18:00'),
(1741, 6, 12, 'QTtro', 25, '2021-11-16 14:18:00'),
(1742, 6, 12, 'qSODC', 26, '2021-11-16 14:18:00'),
(1743, 6, 12, 'rRdim', 27, '2021-11-16 14:18:00'),
(1744, 6, 12, 'hswmG', 28, '2021-11-16 14:18:00'),
(1745, 6, 12, 'Cxnlh', 29, '2021-11-16 14:18:00'),
(1746, 6, 12, 'OKcfe', 30, '2021-11-16 14:18:00'),
(1747, 6, 12, 'ylMsi', 31, '2021-11-16 14:18:00'),
(1748, 6, 12, 'hZxtE', 32, '2021-11-16 14:18:00'),
(1749, 6, 12, 'xznPB', 33, '2021-11-16 14:18:00'),
(1750, 6, 12, 'LMDkC', 34, '2021-11-16 14:18:00'),
(1751, 6, 12, 'JBSpO', 35, '2021-11-16 14:18:00'),
(1752, 6, 12, 'rzGXQ', 36, '2021-11-16 14:18:00'),
(1753, 6, 12, 'XMEZs', 37, '2021-11-16 14:18:00'),
(1754, 6, 12, 'JFTWv', 38, '2021-11-16 14:18:00'),
(1755, 6, 12, 'oZbVv', 39, '2021-11-16 14:18:00'),
(1756, 6, 12, 'lowEI', 40, '2021-11-16 14:18:00'),
(1757, 6, 12, 'iTYzw', 41, '2021-11-16 14:18:00'),
(1758, 6, 12, 'uBraG', 42, '2021-11-16 14:18:00'),
(1759, 6, 12, 'Ltspq', 43, '2021-11-16 14:18:00'),
(1760, 6, 12, 'dkiVw', 44, '2021-11-16 14:18:00'),
(1761, 6, 12, 'wovGj', 45, '2021-11-16 14:18:00'),
(1762, 6, 12, 'paHoi', 46, '2021-11-16 14:18:00'),
(1763, 6, 12, 'DMJAB', 47, '2021-11-16 14:18:00'),
(1764, 6, 12, 'KkoUE', 48, '2021-11-16 14:18:00'),
(1765, 6, 12, 'FxuJI', 49, '2021-11-16 14:18:00'),
(1766, 6, 12, 'sVnaX', 50, '2021-11-16 14:18:00'),
(1767, 6, 12, 'MARsl', 51, '2021-11-16 14:18:00'),
(1768, 6, 12, 'TXiOy', 6, '2021-11-16 14:18:00'),
(1769, 6, 12, 'BiMJS', 9, '2021-11-16 14:18:00'),
(1770, 6, 12, 'zlIOF', 10, '2021-11-16 14:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `frm_option` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `order_by` int(11) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `frm_option`, `type`, `order_by`, `survey_id`, `date_created`) VALUES
(1, 'Sample Survey Question using Radio Button', '{\"cKWLY\":\"Option 1\",\"esNuP\":\"Option 2\",\"dAWTD\":\"Option 3\",\"eZCpf\":\"Option 4\"}', 'radio_opt', 3, 1, '2021-11-10 12:04:46'),
(2, 'Question for Checkboxes', '{\"qCMGO\":\"Checkbox label 1\",\"JNmhW\":\"Checkbox label 2\",\"zZpTE\":\"Checkbox label 3\",\"dOeJi\":\"Checkbox label 4\"}', 'check_opt', 2, 1, '2020-11-10 12:25:13'),
(4, 'Sample question for the text field', '', 'textfield_s', 1, 1, '2020-11-10 13:34:21'),
(6, 'Kemampuan dosen dalam melaksanakan perkuliahan', '{\"dOHsi\":\"1\",\"BfFrE\":\"2\",\"uPIzJ\":\"3\",\"BLDxT\":\"4\",\"TXiOy\":\"5\"}', 'radio_opt', 1, 6, '2021-10-20 12:45:29'),
(9, 'Kemampuan dosen dalam melaksanakan perkuliahan', '{\"DJWZI\":\"1\",\"VYrTG\":\"2\",\"atYTN\":\"3\",\"UwOmY\":\"4\",\"BiMJS\":\"5\"}', 'radio_opt', 1, 6, '2023-10-24 11:37:26'),
(10, 'Kemampuan dalam mengevaluasi perkuliahan', '{\"htfnX\":\"1\",\"tphky\":\"2\",\"cJAnT\":\"3\",\"yLgZO\":\"4\",\"zlIOF\":\"5\"}', 'radio_opt', 1, 6, '2023-10-24 11:42:14'),
(11, 'Kemampuan staf dalam memberikan layanan perencanaan studi', '{\"ULgei\":\"1\",\"NpTRn\":\"2\",\"OroMm\":\"3\",\"OaRrF\":\"4\",\"wotnC\":\"5\"}', 'radio_opt', 0, 6, '2023-10-24 11:44:54'),
(12, 'Kemampuan staf dalam memberikan layanan persuratan', '{\"HuOTh\":\"1\",\"maWqE\":\"2\",\"JAkGU\":\"3\",\"qtCkf\":\"4\",\"bfQZD\":\"5\"}', 'radio_opt', 0, 6, '2023-10-24 11:51:41'),
(13, 'Kemampuan staf memberikan layanan administrasi hasil studi', '{\"ogbJT\":\"1\",\"LAvKX\":\"2\",\"UetsQ\":\"3\",\"tfoRJ\":\"4\",\"tfoBX\":\"5\"}', 'radio_opt', 0, 6, '2023-10-27 10:11:18'),
(14, 'Keandalan sistem informasi administrasi akademik', '{\"pcILd\":\"1\",\"dGXMz\":\"2\",\"nNIyB\":\"3\",\"tawhr\":\"4\",\"cudfo\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:49:01'),
(15, 'Keandalan sistem informasi proses perkuliahan', '{\"ZbIjn\":\"1\",\"NYXWV\":\"2\",\"ZbYjP\":\"3\",\"Mrkjx\":\"4\",\"SEFVz\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:49:33'),
(16, 'Keandalan sistem administrasi surat menyurat', '{\"FWokj\":\"1\",\"wXuKk\":\"2\",\"tUXzB\":\"3\",\"DrWSj\":\"4\",\"sEncS\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:50:14'),
(17, 'Kesiap sediaan dosen dalam menanggapi pertanyaan', '{\"rFMpS\":\"1\",\"nrzGq\":\"2\",\"qGmPI\":\"3\",\"wpMoA\":\"4\",\"XBLFQ\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:51:03'),
(18, 'Kesiap sediaan dosen dalam memberikan bimbingan', '{\"uOZmh\":\"1\",\"ekMyZ\":\"2\",\"YXFOa\":\"3\",\"rPkSv\":\"4\",\"amWnq\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:52:02'),
(19, 'Kesiap sediaan dosen dalam menanggapi komplain', '{\"LMjBV\":\"1\",\"prWte\":\"2\",\"ASaNy\":\"3\",\"Xjulq\":\"4\",\"WwCKf\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:52:49'),
(20, 'Kesiap sediaan staf administrasi dalam menanggapi pertanyaan', '{\"uPYEw\":\"1\",\"Cnxjr\":\"2\",\"PIAYC\":\"3\",\"DtRvo\":\"4\",\"XLgER\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:53:19'),
(21, 'Kesiap sediaan staf administrasi dalam menanggapi keluhan', '{\"faRQZ\":\"1\",\"ZuiVN\":\"2\",\"LNxRZ\":\"3\",\"GWYbm\":\"4\",\"IEgcb\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:53:59'),
(22, 'Kesiap sediaan staf administrasi dalam menanggapi komplain mahasiswa', '{\"GOkpL\":\"1\",\"UtkpD\":\"2\",\"epJzl\":\"3\",\"KrZja\":\"4\",\"HXBFa\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:54:34'),
(23, 'Kesiap sediaan staf dalam penjadwalan ruang kuliah', '{\"PubiY\":\"1\",\"vohsI\":\"2\",\"OnFDr\":\"3\",\"oHjyI\":\"4\",\"QJIme\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:55:05'),
(24, 'Kesiap sediaan staf dalam penyediaan sarana perkuliahan', '{\"hwOHE\":\"1\",\"iLflS\":\"2\",\"vTsgK\":\"3\",\"QqDAy\":\"4\",\"xRzqn\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:55:34'),
(25, 'Kesiap sediaan staf dalam penyediaan sarana penunjang', '{\"kyEdV\":\"1\",\"RSBKo\":\"2\",\"jMRkb\":\"3\",\"IWkAY\":\"4\",\"QTtro\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:56:03'),
(26, 'Konsistensi dosen dalam merancang perkuliahan', '{\"vTEcW\":\"1\",\"ZmWqc\":\"2\",\"vFItW\":\"3\",\"hodYR\":\"4\",\"qSODC\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:57:22'),
(27, 'Konsistensi jadwal perkuliahan', '{\"YosPI\":\"1\",\"ewVRI\":\"2\",\"ApNDe\":\"3\",\"DXhej\":\"4\",\"rRdim\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:57:54'),
(28, 'Konsistensi penilaian dengan kontrak perkuliahan', '{\"bNUls\":\"1\",\"PRoGx\":\"2\",\"SCDvm\":\"3\",\"qDbom\":\"4\",\"hswmG\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:58:30'),
(29, 'Konsistensi layanan administrasi perencanaan studi', '{\"cbFdL\":\"1\",\"vzcxZ\":\"2\",\"rhVHp\":\"3\",\"swAIF\":\"4\",\"Cxnlh\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:59:16'),
(30, 'Konsistensi layanan administrasi surat menyurat', '{\"iKarZ\":\"1\",\"WcRHC\":\"2\",\"zjcGl\":\"3\",\"VyjeO\":\"4\",\"OKcfe\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 10:59:52'),
(31, 'Konsistensi layanan administrasi hasil studi', '{\"HEdkx\":\"1\",\"LlBxH\":\"2\",\"aDhsX\":\"3\",\"FMaZu\":\"4\",\"ylMsi\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:00:36'),
(32, 'Konsistensi penjadwalan penggunaan ruang kuliah', '{\"vceVL\":\"1\",\"XWRkl\":\"2\",\"pXxwg\":\"3\",\"dhjOF\":\"4\",\"hZxtE\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:01:14'),
(33, 'Konsistensi prosedur penyediaan sarana perkuliahan', '{\"yRZUp\":\"1\",\"mqiQo\":\"2\",\"YXfFv\":\"3\",\"RdCbl\":\"4\",\"xznPB\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:01:45'),
(34, 'Konsistensi prosedur penyediaan sarana penunjang', '{\"eMWVE\":\"1\",\"eDRmu\":\"2\",\"PlDjY\":\"3\",\"YdFIH\":\"4\",\"LMDkC\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:02:12'),
(35, 'kepedulian dosen pada problem perkuliahan mahasiswa', '{\"tiPNc\":\"1\",\"MpADn\":\"2\",\"FVaGp\":\"3\",\"hbuMl\":\"4\",\"JBSpO\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:02:47'),
(36, 'kepedulian dosen pada kesulitan tugas perkuliahan', '{\"CTmEq\":\"1\",\"rEwcR\":\"2\",\"lkBqW\":\"3\",\"inhqx\":\"4\",\"rzGXQ\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:03:15'),
(37, 'Kepedulian dosen di luar kegiatan perkuliahan', '{\"VIWdR\":\"1\",\"TGXzq\":\"2\",\"bnWjo\":\"3\",\"qbvTF\":\"4\",\"XMEZs\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:03:51'),
(38, 'Kepedulian staf pada problem administrasi perencanaan studi', '{\"emusn\":\"1\",\"YXRBz\":\"2\",\"lEozH\":\"3\",\"GbogD\":\"4\",\"JFTWv\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:04:20'),
(39, 'Kepedulian staf pada proble administrasi surat menyurat', '{\"iacGV\":\"1\",\"sgcWj\":\"2\",\"fwYpy\":\"3\",\"EHNqo\":\"4\",\"oZbVv\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:05:03'),
(40, 'Kepedulian staf pada problem administrasi hasil studi', '{\"gjcAa\":\"1\",\"NxkKL\":\"2\",\"HDCmW\":\"3\",\"KwLlD\":\"4\",\"lowEI\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:05:54'),
(41, 'Kepedulian staf pada problem penjadwalan ruang kuliah', '{\"ErCjh\":\"1\",\"MgfrN\":\"2\",\"pmjwb\":\"3\",\"hmfnQ\":\"4\",\"iTYzw\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:07:03'),
(42, 'Kepedulian staf dalam mengatasi problem penyediaan sarana perkuliahan', '{\"Bbcws\":\"1\",\"yjARJ\":\"2\",\"iuLJj\":\"3\",\"NXKZD\":\"4\",\"uBraG\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:07:40'),
(43, 'Penampilan dosen saat perkuliahan', '{\"UTYbR\":\"1\",\"PRMrl\":\"2\",\"kfrQO\":\"3\",\"aXoPB\":\"4\",\"Ltspq\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:08:17'),
(44, 'Kualitas media dan sumber belajar', '{\"bpKdT\":\"1\",\"xMeDR\":\"2\",\"wxHij\":\"3\",\"tSubf\":\"4\",\"dkiVw\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:09:06'),
(45, 'Efektivitas pendekatan dan strategi perkuliahan', '{\"UZhNB\":\"1\",\"TOERr\":\"2\",\"NcUQj\":\"3\",\"sDhnN\":\"4\",\"wovGj\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:10:04'),
(46, 'Penampilan staf saat memberikan layanan', '{\"jxdXM\":\"1\",\"CvkAN\":\"2\",\"EWNMP\":\"3\",\"eHgER\":\"4\",\"paHoi\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:10:36'),
(47, 'Keramahan staf dalam memberikan layanan', '{\"rHkXP\":\"1\",\"fIYdp\":\"2\",\"QHdbj\":\"3\",\"HnjDN\":\"4\",\"DMJAB\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:11:08'),
(48, 'Kenyamanan ruangan administrasi akademik', '{\"PUtiR\":\"1\",\"sJOzX\":\"2\",\"xhsRF\":\"3\",\"aMUho\":\"4\",\"KkoUE\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:11:37'),
(49, 'Kualitas sarana dan prasarana perkuliahan', '{\"UPyZF\":\"1\",\"jleyE\":\"2\",\"pNBwT\":\"3\",\"jxUcs\":\"4\",\"FxuJI\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:12:15'),
(50, 'Kenyamanan sarana dan prasarana perkuliahan', '{\"bNVFX\":\"1\",\"ZsdEM\":\"2\",\"HcITm\":\"3\",\"QVKUb\":\"4\",\"sVnaX\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:12:42'),
(51, 'Kenyamanan sarana dan prasarana penunjang', '{\"SUvuj\":\"1\",\"hKSMJ\":\"2\",\"OsRyE\":\"3\",\"HejAh\":\"4\",\"MARsl\":\"5\"}', 'radio_opt', 0, 6, '2023-10-28 11:13:15'),
(52, 'kapabilitas Pimpinan dalam mendorong pengembangan karir dosen/tenaga kependidikan', '{\"OiAqw\":\"1\",\"KprOF\":\"2\",\"PSyYI\":\"3\",\"CtTyr\":\"4\",\"DyoOz\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:16:12'),
(53, 'kapabilitas Staf dalam memberikan pelayanan pengajuan peningkatan jabatan/golongan', '{\"EKXug\":\"1\",\"RoPwJ\":\"2\",\"LZGid\":\"3\",\"wDqdc\":\"4\",\"WVMkU\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:16:39'),
(54, 'Respon staf dalam layanan kepegawaian', '{\"NOGZe\":\"1\",\"nvtPT\":\"2\",\"zaMnA\":\"3\",\"QsAaP\":\"4\",\"VkZGe\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:17:09'),
(55, 'Kecepatan staf dalam pemberian pelayanan kepegawaian', '{\"MhdYS\":\"1\",\"wznrD\":\"2\",\"FToEu\":\"3\",\"ZNaxF\":\"4\",\"JjQgG\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:17:38'),
(56, 'kecepatan pimpinan dalam pengambilan keputusan tentang jenjang karir pegawai', '{\"hNSpk\":\"1\",\"Ewera\":\"2\",\"uAEYh\":\"3\",\"ORMvx\":\"4\",\"DIpan\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:18:19'),
(57, 'Jaminan konsistensi kebijakan peningkatan karir', '{\"SQcCi\":\"1\",\"XfdhA\":\"2\",\"uzLgs\":\"3\",\"oIiDg\":\"4\",\"cCbAn\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:19:24'),
(58, 'Jaminan konsistensi kesempatan pengembangan diri', '{\"IkPgK\":\"1\",\"YBoKS\":\"2\",\"TXuxH\":\"3\",\"fcHzb\":\"4\",\"CPNox\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:20:15'),
(59, 'Jaminan konsisten SOP', '{\"aGSZp\":\"1\",\"piclz\":\"2\",\"XOsFu\":\"3\",\"XzGvE\":\"4\",\"cvrTq\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:20:47'),
(60, 'Kepedulian pimpinan pada problem pengembangan dosen dan tenaga kependidikan', '{\"YoDlB\":\"1\",\"IJplC\":\"2\",\"PvJtT\":\"3\",\"Jvbxy\":\"4\",\"DqxiY\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:21:16'),
(61, 'perhatian staf dalam problem pengembangan dosen dan tenaga kependidikan', '{\"ZqdHS\":\"1\",\"KvMJb\":\"2\",\"hdGKW\":\"3\",\"ZwCvq\":\"4\",\"Mxoqw\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:21:41'),
(62, 'Perwujudan jenjang karir dosen dan tenaga kependidikan', '{\"crlwG\":\"1\",\"JbaKw\":\"2\",\"eTOjK\":\"3\",\"iJesP\":\"4\",\"dnjzk\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:22:12'),
(63, 'Alur pengembangan karir dosen', '{\"SsIMA\":\"1\",\"ZqXtm\":\"2\",\"sehfQ\":\"3\",\"SxPjh\":\"4\",\"IscJB\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:22:37'),
(64, 'Perwujudan alur pengembangan tenaga kependidikan', '{\"ARNuB\":\"1\",\"nvrAg\":\"2\",\"yrzUY\":\"3\",\"bxzrB\":\"4\",\"TxOaC\":\"5\"}', 'radio_opt', 0, 9, '2023-10-28 11:23:03'),
(65, 'Jenis kerjasama', '{\"xUScd\":\"Tri Dharma Perguruan Tinggi\",\"RsnzV\":\"Pendidikan\",\"QHbWM\":\"Penelitian\",\"srNWM\":\"Pengabdian\",\"BpSzA\":\"Lainnya\"}', 'radio_opt', 0, 8, '2023-10-28 11:25:13'),
(66, 'Lama kerjasama', '{\"dxVRG\":\"1 tahun\",\"GLmsX\":\"2 tahun\",\"qSfdg\":\"3 tahun \",\"MAWnH\":\"4 tahun \",\"OlMwq\":\"> = 5 tahun \"}', 'radio_opt', 0, 8, '2023-10-28 11:26:04'),
(67, 'Performance sebagai mitra kerjasama', '{\"FtkGL\":\"1\",\"PLvbY\":\"2\",\"gCtpP\":\"3\",\"UbwJE\":\"4\",\"LUWDq\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:27:08'),
(68, 'Kemampuan menjalankan program kerjasama', '{\"rGQZk\":\"1\",\"YvSFJ\":\"2\",\"CDhfn\":\"3\",\"tacZA\":\"4\",\"xcAFl\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:27:35'),
(69, 'Kemampuan mengendalikan resiko kerjasama', '{\"zjSsa\":\"1\",\"ULlXw\":\"2\",\"MWmTw\":\"3\",\"WnubQ\":\"4\",\"dTygc\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:28:20'),
(70, 'Kecepat-tanggapan dalam merespon layanan kerjasama', '{\"Vdbui\":\"1\",\"yitqR\":\"2\",\"ShrZm\":\"3\",\"CyOci\":\"4\",\"EHhdu\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:28:48'),
(71, 'Kemauan merespon tawaran kerjasama', '{\"sJmRF\":\"1\",\"aVqDb\":\"2\",\"YMEbn\":\"3\",\"UbDmA\":\"4\",\"hcqbC\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:29:16'),
(72, 'Responsif terhadap keluhan mitra', '{\"tRcoW\":\"1\",\"zsTqI\":\"2\",\"Rpyeo\":\"3\",\"HbxXe\":\"4\",\"pKOgH\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:29:40'),
(73, 'Jaminan kebermanfaatan kerjasama', '{\"lNeWM\":\"1\",\"bkyuE\":\"2\",\"bxFyA\":\"3\",\"GcIRy\":\"4\",\"MFtIh\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:30:13'),
(74, 'Jaminan keberlanjutan kerjasama', '{\"dKDaG\":\"1\",\"ioEQc\":\"2\",\"qNAba\":\"3\",\"LoPex\":\"4\",\"fGUZE\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:30:47'),
(75, 'Kesungguhan dalam menjalin kerjasama', '{\"CqYEA\":\"1\",\"DqbLT\":\"2\",\"CQbta\":\"3\",\"WteOp\":\"4\",\"NSFIY\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:31:16'),
(76, 'Fokus kepada kepentingan mitra kerjasama', '{\"VsAry\":\"1\",\"nmVXE\":\"2\",\"KHjTS\":\"3\",\"WSlGr\":\"4\",\"aAYKq\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:31:57'),
(77, 'Intensitas komunikasi kepada mitra', '{\"VKLzj\":\"1\",\"NutOc\":\"2\",\"BRgpY\":\"3\",\"IphPL\":\"4\",\"wyLxH\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:32:22'),
(78, 'Perwujudan MoU', '{\"iIhYk\":\"1\",\"QKamy\":\"2\",\"ygzjK\":\"3\",\"SqENP\":\"4\",\"SnUZR\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:32:47'),
(79, 'Perwujudan sumber daya kerjasama', '{\"IDAVN\":\"1\",\"AwrCL\":\"2\",\"Nitgn\":\"3\",\"CkwSM\":\"4\",\"qNwQa\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:33:15'),
(80, 'Kecukupan sarana dan prasarana', '{\"QheUg\":\"1\",\"bsneF\":\"2\",\"aEFXQ\":\"3\",\"PnzAp\":\"4\",\"zoZXg\":\"5\"}', 'radio_opt', 0, 8, '2023-10-28 11:33:38'),
(81, 'Apakah bapak/Ibu perwakilan Mitra, bersedia melanjutkan kerjasama?', '{\"Oitep\":\"ya\",\"bwSmq\":\"tidak\"}', 'radio_opt', 0, 8, '2023-10-28 11:34:15'),
(82, 'Kritik dan saran ', '', 'textfield_s', 0, 8, '2023-10-28 11:34:35'),
(83, 'bagaiamana apakah anda puas kuliah disini', '{\"OLKYZ\":\"1\",\"tOZld\":\"2\",\"nlWNr\":\"3\",\"sUvrI\":\"4\",\"AOckh\":\"5\"}', 'radio_opt', 0, 14, '2023-11-06 11:14:57'),
(84, 'seberapa rekomended unugha buat teman2 anda?', '{\"ulbSW\":\"1\",\"HVjGp\":\"2\",\"otxdJ\":\"3\",\"IvfSq\":\"4\",\"FdRMZ\":\"5\"}', 'radio_opt', 0, 14, '2023-11-06 11:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `survey_set`
--

CREATE TABLE `survey_set` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `survey_set`
--

INSERT INTO `survey_set` (`id`, `title`, `kategori`, `description`, `user_id`, `start_date`, `end_date`, `date_created`) VALUES
(6, 'Survey Kepuasan Layanan Pendidikan', '', 'survei yang di isi oleh mahasiswa ', 3, '2023-10-20', '2023-12-20', '2023-10-20 11:20:12'),
(8, 'Survei Kepuasan Kerjasama ', '', 'di isi oleh mitra kerjasama', 0, '2023-10-20', '2023-12-20', '2023-10-20 11:23:06'),
(9, 'Survei Kepuasan Terhadap Layanan SDM', '', 'di isi oleh dosen dan karyawan', 2, '2023-10-20', '2023-12-20', '2023-10-20 11:24:20'),
(10, 'Survei Kepuasan Kinerja Alumni', '', 'di isi oleh atasannya alumni', 0, '2023-10-20', '2023-12-20', '2023-10-20 11:25:03'),
(11, 'Kesesuaian Penelitian dan Pengabdian', '', 'survei penelitian ', 0, '2023-10-20', '2023-12-20', '2023-10-20 11:25:50'),
(13, 'Survey Pemahaman Visi dan Misi', '', 'Survey pemahaman visi dan misi, yang diisi oleh mahasiswa, dosen, dan karyawan', 0, '2023-10-24', '2023-12-26', '2023-10-24 11:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `verify_token` varchar(256) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 6 COMMENT '1=Admin,2 = Staff, 3= Mahasiswa,\r\n4= Dosen,\r\n5=Mitra,\r\n6=Alumni\r\n',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `verify_token`, `type`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+123456789', 'Sample address', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '', 1, '2020-11-10 08:43:06'),
(4, 'Mike', 'Williams', 'G', '8747808787', '', 'mwilliams@sample.com', '123', '', 3, '2020-11-10 16:21:02'),
(5, 'nur', 'arifin', '', '', '', 'nurrifin65@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 3, '2023-10-19 22:20:03'),
(7, 'moon', 'unnie', '', '', '', 'linmoon00xd@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 2, '2023-10-22 13:16:44'),
(9, 'nur', 'a', '', '', 'kroya', 'arifin.202221026@students.unugha.id', '25d55ad283aa400af464c76d713c07ad', '', 5, '2023-11-01 12:19:13'),
(11, 'nur', 'unnie', '', '', '', 'arifin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 5, '2023-11-03 13:31:06'),
(12, 'Abdul', 'Dilan', '', '', '', 'dilan@gmail.com', '25d55ad283aa400af464c76d713c07ad', '', 3, '2023-11-11 19:02:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_set`
--
ALTER TABLE `survey_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1771;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `survey_set`
--
ALTER TABLE `survey_set`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
