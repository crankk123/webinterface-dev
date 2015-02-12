/*
Navicat MySQL Data Transfer

Source Server         : Root(Clan)
Source Server Version : 50541
Source Host           : 127.0.0.1:3306
Source Database       : webinterface

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-02-12 20:02:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Autologin` varchar(32) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `SessionID` varchar(32) DEFAULT NULL,
  `Nickname` varchar(30) NOT NULL,
  `Passwort` varchar(32) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Show_Email` tinyint(1) DEFAULT NULL,
  `Homepage` varchar(70) NOT NULL,
  `Registrierungsdatum` date DEFAULT NULL,
  `Wohnort` varchar(70) NOT NULL,
  `ICQ` varchar(20) NOT NULL,
  `AIM` varchar(70) NOT NULL,
  `YIM` varchar(70) NOT NULL,
  `MSN` varchar(70) NOT NULL,
  `Avatar` varchar(100) NOT NULL,
  `Letzter_Login` int(11) NOT NULL DEFAULT '0',
  `Letzte_Aktion` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nickname` (`Nickname`,`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of User
-- ----------------------------
INSERT INTO `User` VALUES ('1', null, '37.201.192.151', '4brhi01ab1hmrcd28me5vviom2', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@website.de', '1', '', '2015-02-11', '', '', '', '', '', '', '1423672217', '1423672343');

-- ----------------------------
-- Table structure for User_Rechte
-- ----------------------------
DROP TABLE IF EXISTS `User_Rechte`;
CREATE TABLE `User_Rechte` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `Recht` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of User_Rechte
-- ----------------------------
INSERT INTO `User_Rechte` VALUES ('1', '1', 'Adminbereich');
INSERT INTO `User_Rechte` VALUES ('2', '1', 'User administrieren');

-- ----------------------------
-- Table structure for userdaten
-- ----------------------------
DROP TABLE IF EXISTS `userdaten`;
CREATE TABLE `userdaten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `benutzer` varchar(25) NOT NULL,
  `passwort` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `group` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userdaten
-- ----------------------------
INSERT INTO `userdaten` VALUES ('5', 'admin', 'admin123', 'N/A', '');
