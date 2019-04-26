/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : company

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 27/04/2019 00:56:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '无意义，主键uuid',
  `productNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品编号，唯一，不为空',
  `productName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称（路线名称）',
  `cityName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出发城市',
  `DepartureTime` datetime NULL DEFAULT NULL COMMENT '出发时间',
  `productPrice` double(20, 2) NULL DEFAULT NULL COMMENT '产品价格',
  `productDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品描述',
  `productStatus` int(255) NULL DEFAULT NULL COMMENT '状态（0关闭1开启）',
  PRIMARY KEY (`id`, `productNum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '001', '北京三日游', '北京', '2019-04-27 00:44:35', 1200.00, '不错的旅行', 0);
INSERT INTO `product` VALUES ('2', '002', '上海五日游', '上海', '2019-04-02 00:45:19', 1800.00, '魔都我来了', 1);

SET FOREIGN_KEY_CHECKS = 1;
