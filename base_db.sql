
-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 16, 2015 at 10:14 PM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `adyouwis_issue`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `creator_name` varchar(255) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `creator_id` (`creator_id`),
  FULLTEXT KEY `title` (`title`,`brief`,`description`),
  FULLTEXT KEY `title_2` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `category_id`, `categories_names`, `group_id`, `groups_names`, `title`, `brief`, `description`, `date_event_start`, `web`, `source`, `file_manager_id`, `video`, `active`, `show_agenda`, `show_insite`, `tags`, `views`, `show_image_details`, `user_listed`, `date_created`, `creator_id`, `creator_name`) VALUES
(1, 2, 'Consejo', 0, 'Sin grupo', 'Volvieron los rulos', '<p>Volvieron los rulos</p>', '<p class="primero" style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Volvieron los rulos. Vieron que durante muchos años se usaron las ondas descontracturadas, grandes y desarmadas??</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Bueno, volvieron los rulos, después de los 80´s y el boom de las permanentes, de los 90´s y el lllllaaaacio larrrrrgo, de los 2000, con las onditas en las puntas, en 2010, con las ondas cepilladas de las Kardashians&nbsp;<b>ahora, la que va, son los rulos</b>. Así que, por si se quieren unir a la oleada ruluda, les vamos a mostrar<b>&nbsp;cómo hacerlos y que queden naturales</b>.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Vamos al paso a paso:</b></p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056838" src="http://bucket3.glanacion.com/anexos/fotos/38/pipi-cucu-pelo-2056838w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>1-&nbsp;</b>Dividí tu pelo en 2 o 3. Dependiendo la cantidad de pelo que tengas. Lo ideal es hacerlo en tres partes para generar más rulos y por ende más volumen.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056839" src="http://bucket1.glanacion.com/anexos/fotos/39/pipi-cucu-pelo-2056839w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>2-</b>&nbsp;Humedecé el pelo con "Flatliner" de Schwarzkopf. No tires mucho, solo humedecelo un poquito. Vas a ver que el rulo va a quedar más marcado y suave.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056840" src="http://bucket1.glanacion.com/anexos/fotos/40/pipi-cucu-pelo-2056840w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>3-&nbsp;</b>Con la buclera bieeeen caliente, empezá a agarrar mechones. Tratá de que no sean muy gruesos. Siempre que sea un rulo para adentro y uno para afuera. NO hagan los rulos para el mismo lado!! enrosquen para un lado y para otro!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056841" src="http://bucket2.glanacion.com/anexos/fotos/41/pipi-cucu-pelo-2056841w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>4-&nbsp;</b>Repetí el mismo paso con la cantidad de capas que te hayas hecho. Vas a ver que los rulos de arriba son mucho más faciles porque tenés mucho más espacio y además el pelo es más largo. Asi que paciencia con la primera parte!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056842" src="http://bucket3.glanacion.com/anexos/fotos/42/pipi-cucu-pelo-2056842w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056861" src="http://bucket2.glanacion.com/anexos/fotos/61/pipi-cucu-pelo-2056861w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>5-&nbsp;</b>Así te quedan los rulos si no los desarmás, podés buscar este look que es más armadito y rígido.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056843" src="http://bucket1.glanacion.com/anexos/fotos/43/pipi-cucu-pelo-2056843w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>6-</b>&nbsp;Con la yema de tus dedos, metete en cada rulo y batilo en toda su extensión. Con la mano apoyada en las puntas del pelo, subilos un poco.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056844" src="http://bucket2.glanacion.com/anexos/fotos/44/pipi-cucu-pelo-2056844w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>7-&nbsp;</b>Si te copa el look más descontracturado, desarmá la raya bien desde la raíz.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056845" src="http://bucket3.glanacion.com/anexos/fotos/45/pipi-cucu-pelo-2056845w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056862" src="http://bucket3.glanacion.com/anexos/fotos/62/pipi-cucu-pelo-2056862w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">y listo! Quedan lindos eh! para que te duren, ponete un poco de spray... porque si tenés pelo lacio y finito como Guille, vas a ver que los rulos te duran 5 minutos. Asique sí o sí fijalos bien.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Y acá les dejamos&nbsp;<b>3 opciones con un aplique</b>.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Tirá spray en la mitad de la cabeza que te quedó menos pelo, peinalo con un cepillo de cerdas pegándolo bien al cuero cabelludo.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056846" src="http://bucket1.glanacion.com/anexos/fotos/46/pipi-cucu-pelo-2056846w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Enganchá el aplique, pueden ser flores, peinetas, un clip y ya o hebillas!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056847" src="http://bucket2.glanacion.com/anexos/fotos/47/pipi-cucu-pelo-2056847w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Al pelo que te quedó suelto tirale mucho spray así le das volumen.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056848" src="http://bucket3.glanacion.com/anexos/fotos/48/pipi-cucu-pelo-2056848w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Otra opción es ponértelo en la mitad de la cabeza que tenés más pelo, si tenés flequillo podés sujetarlo o bien dejarlo sueltito!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">¿Mediacola? Re! Asique acá les mostramos como queda esta opción también.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2056849" src="http://bucket1.glanacion.com/anexos/fotos/49/pipi-cucu-pelo-2056849w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Esperamos que les haya gustado y que pongan en práctica estos rulos que son bárbaros, Guille no puede parar de despeinárselos. Y si los tenés naturalmente amigate con ellos que son lo más!!!!</p>', '2015-07-24 20:45:00', '', '', 150, '', 1, 1, 1, '', 8, 1, 0, '2015-07-24 20:46:42', 3, 'admin');
INSERT INTO `articles` (`article_id`, `category_id`, `categories_names`, `group_id`, `groups_names`, `title`, `brief`, `description`, `date_event_start`, `web`, `source`, `file_manager_id`, `video`, `active`, `show_agenda`, `show_insite`, `tags`, `views`, `show_image_details`, `user_listed`, `date_created`, `creator_id`, `creator_name`) VALUES
(2, 2, 'Consejo', 0, 'Sin grupo', 'Peinados para novias y recomendaciones', 'Peinados para novias y recomendaciones', '<h1 itemprop="name headline" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 39px; font-family: TitilliumRegular, Arial; vertical-align: baseline; font-stretch: normal; line-height: 48px; color: rgb(51, 51, 51);"><p class="primero" style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Ya llega la epoca en la que todas se empiezan a preparar, a poner nerviosas y a decidir los ultimos detalles!!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">En el estudio estamos teniendo más novias que nunca, no sé qué pasó en 2015, pero parece que es EL año del amor.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Hoy lo que vamos a hacer son recomendaciones para los pelos/peinados de las novias:</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Si sos morocha:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Te recomendamos que te hagas algunas mechas mas claras, o las puntas desgastadas. Algo que te ilumine, que haga que el peinado tenga movimiento y no sea un peinado tan entero. Vas a ver que te va a ayudar un montón a vos, para que se luzca más todo y se suavice tu look.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Tenés el pelo opaco y con un frizz indomable:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Hacete un baño de keratina unos meses antes, para probar cómo te queda el pelo. Siempre queda espectacular, brillante y sin frizz. Si te hizo ese efecto, entonces volvételo a hacer un mes antes de tu casamiento. Ojo, si además el día de tu casamiento, querés tener ondas y que te duren, olvidate, la keratina va a impedir que las ondas sean duraderas. Entonces, optá por un recogido, o con el pelo lacio, con trencitas o apliques.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Peinados despeinados:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">El peinado descontracturado, como los que ves en las fotos de más abajo, sólo quedan lindos si los hacés así, a todo trapo de descontracturado. Si empezás a emprolijarlo un poco y a sacar un solo pelo de por acá, otro de por allá, esto peinado, esto no... y que pin que pan, termina quedando algo medio híbrido y sin onda.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Es importantísimo que vayas a un estudio, peluquero o lugar que te represente. El maquillaje y el peinado, son como los diseñadores. No vas a ir a Pablo Ramírez a pedirle que te haga un vestido como los de Claudio Cossano, lo mismo pasa con los peluqueros, si querés un peinado descontracturado y canchero, andá a un lugar que te lo hagan así. Si querés uno prolijo e impecable a otro.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>¿Porqué las novias de las revistas son todas geniales y perfectas?</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">No es porque son modelos, todas somos modelos. Es porque atrás de eso hay una productora de moda, viendo el look completo. Lo ideal es que el peluquero y maquillador se los recomiende el diseñador del vestido. ¿Por qué? Porque el diseñador es el que entiende tu estilo y te representa, vos fuiste a ESE diseñador porque te gusta su estilo, entonces el peluquero y maquillador que te recomiende el o ella, va a seguir su línea y así te va a ser mucho más fácil, lograr un look parejo y alucinante.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Elecciones:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Vos a esta altura de la vida, ya sabés qué es lo que te queda bien y qué no tanto. Si sos medio insegura que no te decidís o que no te animás tanto al cambio, no hagas algo drástico. Por ejemplo, si toda la vida usaste raya al medio, y te sentís segura linda y genial, si querés, probá con la raya al costado, salí, andá a comer con amigas etc, a ver cómo te sentís. Si no estás cómoda, no le des para adelante, por más que todos te digan que te queda espectacular. Acá la que se casa sos vos y tenés que sentirte linda y cómoda. Si estás peinada de una manera que no te representa, se nota. Vas a estar incómoda y con cara dura y moviéndote raro. Lo más lindo del mundo, es que la novia esté fresca, cómoda y feliz.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Accesorios para el pelo:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Lo ideal es que lo haga el mismo diseñador del vestido, o que sea alguien que él te recomiende. Si vos traes un aplique de pelo, te ponés la chalina con la que se casó tu abuela, que es un sueño de seda espectacular, te peinás con pirulo, te maquillás con tal otro, muchas veces sale muy muy bien, y otras termina siendo un rejunte de cosas que no se conectan entre sí. Por eso, para mí, es importante que confíes en una persona, y esa persona, creo que tiene que ser tu diseñador. O si amás a tu peinador, preguntale a el, o si amás a tu maquillador, preguntale a el si conoce un diseñador de vestidos de novias. A nosotras en el estudio nos preguntan un montón por diseñadores de novias, porque les gusta nuestro estilo, entonces sienten que las vamos a poder ayudar... Así que chicas, es clave, confiar mucho mucho en alguien, y no estar dudando de todo todo el tiempo.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>Peinado seguro:</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">En Buenos Aires, sobre todo en los meses de calor, es imposible casi que las ondas duren, que un pelo suelto con ondas dure, por más que pongas dos millones de productos, prepares el pelo etc. Hay algunos pelos que resisten y quedan, pero la mayoría se caen. Entonces, las que quieren pelo suelto, estarán divinas al principio, y a medida que va avanzando, las ondas se desarmarán un poco. A mí no me parece grave, pero es importante que lo sepan!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Si te hacés un recogido, bien hecho. Ese recogido no tiene por qué moverse, salvo que alguien te lo enganche con algo.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Los recogidos tienen que ser duraderos, si saltás, te movés, batís la cabeza, un buen recogido dura y te das cuenta en la cabeza, sentís como un casquito, a pesar de que no se vea como tal.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Acá les dejo todos unos peinados que me parecieron divinos, para que usen de referencia!! Obvio que este es nuestro estilo. Como dije, hay peinadores y maquilladores, como hay diseñadores. Diferentes estilos, distintas ondas. Cada uno elige con quién se representa.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065583" src="http://bucket1.glanacion.com/anexos/fotos/83/pipi-cucu-pelo-2065583w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065584" src="http://bucket2.glanacion.com/anexos/fotos/84/pipi-cucu-pelo-2065584w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065585" src="http://bucket3.glanacion.com/anexos/fotos/85/pipi-cucu-pelo-2065585w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2065586" src="http://bucket1.glanacion.com/anexos/fotos/86/pipi-cucu-pelo-2065586w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Y sobre todo, nunca, nunca nunca se olviden, que están celebrando el amor que se tienen ustedes dos, un amor sincero, lindo, alegre y espectacular.<span class="icon-bullet" style="margin: 0px 0px 0px 8px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(247, 49, 127); display: inline-block; width: 20px; height: 20px;"></span></p></h1>', '2015-07-24 20:48:00', '', '', 151, '', 1, 1, 1, '', 8, 1, 0, '2015-07-24 20:49:05', 3, 'admin'),
(3, 2, 'Consejo', 0, 'Sin grupo', 'Tres para pelicortis (peinarse es gratis)', 'Tres para pelicortis (peinarse es gratis)', '<p class="primero" style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Guille se cortó el pelo, se lo meeeega cortó. Así que en este posteo les vamos a mostrar los distintos peinados que se hace desde que es pelicorti. Son peinados sin mucha elaboración ni complejidad, perfectos para ir al trabajo, o a cualquier lado. Ya iremos mostrando algunos más de fiesta, especiales para pelos de este corto. Los de hoy no son excluyentes si tenés otro tipo de largo u otro pelo, pero sí son aptos para pelicorti.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">El otro día una amiga mía fue al estudio a tomar una clase, yo no estaba, entonces la atendió Guille. Sale de la clase y me manda un mensaje preguntándome dónde se había cortado el pelo Guille y qué productos se pone en el pelo, porque lo tenía cancherísimo. A lo que yo respondí: Guille y yo nos cortamos casi que con tijeras de pollo, son tijeras que cortan papel, y lo hacemos intuitivamente. Lo que tenemos las dos en común es que sabemos llevar un corte. "EL CORTE NO HACE A UNA, UNA HACE AL CORTE!"</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Vos podés tener un corte hecho por el mejor peluquero de las famosas que cobra dosmil dólares el corte. Pero si te lo ponés atrás de la oreja y no lo manejás, movés o vas cambiando y estás atenta durante el día, el corte millonario, pasa a ser un torre impresionante.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Repito y repetiré en cada posteo:&nbsp;<b>peinarse es gratis&nbsp;</b>y con estos peinados que muestra Guille hoy (que podes optar por ponerte un moño o una hebilla con pierdas o lo que más te plazca, eso depende de gustos) no hay excusas para ver una pelicorti llevando el pelo atrás de la oreja con toda la raya mal hecha y poco favorecedora porque "Bueno, no tenía tiempo", estos peinados, tampooooco llevan tiempo!!</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>1.</b></p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>a.</b>&nbsp;Agarramos un mechón de adelante, lo hacemos una torzada y enganchamos atrás con un invisible.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054002" src="http://bucket3.glanacion.com/anexos/fotos/02/pipi-cucu-pelo-2054002w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>b.&nbsp;</b>Hacemos o mismo con el otro costado, los enganchamos a ambos con invisibles. La hebilla es para decorar, la hebilla no es lo que sostiene el peinado realmente, lo que sostiene el peinados son los invisibles, así que atentis, que el peinado tiene que estar bien fijo antes de poner la decoración!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054003" src="http://bucket1.glanacion.com/anexos/fotos/03/pipi-cucu-pelo-2054003w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>c</b>. Pueden dejarlo suelto, o hacerse una colita baja.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054004" src="http://bucket2.glanacion.com/anexos/fotos/04/pipi-cucu-pelo-2054004w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">¿no es divino?</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Este corte de pelo puede ser peligroso si no le metés onda o algún productito, porque es muy recto y de un largo que no es ni corto ni largo, hay que darle onda... Vamos a usar el Dust It, este es el producto estrella de Guille, le ama con pasión.</p><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>1.&nbsp;</b>Espolvoreá un poco del Dust It en la raíz del pelo, abriéndolo con la yema de los dedos. Nosotras usamos el de Lóreal Professionnel o el de Schwartzkopf, ambos son alucinantes.</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054006" src="http://bucket1.glanacion.com/anexos/fotos/06/pipi-cucu-pelo-2054006w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;"><b>2.&nbsp;</b>Para "activarlo" lo movés bien desde la raíz. Donde lo muevas, el pelo queda, así que te podés hacer un jopo para un costado y moverlo bien desde la raíz para que dé volúmen. Si querés que parezca mas de peluquería y producido, achatá una parte del pelo con spray y listo!!</p><figure class="destacada foto" style="margin-bottom: 23px; padding: 0px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(204, 204, 204); outline: 0px; font-size: 16px; font-family: Arial; vertical-align: baseline; position: relative; width: 620px; line-height: 0; text-align: center; min-height: 150px; clear: both; color: rgb(0, 0, 0);"><a style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202);"><img id="imagen_2054007" src="http://bucket2.glanacion.com/anexos/fotos/07/pipi-cucu-pelo-2054007w620.jpg" style="margin: 0px; padding: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-height: 413px;"><span title="Ampliar imagen" class="icon-ampliar" style="margin: 0px; padding: 4px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 18px; font-family: inherit; vertical-align: baseline; width: 19px; height: 19px; display: block; cursor: pointer; position: absolute; top: 9px; right: 8px; background: rgba(255, 255, 255, 0.701961);">&nbsp;</span></a><div class="boton-compartir-redes" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; width: 130px; height: 40px; position: absolute; top: 8px; left: 6px; cursor: pointer;"><span class="compartir-redes-over" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;"><a class="icon-facebook" title="Compartir en Facebook" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-twitter" title="Compartir en Twitter" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a><a class="icon-pinterest" title="Compartir en Pinterest" style="margin: 0px 0px 0px 3px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 19px; font-family: inherit; vertical-align: baseline; color: rgb(0, 147, 202); width: 34px; height: 34px; border-radius: 17px; line-height: 39px; position: relative; display: inline-block !important; background-color: rgb(0, 170, 234);"></a></span></div></figure><p style="margin-bottom: 20px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 23px;">Via: http://www.revistaohlala.com/1802805-tres-para-pelicortis-peinarse-es-gratis</p>', '2015-07-24 20:49:00', '', '', 152, '', 1, 1, 1, '', 8, 1, 0, '2015-07-24 20:50:41', 3, 'admin'),
(4, 1, 'Tendencia', 0, 'Sin grupo', 'Tendencias tinte cabello para el 2015: fotos de los looks', 'Tendencias tinte cabello para el 2015: fotos de los looks', '&lt;div style="text-align: justify;"&gt;&lt;div&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/div&gt;&lt;div&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.&lt;/div&gt;&lt;/div&gt;', '2015-07-24 20:51:00', '', '', 154, '', 1, 1, 1, '', 8, 1, 0, '2015-07-24 20:53:01', 3, 'admin'),
(5, 1, 'Tendencia', 0, 'Sin grupo', 'Tendencias de Peinados para Mujer 2015 – 2016', 'Tendencias de Peinados para Mujer 2015 – 2016', 'T<span style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;"><a href="http://peinados.mujeryestilo.com/category/tendencias/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; color: rgb(68, 68, 68); -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out;">endencias</a>&nbsp;de Peinados para Mujer</span><span style="font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;">. Aquí te traigo una variedad de peinados para mujer que están de moda. Las mujeres siemrpe cuidan su cabello y buscan las mejores ideas de cortes o peinados para poder verse preciosa. El resultado es que muchas de las mujeres ha tenido un nuevo estilo de pelo que se ha convertido en una tendencia en la actualidad. Su fuente de inspiración para los amantes de la moda, peinados,&nbsp;</span><a href="http://peinados.mujeryestilo.com/category/colores/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; color: rgb(68, 68, 68); -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; background-color: rgb(255, 255, 255);">colores</a><span style="font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;">&nbsp;de pelo rubio puede tratar de un nuevo estilo de las tendencias para el cabello, puedes intentarlo estilos rizados del pelo,&nbsp;</span><a href="http://peinados.mujeryestilo.com/category/trenzas/" style="padding: 0px; margin: 0px; outline: none; list-style: none; border: 0px none; color: rgb(68, 68, 68); -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px; background-color: rgb(255, 255, 255);">trenzas</a><span style="font-family: Tahoma, Arial, Verdana, sans-serif; font-size: 13px; line-height: 19.5px;">&nbsp;de pelo y estilo único a la perfección. Dale una mirada a esta selección de peinados que te traemos de la nueva tendencia para el 2015 y 2016.</span>', '2015-07-24 20:53:00', '', '', 155, '', 1, 1, 1, '', 9, 1, 0, '2015-07-24 20:53:48', 3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `articles_categories`
--

CREATE TABLE IF NOT EXISTS `articles_categories` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `articles_categories`
--

INSERT INTO `articles_categories` (`category_id`, `title`, `active`, `total_articles`, `creator_id`, `creator_name`, `date_created`) VALUES
(1, 'Tendencia', 1, 0, 3, 'admin', '2015-07-24 20:45:07'),
(2, 'Consejo', 1, 0, 3, 'admin', '2015-07-24 20:45:22');

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
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_deleted`
--

CREATE TABLE IF NOT EXISTS `articles_deleted` (
  `article_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `creator_name` varchar(255) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `creator_id` (`creator_id`),
  FULLTEXT KEY `title` (`title`,`brief`,`description`),
  FULLTEXT KEY `title_2` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=737 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_groups`
--

CREATE TABLE IF NOT EXISTS `articles_groups` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `show_home` smallint(1) NOT NULL,
  `priority` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles_groups_deleted`
--

CREATE TABLE IF NOT EXISTS `articles_groups_deleted` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `show_home` smallint(1) NOT NULL,
  `priority` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `total_articles` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

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
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `brief` varchar(145) NOT NULL,
  `description` varchar(345) NOT NULL,
  `button` varchar(45) NOT NULL,
  `button_txt` varchar(45) NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `name`, `brief`, `description`, `button`, `button_txt`, `file_manager_id`, `active`, `date_created`, `banner_url`) VALUES
(1, 'Marcá tu propio estilo con Crazy Colors', '', '<p class="p1"><span class="s1">Coloración semipermanente de tonos puros vibrantes y de aplicación directa, sin amoníaco ni oxidantes.</span></p><p class="p1"></p>', 'btn-white', 'txt-black', 15, 1, '2015-07-07 20:35:39', 'http://www.adyouwish.com/issue/decoloracion'),
(2, 'Brillá con nuestra línea 3D Gloss', '', 'Issue desarrolló una nueva tintura con brillo tridimensional para lograr colores más intensos y un brillo como nunca antes.', 'btn-black', 'txt-white', 16, 1, '2015-07-07 20:38:10', 'http://www.adyouwish.com/issue/coloracion'),
(3, 'Conocé nuestra línea Issue Keratin', '', '<p class="p1">\n\n\n\n\n\n\n\n</p><p class="p1" style="line-height: 1;"><span class="s1">Issue Kit Keratin K2 repara y fortalece&nbsp;</span><span style="line-height: 1;">el cabello durante el proceso de coloración.</span></p>', 'btn-black', 'txt-white', 30, 1, '2015-07-16 14:19:16', 'http://www.adyouwish.com/issue/coloracion');

-- --------------------------------------------------------

--
-- Table structure for table `bitauth_groups`
--

CREATE TABLE IF NOT EXISTS `bitauth_groups` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(48) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `roles` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `login_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` bigint(20) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `time` datetime NOT NULL,
  `success` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

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
(61, 3047876798, 3, '2015-07-24 13:05:15', 1),
(62, 3047876798, 3, '2015-07-24 19:50:27', 1),
(63, 3047876798, 3, '2015-07-24 19:55:51', 1),
(64, 3047876798, 3, '2015-07-27 16:00:18', 1),
(65, 3200137226, 3, '2015-07-27 18:28:39', 1),
(66, 3047876798, 3, '2015-07-27 19:35:54', 1),
(67, 3047876798, 3, '2015-07-28 18:17:13', 1),
(68, 3200137226, 3, '2015-08-04 16:03:33', 1),
(69, 3047876798, 3, '2015-08-26 15:27:25', 1),
(70, 3047873136, 3, '2015-09-02 19:51:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bitauth_userdata`
--

CREATE TABLE IF NOT EXISTS `bitauth_userdata` (
  `userdata_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`userdata_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

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
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `group_id` (`group_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21826 ;

--
-- Dumping data for table `bitauth_users`
--

INSERT INTO `bitauth_users` (`user_id`, `username`, `fullname`, `displayname`, `email`, `password`, `password_last_set`, `password_never_expires`, `remember_me`, `activation_code`, `groups_names`, `group_id`, `active`, `forgot_code`, `forgot_generated`, `enabled`, `file_manager_id`, `last_login`, `last_login_ip`, `date_created`) VALUES
(21822, 'bla', 'bla blas', '', 'admin@bla.com', '$2a$08$LfEZbVVeor1fIw79d5GEO.DVNWT6KZUJsYHkDIudtDX0iI0YPs8s2', '2014-08-29 12:34:33', 0, '8812207e38cccfed486024394288d8a22b66a632', '', 'Jugador', 3, 1, '', '0000-00-00 00:00:00', 1, 21, '2014-08-29 12:34:58', 2147483647, '2014-08-20 18:06:35'),
(21823, 'admin3232', '32132132', '', 'j@a.com', '$2a$08$jJelYpqj2/qPWkah4.QFQOWYwNxJrndapu6XrUFkSBYrR9CLDJbk.', '2014-08-20 18:21:46', 0, '', '', 'Jugador', 3, 1, '', '0000-00-00 00:00:00', 1, 22, '0000-00-00 00:00:00', 0, '2014-08-20 18:21:46'),
(3, 'issue', 'Admin tester', '', 'admin@admin.com', '$2a$08$1cpXj47yJmFf2It2gDeuyOYNAeAcHD6OjEjr7ZRTe7pYPc16yaeoG', '2015-07-13 15:05:29', 0, 'f28a1efe139e3492a039390d3586d25d49ed7c55', '', 'Administrador', 1, 1, '', '2015-07-15 15:17:51', 1, 23, '2015-09-02 19:51:24', 2147483647, '2012-09-28 16:27:01'),
(21824, 'bla', 'Blas parera', '', 'bla2@gmail.com', '$2a$08$bDfP.YHM8GiAdb0CsjXwH.Z41rja57p6r/dZyE6mmHT0mwOXXjBse', '2014-08-29 12:40:08', 0, '', '', 'Manager', 2, 1, '', '0000-00-00 00:00:00', 1, 24, '2014-08-29 12:40:28', 2147483647, '2014-08-29 12:40:08'),
(21825, 'bla', 'fdsfd', '', 'bla@bla.com', '$2a$08$MqhbrxvxBsfmga5f//Xt1uZI08GxZ60R4ZrOB/PmR70W0Kum0cKl.', '2014-08-29 13:30:28', 0, '', '', 'Manager', 2, 1, '', '0000-00-00 00:00:00', 1, 25, '0000-00-00 00:00:00', 0, '2014-08-29 13:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(45) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

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
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `file_manager_id` int(10) unsigned DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `description` text,
  `brief` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
  `color_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `tone` varchar(3) NOT NULL,
  `subtone` varchar(3) NOT NULL,
  `category` varchar(45) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `file_manager_id` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=96 ;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`color_id`, `name`, `tone`, `subtone`, `category`, `active`, `file_manager_id`, `date_created`) VALUES
(11, 'Negro', '1', '', 'naturales', 1, 89, '2015-07-23 19:27:03'),
(16, 'Castaño', '4', '', 'naturales', 1, 94, '2015-07-23 20:34:20'),
(17, 'Castaño Claro', '5', '', 'naturales', 1, 95, '2015-07-23 20:35:45'),
(21, 'Rubio Oscuro', '6', '', 'naturales', 1, 99, '2015-07-23 20:43:13'),
(22, 'Rubio', '7', '', 'naturales', 1, 100, '2015-07-23 20:43:25'),
(23, 'Rubio Claro', '8', '', 'naturales', 1, 101, '2015-07-23 20:43:49'),
(24, 'Rubio Claro Claro', '9', '', 'naturales', 1, 102, '2015-07-23 20:44:08'),
(26, 'Castaño Claro Chocolate', '5', '13', 'castaños', 1, 104, '2015-07-23 20:45:22'),
(27, 'Chocolate Dorado', '6', '73', 'castaños', 1, 105, '2015-07-23 20:46:01'),
(28, 'Chocolate Claro Dorado ', '8', '73', 'castaños', 1, 106, '2015-07-23 20:48:51'),
(29, 'Negro Azulado', '1A', '', 'cenizas', 1, 107, '2015-07-23 21:10:24'),
(30, 'Castaño Claro Ceniza', '5', '1', 'cenizas', 1, 108, '2015-07-23 21:12:43'),
(31, 'Rubio Oscuro Ceniza', '6', '1', 'cenizas', 1, 109, '2015-07-23 21:13:14'),
(32, 'Rubio Ceniza ', '7', '1', 'cenizas', 1, 110, '2015-07-23 21:14:10'),
(33, 'Rubio Claro Ceniza', '8', '1', 'cenizas', 1, 111, '2015-07-23 21:17:55'),
(34, 'Rubio Claro Claro Ceniza', '9', '1', 'cenizas', 1, 112, '2015-07-23 21:18:20'),
(35, 'Castaño Claro Dorado ', '5', '3', 'dorados', 1, 113, '2015-07-23 21:32:14'),
(38, 'Rubio Claro Dorado ', '8', '3', 'dorados', 1, 116, '2015-07-23 21:33:39'),
(40, 'Rubio Muy Claro Dorado ', '9', '3', 'dorados', 1, 118, '2015-07-23 21:35:59'),
(44, 'Rubio Ceniza Beige Claro ', '9', '03', 'dorados', 1, 122, '2015-07-23 21:36:36'),
(45, 'Castaño Oscuro', '3', '', 'naturales', 1, 123, '2015-07-23 21:38:32'),
(46, 'Rubio Claro Dorado Profundo ', '8', '33', 'dorados', 1, 124, '2015-07-23 21:39:08'),
(47, 'Rubio Muy Claro Dorado Profundo', '9', '33', 'dorados', 1, 125, '2015-07-23 21:40:10'),
(48, 'Rubio Muy Claro Dorado Cobrizo', '9', '34', 'dorados', 1, 126, '2015-07-23 21:40:43'),
(49, 'Castaño Cobrizo Dorado', '4', '43', 'cobres y caobas', 1, 127, '2015-07-23 21:42:18'),
(50, 'Castaño Claro Caoba Cobrizo', '5', '6', 'cobres y caobas', 1, 128, '2015-07-23 21:42:43'),
(51, 'Rubio Oscuro Cobrizo Dorado', '6', '43', 'cobres y caobas', 1, 129, '2015-07-23 21:43:13'),
(52, 'Rubio Oscuro Cobre Rojizo Brillante', '6', '46', 'cobres y caobas', 1, 130, '2015-07-23 21:43:42'),
(53, 'Rubio Oscuro Glacé', '6', '47', 'cobres y caobas', 1, 131, '2015-07-23 21:44:33'),
(54, 'Rubio Oscuro Caoba Rojizo', '6', '6', 'cobres y caobas', 1, 132, '2015-07-23 21:45:11'),
(55, 'Rubio Cobre Rojizo', '7', '46', 'cobres y caobas', 1, 133, '2015-07-23 21:45:49'),
(57, 'Rubio Dorado', '7', '3', 'dorados', 1, 135, '2015-07-24 13:09:15'),
(58, 'Castaño Rojizo Viola ', '4', '65', 'rojos y violetas', 1, 136, '2015-07-24 20:12:48'),
(59, 'Castaño Claro Rojizo Caoba', '5', '65', 'rojos y violetas', 1, 137, '2015-07-24 20:13:21'),
(60, 'Rojo Intenso Nacarado', '6', '62', 'rojos y violetas', 1, 138, '2015-07-24 20:13:59'),
(61, 'Rojo Claro Perlado', '7', '26', 'rojos y violetas', 1, 139, '2015-07-24 20:14:19'),
(62, 'Rubio Rojizo Cobrizo', '7', '64', 'rojos y violetas', 1, 140, '2015-07-24 20:17:25'),
(63, 'Rubio Ceniza Irisado', '7', '11', 'cenizas irisados', 1, 141, '2015-07-24 20:18:07'),
(64, 'Rubio Claro Ceniza Irisado ', '8', '11', 'cenizas irisados', 1, 142, '2015-07-24 20:18:27'),
(65, 'Rubio Claro Claro Ceniza Irisado ', '9', '11', 'cenizas irisados', 1, 143, '2015-07-24 20:19:10'),
(66, 'Aclarante', '10', '', 'aclarantes', 1, 144, '2015-07-24 20:19:58'),
(67, 'Platino', '10', '1', 'aclarantes', 1, 145, '2015-07-24 20:20:17'),
(69, 'Crazy Pink', '!', '', 'crazy colors', 1, 147, '2015-07-24 20:37:21'),
(70, 'Crazy Red', '!', '', 'crazy colors', 1, 148, '2015-07-24 20:43:22'),
(71, 'Crazy Blue', '!', '', 'crazy colors', 1, 149, '2015-07-24 20:44:10'),
(72, 'Crazy Violet', '!', '', 'crazy colors', 1, 153, '2015-07-24 20:51:25'),
(73, 'Crazy Fucsia', '!', '', 'crazy colors', 1, 156, '2015-07-24 20:54:38'),
(74, 'Negro Gloss', '1', 'G', 'negros', 1, 157, '2015-07-24 21:27:11'),
(76, 'Rojo Ciruela Gloss', '6', '62G', 'rojos', 1, 159, '2015-07-24 21:34:22'),
(77, 'Rojo Intenso Gloss', '7', '64G', 'rojos', 1, 160, '2015-07-24 21:36:16'),
(78, 'Castaño Café Gloss', '3', 'G', 'castaños', 1, 161, '2015-07-24 21:41:06'),
(79, 'Castaño Nogal Gloss', '5', 'G', 'castaños', 1, 162, '2015-07-24 21:42:26'),
(80, 'Castaño Chocolate Gloss', '5', '13G', 'castaños', 1, 163, '2015-07-24 21:44:47'),
(81, 'Chocolate Dorado Gloss', '6', '73G', 'castaños', 1, 164, '2015-07-24 21:59:42'),
(82, 'Caoba Rojizo Gloss', '5', '6G', 'rojos', 1, 165, '2015-07-24 22:14:20'),
(83, 'Castaño Roble Gloss', '4', 'G', 'castaños', 1, 166, '2015-07-27 17:46:19'),
(84, 'Rubio Oscuro Almendra Gloss', '6', 'G', 'rubios', 1, 167, '2015-07-27 17:58:59'),
(85, 'Rubio Oro Gloss', '7', '3G', 'rubios', 1, 168, '2015-07-27 18:01:55'),
(86, 'Rubio Claro Oro Gloss', '8', '3G', 'rubios', 1, 169, '2015-07-27 18:02:22'),
(87, 'Rubio Chocolate Gloss', '7', '73G', 'rubios', 1, 170, '2015-07-27 18:03:14'),
(88, 'Rubio Claro Chocolate Gloss', '8', '73G', 'rubios', 1, 171, '2015-07-27 18:03:42'),
(89, 'Rubio Muy Claro Trigo Gloss', '9', 'G', 'rubios', 1, 172, '2015-07-27 18:04:19'),
(90, 'Rubio Extra Claro Marfil Gloss', '10', 'G', 'rubios', 1, 173, '2015-07-27 18:04:44'),
(91, 'Platino Gloss', '10', '1G', 'rubios', 1, 174, '2015-07-27 18:10:39'),
(92, 'Rubio Gloss', '7', 'G', 'rubios', 1, 175, '2015-07-27 18:10:59'),
(93, 'Rubio Claro Gloss', '8', 'G', 'rubios', 1, 176, '2015-07-27 18:11:38'),
(94, 'Rubio Muy Claro Oro Gloss', '9', '3G', 'rubios', 1, 177, '2015-07-27 18:11:59');

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
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `text_privacy_policy` text NOT NULL,
  PRIMARY KEY (`configuration_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `contact_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `type` enum('image','video','archive') NOT NULL,
  `code` varchar(255) NOT NULL,
  `ext` varchar(10) NOT NULL,
  `group` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=359 ;

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
(357, '357_keratin.jpg', 'keratin', 'image', '', 'jpg', '', '2015-09-02 19:53:52'),
(142, '142_looks-tintes-2014.jpg', 'looks-tintes-2014', 'image', '', 'jpg', '', '2015-07-21 20:46:02'),
(113, '113_Issue_Color_Pack_con_Shock_de_Keratina.png', 'Issue Color Pack con Shock de Keratina', 'image', '', 'png', '', '2015-07-21 13:43:35'),
(57, '57_deco.jpg', 'deco', 'image', '', 'jpg', '', '2015-07-17 19:21:53'),
(83, '83_tradicional.png', 'tradicional', 'image', '', 'png', '', '2015-07-17 21:38:40'),
(123, '123_2.jpg', '2', 'image', '', 'jpg', '', '2015-07-21 13:49:17'),
(117, '117_bg1.jpg', 'bg1', 'image', '', 'jpg', '', '2015-07-21 13:45:18'),
(55, '55_ivana.jpg', 'ivana', 'image', '', 'jpg', '', '2015-07-17 19:13:13'),
(58, '58_colooor.jpg', 'colooor', 'image', '', 'jpg', '', '2015-07-17 19:46:01'),
(152, '152_Activador_20.png', 'Activador 20', 'image', '', 'png', '', '2015-07-21 21:14:41'),
(175, '175_Castaño_Claro_Chocolate_5_13.png', 'Castaño Claro Chocolate 5 13', 'image', '', 'png', '', '2015-07-23 20:45:22'),
(170, '170_Rubio_Oscuro_6.png', 'Rubio Oscuro 6', 'image', '', 'png', '', '2015-07-23 20:43:13'),
(171, '171_Rubio_7.png', 'Rubio 7', 'image', '', 'png', '', '2015-07-23 20:43:25'),
(172, '172_Rubio_Claro_8.png', 'Rubio Claro 8', 'image', '', 'png', '', '2015-07-23 20:43:49'),
(48, '48_ivana.jpg', 'ivana', 'image', '', 'jpg', '', '2015-07-16 14:46:04'),
(126, '126_Super_Color_Pack_Issue_3D_Gloss.png', 'Super Color Pack Issue 3D Gloss', 'image', '', 'png', '', '2015-07-21 13:58:49'),
(179, '179_Negro_Azulado_1A.png', 'Negro Azulado 1A', 'image', '', 'png', '', '2015-07-23 21:10:24'),
(107, '107_extrablond_260.png', 'extrablond 260', 'image', '', 'png', '', '2015-07-20 18:42:55'),
(137, '137_Kit_Crazy_Colors.png', 'Kit Crazy Colors', 'image', '', 'png', '', '2015-07-21 20:36:49'),
(125, '125_Sachet_de_Coloración_Issue_3D_Gloss.png', 'Sachet de Coloración Issue 3D Gloss', 'image', '', 'png', '', '2015-07-21 13:53:52'),
(135, '135_Shock_de_Keratina.png', 'Shock de Keratina', 'image', '', 'png', '', '2015-07-21 14:39:59'),
(78, '78_hydrax.png', 'hydrax', 'image', '', 'png', '', '2015-07-17 21:24:33'),
(134, '134_Shock_de_Brillo.png', 'Shock de Brillo', 'image', '', 'png', '', '2015-07-21 14:38:49'),
(133, '133_Serum_Capilar_Issue_3D_Gloss.png', 'Serum Capilar Issue 3D Gloss', 'image', '', 'png', '', '2015-07-21 14:36:45'),
(155, '155_Línea_Extra_Blond.png', 'Línea Extra Blond', 'image', '', 'png', '', '2015-07-22 15:37:20'),
(127, '127_Shocks_de_Tratamiento_Capilar.png', 'Shocks de Tratamiento Capilar', 'image', '', 'png', '', '2015-07-21 14:18:08'),
(110, '110_Línea_3d.png', 'Línea 3d', 'image', '', 'png', '', '2015-07-21 13:31:04'),
(259, '259_Super_pack_baseline.png', 'Super pack baseline', 'image', '', 'png', '', '2015-07-27 17:31:42'),
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
(258, '258_flowpack_keratin.png', 'flowpack keratin', 'image', '', 'png', '', '2015-07-27 17:30:58'),
(131, '131_Shampoo_y_Acondicionador_Hydrax.png', 'Shampoo y Acondicionador Hydrax', 'image', '', 'png', '', '2015-07-21 14:23:44'),
(132, '132_Reparador_de_Puntas_Instantáneo_con_Keratina.png', 'Reparador de Puntas Instantáneo con Keratina', 'image', '', 'png', '', '2015-07-21 14:33:58'),
(138, '138_Línea_Crazy_Colors.png', 'Línea Crazy Colors', 'image', '', 'png', '', '2015-07-21 20:38:12'),
(140, '140_peinados.jpg', 'peinados', 'image', '', 'jpg', '', '2015-07-21 20:43:08'),
(151, '151_Coloración_en_Sachet_prod.png', 'Coloración en Sachet prod', 'image', '', 'png', '', '2015-07-21 21:01:35'),
(150, '150_Activador_en_Crema.png', 'Activador en Crema', 'image', '', 'png', '', '2015-07-21 20:58:58'),
(154, '154_Línea_Tradicional.png', 'Línea Tradicional', 'image', '', 'png', '', '2015-07-22 15:27:39'),
(197, '197_Rubio_Muy_Claro_Dorado_Profundo_9_33.png', 'Rubio Muy Claro Dorado Profundo 9 33', 'image', '', 'png', '', '2015-07-23 21:40:10'),
(159, '159_Negro_1.png', 'Negro 1', 'image', '', 'png', '', '2015-07-23 19:27:04'),
(176, '176_Chocolate_Dorado_6_73.png', 'Chocolate Dorado 6 73', 'image', '', 'png', '', '2015-07-23 20:46:01'),
(177, '177_Chocolate_Claro_Dorado_8_73.png', 'Chocolate Claro Dorado 8 73', 'image', '', 'png', '', '2015-07-23 20:48:51'),
(166, '166_Castaño_claro_5.png', 'Castaño claro 5', 'image', '', 'png', '', '2015-07-23 20:35:45'),
(165, '165_Castaño_4.png', 'Castaño 4', 'image', '', 'png', '', '2015-07-23 20:34:20'),
(173, '173_Rubio_Claro_Claro_9.png', 'Rubio Claro Claro 9', 'image', '', 'png', '', '2015-07-23 20:44:08'),
(256, '256_Rojo_5_6g_big.png', 'Rojo 5 6g big', 'image', '', 'png', '', '2015-07-24 22:14:20'),
(255, '255_kit_3d_open.png', 'kit 3d open', 'image', '', 'png', '', '2015-07-24 22:04:05'),
(180, '180_Castano_claro_ceniza_5_1.png', 'Castano claro ceniza 5 1', 'image', '', 'png', '', '2015-07-23 21:12:43'),
(181, '181_Rubio_oscuro_ceniza_6_1.png', 'Rubio oscuro ceniza 6 1', 'image', '', 'png', '', '2015-07-23 21:13:14'),
(182, '182_Rubio_Ceniza_7_1.png', 'Rubio Ceniza 7 1', 'image', '', 'png', '', '2015-07-23 21:14:10'),
(183, '183_Rubio_Claro_Ceniza_8_1.png', 'Rubio Claro Ceniza 8 1', 'image', '', 'png', '', '2015-07-23 21:17:55'),
(184, '184_Rubio_Claro_Claro_Ceniza_9_1.png', 'Rubio Claro Claro Ceniza 9 1', 'image', '', 'png', '', '2015-07-23 21:18:20'),
(185, '185_Castaño_Claro_Dorado_5_3.png', 'Castaño Claro Dorado 5 3', 'image', '', 'png', '', '2015-07-23 21:32:14'),
(186, '186_Rubio_Dorado_7.3.png', 'Rubio Dorado 7.3', 'image', '', 'png', '', '2015-07-23 21:32:44'),
(187, '187_Rubio_Dorado_7.3.png', 'Rubio Dorado 7.3', 'image', '', 'png', '', '2015-07-23 21:33:13'),
(188, '188_Rubio_Claro_Dorado_8_3.png', 'Rubio Claro Dorado 8 3', 'image', '', 'png', '', '2015-07-23 21:33:39'),
(190, '190_Rubio_Muy_Claro_Dorado_9_3.png', 'Rubio Muy Claro Dorado 9 3', 'image', '', 'png', '', '2015-07-23 21:35:59'),
(196, '196__Rubio_Claro_Dorado_Profundo_8_33.png', ' Rubio Claro Dorado Profundo 8 33', 'image', '', 'png', '', '2015-07-23 21:39:08'),
(195, '195_Castaño_oscuro_3.png', 'Castaño oscuro 3', 'image', '', 'png', '', '2015-07-23 21:38:32'),
(198, '198_Rubio_Muy_Claro_Dorado_Cobrizo_9_34.png', 'Rubio Muy Claro Dorado Cobrizo 9 34', 'image', '', 'png', '', '2015-07-23 21:40:43'),
(194, '194_Rubio_Ceniza_Beige_Claro_9_03.png', 'Rubio Ceniza Beige Claro 9 03', 'image', '', 'png', '', '2015-07-23 21:36:36'),
(199, '199_Castno_Cobrizo_dorado_4_43.png', 'Castno Cobrizo dorado 4 43', 'image', '', 'png', '', '2015-07-23 21:42:18'),
(200, '200_Castano_Claro_Caoba_Rojizo_5_6.png', 'Castano Claro Caoba Rojizo 5 6', 'image', '', 'png', '', '2015-07-23 21:42:43'),
(201, '201_Rubio_Oscuro_Cobrizo_DOrado_6_43.png', 'Rubio Oscuro Cobrizo DOrado 6 43', 'image', '', 'png', '', '2015-07-23 21:43:13'),
(202, '202_Rubio_Oscuro_Cobre_Rojizo_Brillante_6_46.png', 'Rubio Oscuro Cobre Rojizo Brillante 6 46', 'image', '', 'png', '', '2015-07-23 21:43:42'),
(203, '203_Rubio_Oscuro_Glace_6_47.png', 'Rubio Oscuro Glace 6 47', 'image', '', 'png', '', '2015-07-23 21:44:33'),
(204, '204_Rubio_Oscuro_Caoba_Rojizo_6_6.png', 'Rubio Oscuro Caoba Rojizo 6 6', 'image', '', 'png', '', '2015-07-23 21:45:11'),
(205, '205_Rubio_CObre_Rojizo_7_46.png', 'Rubio CObre Rojizo 7 46', 'image', '', 'png', '', '2015-07-23 21:45:50'),
(206, '206_Rubio_Dorado_7.3.png', 'Rubio Dorado 7.3', 'image', '', 'png', '', '2015-07-23 21:48:26'),
(207, '207_Rubio_Dorado_7.3.png', 'Rubio Dorado 7.3', 'image', '', 'png', '', '2015-07-23 21:49:03'),
(208, '208_Rubio_Dorado_7.3.png', 'Rubio Dorado 7.3', 'image', '', 'png', '', '2015-07-23 21:50:09'),
(209, '209_Rubio_Dorado_7.3.png', 'Rubio Dorado 7.3', 'image', '', 'png', '', '2015-07-23 21:50:59'),
(210, '210_Rubio_Dorado_7_3_ok.png', 'Rubio Dorado 7 3 ok', 'image', '', 'png', '', '2015-07-24 13:09:15'),
(211, '211_Castano_Rojizo_Viola_4_65.png', 'Castano Rojizo Viola 4 65', 'image', '', 'png', '', '2015-07-24 20:12:48'),
(212, '212_Castano_CLaro_Rojizo_5_65.png', 'Castano CLaro Rojizo 5 65', 'image', '', 'png', '', '2015-07-24 20:13:21'),
(213, '213_Rojo_Intenso_Nacarado_6_62.png', 'Rojo Intenso Nacarado 6 62', 'image', '', 'png', '', '2015-07-24 20:13:59'),
(214, '214_Rojo_CLaro_Perlado_7_26.png', 'Rojo CLaro Perlado 7 26', 'image', '', 'png', '', '2015-07-24 20:14:19'),
(215, '215_Rubio_Rojizo_Cobrizo_7_64.png', 'Rubio Rojizo Cobrizo 7 64', 'image', '', 'png', '', '2015-07-24 20:17:25'),
(216, '216_Rubio_Ceniza_Irisado_7_11.png', 'Rubio Ceniza Irisado 7 11', 'image', '', 'png', '', '2015-07-24 20:18:07'),
(217, '217_Rubio_Claro_Ceniza_Irisado_8_11.png', 'Rubio Claro Ceniza Irisado 8 11', 'image', '', 'png', '', '2015-07-24 20:18:27'),
(218, '218_Rubio_Claro_Claro_Ceniza_Irisado_9_11.png', 'Rubio Claro Claro Ceniza Irisado 9 11', 'image', '', 'png', '', '2015-07-24 20:19:11'),
(219, '219_Aclarante_10.png', 'Aclarante 10', 'image', '', 'png', '', '2015-07-24 20:19:58'),
(220, '220_Untitled-1.png', 'Untitled-1', 'image', '', 'png', '', '2015-07-24 20:20:17'),
(317, '317_rubio_claro_claro_9_big.png', 'rubio claro claro 9 big', 'image', '', 'png', '', '2015-07-27 19:33:24'),
(231, '231_Crazy_Blue_extended_2.png', 'Crazy Blue extended 2', 'image', '', 'png', '', '2015-07-24 20:44:10'),
(229, '229_Crazy_Red_extended_2.png', 'Crazy Red extended 2', 'image', '', 'png', '', '2015-07-24 20:43:22'),
(224, '224_Crazy_Pink.png', 'Crazy Pink', 'image', '', 'png', '', '2015-07-24 20:37:21'),
(230, '230_Crazy_Red.png', 'Crazy Red', 'image', '', 'png', '', '2015-07-24 20:43:22'),
(228, '228_Crazy_Pink_extended_2.png', 'Crazy Pink extended 2', 'image', '', 'png', '', '2015-07-24 20:41:16'),
(232, '232_Crazy_Blue.png', 'Crazy Blue', 'image', '', 'png', '', '2015-07-24 20:44:10'),
(233, '233_Crazy_Violet_extended_2.png', 'Crazy Violet extended 2', 'image', '', 'png', '', '2015-07-24 20:51:25'),
(234, '234_Crazy_Violet.png', 'Crazy Violet', 'image', '', 'png', '', '2015-07-24 20:51:25'),
(235, '235_Crazy_Fucsia_extended_2.png', 'Crazy Fucsia extended 2', 'image', '', 'png', '', '2015-07-24 20:54:38'),
(236, '236_Crazy_Fucsia.png', 'Crazy Fucsia', 'image', '', 'png', '', '2015-07-24 20:54:38'),
(237, '237_126_Super_Color_Pack_Issue_3D_Gloss.png', '126_Super_Color_Pack_Issue_3D_Gloss', 'image', '', 'png', '', '2015-07-24 21:00:00'),
(342, '342_5_6_g.png', '5 6 g', 'image', '', 'png', '', '2015-07-27 20:09:59'),
(239, '239_Negro_g1.png', 'Negro g1', 'image', '', 'png', '', '2015-07-24 21:27:12'),
(343, '343_6_62_g.png', '6 62 g', 'image', '', 'png', '', '2015-07-27 20:10:49'),
(344, '344_7_64_g.png', '7 64 g', 'image', '', 'png', '', '2015-07-27 20:11:03'),
(243, '243_Rojo_6_62g.png', 'Rojo 6 62g', 'image', '', 'png', '', '2015-07-24 21:34:22'),
(345, '345_10_g.png', '10 g', 'image', '', 'png', '', '2015-07-27 20:11:23'),
(245, '245_Rojo_7_64g.png', 'Rojo 7 64g', 'image', '', 'png', '', '2015-07-24 21:36:16'),
(337, '337_5g.png', '5g', 'image', '', 'png', '', '2015-07-27 20:07:59'),
(247, '247_Castano_3g.png', 'Castano 3g', 'image', '', 'png', '', '2015-07-24 21:41:06'),
(338, '338_5_13_g.png', '5 13 g', 'image', '', 'png', '', '2015-07-27 20:08:58'),
(249, '249_Castano_5g.png', 'Castano 5g', 'image', '', 'png', '', '2015-07-24 21:42:26'),
(339, '339_6_73_g.png', '6 73 g', 'image', '', 'png', '', '2015-07-27 20:09:08'),
(251, '251_Castano_5_13g.png', 'Castano 5 13g', 'image', '', 'png', '', '2015-07-24 21:44:47'),
(340, '340_4g.png', '4g', 'image', '', 'png', '', '2015-07-27 20:09:21'),
(253, '253_Castano_6_73g.png', 'Castano 6 73g', 'image', '', 'png', '', '2015-07-24 21:59:42'),
(263, '263_Kit_crazy_abierto.png', 'Kit crazy abierto', 'image', '', 'png', '', '2015-07-27 17:37:35'),
(261, '261_Kit_keratin.png', 'Kit keratin', 'image', '', 'png', '', '2015-07-27 17:32:56'),
(260, '260_Issue_Súper_Color_Pack_con_Keratina.png', 'Issue Súper Color Pack con Keratina', 'image', '', 'png', '', '2015-07-27 17:32:30'),
(262, '262_Issue_3D_Gloss_Kit_varios.png', 'Issue 3D Gloss Kit varios', 'image', '', 'png', '', '2015-07-27 17:34:48'),
(341, '341_1g.png', '1g', 'image', '', 'png', '', '2015-07-27 20:09:46'),
(265, '265_Castano_Roble_Gloss_4G.png', 'Castano Roble Gloss 4G', 'image', '', 'png', '', '2015-07-27 17:46:19'),
(355, '355_9_3_g.png', '9 3 g', 'image', '', 'png', '', '2015-07-27 20:13:55'),
(267, '267_Rubio_Oscuro_Almendra_Gloss_6g_big.png', 'Rubio Oscuro Almendra Gloss 6g big', 'image', '', 'png', '', '2015-07-27 17:59:00'),
(269, '269_Rojo_5_6g.png', 'Rojo 5 6g', 'image', '', 'png', '', '2015-07-27 18:00:02'),
(354, '354_6g.png', '6g', 'image', '', 'png', '', '2015-07-27 20:13:39'),
(271, '271_Rubio_Oro_Gloss_7_3g.png', 'Rubio Oro Gloss 7 3g', 'image', '', 'png', '', '2015-07-27 18:01:55'),
(353, '353_7_3_g.png', '7 3 g', 'image', '', 'png', '', '2015-07-27 20:13:21'),
(273, '273_Rubio_Claro_Oro_Gloss_8_3g.png', 'Rubio Claro Oro Gloss 8 3g', 'image', '', 'png', '', '2015-07-27 18:02:22'),
(352, '352_8_3_g.png', '8 3 g', 'image', '', 'png', '', '2015-07-27 20:13:08'),
(275, '275_Rubio_Chocolate_Gloss_7_73g.png', 'Rubio Chocolate Gloss 7 73g', 'image', '', 'png', '', '2015-07-27 18:03:16'),
(351, '351_7_73_g.png', '7 73 g', 'image', '', 'png', '', '2015-07-27 20:12:51'),
(277, '277_Rubio_Claro_Chocolate_Gloss_8_73g.png', 'Rubio Claro Chocolate Gloss 8 73g', 'image', '', 'png', '', '2015-07-27 18:03:42'),
(350, '350_8_73g.png', '8 73g', 'image', '', 'png', '', '2015-07-27 20:12:37'),
(279, '279_Rubio_Muy_Claro_Trigo_Gloss_9g.png', 'Rubio Muy Claro Trigo Gloss 9g', 'image', '', 'png', '', '2015-07-27 18:04:19'),
(346, '346_10_1g.png', '10 1g', 'image', '', 'png', '', '2015-07-27 20:11:39'),
(281, '281_Rubio_Extra_Cloro_Marfil_Gloss_10g.png', 'Rubio Extra Cloro Marfil Gloss 10g', 'image', '', 'png', '', '2015-07-27 18:04:44'),
(347, '347_7g.png', '7g', 'image', '', 'png', '', '2015-07-27 20:11:53'),
(283, '283_Platino_Gloss_10_1g.png', 'Platino Gloss 10 1g', 'image', '', 'png', '', '2015-07-27 18:10:39'),
(348, '348_8g.png', '8g', 'image', '', 'png', '', '2015-07-27 20:12:10'),
(285, '285_Rubio_Gloss_7g.png', 'Rubio Gloss 7g', 'image', '', 'png', '', '2015-07-27 18:10:59'),
(349, '349_9_g.png', '9 g', 'image', '', 'png', '', '2015-07-27 20:12:23'),
(287, '287_Rubio_Claro_Gloss_8g.png', 'Rubio Claro Gloss 8g', 'image', '', 'png', '', '2015-07-27 18:11:38'),
(358, '358_crazy.jpg', 'crazy', 'image', '', 'jpg', '', '2015-09-02 19:55:33'),
(289, '289_Rubio_Muy_Claro_Oro_Gloss.png', 'Rubio Muy Claro Oro Gloss', 'image', '', 'png', '', '2015-07-27 18:11:59'),
(294, '294_Rubio_Rojizo_Cobrizo_7_64_big.png', 'Rubio Rojizo Cobrizo 7 64 big', 'image', '', 'png', '', '2015-07-27 18:36:15'),
(293, '293_blog_post3.jpg', 'blog_post3', 'image', '', 'jpg', '', '2015-07-27 18:32:28'),
(292, '292_blog_post1.jpg', 'blog_post1', 'image', '', 'jpg', '', '2015-07-27 18:29:14'),
(295, '295_Aclarante_10_big.png', 'Aclarante 10 big', 'image', '', 'png', '', '2015-07-27 19:20:41'),
(296, '296_Platino_10_1_big.png', 'Platino 10 1 big', 'image', '', 'png', '', '2015-07-27 19:20:55'),
(297, '297_chocolate_claro_dorado_8_73_big.png', 'chocolate claro dorado 8 73 big', 'image', '', 'png', '', '2015-07-27 19:21:20'),
(298, '298_castaño_claro_chocolate_5_13_big.png', 'castaño claro chocolate 5 13 big', 'image', '', 'png', '', '2015-07-27 19:21:50'),
(299, '299_chocolate_dorado_6_73_big.png', 'chocolate dorado 6 73 big', 'image', '', 'png', '', '2015-07-27 19:22:02'),
(300, '300_rubio_claro_claro_ceniza_9_1_big.png', 'rubio claro claro ceniza 9 1 big', 'image', '', 'png', '', '2015-07-27 19:22:26'),
(301, '301_rubio_claro_ceniza_8_1_big.png', 'rubio claro ceniza 8 1 big', 'image', '', 'png', '', '2015-07-27 19:22:43'),
(302, '302_rubio_ceniza_7_1_big.png', 'rubio ceniza 7 1 big', 'image', '', 'png', '', '2015-07-27 19:22:57'),
(303, '303_rubio_oscuro_ceniza_6_1_big.png', 'rubio oscuro ceniza 6 1 big', 'image', '', 'png', '', '2015-07-27 19:23:12'),
(304, '304_castaño_claro_ceniza_5_1_big.png', 'castaño claro ceniza 5 1 big', 'image', '', 'png', '', '2015-07-27 19:23:43'),
(305, '305_negro_azulado_1a_big.png', 'negro azulado 1a big', 'image', '', 'png', '', '2015-07-27 19:23:57'),
(306, '306_rubio_ceniza_irisado_7_11_big.png', 'rubio ceniza irisado 7 11 big', 'image', '', 'png', '', '2015-07-27 19:24:51'),
(307, '307_rubio_claro_ceniza_irisado_8_11_big.png', 'rubio claro ceniza irisado 8 11 big', 'image', '', 'png', '', '2015-07-27 19:25:08'),
(308, '308_Rubio_claro_claro_ceniza_irisado_9_11_big.png', 'Rubio claro claro ceniza irisado 9 11 big', 'image', '', 'png', '', '2015-07-27 19:25:18'),
(309, '309_castaño_cobrizo_dorado_4_43_big.png', 'castaño cobrizo dorado 4 43 big', 'image', '', 'png', '', '2015-07-27 19:25:55'),
(310, '310_Rubio_cobre_rojizo_7_64.png', 'Rubio cobre rojizo 7 64', 'image', '', 'png', '', '2015-07-27 19:26:25'),
(311, '311_Rubio_oscuro_caoba_rojizo_6_6_big.png', 'Rubio oscuro caoba rojizo 6 6 big', 'image', '', 'png', '', '2015-07-27 19:26:39'),
(312, '312_Rubio_oscuro_cobrizo_dorado_6_43_big.png', 'Rubio oscuro cobrizo dorado 6 43 big', 'image', '', 'png', '', '2015-07-27 19:27:00'),
(313, '313_Ruibio_oscuro_cobre_rojizo_brillante_6_46_big.png', 'Ruibio oscuro cobre rojizo brillante 6 46 big', 'image', '', 'png', '', '2015-07-27 19:27:17'),
(314, '314_Rubio_oscuro_glace_6_47_big.png', 'Rubio oscuro glace 6 47 big', 'image', '', 'png', '', '2015-07-27 19:27:32'),
(315, '315_Castaño_claro_rojizo_caoba_5_65_big.png', 'Castaño claro rojizo caoba 5 65 big', 'image', '', 'png', '', '2015-07-27 19:32:45'),
(316, '316_Negro_1_big.png', 'Negro 1 big', 'image', '', 'png', '', '2015-07-27 19:33:07'),
(318, '318_rubio_7_big.png', 'rubio 7 big', 'image', '', 'png', '', '2015-07-27 19:33:34'),
(319, '319_rubio_claro_8_big.png', 'rubio claro 8 big', 'image', '', 'png', '', '2015-07-27 19:33:46'),
(320, '320_rubio_oscuro_6_big.png', 'rubio oscuro 6 big', 'image', '', 'png', '', '2015-07-27 19:34:01'),
(321, '321_castaño_oscuro_3_big.png', 'castaño oscuro 3 big', 'image', '', 'png', '', '2015-07-27 19:34:14'),
(322, '322_castaño_claro_5_big.png', 'castaño claro 5 big', 'image', '', 'png', '', '2015-07-27 19:34:26'),
(323, '323_castaño_4_big.png', 'castaño 4 big', 'image', '', 'png', '', '2015-07-27 19:34:38'),
(324, '324_Castaño_rojizo_viola_4_64.png', 'Castaño rojizo viola 4 64', 'image', '', 'png', '', '2015-07-27 19:35:17'),
(325, '325_Rojo_intenso_nacarado_6_62_big.png', 'Rojo intenso nacarado 6 62 big', 'image', '', 'png', '', '2015-07-27 19:35:35'),
(326, '326_Rojo_claro_perlado_7_26_big.png', 'Rojo claro perlado 7 26 big', 'image', '', 'png', '', '2015-07-27 19:36:05'),
(327, '327_Castaño_claro_rojizo_caoba_5_65.png', 'Castaño claro rojizo caoba 5 65', 'image', '', 'png', '', '2015-07-27 19:36:19'),
(328, '328_Castaño_claro_dorado_5_3_big.png', 'Castaño claro dorado 5 3 big', 'image', '', 'png', '', '2015-07-27 19:38:29'),
(329, '329_Rubio_muy_claro_dorado_9_3_big.png', 'Rubio muy claro dorado 9 3 big', 'image', '', 'png', '', '2015-07-27 19:38:52'),
(330, '330_Rubio_ceniza_beige_claro_9_03_big.png', 'Rubio ceniza beige claro 9 03 big', 'image', '', 'png', '', '2015-07-27 19:39:06'),
(331, '331_Rubio_claro_dorado_8_3_big.png', 'Rubio claro dorado 8 3 big', 'image', '', 'png', '', '2015-07-27 19:39:25'),
(332, '332_Rubio_claro_dorado_profundo_8_33_big.png', 'Rubio claro dorado profundo 8 33 big', 'image', '', 'png', '', '2015-07-27 19:39:48'),
(333, '333_Rubio_muy_claro_dorado_profundo_9_33_big.png', 'Rubio muy claro dorado profundo 9 33 big', 'image', '', 'png', '', '2015-07-27 19:40:04'),
(334, '334_Rubio_muy_claro_dorado_cobrizo_9_34_big.png', 'Rubio muy claro dorado cobrizo 9 34 big', 'image', '', 'png', '', '2015-07-27 19:40:49'),
(335, '335_Rubio_dorado_7_3_big.png', 'Rubio dorado 7 3 big', 'image', '', 'png', '', '2015-07-27 19:41:10'),
(336, '336_3g.png', '3g', 'image', '', 'png', '', '2015-07-27 20:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `file_managers`
--

CREATE TABLE IF NOT EXISTS `file_managers` (
  `file_manager_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_manager` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`file_manager_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=179 ;

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
(105, '', '2015-07-23 20:46:01'),
(104, '', '2015-07-23 20:45:22'),
(99, '', '2015-07-23 20:43:13'),
(100, '', '2015-07-23 20:43:25'),
(101, '', '2015-07-23 20:43:49'),
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
(124, '', '2015-07-23 21:39:08'),
(102, '', '2015-07-23 20:44:08'),
(95, '', '2015-07-23 20:35:45'),
(94, '', '2015-07-23 20:34:20'),
(106, '', '2015-07-23 20:48:51'),
(107, '', '2015-07-23 21:10:24'),
(108, '', '2015-07-23 21:12:43'),
(109, '', '2015-07-23 21:13:14'),
(110, '', '2015-07-23 21:14:10'),
(111, '', '2015-07-23 21:17:55'),
(112, '', '2015-07-23 21:18:20'),
(113, '', '2015-07-23 21:32:14'),
(118, '', '2015-07-23 21:35:59'),
(135, '', '2015-07-24 13:09:15'),
(116, '', '2015-07-23 21:33:39'),
(123, '', '2015-07-23 21:38:32'),
(122, '', '2015-07-23 21:36:36'),
(125, '', '2015-07-23 21:40:10'),
(126, '', '2015-07-23 21:40:43'),
(127, '', '2015-07-23 21:42:18'),
(128, '', '2015-07-23 21:42:43'),
(129, '', '2015-07-23 21:43:13'),
(130, '', '2015-07-23 21:43:42'),
(131, '', '2015-07-23 21:44:33'),
(132, '', '2015-07-23 21:45:11'),
(133, '', '2015-07-23 21:45:49'),
(136, '', '2015-07-24 20:12:48'),
(137, '', '2015-07-24 20:13:21'),
(138, '', '2015-07-24 20:13:59'),
(139, '', '2015-07-24 20:14:19'),
(140, '', '2015-07-24 20:17:25'),
(141, '', '2015-07-24 20:18:07'),
(142, '', '2015-07-24 20:18:27'),
(143, '', '2015-07-24 20:19:11'),
(144, '', '2015-07-24 20:19:58'),
(145, '', '2015-07-24 20:20:17'),
(148, '', '2015-07-24 20:43:22'),
(147, '', '2015-07-24 20:37:21'),
(149, '', '2015-07-24 20:44:10'),
(150, '', '2015-07-24 20:46:42'),
(151, '', '2015-07-24 20:49:05'),
(152, '', '2015-07-24 20:50:41'),
(153, '', '2015-07-24 20:51:25'),
(154, '', '2015-07-24 20:53:01'),
(155, '', '2015-07-24 20:53:48'),
(156, '', '2015-07-24 20:54:38'),
(157, '', '2015-07-24 21:27:11'),
(159, '', '2015-07-24 21:34:22'),
(160, '', '2015-07-24 21:36:16'),
(161, '', '2015-07-24 21:41:06'),
(162, '', '2015-07-24 21:42:26'),
(163, '', '2015-07-24 21:44:47'),
(164, '', '2015-07-24 21:59:42'),
(165, '', '2015-07-24 22:14:20'),
(166, '', '2015-07-27 17:46:19'),
(167, '', '2015-07-27 17:59:00'),
(168, '', '2015-07-27 18:01:55'),
(169, '', '2015-07-27 18:02:22'),
(170, '', '2015-07-27 18:03:15'),
(171, '', '2015-07-27 18:03:42'),
(172, '', '2015-07-27 18:04:19'),
(173, '', '2015-07-27 18:04:44'),
(174, '', '2015-07-27 18:10:39'),
(175, '', '2015-07-27 18:10:59'),
(176, '', '2015-07-27 18:11:38'),
(177, '', '2015-07-27 18:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `file_managers_files`
--

CREATE TABLE IF NOT EXISTS `file_managers_files` (
  `file_manager_id` int(11) unsigned NOT NULL,
  `file_id` int(11) unsigned NOT NULL,
  `tag` varchar(255) NOT NULL,
  `order` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`file_manager_id`,`file_id`)
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
(15, 358, 'desktop_image', 0),
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
(30, 357, 'desktop_image', 0),
(31, 125, 'main_image', 0),
(30, 57, 'mobile_image', 0),
(44, 260, 'main_image', 0),
(46, 118, 'main_image', 0),
(45, 113, 'main_image', 0),
(55, 155, 'main_image', 0),
(57, 135, 'main_image', 0),
(56, 134, 'main_image', 0),
(33, 262, 'main_image', 0),
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
(89, 316, 'main_image', 0),
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
(99, 170, 'color_icon', 0),
(100, 171, 'color_icon', 0),
(101, 172, 'color_icon', 0),
(102, 173, 'color_icon', 0),
(103, 174, 'color_icon', 0),
(104, 175, 'color_icon', 0),
(105, 176, 'color_icon', 0),
(106, 177, 'color_icon', 0),
(107, 179, 'color_icon', 0),
(108, 180, 'color_icon', 0),
(109, 181, 'color_icon', 0),
(110, 182, 'color_icon', 0),
(111, 183, 'color_icon', 0),
(112, 184, 'color_icon', 0),
(113, 185, 'color_icon', 0),
(114, 186, 'color_icon', 0),
(115, 208, 'color_icon', 0),
(116, 188, 'color_icon', 0),
(117, 189, 'color_icon', 0),
(118, 190, 'color_icon', 0),
(119, 191, 'color_icon', 0),
(120, 192, 'color_icon', 0),
(121, 193, 'color_icon', 0),
(122, 194, 'color_icon', 0),
(123, 195, 'color_icon', 0),
(124, 196, 'color_icon', 0),
(125, 197, 'color_icon', 0),
(126, 198, 'color_icon', 0),
(127, 199, 'color_icon', 0),
(128, 200, 'color_icon', 0),
(129, 201, 'color_icon', 0),
(130, 202, 'color_icon', 0),
(131, 203, 'color_icon', 0),
(132, 204, 'color_icon', 0),
(133, 205, 'color_icon', 0),
(134, 209, 'color_icon', 0),
(135, 210, 'color_icon', 0),
(136, 211, 'color_icon', 0),
(137, 212, 'color_icon', 0),
(138, 213, 'color_icon', 0),
(139, 214, 'color_icon', 0),
(140, 215, 'color_icon', 0),
(141, 216, 'color_icon', 0),
(142, 217, 'color_icon', 0),
(143, 218, 'color_icon', 0),
(144, 219, 'color_icon', 0),
(145, 220, 'color_icon', 0),
(146, 222, 'main_image', 0),
(147, 228, 'main_image', 0),
(147, 224, 'color_icon', 0),
(146, 225, 'color_icon', 0),
(148, 229, 'main_image', 0),
(148, 230, 'color_icon', 0),
(149, 231, 'main_image', 0),
(149, 232, 'color_icon', 0),
(153, 233, 'main_image', 0),
(153, 234, 'color_icon', 0),
(156, 235, 'main_image', 0),
(156, 236, 'color_icon', 0),
(32, 237, 'detail_image', 0),
(157, 341, 'main_image', 0),
(157, 239, 'color_icon', 0),
(158, 240, 'main_image', 0),
(158, 241, 'color_icon', 0),
(159, 343, 'main_image', 0),
(159, 243, 'color_icon', 0),
(160, 344, 'main_image', 0),
(160, 245, 'color_icon', 0),
(161, 336, 'main_image', 0),
(161, 247, 'color_icon', 0),
(162, 337, 'main_image', 0),
(162, 249, 'color_icon', 0),
(163, 338, 'main_image', 0),
(163, 251, 'color_icon', 0),
(164, 339, 'main_image', 0),
(164, 253, 'color_icon', 0),
(33, 255, 'detail_image', 0),
(165, 342, 'main_image', 0),
(44, 258, 'detail_image', 0),
(45, 259, 'detail_image', 0),
(46, 261, 'detail_image', 0),
(79, 263, 'detail_image', 0),
(166, 340, 'main_image', 0),
(166, 265, 'color_icon', 0),
(167, 354, 'main_image', 0),
(167, 267, 'color_icon', 0),
(165, 269, 'color_icon', 0),
(168, 353, 'main_image', 0),
(168, 271, 'color_icon', 0),
(169, 352, 'main_image', 0),
(169, 273, 'color_icon', 0),
(170, 351, 'main_image', 0),
(170, 275, 'color_icon', 0),
(171, 350, 'main_image', 0),
(171, 277, 'color_icon', 0),
(172, 349, 'main_image', 0),
(172, 279, 'color_icon', 0),
(173, 345, 'main_image', 0),
(173, 281, 'color_icon', 0),
(174, 346, 'main_image', 0),
(174, 283, 'color_icon', 0),
(175, 347, 'main_image', 0),
(175, 285, 'color_icon', 0),
(176, 348, 'main_image', 0),
(176, 287, 'color_icon', 0),
(177, 355, 'main_image', 0),
(177, 289, 'color_icon', 0),
(178, 290, 'main_image', 0),
(178, 291, 'color_icon', 0),
(155, 292, 'image_list', 0),
(155, 293, 'image_details', 0),
(140, 294, 'main_image', 0),
(144, 295, 'main_image', 0),
(145, 296, 'main_image', 0),
(106, 297, 'main_image', 0),
(104, 298, 'main_image', 0),
(105, 299, 'main_image', 0),
(112, 300, 'main_image', 0),
(111, 301, 'main_image', 0),
(110, 302, 'main_image', 0),
(109, 303, 'main_image', 0),
(108, 304, 'main_image', 0),
(107, 305, 'main_image', 0),
(141, 306, 'main_image', 0),
(142, 307, 'main_image', 0),
(143, 308, 'main_image', 0),
(127, 309, 'main_image', 0),
(133, 310, 'main_image', 0),
(132, 311, 'main_image', 0),
(129, 312, 'main_image', 0),
(130, 313, 'main_image', 0),
(131, 314, 'main_image', 0),
(128, 315, 'main_image', 0),
(102, 317, 'main_image', 0),
(100, 318, 'main_image', 0),
(101, 319, 'main_image', 0),
(99, 320, 'main_image', 0),
(123, 321, 'main_image', 0),
(95, 322, 'main_image', 0),
(94, 323, 'main_image', 0),
(136, 324, 'main_image', 0),
(138, 325, 'main_image', 0),
(139, 326, 'main_image', 0),
(137, 327, 'main_image', 0),
(113, 328, 'main_image', 0),
(118, 329, 'main_image', 0),
(122, 330, 'main_image', 0),
(116, 331, 'main_image', 0),
(124, 332, 'main_image', 0),
(125, 333, 'main_image', 0),
(126, 334, 'main_image', 0),
(135, 335, 'main_image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `file_manager_id` int(11) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `subcategory_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category` (`subcategory`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `brief`, `description`, `subcategory`, `file_manager_id`, `active`, `date_created`, `subcategory_id`) VALUES
(23, 'Serum Capilar Issue 3D Gloss', '¡Brillá como nunca antes!', 'El Serum Capilar Issue 3D Gloss brinda brillo instantáneo y sedosidad al cabello maltratado y rebelde. Gracias a su nueva fórmula, forma un film protector sobre la fibra capilar, lo que evita la pérdida de la humedad natural del cabello, otorgando brillo y suavidad durante más tiempo.<br>', ' Reparador de Puntas y Serum Capilar', 58, 1, '2015-07-17 19:55:22', 8),
(26, 'Kit Crazy Colors', 'Dale creatividad a tu color y marcá tendencia. En sólo minutos, un look distinto para vos.', 'La coloración Issue CRAZY COLORS es una coloración semipermanente que viene en 5 colores puros y vibrantes: Crazy Red, Crazy Fucsia, Crazy Violet, Crazy Pink y Crazy Blue. Ahora con Issue Crazy Colors podés obtener los tonos fantasía que siempre quisiste y crear tu propio estilo.&nbsp;<div><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Dale creatividad a tu color y marcá tendencia. En sólo minutos, un look distinto para vos</span>.&nbsp;<div>El kit de Issue Crazy Colors, contiene todos los elementos necesarios, para que logres un color vibrante y divertido. Usá el polvo decolorante y el activador Issue para decolorar bien tu cabello, luego usa la coloración Crazy Colors y ¡listo! Tu cabello lucirá el color más atrevido&nbsp; y pleno.</div></div>', 'Línea Crazy Colors', 79, 1, '2015-07-21 20:36:49', 3),
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
  `color_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_colors`
--

INSERT INTO `products_colors` (`product_id`, `color_id`) VALUES
(3, 74),
(3, 75),
(3, 76),
(3, 77),
(3, 78),
(3, 79),
(3, 80),
(3, 81),
(3, 82),
(3, 84),
(3, 85),
(3, 86),
(3, 87),
(3, 88),
(3, 89),
(3, 90),
(3, 91),
(3, 92),
(3, 93),
(3, 94),
(4, 74),
(4, 75),
(4, 76),
(4, 77),
(4, 78),
(4, 79),
(4, 80),
(4, 81),
(4, 82),
(4, 84),
(4, 85),
(4, 86),
(4, 87),
(4, 88),
(4, 89),
(4, 90),
(4, 91),
(4, 92),
(4, 93),
(4, 94),
(5, 74),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(5, 89),
(5, 90),
(5, 91),
(5, 92),
(5, 93),
(5, 94),
(16, 11),
(16, 16),
(16, 17),
(16, 21),
(16, 22),
(16, 23),
(16, 24),
(16, 26),
(16, 27),
(16, 28),
(16, 29),
(16, 30),
(16, 31),
(16, 32),
(16, 33),
(16, 34),
(16, 35),
(16, 38),
(16, 40),
(16, 44),
(16, 45),
(16, 46),
(16, 47),
(16, 48),
(16, 49),
(16, 50),
(16, 51),
(16, 52),
(16, 53),
(16, 54),
(16, 55),
(16, 57),
(16, 58),
(16, 59),
(16, 60),
(16, 61),
(16, 62),
(16, 66),
(16, 67),
(17, 11),
(17, 16),
(17, 17),
(17, 21),
(17, 22),
(17, 23),
(17, 24),
(17, 26),
(17, 27),
(17, 28),
(17, 29),
(17, 30),
(17, 31),
(17, 32),
(17, 33),
(17, 34),
(17, 35),
(17, 38),
(17, 40),
(17, 44),
(17, 45),
(17, 46),
(17, 47),
(17, 48),
(17, 49),
(17, 50),
(17, 51),
(17, 52),
(17, 53),
(17, 54),
(17, 55),
(17, 57),
(17, 58),
(17, 59),
(17, 60),
(17, 61),
(17, 62),
(17, 66),
(17, 67),
(18, 11),
(18, 16),
(18, 17),
(18, 21),
(18, 22),
(18, 23),
(18, 24),
(18, 26),
(18, 29),
(18, 30),
(18, 31),
(18, 32),
(18, 33),
(18, 34),
(18, 35),
(18, 38),
(18, 45),
(18, 57),
(18, 59),
(18, 60),
(18, 62),
(18, 63),
(18, 64),
(18, 65),
(18, 67),
(26, 69),
(26, 70),
(26, 71),
(26, 72),
(26, 73),
(27, 69),
(27, 70),
(27, 71),
(27, 72),
(27, 73),
(28, 11),
(28, 16),
(28, 17),
(28, 21),
(28, 22),
(28, 23),
(28, 24),
(28, 26),
(28, 27),
(28, 28),
(28, 29),
(28, 30),
(28, 31),
(28, 32),
(28, 33),
(28, 34),
(28, 35),
(28, 38),
(28, 40),
(28, 44),
(28, 45),
(28, 46),
(28, 47),
(28, 48),
(28, 49),
(28, 50),
(28, 51),
(28, 52),
(28, 53),
(28, 54),
(28, 55),
(28, 57),
(28, 58),
(28, 59),
(28, 60),
(28, 61),
(28, 62),
(28, 63),
(28, 64),
(28, 65),
(28, 66),
(28, 67);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE IF NOT EXISTS `provinces` (
  `province_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `province_order` tinyint(2) NOT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

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
  `subcategory_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `brief` varchar(245) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `file_manager_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`subcategory_id`),
  KEY `index1` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
