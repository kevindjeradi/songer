-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 02 août 2022 à 16:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tindersong`
--

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(20) NOT NULL,
  `id_son` varchar(20) NOT NULL,
  `titre` varchar(20) NOT NULL,
  `artiste` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `id_user`, `id_son`, `titre`, `artiste`, `genre`) VALUES
(1, '2', '111', '61515', '123', '212'),
(3, '2', '22', 'caca', 'coco', 'clac'),
(4, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(5, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(6, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(7, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(8, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(9, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(10, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(11, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(12, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(13, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(14, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(15, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(16, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(17, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(18, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(19, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(20, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(21, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(22, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(23, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(24, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(25, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(26, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(27, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(28, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(29, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(30, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(31, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(32, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(33, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(34, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(35, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(36, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(37, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(38, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(39, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(40, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(41, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(42, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(43, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(44, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(45, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(46, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(47, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(48, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(49, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(50, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(51, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(52, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(53, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop'),
(54, '2', 'tra.661126732', 'About Damn Time', 'Lizzo', 'pop');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_user` int(20) NOT NULL,
  `rock` int(10) NOT NULL,
  `pop` int(10) NOT NULL,
  `jazz` int(10) NOT NULL,
  `soul` int(10) NOT NULL,
  `rap` int(10) NOT NULL,
  `folk` int(10) NOT NULL,
  `punk` int(10) NOT NULL,
  `metal` int(10) NOT NULL,
  `hip_hop` int(10) NOT NULL,
  `rnb` int(10) NOT NULL,
  `blues` int(10) NOT NULL,
  `country` int(10) NOT NULL,
  `electro` int(10) NOT NULL,
  `raggae` int(10) NOT NULL,
  `funk` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `id_user`, `rock`, `pop`, `jazz`, `soul`, `rap`, `folk`, `punk`, `metal`, `hip_hop`, `rnb`, `blues`, `country`, `electro`, `raggae`, `funk`) VALUES
(1, 228, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 2, 1, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(25) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(25) NOT NULL,
  `token` char(255) NOT NULL,
  `like_numb` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `pseudo`, `email`, `phone`, `password`, `token`, `like_numb`) VALUES
(2, 'samyy', 'sam@s.com', 'coco', 'coco', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhbUBzLmNvbSIsImlhdCI6MTY1OTM0NzI0MiwiZXhwIjoxNjU5MzY1MjQyfQ.ZpPblwg0zWfYsZApKWyaG26gu_0xl4SVXmrWOkADPbE', 72),
(3, 'samyy', 'sam@s.com', 'coco', 'coco', '', 0),
(5, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(6, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(7, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(8, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(9, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
