/*
Navicat MySQL Data Transfer

Source Server         : repack
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2021-01-03 11:04:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_npc_tele_association
-- ----------------------------
DROP TABLE IF EXISTS `custom_npc_tele_association`;
CREATE TABLE `custom_npc_tele_association` (
  `cat_id` int(6) unsigned NOT NULL DEFAULT '0',
  `dest_id` int(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`,`dest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_npc_tele_association
-- ----------------------------
INSERT INTO `custom_npc_tele_association` VALUES ('1', '13');
INSERT INTO `custom_npc_tele_association` VALUES ('1', '15');
INSERT INTO `custom_npc_tele_association` VALUES ('1', '18');
INSERT INTO `custom_npc_tele_association` VALUES ('1', '22');
INSERT INTO `custom_npc_tele_association` VALUES ('1', '23');
INSERT INTO `custom_npc_tele_association` VALUES ('1', '37');
INSERT INTO `custom_npc_tele_association` VALUES ('1', '39');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '23');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '29');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '30');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '37');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '38');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '48');
INSERT INTO `custom_npc_tele_association` VALUES ('2', '50');
INSERT INTO `custom_npc_tele_association` VALUES ('3', '1');
INSERT INTO `custom_npc_tele_association` VALUES ('3', '4');
INSERT INTO `custom_npc_tele_association` VALUES ('3', '16');
INSERT INTO `custom_npc_tele_association` VALUES ('3', '52');
INSERT INTO `custom_npc_tele_association` VALUES ('4', '2');
INSERT INTO `custom_npc_tele_association` VALUES ('4', '3');
INSERT INTO `custom_npc_tele_association` VALUES ('4', '17');
INSERT INTO `custom_npc_tele_association` VALUES ('4', '51');
INSERT INTO `custom_npc_tele_association` VALUES ('5', '11');
INSERT INTO `custom_npc_tele_association` VALUES ('5', '20');
INSERT INTO `custom_npc_tele_association` VALUES ('5', '33');
INSERT INTO `custom_npc_tele_association` VALUES ('5', '44');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '6');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '7');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '8');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '14');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '25');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '31');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '32');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '35');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '36');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '40');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '43');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '45');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '46');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '47');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '49');
INSERT INTO `custom_npc_tele_association` VALUES ('6', '54');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '9');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '26');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '27');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '28');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '34');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '42');
INSERT INTO `custom_npc_tele_association` VALUES ('7', '55');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '5');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '10');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '12');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '19');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '21');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '24');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '41');
INSERT INTO `custom_npc_tele_association` VALUES ('8', '53');
INSERT INTO `custom_npc_tele_association` VALUES ('9', '56');
SET FOREIGN_KEY_CHECKS=1;
