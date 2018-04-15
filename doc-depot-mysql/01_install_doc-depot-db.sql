-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Dim 05 Février 2017 à 15:05
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `doc-depot`
--

-- --------------------------------------------------------

--
-- Structure de la table `cc_alerte`
--

CREATE TABLE IF NOT EXISTS `cc_alerte` (
  `creation` text NOT NULL,
  `tel` text NOT NULL,
  `dept` text NOT NULL,
  `sueil` text NOT NULL,
  `dernier_ttt` text NOT NULL,
  `dernier_envoi` text NOT NULL,
  `debut_alerte` text NOT NULL,
  `stop` text NOT NULL,
  `ip` text NOT NULL,
  `modif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cc_alerte_canicule`
--

CREATE TABLE IF NOT EXISTS `cc_alerte_canicule` (
  `creation` text NOT NULL,
  `tel` text NOT NULL,
  `dept` text NOT NULL,
  `sueil` text NOT NULL,
  `dernier_ttt` text NOT NULL,
  `dernier_envoi` text NOT NULL,
  `debut_alerte` text NOT NULL,
  `stop` text NOT NULL,
  `ip` text NOT NULL,
  `modif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cc_audit_cnil`
--

CREATE TABLE IF NOT EXISTS `cc_audit_cnil` (
  `periode` text NOT NULL,
  `support` text NOT NULL,
  `resultat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cc_creneau`
--

CREATE TABLE IF NOT EXISTS `cc_creneau` (
  `idx` text NOT NULL,
  `activite` text NOT NULL,
  `date` text NOT NULL,
  `horaire` text NOT NULL,
  `user` text NOT NULL,
  `message` text NOT NULL,
  `preavis` text NOT NULL,
  `commentaire` text NOT NULL,
  `etat` text NOT NULL,
  `nbre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cc_user`
--

CREATE TABLE IF NOT EXISTS `cc_user` (
  `idx` text NOT NULL,
  `organisme` text NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` text NOT NULL,
  `mail` text NOT NULL,
  `adresse` text NOT NULL,
  `commentaire` text NOT NULL,
  `type` text NOT NULL,
  `etat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cx`
--

CREATE TABLE IF NOT EXISTS `cx` (
  `id` text NOT NULL,
  `tempo` int(11) NOT NULL,
  KEY `id` (`id`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dd_offres`
--

CREATE TABLE IF NOT EXISTS `dd_offres` (
  `idx` text NOT NULL,
  `organisme` text NOT NULL,
  `offre` text NOT NULL,
  `debut` text NOT NULL,
  `fin` text NOT NULL,
  `etat` text NOT NULL,
  `param1` text NOT NULL,
  `param2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dd_param`
--

CREATE TABLE IF NOT EXISTS `dd_param` (
  `nom` text,
  `valeur` text,
  KEY `nom` (`nom`(32))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dd_rdv`
--

CREATE TABLE IF NOT EXISTS `dd_rdv` (
  `idx` text,
  `user` text,
  `auteur` text,
  `date` text,
  `ligne` text,
  `avant` text,
  `etat` text,
  `fuseau` text NOT NULL,
  UNIQUE KEY `idx` (`idx`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fct_calendrier`
--

CREATE TABLE IF NOT EXISTS `fct_calendrier` (
  `organisme` text NOT NULL,
  `idx_activite` text NOT NULL,
  `libelle` text NOT NULL,
  `msg_std` text NOT NULL,
  `horaires` text NOT NULL,
  `0` text NOT NULL,
  `1` text NOT NULL,
  `2` text NOT NULL,
  `3` text NOT NULL,
  `4` text NOT NULL,
  `5` text NOT NULL,
  `6` text NOT NULL,
  `duree_creneau` text NOT NULL,
  `couleur_libre` text NOT NULL,
  `couleur_occupe` text NOT NULL,
  `couleur_plein` text NOT NULL,
  `nbre` text NOT NULL,
  `type` text NOT NULL,
  `debut` text NOT NULL,
  `fin` text NOT NULL,
  `validation` text NOT NULL,
  `auto_inscription` text NOT NULL,
  `acces_direct` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fct_fissa`
--

CREATE TABLE IF NOT EXISTS `fct_fissa` (
  `organisme` text NOT NULL,
  `support` text NOT NULL,
  `libelle` text NOT NULL,
  `acteur` text NOT NULL,
  `beneficiaire` text NOT NULL,
  `mails_rapports` text NOT NULL,
  `mails_rapport_detaille` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `date` text,
  `user` text,
  `ligne` text,
  `acteur` text NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_attachement`
--

CREATE TABLE IF NOT EXISTS `r_attachement` (
  `ref` text NOT NULL,
  `num` text NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL,
  `ident` text NOT NULL,
  `hash` text NOT NULL,
  `hash_chi` text NOT NULL,
  `hash_pdf` text NOT NULL,
  `hash_prot` text NOT NULL,
  `hash_mini` text NOT NULL,
  `deposeur` text NOT NULL,
  `sens` varchar(1) DEFAULT 'P',
  `idx` text NOT NULL,
  `user` text NOT NULL,
  `type` text NOT NULL,
  KEY `ref` (`ref`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_dde_acces`
--

CREATE TABLE IF NOT EXISTS `r_dde_acces` (
  `user` text NOT NULL,
  `code` text NOT NULL,
  `date_dde` text NOT NULL,
  `ddeur` text NOT NULL,
  `autorise` text NOT NULL,
  `date_auto` text NOT NULL,
  `type` text NOT NULL,
  KEY `user` (`user`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_lien`
--

CREATE TABLE IF NOT EXISTS `r_lien` (
  `date` text,
  `organisme` text,
  `user` text NOT NULL,
  KEY `user` (`user`(10))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_organisme`
--

CREATE TABLE IF NOT EXISTS `r_organisme` (
  `idx` int(11) NOT NULL,
  `organisme` text NOT NULL,
  `tel` text NOT NULL,
  `mail` text NOT NULL,
  `adresse` text NOT NULL,
  `sigle` text NOT NULL,
  `logo` text NOT NULL,
  `doc_autorise` text NOT NULL,
  `convention` tinyint(1) NOT NULL,
  `offre` text NOT NULL,
  `fuseau` text NOT NULL,
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_pages_users_debug`
--

CREATE TABLE IF NOT EXISTS `r_pages_users_debug` (
  `idx_user` text,
  `tps_exec` text,
  `resultat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_referent`
--

CREATE TABLE IF NOT EXISTS `r_referent` (
  `idx` int(11) NOT NULL,
  `user` text NOT NULL,
  `organisme` text NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `tel` text NOT NULL,
  `mail` text NOT NULL,
  `adresse` text NOT NULL,
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_sms`
--

CREATE TABLE IF NOT EXISTS `r_sms` (
  `date` text NOT NULL,
  `idx` text NOT NULL,
  `ligne` text NOT NULL,
  `num_seq` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_surv_mail`
--

CREATE TABLE IF NOT EXISTS `r_surv_mail` (
  `idx_user` text,
  `pw` text,
  `alerte` text,
  `pw_valide` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `r_user`
--

CREATE TABLE IF NOT EXISTS `r_user` (
  `idx` int(11) NOT NULL,
  `id` text,
  `pw` text,
  `droit` text,
  `mail` text,
  `organisme` text NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `anniv` text NOT NULL,
  `telephone` text NOT NULL,
  `nationalite` text NOT NULL,
  `ville_nat` text NOT NULL,
  `adresse` text NOT NULL,
  `recept_mail` text NOT NULL,
  `prenom_p` text NOT NULL,
  `prenom_m` text NOT NULL,
  `creation` text NOT NULL,
  `lecture` text NOT NULL,
  `last_cx` text NOT NULL,
  `last_hash_ctrl` text NOT NULL,
  `tel_valide` tinyint(1) NOT NULL,
  `cg_valide` text NOT NULL,
  `type_user` text NOT NULL,
  `langue` text NOT NULL,
  `fuseau` text NOT NULL,
  UNIQUE KEY `idx` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `zz_form`
--

CREATE TABLE IF NOT EXISTS `zz_form` (
  `nom` text NOT NULL,
  `date` date NOT NULL,
  `pres_repas` text NOT NULL,
  `commentaire` text NOT NULL,
  `user` text NOT NULL,
  `modif` text NOT NULL,
  `activites` text NOT NULL,
  `qte` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `z_bug`
--

CREATE TABLE IF NOT EXISTS `z_bug` (
  `idx` text NOT NULL,
  `titre` text NOT NULL,
  `descript` text NOT NULL,
  `type` text NOT NULL,
  `impact` text NOT NULL,
  `testeur` text NOT NULL,
  `etat` text NOT NULL,
  `date` text NOT NULL,
  `domaine` text NOT NULL,
  `version` text NOT NULL,
  `commentaire` text NOT NULL,
  `fonction` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `z_favoris`
--

CREATE TABLE IF NOT EXISTS `z_favoris` (
  `bdd` text,
  `user` text,
  `beneficiaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `z_log_t`
--

CREATE TABLE IF NOT EXISTS `z_log_t` (
  `date` text,
  `ligne` text,
  `ip` text NOT NULL,
  `prio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `z_traduire`
--

CREATE TABLE IF NOT EXISTS `z_traduire` (
  `idx` text,
  `fr` text,
  `gb` text,
  `es` text,
  `ar` text NOT NULL,
  `de` text,
  `ro` text NOT NULL,
  `original` text NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
