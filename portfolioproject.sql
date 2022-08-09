-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 06 août 2022 à 06:16
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolioproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(11) NOT NULL,
  `Lorem_ipsum1` text NOT NULL,
  `Lorem_ipsum2` text NOT NULL,
  `Projects_completed` int(100) NOT NULL,
  `Years_experience` int(100) NOT NULL,
  `Happy_clients` int(100) NOT NULL,
  `Customer_reviews` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `about_me`
--

INSERT INTO `about_me` (`id`, `Lorem_ipsum1`, `Lorem_ipsum2`, `Projects_completed`, `Years_experience`, `Happy_clients`, `Customer_reviews`) VALUES
(1, 'aaa', 'aaaaa', 3, 1, 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(49) NOT NULL,
  `passeword` varchar(49) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `passeword`, `Date`) VALUES
(1, 'aimane', 'aaa', '2022-08-05');

-- --------------------------------------------------------

--
-- Structure de la table `contactmy`
--

CREATE TABLE `contactmy` (
  `id` int(11) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Email` varchar(49) NOT NULL,
  `Education` varchar(100) NOT NULL,
  `Mobile` int(49) NOT NULL,
  `Languages` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contactmy`
--

INSERT INTO `contactmy` (`id`, `Location`, `Email`, `Education`, `Mobile`, `Languages`) VALUES
(1, 'Morroco-Casablanca', 'aymanrafsi2@gmail.com', ' École supérieure de technologie CASABLANCA (LICENCES )', 2147483647, 'ENGLISH-FRENCH-SPANISH-ARABIC');

-- --------------------------------------------------------

--
-- Structure de la table `contact_clients`
--

CREATE TABLE `contact_clients` (
  `id` int(11) NOT NULL,
  `Name` varchar(49) NOT NULL,
  `Email` varchar(49) NOT NULL,
  `Subject` varchar(49) NOT NULL,
  `Message` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contact_clients`
--

INSERT INTO `contact_clients` (`id`, `Name`, `Email`, `Subject`, `Message`, `Date`) VALUES
(8, 'AIMANE RAFSI', 'aymanrafsi2@gmail.com', 'SQSQSQxx', 'xxxx', '2022-08-06 02:57:47');

-- --------------------------------------------------------

--
-- Structure de la table `info_admin`
--

CREATE TABLE `info_admin` (
  `id` int(11) NOT NULL,
  `first_ipsum` varchar(49) NOT NULL,
  `name` varchar(49) NOT NULL,
  `work_name` varchar(49) NOT NULL,
  `Lorem_ipsum` text NOT NULL,
  `img_admin` varchar(49) NOT NULL,
  `CV` varchar(49) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `info_admin`
--

INSERT INTO `info_admin` (`id`, `first_ipsum`, `name`, `work_name`, `Lorem_ipsum`, `img_admin`, `CV`) VALUES
(1, 'Hello I\'m', ' Aimane Rafsi', 'Web devloper', 'I\'m a Web Developer, I love to create beautiful and functional websites. based in the Morocco,Casablanca.', '999561416_IMM.jpg', '875029092_CV_2022-08-04_AIMANE_RAFSI (1).pdf');

-- --------------------------------------------------------

--
-- Structure de la table `myskills`
--

CREATE TABLE `myskills` (
  `id` int(11) NOT NULL,
  `langage` varchar(49) NOT NULL,
  `pourcentage` int(100) NOT NULL,
  `chiffre` varchar(49) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `myskills`
--

INSERT INTO `myskills` (`id`, `langage`, `pourcentage`, `chiffre`) VALUES
(14, 'PHP', 75, 'soixante-quinze'),
(15, 'HTML', 80, 'quatre-vingts'),
(16, 'CSS', 80, 'quatre-vingts'),
(17, 'JS', 50, 'cinquante'),
(18, 'Sass', 40, 'quarante'),
(19, 'SQL', 80, 'quatre-vingts'),
(20, 'UML', 50, 'cinquante'),
(21, 'JAVA', 40, 'quarante'),
(22, 'LARAVEL', 50, 'cinquante');

-- --------------------------------------------------------

--
-- Structure de la table `mytimeline`
--

CREATE TABLE `mytimeline` (
  `id` int(11) NOT NULL,
  `Time` int(100) NOT NULL,
  `Work_name` varchar(49) NOT NULL,
  `societe_name` varchar(49) NOT NULL,
  `Lorem_ipsum` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mytimeline`
--

INSERT INTO `mytimeline` (`id`, `Time`, `Work_name`, `societe_name`, `Lorem_ipsum`) VALUES
(5, 2020, 'PROJET FIN D\'ETUDE', 'NTIC 1 ( OFPPT )', 'réalisation et création d\'un site web gestion de stock. (HTML. CSS. JS. Bootstrap. PHP. SQL)'),
(6, 2021, 'GESTION DU MATÉRIEL', 'Ecole supérieure de Management (HEM)', 'stage'),
(7, 2022, 'PROJET FIN D\'ETUDE', ' École supérieure de technologie (ESTC) ', 'réalisation et création d\'un site web e commerce. (HTML. CSS. Sass. JS. PHP. SQL )'),
(8, 2022, 'TRAVAILLER COMME FREELANCER', '--', '--');

-- --------------------------------------------------------

--
-- Structure de la table `mywork`
--

CREATE TABLE `mywork` (
  `id` int(11) NOT NULL,
  `img` varchar(49) NOT NULL,
  `src_github` varchar(49) NOT NULL,
  `src_youtube` varchar(49) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contactmy`
--
ALTER TABLE `contactmy`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contact_clients`
--
ALTER TABLE `contact_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `info_admin`
--
ALTER TABLE `info_admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `myskills`
--
ALTER TABLE `myskills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mytimeline`
--
ALTER TABLE `mytimeline`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mywork`
--
ALTER TABLE `mywork`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `contactmy`
--
ALTER TABLE `contactmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `contact_clients`
--
ALTER TABLE `contact_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `info_admin`
--
ALTER TABLE `info_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `myskills`
--
ALTER TABLE `myskills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `mytimeline`
--
ALTER TABLE `mytimeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `mywork`
--
ALTER TABLE `mywork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
