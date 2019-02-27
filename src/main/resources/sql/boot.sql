/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : boot

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 22/02/2019 15:39:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '首页', NULL, '/');
INSERT INTO `menu` VALUES (2, '首页2', NULL, '/demo2/index');
INSERT INTO `menu` VALUES (3, '表格', NULL, '/table/**');
INSERT INTO `menu` VALUES (4, '用户管理', NULL, '/user/**');

-- ----------------------------
-- Table structure for r_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `r_role_menu`;
CREATE TABLE `r_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK3sq5xkthr6icwcyohtdoje586`(`menu_id`) USING BTREE,
  INDEX `FK65h6sd1kud5klymygbfs9crnn`(`role_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of r_role_menu
-- ----------------------------
INSERT INTO `r_role_menu` VALUES (1, 1, 1);
INSERT INTO `r_role_menu` VALUES (2, 1, 2);
INSERT INTO `r_role_menu` VALUES (3, 1, 3);
INSERT INTO `r_role_menu` VALUES (4, 2, 1);
INSERT INTO `r_role_menu` VALUES (5, 2, 2);
INSERT INTO `r_role_menu` VALUES (6, 1, 4);

-- ----------------------------
-- Table structure for r_user_role
-- ----------------------------
DROP TABLE IF EXISTS `r_user_role`;
CREATE TABLE `r_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKj9553ass9uctjrmh0gkqsmv0d`(`role_id`) USING BTREE,
  INDEX `FK55itppkw3i07do3h7qoclqd4k`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of r_user_role
-- ----------------------------
INSERT INTO `r_user_role` VALUES (1, 1, 1);
INSERT INTO `r_user_role` VALUES (2, 2, 2);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_ADMIN', '管理员');
INSERT INTO `role` VALUES (2, 'ROLE_USER', '普通用户');
INSERT INTO `role` VALUES (3, 'ROLE_TEST', '测试');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_account_non_expired` bit(1) NULL DEFAULT NULL,
  `is_account_non_locked` bit(1) NULL DEFAULT NULL,
  `is_credentials_non_expired` bit(1) NULL DEFAULT NULL,
  `is_enabled` bit(1) NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, b'1', b'1', b'1', b'1', 'tyf', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (2, b'1', b'1', b'1', b'1', 'tyf2', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (3, b'1', b'1', b'1', b'1', 'aaa', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (4, b'1', b'1', b'1', b'1', 'aaa', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (5, b'1', b'1', b'1', b'1', 'bbb', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (6, b'1', b'1', b'1', b'1', 'ccc', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (7, b'1', b'1', b'1', b'1', 'ddd', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (8, b'1', b'1', b'1', b'1', 'eee', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (9, b'1', b'1', b'1', b'1', 'fff', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (10, b'1', b'1', b'1', b'1', 'ggg', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (11, b'1', b'1', b'1', b'1', 'hhh', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (12, b'1', b'1', b'1', b'1', 'iii', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (13, b'1', b'1', b'1', b'1', 'jjj', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (14, b'1', b'1', b'1', b'1', 'kkk', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (15, b'1', b'1', b'1', b'1', 'mmm', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (16, b'1', b'1', b'1', b'1', 'lll', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');
INSERT INTO `user` VALUES (17, b'1', b'1', b'1', b'1', 'nnn', '$2a$10$L.K2WsuT1.Za1LRKTNYwOuDIgkmFSJ6O.IKjhKVRhDDle3jHmvO9S', 'aaa');

SET FOREIGN_KEY_CHECKS = 1;
