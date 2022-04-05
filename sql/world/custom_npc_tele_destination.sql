/*
Navicat MySQL Data Transfer

Source Server         : repack
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-01-03 11:05:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_npc_tele_destination
-- ----------------------------
DROP TABLE IF EXISTS `custom_npc_tele_destination`;
CREATE TABLE `custom_npc_tele_destination` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `icon` char(100) NOT NULL DEFAULT 'inv_misc_shadowegg',
  `size` char(100) NOT NULL DEFAULT '30',
  `colour` char(100) NOT NULL DEFAULT '000000',
  `name` char(100) NOT NULL DEFAULT '',
  `pos_X` float NOT NULL DEFAULT '0',
  `pos_Y` float NOT NULL DEFAULT '0',
  `pos_Z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cost` int(10) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(255) NOT NULL DEFAULT '',
  `name_loc2` varchar(255) NOT NULL DEFAULT '',
  `name_loc3` varchar(255) NOT NULL DEFAULT '',
  `name_loc4` varchar(255) NOT NULL DEFAULT '',
  `name_loc5` varchar(255) NOT NULL DEFAULT '',
  `name_loc6` varchar(255) NOT NULL DEFAULT '',
  `name_loc7` varchar(255) NOT NULL DEFAULT '',
  `name_loc8` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_npc_tele_destination
-- ----------------------------
INSERT INTO `custom_npc_tele_destination` VALUES ('1', 'inv_misc_shadowegg', '30', '0', 'Alterac Valley', '883.187', '-489.375', '96.7618', '30', '3.06932', '0', '0', '', '', 'Alteractal', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('2', 'inv_misc_shadowegg', '30', '0', 'Alterac Valley', '-818.155', '-623.043', '54.0884', '30', '2.1', '0', '0', '', '', 'Alteractal', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('3', 'inv_misc_shadowegg', '30', '0', 'Arathi Basin', '686.053', '683.165', '-12.9149', '529', '0.18', '0', '0', '', '', 'Arathibecken', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('4', 'inv_misc_shadowegg', '30', '0', 'Arathi Basin', '1308.68', '1306.03', '-9.0107', '529', '3.91285', '0', '0', '', '', 'Arathibecken', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('5', 'inv_misc_shadowegg', '30', '0', 'Black Temple', '-3610.72', '324.988', '37.4', '530', '3.28298', '0', '0', '', '', 'Der Schwarze Tempel', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('6', 'inv_misc_shadowegg', '30', '0', 'Blackfathom Deeps', '4254.58', '664.74', '-29.04', '1', '1.97', '0', '0', '', '', 'Tiefschwarze Grotte', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('7', 'inv_misc_shadowegg', '30', '0', 'Blackrock Depths', '-7301.03', '-913.19', '165.37', '0', '0.08', '0', '0', '', '', 'Schwarzfelstiefen', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('8', 'inv_misc_shadowegg', '30', '0', 'Blackrock Spire', '-7535.43', '-1212.04', '285.45', '0', '5.29', '0', '0', '', '', 'Schwarzfelsspitze', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('9', 'inv_misc_shadowegg', '30', '0', 'Blackwing Lair', '-7665.55', '-1102.49', '400.679', '469', '0', '0', '0', '', '', 'Pechschwingenhort', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('10', 'inv_misc_shadowegg', '30', '0', 'Caverns of Time', '-8173.66', '-4746.36', '33.8423', '1', '4.93989', '0', '0', '', '', 'Höhlen der Zeit', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('11', 'inv_misc_shadowegg', '30', '0', 'Circle of Blood', '2839.44', '5930.17', '11.1002', '530', '3.16284', '0', '0', '', '', 'Zirkels des Blutes', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('12', 'inv_misc_shadowegg', '30', '0', 'Coilfang Reservoir', '517.288', '6976.28', '32.0072', '530', '0', '0', '0', '', '', 'Der Echsenkessel', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('13', 'inv_misc_shadowegg', '30', '0', 'Darnassus', '9947.52', '2482.73', '1316.21', '1', '0', '0', '0', '', '', 'Darnassus', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('14', 'inv_misc_shadowegg', '30', '0', 'Dire Maul', '-3982.47', '1127.79', '161.02', '1', '0.05', '0', '0', '', '', 'Düsterbruch', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('15', 'inv_misc_shadowegg', '30', '0', 'Exodar', '-4073.03', '-12020.4', '-1.47', '530', '0', '0', '0', '', '', 'Die Exodar', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('16', 'inv_misc_shadowegg', '30', '0', 'Eye of the Storm', '2487.72', '1609.12', '1224.64', '566', '3.35671', '0', '0', '', '', 'Auge des Sturms', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('17', 'inv_misc_shadowegg', '30', '0', 'Eye of the Storm', '1843.73', '1529.77', '1224.43', '566', '0.297579', '0', '0', '', '', 'Auge des Sturms', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('18', 'inv_misc_shadowegg', '30', '0', 'Goldshire', '-9464', '62', '56', '0', '0', '0', '0', '', '', 'Goldhain', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('19', 'inv_misc_shadowegg', '30', '0', 'Gruul\'s Lair', '3539.01', '5082.36', '1.69107', '530', '0', '0', '0', '', '', 'Gruuls Unterschlupf', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('20', 'inv_misc_shadowegg', '30', '0', 'Gurubashi', '-13261.3', '168.294', '35.0792', '0', '1.00688', '0', '0', '', '', 'Gurubashi', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('21', 'inv_misc_shadowegg', '30', '0', 'Hellfire Citadel', '-305.816', '3056.4', '-2.47318', '530', '2.01', '0', '0', '', '', 'Höllenfeuer', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('22', 'inv_misc_shadowegg', '30', '0', 'Ironforge', '-4924.07', '-951.95', '501.55', '0', '5.4', '0', '0', '', '', 'Eisenschmiede', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('23', 'inv_misc_shadowegg', '30', '0', 'Isle Of Quel\'Danas', '12947.4', '-6893.31', '5.68398', '530', '3.09154', '0', '0', '', '', 'Insel von Quel\'Danas', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('24', 'inv_misc_shadowegg', '30', '0', 'Karazhan', '-11118.8', '-2010.84', '47.0807', '0', '0', '0', '0', '', '', 'Karazhan', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('25', 'inv_misc_shadowegg', '30', '0', 'Maraudon', '-1433.33', '2955.34', '96.21', '1', '4.82', '0', '0', '', '', 'Maraudon', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('26', 'inv_misc_shadowegg', '30', '0', 'Molten Core', '1121.45', '-454.317', '-101.33', '230', '3.5', '0', '0', '', '', 'Geschmolzener Kern', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('27', 'inv_misc_shadowegg', '30', '0', 'Naxxramas', '3125.18', '-3748.02', '136.049', '0', '0', '0', '0', '', '', 'Naxxramas', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('28', 'inv_misc_shadowegg', '30', '0', 'Onyxia\'s Lair', '-4707.44', '-3726.82', '54.6723', '1', '3.8', '0', '0', '', '', 'Onyxias Hort', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('29', 'inv_misc_shadowegg', '30', '0', 'Orgrimmar', '1552.5', '-4420.66', '8.94802', '1', '0', '0', '0', '', '', 'Orgrimmar', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('30', 'inv_misc_shadowegg', '30', '0', 'Razor Hill', '315.721', '-4743.4', '10.4867', '1', '0', '0', '0', '', '', 'Klingenhügel', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('31', 'inv_misc_shadowegg', '30', '0', 'Razorfen Downs', '-4645.08', '-2470.85', '85.53', '1', '4.39', '0', '0', '', '', 'Hügel der Klingenhauer', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('32', 'inv_misc_shadowegg', '30', '0', 'Razorfen Kraul', '-4484.04', '-1739.4', '86.47', '1', '1.23', '0', '0', '', '', 'Kral der Klingenhauer', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('33', 'inv_misc_shadowegg', '30', '0', 'Ring of Trials', '-1999.94', '6581.71', '11.32', '530', '2.3', '0', '0', '', '', 'Der Ring der Prüfung', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('34', 'inv_misc_shadowegg', '30', '0', 'Ruins of Ahn\'Qiraj', '-8409.03', '1498.83', '27.3615', '1', '2.49757', '0', '0', '', '', 'Ruinen von Ahn\'Qiraj', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('35', 'inv_misc_shadowegg', '30', '0', 'Scholomance', '1219.01', '-2604.66', '85.61', '0', '0.5', '0', '0', '', '', 'Scholomance', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('36', 'inv_misc_shadowegg', '30', '0', 'Shadowfang Keep', '-254.47', '1524.68', '76.89', '0', '1.56', '0', '0', '', '', 'Burg Schattenfang', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('37', 'inv_misc_shadowegg', '30', '0', 'Shattrath City', '-1850.21', '5435.82', '-10.9614', '530', '3.40391', '0', '0', '', '', 'Shattrath', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('38', 'inv_misc_shadowegg', '30', '0', 'Silvermoon', '9338.74', '-7277.27', '13.7895', '530', '0', '0', '0', '', '', 'Silbermond', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('39', 'inv_misc_shadowegg', '30', '0', 'Stormwind', '-8960.14', '516.266', '96.3568', '0', '0', '0', '0', '', '', 'Sturmwind', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('40', 'inv_misc_shadowegg', '30', '0', 'Stratholme', '3263.54', '-3379.46', '143.59', '0', '0', '0', '0', '', '', 'Stratholme', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('41', 'inv_misc_shadowegg', '30', '0', 'Tempest Keep', '3089.58', '1399.05', '187.653', '530', '4.79407', '0', '0', '', '', 'Die Festung der Stürme', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('42', 'inv_misc_shadowegg', '30', '0', 'Temple of Ahn\'Qiraj', '-8245.84', '1983.74', '129.072', '1', '0.936195', '0', '0', '', '', 'Ahn\'Qiraj', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('43', 'inv_misc_shadowegg', '30', '0', 'The Deadmines', '-11212', '1658.58', '25.67', '0', '1.45', '0', '0', '', '', 'Die Todesminen', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('44', 'inv_misc_shadowegg', '30', '0', 'The Maul', '-3761.49', '1133.43', '132.083', '1', '4.57259', '0', '0', '', '', 'Düsterbruch', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('45', 'inv_misc_shadowegg', '30', '0', 'The Scarlet Monastery', '2843.89', '-693.74', '139.32', '0', '5.11', '0', '0', '', '', 'Das Scharlachrote Kloster', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('46', 'inv_misc_shadowegg', '30', '0', 'The Sunken Temple', '-10346.9', '-3851.9', '-43.41', '0', '6.09', '0', '0', '', '', 'Versunkener Tempel', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('47', 'inv_misc_shadowegg', '30', '0', 'The Wailing Caverns', '-722.53', '-2226.3', '16.94', '1', '2.71', '0', '0', '', '', 'Die Hühlen des Wehklagens', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('48', 'inv_misc_shadowegg', '30', '0', 'Thunder Bluff', '-1290', '147.034', '129.682', '1', '4.919', '0', '0', '', '', 'Donnerfels', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('49', 'inv_misc_shadowegg', '30', '0', 'Uldaman', '-6119.7', '-2957.3', '204.11', '0', '0.03', '0', '0', '', '', 'Uldaman', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('50', 'inv_misc_shadowegg', '30', '0', 'Undercity', '1819.71', '238.79', '60.5321', '0', '0', '0', '0', '', '', 'Unterstadt', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('51', 'inv_misc_shadowegg', '30', '0', 'Warsong Gulch', '930.851', '1431.57', '345.537', '489', '0.015704', '0', '0', '', '', 'Kriegshymnenschlucht', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('52', 'inv_misc_shadowegg', '30', '0', 'Warsong Gulch', '1525.95', '1481.66', '352.001', '489', '3.20756', '0', '0', '', '', 'Kriegshymnenschlucht', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('53', 'inv_misc_shadowegg', '30', '0', 'Zul\'Aman', '6846.95', '-7954.5', '170.028', '530', '4.61501', '0', '0', '', '', 'Zul\'Aman', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('54', 'inv_misc_shadowegg', '30', '0', 'Zul\'Farrak', '-6839.39', '-2911.03', '8.87', '1', '0.41', '0', '0', '', '', 'Zul\'Farrak', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('55', 'inv_misc_shadowegg', '30', '0', 'Zul\'Gurub', '-11916.7', '-1212.82', '92.2868', '0', '4.6095', '0', '0', '', '', 'Zul\'Gurub', '', '', '', '', '');
INSERT INTO `custom_npc_tele_destination` VALUES ('56', 'inv_misc_shadowegg', '30', '0', 'GM Island', '16254', '16276.9', '14.5082', '1', '1.70269', '0', '0', '', 'Ile des MJ', 'GM Insel', '', '', '', '', '');
SET FOREIGN_KEY_CHECKS=1;
