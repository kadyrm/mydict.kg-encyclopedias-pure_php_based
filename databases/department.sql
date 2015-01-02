-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2014 at 02:49 PM
-- Server version: 5.5.35
-- PHP Version: 5.4.4-14+deb7u8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dep`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `personeldb_id` int(11) NOT NULL,
  `faculty_id` int(10) unsigned NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `kg` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tr` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ru` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_faculty_id_foreign` (`faculty_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `personeldb_id`, `faculty_id`, `name`, `en`, `kg`, `tr`, `ru`) VALUES
(1, 13, 9, 'Western Languages', 'Western Languages', 'Батыш Тилдер', 'Batı Diller', 'Западные Языки'),
(2, 14, 9, 'Eastern Languages (Chinese Language)', 'Eastern Languages (Chinese Language)', 'Чыгыш Тилдер (Кытай Тили жана Адабияты)', 'Doğu Diller (Çin dili ve Edebiyatı)', 'Восточные Языки (Китайский Язык и Литература)'),
(3, 63, 9, 'Eastern Languages (The Russian Language and Literature)', 'Eastern Languages (The Russian Language and Literature)', 'Чыгыш Тилдер (Орус Тили жана Адабияты)', 'Doğu Diller (Rus dili ve Edebiyatı)', 'Восточные Языки (Русский Язык и Литература)'),
(4, 15, 9, 'Educational Science', 'Educational Science', 'Педагогика', 'Eğitim Bilimler', 'Педагогика'),
(5, 12, 9, 'Philosophy', 'Philosophy', 'Философия', 'Felsefe', 'Философия'),
(6, 11, 9, 'Sociology', 'Sociology', 'Социология', 'Sosyoloji', 'Социология'),
(7, 9, 9, 'History', 'History', 'Тарых', 'Tarih', 'История'),
(8, 10, 9, 'Turkology', 'Turkology', 'Түркология', 'Türkoloji', 'Тюркология'),
(9, 41, 9, 'Translations', 'Translations', 'Синхрондук Котормо', 'Mütercim-Tercümanlık', 'Синхронный Перевод'),
(10, 16, 10, 'Mathematics', 'Mathematics', 'Математика', 'Matematik', 'Математика'),
(11, 99, 10, 'Applied Mathematics and Informatics', 'Applied Mathematics and Informatics', 'Колдонмо Математика жана Информатика', 'Uygulamalı Matematik ve Enformatik', 'Прикладная Математика и Информатика'),
(12, 17, 10, 'Biology', 'Biology', 'Биология', 'Bioloji', 'Биология'),
(13, 18, 11, 'Painting', 'Painting', 'Сүрөт', 'Resim', 'Живопись'),
(14, 19, 11, 'Graphics', 'Graphics', 'Графика', 'Grafik', 'Графика'),
(15, 23, 14, 'Economy', 'Economy', 'Экономика', 'İktisat', 'Экономика'),
(16, 24, 14, 'Management', 'Management', 'Менеджмент', 'İşletme', 'Менеджмент'),
(17, 25, 14, 'Finance', 'Finance', 'Финанстар', 'Maliye', 'Финансы'),
(18, 26, 14, 'International Relations', 'International Relations', 'Эл Аралык Мамилелер', 'Uluslararası İlişkiler', 'Международные Отношения'),
(19, 100, 14, 'Finance and Banking', 'Finance and Banking', 'Финанстар жана Банктык Иштер', 'Finans ve Bankacılık', 'Финансы жана Банковское Дело'),
(20, 20, 12, 'Journalism', 'Journalism', 'Журналистика', 'Gazetecilik', 'Журналистика'),
(21, 21, 12, 'Public Relations and Advertising', 'Public Relations and Advertising', 'Коом менен Байланыш жана Реклама', 'Halkla İlişkiler ve Reklamcılık', 'Связи с Общественностью и Рекламное Дело'),
(22, 22, 12, 'Radio, TV and Cinema', 'Radio, TV and Cinema', 'Радио, телевидения жана кино', 'Radyo, TV ve Sinema', 'Радио, телевидения и кино'),
(23, 30, 15, 'Chemical Engineering', 'Chemical Engineering', 'Химия Инженердиги', 'Kimya Mühendisliği', 'Химическая Инженерия'),
(24, 27, 15, 'Computer Engineering', 'Computer Engineering', 'Компьютер Инженердиги', 'Bilgisayar Mühendisliği', 'Компьютерная Инженерия'),
(25, 28, 15, 'Ecological Engineering', 'Ecological Engineering', 'Экологиялык', 'Çevre Mühendisliği', 'Экология'),
(26, 29, 15, 'Food Engineering', 'Food Engineering', 'Тамак-Аш', 'Gıda Mühendisliği', 'Пищевая Инженерия'),
(27, 141, 16, 'Veterinary', 'Veterinary', 'Ветеринария', 'Veteriner', 'Ветеренария'),
(28, 31, 17, 'Horticulture and Agronomy', 'Horticulture and Agronomy', 'Мөмө-жемиш жана Талаа өсүмдүктөрү', 'Bahçe ve Tarla Bitkileri', 'Плодоовощеводство'),
(29, 32, 17, 'Plant Protection', 'Plant Protection', 'Өсүмдүктөрдү Коргоо', 'Bitki Koruma', 'Защита Растений'),
(30, 33, 17, 'Animal Science', 'Animal Science', 'Зоотехника', 'Zootekni', 'Зоотехника'),
(31, 102, 13, 'Islamic Studies', 'Islamic Studies', 'Ислам Билимдери', 'İslam Bilimler', 'Исламоведение'),
(32, 101, 13, 'Religious Studies', 'Religious Studies', 'Дин Билимдери', 'Din Bilimler', 'Религоиведение'),
(33, 46, 21, 'Turkish Language', 'Turkish Language', 'Түрк Тили', 'Türk Dili', 'Турецкый Язык'),
(34, 45, 21, 'Kyrgyz Language', 'Kyrgyz Language', 'Компьютер Инженердиги', 'Кыргыз Тили', 'Кыргызский Язык'),
(35, 44, 21, 'Russian Language', 'Russian Language', 'Орус Тили', 'Rus Dili', 'Русский Язык'),
(36, 43, 21, 'English Language', 'English Language', 'Англис Тили', 'İnglizce Dili', 'Английский Язык'),
(37, 117, 21, 'Chinese Language', 'Chinese Language', 'Кытай Тили', 'Çin Dili', 'Китайский Язык'),
(38, 118, 21, 'Language Teaching', 'Language Teaching', 'Тил үйрөтүү Бөлүмү', 'Dil Hazırlık', 'Преподавание Языков');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_faculty_id_foreign` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
