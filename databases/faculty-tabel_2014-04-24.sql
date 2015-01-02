-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2014 at 09:57 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manas`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `en` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `kg` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tr` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `ru` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `en`, `kg`, `tr`, `ru`) VALUES
(9, 'Letters', 'Letters', 'Гуманитардык', 'Edebiyat', 'Гуманитарный'),
(10, 'Science', 'Science', 'Табигый Илимдер', 'Fen', 'Точных Наук'),
(11, 'Fine Arts', 'Fine Arts', 'Көркөм өнөр', 'Güzel Sanatlar', 'Искусств'),
(12, 'Communication', 'Communication', 'Комуникациялык', 'İletişim', 'Комуникация'),
(13, 'Theology', 'Theology', 'Теология', 'İlahiyat', 'Теология'),
(14, 'Economics and Administrative Science', 'Economics and Administrative Science', 'Экономика жана Башкаруу', 'İktisadi ve İdari Bilimler', 'Экономики и Управления'),
(15, 'Engineering', 'Engineering', 'Инженердик', 'Mühendislik', 'Инженерия'),
(16, 'Veterinary', 'Veterinary', 'Ветеринардык', 'Veteriner', 'Ветеринария'),
(17, 'Agriculture', 'Agriculture', 'Айыл Чарба', 'Ziraat', 'Сельскохозяйственный'),
(20, 'Foreign Languages', 'Foreign Languages', 'Чет тилдер', 'Yabancı Diller', 'Иностранных Языков'),
(21, 'High School of Foreign Languages', 'High School of Foreign Languages', 'Чет тилдер жогорку мектеби', 'Yabancı Diller Yüksek Okulu', 'Высшая Школа Иностранных Языков');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
