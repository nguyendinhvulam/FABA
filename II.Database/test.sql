/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:0
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 06/08/2020 00:06:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detail_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `detail_role_permission`;
CREATE TABLE `detail_role_permission`  (
  `role_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_role_permission
-- ----------------------------
INSERT INTO `detail_role_permission` VALUES (1, 1);
INSERT INTO `detail_role_permission` VALUES (1, 2);
INSERT INTO `detail_role_permission` VALUES (1, 3);
INSERT INTO `detail_role_permission` VALUES (1, 4);
INSERT INTO `detail_role_permission` VALUES (2, 1);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('A Nguyen', 'Admin', 'View', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('B Nguyen', 'Admin', 'View', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('A Nguyen', 'Admin', 'Add', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('B Nguyen', 'Admin', 'Add', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('A Nguyen', 'Admin', 'Edit', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('B Nguyen', 'Admin', 'Edit', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('A Nguyen', 'Admin', 'Delete', '2020-08-06 00:00:02');
INSERT INTO `logs` VALUES ('B Nguyen', 'Admin', 'Delete', '2020-08-06 00:00:02');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 'View');
INSERT INTO `permission` VALUES (2, 'Add');
INSERT INTO `permission` VALUES (3, 'Edit');
INSERT INTO `permission` VALUES (4, 'Delete');

-- ----------------------------
-- Table structure for specific_role
-- ----------------------------
DROP TABLE IF EXISTS `specific_role`;
CREATE TABLE `specific_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of specific_role
-- ----------------------------
INSERT INTO `specific_role` VALUES (1, 'Admin', NULL);
INSERT INTO `specific_role` VALUES (2, 'Staff', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'A', 'Nguyen', 1);
INSERT INTO `users` VALUES (2, 'B', 'Nguyen', 1);

SET FOREIGN_KEY_CHECKS = 1;
