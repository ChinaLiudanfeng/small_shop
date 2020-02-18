/*
 Navicat Premium Data Transfer

 Source Server         : yuanyuan-ali
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 127.0.0.1:3306
 Source Schema         : myshop1

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 18/02/2020 15:04:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '202cb962ac59075b964b07152d234b70', NULL);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1, 2, 'Jimi', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', '3960', 44, 1561725128);
INSERT INTO `cart` VALUES (2, 1, 1, 'Jimi', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', '720', 9, 1561725715);
INSERT INTO `cart` VALUES (3, 1, 3, 'Redis', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', '240', 3, 1561725990);
INSERT INTO `cart` VALUES (4, 1, 4, 'uiouio', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', '270', 3, 1561726261);
INSERT INTO `cart` VALUES (5, 1, 18, 'nainx', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', '213', 1, 1561725041);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'Jimi', 60, '80', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1560958676);
INSERT INTO `goods` VALUES (2, 'Jimi', 60, '90', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1560958711);
INSERT INTO `goods` VALUES (3, 'Redis', 60, '80', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1560958729);
INSERT INTO `goods` VALUES (4, 'uiouio', 40, '90', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1560958761);
INSERT INTO `goods` VALUES (5, 'ererd', 50, '70', 'goods/sW8Id9m89x6YNPhFmwun0ytRXf8uS2rpmdlFXqjD.jpeg', 1560958775);
INSERT INTO `goods` VALUES (6, 'josn', 66, '23', 'goods/B3HbjmZxL3W7Qd9wa4T3kswyafgvYnzWLNamAQ4Z.jpeg', 1560958794);
INSERT INTO `goods` VALUES (7, 'ukyu', 50, '70', 'goods/7OWGRBhghnPH72Cm7P6zS8fKcyCPgJqPZtyWMfXj.jpeg', 1560960407);
INSERT INTO `goods` VALUES (8, 'admin', 12, '23', 'goods/d8x3KHsOL1suAJ09iNXRGce4h36yudXZM5oW7uxi.jpeg', 1561020779);
INSERT INTO `goods` VALUES (9, 'admin', 12, '23', 'goods/jSDNWWG8HqMzKiQ0Dq0ZieSSvzHv1QrpQKJGoaqZ.jpeg', 1561029458);
INSERT INTO `goods` VALUES (10, 'admin3', 12, '23', 'goods/9Gwm4Mz0W8r8yk1iBYUbjFWhAlsyIcc8wrQ4MlTz.jpeg', 1561030083);
INSERT INTO `goods` VALUES (11, 'tyuii', 56, '80', 'goods/iLUUOzyez4mhLLJGF04vjruojOAtZmnsSVFlaunM.jpeg', 1561030040);
INSERT INTO `goods` VALUES (12, 'koluty', 60, '30', 'goods/llNbLZUQxIVXqAQKdylqrL6V5BXG6jJQempxacTI.jpeg', 1561030063);
INSERT INTO `goods` VALUES (13, 'admin', 44, '55', 'goods/RhoHCvdVHdQ6RLDnatG4ZvqfMEVukne3pMRQ3MFI.jpeg', 1561098971);
INSERT INTO `goods` VALUES (14, 'admin', 34, '213', 'goods/FTErUIgoEr4rMKEtOqR0t7JfFAjc7PjB6Uslrund.png', 1561466449);
INSERT INTO `goods` VALUES (15, 'index', 324, '123', 'goods/N5RmGsGpUE64dHBZqIDDuk1zalgP5SrgQNDXiBmc.jpeg', 1561722186);
INSERT INTO `goods` VALUES (16, 'php', 324, '213', 'goods/5aVDq26vjLGQv8hZY41KQzeKqoIsufeTfw2f7g2T.jpeg', 1561722247);
INSERT INTO `goods` VALUES (17, 'nainx', 324, '213', 'goods/l0QqwCb0yCj0oCuksOGhP37ENsIL06xggxZzw5Em.jpeg', 1561722273);
INSERT INTO `goods` VALUES (18, 'nainx', 324, '213', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561722294);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `oid` varchar(33) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `sum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) DEFAULT 2 COMMENT '2代表未支付 1代表已支付 3代表过期',
  `pay_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (53, '15614001691025', 1, '2880', 3, NULL, 1561400169);
INSERT INTO `order` VALUES (54, '15614003561079', 1, '2880', 3, NULL, 1561400356);
INSERT INTO `order` VALUES (55, '15614011551032', 1, '2970', 3, NULL, 1561401155);
INSERT INTO `order` VALUES (56, '15614012431052', 1, '3060', 1, NULL, 1561401243);
INSERT INTO `order` VALUES (57, '15614054181056', 1, '3150', 3, NULL, 1561405418);
INSERT INTO `order` VALUES (58, '15614055301012', 1, '3150', 3, NULL, 1561405530);
INSERT INTO `order` VALUES (59, '15614056081098', 1, '3240', 3, NULL, 1561405608);
INSERT INTO `order` VALUES (60, '15614056421086', 1, '3330', 3, NULL, 1561405643);
INSERT INTO `order` VALUES (61, '15614057821087', 1, '3420', 3, NULL, 1561405782);
INSERT INTO `order` VALUES (62, '15614059531081', 1, '3510', 1, NULL, 1561405953);
INSERT INTO `order` VALUES (63, '15614292531104', 1, '3600', 3, NULL, 1561429253);
INSERT INTO `order` VALUES (64, '15614296391075', 1, '3690', 3, NULL, 1561429639);
INSERT INTO `order` VALUES (65, '15614327801025', 1, '3780', 3, NULL, 1561432780);
INSERT INTO `order` VALUES (66, '15614328921070', 1, '3870', 1, NULL, 1561432892);
INSERT INTO `order` VALUES (67, '15614329101023', 1, '3950', 1, NULL, 1561432910);
INSERT INTO `order` VALUES (68, '15614433251006', 1, '4040', 3, NULL, 1561443325);
INSERT INTO `order` VALUES (76, '15614538481030', 1, '4760', 3, NULL, 1561453848);
INSERT INTO `order` VALUES (77, '15614659511066', 1, '4850', 1, NULL, 1561465951);
INSERT INTO `order` VALUES (78, '15617250491027', 1, '5063', 2, NULL, 1561725049);
INSERT INTO `order` VALUES (79, '15617251341025', 1, '5153', 2, NULL, 1561725134);
INSERT INTO `order` VALUES (80, '15617257191089', 1, '5233', 2, NULL, 1561725719);
INSERT INTO `order` VALUES (81, '15617257231043', 1, '5233', 2, NULL, 1561725723);
INSERT INTO `order` VALUES (82, '15617259981053', 1, '5313', 2, NULL, 1561725998);
INSERT INTO `order` VALUES (83, '15617262661021', 1, '5403', 2, NULL, 1561726266);
INSERT INTO `order` VALUES (84, '15617875951041', NULL, '371', 2, NULL, 1561787595);
INSERT INTO `order` VALUES (85, '15617894351037', NULL, '232', 2, NULL, 1561789435);
INSERT INTO `order` VALUES (86, '15617925851002', NULL, '5403', 2, NULL, 1561792585);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `sum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `oid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 'Jimi', 20, '2520', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561395312, '15613953121081', 1);
INSERT INTO `order_detail` VALUES (2, 'Jimi', 7, '2520', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561395312, '15613953121081', 1);
INSERT INTO `order_detail` VALUES (3, 'Redis', 2, '2520', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561395312, '15613953121081', 1);
INSERT INTO `order_detail` VALUES (4, 'Jimi', 21, '2610', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561395979, '15613959791022', 1);
INSERT INTO `order_detail` VALUES (5, 'Jimi', 7, '2610', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561395979, '15613959791022', 1);
INSERT INTO `order_detail` VALUES (6, 'Redis', 2, '2610', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561395979, '15613959791022', 1);
INSERT INTO `order_detail` VALUES (7, 'Jimi', 21, '2610', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561396227, '15613962271048', 1);
INSERT INTO `order_detail` VALUES (8, 'Jimi', 7, '2610', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561396227, '15613962271048', 1);
INSERT INTO `order_detail` VALUES (9, 'Redis', 2, '2610', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561396227, '15613962271048', 1);
INSERT INTO `order_detail` VALUES (10, 'Jimi', 22, '2700', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561396288, '15613962881091', 1);
INSERT INTO `order_detail` VALUES (11, 'Jimi', 7, '2700', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561396288, '15613962881091', 1);
INSERT INTO `order_detail` VALUES (12, 'Redis', 2, '2700', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561396288, '15613962881091', 1);
INSERT INTO `order_detail` VALUES (13, 'Jimi', 23, '2790', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561399998, '15613999981052', 1);
INSERT INTO `order_detail` VALUES (14, 'Jimi', 7, '2790', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561399998, '15613999981052', 1);
INSERT INTO `order_detail` VALUES (15, 'Redis', 2, '2790', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561399998, '15613999981052', 1);
INSERT INTO `order_detail` VALUES (16, 'Jimi', 24, '2880', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561400169, '15614001691025', 1);
INSERT INTO `order_detail` VALUES (17, 'Jimi', 7, '2880', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561400170, '15614001691025', 1);
INSERT INTO `order_detail` VALUES (18, 'Redis', 2, '2880', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561400170, '15614001691025', 2);
INSERT INTO `order_detail` VALUES (19, 'Jimi', 24, '2880', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561400356, '15614003561079', 2);
INSERT INTO `order_detail` VALUES (20, 'Jimi', 7, '2880', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561400356, '15614003561079', 2);
INSERT INTO `order_detail` VALUES (21, 'Redis', 2, '2880', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561400356, '15614003561079', 2);
INSERT INTO `order_detail` VALUES (22, 'Jimi', 25, '2970', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561401156, '15614011551032', 2);
INSERT INTO `order_detail` VALUES (23, 'Jimi', 7, '2970', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561401156, '15614011551032', 2);
INSERT INTO `order_detail` VALUES (24, 'Redis', 2, '2970', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561401156, '15614011551032', 2);
INSERT INTO `order_detail` VALUES (25, 'Jimi', 25, '3060', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561401243, '15614012431052', 2);
INSERT INTO `order_detail` VALUES (26, 'Jimi', 7, '3060', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561401243, '15614012431052', 2);
INSERT INTO `order_detail` VALUES (27, 'Redis', 2, '3060', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561401243, '15614012431052', 2);
INSERT INTO `order_detail` VALUES (28, 'uiouio', 1, '3060', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561401243, '15614012431052', 2);
INSERT INTO `order_detail` VALUES (29, 'Jimi', 26, '3150', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561405418, '15614054181056', 2);
INSERT INTO `order_detail` VALUES (30, 'Jimi', 7, '3150', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561405418, '15614054181056', 2);
INSERT INTO `order_detail` VALUES (31, 'Redis', 2, '3150', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561405418, '15614054181056', 2);
INSERT INTO `order_detail` VALUES (32, 'uiouio', 1, '3150', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561405418, '15614054181056', 2);
INSERT INTO `order_detail` VALUES (33, 'Jimi', 26, '3150', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561405531, '15614055301012', 2);
INSERT INTO `order_detail` VALUES (34, 'Jimi', 7, '3150', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561405531, '15614055301012', 2);
INSERT INTO `order_detail` VALUES (35, 'Redis', 2, '3150', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561405531, '15614055301012', 2);
INSERT INTO `order_detail` VALUES (36, 'uiouio', 1, '3150', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561405531, '15614055301012', 2);
INSERT INTO `order_detail` VALUES (37, 'Jimi', 27, '3240', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561405608, '15614056081098', 2);
INSERT INTO `order_detail` VALUES (38, 'Jimi', 7, '3240', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561405608, '15614056081098', 2);
INSERT INTO `order_detail` VALUES (39, 'Redis', 2, '3240', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561405608, '15614056081098', 2);
INSERT INTO `order_detail` VALUES (40, 'uiouio', 1, '3240', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561405608, '15614056081098', 2);
INSERT INTO `order_detail` VALUES (41, 'Jimi', 28, '3330', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561405643, '15614056421086', 2);
INSERT INTO `order_detail` VALUES (42, 'Jimi', 7, '3330', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561405643, '15614056421086', 2);
INSERT INTO `order_detail` VALUES (43, 'Redis', 2, '3330', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561405643, '15614056421086', 2);
INSERT INTO `order_detail` VALUES (44, 'uiouio', 1, '3330', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561405643, '15614056421086', 2);
INSERT INTO `order_detail` VALUES (45, 'Jimi', 29, '3420', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561405782, '15614057821087', 2);
INSERT INTO `order_detail` VALUES (46, 'Jimi', 7, '3420', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561405782, '15614057821087', 2);
INSERT INTO `order_detail` VALUES (47, 'Redis', 2, '3420', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561405782, '15614057821087', 2);
INSERT INTO `order_detail` VALUES (48, 'uiouio', 1, '3420', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561405782, '15614057821087', 2);
INSERT INTO `order_detail` VALUES (49, 'Jimi', 30, '3510', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561405953, '15614059531081', 2);
INSERT INTO `order_detail` VALUES (50, 'Jimi', 7, '3510', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561405953, '15614059531081', 2);
INSERT INTO `order_detail` VALUES (51, 'Redis', 2, '3510', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561405953, '15614059531081', 2);
INSERT INTO `order_detail` VALUES (52, 'uiouio', 1, '3510', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561405953, '15614059531081', 2);
INSERT INTO `order_detail` VALUES (53, 'Jimi', 31, '3600', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561429253, '15614292531104', 1);
INSERT INTO `order_detail` VALUES (54, 'Jimi', 7, '3600', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561429253, '15614292531104', 1);
INSERT INTO `order_detail` VALUES (55, 'Redis', 2, '3600', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561429253, '15614292531104', 1);
INSERT INTO `order_detail` VALUES (56, 'uiouio', 1, '3600', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561429253, '15614292531104', 1);
INSERT INTO `order_detail` VALUES (57, 'Jimi', 32, '3690', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561429639, '15614296391075', 1);
INSERT INTO `order_detail` VALUES (58, 'Jimi', 7, '3690', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561429639, '15614296391075', 1);
INSERT INTO `order_detail` VALUES (59, 'Redis', 2, '3690', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561429639, '15614296391075', 1);
INSERT INTO `order_detail` VALUES (60, 'uiouio', 1, '3690', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561429639, '15614296391075', 1);
INSERT INTO `order_detail` VALUES (61, 'Jimi', 33, '3780', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561432780, '15614327801025', 1);
INSERT INTO `order_detail` VALUES (62, 'Jimi', 7, '3780', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561432780, '15614327801025', 1);
INSERT INTO `order_detail` VALUES (63, 'Redis', 2, '3780', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561432780, '15614327801025', 1);
INSERT INTO `order_detail` VALUES (64, 'uiouio', 1, '3780', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561432780, '15614327801025', 1);
INSERT INTO `order_detail` VALUES (65, 'Jimi', 34, '3870', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561432892, '15614328921070', 1);
INSERT INTO `order_detail` VALUES (66, 'Jimi', 7, '3870', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561432892, '15614328921070', 1);
INSERT INTO `order_detail` VALUES (67, 'Redis', 2, '3870', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561432892, '15614328921070', 1);
INSERT INTO `order_detail` VALUES (68, 'uiouio', 1, '3870', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561432892, '15614328921070', 1);
INSERT INTO `order_detail` VALUES (69, 'Jimi', 34, '3950', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561432910, '15614329101023', 1);
INSERT INTO `order_detail` VALUES (70, 'Jimi', 8, '3950', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561432910, '15614329101023', 1);
INSERT INTO `order_detail` VALUES (71, 'Redis', 2, '3950', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561432910, '15614329101023', 1);
INSERT INTO `order_detail` VALUES (72, 'uiouio', 1, '3950', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561432910, '15614329101023', 1);
INSERT INTO `order_detail` VALUES (73, 'Jimi', 35, '4040', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561443325, '15614433251006', 1);
INSERT INTO `order_detail` VALUES (74, 'Jimi', 8, '4040', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561443325, '15614433251006', 1);
INSERT INTO `order_detail` VALUES (75, 'Redis', 2, '4040', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561443325, '15614433251006', 1);
INSERT INTO `order_detail` VALUES (76, 'uiouio', 1, '4040', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561443325, '15614433251006', 1);
INSERT INTO `order_detail` VALUES (77, 'Jimi', 36, '4130', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561447926, '15614479261038', 1);
INSERT INTO `order_detail` VALUES (78, 'Jimi', 8, '4130', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561447926, '15614479261038', 1);
INSERT INTO `order_detail` VALUES (79, 'Redis', 2, '4130', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561447926, '15614479261038', 1);
INSERT INTO `order_detail` VALUES (80, 'uiouio', 1, '4130', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561447926, '15614479261038', 1);
INSERT INTO `order_detail` VALUES (105, 'Jimi', 43, '4760', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561453848, '15614538481030', 1);
INSERT INTO `order_detail` VALUES (106, 'Jimi', 8, '4760', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561453848, '15614538481030', 1);
INSERT INTO `order_detail` VALUES (107, 'Redis', 2, '4760', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561453848, '15614538481030', 1);
INSERT INTO `order_detail` VALUES (108, 'uiouio', 1, '4760', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561453848, '15614538481030', 1);
INSERT INTO `order_detail` VALUES (109, 'Jimi', 43, '4850', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561465951, '15614659511066', 1);
INSERT INTO `order_detail` VALUES (110, 'Jimi', 8, '4850', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561465951, '15614659511066', 1);
INSERT INTO `order_detail` VALUES (111, 'Redis', 2, '4850', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561465951, '15614659511066', 1);
INSERT INTO `order_detail` VALUES (112, 'uiouio', 2, '4850', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561465951, '15614659511066', 1);
INSERT INTO `order_detail` VALUES (113, 'Jimi', 43, '5063', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561725049, '15617250491027', 1);
INSERT INTO `order_detail` VALUES (114, 'Jimi', 8, '5063', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561725049, '15617250491027', 1);
INSERT INTO `order_detail` VALUES (115, 'Redis', 2, '5063', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561725049, '15617250491027', 1);
INSERT INTO `order_detail` VALUES (116, 'uiouio', 2, '5063', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561725049, '15617250491027', 1);
INSERT INTO `order_detail` VALUES (117, 'nainx', 1, '5063', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561725049, '15617250491027', 1);
INSERT INTO `order_detail` VALUES (118, 'Jimi', 44, '5153', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561725134, '15617251341025', 1);
INSERT INTO `order_detail` VALUES (119, 'Jimi', 8, '5153', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561725134, '15617251341025', 1);
INSERT INTO `order_detail` VALUES (120, 'Redis', 2, '5153', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561725134, '15617251341025', 1);
INSERT INTO `order_detail` VALUES (121, 'uiouio', 2, '5153', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561725134, '15617251341025', 1);
INSERT INTO `order_detail` VALUES (122, 'nainx', 1, '5153', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561725134, '15617251341025', 1);
INSERT INTO `order_detail` VALUES (123, 'Jimi', 44, '5233', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561725719, '15617257191089', 1);
INSERT INTO `order_detail` VALUES (124, 'Jimi', 9, '5233', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561725719, '15617257191089', 1);
INSERT INTO `order_detail` VALUES (125, 'Redis', 2, '5233', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561725719, '15617257191089', 1);
INSERT INTO `order_detail` VALUES (126, 'uiouio', 2, '5233', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561725719, '15617257191089', 1);
INSERT INTO `order_detail` VALUES (127, 'nainx', 1, '5233', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561725719, '15617257191089', 1);
INSERT INTO `order_detail` VALUES (128, 'Jimi', 44, '5233', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561725723, '15617257231043', 1);
INSERT INTO `order_detail` VALUES (129, 'Jimi', 9, '5233', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561725723, '15617257231043', 1);
INSERT INTO `order_detail` VALUES (130, 'Redis', 2, '5233', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561725723, '15617257231043', 1);
INSERT INTO `order_detail` VALUES (131, 'uiouio', 2, '5233', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561725723, '15617257231043', 1);
INSERT INTO `order_detail` VALUES (132, 'nainx', 1, '5233', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561725723, '15617257231043', 1);
INSERT INTO `order_detail` VALUES (133, 'Jimi', 44, '5313', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561725998, '15617259981053', 1);
INSERT INTO `order_detail` VALUES (134, 'Jimi', 9, '5313', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561725998, '15617259981053', 1);
INSERT INTO `order_detail` VALUES (135, 'Redis', 3, '5313', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561725998, '15617259981053', 1);
INSERT INTO `order_detail` VALUES (136, 'uiouio', 2, '5313', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561725998, '15617259981053', 1);
INSERT INTO `order_detail` VALUES (137, 'nainx', 1, '5313', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561725998, '15617259981053', 1);
INSERT INTO `order_detail` VALUES (138, 'Jimi', 44, '5403', 'goods/9rT6YWSZUXLB5iQJsgS348jawqpNwRXbtWevz5aQ.jpeg', 1561726266, '15617262661021', 1);
INSERT INTO `order_detail` VALUES (139, 'Jimi', 9, '5403', 'goods/UztwbwUdP9AKmD1cPsN1FaVQGqGha6Ka2N2HQlFn.jpeg', 1561726266, '15617262661021', 1);
INSERT INTO `order_detail` VALUES (140, 'Redis', 3, '5403', 'goods/llluHEu7l6IlUYLNL6tAILxkh4dAHvzPkyXYVr5q.jpeg', 1561726266, '15617262661021', 1);
INSERT INTO `order_detail` VALUES (141, 'uiouio', 3, '5403', 'goods/gKhto5nzdWw76kkvpeQXP4Bfw5iy8wTfrBNHMYgn.jpeg', 1561726266, '15617262661021', 1);
INSERT INTO `order_detail` VALUES (142, 'nainx', 1, '5403', 'goods/b7JoMXzLfpi3i50ofLiD3XB8YROKcioeSRazDmTi.jpeg', 1561726266, '15617262661021', 1);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张三');
INSERT INTO `student` VALUES (2, '张三');
INSERT INTO `student` VALUES (3, '李四');
INSERT INTO `student` VALUES (4, '李四');
INSERT INTO `student` VALUES (5, '王五');
INSERT INTO `student` VALUES (6, '王五');
INSERT INTO `student` VALUES (8, '999');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '1 代表普通用户 2代表管理员',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '202cb962ac59075b964b07152d234b70', '1', NULL, NULL);
INSERT INTO `user` VALUES (2, 'admins', '202cb962ac59075b964b07152d234b70', '1', NULL, NULL);
INSERT INTO `user` VALUES (3, 'admin3', '202cb962ac59075b964b07152d234b70', '1', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
