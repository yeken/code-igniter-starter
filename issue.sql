-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 24, 2015 at 06:25 PM
-- Server version: 5.5.43-0ubuntu0.12.04.1
-- PHP Version: 5.5.23-1+deb.sury.org~precise+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `issue`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(11) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `categories_names` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `groups_names` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `description` text NOT NULL,
  `date_event_start` datetime NOT NULL,
  `web` text NOT NULL,
  `source` varchar(250) NOT NULL,
  `file_manager_id` int(11) unsigned NOT NULL,
  `video` varchar(255) NOT NULL,
  `active` smallint(1) unsigned NOT NULL,
  `show_agenda` smallint(6) NOT NULL,
  `show_insite` smallint(6) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `show_image_details` tinyint(1) unsigned NOT NULL,
  `user_listed` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `creator_id` int(11) unsigned NOT NULL,
  `creator_name` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=769 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `category_id`, `categories_names`, `group_id`, `groups_names`, `title`, `brief`, `description`, `date_event_start`, `web`, `source`, `file_manager_id`, `video`, `active`, `show_agenda`, `show_insite`, `tags`, `views`, `show_image_details`, `user_listed`, `date_created`, `creator_id`, `creator_name`) VALUES
(767, 5, 'prueba', 0, 'Sin grupo', 'titulo de prueba 1', 'resumen de prueba 1', 'descripcion de prueba 1', '2015-07-24 18:21:00', '#', 'tester', 99, '', 1, 1, 1, 'test', 0, 1, 0, '2015-07-24 18:22:56', 3, 'issue'),
(768, 5, 'prueba', 0, 'Sin grupo', 'titulo prueba 2', 'RESUMEN PRUEBA 2', 'descripcion prueba 3', '2015-07-24 18:23:00', '', 'tester', 100, '', 1, 1, 1, '', 0, 1, 0, '2015-07-24 18:23:34', 3, 'issue');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE IF NOT EXISTS `articles_categories` (
  `category_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`category_id`, `title`, `active`, `total_articles`, `creator_id`, `creator_name`, `date_created`) VALUES
(5, 'prueba', 1, 0, 3, 'issue', '2015-07-24 18:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories_articles`
--

CREATE TABLE IF NOT EXISTS `articles_categories_articles` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories_deleted`
--

CREATE TABLE IF NOT EXISTS `articles_categories_deleted` (
  `category_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_deleted`
--

CREATE TABLE IF NOT EXISTS `articles_deleted` (
  `article_id` int(11) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `categories_names` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `groups_names` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `description` text NOT NULL,
  `date_event_start` datetime NOT NULL,
  `web` text NOT NULL,
  `source` varchar(250) NOT NULL,
  `file_manager_id` int(11) unsigned NOT NULL,
  `video` varchar(255) NOT NULL,
  `active` smallint(1) unsigned NOT NULL,
  `show_agenda` smallint(6) NOT NULL,
  `show_insite` smallint(6) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `show_image_details` tinyint(1) unsigned NOT NULL,
  `user_listed` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `creator_id` int(11) unsigned NOT NULL,
  `creator_name` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=737 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_groups`
--

CREATE TABLE IF NOT EXISTS `articles_groups` (
  `group_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `show_home` smallint(1) NOT NULL,
  `priority` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_groups_deleted`
--

CREATE TABLE IF NOT EXISTS `articles_groups_deleted` (
  `group_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `show_home` smallint(1) NOT NULL,
  `priority` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags`
--

CREATE TABLE IF NOT EXISTS `articles_tags` (
  `article_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles_tags_articles`
--

CREATE TABLE IF NOT EXISTS `articles_tags_articles` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `banner_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `brief` varchar(145) NOT NULL,
  `description` varchar(345) NOT NULL,
  `button` varchar(45) NOT NULL,
  `button_txt` varchar(45) NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `banner_url` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `name`, `brief`, `description`, `button`, `button_txt`, `file_manager_id`, `active`, `date_created`, `banner_url`) VALUES
(1, 'Marcá tu propio estilo con Crazy Colors', '', '<p class="p1"><span class="s1">Coloración semipermanente de tonos puros vibrantes y de aplicación directa, sin amoníaco ni oxidantes.</span></p><p class="p1"></p>', 'btn-white', 'txt-black', 15, 1, '2015-07-07 20:35:39', 'http://www.adyouwish.com/issue/decoloracion'),
(2, 'Brillá con nuestra línea 3D Gloss', '', 'Issue desarrolló una nueva tintura con brillo tridimensional para lograr colores más intensos y un brillo como nunca antes.', 'btn-black', 'txt-white', 16, 1, '2015-07-07 20:38:10', 'http://www.adyouwish.com/issue/coloracion'),
(3, 'Conocé nuestra línea Issue Keratin', '', '<p class="p1">\n\n\n\n\n\n\n\n</p><p class="p1" style="line-height: 1;"><span class="s1">Issue Kit Keratin K2 repara y fortalece&nbsp;</span><span style="line-height: 1;">el cabello durante el proceso de coloración.</span></p>', 'btn-black', 'txt-white', 30, 1, '2015-07-16 14:19:16', 'http://www.adyouwish.com/issue/tratamientos');

-- --------------------------------------------------------

--
-- Table structure for table `bitauth_groups`
--

CREATE TABLE IF NOT EXISTS `bitauth_groups` (
  `group_id` int(10) unsigned NOT NULL,
  `name` varchar(48) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `roles` text CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bitauth_groups`
--

INSERT INTO `bitauth_groups` (`group_id`, `name`, `description`, `roles`) VALUES
(1, 'Administrador', 'Administadores con accesso completo a todo el sitio', '1'),
(2, 'Manager', '', '0'),
(3, 'Jugador', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bitauth_logins`
--

CREATE TABLE IF NOT EXISTS `bitauth_logins` (
  `login_id` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `success` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bitauth_logins`
--

INSERT INTO `bitauth_logins` (`login_id`, `ip_address`, `user_id`, `time`, `success`) VALUES
(1, 3232235881, 3, '2014-09-09 17:02:08', 1),
(2, 3232235881, 3, '2014-09-10 16:34:09', 1),
(3, 3232235881, 3, '2014-09-11 10:46:51', 1),
(4, 3232243969, 3, '2015-06-19 19:39:35', 1),
(5, 3232243969, 3, '2015-07-06 16:50:54', 1),
(6, 3232243969, 3, '2015-07-06 22:35:01', 1),
(7, 3232243969, 3, '2015-07-07 20:31:36', 1),
(8, 3232243969, 3, '2015-07-07 23:51:21', 1),
(9, 3232243969, 3, '2015-07-08 16:15:29', 1),
(10, 3232243969, 3, '2015-07-08 21:17:10', 1),
(11, 3232243969, 3, '2015-07-09 18:03:03', 1),
(12, 3232243969, 3, '2015-07-10 13:20:47', 1),
(13, 3232243969, 3, '2015-07-12 18:12:12', 1),
(14, 3047673263, 0, '2015-07-13 15:02:57', 0),
(15, 3047673263, 0, '2015-07-13 15:03:05', 0),
(16, 3047673263, 3, '2015-07-13 15:03:15', 0),
(17, 3047673263, 3, '2015-07-13 15:03:48', 1),
(18, 3047673263, 3, '2015-07-13 15:05:37', 1),
(19, 3047876798, 0, '2015-07-15 15:07:16', 0),
(20, 3047876798, 0, '2015-07-15 15:14:10', 0),
(21, 3047876798, 3, '2015-07-15 15:14:22', 0),
(22, 3047876798, 3, '2015-07-15 15:14:32', 0),
(23, 3047876798, 3, '2015-07-15 15:17:22', 0),
(24, 3047876798, 3, '2015-07-15 15:17:35', 0),
(25, 3047876798, 3, '2015-07-15 15:17:40', 0),
(26, 3047673263, 3, '2015-07-15 15:18:40', 1),
(27, 3047673263, 3, '2015-07-15 15:19:08', 1),
(28, 3047876798, 3, '2015-07-15 15:19:51', 0),
(29, 3047876798, 3, '2015-07-15 15:20:15', 1),
(30, 3047876798, 3, '2015-07-15 15:27:41', 1),
(31, 3047876798, 3, '2015-07-16 14:15:13', 1),
(32, 3043905816, 3, '2015-07-16 17:12:16', 1),
(33, 3047876798, 3, '2015-07-16 17:44:57', 1),
(34, 3047876798, 3, '2015-07-16 17:46:01', 1),
(35, 3047876798, 3, '2015-07-16 20:36:48', 1),
(36, 3047876798, 3, '2015-07-17 18:14:04', 1),
(37, 3047675369, 3, '2015-07-17 18:29:50', 1),
(38, 3047876798, 3, '2015-07-17 19:04:59', 1),
(39, 3188961880, 3, '2015-07-17 20:12:04', 1),
(40, 3047876798, 3, '2015-07-17 20:42:52', 1),
(41, 3047876798, 3, '2015-07-17 20:52:44', 1),
(42, 3232243969, 3, '2015-07-20 14:16:25', 1),
(43, 3047876798, 3, '2015-07-20 17:43:06', 1),
(44, 3047876798, 3, '2015-07-20 19:13:40', 0),
(45, 3047876798, 3, '2015-07-20 20:52:46', 1),
(46, 3047876798, 3, '2015-07-20 21:16:16', 1),
(47, 3047876798, 3, '2015-07-21 13:01:53', 1),
(48, 3047876798, 3, '2015-07-21 13:44:47', 1),
(49, 3047876798, 3, '2015-07-21 14:14:45', 1),
(50, 3047876798, 3, '2015-07-21 18:58:03', 1),
(51, 3200137226, 3, '2015-07-21 19:25:44', 1),
(52, 3047673879, 3, '2015-07-21 19:37:23', 1),
(53, 3047876798, 3, '2015-07-21 20:26:17', 1),
(54, 3047876798, 3, '2015-07-22 13:24:57', 1),
(55, 3047876798, 3, '2015-07-22 15:16:43', 1),
(56, 3047876798, 3, '2015-07-23 14:30:36', 1),
(57, 3036795817, 3, '2015-07-23 14:32:16', 1),
(58, 3189762968, 3, '2015-07-23 15:45:22', 1),
(59, 3047876798, 3, '2015-07-23 18:14:25', 1),
(60, 3047876798, 3, '2015-07-23 18:20:34', 1),
(61, 3232243969, 3, '2015-07-23 23:59:56', 0),
(62, 3232243969, 3, '2015-07-24 18:21:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bitauth_userdata`
--

CREATE TABLE IF NOT EXISTS `bitauth_userdata` (
  `userdata_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bitauth_userdata`
--

INSERT INTO `bitauth_userdata` (`userdata_id`, `user_id`) VALUES
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bitauth_users`
--

CREATE TABLE IF NOT EXISTS `bitauth_users` (
  `user_id` int(11) unsigned NOT NULL,
  `username` varchar(32) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `displayname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `password_last_set` datetime NOT NULL,
  `password_never_expires` tinyint(1) NOT NULL DEFAULT '0',
  `remember_me` varchar(40) NOT NULL,
  `activation_code` varchar(40) NOT NULL,
  `groups_names` varchar(255) NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_code` varchar(40) NOT NULL,
  `forgot_generated` datetime NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `file_manager_id` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_login_ip` int(10) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21826 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bitauth_users`
--

INSERT INTO `bitauth_users` (`user_id`, `username`, `fullname`, `displayname`, `email`, `password`, `password_last_set`, `password_never_expires`, `remember_me`, `activation_code`, `groups_names`, `group_id`, `active`, `forgot_code`, `forgot_generated`, `enabled`, `file_manager_id`, `last_login`, `last_login_ip`, `date_created`) VALUES
(21822, 'bla', 'bla blas', '', 'admin@bla.com', '$2a$08$LfEZbVVeor1fIw79d5GEO.DVNWT6KZUJsYHkDIudtDX0iI0YPs8s2', '2014-08-29 12:34:33', 0, '8812207e38cccfed486024394288d8a22b66a632', '', 'Jugador', 3, 1, '', '0000-00-00 00:00:00', 1, 21, '2014-08-29 12:34:58', 2147483647, '2014-08-20 18:06:35'),
(21823, 'admin3232', '32132132', '', 'j@a.com', '$2a$08$jJelYpqj2/qPWkah4.QFQOWYwNxJrndapu6XrUFkSBYrR9CLDJbk.', '2014-08-20 18:21:46', 0, '', '', 'Jugador', 3, 1, '', '0000-00-00 00:00:00', 1, 22, '0000-00-00 00:00:00', 0, '2014-08-20 18:21:46'),
(3, 'issue', 'Admin tester', '', 'admin@admin.com', '$2a$08$1cpXj47yJmFf2It2gDeuyOYNAeAcHD6OjEjr7ZRTe7pYPc16yaeoG', '2015-07-13 15:05:29', 0, '18555419175df20bcca74e2305b21615548cc6f1', '', 'Administrador', 1, 1, '', '2015-07-15 15:17:51', 1, 23, '2015-07-24 18:21:40', 2147483647, '2012-09-28 16:27:01'),
(21824, 'bla', 'Blas parera', '', 'bla2@gmail.com', '$2a$08$bDfP.YHM8GiAdb0CsjXwH.Z41rja57p6r/dZyE6mmHT0mwOXXjBse', '2014-08-29 12:40:08', 0, '', '', 'Manager', 2, 1, '', '0000-00-00 00:00:00', 1, 24, '2014-08-29 12:40:28', 2147483647, '2014-08-29 12:40:08'),
(21825, 'bla', 'fdsfd', '', 'bla@bla.com', '$2a$08$MqhbrxvxBsfmga5f//Xt1uZI08GxZ60R4ZrOB/PmR70W0Kum0cKl.', '2014-08-29 13:30:28', 0, '', '', 'Manager', 2, 1, '', '0000-00-00 00:00:00', 1, 25, '0000-00-00 00:00:00', 0, '2014-08-29 13:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `post_id` int(10) unsigned NOT NULL,
  `name` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(45) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`post_id`, `name`, `description`, `category`, `active`, `file_manager_id`, `date_created`) VALUES
(6, 'Volvieron los rulos', '<p class="primero" style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Volvieron los rulos. Vieron que durante muchos años se usaron las ondas descontracturadas, grandes y desarmadas??</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Bueno, volvieron los rulos, después de los 80´s y el boom de las permanentes, de los 90´s y el lllllaaaacio larrrrrgo, de los 2000, con las onditas en las puntas, en 2010, con las ondas cepilladas de las Kardashians&nbsp;<b>ahora, la que va, son los rulos</b>. Así que, por si se quieren unir a la oleada ruluda, les vamos a mostrar<b>&nbsp;cómo hacerlos y que queden naturales</b>.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Vamos al paso a paso:</b></p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056838" src="http://bucket3.glanacion.com/anexos/fotos/38/pipi-cucu-pelo-2056838w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>1-&nbsp;</b>Dividí tu pelo en 2 o 3. Dependiendo la cantidad de pelo que tengas. Lo ideal es hacerlo en tres partes para generar más rulos y por ende más volumen.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056839" src="http://bucket1.glanacion.com/anexos/fotos/39/pipi-cucu-pelo-2056839w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>2-</b>&nbsp;Humedecé el pelo con "Flatliner" de Schwarzkopf. No tires mucho, solo humedecelo un poquito. Vas a ver que el rulo va a quedar más marcado y suave.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056840" src="http://bucket1.glanacion.com/anexos/fotos/40/pipi-cucu-pelo-2056840w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>3-&nbsp;</b>Con la buclera bieeeen caliente, empezá a agarrar mechones. Tratá de que no sean muy gruesos. Siempre que sea un rulo para adentro y uno para afuera. NO hagan los rulos para el mismo lado!! enrosquen para un lado y para otro!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056841" src="http://bucket2.glanacion.com/anexos/fotos/41/pipi-cucu-pelo-2056841w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>4-&nbsp;</b>Repetí el mismo paso con la cantidad de capas que te hayas hecho. Vas a ver que los rulos de arriba son mucho más faciles porque tenés mucho más espacio y además el pelo es más largo. Asi que paciencia con la primera parte!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056842" src="http://bucket3.glanacion.com/anexos/fotos/42/pipi-cucu-pelo-2056842w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056861" src="http://bucket2.glanacion.com/anexos/fotos/61/pipi-cucu-pelo-2056861w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>5-&nbsp;</b>Así te quedan los rulos si no los desarmás, podés buscar este look que es más armadito y rígido.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056843" src="http://bucket1.glanacion.com/anexos/fotos/43/pipi-cucu-pelo-2056843w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>6-</b>&nbsp;Con la yema de tus dedos, metete en cada rulo y batilo en toda su extensión. Con la mano apoyada en las puntas del pelo, subilos un poco.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056844" src="http://bucket2.glanacion.com/anexos/fotos/44/pipi-cucu-pelo-2056844w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>7-&nbsp;</b>Si te copa el look más descontracturado, desarmá la raya bien desde la raíz.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056845" src="http://bucket3.glanacion.com/anexos/fotos/45/pipi-cucu-pelo-2056845w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056862" src="http://bucket3.glanacion.com/anexos/fotos/62/pipi-cucu-pelo-2056862w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">y listo! Quedan lindos eh! para que te duren, ponete un poco de spray... porque si tenés pelo lacio y finito como Guille, vas a ver que los rulos te duran 5 minutos. Asique sí o sí fijalos bien.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Y acá les dejamos&nbsp;<b>3 opciones con un aplique</b>.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Tirá spray en la mitad de la cabeza que te quedó menos pelo, peinalo con un cepillo de cerdas pegándolo bien al cuero cabelludo.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056846" src="http://bucket1.glanacion.com/anexos/fotos/46/pipi-cucu-pelo-2056846w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Enganchá el aplique, pueden ser flores, peinetas, un clip y ya o hebillas!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056847" src="http://bucket2.glanacion.com/anexos/fotos/47/pipi-cucu-pelo-2056847w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Al pelo que te quedó suelto tirale mucho spray así le das volumen.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056848" src="http://bucket3.glanacion.com/anexos/fotos/48/pipi-cucu-pelo-2056848w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Otra opción es ponértelo en la mitad de la cabeza que tenés más pelo, si tenés flequillo podés sujetarlo o bien dejarlo sueltito!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">¿Mediacola? Re! Asique acá les mostramos como queda esta opción también.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056849" src="http://bucket1.glanacion.com/anexos/fotos/49/pipi-cucu-pelo-2056849w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Esperamos que les haya gustado y que pongan en práctica estos rulos que son bárbaros, Guille no puede parar de despeinárselos. Y si los tenés naturalmente amigate con ellos que son lo más!!!!</p>', 'Consejo', 1, 71, '2015-07-20 14:37:15');
INSERT INTO `blog` (`post_id`, `name`, `description`, `category`, `active`, `file_manager_id`, `date_created`) VALUES
(7, 'Peinados para novias y recomendaciones', '<h1 itemprop="name headline" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 39px; font-family: TitilliumRegular, Arial; vertical-align: baseline; font-stretch: normal; line-height: 48px; color: rgb(51, 51, 51);"><p class="primero" style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Ya llega la epoca en la que todas se empiezan a preparar, a poner nerviosas y a decidir los ultimos detalles!!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">En el estudio estamos teniendo más novias que nunca, no sé qué pasó en 2015, pero parece que es EL año del amor.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Hoy lo que vamos a hacer son recomendaciones para los pelos/peinados de las novias:</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Si sos morocha:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Te recomendamos que te hagas algunas mechas mas claras, o las puntas desgastadas. Algo que te ilumine, que haga que el peinado tenga movimiento y no sea un peinado tan entero. Vas a ver que te va a ayudar un montón a vos, para que se luzca más todo y se suavice tu look.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Tenés el pelo opaco y con un frizz indomable:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Hacete un baño de keratina unos meses antes, para probar cómo te queda el pelo. Siempre queda espectacular, brillante y sin frizz. Si te hizo ese efecto, entonces volvételo a hacer un mes antes de tu casamiento. Ojo, si además el día de tu casamiento, querés tener ondas y que te duren, olvidate, la keratina va a impedir que las ondas sean duraderas. Entonces, optá por un recogido, o con el pelo lacio, con trencitas o apliques.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Peinados despeinados:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">El peinado descontracturado, como los que ves en las fotos de más abajo, sólo quedan lindos si los hacés así, a todo trapo de descontracturado. Si empezás a emprolijarlo un poco y a sacar un solo pelo de por acá, otro de por allá, esto peinado, esto no... y que pin que pan, termina quedando algo medio híbrido y sin onda.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Es importantísimo que vayas a un estudio, peluquero o lugar que te represente. El maquillaje y el peinado, son como los diseñadores. No vas a ir a Pablo Ramírez a pedirle que te haga un vestido como los de Claudio Cossano, lo mismo pasa con los peluqueros, si querés un peinado descontracturado y canchero, andá a un lugar que te lo hagan así. Si querés uno prolijo e impecable a otro.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>¿Porqué las novias de las revistas son todas geniales y perfectas?</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">No es porque son modelos, todas somos modelos. Es porque atrás de eso hay una productora de moda, viendo el look completo. Lo ideal es que el peluquero y maquillador se los recomiende el diseñador del vestido. ¿Por qué? Porque el diseñador es el que entiende tu estilo y te representa, vos fuiste a ESE diseñador porque te gusta su estilo, entonces el peluquero y maquillador que te recomiende el o ella, va a seguir su línea y así te va a ser mucho más fácil, lograr un look parejo y alucinante.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Elecciones:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Vos a esta altura de la vida, ya sabés qué es lo que te queda bien y qué no tanto. Si sos medio insegura que no te decidís o que no te animás tanto al cambio, no hagas algo drástico. Por ejemplo, si toda la vida usaste raya al medio, y te sentís segura linda y genial, si querés, probá con la raya al costado, salí, andá a comer con amigas etc, a ver cómo te sentís. Si no estás cómoda, no le des para adelante, por más que todos te digan que te queda espectacular. Acá la que se casa sos vos y tenés que sentirte linda y cómoda. Si estás peinada de una manera que no te representa, se nota. Vas a estar incómoda y con cara dura y moviéndote raro. Lo más lindo del mundo, es que la novia esté fresca, cómoda y feliz.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Accesorios para el pelo:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Lo ideal es que lo haga el mismo diseñador del vestido, o que sea alguien que él te recomiende. Si vos traes un aplique de pelo, te ponés la chalina con la que se casó tu abuela, que es un sueño de seda espectacular, te peinás con pirulo, te maquillás con tal otro, muchas veces sale muy muy bien, y otras termina siendo un rejunte de cosas que no se conectan entre sí. Por eso, para mí, es importante que confíes en una persona, y esa persona, creo que tiene que ser tu diseñador. O si amás a tu peinador, preguntale a el, o si amás a tu maquillador, preguntale a el si conoce un diseñador de vestidos de novias. A nosotras en el estudio nos preguntan un montón por diseñadores de novias, porque les gusta nuestro estilo, entonces sienten que las vamos a poder ayudar... Así que chicas, es clave, confiar mucho mucho en alguien, y no estar dudando de todo todo el tiempo.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Peinado seguro:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">En Buenos Aires, sobre todo en los meses de calor, es imposible casi que las ondas duren, que un pelo suelto con ondas dure, por más que pongas dos millones de productos, prepares el pelo etc. Hay algunos pelos que resisten y quedan, pero la mayoría se caen. Entonces, las que quieren pelo suelto, estarán divinas al principio, y a medida que va avanzando, las ondas se desarmarán un poco. A mí no me parece grave, pero es importante que lo sepan!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Si te hacés un recogido, bien hecho. Ese recogido no tiene por qué moverse, salvo que alguien te lo enganche con algo.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Los recogidos tienen que ser duraderos, si saltás, te movés, batís la cabeza, un buen recogido dura y te das cuenta en la cabeza, sentís como un casquito, a pesar de que no se vea como tal.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Acá les dejo todos unos peinados que me parecieron divinos, para que usen de referencia!! Obvio que este es nuestro estilo. Como dije, hay peinadores y maquilladores, como hay diseñadores. Diferentes estilos, distintas ondas. Cada uno elige con quién se representa.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065583" src="http://bucket1.glanacion.com/anexos/fotos/83/pipi-cucu-pelo-2065583w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065584" src="http://bucket2.glanacion.com/anexos/fotos/84/pipi-cucu-pelo-2065584w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065585" src="http://bucket3.glanacion.com/anexos/fotos/85/pipi-cucu-pelo-2065585w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065586" src="http://bucket1.glanacion.com/anexos/fotos/86/pipi-cucu-pelo-2065586w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Y sobre todo, nunca, nunca nunca se olviden, que están celebrando el amor que se tienen ustedes dos, un amor sincero, lindo, alegre y espectacular.<span class="icon-bullet" style="margin: 0px 0px 0px 8px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(247, 49, 127); display: inline-block; width: 20px; height: 20px;"></span></p></h1>', 'Consejo', 1, 72, '2015-07-20 14:37:18'),
(10, 'Tres para pelicortis (peinarse es gratis)', '<p class="primero" style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Guille se cortó el pelo, se lo meeeega cortó. Así que en este posteo les vamos a mostrar los distintos peinados que se hace desde que es pelicorti. Son peinados sin mucha elaboración ni complejidad, perfectos para ir al trabajo, o a cualquier lado. Ya iremos mostrando algunos más de fiesta, especiales para pelos de este corto. Los de hoy no son excluyentes si tenés otro tipo de largo u otro pelo, pero sí son aptos para pelicorti.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">El otro día una amiga mía fue al estudio a tomar una clase, yo no estaba, entonces la atendió Guille. Sale de la clase y me manda un mensaje preguntándome dónde se había cortado el pelo Guille y qué productos se pone en el pelo, porque lo tenía cancherísimo. A lo que yo respondí: Guille y yo nos cortamos casi que con tijeras de pollo, son tijeras que cortan papel, y lo hacemos intuitivamente. Lo que tenemos las dos en común es que sabemos llevar un corte. "EL CORTE NO HACE A UNA, UNA HACE AL CORTE!"</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Vos podés tener un corte hecho por el mejor peluquero de las famosas que cobra dosmil dólares el corte. Pero si te lo ponés atrás de la oreja y no lo manejás, movés o vas cambiando y estás atenta durante el día, el corte millonario, pasa a ser un torre impresionante.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Repito y repetiré en cada posteo:&nbsp;<b>peinarse es gratis&nbsp;</b>y con estos peinados que muestra Guille hoy (que podes optar por ponerte un moño o una hebilla con pierdas o lo que más te plazca, eso depende de gustos) no hay excusas para ver una pelicorti llevando el pelo atrás de la oreja con toda la raya mal hecha y poco favorecedora porque "Bueno, no tenía tiempo", estos peinados, tampooooco llevan tiempo!!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>1.</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>a.</b>&nbsp;Agarramos un mechón de adelante, lo hacemos una torzada y enganchamos atrás con un invisible.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054002" src="http://bucket3.glanacion.com/anexos/fotos/02/pipi-cucu-pelo-2054002w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>b.&nbsp;</b>Hacemos o mismo con el otro costado, los enganchamos a ambos con invisibles. La hebilla es para decorar, la hebilla no es lo que sostiene el peinado realmente, lo que sostiene el peinados son los invisibles, así que atentis, que el peinado tiene que estar bien fijo antes de poner la decoración!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054003" src="http://bucket1.glanacion.com/anexos/fotos/03/pipi-cucu-pelo-2054003w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>c</b>. Pueden dejarlo suelto, o hacerse una colita baja.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054004" src="http://bucket2.glanacion.com/anexos/fotos/04/pipi-cucu-pelo-2054004w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">¿no es divino?</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Este corte de pelo puede ser peligroso si no le metés onda o algún productito, porque es muy recto y de un largo que no es ni corto ni largo, hay que darle onda... Vamos a usar el Dust It, este es el producto estrella de Guille, le ama con pasión.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>1.&nbsp;</b>Espolvoreá un poco del Dust It en la raíz del pelo, abriéndolo con la yema de los dedos. Nosotras usamos el de Lóreal Professionnel o el de Schwartzkopf, ambos son alucinantes.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054006" src="http://bucket1.glanacion.com/anexos/fotos/06/pipi-cucu-pelo-2054006w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>2.&nbsp;</b>Para "activarlo" lo movés bien desde la raíz. Donde lo muevas, el pelo queda, así que te podés hacer un jopo para un costado y moverlo bien desde la raíz para que dé volúmen. Si querés que parezca mas de peluquería y producido, achatá una parte del pelo con spray y listo!!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054007" src="http://bucket2.glanacion.com/anexos/fotos/07/pipi-cucu-pelo-2054007w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Via: http://www.revistaohlala.com/1802805-tres-para-pelicortis-peinarse-es-gratis</p>', 'Consejo', 1, 75, '2015-07-20 14:39:19'),
(11, 'Tendencias tinte cabello para el 2015: fotos de los looks', '<div style="text-align: justify;"><div>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</div><div>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div><div>&nbsp;</div><div>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</div></div>', 'Tendencia', 1, 76, '2015-07-20 14:52:14'),
(12, 'Tendencias de Peinados para Mujer 2015 – 2016', 'T<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;"><a href="http://peinados.mujeryestilo.com/category/tendencias/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; color: rgb(68, 68, 68); -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out;">endencias</a>&nbsp;de Peinados para Mujer</span><span style="font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;">. Aquí te traigo una variedad de peinados para mujer que están de moda. Las mujeres siemrpe cuidan su cabello y buscan las mejores ideas de cortes o peinados para poder verse preciosa. El resultado es que muchas de las mujeres ha tenido un nuevo estilo de pelo que se ha convertido en una tendencia en la actualidad. Su fuente de inspiración para los amantes de la moda, peinados,&nbsp;</span><a href="http://peinados.mujeryestilo.com/category/colores/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; color: rgb(68, 68, 68); -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; background-color: rgb(255, 255, 255);">colores</a><span style="font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;">&nbsp;de pelo rubio puede tratar de un nuevo estilo de las tendencias para el cabello, puedes intentarlo estilos rizados del pelo,&nbsp;</span><a href="http://peinados.mujeryestilo.com/category/trenzas/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; color: rgb(68, 68, 68); -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; background-color: rgb(255, 255, 255);">trenzas</a><span style="font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;">&nbsp;de pelo y estilo único a la perfección. Dale una mirada a esta selección de peinados que te traemos de la nueva tendencia para el 2015 y 2016.</span>', 'Tendencia', 1, 77, '2015-07-20 14:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `file_manager_id` int(10) unsigned DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `description` text,
  `brief` text
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `file_manager_id`, `date_created`, `description`, `brief`) VALUES
(1, 'Coloración', 7, '2015-07-06 16:54:53', 'Issue te ofrece una amplia gama de productos de coloración que maximizan la vitalidad de tu cabello, otorgándole el mejor color de larga duración.', ''),
(2, 'Decoloración', 8, '2015-07-06 16:55:10', 'Issue te ofrece polvos decolorantes de alto rendimiento, que decoloran el pelo en forma pareja y uniforme, brindándote la seguridad de estar utilizando los mejores del mercado.', ''),
(4, 'Tratamientos', 10, '2015-07-06 16:55:26', 'Productos de cuidado y tratamiento para el cabello. Issue brinda los mejores productos para obtener el mejor cuidado para tu pelo.', '');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `color_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `tone` varchar(3) NOT NULL,
  `subtone` varchar(3) NOT NULL,
  `category` varchar(45) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`color_id`, `name`, `tone`, `subtone`, `category`, `active`, `file_manager_id`, `date_created`) VALUES
(1, 'Rubio', '5', '3', 'naturales', 1, 20, '2015-07-10 17:25:43'),
(3, 'rubio', '2', '4', 'dorados', 1, 22, '2015-07-10 17:27:21'),
(4, 'morocho', '1', '0', 'cenizas', 1, 23, '2015-07-10 17:27:51'),
(5, 'marron gris', '2', '3', 'cobres y caobas', 1, 24, '2015-07-10 17:28:24'),
(6, 'mas rubio', '11', '2', 'naturales', 1, 25, '2015-07-10 17:29:00'),
(7, 'mas castaño', '21', '1', 'castaños', 1, 26, '2015-07-10 17:29:30'),
(8, 'Mas cenizas', '1', '12', 'cenizas', 1, 27, '2015-07-10 17:29:49'),
(9, 'mas dorados', '20', '10', 'dorados', 1, 28, '2015-07-10 17:30:09'),
(10, 'mas cobre', '999', '999', 'cobres y caobas', 1, 29, '2015-07-10 17:30:31'),
(11, 'Negro', '1', '', 'naturales', 1, 89, '2015-07-23 19:27:03'),
(12, 'Castaño Oscuro', '3', '', 'naturales', 1, 90, '2015-07-23 20:33:39'),
(16, 'Castaño', '4', '', 'naturales', 1, 94, '2015-07-23 20:34:20'),
(17, 'Castaño Claro', '5', '', 'naturales', 1, 95, '2015-07-23 20:35:45'),
(18, 'Rubio Oscuro', '6', '', 'naturales', 1, 96, '2015-07-23 20:36:04'),
(19, 'Rubio', '7', '', 'naturales', 1, 97, '2015-07-23 20:36:25'),
(20, 'Rubio Claro ', '8', '', 'naturales', 1, 98, '2015-07-23 20:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `configs_users`
--

CREATE TABLE IF NOT EXISTS `configs_users` (
  `configuration_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `configuration_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  `text_footer` varchar(250) NOT NULL,
  `url_facebook` varchar(250) NOT NULL,
  `url_twitter` varchar(250) NOT NULL,
  `url_googleplus` varchar(250) NOT NULL,
  `url_youtube` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `form_emails` text NOT NULL COMMENT 'separados por coma. (ej: juan@gmail.com, florencia@yahoo.com)',
  `username` varchar(255) NOT NULL,
  `text_about` text NOT NULL,
  `text_issue_mundo` text NOT NULL,
  `text_consumer_rights` text NOT NULL,
  `text_legal` text NOT NULL,
  `text_privacy_policy` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`configuration_id`, `address`, `telephone`, `text_footer`, `url_facebook`, `url_twitter`, `url_googleplus`, `url_youtube`, `email`, `form_emails`, `username`, `text_about`, `text_issue_mundo`, `text_consumer_rights`, `text_legal`, `text_privacy_policy`) VALUES
(1, '', '', '', 'https://www.facebook.com/issuecolor', '', '', 'http://www.youtube.com/issuecolor', 'info@issue.com', '', '', '<div><span style="font-weight: bold; font-size: 18px;">El inicio...</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;">Corría el año 1977 cuando dos jóvenes profesionales emprendieron el desafío de desarrollar, fabricar y comercializar productos cosméticos fundando su propia embrionaria compañía bajo el nombre de Laboratorio Cuenca S.A.</span></div><div><span style="font-size: 12px;">&nbsp;</span></div><div><span style="font-size: 12px;">El nombre insignia de la compañía: ISSUE, crecía rápidamente ampliando año tras año sus líneas de productos, especializándose en el segmento de coloración capilar con el polvo decolorante como producto estrella.</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-weight: bold; font-size: 18px;">La coloración...</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;">Así, en 1985 lanza un producto diferencial en su categoría: el sachet de coloración en crema Issue, revolucionando el mercado, con la ventaja exclusiva de su novedoso packaging y su excelente relación precio / calidad.</span></div><div><span style="font-size: 12px;">&nbsp;</span></div><div><span style="font-size: 12px;">Este crecimiento trajo aparejado, hacia fines del 2001, la adquisición de una nueva estructura edilicia con gran capacidad productiva y equipamiento de tecnología avanzada, inaugurando una nueva etapa: Issue Group, apostando de lleno a la industria nacional, con gran proyección internacional.</span></div><div><span style="font-size: 12px;">&nbsp;</span></div><div><span style="font-size: 12px;">El desarrollo de filiales y nuevos mercados externos comenzaba a avanzar vertiginosamente.</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-weight: bold; font-size: 18px;">Crecimiento...</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;">En el año 2006 y como resultado de su estrategia de expansión Issue Group Co. adquiere Consell S.A., una empresa argentina líder en su sector, con sus líneas de protección solar, cuidado capilar y corporal; constituyendo hoy un grupo consolidado en la producción y comercialización de productos cosméticos.</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-weight: bold; font-size: 18px;">La empresa, hoy...</span></div><div><span style="font-size: 12px;"><br></span></div><div><span style="font-size: 12px;">GODREJ ARGENTINA</span></div><div><span style="font-size: 12px;">Nace como resultado de la adquisición de Issue Group Co. y Argencos S.A &nbsp;por parte del grupo indio Godrej Consumer Products Ltd.</span></div><div><span style="font-size: 12px;">&nbsp;</span></div><div><span style="font-size: 12px;">Luego de esta adquisición el grupo comienza con la fusión de ambas compañías conviertiéndose en líder &nbsp;de la categoría de coloración en los principales países de Latinoamérica: Argentina, Paraguay, Bolivia, Perú y Uruguay.</span></div><div><span style="font-size: 12px;">&nbsp;</span></div><div><span style="font-size: 12px;">Con un 27% de market share demuestra un gran potencial para replicar este liderazgo en el resto de la región. Basándose en la vasta trayectoria de ambas compañías, el grupo comercializa diferentes &nbsp;productos en distintos canales y segmentos del mercado masivo y profesional.</span></div>', 'texto issue en el mundo', 'texto derechos del consumidor', '<div style="line-height: 1.4;"><span style="font-size: 12px;">Laboratorio Cuenca S.A. (“LC”) ofrece productos para el cuidado de la piel y el cabello. La utilización de sus productos cosméticos, son controlados y regulados por los organismos gubernamentales de cada uno de los países en que se comercializan. En la República Argentina, a través de la Administración Nacional de Medicamentos, Alimentos y Tecnología Médica (“ANMAT”).</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">En virtud de las normas existentes al respecto, es preciso, que ante cualquier duda que Usted tenga respecto con la utilización de los productos LC, que consulte a un profesional de la salud.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">Los sitios Web de LC son tan sólo un servicio informativo; al igual que cualquier otro servicio, y que a pesar de los esfuerzos realizados por LC, es posible que la información allí registrada se encuentre desactualizada con el paso del tiempo. Por lo tanto, nada de lo que allí se informa debe ser tomado por Usted como consejo o recomendación médica.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">Es importante que, en relación con su caso particular, Usted dependa únicamente del asesoramiento y del consejo de un profesional de la salud. LC no se hace responsable de que la información que figura en sus sitios Web sea totalmente exacta y exhaustiva, ni del uso que de ella pueda hacerse.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">La información que figura en los sitios Web de LC no conlleva GARANTÍA DE NINGUNA CLASE, YA SEA EXPLÍCITA O IMPLÍCITA, INCLUIDAS, PERO SIN LIMITARSE A ELLAS, LAS INHERENTES A SU CAPACIDAD DE COMERCIALIZACIÓN, SU IDONEIDAD PARA UN FIN CONCRETO Y SU USO INDEBIDO.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">A través de los sitios Web de LC, Usted puede conectarse con otros sitios Web, incluidos los sitios Web de las afiliadas de LC en otros países.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">LC no puede responsabilizarse de la información que Usted pueda obtener en sitios Web de terceros y que no se encuentren bajo su tutela.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">Aunque LC trata de facilitar el enlace con sitios Web de terceros que cumplan con todos los requisitos y normas legales pertinentes, así como las normas de LC, ha de entenderse que el contenido de sitios Web de propiedad de terceros puede variar sin el conocimiento previo de LC. &nbsp;Es por ello, que LC no puede ni debe responsabilizarse, ni aceptar ningún tipo de responsabilidad, por la información que se proporcione ni de las opiniones que se expresen en los sitios Web de propiedad de terceros.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">Nada de los expuesto en los sitios Web de LC constituye una promoción de los productos comercializados por LC.</span></div>', '<div style="line-height: 1.4;"><span style="font-size: 12px;">A continuación encontrara la política de privacidad adoptada por Laboratorio Cuenca S.A. (“LC”), a fin de resguardar sus datos personales.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">Se informa al Usuario que como regla general no resulta ser necesario el ingreso de sus datos personales para navegar en los sitios Web de LC. En caso de ser necesario ingresar sus datos personales (cuando así sea requerido por el sitio) para poder acceder al mismo, LC utilizará y protegerá sus datos personales mientras usted navegue en los sitios Web de LC.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">En caso de disconformidad con la Política de Privacidad adoptada por LC, no deberá utilizar nuestro servicio. la utilización del servicio implica la aceptación y conocimiento automático de los Términos Generales de Uso (ver Términos Generales de Uso con link) y de la Política de Privacidad que a continuación se le hace saber:</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">1. En cumplimiento con la normativa vigente de Protección de Datos Personales (Ley N° 25.326 y disposiciones complementarias), LC dará un tratamiento adecuado a los datos personales de quienes utilicen los servicios brindados por LC en sus sitios Web.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">2. Toda aquella información que el Usuario ingrese voluntariamente durante la utilización del servicio estará bajo las normas de confidencialidad. Dicha información recibirá una protección adecuada y será utilizada sólo para las finalidades de los servicios que LC brinda.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">3. LC sólo requerirá a los Usuarios para su registración datos como: apellido, nombre, documento de identidad, fecha de nacimiento, dirección de correo electrónico, etc., absteniéndose de solicitar datos sensibles al Usuario &nbsp;(Art. 7 de la ley N° 25.326). LC solo procederá a registrar los datos personales una vez que el Usuario haya prestado su consentimiento libre, expreso e informado para los fines solicitados.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">4. El Usuario garantiza la veracidad y certeza de los datos personales que ingresa en los sitios Web de LC, asumiendo la correspondiente responsabilidad en caso de que los mismos resulten inexactos. LC, en su condición de destinatario de los datos, no asume ninguna responsabilidad en caso de existir inexactitud en los datos personales ingresados por el Usuario.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">5. El Usuario podrá modificar o actualizar en cualquier momento la información relativa a los datos personales ingresados en los sitios Web de LC, los cuales formarán parte de un archivo que contendrá su perfil. Asimismo, el Usuario podrá solicitar la rectificación y/o baja de sus datos personales comprometiéndose LC, en caso de corresponder, a realizar las gestiones tendientes a rectificar y/o procesar la baja en un plazo máximo de diez (10) días hábiles contados desde la recepción del reclamo por parte del Usuario.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">6. Se entenderá que el Usuario al ingresar los datos referidos autoriza automáticamente a LC a utilizar dichos datos para proveerle adecuadamente un servicio personalizado y acorde a sus necesidades, así como para recibir correspondencia de LC.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">7. LC podrá utilizar la información proporcionada por el Usuario a fin de ofrecerle un servicio publicidad selectiva o contenidos que puedan llegar a serle de interés, si es que el Usuario aceptó recibirlos.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">8. La información que proporcione el Usuario estará asegurada por una clave de acceso. Dicha clave será creada por el Usuario (cuando el Sitio se lo requiera) y sólo conocida por éste; siendo el Usuario el único responsable de mantener dicha clave de seguridad en secreto. LC no intentará por ningún medio obtener la clave personal de acceso.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">9. LC ha adoptado las medidas de seguridad necesarias para proteger la información ingresada en sus sitios Web a fin de evitar adulteraciones o tratamientos no autorizados. Debido a que ninguna transmisión por Internet puede garantizar su íntegra seguridad, LC no puede asegurar que toda transmisión de datos o información que se realice vía Internet sea totalmente segura, razón por la cual el Usuario al ingresar a los sitios Web de LC acepta este riesgo, que declara conocer.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">10 El material incluido en los sitios Web de LC (entendiéndose como material a: textos, informes, artículos, datos, comentarios, disertaciones, gráficos, logos, iconos, imágenes y archivos de cualquier tipo) &nbsp;se encuentran protegidos por las leyes de propiedad intelectual. Queda prohibida su publicación, radiodifusión, reedición para radiodifusión o publicación y su redistribución directa o indirecta por cualquier medio. Queda prohibido su almacenamiento total o parcial en computadoras, excepto para uso personal y sin fines comerciales. &nbsp;La publicación de información de propiedad de terceros será de responsabilidad exclusiva de sus autores. LC no asume responsabilidad alguna por cualquier demora, inexactitud, error u omisión en el mismo o en la transmisión o entrega de la totalidad o parte del mismo, ni por los daños emergentes de tales circunstancias.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">11. La utilización de la información publicada en los sitios Web de LC para cualquier finalidad por parte del Usuario será bajo su exclusiva responsabilidad o riesgo, LC no se responsabiliza por los daños, de cualquier tipo ocasionados por el uso de la información publicada.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">12. LC no será responsable por los contenidos y/o la información provista en otras páginas Web a las cuales el Usuario pueda acceder mediante la utilización de los &nbsp;sitios Web de LC. Tampoco responderá por la autenticidad y/o veracidad de la información ni de los datos consignados en las mismas.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">13. Los Usuarios se obligan a hacer uso de los sitios Web de LC y de todos sus servicios de conformidad con la ley, los términos generales de uso, esta política de privacidad, &nbsp;la moral, las buenas costumbres generalmente aceptadas y el orden público, obligándose a abstenerse de utilizar los sitios Web de LC con fines ilícitos o contrario a lo aquí establecido, que de cualquier modo puedan dañar, inutilizar, sobrecargar o deteriorar los sitios Web de LC así como su reputación. Esta declaración de privacidad está sujeta a los términos generales de uso de LC, con lo cual constituye un acuerdo legal entre el Usuario y LC.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">14. Si el Usuario utiliza los sitios Web de LC, &nbsp;ello significa que ha leído, comprendido y aceptado los términos antes expuestos. En caso de no estar de acuerdo con ello, el Usuario no deberá proporcionar dato ni información alguna, ni utilizar los sitios Web de LC porque no está autorizado a hacerlo.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">15. LC se reserva el derecho, a su sola discreción, de modificar, alterar o de otra manera actualizar, esta Política de Privacidad en cualquier momento. Las modificaciones entrarán en vigencia desde el momento que se indique; en su defecto, se entenderá que su aplicación es inmediata. LC no limitara los derechos de los Usuarios en virtud de esta política de privacidad sin su consentimiento explícito.</span></div><div style="line-height: 1.4;"><span style="font-size: 12px;">&nbsp;</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `contact_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) unsigned NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `type` enum('image','video','archive') NOT NULL,
  `code` varchar(255) NOT NULL,
  `ext` varchar(10) NOT NULL,
  `group` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file`, `file_name`, `type`, `code`, `ext`, `group`, `date_created`) VALUES
(1, '1_1.jpg', '1', 'image', '', 'jpg', '', '2014-09-10 16:34:40'),
(2, '2_4.jpg', '4', 'image', '', 'jpg', '', '2014-09-10 16:34:57'),
(3, '3_4.jpg', '4', 'image', '', 'jpg', '', '2014-09-10 16:35:02'),
(4, '4_7.jpg', '7', 'image', '', 'jpg', '', '2014-09-10 16:35:29'),
(5, '5_2.jpg', '2', 'image', '', 'jpg', '', '2014-09-11 11:18:16'),
(6, '6_4.jpg', '4', 'image', '', 'jpg', '', '2014-09-11 11:18:32'),
(7, '7_2.jpg', '2', 'image', '', 'jpg', '', '2014-09-11 12:37:09'),
(8, '8_4.jpg', '4', 'image', '', 'jpg', '', '2014-09-11 12:37:13'),
(9, '9_7.jpg', '7', 'image', '', 'jpg', '', '2014-09-11 12:37:17'),
(121, '121_bg3.jpg', 'bg3', 'image', '', 'jpg', '', '2015-07-21 13:47:24'),
(118, '118_Issue_Kit_Keratin.png', 'Issue Kit Keratin', 'image', '', 'png', '', '2015-07-21 13:45:20'),
(12, '12_slider1.jpg', 'slider1', 'image', '', 'jpg', '', '2015-07-06 16:55:16'),
(52, '52_crazy.jpg', 'crazy', 'image', '', 'jpg', '', '2015-07-16 20:41:44'),
(142, '142_looks-tintes-2014.jpg', 'looks-tintes-2014', 'image', '', 'jpg', '', '2015-07-21 20:46:02'),
(113, '113_Issue_Color_Pack_con_Shock_de_Keratina.png', 'Issue Color Pack con Shock de Keratina', 'image', '', 'png', '', '2015-07-21 13:43:35'),
(57, '57_deco.jpg', 'deco', 'image', '', 'jpg', '', '2015-07-17 19:21:53'),
(83, '83_tradicional.png', 'tradicional', 'image', '', 'png', '', '2015-07-17 21:38:40'),
(123, '123_2.jpg', '2', 'image', '', 'jpg', '', '2015-07-21 13:49:17'),
(117, '117_bg1.jpg', 'bg1', 'image', '', 'jpg', '', '2015-07-21 13:45:18'),
(55, '55_ivana.jpg', 'ivana', 'image', '', 'jpg', '', '2015-07-17 19:13:13'),
(58, '58_colooor.jpg', 'colooor', 'image', '', 'jpg', '', '2015-07-17 19:46:01'),
(152, '152_Activador_20.png', 'Activador 20', 'image', '', 'png', '', '2015-07-21 21:14:41'),
(157, '157_34_color3.jpg', '34_color3', 'image', '', 'jpg', '', '2015-07-23 15:46:13'),
(168, '168_Rubio_7.png', 'Rubio 7', 'image', '', 'png', '', '2015-07-23 20:36:25'),
(32, '32_color4.jpg', 'color4', 'image', '', 'jpg', '', '2015-07-10 17:27:21'),
(33, '33_color1.jpg', 'color1', 'image', '', 'jpg', '', '2015-07-10 17:27:51'),
(34, '34_color3.jpg', 'color3', 'image', '', 'jpg', '', '2015-07-10 17:28:24'),
(35, '35_color4.jpg', 'color4', 'image', '', 'jpg', '', '2015-07-10 17:29:00'),
(36, '36_color2.jpg', 'color2', 'image', '', 'jpg', '', '2015-07-10 17:29:30'),
(37, '37_color3.jpg', 'color3', 'image', '', 'jpg', '', '2015-07-10 17:29:49'),
(38, '38_color4.jpg', 'color4', 'image', '', 'jpg', '', '2015-07-10 17:30:09'),
(39, '39_color3.jpg', 'color3', 'image', '', 'jpg', '', '2015-07-10 17:30:31'),
(47, '47_craz.jpg', 'craz', 'image', '', 'jpg', '', '2015-07-16 14:45:48'),
(48, '48_ivana.jpg', 'ivana', 'image', '', 'jpg', '', '2015-07-16 14:46:04'),
(126, '126_Super_Color_Pack_Issue_3D_Gloss.png', 'Super Color Pack Issue 3D Gloss', 'image', '', 'png', '', '2015-07-21 13:58:49'),
(107, '107_extrablond_260.png', 'extrablond 260', 'image', '', 'png', '', '2015-07-20 18:42:55'),
(137, '137_Kit_Crazy_Colors.png', 'Kit Crazy Colors', 'image', '', 'png', '', '2015-07-21 20:36:49'),
(125, '125_Sachet_de_Coloración_Issue_3D_Gloss.png', 'Sachet de Coloración Issue 3D Gloss', 'image', '', 'png', '', '2015-07-21 13:53:52'),
(135, '135_Shock_de_Keratina.png', 'Shock de Keratina', 'image', '', 'png', '', '2015-07-21 14:39:59'),
(78, '78_hydrax.png', 'hydrax', 'image', '', 'png', '', '2015-07-17 21:24:33'),
(134, '134_Shock_de_Brillo.png', 'Shock de Brillo', 'image', '', 'png', '', '2015-07-21 14:38:49'),
(133, '133_Serum_Capilar_Issue_3D_Gloss.png', 'Serum Capilar Issue 3D Gloss', 'image', '', 'png', '', '2015-07-21 14:36:45'),
(124, '124_Issue_3D_Gloss_Kit.png', 'Issue 3D Gloss Kit', 'image', '', 'png', '', '2015-07-21 13:53:05'),
(155, '155_Línea_Extra_Blond.png', 'Línea Extra Blond', 'image', '', 'png', '', '2015-07-22 15:37:20'),
(127, '127_Shocks_de_Tratamiento_Capilar.png', 'Shocks de Tratamiento Capilar', 'image', '', 'png', '', '2015-07-21 14:18:08'),
(110, '110_Línea_3d.png', 'Línea 3d', 'image', '', 'png', '', '2015-07-21 13:31:04'),
(112, '112_Issue_Súper_Color_Pack_con_Keratina.png', 'Issue Súper Color Pack con Keratina', 'image', '', 'png', '', '2015-07-21 13:40:22'),
(109, '109_Línea_Keratin.png', 'Línea Keratin', 'image', '', 'png', '', '2015-07-21 13:30:51'),
(146, '146_Coloración_en_Sachet.png', 'Coloración en Sachet', 'image', '', 'png', '', '2015-07-21 20:54:16'),
(145, '145_novias.jpg', 'novias', 'image', '', 'jpg', '', '2015-07-21 20:54:04'),
(144, '144_rulos.jpg', 'rulos', 'image', '', 'jpg', '', '2015-07-21 20:52:55'),
(143, '143_pipi-cucu-pelo-2054002w620.jpg', 'pipi-cucu-pelo-2054002w620', 'image', '', 'jpg', '', '2015-07-21 20:50:43'),
(141, '141_Sachet_Crazy_Colors.png', 'Sachet Crazy Colors', 'image', '', 'png', '', '2015-07-21 20:45:07'),
(153, '153_Activador_30.png', 'Activador 30', 'image', '', 'png', '', '2015-07-21 21:16:42'),
(130, '130_Shampoo_&_Acondicionador_Hydrax.png', 'Shampoo & Acondicionador Hydrax', 'image', '', 'png', '', '2015-07-21 14:23:01'),
(129, '129_Shampoo_&_Acondicionador_Hydrax.png', 'Shampoo & Acondicionador Hydrax', 'image', '', 'png', '', '2015-07-21 14:21:56'),
(128, '128__Reparador_de_Puntas_y_Serum_Capilar.png', ' Reparador de Puntas y Serum Capilar', 'image', '', 'png', '', '2015-07-21 14:19:47'),
(106, '106_EXTRABLOND_260.psd', 'EXTRABLOND 260', 'image', '', 'psd', '', '2015-07-20 18:41:59'),
(156, '156_demo.jpg', 'demo', 'image', '', 'jpg', '', '2015-07-23 15:46:13'),
(131, '131_Shampoo_y_Acondicionador_Hydrax.png', 'Shampoo y Acondicionador Hydrax', 'image', '', 'png', '', '2015-07-21 14:23:44'),
(132, '132_Reparador_de_Puntas_Instantáneo_con_Keratina.png', 'Reparador de Puntas Instantáneo con Keratina', 'image', '', 'png', '', '2015-07-21 14:33:58'),
(138, '138_Línea_Crazy_Colors.png', 'Línea Crazy Colors', 'image', '', 'png', '', '2015-07-21 20:38:12'),
(140, '140_peinados.jpg', 'peinados', 'image', '', 'jpg', '', '2015-07-21 20:43:08'),
(151, '151_Coloración_en_Sachet_prod.png', 'Coloración en Sachet prod', 'image', '', 'png', '', '2015-07-21 21:01:35'),
(150, '150_Activador_en_Crema.png', 'Activador en Crema', 'image', '', 'png', '', '2015-07-21 20:58:58'),
(154, '154_Línea_Tradicional.png', 'Línea Tradicional', 'image', '', 'png', '', '2015-07-22 15:27:39'),
(161, '161_Castaño_oscuro_3.png', 'Castaño oscuro 3', 'image', '', 'png', '', '2015-07-23 20:33:39'),
(159, '159_Negro_1.png', 'Negro 1', 'image', '', 'png', '', '2015-07-23 19:27:04'),
(160, '160_Negro_1_big.png', 'Negro 1 big', 'image', '', 'png', '', '2015-07-23 19:30:29'),
(167, '167_Rubio_Oscuro_6.png', 'Rubio Oscuro 6', 'image', '', 'png', '', '2015-07-23 20:36:04'),
(166, '166_Castaño_claro_5.png', 'Castaño claro 5', 'image', '', 'png', '', '2015-07-23 20:35:45'),
(165, '165_Castaño_4.png', 'Castaño 4', 'image', '', 'png', '', '2015-07-23 20:34:20'),
(169, '169_Rubio_Claro_8.png', 'Rubio Claro 8', 'image', '', 'png', '', '2015-07-23 20:36:46'),
(170, '170_blog_post1.jpg', 'blog_post1', 'image', '', 'jpg', '', '2015-07-24 18:22:56'),
(171, '171_blog_post2.jpg', 'blog_post2', 'image', '', 'jpg', '', '2015-07-24 18:22:56'),
(172, '172_blog_post3.jpg', 'blog_post3', 'image', '', 'jpg', '', '2015-07-24 18:23:34'),
(173, '173_crazy-colors.jpg', 'crazy-colors', 'image', '', 'jpg', '', '2015-07-24 18:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `file_managers`
--

CREATE TABLE IF NOT EXISTS `file_managers` (
  `file_manager_id` int(11) unsigned NOT NULL,
  `file_manager` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_managers`
--

INSERT INTO `file_managers` (`file_manager_id`, `file_manager`, `date_created`) VALUES
(1, '', '2014-09-10 16:34:40'),
(2, '', '2014-09-10 16:34:57'),
(3, '', '2014-09-10 16:35:02'),
(4, '', '2014-09-10 16:35:29'),
(5, '', '2014-09-11 11:18:16'),
(6, '', '2014-09-11 11:18:32'),
(7, '', '2015-07-06 16:54:53'),
(8, '', '2015-07-06 16:55:10'),
(9, '', '2015-07-06 16:55:16'),
(10, '', '2015-07-06 16:55:26'),
(11, '', '2015-07-06 21:03:02'),
(47, '', '2015-07-17 19:27:34'),
(13, '', '2015-07-06 21:50:49'),
(80, '', '2015-07-21 20:42:54'),
(15, '', '2015-07-07 20:35:39'),
(16, '', '2015-07-07 20:38:10'),
(87, '', '2015-07-21 21:14:41'),
(20, '', '2015-07-10 17:25:43'),
(98, '', '2015-07-23 20:36:46'),
(22, '', '2015-07-10 17:27:21'),
(23, '', '2015-07-10 17:27:51'),
(24, '', '2015-07-10 17:28:24'),
(25, '', '2015-07-10 17:29:00'),
(26, '', '2015-07-10 17:29:30'),
(27, '', '2015-07-10 17:29:49'),
(28, '', '2015-07-10 17:30:09'),
(29, '', '2015-07-10 17:30:31'),
(30, '', '2015-07-16 14:19:17'),
(31, '', '2015-07-17 18:31:30'),
(32, '', '2015-07-17 18:35:39'),
(33, '', '2015-07-17 18:38:28'),
(46, '', '2015-07-17 19:05:31'),
(44, '', '2015-07-17 18:56:06'),
(45, '', '2015-07-17 18:59:54'),
(48, '', '2015-07-17 19:29:21'),
(58, '', '2015-07-17 19:55:22'),
(51, '', '2015-07-17 19:30:57'),
(52, '', '2015-07-17 19:31:35'),
(53, '', '2015-07-17 19:32:24'),
(54, '', '2015-07-17 19:43:52'),
(55, '', '2015-07-17 19:48:02'),
(56, '', '2015-07-17 19:50:51'),
(57, '', '2015-07-17 19:51:57'),
(59, '', '2015-07-17 19:56:33'),
(60, '', '2015-07-17 19:58:04'),
(61, '', '2015-07-17 19:59:16'),
(79, '', '2015-07-21 20:36:49'),
(86, '', '2015-07-21 21:01:35'),
(71, '', '2015-07-20 14:37:15'),
(72, '', '2015-07-20 14:37:18'),
(88, '', '2015-07-21 21:16:42'),
(75, '', '2015-07-20 14:39:19'),
(76, '', '2015-07-20 14:52:14'),
(77, '', '2015-07-20 14:52:33'),
(81, '', '2015-07-21 20:54:16'),
(85, '', '2015-07-21 20:58:58'),
(89, '', '2015-07-23 19:27:03'),
(90, '', '2015-07-23 20:33:39'),
(97, '', '2015-07-23 20:36:25'),
(96, '', '2015-07-23 20:36:04'),
(95, '', '2015-07-23 20:35:45'),
(94, '', '2015-07-23 20:34:20'),
(99, '', '2015-07-24 18:22:56'),
(100, '', '2015-07-24 18:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `file_managers_files`
--

CREATE TABLE IF NOT EXISTS `file_managers_files` (
  `file_manager_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `tag` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `file_managers_files`
--

INSERT INTO `file_managers_files` (`file_manager_id`, `file_id`, `tag`, `order`) VALUES
(1, 1, 'main_image', 0),
(2, 2, 'main_image', 0),
(3, 3, 'main_image', 0),
(4, 4, 'main_image', 0),
(5, 5, 'main_image', 0),
(6, 6, 'main_image', 0),
(1, 7, 'image_gallery', 0),
(1, 8, 'image_gallery', 0),
(1, 9, 'image_gallery', 0),
(7, 117, 'main_image', 0),
(8, 123, 'main_image', 0),
(9, 12, 'main_image', 0),
(10, 121, 'main_image', 0),
(11, 109, 'main_image', 0),
(12, 26, 'main_image', 0),
(12, 16, 'complete_image', 0),
(13, 110, 'main_image', 0),
(14, 73, 'main_image', 0),
(15, 47, 'desktop_image', 0),
(15, 58, 'mobile_image', 0),
(16, 48, 'desktop_image', 0),
(16, 55, 'mobile_image', 0),
(17, 27, 'main_image', 0),
(18, 40, 'main_image', 0),
(19, 29, 'main_image', 0),
(20, 156, 'main_image', 0),
(21, 31, 'main_image', 0),
(22, 32, 'main_image', 0),
(23, 33, 'main_image', 0),
(24, 34, 'main_image', 0),
(25, 35, 'main_image', 0),
(26, 36, 'main_image', 0),
(27, 37, 'main_image', 0),
(28, 38, 'main_image', 0),
(29, 39, 'main_image', 0),
(30, 52, 'desktop_image', 0),
(31, 125, 'main_image', 0),
(30, 57, 'mobile_image', 0),
(44, 112, 'main_image', 0),
(46, 118, 'main_image', 0),
(45, 113, 'main_image', 0),
(55, 155, 'main_image', 0),
(57, 135, 'main_image', 0),
(56, 134, 'main_image', 0),
(33, 124, 'main_image', 0),
(58, 133, 'main_image', 0),
(59, 132, 'main_image', 0),
(60, 78, 'main_image', 0),
(32, 126, 'main_image', 0),
(54, 154, 'main_image', 0),
(48, 83, 'main_image', 0),
(47, 138, 'main_image', 0),
(61, 107, 'main_image', 0),
(69, 86, 'main_image', 0),
(70, 87, 'main_image', 0),
(72, 145, 'main_image', 0),
(71, 144, 'main_image', 0),
(74, 90, 'main_image', 0),
(75, 143, 'main_image', 0),
(76, 142, 'main_image', 0),
(77, 140, 'main_image', 0),
(73, 94, 'main_image', 0),
(52, 128, 'main_image', 0),
(51, 127, 'main_image', 0),
(53, 131, 'main_image', 0),
(78, 136, 'main_image', 0),
(79, 137, 'main_image', 0),
(80, 141, 'main_image', 0),
(81, 146, 'main_image', 0),
(82, 147, 'main_image', 0),
(83, 148, 'main_image', 0),
(84, 149, 'main_image', 0),
(85, 150, 'main_image', 0),
(86, 151, 'main_image', 0),
(87, 152, 'main_image', 0),
(88, 153, 'main_image', 0),
(20, 157, 'color_icon', 0),
(89, 160, 'main_image', 0),
(89, 159, 'color_icon', 0),
(90, 161, 'color_icon', 0),
(91, 162, 'color_icon', 0),
(92, 163, 'color_icon', 0),
(93, 164, 'color_icon', 0),
(94, 165, 'color_icon', 0),
(95, 166, 'color_icon', 0),
(96, 167, 'color_icon', 0),
(97, 168, 'color_icon', 0),
(98, 169, 'color_icon', 0),
(99, 170, 'image_list', 0),
(99, 171, 'image_details', 0),
(100, 172, 'image_list', 0),
(100, 173, 'image_details', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `file_manager_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `subcategory_id` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `brief`, `description`, `subcategory`, `file_manager_id`, `active`, `date_created`, `subcategory_id`) VALUES
(23, 'Serum Capilar Issue 3D Gloss', '¡Brillá como nunca antes!', 'El Serum Capilar Issue 3D Gloss brinda brillo instantáneo y sedosidad al cabello maltratado y rebelde. Gracias a su nueva fórmula, forma un film protector sobre la fibra capilar, lo que evita la pérdida de la humedad natural del cabello, otorgando brillo y suavidad durante más tiempo.<br>', ' Reparador de Puntas y Serum Capilar', 58, 1, '2015-07-17 19:55:22', 8),
(26, 'Kit Crazy Colors', 'Dale creatividad a tu color y marcá tendencia. En sólo minutos, un look distinto para vos.', 'La coloración Issue CRAZY COLORS es una coloración semipermanente que viene en 5 colores puros y vibrantes: Crazy Red, Crazy Fucsia, Crazy Violet, Crazy Pink y Crazy Blue. Ahora con Issue Crazy Colors podés obtener los tonos fantasía que siempre quisiste y crear tu propio estilo.&nbsp;<div style="line-height: 1;"><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Dale creatividad a tu color y marcá tendencia. En sólo minutos, un look distinto para vos</span>.&nbsp;<div style="line-height: 1;">El kit de Issue Crazy Colors, contiene todos los elementos necesarios, para que logres un color vibrante y divertido. Usá el polvo decolorante y el activador Issue para decolorar bien tu cabello, luego usa la coloración Crazy Colors y ¡listo! Tu cabello lucirá el color más atrevido&nbsp; y pleno.</div></div>', 'Línea Crazy Colors', 79, 1, '2015-07-21 20:36:49', 3),
(3, 'Sachet de Coloración Issue 3D Gloss', '¡Brillá como nunca antes! ', 'El Sachet de Coloración Issue 3D Gloss contiene activos de alta reflexión que reflejan el brillo en 3 dimensiones.', 'Línea 3D Gloss', 31, 1, '2015-07-17 18:31:30', 2),
(4, 'Súper Color Pack Issue 3D Gloss', '¡Brillá como nunca antes!', 'Una nueva tecnología que otorga brillo tridimensional y excelente cobertura de canas. Incluye el Tratamiento Potenciador de Brillo Issue para potenciar aún más el brillo luego de la coloración y &nbsp;obtener el brillo que siempre quisiste para tu pelo.', 'Línea 3D Gloss', 32, 1, '2015-07-17 18:35:39', 2),
(5, 'Issue 3D Gloss Kit', '¡Brillá como nunca antes!', 'Issue desarrolló una fórmula para su coloración con activos de brillo que al penetrar en la fibra capilar logran un efecto de reflexión tridimensional.<div><span style="font-weight: bold;">Con Issue 3D Gloss obtendrás un brillo profundo y un color radiante ¡como nunca antes! ¡No dejes que tu brillo se apague!</span></div>', 'Línea 3D Gloss', 33, 1, '2015-07-17 18:38:28', 2),
(22, 'Shock de Keratina', 'Productos de cuidado y tratamiento para el cabello.', 'La keratina es el componente esencial del cabello y es la responsable de dar estructura, resistencia y brillo. Asociada a esta formulación, actúa como regeneradora de la fibra capilar. Ideal para puntas secas y quebradizas. Protege el cabello de la pérdida de humedad, dejándolo con mayor suavidad y más resistente al quiebre. Usando el shock de Keratina Issue, al menos dos veces por semana, el cabello lucirá con brillo y vitalidad.<br>', 'Shocks de Tratamiento Capilar Issue', 57, 1, '2015-07-17 19:51:57', 7),
(16, 'Issue Súper Color Pack con Keratina', 'Issue con Keratina K2 repara y fortalece el cabello durante el proceso de la coloración.', 'La coloración que repara y refuerza el cabello durante el proceso de coloración, gracias a sus tratamientos pre y post Color con keratina. Permite lograr resultados efectivos y duraderos, con un 100% de cobertura de canas. Cabellos reparados para el color más intenso.<div><span style="font-weight: bold;">La coloración que repara y refuerza el cabello durante el proceso de coloración, gracias a sus tratamientos pre y post Color con keratina.</span><br></div>', 'Línea Keratin', 44, 1, '2015-07-17 18:56:06', 1),
(17, 'Issue Color Pack con Shock de Keratina', 'Maximiza la belleza del cabello luego de la coloración, dejándolo suave y vital. ', 'Issue te ofrece una coloración práctica, con la mejor calidad al mejor precio. Incluye Coloración en crema Issue y Activador en Crema Issue en la proporción justa para una mezcla homogénea y un mejor resultado en sus cabellos, proporcionando un color intenso, luminoso y parejo de raíz a puntas.<br><div><span style="font-weight: bold;">Además, trae un Shock de Keratina para maximizar la belleza del cabello luego de la coloración, dejándolo suave y vital.</span><br></div>', 'Línea Keratin', 45, 1, '2015-07-17 18:59:54', 1),
(18, 'Issue Kit Keratin', 'Issue con Keratina K2 repara y fortalece el cabello durante el proceso de la coloración.', 'La keratina es el componente esencial del cabello y es la responsable de dar estructura, resistencia y brillo. Con la edad, los sucesivos tratamientos químicos (coloraciones, alisados), las altas temperaturas (planchitas, secadores) y los rayos solares, la keratina se va perdiendo y el cabello queda quebradizo, poroso y sin brillo.<br><div><br></div>', 'Línea Keratin', 46, 1, '2015-07-17 19:05:31', 1),
(19, 'Línea Tradicional', 'Polvos decolorantes.', 'El polvo decolorante Issue ofrece la mejor performance para decolorar todo tipo de cabellos. Brinda mayor suavidad y acondicionamiento. Decolora en forma pareja y uniforme hasta 7 tonos de cabello natural.', 'Línea Tradicional', 54, 1, '2015-07-17 19:43:52', 4),
(20, 'Línea Extra Blond', 'Polvos decolorantes.', 'Los polvos decolorantes Issue Extra Blond están delicadamente perfumados y libres de polvillo. No procovan sensibilidad cutánea aclarando hasta 7 tonos dependiendo de la base natural o artificial en la cual se lo aplique. Su presentación Ammonia Free (sin amoníaco), Issue Extra Blond con Semi di Lino fue desarrollada especialmente para cabellos finos y sensibilizados por sucesivas decoloraciones. Hidrata, suaviza y protege mientras decolora el cabello de manera ultra rápida. Issue Extra Blond con Hierbas y Proteínas e Issue Extra Blond con Manzanilla y Caléndula permiten realizar aclaraciones progresivas y nítidas, aportando los efectos reparadores de sus componentes. Ideales pra cabellos normales y resistentes.', 'Línea Extra Blond', 55, 1, '2015-07-17 19:48:02', 10),
(21, 'Shock de Brillo', 'Productos de cuidado y tratamiento para el cabello.', 'El shock de Brillo ISSUE tiene propiedades reparadoras y contiene activos de alta reflexión que otorgan un brillo intenso al cabello, resaltando su vitalidad. Gracias a su fórmula, el cabello queda reparado, suave y con brillo tridimensional durante más tiempo. Usando el shock de Brillo Issue, dos veces por semana, el cabello lucirá suave y con brillo tridimensional.<br>', 'Shocks de Tratamiento Capilar Issue', 56, 1, '2015-07-17 19:50:51', 7),
(24, 'Reparador de Puntas Instantáneo con Keratina', 'Productos de cuidado y tratamiento para el cabello.', 'La keratina es el componente esencial del cabello y es la responsable de dar estructura, resistencia y brillo. Issue la combina en su reparador de puntas otorgando reparación y fortalecimiento instantáneo a las puntas florecidas, secas o dañadas.<br>', ' Reparador de Puntas y Serum Capilar', 59, 1, '2015-07-17 19:56:33', 8),
(25, 'Shampoo & Acondicionador Hydrax', 'Productos de cuidado y tratamiento para el cabello.', 'La Línea Issue HYDRAX &nbsp;hidrata el cabello profundamente, dejándolo dócil, suave y brillante. Gracias a su complejo hidratante del cuero cabelludo, para un cabello saludable desde la raíz.<br>', 'Shampoo & Acondicionador Hydrax', 60, 1, '2015-07-17 19:58:04', 9),
(27, 'Sachet Crazy Colors', 'Dale creatividad a tu color y marcá tendencia. En sólo minutos, un look distinto para vos.', 'La coloración Issue CRAZY COLORS es una coloración semipermanente que viene en 5 colores puros y vibrantes: Crazy Red, Crazy Fucsia, Crazy Violet, Crazy Pink y Crazy Blue. &nbsp;Ahora con Issue Crazy Colors podes obtener los tonos fantasía que siempre quisiste y crear tu propio estilo.&nbsp;<span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Dale creatividad a tu color y marcá tendencia. En sólo minutos, un look distinto para vos</span>.&nbsp;<div>El sachet de Issue Crazy Colors te la posibilidad de jugar con diferentes estilos y looks. Se utiliza para crear diferentes estilos:</div><div><br></div><div><ol><li>Cabello decolorado: se obtienen tonos vibrantes e intensos.&nbsp;<br></li><li>Cabello Teñido: intensifica el tono y otorga brillo.<br></li><li>Cabello Natural: aporta luminosidad y reflejos fantasía.<br></li></ol></div>', 'Línea Crazy Colors', 80, 1, '2015-07-21 20:42:54', 3),
(28, 'Coloración en Sachet', 'Combina la belleza del color con la fuerza de la duración en solo un sachet.', 'Con una exclusiva fórmula, clínica y dermatológicamente testeada, la Coloración en Crema Issue combina la belleza del color con la fuerza de su duración, ofreciendo un producto de alta calidad al mejor precio.&nbsp;', 'Coloración en Sachet', 86, 1, '2015-07-21 21:01:35', 17),
(29, 'Activador en crema 20 VOL', 'Activadores en crema.', '<p style="line-height: 1;">Activadores&nbsp;de 20 vol. Presentaciones&nbsp;en sachet y en botella.</p>', 'Activador en Crema', 87, 1, '2015-07-21 21:14:41', 21),
(30, 'Activador en Crema 30 VOL', 'Activadores en crema.', 'Activadores&nbsp;de 30 vol. Presentaciones&nbsp;en sachet y en botella.', 'Activador en Crema', 88, 1, '2015-07-21 21:16:42', 21);

-- --------------------------------------------------------

--
-- Table structure for table `products_colors`
--

CREATE TABLE IF NOT EXISTS `products_colors` (
  `product_id` int(11) unsigned NOT NULL,
  `color_id` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_colors`
--

INSERT INTO `products_colors` (`product_id`, `color_id`) VALUES
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 10),
(16, 11);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `province_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `province_order` tinyint(2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`province_id`, `name`, `province_order`) VALUES
(1, 'Buenos Aires', 1),
(2, 'Catamarca', 2),
(3, 'Chaco', 3),
(4, 'Chubut', 4),
(5, 'Cordoba', 5),
(6, 'Corrientes', 6),
(8, 'Entre Rios', 8),
(9, 'Formosa', 9),
(14, 'Jujuy', 14),
(15, 'La Pampa', 15),
(16, 'La Rioja', 16),
(17, 'Mendoza', 17),
(18, 'Misiones', 18),
(19, 'Neuquén', 19),
(20, 'Río Negro', 20),
(21, 'Salta', 21),
(22, 'San Luis', 22),
(23, 'Santa Cruz', 23),
(24, 'Santiago Del Estero', 24),
(25, 'Tierra Del Fuego', 25),
(26, 'Tucumán', 26),
(27, 'San Juan', 27),
(28, 'Santa Fe', 28),
(29, 'Capital Federal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `subcategory_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `brief` varchar(245) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `file_manager_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcategory_id`, `category_id`, `category`, `name`, `brief`, `date_created`, `active`, `file_manager_id`) VALUES
(1, 1, 'Coloración', 'Línea Keratin', 'Issue Kit Keratin K2 es una línea que repara y fortalece el cabello mientras se realiza el proceso de coloración.', '2015-07-06 21:03:02', 1, 11),
(2, 1, 'Coloración', 'Línea 3D Gloss', 'Issue desarrolló una tintura con brillo tridimensional para lograr colores más intensos y un brillo como nunca antes.', '2015-07-06 21:50:49', 1, 13),
(3, 1, 'Coloración', 'Línea Crazy Colors', 'Es una coloración semipermanente de tonos puros vibrantes y de aplicación directa, sin amoníaco ni oxidantes. ', '2015-07-17 19:27:34', 1, 47),
(4, 2, 'Decoloración', 'Línea Tradicional', 'El polvo decolorante Issue ofrece la mejor performance para decolorar todo tipo de cabellos. Brinda mayor suavidad y acondicionamiento. Decolora en forma pareja y uniforme hasta 7 tonos de cabello natural.', '2015-07-17 19:29:21', 1, 48),
(7, 4, 'Tratamientos', 'Shocks de Tratamiento Capilar Issue', 'Los nuevos shocks de tratamiento Issue poseen propiedades reparadoras y activos que actúan en la fibra capilar otorgando brillo y vitalidad de acuerdo a la necesidad de cada cabello.', '2015-07-17 19:30:57', 1, 51),
(8, 4, 'Tratamientos', ' Reparador de Puntas y Serum Capilar', 'Issue ha desarrollado dos tratamientos específicos de Cuidado Capilar que acompañan y potencian la coloración de las líneas de Issue Keratin e Issue 3D Gloss.', '2015-07-17 19:31:35', 1, 52),
(9, 4, 'Tratamientos', 'Shampoo & Acondicionador Hydrax', 'La Línea Issue HYDRAX  hidrata el cabello profundamente, dejándolo dócil, suave y brillante. Gracias a su complejo hidratante del cuero cabelludo logra un cabello saludable desde la raíz.', '2015-07-17 19:32:24', 1, 53),
(10, 2, 'Decoloración', 'Línea Extra Blond', 'Los polvos decolorantes Issue Extra Blond están delicadamente perfumados y libres de polvillo. No provocan sensibilidad cutánea aclarando hasta 7 tonos dependiendo de la base natural o artificial en la cual se lo aplique.', '2015-07-17 19:59:16', 1, 61),
(17, 1, 'Coloración', 'Coloración en Sachet', 'Combina la belleza del color con la fuerza de la duración en solo un sachet.', '2015-07-21 20:54:16', 1, 81),
(21, 1, 'Coloración', 'Activador en Crema', '¡Fórmula mejorada! Mayor cremosidad con suave y fresco aroma. Dermatológicamente testeado.', '2015-07-21 20:58:58', 1, 85);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD FULLTEXT KEY `title` (`title`,`brief`,`description`);
ALTER TABLE `articles`
  ADD FULLTEXT KEY `title_2` (`title`);

--
-- Indexes for table `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `articles_categories_deleted`
--
ALTER TABLE `articles_categories_deleted`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `articles_deleted`
--
ALTER TABLE `articles_deleted`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD FULLTEXT KEY `title` (`title`,`brief`,`description`);
ALTER TABLE `articles_deleted`
  ADD FULLTEXT KEY `title_2` (`title`);

--
-- Indexes for table `articles_groups`
--
ALTER TABLE `articles_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `articles_groups_deleted`
--
ALTER TABLE `articles_groups_deleted`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `bitauth_groups`
--
ALTER TABLE `bitauth_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `bitauth_logins`
--
ALTER TABLE `bitauth_logins`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bitauth_userdata`
--
ALTER TABLE `bitauth_userdata`
  ADD PRIMARY KEY (`userdata_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bitauth_users`
--
ALTER TABLE `bitauth_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`configuration_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `file_managers`
--
ALTER TABLE `file_managers`
  ADD PRIMARY KEY (`file_manager_id`);

--
-- Indexes for table `file_managers_files`
--
ALTER TABLE `file_managers_files`
  ADD PRIMARY KEY (`file_manager_id`,`file_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category` (`subcategory`);

--
-- Indexes for table `products_colors`
--
ALTER TABLE `products_colors`
  ADD PRIMARY KEY (`product_id`,`color_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `index1` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=769;
--
-- AUTO_INCREMENT for table `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `articles_categories_deleted`
--
ALTER TABLE `articles_categories_deleted`
  MODIFY `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `articles_deleted`
--
ALTER TABLE `articles_deleted`
  MODIFY `article_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=737;
--
-- AUTO_INCREMENT for table `articles_groups`
--
ALTER TABLE `articles_groups`
  MODIFY `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `articles_groups_deleted`
--
ALTER TABLE `articles_groups_deleted`
  MODIFY `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bitauth_groups`
--
ALTER TABLE `bitauth_groups`
  MODIFY `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bitauth_logins`
--
ALTER TABLE `bitauth_logins`
  MODIFY `login_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `bitauth_userdata`
--
ALTER TABLE `bitauth_userdata`
  MODIFY `userdata_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bitauth_users`
--
ALTER TABLE `bitauth_users`
  MODIFY `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21826;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `color_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `configuration_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `file_manager_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
