-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.91-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema webintellego
--

CREATE DATABASE IF NOT EXISTS webintellego;
USE webintellego;

--
-- Definition of table `assistancerecord`
--

DROP TABLE IF EXISTS `assistancerecord`;
CREATE TABLE `assistancerecord` (
  `iattendeeid` int(11) NOT NULL,
  `ieventid` int(11) NOT NULL,
  PRIMARY KEY  (`iattendeeid`,`ieventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistancerecord`
--

/*!40000 ALTER TABLE `assistancerecord` DISABLE KEYS */;
INSERT INTO `assistancerecord` (`iattendeeid`,`ieventid`) VALUES 
 (1,1),
 (2,1),
 (3,1);
/*!40000 ALTER TABLE `assistancerecord` ENABLE KEYS */;


--
-- Definition of table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
CREATE TABLE `attendees` (
  `iattendeeid` int(11) NOT NULL,
  `sfullname` varchar(500) NOT NULL,
  `sfulladdress` varchar(500) NOT NULL,
  `stelephones` varchar(500) NOT NULL,
  `semail` varchar(500) NOT NULL,
  `binvoiceneeded` int(1) NOT NULL,
  `srfc` varchar(500) NOT NULL,
  `scompanyname` varchar(500) NOT NULL,
  `scompanyfulladdress` varchar(500) NOT NULL,
  `scompanytelephones` varchar(500) NOT NULL,
  `sjobtitle` varchar(500) NOT NULL,
  PRIMARY KEY  (`iattendeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendees`
--

/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` (`iattendeeid`,`sfullname`,`sfulladdress`,`stelephones`,`semail`,`binvoiceneeded`,`srfc`,`scompanyname`,`scompanyfulladdress`,`scompanytelephones`,`sjobtitle`) VALUES 
 (1,'Omar Ramos','Queretaro, Qro','5551234567','<a href=mailto:dummy@email.com>dummy@email.com</a>',1,'DUMMY TAX ID','Dummy Inc','Queretaro, Qro','5551234567','Manager'),
 (2,'Maria Teresa Garza','Queretaro, Qro','5557654321','<a href=mailto:dummy2@email.com>dummy2@email.com</a>',0,'','','','',''),
 (3,'Alaide Baptista García','Boston, MA','555555555','<a href=mailto:dummy3@email.com>dummy3@email.com</a>',0,'','','','','');
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;


--
-- Definition of table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `inewsid` int(11) NOT NULL,
  `snewstitle` varchar(500) NOT NULL,
  `snewscontent` varchar(3000) NOT NULL,
  `idate` int(11) NOT NULL,
  `stime` varchar(11) NOT NULL,
  PRIMARY KEY  (`inewsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`inewsid`,`snewstitle`,`snewscontent`,`idate`,`stime`) VALUES 
 (1,'DB Restore','The database has been restored succesfully, Welcome!',20110708,'12:00:00'),
 (2,'Bienvenidos al sitio de la sociedad estudiantil Intellego','<br />Somos estudiantes de la Ingeniería en Industrias Alimentarias y estamos entusiasmados de llevar a ustedes las conferencias de Emulsiones.<br /><br />Si desean el material audiovisual que se mostr&oacute; en las conferencias, pueden descargarlo entrando con el siguiente usuario y contrase&ntilde;a:<br /><br />Usuario:invitado<br />Contrase&ntilde;a:invitado<br /><br />',20110708,'12:00:52');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
