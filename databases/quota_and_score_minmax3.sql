-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2014 at 10:26 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ktmu`
--

-- --------------------------------------------------------

--
-- Table structure for table `quota_and_score_minmax`
--

CREATE TABLE IF NOT EXISTS `quota_and_score_minmax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) COLLATE utf8_turkish_ci DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `faculty` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `program` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `quota_osys` int(11) DEFAULT NULL,
  `quota_manas` int(11) DEFAULT NULL,
  `quota_grant` int(11) DEFAULT NULL,
  `quota_other` int(11) DEFAULT NULL,
  `score_min` float DEFAULT NULL,
  `score_max` float DEFAULT NULL,
  `exam_type` enum('humanities','natural sciences','EA','') COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kod` (`code`),
  UNIQUE KEY `kod_2` (`code`),
  UNIQUE KEY `dep_id` (`dep_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=52 ;

--
-- Dumping data for table `quota_and_score_minmax`
--

INSERT INTO `quota_and_score_minmax` (`id`, `code`, `dep_id`, `faculty`, `program`, `URL`, `quota_osys`, `quota_manas`, `quota_grant`, `quota_other`, `score_min`, `score_max`, `exam_type`) VALUES
(1, '0101', 9, 'EDEBİYAT FAKÜLTESİ', 'TARİH ', '#', 5, 25, NULL, 5, 140.884, 160.851, 'humanities'),
(2, '0102', 10, 'EDEBİYAT FAKÜLTESİ', 'TÜRKOLOJİ ', '#', 15, 25, NULL, 10, 139.91, 161.058, 'humanities'),
(3, '0103', 63, 'EDEBİYAT FAKÜLTESİ', 'DOĞU DİLLERİ (RUS DİLİ VE EDEBİYATI)', '#', 15, 10, NULL, 5, 137.114, 175.869, 'humanities'),
(4, '0104', 14, 'EDEBİYAT FAKÜLTESİ', 'DOĞU DİLLERİ  (ÇİN DİLİ VE EDEBİYATI)', '#', 15, 10, NULL, 5, 153.043, 166.796, 'humanities'),
(5, '0105', 43, 'EDEBİYAT FAKÜLTESİ', 'BATI DİLLERİ  (İNGİLİZ DİLİ VE EDEBİYATI)', '#', 5, 20, NULL, 5, 137.528, 152.752, 'humanities'),
(6, '0106', 11, 'EDEBİYAT FAKÜLTESİ', 'SOSYOLOJİ ', '#', 5, 20, NULL, 5, 135.788, 154.637, 'humanities'),
(7, '0107', 12, 'EDEBİYAT FAKÜLTESİ', 'FELSEFE ', '#', 5, 20, NULL, 5, 138.439, 155.963, 'humanities'),
(8, '0108', 15, 'EDEBİYAT FAKÜLTESİ', 'PSİKOLOJİK DANIŞMANLIK VE REHBERLİK', '#', 5, 15, NULL, 5, 139.972, 155.963, 'humanities'),
(9, '0109', 41, 'EDEBİYAT FAKÜLTESİ', 'MÜTERCİM-TERCÜMANLIK  (KIRGIZCA-TÜRKÇE)', '#', 5, 30, NULL, 0, 139.558, 162.529, 'humanities'),
(10, '0110', NULL, 'EDEBİYAT FAKÜLTESİ', 'MÜTERCİM-TERCÜMANLIK  (KIRGIZCA-İNGİLİZCE)', '#', 0, 30, NULL, 0, 135.788, 167.003, 'humanities'),
(11, '0112', NULL, 'EDEBİYAT FAKÜLTESİ', 'MÜTERCİM-TERCÜMANLIK  (TÜRKÇE-RUSÇA)***', '#', 15, 25, NULL, 10, 141.236, 155.196, 'humanities'),
(12, NULL, NULL, 'EDEBİYAT FAKÜLTESİ', 'MÜTERCİM-TERCÜMANLIK  (TÜRKÇE-İNGİLİZCE)', '#', 0, 0, NULL, 0, NULL, NULL, NULL),
(13, '1201', 17, 'FEN FAKÜLTESİ', 'BİYOLOJİ ', '#', 5, 25, NULL, 5, 139.251, 166.106, 'humanities'),
(14, '1202', 16, 'FEN FAKÜLTESİ', 'MATEMATİK', '#', 5, 25, NULL, 5, 137.167, 162.328, 'humanities'),
(15, '1203', 99, 'FEN FAKÜLTESİ', 'UYGULAMALI MATEMATİK VE ENFORMATİK ', '#', 5, 30, NULL, 5, 151.004, 173.656, 'humanities'),
(16, '1301', 18, 'GÜZEL SANATLAR FAKÜLTESİ', 'RESİM ', '#', 5, 20, NULL, 5, NULL, NULL, NULL),
(17, '1302', 19, 'GÜZEL SANATLAR FAKÜLTESİ', 'GRAFİK ', '#', 5, 20, NULL, 5, NULL, NULL, NULL),
(18, '0201', 23, 'İKTİSADİ VE İDARİ BİLİMLER FAKÜLTESİ', 'İKTİSAT ', '#', 8, 28, NULL, 5, 157.714, 183.72, 'natural sciences'),
(19, '0202', 24, 'İKTİSADİ VE İDARİ BİLİMLER FAKÜLTESİ', 'İŞLETME', '#', 8, 28, NULL, 5, 154.778, 195.456, 'natural sciences'),
(20, '0204', 100, 'İKTİSADİ VE İDARİ BİLİMLER FAKÜLTESİ', 'FİNANS VE BANKACILIK', '#', 8, 28, NULL, 5, 150.412, 176.546, 'EA'),
(21, '0205', 26, 'İKTİSADİ VE İDARİ BİLİMLER FAKÜLTESİ', 'ULUSLARARASI İLİŞKİLER ', '#', 8, 28, NULL, 5, 159.812, 205.53, 'natural sciences'),
(22, '1401', 101, 'İLAHİYAT FAKÜLTESİ', 'DİN BİLİMLERİ', '#', 0, 30, NULL, 5, 129.015, 148.423, 'humanities'),
(23, '1402', 102, 'İLAHİYAT FAKÜLTESİ', 'İSLAM BİLİMLERİ', '#', 5, 30, NULL, 5, 131.873, 142.416, 'humanities'),
(24, '0301', 20, 'İLETİŞİM FAKÜLTESİ', 'GAZETECİLİK ', '#', 10, 35, NULL, 5, 143.488, 160.014, 'EA'),
(25, '0302', 21, 'İLETİŞİM FAKÜLTESİ', 'HALKLA İLİŞKİLER VE REKLAMCILIK ', '#', 10, 35, NULL, 5, 139.659, 162.704, 'EA'),
(26, '0303', 22, 'İLETİŞİM FAKÜLTESİ', 'RADYO-TV VE SİNEMA ', '#', 10, 35, NULL, 5, 140.411, 173.856, 'EA'),
(27, '0401', 27, 'MÜHENDİSLİK FAKÜLTESİ', 'BİLGİSAYAR MÜHENDİSLİĞİ ', '#', 5, 30, NULL, 5, 167.355, 202.591, 'natural sciences'),
(28, '0402', 28, 'MÜHENDİSLİK FAKÜLTESİ', 'ÇEVRE MÜHENDİSLİĞİ BÖLÜMÜ', '#', 5, 20, NULL, 3, 140.941, 159.396, 'natural sciences'),
(29, '0403', 29, 'MÜHENDİSLİK FAKÜLTESİ', 'GIDA MÜHENDİSLİĞİ BÖLÜMÜ', '#', 5, 30, NULL, 2, 146.389, 183.72, 'natural sciences'),
(30, '0404', 30, 'MÜHENDİSLİK FAKÜLTESİ', 'KİMYA MÜHENDİSLİĞİ BÖLÜMÜ', '#', 5, 30, NULL, 5, 145.971, 171.136, 'natural sciences'),
(31, '0901', 141, 'VETERİNER FAKÜLTESİ', 'VETERİNER ', '#', 5, 25, NULL, 5, 125.843, 152.687, 'natural sciences'),
(32, '0801', 31, 'ZİRAAT FAKÜLTESİ', 'BAHÇE VE TARLA BİTKİLERİ ', '#', 5, 25, NULL, 5, 123.319, 137.997, 'natural sciences'),
(33, '0802', 32, 'ZİRAAT FAKÜLTESİ', 'BİTKİ KORUMA  ', '#', 5, 25, NULL, 5, 125.832, 146.812, 'natural sciences'),
(34, NULL, 33, 'ZİRAAT FAKÜLTESİ', 'ZOOTEKNİ', '#', 0, 0, NULL, 0, NULL, NULL, NULL),
(35, '1101', 120, 'BEDEN EĞİTİMİ VE SPOR YÜKSEKOKULU', 'BEDEN EĞİTİMİ VE SPOR ÖĞRETMENLİĞİ ', '#', 5, 25, NULL, 3, NULL, NULL, NULL),
(36, '1102', NULL, 'BEDEN EĞİTİMİ VE SPOR YÜKSEKOKULU', 'ANTRENÖRLÜK EĞİTİMİ ', '#', 5, 25, NULL, 3, NULL, NULL, NULL),
(37, '1001', NULL, 'KONSERVATUVAR', 'SAHNE SANATLARI ', '#', 3, 25, NULL, 2, NULL, NULL, NULL),
(38, '1002', 121, 'KONSERVATUVAR', 'MÜZİK ', '#', 3, 20, NULL, 2, NULL, NULL, NULL),
(39, '0701', 122, 'TURİZM VE OTELCİLİK YÜKSEKOKULU', 'TURİZM VE OTEL İŞLETMECİLİĞİ ', '#', 5, 35, NULL, 10, 144.646, 165.786, 'EA'),
(40, '0702', NULL, 'TURİZM VE OTELCİLİK YÜKSEKOKULU', 'SEYAHAT İŞLETMECİLİĞİ ve TURİZM REHBERLİĞİ ', '#', 0, 20, NULL, 5, 141.197, 156.937, 'EA'),
(41, '0703', NULL, 'TURİZM VE OTELCİLİK YÜKSEKOKULU', 'YİYECEK-İÇECEK İŞLETMECİLİĞİ ', '#', 5, 30, NULL, 5, 134.266, 150.785, 'EA'),
(42, '0500', NULL, 'MESLEK YÜKSEKOKULU', 'BÜRO YÖNETİMİ VE YÖNETİCİ ASİSTANLIĞI PROGRAMI', '#', 0, 30, NULL, 2, 134.524, 144.446, 'humanities'),
(43, '3501', NULL, 'MESLEK YÜKSEKOKULU', 'İNŞAAT PROGRAMI', '#', 0, 30, NULL, 2, 132.734, 153.868, 'EA'),
(44, '3502', NULL, 'MESLEK YÜKSEKOKULU', 'MUHASEBE PROGRAMI', '#', 0, 30, NULL, 2, 127.096, 142.193, 'natural sciences'),
(45, '3503', NULL, 'MESLEK YÜKSEKOKULU', 'OTOMOTİV PROGRAMI', '#', 0, 30, NULL, 2, 122.904, 134.643, 'natural sciences'),
(46, '3504', NULL, 'MESLEK YÜKSEKOKULU', 'ÇOCUK GELİŞİMİ PROGRAMI', '#', 0, 30, NULL, 2, 119.291, 132.734, 'EA'),
(47, '3505', NULL, 'MESLEK YÜKSEKOKULU', 'PAZARLAMA PROGRAMI', '#', 0, 30, NULL, 2, 123.133, 139.659, 'EA'),
(48, NULL, NULL, 'MESLEK YÜKSEKOKULU', 'BASIM VE YAYIM TEKNOLOJİLERİ PROGRAMI', '#', 0, 0, NULL, 0, NULL, NULL, NULL),
(49, '3507', NULL, 'MESLEK YÜKSEKOKULU', 'TURİZM VE OTELCİLİK PROGRAMI', '#', 0, 30, NULL, 2, 122.747, 153.109, 'EA'),
(50, NULL, NULL, 'MESLEK YÜKSEKOKULU', 'ELEKTRİK PROGRAMI', '#', 0, 0, NULL, 0, NULL, NULL, NULL),
(51, NULL, NULL, 'MESLEK YÜKSEKOKULU', 'ELEKTRONİK PROGRAMI', '#', 0, 0, NULL, 0, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
