/*
Navicat MySQL Data Transfer

Source Server         : repack
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-01-03 11:03:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_item_enchant_visuals
-- ----------------------------
DROP TABLE IF EXISTS `custom_item_enchant_visuals`;
CREATE TABLE `custom_item_enchant_visuals` (
  `iguid` int(10) unsigned NOT NULL COMMENT 'item DB guid',
  `display` int(10) unsigned NOT NULL COMMENT 'enchantID',
  PRIMARY KEY (`iguid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='stores the enchant IDs for the visuals';

-- ----------------------------
-- Records of custom_item_enchant_visuals
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
