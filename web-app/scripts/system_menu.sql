/*
Navicat MySQL Data Transfer

Source Server         : sample
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : cai2016adb

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-03-06 20:02:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `menu_action` varchar(255) NOT NULL,
  `menu_context` varchar(255) NOT NULL,
  `menu_description` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_right` int(11) NOT NULL,
  `up_menu_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ta0xmlp775lih3ictrnyi2k5r` (`up_menu_item_id`),
  CONSTRAINT `FK_ta0xmlp775lih3ictrnyi2k5r` FOREIGN KEY (`up_menu_item_id`) REFERENCES `system_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '3', '#', '系统维护', '用户类型/菜单/角色/用户等', '0', '10', null);
INSERT INTO `system_menu` VALUES ('2', '1', 'systemRole/index', '角色管理', '维护各种角色，不同的角色拥有不同的权限', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('3', '1', 'systemUser/index', '用户管理', '增加、删除、编辑用户', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('4', '1', 'systemMenu/index', '菜单管理', '增加、删除、编辑菜单', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('5', '1', 'systemLog/index', '日志管理', '日志管理', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('6', '0', 'systemMenuTree/index', '树形菜单', '直观形象地维护菜单', '0', '10', '1');
INSERT INTO `system_menu` VALUES ('7', '0', 'systemProcedure/index', '过程控制', '过程控制维护', '0', '10', '1');

INSERT INTO `system_menu` VALUES ('20', '0', '#', '基础设置', '#', '0', '0', null);
