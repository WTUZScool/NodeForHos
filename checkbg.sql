/*
 Navicat Premium Data Transfer

 Source Server         : ry
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : patientsql

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 15/11/2020 23:03:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for checkbg
-- ----------------------------
DROP TABLE IF EXISTS `checkbg`;
CREATE TABLE `checkbg`  (
  `bglv` int(0) NULL DEFAULT NULL,
  `checkdate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `checktime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pid` int(0) NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkbg
-- ----------------------------
INSERT INTO `checkbg` VALUES (999, '2020-11-14', 'afterBreakfast', 3, 'sb');
INSERT INTO `checkbg` VALUES (10, '2020-11-14', 'beforeDawn', 1, 'no problems');
INSERT INTO `checkbg` VALUES (123, '2020-11-11', 'afterLunch', 2, 'no');
INSERT INTO `checkbg` VALUES (1234, '2020-11-02', 'beforeDinner', 4, 'nonono');
INSERT INTO `checkbg` VALUES (111, '2020-11-27', 'beforeBreakfast', 4, 'no');
INSERT INTO `checkbg` VALUES (111, '2020-11-28', 'afterLunch', 4, 'nono');
INSERT INTO `checkbg` VALUES (222, '2020-11-29', 'afterLunch', 4, '危险危险危险危险危险危险');
INSERT INTO `checkbg` VALUES (112, '2020-11-26', 'beforeLunch', 3, 'sbbb');
INSERT INTO `checkbg` VALUES (15, '2020-11-26', 'beforeLunch', 1, 'no');
INSERT INTO `checkbg` VALUES (8, '2020-11-14', 'afterDinner', 5, 'no');
INSERT INTO `checkbg` VALUES (12, '2020-11-14', 'afterDinner', 6, 'no');
INSERT INTO `checkbg` VALUES (8, '2020-11-30', 'afterDinner', 4, 'xxx');
INSERT INTO `checkbg` VALUES (123, '2020-11-14', 'afterDinner', 7, 'no');
INSERT INTO `checkbg` VALUES (5, '2020-11-30', 'afterBreakfast', 2, 'no');

SET FOREIGN_KEY_CHECKS = 1;
