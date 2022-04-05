/*
Navicat MySQL Data Transfer

Source Server         : repack
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-01-03 11:02:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_transmogrification
-- ----------------------------
DROP TABLE IF EXISTS `custom_transmogrification`;
CREATE TABLE `custom_transmogrification` (
  `GUID` int(10) unsigned NOT NULL COMMENT 'Item guidLow',
  `FakeEntry` int(10) unsigned NOT NULL COMMENT 'Item entry',
  `Owner` int(10) unsigned NOT NULL COMMENT 'Player guidLow',
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='version 4.0';

-- ----------------------------
-- Records of custom_transmogrification
-- ----------------------------
INSERT INTO `custom_transmogrification` VALUES ('1', '1', '1');
SET FOREIGN_KEY_CHECKS=1;
