-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 03 oct. 2025 à 07:44
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `email`, `mot_de_passe`, `created_at`) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@supercar.com', 'TON_HASH_ICI', '2025-09-22 17:43:16'),
(2, 'daniel', 'ramiandrisoa', 'Dani@supercar.com', 'kjzdbuefazbcnxwhryzo', '2025-09-22 17:47:26'),
(3, 'baba', 'dani', 'dimitri@gmail.com', '$2y$10$L5mCzOv5DaFUzf.fiaYnieTgNgOQukW/FMFL4OPPbgE8UmhHfg5Fq', '2025-09-22 18:44:26');

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`id`, `marque`, `modele`, `prix`, `description`, `image`, `created_at`) VALUES
(1, 'Ferrari', '488 Pista', 300000.00, 'Superbe voiture de sport', 'uploads/ferrari.jpg', '2025-09-23 07:42:56'),
(2, 'MERCEDES', 'AMG', 1000000.00, 'PULL BACLEY', 'uploads/68d259f262db3_AMG GT.jpg', '2025-09-23 08:27:30'),
(3, 'MERCEDES', 'AMG', 1000000.00, 'PULL BACLEY', 'uploads/68d260e8f03c0_AMG GT.jpg', '2025-09-23 08:57:13');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `messages` text,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`idcontact`, `nom`, `adresse`, `email`, `messages`) VALUES
(1, 'Gerome', 'Ebene', 'rafalifrancky03@gmal.com', 'est ce que je pourrais avoir plus de détails sur le ford Ft-150\r\n'),
(2, 'Ginola', 'Lot vv 172 SA Andohamandry', 'manjakaginola@gmail.com', 'salama tompoko oh'),
(3, 'Ginola', 'Lot vv 172 SA Andohamandry', 'manjakaginola@gmail.com', 'kindindrenty'),
(4, 'Ginola', 'Lot vv 172 SA Andohamandry', 'manjakaginola@gmail.com', 'kindindrenty'),
(5, 'baba', 'quatre bornes', 'Ban@gmail.com', 'kamo raho');

-- --------------------------------------------------------

--
-- Structure de la table `demandes_essai`
--

DROP TABLE IF EXISTS `demandes_essai`;
CREATE TABLE IF NOT EXISTS `demandes_essai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `voiture` varchar(100) DEFAULT NULL,
  `date_essai` date DEFAULT NULL,
  `date_demande` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `demandes_essai`
--

INSERT INTO `demandes_essai` (`id`, `user_id`, `nom`, `prenom`, `email`, `voiture`, `date_essai`, `date_demande`) VALUES
(1, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 05:46:20'),
(2, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 05:54:53'),
(3, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 05:55:15'),
(4, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 06:23:34'),
(5, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 06:27:23'),
(6, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 06:28:46'),
(7, 0, 'Arena', 'ior', 'arena@gmail.com', 'Mercedes', '2025-06-02', '2025-03-28 06:33:13');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `Nom`, `Mdp`) VALUES
(1, 'admin', '1234'),
(2, 'test', 'passer'),
(3, 'supercar', 'voiture');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(20) DEFAULT NULL,
  `A` varchar(1000) DEFAULT NULL,
  `B` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_service` enum('Maintenance','Réparation','Pièces de rechange') NOT NULL,
  `categorie` enum('A','B') NOT NULL,
  `contenu` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `type_service`, `categorie`, `contenu`) VALUES
(1, 'Maintenance', 'A', 'Moteur, Transmission, Boîte de vitesse'),
(2, 'Maintenance', 'B', 'Carrosserie, Climatiseur, Pneu'),
(3, 'Réparation', 'A', 'Moteur,Transmission , Boite de Vitesse'),
(4, 'Réparation', 'B', 'Carroserie,Climatiseur,Pneu'),
(5, 'Pièces de rechange', 'A', 'Essuie glace,Disque frein,Amortisseur'),
(6, 'Pièces de rechange', 'B', 'Batterie, Alternateur,Radiateurs ');

-- --------------------------------------------------------

--
-- Structure de la table `test_drives`
--

DROP TABLE IF EXISTS `test_drives`;
CREATE TABLE IF NOT EXISTS `test_drives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(100) NOT NULL,
  `email_client` varchar(255) NOT NULL,
  `car_id` int NOT NULL,
  `date_essai` date NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `test_drives`
--

INSERT INTO `test_drives` (`id`, `nom_client`, `email_client`, `car_id`, `date_essai`, `status`, `created_at`) VALUES
(1, 'Jean Dupont', 'jean@supercar.com', 1, '2025-10-01', 'rejected', '2025-09-23 07:43:59');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nom_utilisateur` (`nom_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `nom_utilisateur`, `mot_de_passe`) VALUES
(1, 'Arena', 'ior', 'arena@gmail.com', 'Arenaior', '1234'),
(2, 'daniel', 'baba', 'DA@gmail.com', 'dani', 'EREN');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
CREATE TABLE IF NOT EXISTS `voitures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(100) DEFAULT NULL,
  `modele` varchar(100) DEFAULT NULL,
  `annee` int DEFAULT NULL,
  `prix` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
