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

 Date: 15/11/2020 23:03:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for patients
-- ----------------------------
DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id` int(0) NOT NULL,
  `illness` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patients
-- ----------------------------
INSERT INTO `patients` VALUES ('zzx', '男', 1, '肥胖');
INSERT INTO `patients` VALUES ('渣渣星', '男', 2, 'I型糖尿病');
INSERT INTO `patients` VALUES ('李赵勇', '男', 3, 'I型糖尿病');
INSERT INTO `patients` VALUES ('张赵勇', '男', 4, '其他');
INSERT INTO `patients` VALUES ('张宇航', '男', 5, 'II型糖尿病');
INSERT INTO `patients` VALUES ('zzzz', '女', 6, 'I型糖尿病');
INSERT INTO `patients` VALUES ('zzzzzz111', '男', 7, '其他');

SET FOREIGN_KEY_CHECKS = 1;
