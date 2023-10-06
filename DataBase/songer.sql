-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 27 août 2022 à 13:36
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
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(25) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` char(255) NOT NULL,
  `like_numb` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `pseudo`, `email`, `phone`, `password`, `token`, `like_numb`) VALUES
(2, 'samyy', 'sam@s.com', 'coco', 'coco', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhbUBzLmNvbSIsImlhdCI6MTY1OTM0NzI0MiwiZXhwIjoxNjU5MzY1MjQyfQ.ZpPblwg0zWfYsZApKWyaG26gu_0xl4SVXmrWOkADPbE', 72),
(3, 'samyy', 'sam@s.com', 'coco', 'coco', '', 0),
(10, 'samyy2', 'sams@s.com', 'coco', 'coco', '', 0),
(5, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(6, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(7, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(8, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(9, 'fouroulou', 'haha@hh.com', 'caca98', 'caca98', '', 0),
(11, 'samyy2', 'sams@s.com', 'coc2o', 'coc2o', '', 0),
(12, 'samyy222', 'sams@s.com', 'coc22o', 'coc22o', '', 0),
(13, 'hey2322', 'sams@s.com', 'cocoo', 'coc22o', '', 0),
(14, 'hey2322', 'sams@s.com', 'cocoo', 'coc22o', '', 0),
(15, 'hey2322', 'sams@s.com', 'cocoo', 'coc22o', '', 0),
(16, 'hey2322', 'sams@s.com', 'cocoo', 'coc22o', '', 0),
(17, 'hey2322', 'sams@s.com', 'cocoo', 'coc22o', '', 0),
(18, 'hey332322', 'sams@s.com', 'cocoo', '[object Promise]', '', 0),
(19, 'hey332322', 'sams@s.com', 'cocoo', '[object Promise]', '', 0),
(20, 'hey', 'sams@s.com', 'cocoo', '$2b$05$FmoqH00l6vfVyZDSXSUXEO7si99DGjJZLyl5Amsl9BAynOIE1lYda', '', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
