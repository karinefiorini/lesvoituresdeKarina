-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 24 Novembre 2016 à 10:14
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mydb`
--

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `affichageagence`
--
CREATE TABLE `affichageagence` (
`Ville` varchar(45)
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `affichagemodele`
--
CREATE TABLE `affichagemodele` (
`modele` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE `agence` (
  `idagence` int(11) NOT NULL,
  `nom_de_l_agence` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `code postal` int(11) NOT NULL,
  `Ville` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`idagence`, `nom_de_l_agence`, `adresse`, `code postal`, `Ville`) VALUES
(0, 'locoparis', 'avenue hausseman', 75011, 'Paris'),
(1, 'locoxerre', 'avenue gambetta', 89000, 'Auxerre'),
(3, 'locolyon', 'boulevard lafayette', 69000, 'Lyon'),
(4, 'locomarseille', 'rue des dames', 13004, 'Marseille');

-- --------------------------------------------------------

--
-- Structure de la table `agence_has_client`
--

CREATE TABLE `agence_has_client` (
  `agence_idagence` int(11) NOT NULL,
  `client_idclient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `code postal` varchar(5) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idclient`, `nom`, `prenom`, `adresse`, `code postal`, `tel`, `Email`, `age`) VALUES
(1, 'Zoubida', 'Zougor', 'allee des pinsons', '', '', '', 0),
(2, 'Zoubida', 'Zougor', 'allee des pinsons', '', '', '', 0),
(3, 'nom', 'prenom', 'adresse', 'codep', 'tel', 'email', 0);

-- --------------------------------------------------------

--
-- Structure de la table `concessionnaire`
--

CREATE TABLE `concessionnaire` (
  `idconcessionnaire` int(11) NOT NULL,
  `nom_concessionnaire` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `code_ postal` varchar(5) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contrat_de_reservation`
--

CREATE TABLE `contrat_de_reservation` (
  `idnumero_location` int(11) NOT NULL,
  `date_resa` datetime NOT NULL,
  `date_debut_periode` datetime NOT NULL,
  `date_fin_periode` datetime NOT NULL,
  `client_idclient` int(11) NOT NULL,
  `vehicule_idvehicule` int(11) NOT NULL,
  `agence_idagencealler` int(11) NOT NULL,
  `agence_idagenceretour` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `contrat_de_reservation`
--

INSERT INTO `contrat_de_reservation` (`idnumero_location`, `date_resa`, `date_debut_periode`, `date_fin_periode`, `client_idclient`, `vehicule_idvehicule`, `agence_idagencealler`, `agence_idagenceretour`) VALUES
(1, '2016-11-24 00:00:00', '2016-11-25 00:00:00', '2016-11-26 00:00:00', 1, 1, 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `idSaison` int(11) NOT NULL,
  `nomSaison` varchar(10) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `debut` date NOT NULL,
  `fin` date NOT NULL,
  `pourcentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `idvehicule` int(11) NOT NULL,
  `nombredeporte` varchar(45) NOT NULL,
  `nombredeplace` varchar(45) NOT NULL,
  `modele` varchar(45) NOT NULL,
  `prixachat` varchar(45) NOT NULL,
  `prixlocation` varchar(45) NOT NULL,
  `transmission` varchar(45) NOT NULL,
  `agence_idagence` int(11) NOT NULL,
  `climatisation` tinyint(1) NOT NULL,
  `baggages` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`idvehicule`, `nombredeporte`, `nombredeplace`, `modele`, `prixachat`, `prixlocation`, `transmission`, `agence_idagence`, `climatisation`, `baggages`, `photo`) VALUES
(1, '4', '5', 'toyota camry', '', '100.40', 'automatique', 0, 1, 2, 'img/toyota.jpg'),
(2, '4', '5', 'BMW 320 ModernLine', '', '100.40', 'automatique', 4, 1, 2, 'img/bmw.jpg'),
(3, '4', '5', 'Passat CC', '', '100.40', 'automatique', 3, 1, 2, 'img/passat.jpg'),
(4, '4', '5', 'Audi A1S-Line', '', '100.40', 'automatique', 1, 1, 2, 'img/audi.jpg'),
(5, '4', '5', 'Golf 7', '', '100.40', 'automatique', 0, 1, 2, 'img/golf.jpg');

-- --------------------------------------------------------

--
-- Structure de la vue `affichageagence`
--
DROP TABLE IF EXISTS `affichageagence`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `affichageagence`  AS  select `agence`.`Ville` AS `Ville` from `agence` ;

-- --------------------------------------------------------

--
-- Structure de la vue `affichagemodele`
--
DROP TABLE IF EXISTS `affichagemodele`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `affichagemodele`  AS  select `vehicule`.`modele` AS `modele` from `vehicule` ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `agence`
--
ALTER TABLE `agence`
  ADD PRIMARY KEY (`idagence`);

--
-- Index pour la table `agence_has_client`
--
ALTER TABLE `agence_has_client`
  ADD PRIMARY KEY (`client_idclient`),
  ADD KEY `fk_agence_has_client_client1_idx` (`client_idclient`),
  ADD KEY `fk_agence_has_client_agence1_idx` (`agence_idagence`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`);

--
-- Index pour la table `concessionnaire`
--
ALTER TABLE `concessionnaire`
  ADD PRIMARY KEY (`idconcessionnaire`);

--
-- Index pour la table `contrat_de_reservation`
--
ALTER TABLE `contrat_de_reservation`
  ADD PRIMARY KEY (`idnumero_location`),
  ADD KEY `fk_contrat_de_reservation_client1_idx` (`client_idclient`),
  ADD KEY `fk_contrat_de_reservation_vehicule1_idx` (`vehicule_idvehicule`),
  ADD KEY `fk_contrat_de_reservation_agence1_idx` (`agence_idagencealler`),
  ADD KEY `fk_contrat_de_reservation_agence2_idx` (`agence_idagenceretour`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`idSaison`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`idvehicule`),
  ADD KEY `fk_vehicule_agence_idx` (`agence_idagence`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `concessionnaire`
--
ALTER TABLE `concessionnaire`
  MODIFY `idconcessionnaire` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `contrat_de_reservation`
--
ALTER TABLE `contrat_de_reservation`
  MODIFY `idnumero_location` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `saison`
--
ALTER TABLE `saison`
  MODIFY `idSaison` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `idvehicule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `agence_has_client`
--
ALTER TABLE `agence_has_client`
  ADD CONSTRAINT `fk_agence_has_client_agence1` FOREIGN KEY (`agence_idagence`) REFERENCES `agence` (`idagence`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_agence_has_client_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `contrat_de_reservation`
--
ALTER TABLE `contrat_de_reservation`
  ADD CONSTRAINT `fk_contrat_de_reservation_agence1` FOREIGN KEY (`agence_idagencealler`) REFERENCES `agence` (`idagence`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrat_de_reservation_agence2` FOREIGN KEY (`agence_idagenceretour`) REFERENCES `agence` (`idagence`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrat_de_reservation_client1` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_contrat_de_reservation_vehicule1` FOREIGN KEY (`vehicule_idvehicule`) REFERENCES `vehicule` (`idvehicule`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD CONSTRAINT `fk_vehicule_agence` FOREIGN KEY (`agence_idagence`) REFERENCES `agence` (`idagence`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
