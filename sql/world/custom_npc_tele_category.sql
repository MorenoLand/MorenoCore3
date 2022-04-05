/*
Navicat MySQL Data Transfer

Source Server         : repack
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-01-03 11:05:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_npc_tele_category
-- ----------------------------
DROP TABLE IF EXISTS `custom_npc_tele_category`;
CREATE TABLE `custom_npc_tele_category` (
  `id` int(6) unsigned NOT NULL DEFAULT '0',
  `icon` char(100) NOT NULL DEFAULT 'inv_misc_shadowegg',
  `size` char(100) NOT NULL DEFAULT '30',
  `colour` char(100) NOT NULL DEFAULT '000000',
  `name` varchar(255) NOT NULL DEFAULT '',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data0` bigint(20) unsigned NOT NULL DEFAULT '0',
  `data1` int(6) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(255) NOT NULL DEFAULT '',
  `name_loc2` varchar(255) NOT NULL DEFAULT '',
  `name_loc3` varchar(255) NOT NULL DEFAULT '',
  `name_loc4` varchar(255) NOT NULL DEFAULT '',
  `name_loc5` varchar(255) NOT NULL DEFAULT '',
  `name_loc6` varchar(255) NOT NULL DEFAULT '',
  `name_loc7` varchar(255) NOT NULL DEFAULT '',
  `name_loc8` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_npc_tele_category
-- ----------------------------
INSERT INTO `custom_npc_tele_category` VALUES ('1', 'inv_misc_shadowegg', '30', '0', 'Cities', '0', '1', '0', '', '', 'Städte', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('2', 'inv_misc_shadowegg', '30', '0', 'Cities', '0', '2', '0', '', '', 'Städte', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('3', 'inv_misc_shadowegg', '30', '0', 'Battlegrounds', '0', '1', '0', '', '', 'Schlachtfelder', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('4', 'inv_misc_shadowegg', '30', '0', 'Battlegrounds', '0', '2', '0', '', '', 'Schlachtfelder', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('5', 'inv_misc_shadowegg', '30', '0', 'Arenas', '0', '0', '0', '', '', 'Kampf-Arenen', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('6', 'inv_misc_shadowegg', '30', '0', '[Instances Lvl 1-60]', '0', '0', '0', '', '', 'Instanzen Level 1-60', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('7', 'inv_misc_shadowegg', '30', '0', '[Instances Lvl 60+]', '5', '60', '0', '', '', 'Instanzen Level 60+', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('8', 'inv_misc_shadowegg', '30', '0', '[Instances Lvl 70+]', '5', '70', '0', '', '', 'Instanzen Level 70+', '', '', '', '', '');
INSERT INTO `custom_npc_tele_category` VALUES ('9', 'inv_misc_shadowegg', '30', '0', 'Destinations MJ', '3', '0', '0', '', '', 'GM Insel', '', '', '', '', '');
SET FOREIGN_KEY_CHECKS=1;
