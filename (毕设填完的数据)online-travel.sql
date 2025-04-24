/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : online-travel

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 17/04/2025 23:04:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for evaluations
-- ----------------------------
DROP TABLE IF EXISTS `evaluations`;
CREATE TABLE `evaluations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int NULL DEFAULT NULL COMMENT '父级评论ID',
  `commenter_id` int NULL DEFAULT NULL COMMENT '评论者ID',
  `replier_id` int NULL DEFAULT NULL COMMENT '回复者ID',
  `content_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '内容类型',
  `content_id` int NULL DEFAULT NULL COMMENT '内容ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '评论内容',
  `upvote_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '点赞列表，以\",\"分割',
  `create_time` datetime NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of evaluations
-- ----------------------------
INSERT INTO `evaluations` VALUES (133, NULL, 23, NULL, 'SCENIC', 14, '真不错，值得来玩', NULL, '2025-04-17 16:53:28');
INSERT INTO `evaluations` VALUES (134, NULL, 23, NULL, 'SCENIC', 13, '这里夜景真好看！！！！！', NULL, '2025-04-17 16:53:58');
INSERT INTO `evaluations` VALUES (135, NULL, 23, NULL, 'SCENIC', 12, '这里空气真好！', NULL, '2025-04-17 16:55:28');
INSERT INTO `evaluations` VALUES (136, NULL, 23, NULL, 'SCENIC', 10, '一眼长城望不尽！', NULL, '2025-04-17 16:56:47');
INSERT INTO `evaluations` VALUES (137, NULL, 23, NULL, 'SCENIC', 9, '还行，没有想象中那么好玩！', NULL, '2025-04-17 16:59:05');
INSERT INTO `evaluations` VALUES (138, NULL, 23, NULL, 'SCENIC', 8, '历史的传承', '23', '2025-04-17 17:00:14');
INSERT INTO `evaluations` VALUES (139, NULL, 23, NULL, 'SCENIC', 7, '消费太高了，没有想象中的好玩', NULL, '2025-04-17 17:01:28');
INSERT INTO `evaluations` VALUES (140, NULL, 23, NULL, 'SCENIC', 6, '不错的旅游地方', NULL, '2025-04-17 17:05:30');
INSERT INTO `evaluations` VALUES (141, NULL, 23, NULL, 'SCENIC', 2, '大熊猫，我最爱了', '23', '2025-04-17 17:06:42');
INSERT INTO `evaluations` VALUES (142, NULL, 23, NULL, 'SCENIC', 1, '别有一番风味', '23', '2025-04-17 17:09:39');
INSERT INTO `evaluations` VALUES (143, NULL, 23, NULL, 'SCENIC', 17, '你好', NULL, '2025-04-17 20:05:26');
INSERT INTO `evaluations` VALUES (144, 143, 23, NULL, 'SCENIC', 17, '111', '23', '2025-04-17 20:05:31');

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '酒店的主键ID，自增',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '酒店名称',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '酒店封面',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '酒店地址',
  `concat_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '酒店联系电话',
  `vendor_id` int NULL DEFAULT NULL COMMENT '供应商/服务商ID',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (1, '翠湖畔酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '中国四川省阿坝藏族羌族自治州九寨沟县', '18687654321', 14, '2025-04-01 17:23:02');
INSERT INTO `hotel` VALUES (2, '金茂豪华酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '云南省昆明市石林彝族自治县境内', '15711223344', 13, '2025-04-02 17:23:02');
INSERT INTO `hotel` VALUES (3, '银河国际大酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '云南省丽江市古城区', '15822334455', 12, '2025-04-03 17:23:02');
INSERT INTO `hotel` VALUES (4, '晨曦精品酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '中国四川省乐山市峨眉山市', '15933445566', 11, '2025-04-04 17:23:02');
INSERT INTO `hotel` VALUES (5, '天际线酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '湖北省武汉市武昌区蛇山西山坡特1号', '16044556677', 10, '2025-04-05 17:23:02');
INSERT INTO `hotel` VALUES (6, '海景湾度假酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '陕西省西安市临潼区', '16155667733', 9, '2025-04-06 17:23:02');
INSERT INTO `hotel` VALUES (7, '星光灿烂酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '陕西省西安市临潼区秦陵镇', '16266778899', 8, '2025-04-07 17:23:02');
INSERT INTO `hotel` VALUES (8, '花园假日酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '四川省成都市武侯区武侯祠大街231号附1号', '16399887766', 7, '2025-04-08 17:23:02');
INSERT INTO `hotel` VALUES (9, '东方明珠酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '四川省成都市成华区熊猫大道1375号', '16411223344', 6, '2025-04-11 17:23:02');
INSERT INTO `hotel` VALUES (10, '绿洲商务酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '广东省深圳市南山区华侨城深南大道9037号', '16711223344', 5, '2025-04-12 17:23:02');
INSERT INTO `hotel` VALUES (11, '云端漫步酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '广东省广州市番禺区汉溪大道东与长隆地铁大道交汇处', '16822334455', 4, '2025-04-14 17:23:02');
INSERT INTO `hotel` VALUES (12, '古城驿站酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '北京市东城区景山前街4号', '17266778899', 3, '2025-04-15 17:23:02');
INSERT INTO `hotel` VALUES (13, '白雪公主酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '上海市 浦东新区 川沙镇 黄赵路310号', '15687654321', 2, '2025-04-16 17:23:02');
INSERT INTO `hotel` VALUES (14, '温泉山谷酒店', '/api/online-travel-sys/v1.0/file/getFile?fileName=371891f酒店.png', '北京市延庆区八达岭长城景区', '17542254321', 1, '2025-04-17 19:46:20');

-- ----------------------------
-- Table structure for hotel_order_info
-- ----------------------------
DROP TABLE IF EXISTS `hotel_order_info`;
CREATE TABLE `hotel_order_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '酒店预约订单主键ID，自增',
  `room_id` int NULL DEFAULT NULL COMMENT '酒店ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `concat_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人',
  `concat_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `pay_status` tinyint(1) NULL DEFAULT NULL COMMENT '预约订单的状态',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hotel_order_info
-- ----------------------------
INSERT INTO `hotel_order_info` VALUES (166, 11, 23, '李威', '15011223344', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (167, 9, 23, '王丽', '15122334455', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (168, 7, 23, '张涛', '15233445566', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (169, 5, 23, '刘敏', '15344556677', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (170, 19, 22, '杨雪', '15566778899', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (171, 17, 22, '赵强', '15677889900', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (172, 18, 22, '黄杰', '15788990011', 180.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (173, 12, 22, '周霞', '15899001122', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (174, 27, 21, '吴军', '15900112233', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (175, 25, 21, '徐红', '16011223344', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (176, 25, 21, '孙浩', '16122334455', 180.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (177, 22, 21, '胡静', '16233445566', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (178, 115, 12, '林超', '16566778899', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (179, 114, 12, '高波', '16677889900', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (180, 112, 12, '曹婷', '16788990011', 180.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (181, 111, 12, '马辉', '16899001122', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (182, 35, 11, '苏丽', '16900112233', 180.00, 1, '2025-04-01 22:20:20', '2025-04-01 22:19:33');
INSERT INTO `hotel_order_info` VALUES (183, 34, 11, '赵强', '15344556677', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (184, 31, 11, '黄杰', '15566778899', 90.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (185, 29, 11, '周霞', '15677889900', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (186, 28, 11, '吴军', '15788990011', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (187, 43, 10, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (188, 43, 10, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (189, 43, 10, '刘敏', '15566778899', 180.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (190, 42, 10, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (191, 51, 9, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (192, 51, 9, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (193, 46, 9, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (194, 49, 9, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (195, 58, 8, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (196, 53, 8, '张涛', '16900112233', 90.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (197, 53, 8, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (198, 56, 8, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (199, 61, 7, '王丽', '1689900112', 90.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (200, 66, 7, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (201, 66, 7, '刘敏', '15566778899', 180.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (202, 61, 7, '杨雪', '15677889900', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (203, 74, 6, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (204, 74, 6, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (205, 69, 6, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (206, 72, 6, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (207, 83, 5, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (208, 83, 5, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (209, 77, 5, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (210, 80, 5, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (211, 91, 4, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (212, 87, 4, '张涛', '16900112233', 90.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (213, 86, 4, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (214, 90, 4, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (215, 99, 3, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (216, 96, 3, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (217, 93, 3, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (218, 94, 3, '杨雪', '15677889900', 90.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `hotel_order_info` VALUES (219, 107, 2, '王丽', '1689900112', 180.00, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `hotel_order_info` VALUES (220, 107, 2, '张涛', '16900112233', 180.00, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `hotel_order_info` VALUES (221, 103, 2, '刘敏', '15566778899', 90.00, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `hotel_order_info` VALUES (222, 104, 2, '杨雪', '15677889900', 180.00, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');

-- ----------------------------
-- Table structure for hotel_room
-- ----------------------------
DROP TABLE IF EXISTS `hotel_room`;
CREATE TABLE `hotel_room`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '酒店房间主键ID，自增',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '房间号',
  `hotel_id` int NULL DEFAULT NULL COMMENT '酒店ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `discount` double(10, 0) NULL DEFAULT NULL COMMENT '折扣',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '房间描述',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hotel_room
-- ----------------------------
INSERT INTO `hotel_room` VALUES (4, 'A1-100', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (5, ' B1-100', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (6, 'C1-100', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (7, 'D1-100', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (8, 'A2-200', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (9, 'B2-200', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (10, 'C2-200', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (11, 'D2-200', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (12, 'A1-100', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (13, ' B1-100', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (14, 'C1-100', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (15, 'D1-100', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (16, 'A2-200', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (17, 'B2-200', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (18, 'C2-200', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (19, 'D2-200', 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (20, 'A1-100', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (21, ' B1-100', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (22, 'C1-100', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (23, 'D1-100', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (24, 'A2-200', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (25, 'B2-200', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (26, 'C2-200', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (27, 'D2-200', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (28, 'A1-100', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (29, ' B1-100', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (30, 'C1-100', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (31, 'D1-100', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (32, 'A2-200', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (33, 'B2-200', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (34, 'C2-200', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (35, 'D2-200', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (36, 'A1-100', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (37, ' B1-100', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (38, 'C1-100', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (39, 'D1-100', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (40, 'A2-200', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (41, 'B2-200', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (42, 'C2-200', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (43, 'D2-200', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (44, 'A1-100', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (45, ' B1-100', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (46, 'C1-100', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (47, 'D1-100', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (48, 'A2-200', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (49, 'B2-200', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (50, 'C2-200', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (51, 'D2-200', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (52, 'A1-100', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (53, ' B1-100', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (54, 'C1-100', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (55, 'D1-100', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (56, 'A2-200', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (57, 'B2-200', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (58, 'C2-200', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (59, 'D2-200', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (60, 'A1-100', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (61, ' B1-100', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (62, 'C1-100', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (63, 'D1-100', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (64, 'A2-200', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (65, 'B2-200', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (66, 'C2-200', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (67, 'D2-200', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (68, 'A1-100', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (69, ' B1-100', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (70, 'C1-100', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (71, 'D1-100', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (72, 'A2-200', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (73, 'B2-200', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (74, 'C2-200', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (75, 'D2-200', 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (76, 'A1-100', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (77, ' B1-100', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (78, 'C1-100', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (79, 'D1-100', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (80, 'A2-200', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (81, 'B2-200', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (82, 'C2-200', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (83, 'D2-200', 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (84, 'A1-100', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (85, ' B1-100', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (86, 'C1-100', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (87, 'D1-100', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (88, 'A2-200', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (89, 'B2-200', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (90, 'C2-200', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (91, 'D2-200', 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (92, 'A1-100', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (93, ' B1-100', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (94, 'C1-100', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (95, 'D1-100', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (96, 'A2-200', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (97, 'B2-200', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (98, 'C2-200', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (99, 'D2-200', 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (100, 'A1-100', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (101, ' B1-100', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (102, 'C1-100', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (103, 'D1-100', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (104, 'A2-200', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (105, 'B2-200', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (106, 'C2-200', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (107, 'D2-200', 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');
INSERT INTO `hotel_room` VALUES (108, 'A1-100', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-10 17:24:24');
INSERT INTO `hotel_room` VALUES (109, ' B1-100', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-11 17:33:00');
INSERT INTO `hotel_room` VALUES (110, 'C1-100', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-12 17:54:30');
INSERT INTO `hotel_room` VALUES (111, 'D1-100', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 100.00, 9, '单人房', '2025-04-13 17:55:31');
INSERT INTO `hotel_room` VALUES (112, 'A2-200', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-14 17:56:20');
INSERT INTO `hotel_room` VALUES (113, 'B2-200', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-15 17:56:40');
INSERT INTO `hotel_room` VALUES (114, 'C2-200', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-16 17:57:56');
INSERT INTO `hotel_room` VALUES (115, 'D2-200', 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=7ff5a6a房间.png', 200.00, 9, '双人房', '2025-04-17 17:58:23');

-- ----------------------------
-- Table structure for hotel_room_bed
-- ----------------------------
DROP TABLE IF EXISTS `hotel_room_bed`;
CREATE TABLE `hotel_room_bed`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '酒店房间床位主键ID，自增',
  `number` int NULL DEFAULT NULL COMMENT '床位号',
  `room_id` int NULL DEFAULT NULL COMMENT '房间ID',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '床位是否可用状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hotel_room_bed
-- ----------------------------
INSERT INTO `hotel_room_bed` VALUES (30, 1, 111, 1, '2025-04-17 19:58:57');
INSERT INTO `hotel_room_bed` VALUES (31, 1, 109, 1, '2025-04-17 19:59:06');
INSERT INTO `hotel_room_bed` VALUES (32, 1, 108, 1, '2025-04-17 19:59:11');
INSERT INTO `hotel_room_bed` VALUES (33, 1, 4, 1, '2025-04-17 19:59:48');
INSERT INTO `hotel_room_bed` VALUES (34, 1, 5, 1, '2025-04-17 19:59:52');
INSERT INTO `hotel_room_bed` VALUES (35, 1, 6, 1, '2025-04-17 19:59:59');
INSERT INTO `hotel_room_bed` VALUES (36, 1, 7, 1, '2025-04-17 20:00:03');
INSERT INTO `hotel_room_bed` VALUES (38, 1, 8, 1, '2025-04-17 20:00:14');
INSERT INTO `hotel_room_bed` VALUES (39, 2, 8, 1, '2025-04-17 20:00:19');
INSERT INTO `hotel_room_bed` VALUES (40, 1, 9, 1, '2025-04-17 20:00:27');
INSERT INTO `hotel_room_bed` VALUES (41, 2, 9, 1, '2025-04-17 20:00:34');
INSERT INTO `hotel_room_bed` VALUES (42, 1, 10, 1, '2025-04-17 20:00:54');
INSERT INTO `hotel_room_bed` VALUES (43, 2, 10, 1, '2025-04-17 20:00:59');
INSERT INTO `hotel_room_bed` VALUES (44, 1, 11, 1, '2025-04-17 20:01:04');
INSERT INTO `hotel_room_bed` VALUES (45, 2, 11, 1, '2025-04-17 20:01:07');
INSERT INTO `hotel_room_bed` VALUES (46, 1, 12, 1, '2025-04-17 20:18:30');
INSERT INTO `hotel_room_bed` VALUES (47, 1, 13, 1, '2025-04-17 20:18:35');
INSERT INTO `hotel_room_bed` VALUES (48, 1, 14, 1, '2025-04-17 20:18:41');
INSERT INTO `hotel_room_bed` VALUES (49, 1, 15, 1, '2025-04-17 20:18:47');
INSERT INTO `hotel_room_bed` VALUES (50, 1, 16, 1, '2025-04-17 20:18:56');
INSERT INTO `hotel_room_bed` VALUES (51, 2, 16, 1, '2025-04-17 20:18:58');
INSERT INTO `hotel_room_bed` VALUES (52, 1, 17, 1, '2025-04-17 20:19:02');
INSERT INTO `hotel_room_bed` VALUES (53, 2, 17, 1, '2025-04-17 20:19:05');
INSERT INTO `hotel_room_bed` VALUES (54, 1, 18, 1, '2025-04-17 20:19:10');
INSERT INTO `hotel_room_bed` VALUES (55, 2, 18, 1, '2025-04-17 20:19:15');
INSERT INTO `hotel_room_bed` VALUES (56, 1, 19, 1, '2025-04-17 20:19:21');
INSERT INTO `hotel_room_bed` VALUES (57, 2, 19, 1, '2025-04-17 20:19:24');
INSERT INTO `hotel_room_bed` VALUES (58, 1, 20, 1, '2025-04-17 20:19:34');
INSERT INTO `hotel_room_bed` VALUES (59, 1, 21, 1, '2025-04-17 20:19:38');
INSERT INTO `hotel_room_bed` VALUES (60, 1, 22, 1, '2025-04-17 20:19:42');
INSERT INTO `hotel_room_bed` VALUES (61, 1, 23, 1, '2025-04-17 20:19:47');
INSERT INTO `hotel_room_bed` VALUES (63, 1, 24, 1, '2025-04-17 20:19:53');
INSERT INTO `hotel_room_bed` VALUES (64, 2, 24, 1, '2025-04-17 20:19:55');
INSERT INTO `hotel_room_bed` VALUES (65, 1, 25, 1, '2025-04-17 20:20:01');
INSERT INTO `hotel_room_bed` VALUES (66, 2, 25, 1, '2025-04-17 20:20:03');
INSERT INTO `hotel_room_bed` VALUES (67, 1, 26, 1, '2025-04-17 20:20:23');
INSERT INTO `hotel_room_bed` VALUES (68, 2, 26, 1, '2025-04-17 20:20:26');
INSERT INTO `hotel_room_bed` VALUES (69, 1, 27, 1, '2025-04-17 20:20:30');
INSERT INTO `hotel_room_bed` VALUES (70, 2, 27, 1, '2025-04-17 20:20:33');
INSERT INTO `hotel_room_bed` VALUES (71, 1, 29, 1, '2025-04-17 20:20:37');
INSERT INTO `hotel_room_bed` VALUES (73, 1, 28, 1, '2025-04-17 20:20:46');
INSERT INTO `hotel_room_bed` VALUES (74, 1, 30, 1, '2025-04-17 20:20:53');
INSERT INTO `hotel_room_bed` VALUES (75, 1, 31, 1, '2025-04-17 20:20:57');
INSERT INTO `hotel_room_bed` VALUES (76, 1, 32, 1, '2025-04-17 20:21:04');
INSERT INTO `hotel_room_bed` VALUES (77, 2, 32, 1, '2025-04-17 20:21:06');
INSERT INTO `hotel_room_bed` VALUES (78, 1, 33, 1, '2025-04-17 20:21:13');
INSERT INTO `hotel_room_bed` VALUES (79, 2, 33, 1, '2025-04-17 20:21:17');
INSERT INTO `hotel_room_bed` VALUES (80, 1, 34, 1, '2025-04-17 20:21:21');
INSERT INTO `hotel_room_bed` VALUES (81, 2, 34, 1, '2025-04-17 20:21:23');
INSERT INTO `hotel_room_bed` VALUES (82, 1, 35, 1, '2025-04-17 20:21:26');
INSERT INTO `hotel_room_bed` VALUES (83, 2, 35, 1, '2025-04-17 20:21:28');
INSERT INTO `hotel_room_bed` VALUES (84, 1, 36, 1, '2025-04-17 20:21:34');
INSERT INTO `hotel_room_bed` VALUES (85, 1, 37, 1, '2025-04-17 20:21:38');
INSERT INTO `hotel_room_bed` VALUES (86, 1, 38, 1, '2025-04-17 20:21:42');
INSERT INTO `hotel_room_bed` VALUES (87, 1, 39, 1, '2025-04-17 20:21:46');
INSERT INTO `hotel_room_bed` VALUES (89, 1, 40, 1, '2025-04-17 20:21:55');
INSERT INTO `hotel_room_bed` VALUES (90, 2, 40, 1, '2025-04-17 20:22:01');
INSERT INTO `hotel_room_bed` VALUES (91, 1, 41, 1, '2025-04-17 20:22:05');
INSERT INTO `hotel_room_bed` VALUES (92, 2, 41, 1, '2025-04-17 20:22:08');
INSERT INTO `hotel_room_bed` VALUES (93, 1, 42, 1, '2025-04-17 20:22:12');
INSERT INTO `hotel_room_bed` VALUES (94, 2, 42, 1, '2025-04-17 20:22:15');
INSERT INTO `hotel_room_bed` VALUES (95, 1, 43, 1, '2025-04-17 20:22:19');
INSERT INTO `hotel_room_bed` VALUES (96, 2, 43, 1, '2025-04-17 20:22:22');
INSERT INTO `hotel_room_bed` VALUES (97, 1, 44, 1, '2025-04-17 20:22:25');
INSERT INTO `hotel_room_bed` VALUES (98, 1, 45, 1, '2025-04-17 20:22:28');
INSERT INTO `hotel_room_bed` VALUES (99, 1, 46, 1, '2025-04-17 20:22:34');
INSERT INTO `hotel_room_bed` VALUES (100, 1, 47, 1, '2025-04-17 20:22:37');
INSERT INTO `hotel_room_bed` VALUES (101, 1, 48, 1, '2025-04-17 20:22:41');
INSERT INTO `hotel_room_bed` VALUES (102, 2, 48, 1, '2025-04-17 20:22:45');
INSERT INTO `hotel_room_bed` VALUES (103, 1, 49, 1, '2025-04-17 20:22:50');
INSERT INTO `hotel_room_bed` VALUES (104, 2, 49, 1, '2025-04-17 20:22:52');
INSERT INTO `hotel_room_bed` VALUES (105, 1, 50, 1, '2025-04-17 20:22:56');
INSERT INTO `hotel_room_bed` VALUES (106, 2, 50, 1, '2025-04-17 20:22:59');
INSERT INTO `hotel_room_bed` VALUES (107, 1, 51, 1, '2025-04-17 20:23:03');
INSERT INTO `hotel_room_bed` VALUES (108, 2, 51, 1, '2025-04-17 20:23:05');
INSERT INTO `hotel_room_bed` VALUES (109, 1, 52, 1, '2025-04-17 20:23:09');
INSERT INTO `hotel_room_bed` VALUES (110, 1, 53, 1, '2025-04-17 20:23:14');
INSERT INTO `hotel_room_bed` VALUES (111, 1, 54, 1, '2025-04-17 20:23:17');
INSERT INTO `hotel_room_bed` VALUES (112, 1, 55, 1, '2025-04-17 20:23:21');
INSERT INTO `hotel_room_bed` VALUES (113, 1, 56, 1, '2025-04-17 20:23:27');
INSERT INTO `hotel_room_bed` VALUES (114, 2, 56, 1, '2025-04-17 20:23:29');
INSERT INTO `hotel_room_bed` VALUES (115, 1, 57, 1, '2025-04-17 20:23:33');
INSERT INTO `hotel_room_bed` VALUES (116, 2, 57, 1, '2025-04-17 20:23:36');
INSERT INTO `hotel_room_bed` VALUES (117, 1, 58, 1, '2025-04-17 20:23:40');
INSERT INTO `hotel_room_bed` VALUES (118, 2, 58, 1, '2025-04-17 20:23:42');
INSERT INTO `hotel_room_bed` VALUES (119, 1, 59, 1, '2025-04-17 20:23:46');
INSERT INTO `hotel_room_bed` VALUES (120, 2, 59, 1, '2025-04-17 20:23:48');
INSERT INTO `hotel_room_bed` VALUES (121, 1, 60, 1, '2025-04-17 20:23:52');
INSERT INTO `hotel_room_bed` VALUES (123, 1, 61, 1, '2025-04-17 20:24:05');
INSERT INTO `hotel_room_bed` VALUES (124, 1, 62, 1, '2025-04-17 20:24:09');
INSERT INTO `hotel_room_bed` VALUES (125, 1, 63, 1, '2025-04-17 20:24:12');
INSERT INTO `hotel_room_bed` VALUES (126, 1, 64, 1, '2025-04-17 20:24:16');
INSERT INTO `hotel_room_bed` VALUES (127, 2, 64, 1, '2025-04-17 20:24:18');
INSERT INTO `hotel_room_bed` VALUES (128, 1, 65, 1, '2025-04-17 20:24:22');
INSERT INTO `hotel_room_bed` VALUES (129, 2, 65, 1, '2025-04-17 20:24:24');
INSERT INTO `hotel_room_bed` VALUES (130, 1, 66, 1, '2025-04-17 20:24:35');
INSERT INTO `hotel_room_bed` VALUES (131, 2, 66, 1, '2025-04-17 20:24:37');
INSERT INTO `hotel_room_bed` VALUES (132, 1, 67, 1, '2025-04-17 20:24:40');
INSERT INTO `hotel_room_bed` VALUES (133, 2, 67, 1, '2025-04-17 20:24:43');
INSERT INTO `hotel_room_bed` VALUES (134, 1, 68, 1, '2025-04-17 20:24:47');
INSERT INTO `hotel_room_bed` VALUES (135, 1, 69, 1, '2025-04-17 20:24:51');
INSERT INTO `hotel_room_bed` VALUES (136, 1, 70, 1, '2025-04-17 20:24:57');
INSERT INTO `hotel_room_bed` VALUES (137, 1, 71, 1, '2025-04-17 20:25:02');
INSERT INTO `hotel_room_bed` VALUES (138, 1, 72, 1, '2025-04-17 20:25:07');
INSERT INTO `hotel_room_bed` VALUES (140, 1, 73, 1, '2025-04-17 20:25:15');
INSERT INTO `hotel_room_bed` VALUES (141, 2, 73, 1, '2025-04-17 20:25:19');
INSERT INTO `hotel_room_bed` VALUES (142, 1, 74, 1, '2025-04-17 20:25:23');
INSERT INTO `hotel_room_bed` VALUES (143, 2, 74, 1, '2025-04-17 20:25:25');
INSERT INTO `hotel_room_bed` VALUES (144, 1, 75, 1, '2025-04-17 20:25:30');
INSERT INTO `hotel_room_bed` VALUES (145, 2, 75, 1, '2025-04-17 20:25:33');
INSERT INTO `hotel_room_bed` VALUES (146, 1, 76, 1, '2025-04-17 20:25:39');
INSERT INTO `hotel_room_bed` VALUES (147, 1, 77, 1, '2025-04-17 20:25:43');
INSERT INTO `hotel_room_bed` VALUES (148, 1, 78, 1, '2025-04-17 20:25:47');
INSERT INTO `hotel_room_bed` VALUES (149, 1, 79, 1, '2025-04-17 20:25:50');
INSERT INTO `hotel_room_bed` VALUES (150, 1, 80, 1, '2025-04-17 20:25:54');
INSERT INTO `hotel_room_bed` VALUES (151, 2, 80, 1, '2025-04-17 20:26:02');
INSERT INTO `hotel_room_bed` VALUES (152, 1, 81, 1, '2025-04-17 20:26:06');
INSERT INTO `hotel_room_bed` VALUES (153, 2, 81, 1, '2025-04-17 20:26:09');
INSERT INTO `hotel_room_bed` VALUES (154, 1, 83, 1, '2025-04-17 20:26:14');
INSERT INTO `hotel_room_bed` VALUES (155, 2, 83, 1, '2025-04-17 20:26:16');
INSERT INTO `hotel_room_bed` VALUES (156, 1, 82, 1, '2025-04-17 20:26:20');
INSERT INTO `hotel_room_bed` VALUES (157, 2, 82, 1, '2025-04-17 20:26:23');
INSERT INTO `hotel_room_bed` VALUES (158, 1, 84, 1, '2025-04-17 20:26:28');
INSERT INTO `hotel_room_bed` VALUES (160, 1, 85, 1, '2025-04-17 20:26:34');
INSERT INTO `hotel_room_bed` VALUES (162, 1, 86, 1, '2025-04-17 20:26:55');
INSERT INTO `hotel_room_bed` VALUES (163, 1, 87, 1, '2025-04-17 20:26:58');
INSERT INTO `hotel_room_bed` VALUES (164, 1, 88, 1, '2025-04-17 20:27:02');
INSERT INTO `hotel_room_bed` VALUES (165, 2, 88, 1, '2025-04-17 20:27:06');
INSERT INTO `hotel_room_bed` VALUES (166, 1, 89, 1, '2025-04-17 20:27:09');
INSERT INTO `hotel_room_bed` VALUES (167, 2, 89, 1, '2025-04-17 20:27:11');
INSERT INTO `hotel_room_bed` VALUES (168, 1, 90, 1, '2025-04-17 20:27:15');
INSERT INTO `hotel_room_bed` VALUES (169, 2, 90, 1, '2025-04-17 20:27:16');
INSERT INTO `hotel_room_bed` VALUES (170, 1, 91, 1, '2025-04-17 20:27:20');
INSERT INTO `hotel_room_bed` VALUES (171, 2, 91, 1, '2025-04-17 20:27:22');
INSERT INTO `hotel_room_bed` VALUES (172, 1, 92, 1, '2025-04-17 20:27:30');
INSERT INTO `hotel_room_bed` VALUES (174, 1, 93, 1, '2025-04-17 20:27:36');
INSERT INTO `hotel_room_bed` VALUES (176, 1, 94, 1, '2025-04-17 20:27:50');
INSERT INTO `hotel_room_bed` VALUES (177, 1, 95, 1, '2025-04-17 20:27:53');
INSERT INTO `hotel_room_bed` VALUES (178, 1, 96, 1, '2025-04-17 20:28:00');
INSERT INTO `hotel_room_bed` VALUES (179, 2, 96, 1, '2025-04-17 20:28:05');
INSERT INTO `hotel_room_bed` VALUES (180, 1, 97, 1, '2025-04-17 20:28:08');
INSERT INTO `hotel_room_bed` VALUES (181, 2, 97, 1, '2025-04-17 20:28:10');
INSERT INTO `hotel_room_bed` VALUES (182, 1, 98, 1, '2025-04-17 20:28:14');
INSERT INTO `hotel_room_bed` VALUES (183, 2, 98, 1, '2025-04-17 20:28:17');
INSERT INTO `hotel_room_bed` VALUES (184, 1, 99, 1, '2025-04-17 20:28:21');
INSERT INTO `hotel_room_bed` VALUES (185, 2, 99, 1, '2025-04-17 20:28:23');
INSERT INTO `hotel_room_bed` VALUES (186, 1, 100, 1, '2025-04-17 20:28:28');
INSERT INTO `hotel_room_bed` VALUES (187, 1, 101, 1, '2025-04-17 20:28:35');
INSERT INTO `hotel_room_bed` VALUES (188, 1, 102, 1, '2025-04-17 20:28:42');
INSERT INTO `hotel_room_bed` VALUES (189, 1, 103, 1, '2025-04-17 20:28:55');
INSERT INTO `hotel_room_bed` VALUES (191, 1, 104, 1, '2025-04-17 20:29:08');
INSERT INTO `hotel_room_bed` VALUES (192, 2, 104, 1, '2025-04-17 20:29:10');
INSERT INTO `hotel_room_bed` VALUES (193, 1, 105, 1, '2025-04-17 20:29:14');
INSERT INTO `hotel_room_bed` VALUES (194, 2, 105, 1, '2025-04-17 20:29:15');
INSERT INTO `hotel_room_bed` VALUES (195, 1, 106, 1, '2025-04-17 20:29:22');
INSERT INTO `hotel_room_bed` VALUES (196, 2, 106, 1, '2025-04-17 20:29:24');
INSERT INTO `hotel_room_bed` VALUES (197, 1, 107, 1, '2025-04-17 20:29:28');
INSERT INTO `hotel_room_bed` VALUES (198, 2, 107, 1, '2025-04-17 20:29:31');
INSERT INTO `hotel_room_bed` VALUES (199, 1, 110, 1, '2025-04-17 20:29:44');
INSERT INTO `hotel_room_bed` VALUES (200, 1, 112, 1, '2025-04-17 20:29:52');
INSERT INTO `hotel_room_bed` VALUES (201, 2, 112, 1, '2025-04-17 20:29:54');
INSERT INTO `hotel_room_bed` VALUES (202, 1, 113, 1, '2025-04-17 20:29:57');
INSERT INTO `hotel_room_bed` VALUES (203, 2, 113, 1, '2025-04-17 20:30:00');
INSERT INTO `hotel_room_bed` VALUES (204, 1, 114, 1, '2025-04-17 20:30:04');
INSERT INTO `hotel_room_bed` VALUES (205, 2, 114, 1, '2025-04-17 20:30:06');
INSERT INTO `hotel_room_bed` VALUES (206, 1, 115, 1, '2025-04-17 20:30:09');
INSERT INTO `hotel_room_bed` VALUES (207, 2, 115, 1, '2025-04-17 20:30:12');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '公告信息主键ID，自增',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `content` longblob NULL COMMENT '内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '节假日促销活动邀请', 0x3C703E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E20E4BA94E4B880E58AB3E58AA8E88A82E58DB3E5B086E588B0E69DA5EFBC8CE68891E4BBACE5B086E68EA8E587BAE2809CE4BA94E4B880E789B9E683A0E5A4A7E4BF83E2809DE6B4BBE58AA8EFBC81E6ADA4E6ACA1E6B4BBE58AA8E9A284E8AEA1E590B8E5BC95E5A4A7E9878FE794A8E688B7E58F82E4B88EEFBC8CE698AFE682A8E68F90E58D87E99480E9878FE79A84E7BB9DE4BDB3E69CBAE4BC9AE38082E8AFB7E682A8E4BA8E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223E3C7374726F6E673E34E69C883230E697A53C2F7374726F6E673E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE5898DE59CA8E5908EE58FB0E5AE8CE68890E4BF83E99480E59586E59381E79A84E8AEBEE7BDAEEFBC8CE5B9B6E7A1AEE4BF9DE5BA93E5AD98E58585E8B6B3E38082E5A682E69C89E4BBBBE4BD95E997AEE9A298EFBC8CE8AFB7E99A8FE697B6E88194E7B3BBE8BF90E890A5E59BA2E9989FE380823C2F7370616E3E3C2F703E, '2025-04-09 20:23:23');
INSERT INTO `notice` VALUES (2, '新功能上线提醒', 0x3C703E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E20E68891E4BBACE5BE88E9AB98E585B4E59CB0E9809AE79FA5E682A8EFBC8CE5B9B3E58FB0E696B0E5A29EE4BA86E2809CE699BAE883BDE8AEA2E58D95E7AEA1E79086E2809DE58A9FE883BDEFBC81E6ADA4E58A9FE883BDE58FAFE4BBA5E5B8AEE58AA9E682A8E69BB4E9AB98E69588E59CB0E5A484E79086E8AEA2E58D95E38081E69FA5E79C8BE5AEA2E688B7E8AF84E4BBB7E4BBA5E58F8AE4BC98E58C96E5BA93E5AD98E7AEA1E79086E38082E8AFB7E682A8E5B0BDE5BFABE799BBE5BD95E7B3BBE7BB9FE7869FE68289E696B0E58A9FE883BDE38082E5A682E99C80E6938DE4BD9CE68C87E5AFBCEFBC8CE8AFB7E58F82E88083E5B8AEE58AA9E4B8ADE5BF83E68896E88194E7B3BBE59CA8E7BABFE5AEA2E69C8DE380823C2F7370616E3E3C2F703E, '2025-04-06 20:23:23');
INSERT INTO `notice` VALUES (3, '系统升级通知', 0x3C703E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E20E4B8BAE4BA86E68F90E58D87E69C8DE58AA1E8B4A8E9878FE4B88EE794A8E688B7E4BD93E9AA8CEFBC8CE68891E4BBACE79A84E5B9B3E58FB0E5B086E4BA8E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223E3C7374726F6E673E32303235E5B9B434E69C883235E697A5EFBC88E591A8E4BA94EFBC89E5878CE699A830303A3030E887B330343A30303C2F7374726F6E673E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE8BF9BE8A18CE7B3BBE7BB9FE58D87E7BAA7E7BBB4E68AA4E38082E59CA8E6ADA4E69C9FE997B4EFBC8CE682A8E58FAFE883BDE697A0E6B395E799BBE5BD95E7B3BBE7BB9FE68896E5A484E79086E8AEA2E58D95E38082E8AFB7E68F90E5898DE5819AE5A5BDE79BB8E585B3E5AE89E68E92EFBC8CE4BBA5E5858DE5BDB1E5938DE682A8E79A84E4B89AE58AA1E38082E5A682E69C89E4BBBBE4BD95E79691E997AEEFBC8CE8AFB7E88194E7B3BBE5AEA2E69C8DE783ADE7BABFEFBC9A3430302D3132332D34353637E38082E6849FE8B0A2E682A8E79A84E79086E8A7A3E4B88EE694AFE68C81EFBC813C2F7370616E3E3C2F703E, '2025-04-01 20:23:23');
INSERT INTO `notice` VALUES (4, '数据安全提醒', 0x3C70207374796C653D22746578742D616C69676E3A2073746172743B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E3C62723EE8BF91E69C9FE58F91E78EB0E69C89E983A8E58886E8B4A6E688B7E5AD98E59CA8E5BC82E5B8B8E799BBE5BD95E8A18CE4B8BAEFBC8CE8AFB7E682A8E58AA1E5BF85E6B3A8E6848FE4BBA5E4B88BE587A0E782B9EFBC9A3C2F703E3C6F6C3E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE5AE9AE69C9FE4BFAEE694B9E799BBE5BD95E5AF86E7A081EFBC8CE5B9B6E7A1AEE4BF9DE5AF86E7A081E5A48DE69D82E5BAA6EFBC88E5BBBAE8AEAEE58C85E590ABE5A4A7E5B08FE58699E5AD97E6AF8DE38081E695B0E5AD97E58F8AE789B9E6AE8AE5AD97E7ACA6EFBC89E380823C2F6C693E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE4B88DE8A681E5B086E8B4A6E58FB7E4BFA1E681AFE9808FE99CB2E7BB99E4BB96E4BABAEFBC8CE8B0A8E998B2E99293E9B1BCE7BD91E7AB99E68896E8AF88E9AA97E794B5E8AF9DE380823C2F6C693E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE5A682E58F91E78EB0E5BC82E5B8B8E68385E586B5EFBC8CE8AFB7E7AB8BE58DB3E88194E7B3BBE5B9B3E58FB0E5AEA2E69C8DE586BBE7BB93E8B4A6E58FB7E380823C2F6C693E3C2F6F6C3E3C70207374796C653D22746578742D616C69676E3A2073746172743B223EE68891E4BBACE887B4E58A9BE4BA8EE4BF9DE99A9CE682A8E79A84E8B4A6E688B7E5AE89E585A8EFBC8CE6849FE8B0A2E682A8E79A84E9858DE59088EFBC813C2F703E, '2025-04-17 23:02:11');
INSERT INTO `notice` VALUES (5, '结算周期调整通知', 0x3C703E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E20E4B8BAE68F90E9AB98E8B584E98791E6B581E8BDACE69588E78E87EFBC8CE887AA3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223E3C7374726F6E673E32303235E5B9B435E69C8831E697A5E8B5B73C2F7374726F6E673E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EEFBC8CE5B9B3E58FB0E79A84E7BB93E7AE97E591A8E69C9FE5B086E794B1E58E9FE69DA5E79A84E2809C542B37E2809DE8B083E695B4E4B8BAE2809C542B35E2809DE38082E58DB3E8AEA2E58D95E5AE8CE68890E5908EEFBC8CE6ACBEE9A1B9E5B086E59CA835E4B8AAE5B7A5E4BD9CE697A5E58685E8BDACE585A5E682A8E79A84E7BB91E5AE9AE8B4A6E688B7E38082E5A682E69C89E789B9E6AE8AE68385E586B5E99C80E8A681E68F90E5898DE7BB93E7AE97EFBC8CE8AFB7E68F90E4BAA4E794B3E8AFB7E5B9B6E8AFB4E6988EE58E9FE59BA0E38082E6849FE8B0A2E682A8E79A84E79086E8A7A3E4B88EE694AFE68C81EFBC813C2F7370616E3E3C2F703E, '2025-04-17 23:02:27');
INSERT INTO `notice` VALUES (6, '违规行为处罚通告', 0x3C70207374796C653D22746578742D616C69676E3A2073746172743B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E3C62723EE8BF91E69C9FE5B9B3E58FB0E68EA5E588B0E5A49AE8B5B7E585B3E4BA8EE8999AE58187E5AEA3E4BCA0E38081E4BBB7E6A0BCE6ACBAE8AF88E7AD89E997AEE9A298E79A84E68A95E8AF89E38082E4B8BAE7BBB4E68AA4E585ACE5B9B3E4BAA4E69893E78EAFE5A283EFBC8CE5B9B3E58FB0E5B086E5AFB9E8BF9DE8A784E8A18CE4B8BAE98787E58F96E4BBA5E4B88BE68EAAE696BDEFBC9A3C2F703E3C6F6C3E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE9A696E6ACA1E8BF9DE8A784EFBC9AE8ADA6E5918AE5B9B6E8A681E6B182E695B4E694B9EFBC9B3C2F6C693E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE7ACACE4BA8CE6ACA1E8BF9DE8A784EFBC9AE69A82E5819CE5BA97E993BAE5B195E7A4BAE69D83E9999037E5A4A9EFBC9B3C2F6C693E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE68385E88A82E4B8A5E9878DE88085EFBC9AE6B0B8E4B985E585B3E997ADE5BA97E993BAE5B9B6E8BFBDE7A9B6E6B395E5BE8BE8B4A3E4BBBBE380823C62723EE8AFB7E59084E4BD8DE4BE9BE5BA94E59586E4B8A5E6A0BCE981B5E5AE88E5B9B3E58FB0E8A784E58899EFBC8CE585B1E5908CE890A5E980A0E889AFE5A5BDE79A84E7BB8FE890A5E6B09BE59BB4E380823C62723E3C2F6C693E3C2F6F6C3E, '2025-04-17 23:02:44');
INSERT INTO `notice` VALUES (7, '供应商培训邀约', 0x3C70207374796C653D22746578742D616C69676E3A2073746172743B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E3C62723EE4B8BAE5B8AEE58AA9E682A8E69BB4E5A5BDE59CB0E4BDBFE794A8E5B9B3E58FB0E58A9FE883BDE5B9B6E68F90E58D87E69C8DE58AA1E8B4A8E9878FEFBC8CE68891E4BBACE5B086E4BA8E3C7374726F6E673E32303235E5B9B434E69C883232E697A5EFBC88E591A8E4B880EFBC89E4B88BE58D8831343A30302D31363A30303C2F7374726F6E673EE4B8BEE58A9EE7BABFE4B88AE59FB9E8AEADE4BC9AEFBC8CE58685E5AEB9E58C85E68BACEFBC9A3C2F703E3C756C3E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE696B0E78988E5908EE58FB0E6938DE4BD9CE68C87E58D973C2F6C693E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE68F90E9AB98E59586E59381E69B9DE58589E78E87E79A84E68A80E5B7A73C2F6C693E3C6C69207374796C653D22746578742D616C69676E3A2073746172743B223EE5B8B8E8A781E997AEE9A298E8A7A3E7AD943C2F6C693E3C2F756C3E3C70207374796C653D22746578742D616C69676E3A2073746172743B223EE8AFB7E682A8E58786E697B6E58F82E58AA0EFBC8CE4BC9AE8AEAEE993BEE68EA5E5B086E9809AE8BF87E79FADE4BFA1E58F91E98081E887B3E682A8E79A84E6B3A8E5868CE6898BE69CBAE38082E69C9FE5BE85E682A8E79A84E58F82E4B88EEFBC813C2F703E, '2025-04-17 23:03:00');
INSERT INTO `notice` VALUES (8, '年度优秀供应商评选启动', 0x3C703E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EE5B08AE695ACE79A84E4BE9BE5BA94E59586EFBC9A3C62723E20E4B880E5B9B4E4B880E5BAA6E79A84E2809CE4BC98E7A780E4BE9BE5BA94E59586E2809DE8AF84E98089E6B4BBE58AA8E6ADA3E5BC8FE590AFE58AA8EFBC81E69CACE6ACA1E8AF84E98089E5B086E4BB8EE99480E594AEE9A29DE38081E794A8E688B7E8AF84E4BBB7E38081E69C8DE58AA1E68081E5BAA6E7AD89E5A49AE4B8AAE7BBB4E5BAA6E7BBBCE59088E88083E9878FEFBC8CE69C80E7BB88E98089E587BA3130E5AEB6E4BC98E7A780E4BE9BE5BA94E59586EFBC8CE5B9B6E7BB99E4BA88E4B8B0E58E9AE5A596E58AB1E58F8AE5AE98E696B9E68EA8E88D90E8B584E6BA90E38082E68AA5E5908DE688AAE6ADA2E697B6E997B4E4B8BA3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223E3C7374726F6E673E32303235E5B9B434E69C883330E697A53C2F7374726F6E673E3C2F7370616E3E3C7370616E207374796C653D22636F6C6F723A207267622834342C2034342C203534293B206261636B67726F756E642D636F6C6F723A20726762283235352C203235352C20323535293B20666F6E742D73697A653A20313670783B223EEFBC8CE6ACA2E8BF8EE8B88AE8B783E58F82E4B88EEFBC813C2F7370616E3E3C2F703E, '2025-04-17 23:03:14');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景点主键ID、自增的',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '景点名称',
  `category_id` int NULL DEFAULT NULL COMMENT '景点分类ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '封面',
  `vendor_id` int NULL DEFAULT NULL COMMENT '供应商ID',
  `save_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '景点收藏者用户ID列表，字符串，用,分割',
  `view_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '景点浏览者用户ID列表，字符串，用,分割',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '景点所在地',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '景点状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '景点详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES (1, '锦里古街', 5, '/api/online-travel-sys/v1.0/file/getFile?fileName=8683be8锦里古街封面.jpg', 7, '23,22,21,12,11,8,7,5,4', '12,7,23,22,21,11,8,6,5,4', '四川省成都市武侯区武侯祠大街231号附1号', 1, '2025-04-09 11:46:19', '<p style=\"text-align: start;\">锦里古街位于中国四川省成都市武侯区武侯祠大街231号附1号，靠近武侯祠，是一个展示川西传统民俗文化的旅游文化休闲街区。</p><h3 style=\"text-align: start;\">基本信息</h3><ul><li style=\"text-align: start;\"><strong>位置</strong>：成都市武侯区武侯祠大街231号附1号</li><li style=\"text-align: start;\"><strong>全长</strong>：550米</li><li style=\"text-align: start;\"><strong>建筑风格</strong>：以清末民初四川民居风格为基础，结合汉代建筑特征</li></ul><h3 style=\"text-align: start;\">主要景点</h3><ul><li style=\"text-align: start;\"><strong>古戏台</strong>：是民族演绎表演的场地，保留了传统的结构和建筑材质。</li><li style=\"text-align: start;\"><strong>小吃街</strong>：汇聚了众多四川特色美食，如张飞牛肉、肥肠粉等。</li><li style=\"text-align: start;\"><strong>诸葛井</strong>：相传为诸葛亮所挖掘的水井，具有历史意义。</li><li style=\"text-align: start;\"><strong>西蜀第一牌坊</strong>：作为标志性建筑，区分了锦里的一期和二期。</li></ul><h3 style=\"text-align: start;\">文化活动</h3><ul><li style=\"text-align: start;\"><strong>传统节日活动</strong>：如七夕节、中秋节、端午节等，会有穿汉服、看民俗晚会等活动。</li><li style=\"text-align: start;\"><strong>周周市集</strong>：自2009年开始举办，将民俗文化和集市相结合。</li></ul><h3 style=\"text-align: start;\">旅游攻略</h3><ul><li style=\"text-align: start;\"><strong>交通</strong>：可乘坐地铁三号线或五号线在高升桥站下车后步行到达，也可以选择公交车前往。</li><li style=\"text-align: start;\"><strong>门票与开放时间</strong>：全天开放，夜晚灯光亮起时氛围感十足。</li></ul><h3 style=\"text-align: start;\">游览体验</h3><p style=\"text-align: start;\">游客可以在锦里古街中漫步，欣赏古色古香的建筑，品尝地道的四川小吃，购买手工艺品，观看民俗表演，感受浓郁的川西民俗文化气息。</p><p style=\"text-align: start;\">锦里古街不仅是一个历史文化街区，也是一个集餐饮、购物、娱乐为一体的旅游胜地。如果您计划参观，建议晚上前往，以便同时享受夜景带来的特殊魅力。</p>');
INSERT INTO `scenic` VALUES (2, '成都大熊猫繁育研究基地', 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=efcf2a8成都大熊猫繁育研究基地封面.jpg', 6, '13,22,21,12,11,10,9,7,6,5,4', '13,6,7,23,22,21,12,11,10,9,5,4', '四川省成都市成华区熊猫大道1375号', 1, '2025-04-07 20:12:00', '<p style=\"text-align: start;\">成都大熊猫繁育研究基地是一个集大熊猫科研、保护、教育和旅游为一体的机构，位于成都市成华区外北熊猫大道1375号。</p><h3 style=\"text-align: start;\">景点概述</h3><ul><li style=\"text-align: start;\"><strong>位置</strong>：成都市成华/XMLSchema=0外北熊猫大道1375号。</li><li style=\"text-align: start;\"><strong>开放时间</strong>：</li></ul><h3 style=\"text-align: start;\">主要区域及景点</h3><ul><li style=\"text-align: start;\"><strong>大熊猫别墅区</strong>：这里居住着许多成年大熊猫，游客可以近距离观察它们的生活状态。</li><li style=\"text-align: start;\"><strong>幼年大熊猫区</strong>：可以看到活泼可爱的小熊猫在玩耍。</li><li style=\"text-align: start;\"><strong>大熊猫博物馆</strong>：通过展览和互动体验了解大熊猫的演化历史和保护现状。</li><li style=\"text-align: start;\"><strong>月亮产房</strong>：这里可以看到当年出生的熊猫宝宝们。</li><li style=\"text-align: start;\"><strong>其他动物展示区</strong>：如小熊猫活动场等。</li></ul><h3 style=\"text-align: start;\">门票信息</h3><ul><li style=\"text-align: start;\">成人票价格约为55元/人（根据最新数据，具体价格可能会有所调整，请以官方公告为准）。</li><li style=\"text-align: start;\">对于特定群体有优惠或免费政策，例如老年人、儿童、现役军人、残疾人等。</li></ul><h3 style=\"text-align: start;\">游玩建议</h3><ul><li style=\"text-align: start;\">建议早上去参观，因为早晨是大熊猫最活跃的时间段。</li><li style=\"text-align: start;\">参观时请遵守园区规定，不要敲打玻璃、投喂食物、使用闪光灯拍照等行为，以免打扰到大熊猫。</li><li style=\"text-align: start;\">园区内设有电瓶车服务，对于不想步行太多路的游客来说是个不错的选择。</li></ul><h3 style=\"text-align: start;\">注意事项</h3><ul><li style=\"text-align: start;\">防晒措施要做好，四川的紫外线较强。</li><li style=\"text-align: start;\">尽量避免吃太辣的食物，以保护肠胃。</li><li style=\"text-align: start;\">如果需要导游服务，可以选择携程等平台提供的讲解服务，也可以联系当地导游获取更深入的文化解说。</li></ul>');
INSERT INTO `scenic` VALUES (6, '深圳世界之窗', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=9eb3b73深圳世界之窗封面.jpg', 5, '23,22,21,12,11,10,9,8,6,5,4', '13,5,7,23,22,21,12,11,10,9,8,6,4', '广东省深圳市南山区华侨城深南大道9037号', 1, '2025-04-09 19:47:58', '<p style=\"text-align: start;\">深圳世界之窗是一个位于中国广东省深圳市南山区的大型文化旅游景区，它以微缩景观的形式展示了世界各地著名的自然和人文景观。</p><h3 style=\"text-align: start;\">景点概述</h3><ul><li style=\"text-align: start;\"><strong>位置</strong>：深圳市南山区深南大道9037号。</li><li style=\"text-align: start;\"><strong>级别</strong>：国家5A级旅游景区。</li><li style=\"text-align: start;\"><strong>开放时间</strong>：通常为上午10:00至晚上21:30（具体时间可能会有所变动，请参考官方网站或现场公告）。</li></ul><h3 style=\"text-align: start;\">主要区域和景点</h3><ul><li style=\"text-align: start;\"><strong>世界广场</strong>：中心地带，周围有不同比例的世界著名建筑模型。</li><li style=\"text-align: start;\"><strong>环球舞台及文化浮雕墙</strong>：展示各国文化的艺术作品。</li><li style=\"text-align: start;\"><strong>亚洲、欧洲、非洲及美洲区</strong>：按地理区域划分，展现各个大陆的特色建筑和文化。</li><li style=\"text-align: start;\"><strong>雕塑园</strong>：收集了来自全球各地的艺术作品。</li><li style=\"text-align: start;\"><strong>国际街</strong>：模拟世界各地的购物街区，提供各种特色商品和服务。</li><li style=\"text-align: start;\"><strong>动感游乐项目</strong>：如室内滑雪、探险漂流等刺激活动。</li><li style=\"text-align: start;\"><strong>演出活动</strong>：包括音乐舞蹈史诗、异域风情歌舞表演等丰富的文化娱乐节目。</li></ul><h3 style=\"text-align: start;\">特别活动</h3><ul><li style=\"text-align: start;\"><strong>跨年活动</strong>：包括烟花表演、无人机表演、电音派对等。</li><li style=\"text-align: start;\"><strong>新春活动</strong>：例如“闪光迎新春”，融合传统与现代元素的庆祝活动。</li><li style=\"text-align: start;\"><strong>元宵节活动</strong>：包含无人机表演、鱼灯巡游、彩狮表演、猜灯谜等传统文化体验。</li></ul><h3 style=\"text-align: start;\">交通指南</h3><p style=\"text-align: start;\">游客可以通过乘坐地铁到达，最近的地铁站是世界之窗站（1号线和2号线交汇），从地铁站步行约280米即可抵达景区入口。</p><h3 style=\"text-align: start;\">票务信息</h3><p style=\"text-align: start;\">票价根据不同的时间段和类型有所不同，例如全日成人票、夜场票、双人票等，并且有时会有特别优惠。建议通过官方渠道查询最新的票价信息和购票。</p><h3 style=\"text-align: start;\">游玩建议</h3><p style=\"text-align: start;\">为了充分体验深圳世界之窗的魅力，建议穿着舒适的鞋子以便长时间行走，同时可以租借讲解器或下载官方APP来更好地了解每个景点背后的故事和文化背景。</p>');
INSERT INTO `scenic` VALUES (7, '广州长隆旅游度假区', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=9c8f396长隆水上乐园封面.jpg', 4, '23,22,21,11,9,8,7,6,4', '13,4,6,7,23,22,21,11,9,8,5', '广东省广州市番禺区汉溪大道东与长隆地铁大道交汇处', 1, '2025-04-11 11:59:37', '<p style=\"text-align: start;\">广州长隆旅游度假区是一个集多种娱乐和休闲设施于一体的大型旅游目的地</p><h3 style=\"text-align: start;\">长隆野生动物世界</h3><ul><li style=\"text-align: start;\"><strong>特色</strong>：以大规模野生动物种群放养和自驾车观赏为特色，拥有丰富的动物种类。</li><li style=\"text-align: start;\"><strong>分区</strong>：</li></ul><h3 style=\"text-align: start;\">长隆欢乐世界</h3><ul><li style=\"text-align: start;\"><strong>游乐设施</strong>：分为多个主题区域，如白虎大街、旋风岛等，拥有垂直过山车、十环过山车等刺激项目。</li><li style=\"text-align: start;\"><strong>表演</strong>：有花车巡游、马戏团表演等精彩节目。</li></ul><h3 style=\"text-align: start;\">长隆水上乐园</h3><ul><li style=\"text-align: start;\"><strong>水上游乐设施</strong>：设有摇滚巨轮、超级造浪池等设施，适合夏季游玩。</li><li style=\"text-align: start;\"><strong>新引进设备</strong>：风暴双响炮、磁力炮水上过山车、冲天双浪板等世界级水上游乐设备已于2025年4月底亮相。</li></ul><h3 style=\"text-align: start;\">长隆飞鸟乐园</h3><ul><li style=\"text-align: start;\"><strong>环境</strong>：位于闹市中的郊野公园，绿树成荫，是亲近自然的好去处。</li><li style=\"text-align: start;\"><strong>表演</strong>：鳄作剧、白鸟飞歌等多种动物表演。</li></ul><h3 style=\"text-align: start;\">长隆国际大马戏</h3><ul><li style=\"text-align: start;\"><strong>演出</strong>：拥有实景式马戏舞台，来自多国的演员与动物共同呈现精彩的马戏表演。</li><li style=\"text-align: start;\"><strong>经典节目</strong>：环球飞车、魔域仙境等。</li></ul><h3 style=\"text-align: start;\">超级乐园（规划中）</h3><ul><li style=\"text-align: start;\"><strong>面积</strong>：占地43公顷，计划打造成为世界级的“一心四园”格局的一部分。</li><li style=\"text-align: start;\"><strong>概念</strong>：将升级游乐空间，提供深度游乐体验，并与周边形成联动发展。</li></ul>');
INSERT INTO `scenic` VALUES (8, '故宫博物院', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=a699551故宫博物院封面.png', 3, '13,23,22,21,12,11,9,8,6,5,4', '13,12,7,23,11,22,21,9,8,6,5,4', '北京市东城区景山前街4号', 1, '2025-04-11 13:10:01', '<p style=\"text-align: start;\">故宫博物院，位于北京市东城区景山前街4号，是一座拥有丰富历史文化的古代宫殿建筑群。以下是部分主要景点的详情：</p><ol><li style=\"text-align: start;\">午门：作为故宫的南大门，午门是紫禁城的正门，也是参观故宫的入口之一。其建筑风格庄重威严，体现了皇家的尊严。</li><li style=\"text-align: start;\">太和殿：俗称“金銮殿”，是故宫内规模最大、等级最高的建筑，曾用于举行重大典礼如皇帝登基等。</li><li style=\"text-align: start;\">中和殿：位于太和殿与保和殿之间，是皇帝在大典前休息并接受官员朝拜的地方。</li><li style=\"text-align: start;\">保和殿：主要用于举办宴会和进行殿试，即科举考试的最高级别考试。</li><li style=\"text-align: start;\">乾清宫：明清两代皇帝的寝宫之一，也是处理日常政务之处。</li><li style=\"text-align: start;\">交泰殿：为皇后千秋节（生日）时接受祝贺之地，同时也是存放清朝玉玺的地方。</li><li style=\"text-align: start;\">坤宁宫：明代为皇后的寝宫，清代则多用作祭祀场所。</li><li style=\"text-align: start;\">御花园：位于故宫北端，是一处集自然景观与人工建筑于一体的园林，供皇室成员休闲娱乐之用。</li><li style=\"text-align: start;\">钟表馆和珍宝馆：分别展示了大量的古董钟表和珍贵文物，包括金银器皿、珠宝首饰等。</li></ol>');
INSERT INTO `scenic` VALUES (9, '上海迪士尼乐园', 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=387c419迪士尼乐园.jpg', 2, '13,23,21,12,11,10,7,6,5,4', '13,12,7,23,21,11,10,6,5,4', '上海市 浦东新区 川沙镇 黄赵路310号', 1, '2025-04-13 13:47:54', '<h3 style=\"text-align: start;\">上海迪士尼乐园</h3><h4 style=\"text-align: start;\">历史沿革</h4><ul><li style=\"text-align: start;\"><strong>2009年</strong>：上海迪士尼项目正式获得国家批准，选址川沙。</li><li style=\"text-align: start;\"><strong>2011年4月8日</strong>：上海迪士尼乐园项目正式开工建设。</li><li style=\"text-align: start;\"><strong>2016年6月16日</strong>：上海迪士尼乐园正式开园，占地1.16平方公里，是中国现代服务业中外合作项目之一。</li></ul><h4 style=\"text-align: start;\">主要景点</h4><ul><li style=\"text-align: start;\"><strong>米奇大街</strong>：游客进入乐园后的第一个区域，这里充满了各种商店和餐馆，是拍照打卡的好地方。</li><li style=\"text-align: start;\"><strong>奇想花园</strong>：一个充满奇幻色彩的花园世界，包含幻想曲旋转木马、小飞象等游乐设施。</li><li style=\"text-align: start;\"><strong>探险岛</strong>：以冒险为主题的园区，提供雷鸣山漂流、翱翔·飞跃地平线等体验。</li><li style=\"text-align: start;\"><strong>宝藏湾</strong>：全球首个海盗主题园区，拥有加勒比海盗——沉落宝藏之战等互动体验。</li><li style=\"text-align: start;\"><strong>明日世界</strong>：展示了未来科技的魅力，创极速光轮是最受欢迎的项目之一。</li><li style=\"text-align: start;\"><strong>梦幻世界</strong>：最大的主题园区，内含七个小矮人矿山车、爱丽丝梦游仙境迷宫等多个经典故事场景。</li><li style=\"text-align: start;\"><strong>迪士尼·皮克斯玩具总动员</strong>：基于《玩具总动员》电影设计的主题区，有弹簧狗团团转、抱抱龙冲天赛车等项目。</li><li style=\"text-align: start;\"><strong>疯狂动物城</strong>：全球首个以同名电影为主题的园区，提供独特的动物城市探险之旅。</li></ul><h3 style=\"text-align: start;\">香港迪士尼乐园</h3><h4 style=\"text-align: start;\">历史沿革</h4><ul><li style=\"text-align: start;\"><strong>1999年</strong>：华特迪士尼公司与香港特区政府开始就兴建香港迪士尼乐园进行谈判。</li><li style=\"text-align: start;\"><strong>2003年1月12日</strong>：香港迪士尼乐园正式动工建设。</li><li style=\"text-align: start;\"><strong>2005年9月12日</strong>：由时任中国国家副主席曾庆红、行政长官曾荫权及迪士尼高层主持开幕仪式，并于同日下午1时正式对外开放。</li></ul><h4 style=\"text-align: start;\">主要景点</h4><ul><li style=\"text-align: start;\"><strong>美国小镇大街</strong>：重现了20世纪初的美国风情，游客可以乘坐古董车或蒸汽火车游览。</li><li style=\"text-align: start;\"><strong>探险世界</strong>：提供森林河流之旅等冒险活动，让游客体验神秘的丛林探险。</li><li style=\"text-align: start;\"><strong>幻想世界</strong>：汇集了许多经典的迪士尼童话故事，如灰姑娘旋转木马、小熊维尼历险记等。</li><li style=\"text-align: start;\"><strong>明日世界</strong>：展示未来科技感，其中“铁甲奇侠飞行之旅”是一个深受喜爱的漫威主题游乐设施。</li><li style=\"text-align: start;\"><strong>反斗奇兵大本营</strong>：基于《玩具总动员》系列电影设计，提供冲天遥控车等刺激体验。</li><li style=\"text-align: start;\"><strong>灰熊山谷</strong>：设有灰熊山极速矿车等设施，让游客感受淘金时代的惊险旅程。</li><li style=\"text-align: start;\"><strong>迷离庄园</strong>：通过电磁厢车带领游客探索亨利爵士收藏的奇异珍宝，体验一场神秘的文化之旅。</li></ul>');
INSERT INTO `scenic` VALUES (10, '八达岭长城', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=b414849八达岭长城.jpg', 1, '23,22,12,11,10,9,8,6,4', '12,8,3,7,23,22,11,10,9,6,5,4', '北京市延庆区八达岭长城景区', 1, '2025-04-16 11:17:57', '<p>八达岭长城，作为中国古代万里长城的重要组成部分，不仅承载着丰富的历史文化价值，同时也是一处自然风光秀丽、旅游设施完备的著名旅游景区。它位于中国北京市延庆区军都山关沟古道北口，距离北京市中心约60公里，因其地理位置的重要性而得名“八达岭”，意为四通八达之地。</p><p>历史背景</p><p>八达岭长城始建于明代洪武年间（1368年），并在明成祖朱棣时期进行了大规模的扩建和加固，成为了保卫北京城的重要防线之一。这里的长城结构坚固，防御体系完善，包括城墙、敌楼、烽火台等军事防御设施，体现了古代中国人民卓越的建筑智慧和工程技术水平。</p><p>自然与人文景观</p><p>八达岭长城蜿蜒于崇山峻岭之间，全长约7600米，其中对游客开放的部分长约3741米。其平均高度为7至8米，底部宽约6米，顶部宽约5米，足以容纳五匹马或十人并排行走。沿着这段长城分布着许多敌楼和烽火台，它们不仅是古代军事防御的重要据点，也为今天的游客提供了绝佳的观景位置，可以远眺群山环绕的壮丽景色。</p><p> 游览体验</p><p>游览八达岭长城，除了徒步攀登感受历史的厚重之外，还可以选择乘坐缆车或滑车来欣赏沿途风景，享受不一样的游览乐趣。景区内设有索道和轨道缆车，方便游客快速到达山顶，节省体力的同时也能享受到空中俯瞰长城的震撼美景。</p><p>此外，景区内还设有多个服务设施，如商业街、停车场、观景台等，满足了不同游客的需求。对于希望更深入了解长城文化的朋友来说，这里还有专业的导游服务可供选择，帮助您更好地理解八达岭长城的历史背景和文化意义。</p><p>八达岭长城不仅是中华民族的骄傲，也是世界文化遗产的一部分，每年吸引着来自世界各地的游客前来参观游览。无论是热爱历史文化的旅行者，还是喜欢户外探险的家庭，都能在这里找到属于自己的乐趣。</p>');
INSERT INTO `scenic` VALUES (11, '西安兵马俑博物馆', 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=8059536西安兵马俑博物馆封面.jpg', 8, '23,22,21,12,11,10,9,8,6,5,4', '8,23,22,21,12,11,10,9,7,6,5,4', '陕西省西安市临潼区秦陵镇', 1, '2025-04-16 15:02:50', '<p style=\"text-align: start;\">西安兵马俑博物馆，也被称为秦始皇兵马俑博物馆或简称兵马俑，位于中国陕西省西安市临潼区秦陵北路，是以秦始皇兵马俑为基础，在原址上建立的遗址类博物馆。</p><h3 style=\"text-align: start;\">基本信息</h3><ul><li style=\"text-align: start;\"><strong>地址</strong>：陕西省西安市临潼区秦始皇陵以东1.5公里处</li><li style=\"text-align: start;\"><strong>开放时间</strong>：通常为08:30~18:35（具体时间可能随季节调整）</li><li style=\"text-align: start;\"><strong>门票价格</strong>：大约120元人民币（费用区间参考：100~200元），但可能会有变动，请在计划参观时确认最新票价</li></ul><h3 style=\"text-align: start;\">主要景点</h3><ul><li style=\"text-align: start;\"><strong>一号坑</strong>：最早发掘、面积最大的一个坑，总面积14260平方米，埋藏约6000件陶俑和陶马。</li><li style=\"text-align: start;\"><strong>二号坑</strong>：较一号坑内容更丰富，兵种更齐全，面积6000平方米，内含陶俑、陶马1300余件。</li><li style=\"text-align: start;\"><strong>三号坑</strong>：规模较小，面积524平方米，主要展示的是军队指挥系统。</li></ul><h3 style=\"text-align: start;\">展示内容</h3><ul><li style=\"text-align: start;\"><strong>将军俑</strong>：数量极少，具有大将风度，头戴鹖冠，身材魁梧。</li><li style=\"text-align: start;\"><strong>车士俑</strong>：战车上除御手之外的士兵，分为车左俑和车右俑。</li><li style=\"text-align: start;\"><strong>立射俑</strong>：与跪射俑一起组成弩兵军阵，姿态符合古代射击规范。</li><li style=\"text-align: start;\"><strong>跪射俑</strong>：表现出单个持弓士兵的姿态，鞋底针脚细致刻画。</li><li style=\"text-align: start;\"><strong>武士俑</strong>：作为军阵主体，穿着不同装束，手持实战兵器。</li><li style=\"text-align: start;\"><strong>军吏俑</strong>：低于将军俑，负责作战指挥。</li><li style=\"text-align: start;\"><strong>骑兵俑</strong>：用于战时奇袭，装束轻便灵活。</li><li style=\"text-align: start;\"><strong>御手俑</strong>：负责驾驶战车。</li><li style=\"text-align: start;\"><strong>铜车马展</strong>：两乘大型彩绘铜车，是迄今为止考古发现的最大青铜器之一。</li></ul><h3 style=\"text-align: start;\">游玩建议</h3><ul><li style=\"text-align: start;\"><strong>最佳游玩时间</strong>：4~6月，9~10月</li><li style=\"text-align: start;\"><strong>建议游玩时长</strong>：3~5小时</li><li style=\"text-align: start;\"><strong>交通指南</strong>：可以从西安火车站东广场乘坐游5（306）路等公交旅游专线到达；自驾车也很方便，有停车场供使用。</li></ul><p style=\"text-align: start;\">兵马俑是世界著名的考古发现之一，被誉为“世界第八大奇迹”。游客在这里可以近距离观赏到这些栩栩如生的陶俑，了解秦朝时期的军事和社会生活情况，体验中国古代文明的辉煌成就。由于其极高的历史价值和文化意义，兵马俑每年吸引着来自世界各地的数百万游客前来参观。</p><ul><li style=\"text-align: start;\"></li></ul>');
INSERT INTO `scenic` VALUES (12, '华清池', 3, '/api/online-travel-sys/v1.0/file/getFile?fileName=3dddd5c华清池封面.webp', 9, '23,22,21,12,9,7,5,4', '9,23,22,21,12,7,6,5,4', '陕西省西安市临潼区', 1, '2025-04-16 15:04:08', '<p>华清池，又称华清宫，位于中国陕西省西安市临潼区，是一座历史悠久的皇家园林。它以其丰富的历史文化背景、美丽的自然景观和著名的温泉资源而闻名。</p><h3 style=\"text-align: start;\">历史背景</h3><ul><li style=\"text-align: start;\">华清池作为古代帝王的离宫和游览地已有三千多年的历史。</li><li style=\"text-align: start;\">它曾是周、秦、汉、隋、唐等历代帝王的行宫别苑。</li><li style=\"text-align: start;\">在唐代，唐玄宗时期大兴土木，治汤井为池，并环山列宫殿，此时正式称为华清宫。因宫在温泉之上，故亦称华清池。</li></ul><h3 style=\"text-align: start;\">文化遗产</h3><ul><li style=\"text-align: start;\">华清池因其与“烽火戏诸侯”的历史典故、“唐明皇”与杨贵妃的爱情故事以及“西安事变”的发生地而享誉海内外。</li><li style=\"text-align: start;\">景区内有多个重要的文化遗址，如唐御汤遗址博物馆、西安事变旧址五间厅、九龙湖与芙蓉湖风景区、唐梨园遗址博物馆等。</li></ul><h3 style=\"text-align: start;\">主要景点</h3><ul><li style=\"text-align: start;\"><strong>飞霜殿</strong>：原是唐玄宗和杨贵妃的寝殿。</li><li style=\"text-align: start;\"><strong>长生殿</strong>：象征着唐玄宗与杨贵妃爱情的地方。</li><li style=\"text-align: start;\"><strong>莲花汤（海棠汤）</strong>：杨贵妃专用的沐浴汤池，形状似盛开的海棠花。</li><li style=\"text-align: start;\"><strong>星辰汤</strong>：唐太宗李世民的御用汤池。</li><li style=\"text-align: start;\"><strong>太子汤</strong>：专供太子沐浴的汤池。</li><li style=\"text-align: start;\"><strong>尚食汤</strong>：供尚食局官员沐浴的汤池。</li></ul><h3 style=\"text-align: start;\">自然风光</h3><ul><li style=\"text-align: start;\">骊山景色宜人，山上分布有老母殿、老君殿、烽火台、兵谏亭、石瓮寺、遇仙桥等众多景点，“骊山晚照”是著名的“关中八景”之一。</li></ul><h3 style=\"text-align: start;\">现代发展</h3><ul><li style=\"text-align: start;\">今天的华清池不仅保留了古时的风貌，还增加了现代旅游设施和服务，包括中外书法碑林、梨园及其他艺术展馆，形成了集旅游、文物、园林、沐浴、娱乐、餐饮为一体的综合性文物游览场所。</li></ul><h3 style=\"text-align: start;\">游览信息</h3><ul><li style=\"text-align: start;\">开放时间：旺季（3月至11月）7:00-18:00；淡季（12月至次年2月）7:30-18:30。</li><li style=\"text-align: start;\">门票价格：旺季150元/人，淡季120元/人（具体价格可能随政策调整）。</li></ul><p>华清池不仅是历史文化的宝库，也是欣赏自然美景的好去处，无论是对历史文化感兴趣的游客还是希望享受温泉放松身心的人都能在这里找到乐趣。</p>');
INSERT INTO `scenic` VALUES (13, '武汉黄鹤楼公园', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=ac1c02b武汉黄鹤楼公园封面.webp', 10, '8,23,22,12,11,10,9,6,5', '10,8,23,11,22,12,9,7,6,5,4', '湖北省武汉市武昌区蛇山西山坡特1号', 1, '2025-04-16 15:05:03', '<p style=\"text-align: start;\">黄鹤楼公园位于中国湖北省武汉市武昌区蛇山之巅，是武汉市的标志性景点之一，也是江南三大名楼之一。</p><h3 style=\"text-align: start;\">景点简介</h3><ul><li style=\"text-align: start;\"><strong>地理位置</strong>：位于武汉市长江南岸的蛇山上。</li><li style=\"text-align: start;\"><strong>历史背景</strong>：黄鹤楼始建于三国时期吴黄武二年（公元223年），历经多次毁坏与重建，现存建筑为1985年重建，高五层，飞檐翘角，气势恢宏。</li><li style=\"text-align: start;\"><strong>景区资质</strong>：国家5A级旅游景区。</li></ul><h3 style=\"text-align: start;\">主要景点</h3><ul><li style=\"text-align: start;\"><strong>黄鹤楼主体建筑</strong>：共五层，每层都有不同的主题展示，包括陶瓷壁画、绣像画、名人书法等。</li><li style=\"text-align: start;\"><strong>白云阁</strong>：位于黄鹤楼附近，可以登高望远。</li><li style=\"text-align: start;\"><strong>落梅轩</strong>：一个集茶艺表演和休闲为一体的场所。</li><li style=\"text-align: start;\"><strong>岳飞广场</strong>：纪念民族英雄岳飞的广场，内有岳飞铜像。</li><li style=\"text-align: start;\"><strong>百松园、梅园、杜鹃园</strong>：四季皆有不同的植物景观可供观赏。</li><li style=\"text-align: start;\"><strong>诗碑廊</strong>：展示了众多历代文人墨客赞美黄鹤楼的诗词碑刻。</li><li style=\"text-align: start;\"><strong>毛泽东词亭</strong>：收藏了毛泽东的手书诗词。</li><li style=\"text-align: start;\"><strong>奇石馆</strong>：展示了各种奇特的石头。</li><li style=\"text-align: start;\"><strong>崔颢题诗图</strong>：描绘了唐代诗人崔颢在其著名的《黄鹤楼》一诗中的情景。</li><li style=\"text-align: start;\"><strong>“三楚一楼”大牌坊</strong>：入口处的大牌坊，标志着进入黄鹤楼景区。</li></ul><h3 style=\"text-align: start;\">开放时间</h3><ul><li style=\"text-align: start;\">日场：4月1日-10月31日：7:00-18:30（17:30停止入园）；11月1日-3月31日：7:30-17:30（16:30停止入园）。</li><li style=\"text-align: start;\">夜场：19:30-22:00（21:30停止入园），光影秀时间为19:50、21:00、21:50。</li></ul><h3 style=\"text-align: start;\">游览路线推荐</h3><ul><li style=\"text-align: start;\">经典1小时路线：适合快速打卡，覆盖主要景点。</li><li style=\"text-align: start;\">深度2小时路线：含园林景观，更加全面地体验黄鹤楼公园的魅力。</li></ul><h3 style=\"text-align: start;\">周边景点</h3><ul><li style=\"text-align: start;\">武汉长江大桥：徒步过桥或骑行，感受壮丽景色。</li><li style=\"text-align: start;\">户部巷：品尝地道武汉小吃。</li><li style=\"text-align: start;\">湖北省博物馆：提前预约参观编钟、越王勾践剑等珍贵文物。</li><li style=\"text-align: start;\">东湖风景区：春季赏樱胜地，可乘公交或骑行前往。</li></ul><h3 style=\"text-align: start;\">餐饮推荐</h3><ul><li style=\"text-align: start;\">推荐在户部巷尝试当地特色小吃，如热干面、三鲜豆皮等。</li><li style=\"text-align: start;\">黄鹤楼周边也有一些特色餐馆提供海鲜大铁锹、双椒辣子鸡等菜品。</li></ul><h3 style=\"text-align: start;\">交通指南</h3><ul><li style=\"text-align: start;\">可乘坐公交至“黄鹤楼”站下车。</li><li style=\"text-align: start;\">地铁4号线“黄鹤楼”站C出口，步行约10分钟即可到达。</li><li style=\"text-align: start;\">自驾的话可以导航至“黄鹤楼东门停车场”。</li></ul><h3 style=\"text-align: start;\">小贴士</h3><ul><li style=\"text-align: start;\">节假日建议提前预约门票。</li><li style=\"text-align: start;\">目前仅东门开放，西门封闭。</li><li style=\"text-align: start;\">电梯仅供65岁以上老人使用。</li><li style=\"text-align: start;\">最佳拍照点包括黄鹤楼顶层、长江大桥引桥等地。</li></ul>');
INSERT INTO `scenic` VALUES (14, '丽江古城', 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=42319de丽江古城封面.webp', 12, '23,21,11', '8,23,11,21,6,5,4', '云南省丽江市古城区', 1, '2025-04-16 15:05:44', '<p style=\"text-align: start;\">丽江古城，位于中国云南省丽江市，是世界文化遗产之一，以其独特的纳西族文化和保存完好的古建筑群而闻名。</p><h3 style=\"text-align: start;\">景点详情</h3><h4 style=\"text-align: start;\">1. <strong>基本介绍</strong></h4><ul><li style=\"text-align: start;\"><strong>位置</strong>：云南省丽江市古城区</li><li style=\"text-align: start;\"><strong>开放时间</strong>：全天开放（部分内部景点有特定开放时间）</li></ul><h4 style=\"text-align: start;\">2. <strong>主要景点</strong></h4><ul><li style=\"text-align: start;\"><strong>四方街</strong>：古城的核心区域，是一个历史悠久的集市广场，四周环绕着传统的纳西族民居。</li><li style=\"text-align: start;\"><strong>木府</strong>：丽江土司木氏家族的府邸，被誉为“小紫禁城”，展示了纳西族的历史与文化。</li><li style=\"text-align: start;\"><strong>黑龙潭公园</strong>：一个美丽的园林，内有清澈见底的水潭和远处玉龙雪山的壮丽景色。</li><li style=\"text-align: start;\"><strong>狮子山公园</strong>：可以徒步至山顶，俯瞰整个丽江古城全景。</li><li style=\"text-align: start;\"><strong>大水车</strong>：作为丽江古城的标志性建筑之一，象征着古城悠久的历史。</li><li style=\"text-align: start;\"><strong>五一街</strong>：集美食、手工艺品和特色小店于一体的街道，非常适合购物和品尝当地美食。</li></ul><h4 style=\"text-align: start;\">3. <strong>文化体验</strong></h4><ul><li style=\"text-align: start;\"><strong>纳西古乐表演</strong>：在古城内多个地方可以欣赏到纳西族传统音乐演出。</li><li style=\"text-align: start;\"><strong>东巴文字学习</strong>：东巴文字是世界上唯一仍在使用的象形文字，游客可以在古城内的东巴纸坊体验制作过程并学习书写简单的东巴字。</li><li style=\"text-align: start;\"><strong>民俗活动</strong>：春节期间的纳西族新年庆祝活动，以及每年农历七月的火把节等都是不可错过的民族文化体验。</li></ul><h4 style=\"text-align: start;\">4. <strong>周边景点</strong></h4><ul><li style=\"text-align: start;\"><strong>玉龙雪山</strong>：距离丽江古城约25公里，是云南省著名的自然景观之一，提供滑雪、登山等多种户外活动。</li><li style=\"text-align: start;\"><strong>束河古镇</strong>：比丽江古城更为宁静的一个小镇，保留了更多的原始风貌。</li><li style=\"text-align: start;\"><strong>白沙壁画</strong>：位于丽江县白沙乡，是中国南方保存最完整的明代壁画之一。</li></ul><h4 style=\"text-align: start;\">5. <strong>实用信息</strong></h4><ul><li style=\"text-align: start;\"><strong>最佳旅游季节</strong>：春秋两季为最佳，天气宜人，适合户外活动。</li><li style=\"text-align: start;\"><strong>交通指南</strong>：</li><li style=\"text-align: start;\"><strong>住宿推荐</strong>：古城内外有许多特色客栈和酒店供选择，既有传统的纳西族风格也有现代化设施齐全的住宿。</li></ul><p style=\"text-align: start;\">丽江古城不仅是一个观光的好去处，也是一个深入了解纳西族文化、享受慢生活节奏的理想之地。希望这些信息能帮助您更好地规划您的丽江之旅！</p>');
INSERT INTO `scenic` VALUES (15, '昆明石林风景区', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=e071bad昆明石林风景区封面.webp', 13, '22,12,10,9,8,7,6,4,3', '8,23,11,22,12,10,9,7,6,5,4', '云南省昆明市石林彝族自治县境内', 1, '2025-04-16 15:06:03', '<p style=\"text-align: start;\">昆明石林风景区，位于云南省昆明市石林彝族自治县，是一个以石灰岩喀斯特地貌为主要特征的世界自然遗产地。这里以其奇特的石头森林、丰富的民族文化以及多样的生物多样性而著称。</p><h3 style=\"text-align: start;\">主要景点</h3><ol><li style=\"text-align: start;\">大石林大石林是石林风景区的核心部分，这里的石头形态各异，有的像剑直指天空，有的像动物栩栩如生，其中最著名的有“阿诗玛”石像，它是根据彝族撒尼人的美丽传说命名的。</li><li style=\"text-align: start;\">小石林相较于大石林，小石林的石头分布较为分散，但同样充满了神秘色彩。这里有更多细腻的景观和相对宁静的环境，适合喜欢徒步探索的游客。</li><li style=\"text-align: start;\">乃古石林乃古石林距离大、小石林约10公里，这里的石头更加古老，颜色偏黑，给人以不同的视觉体验。乃古石林内有许多未被开发的区域，保持着原始风貌。</li><li style=\"text-align: start;\">长湖长湖是石林地区的一个天然淡水湖，四周环山，湖水清澈见底。这里是享受自然风光和户外活动的好去处。</li><li style=\"text-align: start;\">大叠水瀑布（飞龙瀑）大叠水瀑布是云南省最大的瀑布之一，落差超过80米。雨季时，瀑布水量充沛，气势磅礴；旱季时，则呈现出另一番秀丽景象。</li><li style=\"text-align: start;\">圭山国家森林公园圭山国家森林公园拥有茂密的森林植被，是进行森林康养和自然教育的理想之地。公园内的动植物种类繁多，生态环境良好。</li></ol><h3 style=\"text-align: start;\">文化体验</h3><ul><li style=\"text-align: start;\"><strong>彝族文化</strong>：石林地区是彝族撒尼人的聚居地，游客可以在这里体验到丰富多彩的彝族文化，包括传统服饰、音乐舞蹈、节日庆典等。</li><li style=\"text-align: start;\"><strong>火把节</strong>：每年农历六月二十四日，当地会举办盛大的火把节庆祝活动，这是了解彝族文化和习俗的最佳时机。</li></ul>');
INSERT INTO `scenic` VALUES (16, '九寨沟风景区', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=2b7b9e0九寨沟风景区封面.webp', 14, '23,22,21,11,10,9,7,5,4', '8,23,11,22,21,10,9,7,6,5,4', '四川省西北部岷山山脉南段的阿坝藏族羌族自治州九寨沟县漳扎镇境内', 1, '2025-04-16 15:06:21', '<p style=\"text-align: start;\">九寨沟风景区位于中国四川省阿坝藏族羌族自治州九寨沟县，是世界自然遗产、国家重点风景名胜区，并被誉为“人间仙境”和“童话世界”。这里以其原始、神秘的自然风光和独特的藏族文化吸引着无数游客</p><h3 style=\"text-align: start;\">九寨沟概览</h3><ul><li style=\"text-align: start;\"><strong>地理位置</strong>：九寨沟坐落在四川省西北部岷山山脉南段的阿坝藏族羌族自治州。</li><li style=\"text-align: start;\"><strong>地势特征</strong>：景区内山谷深切，高差悬殊，海拔从2000米到4500米不等。</li></ul><h3 style=\"text-align: start;\">标志性景点介绍</h3><ol><li style=\"text-align: start;\"><strong>诺日朗群海</strong>：由大小20个钙华湖泊组成，水色湛蓝，景色迷人。</li><li style=\"text-align: start;\"><strong>宝镜崖</strong>：因地震影响形成，岩面平整如镜，传说为镇压魔鬼之地。</li><li style=\"text-align: start;\"><strong>诺日朗瀑布</strong>：中国最宽的高山钙华瀑布，气势磅礴。</li><li style=\"text-align: start;\"><strong>镜海</strong>：水面平静如镜，倒影清晰，是观赏九寨沟美景的理想地点。</li><li style=\"text-align: start;\"><strong>黑湖（黑海）</strong>：位于扎如沟深处，湖水深邃神秘。</li><li style=\"text-align: start;\"><strong>扎依扎嘎圣山</strong>：九寨沟最高峰，终年云雾缭绕。</li><li style=\"text-align: start;\"><strong>芦苇海</strong>：生长着茂密的芦苇，随风舞动，美不胜收。</li><li style=\"text-align: start;\"><strong>火花海</strong>：阳光照射下波光粼粼，景色秀丽。</li><li style=\"text-align: start;\"><strong>卧龙海</strong>：湖底有乳黄色钙化堤埂，形似卧龙。</li><li style=\"text-align: start;\"><strong>五花海</strong>：湖水色彩斑斓，被誉为“九寨精华”。</li></ol><h3 style=\"text-align: start;\">其他著名景点</h3><ul><li style=\"text-align: start;\"><strong>熊猫海瀑布</strong>、<strong>熊猫海</strong>、<strong>箭竹海</strong>、<strong>天鹅海</strong>、<strong>芳草海</strong>、<strong>季节海</strong>、<strong>五彩池</strong>、<strong>原始森林</strong>、<strong>长海</strong>等都是不可错过的自然景观。</li><li style=\"text-align: start;\"><strong>树正寨</strong>：一个可以体验藏族文化的村落。</li><li style=\"text-align: start;\"><strong>九寨沟篝火体验</strong>：晚上可以参与当地特色的篝火晚会，感受浓郁的民族风情。</li></ul><h3 style=\"text-align: start;\">周边旅游景点</h3><ul><li style=\"text-align: start;\"><strong>黄龙景区</strong>：与九寨沟相邻，以钙化池闻名。</li><li style=\"text-align: start;\"><strong>若尔盖草原</strong>：一片广袤的大草原，适合放松心情。</li><li style=\"text-align: start;\"><strong>牟尼沟风景区</strong>：拥有瀑布、森林、湖泊等自然景观。</li><li style=\"text-align: start;\"><strong>神仙池风景区</strong>：提供温泉享受及美丽的自然风光。</li></ul><p style=\"text-align: start;\"><strong>注意事项</strong>：</p><p style=\"text-align: start;\">注意高原反应，提前做好身体准备；保护环境，遵守景区规定。</p><p style=\"text-align: start;\">九寨沟的美丽不仅仅在于它的自然景观，更在于它所蕴含的文化底蕴和生态保护理念。每个季节都有其独特魅力，无论是春天的繁花似锦还是秋天的五彩斑斓，都值得一探究竟。</p>');
INSERT INTO `scenic` VALUES (17, '峨眉山风景区', 4, '/api/online-travel-sys/v1.0/file/getFile?fileName=a6cb109峨眉山风景区封面.webp', 11, '11,22,21,12,10,9,7,6,5,4,3,8', '11,23,22,21,12,10,9,8,7,6,5,4', '中国四川省乐山市峨眉山市', 1, '2025-04-17 18:47:16', '<p><br></p><p style=\"text-align: start;\">峨眉山，位于中国四川省乐山市峨眉山市，是中国四大佛教名山之一，以其秀丽的自然风光和深厚的佛教文化底蕴而闻名。</p><h3 style=\"text-align: start;\">主要景点</h3><ol><li style=\"text-align: start;\">金顶峨眉山的最高峰，海拔3077米。这里有世界上最高的金佛——四面十方普贤菩萨像，高达48米。金顶的日出、云海、佛光和圣灯是著名的四大奇观。</li><li style=\"text-align: start;\">万年寺建于东晋时期，是峨眉山现存最古老、规模最大的寺庙之一。寺内供奉有宋代铸造的普贤菩萨骑象铜像，高7.85米，重达62吨，被誉为“铜铸艺术瑰宝”。</li><li style=\"text-align: start;\">清音阁古称“卧云庵”，位于峨眉山中部，是一处集山水之美的地方。清音阁前有黑白二水汇流，形成了一幅天然的水墨画。</li><li style=\"text-align: start;\">报国寺峨眉山的第一大寺，也是进入峨眉山的大门。寺庙建筑宏伟，环境幽静，是一个了解佛教文化和历史的好去处。</li><li style=\"text-align: start;\">雷洞坪通往金顶的必经之地，这里可以乘坐缆车上金顶。雷洞坪附近有时会出现奇特的气象现象，如佛光等。</li><li style=\"text-align: start;\">洗象池相传为普贤菩萨的坐骑白象洗浴之处，周围风景优美，空气清新。</li><li style=\"text-align: start;\">生态猴区在前往金顶的路上，这里是观赏野生藏酋猴的好地方。游客可以近距离观察猴子的生活习性，但需要注意安全，避免直接接触或喂食。</li></ol><h3 style=\"text-align: start;\">其他信息</h3><ul><li style=\"text-align: start;\"><strong>开放时间</strong>：不同季节的开放时间会有所变化，通常早间开放，傍晚关闭，请提前查询最新信息。</li><li style=\"text-align: start;\"><strong>门票价格</strong>：旺季（1月16日至12月14日）门票价格较高，淡季（12月15日至次年1月15日）则相对便宜。此外，景区内的交通费用（如索道、观光车等）需另行支付。</li><li style=\"text-align: start;\"><strong>最佳旅游时间</strong>：四季皆有不同的美景，但春末夏初和秋季是较为理想的旅游时节，此时气候宜人，景色也最为迷人。</li></ul><p style=\"text-align: start;\">峨眉山不仅是一个重要的宗教圣地，也是一个享受大自然美景的理想地点。无论是寻求心灵宁静还是户外探险，峨眉山都能提供丰富的体验。</p>');

-- ----------------------------
-- Table structure for scenic_category
-- ----------------------------
DROP TABLE IF EXISTS `scenic_category`;
CREATE TABLE `scenic_category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景点分类的主键ID，自增',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '景点分类名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic_category
-- ----------------------------
INSERT INTO `scenic_category` VALUES (1, '特色动植物观赏');
INSERT INTO `scenic_category` VALUES (2, '5A级景区');
INSERT INTO `scenic_category` VALUES (3, '城市观光景点');
INSERT INTO `scenic_category` VALUES (4, '自然风景区');
INSERT INTO `scenic_category` VALUES (5, '历史文化街区');
INSERT INTO `scenic_category` VALUES (6, '主题公园/度假区');
INSERT INTO `scenic_category` VALUES (7, '博物馆');
INSERT INTO `scenic_category` VALUES (8, '5A级景区');

-- ----------------------------
-- Table structure for scenic_line
-- ----------------------------
DROP TABLE IF EXISTS `scenic_line`;
CREATE TABLE `scenic_line`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景点路线主键ID，自增',
  `scenic_id` int NULL DEFAULT NULL COMMENT '景点ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路线封面图',
  `detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路线描述',
  `level` int NULL DEFAULT NULL COMMENT '层级',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic_line
-- ----------------------------
INSERT INTO `scenic_line` VALUES (1, 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=52be8c4锦里古街线路图.jpg', '大门-唐碑-文臣武将廊-汉昭烈庙-武侯祠（刘备殿-诸葛亮殿）-三义庙-红墙夹道-惠陵-盆景园-锦里古街', 26, '2025-04-18 11:46:40');
INSERT INTO `scenic_line` VALUES (5, 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=bd23d8b世界之窗攻略.png', '深圳世界之窗是一个位于中国广东省深圳市南山区的主题公园，它于1994年开放，占地约48万平方米。这个主题公园以微缩景观的形式展示了世界各地的著名景点和建筑，让游客可以在一天之内“环游世界”。', 23, '2025-04-09 19:48:11');
INSERT INTO `scenic_line` VALUES (7, 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=1b25c1e广州长隆旅游度假区线路图.jpg', '广州长隆旅游度假区位于广州市番禺区，创立于1989年，是集旅游景区、酒店餐饮和娱乐休闲于一体的国家5A级景区。度假区占地约1万亩，拥有长隆欢乐世界、长隆国际大马戏、长隆野生动物世界等主要景点。2012年，年接待游客超过1300万人次，成为广州市旅游的重要地标。2022年12月9日，各主题公园恢复运营。', 4, '2025-04-11 13:08:46');
INSERT INTO `scenic_line` VALUES (8, 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=e176a5b故宫博物馆线路图.jpg', '故宫博物院，位于北京市中心，是明清两代的皇家宫殿，旧称紫禁城。它始建于1406年，完成于1420年，占地面积约72万平方米，建筑面积约15万平方米，是世界上现存规模最大、保存最完整的木质结构古建筑群。故宫内珍藏有超过180万件文物，包括书画、陶瓷、金银器、钟表等，展现了中国古代艺术和文化的辉煌成就。作为中国最重要的文化遗产之一，故宫不仅是中国古代宫廷建筑之精华所在，也是研究中国古代历史与文化的重要基地。每年吸引着数百万国内外游客前来参观。', 62, '2025-04-13 00:31:23');
INSERT INTO `scenic_line` VALUES (10, 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=00b8330八达岭长城线路图.jpg', '八达岭长城位于北京延庆区，距离市区约60公里，是万里长城中保存最完整、最具代表性的部分之一。它始建于明朝，主要用于防御北方游牧民族的侵扰。八达岭长城全长约7600米，城墙高7-8米，顶部宽约5米，可以并行五匹马或十人。这里景色壮丽，设施完善，是游客访问最多的长城段落之一，也是世界文化遗产中的瑰宝。无论是对中国历史感兴趣的游客，还是希望体验这一伟大建筑奇迹的人，八达岭长城都是不可错过的目的地。', 0, '2025-04-16 14:31:49');
INSERT INTO `scenic_line` VALUES (11, 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=c1f59fb八达岭长城线路图2.jpg', '八达岭长城，作为中国古代伟大的防御工程——万里长城的重要组成部分，坐落在北京市延庆区军都山关沟古道北口，距离北京市中心约60公里。这里不仅是历史的见证者，也是自然美景与人文景观完美融合的地方。', 64, '2025-04-16 14:37:54');
INSERT INTO `scenic_line` VALUES (12, 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=64a09f8迪斯尼乐园线路图1.jpg', '迪士尼乐园由华特·迪士尼创立，首座于1955年在美国加州安纳海姆开业，是全球最受欢迎的主题公园之一。它以童话和迪士尼动画为主题，提供丰富的游乐设施与娱乐表演，让游客体验魔法般的乐趣。如今，迪士尼乐园已扩展至全球六个地点，包括巴黎、东京、香港和上海等地，每个度假区都有其独特的魅力和特色项目1。', 30, '2025-04-16 15:27:18');
INSERT INTO `scenic_line` VALUES (13, 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=d191f42成都大熊猫繁育研究基地线路.jpg', '成都大熊猫繁育研究基地是一个集大熊猫科研、保护、教育和旅游为一体的机构，位于成都市成华区外北熊猫大道1375号。', 28, '2025-04-16 19:27:48');
INSERT INTO `scenic_line` VALUES (14, 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=ed74b6b西安兵马俑博物馆线路图.jpg', '丽山公园：K9901陪葬坑→铜车马博物馆→K0006文官佣坑（这个可不去）\n兵马俑博物馆：1号馆→3号馆→2号馆→文物陈列厅', 35, '2025-04-16 19:55:03');
INSERT INTO `scenic_line` VALUES (15, 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=26ae2df华清池线路.jpg', '西门进入途经曲桥—长生殿—九龙湖—珍宝馆—御汤遗址—环园—昭阳门，最后到兵谏亭结束\n东门进入途径九龙湖—珍宝馆—芙蓉湖—曲桥—长生殿—龙吟榭—御汤遗址—禹王殿—环园，最后到东后门，兵谏亭结束', 26, '2025-04-17 10:26:53');
INSERT INTO `scenic_line` VALUES (16, 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=f2aec3c武汉黄鹤楼公园路线.png', '从西门进入→黄鹤楼主楼→千禧钟→白云阁→岳飞广场→紫薇苑→落梅轩→紫竹苑→主楼→从西门离开', 45, '2025-04-17 10:45:23');
INSERT INTO `scenic_line` VALUES (17, 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=408c51f丽江古城线路.jpg', 'Day1️⃣：\n丽江古城→东巴谷→玉龙雪山→蓝月谷→云杉坪\nDay2️⃣：\n束河古镇→丽江千古情景区→白沙古镇→玉湖村 →龙女湖\nDay3️⃣：\n大水车→忠义市场→木府博物馆→万古楼→大妍花巷', 23, '2025-04-17 11:27:41');
INSERT INTO `scenic_line` VALUES (18, 15, '/api/online-travel-sys/v1.0/file/getFile?fileName=7e9a75f昆明石林风景区线路.jpg', '📌路线1：出入口→狮子亭→朱德题词→石林胜景→且住为佳→极狭通人→莲花池→出入口\n📌线路2：出入口→群峰叠翠→李子园箐→石林与石芽→莲花池→小石林→出入口', 39, '2025-04-17 11:34:32');
INSERT INTO `scenic_line` VALUES (19, 16, '/api/online-travel-sys/v1.0/file/getFile?fileName=ba5cd9c九寨沟风景区线路.jpg', '游玩路线：\n路线：左沟➡️右沟➡️下沟，游览时间含步行与拍照，灵活调整观光车路线。', 40, '2025-04-17 11:45:14');
INSERT INTO `scenic_line` VALUES (20, 17, '/api/online-travel-sys/v1.0/file/getFile?fileName=aa81708峨眉山风景区线路.jpg', '徒步路线（全程徒步约17小时左右到金顶）\n峨眉山站—（高铁站有大巴直达/滴滴打车/步行）—报国寺——雷音寺——纯阳殿——神水阁——中锋寺——广福寺—（一线天路段）—洪椿坪—（99拐路段）—茶棚子——九老洞——仙峰寺——遇仙寺——九岭岗—（钻天坡路段）—洗象池——雷洞坪——接引殿——梳妆台——太子坪——卧云庵——金顶‖—（这一段只能徒步约两小时）—万佛顶', 32, '2025-04-17 18:50:09');

-- ----------------------------
-- Table structure for scenic_rating
-- ----------------------------
DROP TABLE IF EXISTS `scenic_rating`;
CREATE TABLE `scenic_rating`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景点评分主键ID，自增',
  `scenic_id` int NULL DEFAULT NULL COMMENT '景点ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `score` int NULL DEFAULT NULL COMMENT '评分分数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic_rating
-- ----------------------------
INSERT INTO `scenic_rating` VALUES (1, 10, 22, 5, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (2, 15, 22, 4, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (3, 13, 22, 5, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (4, 12, 22, 3, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (7, 11, 22, 4, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (8, 9, 22, 2, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (9, 7, 22, 3, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (10, 8, 22, 5, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (11, 6, 22, 4, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (12, 1, 22, 3, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (13, 16, 22, 4, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (14, 17, 22, 4, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (15, 10, 21, 4, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (16, 15, 21, 5, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (17, 13, 21, 3, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (18, 12, 21, 5, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (20, 11, 21, 4, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (21, 9, 21, 5, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (22, 7, 21, 5, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (23, 8, 21, 4, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (24, 6, 21, 3, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (25, 1, 21, 4, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (26, 16, 21, 5, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (27, 17, 21, 4, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (28, 14, 21, 3, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (29, 2, 21, 4, '2025-04-17 19:08:03');
INSERT INTO `scenic_rating` VALUES (30, 10, 23, 5, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (31, 15, 23, 4, '2025-04-17 17:15:49');
INSERT INTO `scenic_rating` VALUES (32, 13, 23, 5, '2025-04-17 17:16:08');
INSERT INTO `scenic_rating` VALUES (33, 12, 23, 4, '2025-04-17 17:16:26');
INSERT INTO `scenic_rating` VALUES (34, 11, 23, 5, '2025-04-17 17:16:37');
INSERT INTO `scenic_rating` VALUES (35, 9, 23, 4, '2025-04-17 17:16:47');
INSERT INTO `scenic_rating` VALUES (36, 7, 23, 3, '2025-04-17 17:16:51');
INSERT INTO `scenic_rating` VALUES (37, 8, 23, 5, '2025-04-17 17:17:35');
INSERT INTO `scenic_rating` VALUES (38, 6, 23, 5, '2025-04-17 17:17:45');
INSERT INTO `scenic_rating` VALUES (39, 1, 23, 5, '2025-04-17 17:17:49');
INSERT INTO `scenic_rating` VALUES (40, 16, 23, 5, '2025-04-17 17:18:26');
INSERT INTO `scenic_rating` VALUES (41, 17, 23, 5, '2025-04-17 19:02:44');
INSERT INTO `scenic_rating` VALUES (42, 14, 23, 5, '2025-04-17 19:02:55');
INSERT INTO `scenic_rating` VALUES (43, 2, 23, 5, '2025-04-17 19:03:25');
INSERT INTO `scenic_rating` VALUES (44, 14, 22, 5, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (45, 2, 22, 5, '2025-04-17 17:15:44');
INSERT INTO `scenic_rating` VALUES (46, 10, 12, 5, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (47, 15, 12, 4, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (48, 13, 12, 5, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (49, 12, 12, 5, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (50, 11, 12, 4, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (51, 9, 12, 3, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (52, 7, 12, 4, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (53, 8, 12, 5, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (54, 6, 12, 3, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (55, 1, 12, 5, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (56, 16, 12, 4, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (57, 17, 12, 5, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (58, 14, 12, 4, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (59, 2, 12, 4, '2025-04-16 19:12:57');
INSERT INTO `scenic_rating` VALUES (60, 10, 11, 4, '2025-04-17 19:19:32');
INSERT INTO `scenic_rating` VALUES (61, 15, 11, 5, '2025-04-16 19:13:42');
INSERT INTO `scenic_rating` VALUES (62, 13, 11, 3, '2025-04-17 19:13:53');
INSERT INTO `scenic_rating` VALUES (63, 12, 11, 5, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (64, 11, 11, 4, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (65, 9, 11, 4, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (66, 7, 11, 3, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (67, 8, 11, 2, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (68, 6, 11, 3, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (69, 1, 11, 5, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (70, 16, 11, 4, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (71, 17, 11, 3, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (72, 14, 11, 5, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (73, 2, 11, 1, '2025-04-16 19:19:35');
INSERT INTO `scenic_rating` VALUES (74, 10, 10, 5, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (75, 15, 10, 3, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (76, 13, 10, 3, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (77, 12, 10, 4, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (78, 11, 10, 5, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (79, 9, 10, 4, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (80, 7, 10, 3, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (81, 8, 10, 5, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (82, 6, 10, 4, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (83, 1, 10, 4, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (84, 16, 10, 4, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (85, 17, 10, 5, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (86, 14, 10, 5, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (87, 2, 10, 3, '2025-04-03 19:19:51');
INSERT INTO `scenic_rating` VALUES (88, 10, 9, 4, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (89, 15, 9, 5, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (90, 13, 9, 5, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (91, 12, 9, 4, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (92, 11, 9, 3, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (93, 9, 9, 5, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (94, 7, 9, 2, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (95, 8, 9, 5, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (96, 6, 9, 4, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (97, 1, 9, 3, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (98, 16, 9, 5, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (99, 17, 9, 3, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (100, 14, 9, 4, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (101, 2, 9, 2, '2025-04-15 19:20:04');
INSERT INTO `scenic_rating` VALUES (102, 10, 8, 3, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (103, 15, 8, 5, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (104, 13, 8, 4, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (105, 12, 8, 3, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (106, 11, 8, 5, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (107, 9, 8, 4, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (108, 7, 8, 2, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (109, 8, 8, 3, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (110, 6, 8, 5, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (111, 1, 8, 2, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (112, 16, 8, 4, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (113, 17, 8, 5, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (114, 14, 8, 2, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (115, 2, 8, 3, '2025-04-16 19:20:04');
INSERT INTO `scenic_rating` VALUES (116, 10, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (117, 15, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (118, 13, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (119, 12, 7, 5, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (120, 11, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (121, 9, 7, 3, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (122, 7, 7, 5, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (123, 8, 7, 3, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (124, 6, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (125, 1, 7, 3, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (126, 16, 7, 3, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (127, 17, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (128, 14, 7, 4, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (129, 2, 7, 5, '2025-04-16 23:20:47');
INSERT INTO `scenic_rating` VALUES (130, 10, 6, 5, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (131, 15, 6, 5, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (132, 13, 6, 4, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (133, 12, 6, 3, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (134, 11, 6, 5, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (135, 9, 6, 3, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (136, 7, 6, 4, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (137, 8, 6, 5, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (138, 6, 6, 4, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (139, 1, 6, 3, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (140, 16, 6, 4, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (141, 17, 6, 3, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (142, 14, 6, 5, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (143, 2, 6, 4, '2025-04-19 19:21:02');
INSERT INTO `scenic_rating` VALUES (144, 10, 5, 3, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (145, 15, 5, 3, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (146, 13, 5, 5, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (147, 12, 5, 2, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (148, 11, 5, 3, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (149, 9, 5, 4, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (150, 7, 5, 5, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (151, 8, 5, 3, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (152, 6, 5, 5, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (153, 1, 5, 4, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (154, 16, 5, 4, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (156, 17, 5, 5, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (157, 14, 5, 4, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (158, 2, 5, 3, '2025-04-21 19:26:43');
INSERT INTO `scenic_rating` VALUES (159, 10, 4, 5, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (160, 15, 4, 4, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (161, 13, 4, 2, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (162, 12, 4, 3, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (163, 11, 4, 5, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (164, 9, 4, 4, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (165, 7, 4, 4, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (166, 8, 4, 4, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (167, 6, 4, 3, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (168, 1, 4, 4, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (169, 16, 4, 1, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (170, 17, 4, 3, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (171, 14, 4, 5, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (172, 2, 4, 1, '2025-04-22 19:26:53');
INSERT INTO `scenic_rating` VALUES (173, 10, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (174, 15, 3, 3, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (175, 13, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (176, 12, 3, 3, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (177, 11, 3, 2, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (178, 9, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (179, 7, 3, 3, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (180, 8, 3, 4, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (181, 6, 3, 4, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (182, 1, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (183, 16, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (184, 17, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (185, 14, 3, 3, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (186, 2, 3, 5, '2025-04-23 19:27:05');
INSERT INTO `scenic_rating` VALUES (187, 10, 2, 3, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (188, 15, 2, 4, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (189, 13, 2, 4, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (190, 12, 2, 3, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (191, 11, 2, 5, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (192, 9, 2, 4, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (193, 7, 2, 4, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (194, 8, 2, 4, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (195, 6, 2, 4, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (196, 1, 2, 2, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (197, 16, 2, 3, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (198, 17, 2, 3, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (199, 14, 2, 5, '2025-04-25 19:27:19');
INSERT INTO `scenic_rating` VALUES (201, 2, 2, 5, '2025-04-25 19:27:19');

-- ----------------------------
-- Table structure for scenic_strategy
-- ----------------------------
DROP TABLE IF EXISTS `scenic_strategy`;
CREATE TABLE `scenic_strategy`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景点攻略主键ID，自增',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `scenic_id` int NULL DEFAULT NULL COMMENT '景点ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '景点攻略封面',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '景点标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '景点攻略内容',
  `is_audit` tinyint(1) NULL DEFAULT NULL COMMENT '是否已经审核',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic_strategy
-- ----------------------------
INSERT INTO `scenic_strategy` VALUES (4, 12, 10, '/api/online-travel-sys/v1.0/file/getFile?fileName=987a6b0八达岭登楼攻略.jpg', '八达岭登楼攻略', '<p> &nbsp; 纯干货🎉八达岭登楼攻略</p><p> &nbsp; &nbsp;据《史记》记载和文物工作者普查，八达岭一带在战国时期就已筑有长城，其走向与今明长城大体一致。到了北魏时期（公元446年），在国都平城（今大同）以北，修筑了名为“畿上塞围”的长城，东起上谷军都山（即八达岭一带），西至黄河岸。明朝时期，八达岭长城得到了大规模的重修和扩建，成为了明长城的重要隘口和军事重地。</p><p> ✨八达岭长城的登城路线选择主要依赖于您的兴趣、体力和时间安排。</p><p>以下是一些常见的登城路线建议： </p><p>✨全程徒步路线：从北一楼开始，一直爬到北十二楼，再原路返回或选择其他路线返回。这条路线较长，但可以全面欣赏长城的壮丽景色，适合体力较好、时间充裕的游客。 </p><p>✨北段精华路线：从北一楼爬到北八楼，即“好汉坡”，然后可以选择原路返回或乘坐缆车下山。北八楼是八达岭长城的最高点，也是拍照留念的好地方。这条路线长度适中，适合大多数游客。</p><p> ✨南北线：先从北一楼爬到北八楼，然后原路返回，再从南一楼爬到南六楼或南四楼。这条路线可以欣赏到南线和北线不同的景色，但需要较好的体力和时间。 </p><p>✨缆车或索道路线：如果您不想徒步登山，可以选择乘坐缆车或索道。缆车可以直接到达北七楼或北八楼，索道则可以到达南四楼。然后您可以在这些位置开始徒步游览，节省体力和时间。 </p><p>✨滑车路线：八达岭长城还提供滑车服务，您可以乘坐滑车从山顶滑下，体验别样的刺激与乐趣。 个人建议:自己是全程徒步，没有去过南线，去的时候一定要选工作日，周末节假日人巨多，更推荐慕田峪，人少风景好，北八楼最高点拍照不错，还有就是有余力建议去北十二楼，能够很好的看清楚长城全貌，下山出口在北十一，出口不远处能看到几头大黑熊。 </p><p>❤️最后，去长城一定要爱护城墙，太多太多人在上面乱刻乱画了，愿每个人都能好好爱惜历史遗迹。 #八达岭长城攻略 #京郊游 #爬山 #户外徒步 #八达岭长城 #八达岭</p>', 1, '2025-04-16 14:24:29');
INSERT INTO `scenic_strategy` VALUES (5, 2, 9, '/api/online-travel-sys/v1.0/file/getFile?fileName=b8542be迪士尼.webp', '上海迪士尼乐园游玩攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🎫门票：提前10天买早鸟票更优惠 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🏨住宿：11号线地铁沿线，如秀沿路，交通便利，距迪土尼两站地铁</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🚇地铁：11号线【迪士尼】站，2号、4号口出 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🔥【热门项目】 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">1⃣️疯狂动物城热力追踪✔️ 还原了电影里的场景，效果逼真超代入，迪士尼必打卡项目，亲子友好。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 2⃣️小矮人过山车✔️ 小型过山车，适合带娃一起玩</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 3⃣️加勒比海盗沉落宝藏之战✔️ 和杰克船长一起航海大冒险，体验海盗大战视觉盛宴</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 4⃣️飞越地平线✔️ 5D电影一览世界各地的绝美风景，亲子友好</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 5⃣️雷鸣山漂流✔️ 非常好玩的水上项目，需雨衣（园区门口10元/件）</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 6⃣️抱抱龙冲天赛车✔️ 迪士尼最刺激的项目没有之一，胆小的和带娃的谨慎</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 7⃣️创极速光轮✔️ 速度与激情井存，喜欢刺激必刷，9岁男娃超爱玩</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 8⃣️巴斯光年星际营救✔️胡迪牛仔✔️ 小童、亲子友好的项目</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅【游玩路线】</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🔴普票无氪金（7点到不绕湖） 热力追踪—七个小矮人矿山车—加勒比海盜—飞跃地平线一古迹探索营—雷鸣山漂流一城堡—胡迪牛仔一抱抱龙—创极速光轮一巴斯光年星际营救—米奇童话书—烟花秀</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🔴早鸟（提前1小时入园需起早-6点前排队入园） 飞跃地平线—加勒比海盗—小矮人矿山车—热力追踪—抱抱龙—创极速光轮（在大部队入园前能刷几项是几项）</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🔴氪金&amp;单项/多项尊享 根据尊享卡单项/多项项目，从右到左游玩，可先去冲除尊享包含的其它热门项目，排队入园时记得约米奇童话书💢【游玩 Tips 】 🔸入园需出示有效身份证原件 🔸园区内有充电宝，但最好带一个 🔸不可以带折叠椅、自热食品、自拍杆… 🔸花车提前20 分钟站位，看完花车立刻奔向最近的热门项目玩，这个时候排队人最少 🔸园区每个卫生间旁都有饮水区，可以带个矿泉水瓶 🔸表演和花车，玩项目的时候一定要注意时间，每天就那么几场别错过</span></p>', 1, '2025-04-16 15:49:48');
INSERT INTO `scenic_strategy` VALUES (7, 3, 8, '/api/online-travel-sys/v1.0/file/getFile?fileName=4df0742故宫博物馆-01.png', '故宫博物馆攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">故宫博物馆 世界最大的宫殿建筑群，占地面积72万㎡，房间8000多间 中国古建筑的集大成者，最大的木结构建筑！ 最完整的古代宫殿体系 超丰富的馆藏文物，超过186万件如《清明上河图》等 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅️门票预约 重要‼️重要‼️节假日很难约‼️ 提前7天在gzh搜“故宫博物院” ⏰定好闹钟！晚8点开售 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅️门票： 旺季（4月~10月）60元，08:30-16:00 淡季40，8:30~15:30停止进入 优惠票： 60+/大学生半价；14~18岁-免费，需预约； 珍宝馆/钟表馆,10元/馆 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅️交通攻略 地铁1号线到天an门东/西站，出站后步行至午门 ‼️需安检，至少提前半小时前往！ 带好身份证 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅️游玩攻略 🟦1整天游览【最推荐】</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ⏰8:30进宫： 午门➡️英武殿➡️文华殿➡️太和门➡️三大殿(太和殿/中和殿/保和殿) ➡️慈宁宫➡️乾清宫/交泰殿/坤宁宫➡️ 西六宫➡️御花园➡️东六宫➡️奉先殿➡️皇极殿➡️神武门 🟦半天游览【老少皆宜】 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⏰10点进宫 午门➡️2选1(英武殿/文华殿)➡️太和门➡️三大殿(太和殿/中和殿/保和殿) ➡️乾清宫/交泰殿/坤宁宫➡️ 2选1(东/西六宫➡️御花园 ➡️神武门 🟦2小时极速游览 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⏰特种兵极速游 午门➡️太和门➡️三大殿(太和殿/中和殿/保和殿) ➡️乾清宫/交泰殿/坤宁宫➡️御花园 ➡️神武门 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅️故宫核心看什么？ 🔹午门 故宫的正门，建筑风格宏伟，门上悬挂着“故宫博物院”的匾额，门两侧的角楼是中国古代建筑的杰作之一 🔹太和殿 俗称“金銮殿”，举行大典的地方，如登基/大婚/册封 故宫内规模最大、规格最高的建筑，面扩11间，进深5间，重檐庑殿顶(最高) 屋顶10只脊兽（唯一满配版） 🔹 中和殿 举行大典前稍作休息和演习礼仪的地方 🔹保和殿 举行殿试的地方，也是宴请外藩王公的地方 中央的御座上方悬挂着“皇建有极”的匾额。 殿后有一块巨大的石雕“云龙石雕”，是中国古代最大的石雕之一 🔹乾清宫 的寝宫，也是处理日常政务的地方。中央的金漆雕龙宝座上方悬挂着“正大光明”的匾额 🔹坤宁宫 皇后居住的地方，皇帝大婚时的婚房</span></p>', 1, '2025-04-16 17:12:11');
INSERT INTO `scenic_strategy` VALUES (8, 4, 7, '/api/online-travel-sys/v1.0/file/getFile?fileName=3b35cc1广州长隆旅游度假区-01.jpg', '广州长隆旅游度假区攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅【入园须知】 不要带投喂动物的水果蔬菜入园哦 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">4月份营业时间：9:30-18:00 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">北门小火车运营：9:30～16:30</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 南门熊猫乐园缆车：10:30～17:30</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅【北门进游玩路线】 北门进坐小火车➡️青龙山➡️白虎山➡️科莫多龙➡️长颈鹿 ➡️考拉园➡️大象传奇➡️熊猫村➡️4D影院➡️花果山花车巡游 ➡️熊猫乐园缆车(天鹅湖线)抵达北门出 Ps：缆车回北门可提前乘坐，避免缆车下班，如没缆车走回北门也不远。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅【南门进游玩路线】 南门火烈鸟➡️熊猫乐园缆车（环园线）➡️4D影院➡️熊猫村 ➡️大象传奇➡️考拉➡️长颈鹿➡️科莫多龙➡️白虎山➡️小火车 ➡️花果山花车巡游➡️走到南门出</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅【表演时间】 南门区 花果山花车大巡游：17:00（时间查官网比较准） 白虎山白虎跳水：11:30～16:00 半小时一场 大象传奇：12:30，15:00各一场 4D影院：11:00～17:30 逢整点、半点一场</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅【区域介绍分享】 空中缆车：可在空中俯瞰园区内各个动物区域 小火车：可近距离观看澳洲森林、美洲丛林、南非高原、东非草原的各种动物 白虎山：看白虎跳水 科莫多龙：400万年历史的“真龙” 长颈鹿广场：投喂长颈鹿 熊猫乐园：看熊猫三胞胎分别玩耍 考拉园：考拉爬桉树，跳跃很活泼 非洲长廊：看小巧机灵的细尾獴 青龙山：穿越侏罗纪森林、雨林仙踪、金蛇秘境</span></p>', 1, '2025-04-16 17:32:26');
INSERT INTO `scenic_strategy` VALUES (9, 6, 2, '/api/online-travel-sys/v1.0/file/getFile?fileName=5e4cd99成都大熊猫繁育研究基地-01.jpg', '成都大熊猫繁育研究基地攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">本人住在熊猫基地附近，去了无数次总结出来的游玩路线～ </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">一句话总结：从西门进—南门出，人少熊猫多而且熊猫都很活跃，可以拍到好多熊猫萌照；从南门出来正好到饭点，打车10分钟就能到玛歌庄园次火锅。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">穿搭推荐： ‼️一定要穿一双好走的运动鞋👟 不然真的会走哭！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 公共交通： 地铁3️⃣号线—军区总医院站B口下车（切记不要理任何拉客司机）—409景区接驳车3分钟到达西门 从西门进去后，可以乘坐观光车，也可以选择走路（建议坐观光车，把体力留到晚上）</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 推荐站点1️⃣：星星产房 星星产房超级大，熊猫特别多，而且都特别的活泼！最最重要的是有超大落地窗可以360度近距离看大熊猫哦！！随便哪个角度都能看到他们荡秋千爬栏杆什么的！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 推荐站点2️⃣：熊猫塔 熊猫塔是一个竹笋造型的建筑，旁边还有一块大大的草坪，找好角度超级出片，可以拍出大熊猫抱笋的同款照片哟。登顶后可以俯瞰整个熊猫基地。但素熊猫塔里面的电梯游客不能使用，老人和体力不好的宝子慎重！！！ 推荐站点</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">3️⃣：《熊猫》音乐剧 可以在太阳产房接驳点坐从接驳车直达熊猫剧院。 音乐剧是以大熊猫的形象讲述关于成长的故事，很适合带小朋友看，演员声情并茂，很投入。而且大人看着也不会无聊，我全程没有玩手机。真的很有意思！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 推荐站点4️⃣：星汉馆 看完熊猫音乐剧，旁边很近就是星汉馆。我当时去的时候北辰就在星汉馆，现在不知道还在不在了，猫猫们随时会换馆。可以看到好多只熊猫在脸前炫竹子，星汉馆相对人少很对，我每次去的时候都不会人挤人！ </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">逛一圈基地下来，肚子也饿的不行。急需一顿火锅🔥 从基地南门出去打车10分钟就能到玛歌庄园，是一个非常大的火锅公园，在湖边可以边看古风表演边吃火锅。甚至还有川音的小姐姐🧚‍♀️，穿的仙仙的，吊威亚飞来飞去的！！不光外地朋友没见过这种阵仗，本地人也没见过啊！！ 真是完美的一天！！！</span></p>', 1, '2025-04-16 19:26:02');
INSERT INTO `scenic_strategy` VALUES (10, 5, 6, '/api/online-travel-sys/v1.0/file/getFile?fileName=7e69930深圳世界之窗-01.jpg', '深圳世界之窗攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ⭐️主要景点：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🉑巴黎罗浮宫玻璃金字塔（仿）：仿建巴黎罗浮宫的玻璃金字塔，是地铁世界之窗站出入口。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🉑埃菲尔铁塔（仿）：进门便可以看到，按 1：3 的比例仿建，可由由楼梯步行上楼观景，有观景层、餐厅层、观光电梯层。也是晚上表演灯光秀、烟花秀的场地。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🉑尼亚加拉大瀑布（仿）：位于美洲区，仿建的尼亚加拉大瀑布面宽 80 多米，落差 10 多米，水流飞泻而下。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🉑埃及基萨金字塔群（仿）：以 1：15 的比例仿建，可欣赏到《出埃及记》表演，让人仿佛置身于古埃及的神秘氛围中。 💃游玩项目 🈶空中花园：老少皆宜，乘坐空中缆车可俯瞰欧洲区等微缩景观。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🈶极速富士山：室内游玩项目，儿童身高 1.1m 以上才能参与，是个室内影院，佩戴 4D 眼镜能体验在富士山上滑雪的感觉。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🈶穿越欧罗巴：室外游玩项目，无身高限制，坐上小火车在轨道上行驶，可看到英国小镇、荷兰风车、西班牙戈地公园等仿真景色。（小火车非常小）</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🈶法老归来：室内项目，儿童身高 1.3m 以上，类似鬼屋，适合胆大的游客挑战。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🈶马丘比丘迷城：室外项目，儿童身高 1.1m 以上，小型过山车，速度较快。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🈶激流大峡谷：室外游玩项目，儿童身高 1.1m 以上才能参与，穿越大峡谷，十分刺激。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🛏入住：深圳益田威斯汀 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🗺位置：酒店大堂内有直通门、直接到达深圳益田假日广场。（步行到假日广场的第一家店就是木育森林，儿童乐园解放家长双手） </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⭐️房间设施：由于2010年开业，比较陈旧。但是还算干净。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🍰餐饮： 👍中国元素中餐厅：位于负一层，提供正宗粤菜。广式点心菜品丰富、出品不错。 🈶威斯汀扒房：位于酒店顶层、可观赏世界之窗全景，全方位落地玻璃环绕。</span></p>', 1, '2025-04-16 19:36:34');
INSERT INTO `scenic_strategy` VALUES (11, 7, 1, '/api/online-travel-sys/v1.0/file/getFile?fileName=45d9677锦里古街-01.jpg', '锦里古街攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⭐️武侯祠为中国唯1️⃣一座君臣合祀祠庙，且以臣为主，君为辅，是全世界zui大的三国遗迹博物馆。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">由三国历史遗迹区（文物区/收费50💰）、西区（三国文化体验区/免费）以及锦里（免费）三部分组成。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⭐️路线选择：大概3-4小时 1️⃣大门-唐碑-文臣武将廊-汉昭烈庙-武侯祠（刘备殿-诸葛亮殿）-三义庙-红墙夹道-惠陵-盆景园-锦里古街 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅武侯祠的解说体系很完善。建议一定要请讲解～才可以深刻的了解武侯祠的文化底蕴，便宜贵的都有～便宜的人工讲解只要20/人。也可选择电子解说等～看个人选择 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅如果你只是想来拍照，拍红墙，对三国文化不是特别感兴趣，建议不买票，在文殊院，锦里也可以拍到红墙～锦里夜景更美～🌃 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⚠️武侯祠和杜甫草堂都属于人文历史文化景点，建议游玩请讲解或者提前了解历史文化～如果你不是对三国文化或者杜甫感兴趣～只是来感受成都的悠闲，可以选择去玉林街区citywalk～感受成都的悠闲与烟火气～ 景区的小吃和零食都很一般，性价比不高～ </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🎫门票：50元，窗口或者线上预约，都需要使用身份证。学生证半价优惠～</span></p>', 1, '2025-04-16 19:41:52');
INSERT INTO `scenic_strategy` VALUES (12, 8, 11, '/api/online-travel-sys/v1.0/file/getFile?fileName=b87e871西安兵马俑博物馆-01.jpg', '西安兵马俑博物馆攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🛕秦始皇帝陵博物院</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🎫门票：120（兵马俑➕丽山园） </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⚠️一定提前在 【秦始皇帝陵博物院】公众🎺买好 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⏰游玩时长：1天</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🍜吃饭：秦俑博物馆出门是很长的小吃街，秦俑博物馆里面有便利店。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🚗交通： 地铁到华清池站C口出，出来就是站台 🚎613路是私家车，五元一人中间只停一站。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🚌602路公交车，两元一人，到秦兵马俑站。兵马俑工作人员和陕西当地人都坐602，可能会遇到没座位的情况。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 💁关于讲解，我们是坐613听介绍找了每人38的讲解，15人一个团，导游很不负责，讲得很快，文物陈列厅不提就要带着匆匆出门结束。 官方的在第二个门进门处，80一位讲解员，人多一起会很划算。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⚠️里面到处都是讲解，不找随着听也完全可以，还省钱！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> - 🗿秦始皇兵马俑博物馆 🗺️游览顺序： 一号坑👉🏻三号坑👉🏻二号坑👉🏻文创店👉🏻文物陈列厅</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 1️⃣号坑是6000多名车兵、步兵组成的长方形军阵，千人千面，还会初始的发掘井址！ </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">3️⃣号坑象征着秦军作战的指挥部，面积只有520平方米，出土4马、2车、68个俑。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">2️⃣号坑是边挖掘边展出的形式，多种兵组合曲尺形兵阵。近距离展出了很有代表性的兵马俑。 完整出土的“跪射俑”、级别最高的“高级军吏俑”和“骑兵鞍马俑”和“立射俑”。 🔸秦始皇帝陵文物陈列厅，里面还蛮大，陈列兵马俑和诸多文物，也有历史的讲述。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">📮出口不远处有【兵马俑主题邮局】，门口有免费的彩色印章🔮建议来之前从钟楼邮政支局买一套五张的兵马俑邮资明信片，实惠也很好看，景区里都是5/张！ 🥗出口是很长的美食街，各种特色小吃都能找到，吃饱下午去丽山园。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> - ⛰️丽山园 坐5分钟🆓摆渡车直达，这才是秦始皇陵所在地❗️ 景区很大，建议坐15/位是观光车！ </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🗺️游览顺序： 9901展厅——铜车博物馆——0006陪葬坑（铜车马对面） 铜马车的展厅值得多留些时间，做工好精致～</span></p>', 1, '2025-04-16 19:57:32');
INSERT INTO `scenic_strategy` VALUES (13, 9, 12, '/api/online-travel-sys/v1.0/file/getFile?fileName=9ecad8a华清池-.01.webp', '华清池攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">中国古代四大皇家园林之一，唐宫建筑与山景相得益彰，一步一景，正月期间的氛围也是巨浓郁！！欢天喜地过大年的感觉！！ 随处可见的卖货郎，巡游演出，瞬间穿越回大唐盛世！！南倚骊山，北邻渭水，景色清幽宜人，只有身临其境才能感受它的美! </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">- 🗺️游玩路线： 🚶游玩路线 望京门 &nbsp;➡️ &nbsp;芙蓉湖 &nbsp;➡️ &nbsp;九龙湖 &nbsp;➡️ &nbsp;梨园遗址博物馆 &nbsp;➡️ &nbsp;唐御汤遗址博物馆 &nbsp;➡️ &nbsp;环园 &nbsp;➡️ &nbsp;-骊山老母殿-烽火戏诸侯烽火台-冰火《长恨歌》 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⛰骊山景点 兵谏亭（西安事变蒋介石） 老母宫（女娲补天的传说) 烽火台（烽火戏诸侯) -</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 📷拍照打卡机位 芙蓉湖、鹊桥 、长生殿、飞霜殿 、长生殿、九龙湖（演长恨歌的位置）环园(走楼梯上去可以拍俯瞰好看） 打卡机位比较多 包出片的 ⛩白天游玩景区，下午登骊山到老母殿祈福，晚上还可以看到骊山“曼哈顿” 就在去烽火台的路上，晚上华灯初上，拍照巨巨巨好看！！ </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">- 🎊春节期间（初一~初七）有各种表演（有好多，随处可见），年味浓度100%！！有新年氛围的红色华清宫打卡背景墙（在文创区域，有好几个可以打开拍照的地方） 1.唐宫巡游 2.杂技表演 3.秦腔戏曲 4.唐宫脱口秀新体验 5.观赏变脸喷火表演 还有各种互动巡游，体验很好，npc还会配合大家拍照 - 大家时间充足的话可以穿着汉服去，能看到《国色芳华》同款舞蹈演出 春节没赶上的小伙伴也别着急，后附正月初八到正月十四节目单，千万不要错过！</span></p>', 1, '2025-04-17 10:31:55');
INSERT INTO `scenic_strategy` VALUES (15, 10, 13, '/api/online-travel-sys/v1.0/file/getFile?fileName=76cc327武汉黄鹤楼公园-01.webp', '武汉黄鹤楼公园攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">黄鹤楼是四大名楼之一，也是武汉市标志性建筑，感兴趣的宝不容错过。赶紧收藏这份超实用攻略，轻松搞定你的黄鹤楼之旅～更多武汉攻略请至主页关注哦！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> </span><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/b98fbe9d7371faf3ff43342f166297cf6446531d.png\" alt=\"\" data-href=\"\" style=\"height: 16px;\"/><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">门票价格 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅日场票： 成人70元，学生/老人35元。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅夜场票： 成人120元，学生70元，夜场演出暂时暂停，请关注官方动态。 </span></p><p><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/b98fbe9d7371faf3ff43342f166297cf6446531d.png\" alt=\"\" data-href=\"\" style=\"height: 16px;\"/><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">购票方式：搜索“黄鹤楼门票”小程序或关注黄鹤楼官方公众号即可预约购票。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> </span><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/b98fbe9d7371faf3ff43342f166297cf6446531d.png\" alt=\"\" data-href=\"\" style=\"height: 16px;\"/><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">黄鹤楼游玩路线推荐：从西门入园，路线规划更顺畅，拍照更出片！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> </span><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/ae143d3423b5af03ae6b63dc197872ec6a59a6ff.png\" alt=\"\" data-href=\"\" style=\"height: 16px;\"/><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">路线： 西门入园：西门是进入黄鹤楼正门的最佳入口，方便直接拍到“黄鹤楼”正面。 黄鹤楼登楼：楼高五层，逐层参观：一层有壁画展示，顶层可俯瞰武汉三镇全景，感受大江奔流的壮阔。 千禧钟：景区内特色大钟，可现场敲钟祈福（需额外收费）。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 白云阁 &amp; 岳飞广场：白云阁是景区内的另一重要打卡点，周边还设有岳飞雕像广场，值得停留一会儿。 南门出园：在“天下江山第一楼”牌坊前拍张照，为这趟旅程画上完美句号。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 📌Tips: 如果计划前往长江大桥，西门和南门都比较近，出园后步行约10分钟即可到达大桥入口。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> </span><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/b98fbe9d7371faf3ff43342f166297cf6446531d.png\" alt=\"\" data-href=\"\" style=\"height: 16px;\"/><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">拍照打卡点</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅黄鹤楼正面（西门入口处）： 正面拍黄鹤楼，下午3点后阳光为背光，拍出的照片肤色更亮，蓝天更美。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅黄鹤楼顶层： 俯瞰武汉三镇，背景是长江和长江大桥，超震撼！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅长江大桥桥上： 从桥上拍黄鹤楼全景，尤其是夜晚灯光亮起时，非常出片。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">✅黄鹤楼夜景： 夜晚黄鹤楼灯光亮起，在司门口天桥或桥下街区远距离拍摄，氛围感拉满。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 📌避坑小贴士：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅闭园期间注意行程安排： 黄鹤楼改造期间，请勿贸然前往，避免跑空。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅日夜票分开： 白天票和夜场票不能通用，夜场不让白天入园，合理规划时间。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅拒绝园区高价商品： 景区内和附近商贩商品普遍较贵，不建议买纪念品或零食。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅避开上午时段： 建议下午3点后入园，避开人流高峰且拍照光线更好。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ✅穿舒适鞋： 楼内需逐层步行，鞋子舒适非常重要。</span></p>', 1, '2025-04-17 10:50:11');
INSERT INTO `scenic_strategy` VALUES (16, 21, 14, '/api/online-travel-sys/v1.0/file/getFile?fileName=2321fd0丽江古城-01.webp', '丽江古城攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">📍游玩路线： </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">忠义市场👉木府👉三眼井👉狮子山万古楼👉大水车👉大研花巷👉五一街👉大石桥👉四方街👉樱花餐厅👉古城南门。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🍱美食推荐： 腊排骨、汽锅鸡、鸡豆凉粉、包浆豆腐、鲜花玫瑰饼、鲜榨石榴汁、米线、手抓饭、白灼水性杨花。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🎁茶叶伴手礼推荐：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 在丽江古城，有很多茶庄可以挑选茶叶，这家黄花鱼茶叶仓库全都是明码标价，满满一仓库茶叶，品种多到数不过来，一件也是批发价！非常适合当伴手礼，老板娘还会热情请大家免费试喝呢🥳 她家还有翡翠也好好看，翡翠竟然也都是明码标价的，最适合我这个不会砍价的人！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🚗交通指南：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 飞机：丽江三义国际机场距丽江古城约30公里，可乘机场大巴、出租车或公交车前往。 火车：丽江火车站距丽江古城约10公里，可乘公交车、出租车或包车前往。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">💡注意事项： 古城内道路复杂易迷路，建议用地图或导航。 丽江气候多变，随身携带雨具和保暖衣物。 古城内物价相对高，可在古城外购买生活用品。</span></p>', 1, '2025-04-17 11:24:51');
INSERT INTO `scenic_strategy` VALUES (17, 22, 15, '/api/online-travel-sys/v1.0/file/getFile?fileName=6c70122昆明石林风景区-01.webp', '昆明石林风景攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">云南昆明石林彝族自治县，亚热带高原的喀斯特奇迹！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🌍 年均温16℃，四季如春，漫步其间，仿佛步入自然的空调房。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🍃 . 📜历史演变与地质奇迹 👀 想象一下，从汪洋大海到石林奇观，3亿年的沧桑巨变，就这样静静地展现在你眼前！</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">👣 芝云洞的古韵悠悠，诉说着“石林博物馆”的千年故事，历史的厚重感扑面而来～ .</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 🌄石林奇观，自然之魅 石林里，🏞剑峰直指云霄，柱状、蘑菇状...千姿百态，每一块石头都藏着自然的秘密。迷宫般的路径，转角即是惊喜，仿佛下一秒就能遇见童话里的精灵🧚♀！ . </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🎨彝族文化，人文瑰宝 说到人文，阿诗玛的传说在这里悠扬，彝族撒尼人的热情如火，斑斓的服饰、激昂的歌舞、原始的摔跤...一场场视觉盛宴，让你沉醉在浓郁的民族文化中！ .</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 📸打卡石林，记录美好 石林胜境、莲花峰、黑松岩的静谧、飞龙瀑的壮观、长湖的宁静...每一个景点都是拍照的绝佳背景，让你的朋友圈美照不断！📷 . </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">🎒旅行小贴士 石林不仅是观光胜地，更是科研教育的好去处。带上你的好奇心，来一场深度探索之旅，感受大自然的鬼斧神工与人文的温暖交融。🚀</span></p>', 1, '2025-04-17 11:32:54');
INSERT INTO `scenic_strategy` VALUES (18, 23, 16, '/api/online-travel-sys/v1.0/file/getFile?fileName=67d4be2九寨沟风景区-01.webp', '九寨沟风景区攻略', '<p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">九寨沟呈Y型分布，以诺日朗中心站为中心点，连接三条分支。主要以观光车➕徒步的方式游览。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">↖️左上支为则查洼沟，18公里，精华只有两个，长海和五彩池；</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">↗️右上支为日则沟，16公里，最顶点为原始森里，是九寨沟风景线的精华部分，观光点和乘车点较多，包括箭竹海、箭竹海瀑布、熊猫海、熊猫海瀑布、五花海、珍珠滩、珍珠滩瀑布、镜海等；</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">⬇️正下的主沟为树正沟，14公里，景点包括诺日朗瀑布、火花海、树正瀑布、犀牛海等。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">📍线路安排：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">进入景区大门后立即乘观光车，观光车听从景区调度开往↖️左上支or↗️右上支，也就是说你的游览线路可能为：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">1️⃣左上支-右上支-正下的主沟；</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">2️⃣右上支-左上支-正下的主沟。具体是哪一条，只有到了中心点诺日朗才能知道，但游览的景点和游览方式是一样的，见下方推荐玩法。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">📍推荐玩法：</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ↖️左上沟：乘车直接坐到长海🚃（P2-4聚集雪山森林湖泊，拍照建议下车点沿栈道下楼梯，避开人群），长海步行至五彩池🚶，五彩池乘车至诺日朗中心🚃。左上景点较少，可将大半时间留给另两条沟。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ↗️右上沟：乘车至箭竹海🚃，徒步穿过箭竹海、熊猫海🚶，箭竹海乘车至五花海🚃，乘车至珍珠滩瀑布🚃（流水迸溅宛如一颗颗珍珠，西游记取景点），徒步至镜海🚶，镜海乘车至诺日朗中心🚃。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> ⬇️主沟：诺日朗中心乘车至犀牛海🚃，犀牛海步行穿越老虎海到树正瀑布🚶，树正群海乘车到盆景滩🚃，盆景滩向回走800米至芦苇海🚶（不要在双龙海下车，否则步行2公里❗️）走回盆景滩乘车至出口🚃。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">建议</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 1. 推荐玩法附图片版，可保存查看。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 2. 中心点诺日朗中心为医疗、服务、饮食、休息中心，需要什么尽量在这里找。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 3. 建议八点半左右进入景区，避开旅游团，合理分配时间，个人最推荐日则沟和树正沟多玩会。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 4. 准备因人而异，这里推荐一些可能用到的：食物和水（适量），驱蚊，晕车药，雨具。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 5. 观光车充足，没座位等下一辆就好。 </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">6. 长海海拔3100米，是景区内海拔最高的景点，容易高反的朋友不要剧烈运动。</span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\"> 7. 景区很大，需要一天时间。建议头天入住沟口附近酒店，第二天玩一天，第三天返回成都。（具体可参考上一篇攻略） </span></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 16px;\">8. 希望大家爱护景区，玩的开心～</span></p>', 1, '2025-04-17 11:40:35');
INSERT INTO `scenic_strategy` VALUES (19, 11, 17, '/api/online-travel-sys/v1.0/file/getFile?fileName=ceb3fe1峨眉山风景区-01.webp', '峨眉山风景区攻略', '<p>峨眉山自驾攻略</p><p>🚘【自驾游路线】</p><p>（下高速自驾40-60min至）零公里停车场-（坐景区巴士40min至）雷洞坪-（步行20min至）接引殿-（坐索道3min至）十方普贤-（步行20-30min至）金顶 🔆</p><p>[Tips]</p><p>①零公里到雷洞坪必须要买景区大巴票，不接受徒步；</p><p>②不坐索道，选择步行总共需要花费1.5-2h；</p><p>③车技不好的可以把车停在黄湾坐车上来，进零公里的路不算容易走，特别是夜晚和雪天；</p><p>④冬天山上路面积雪的话，建议爬上去坐索道下来，不然积雪清理不及时的话，下山容易滑倒。 </p><p>💤【住宿】零公里附近很多住宿，或者山上也有酒店，而山上寺庙投宿几十元/人。（免费安利一下我们住的山门酒店，离零公里乘车点步行距离三分钟，房间干净吃饭便宜，店员们还分享了很多游玩和拜佛的注意点给我们） </p><p>🍚【吃饭】零公里有较多饭店，价格实惠。进山后小吃店多，有一定溢价，不过在山上景区来说不算贵。</p><p> 💳【购票】“峨眉山景区”公众号可购门票、车票和索道票，记得看准上下行的车站名称。</p><p> 🙏【礼佛】顶上的华藏寺有六处礼佛点，我们住的酒店小姐姐推荐是在金银铜殿三处烧香（即铜-大雄宝殿，银-观音殿，金-金顶），可自带香烛。烧香前应先点燃自己的蜡烛，然后用自己蜡烛的火点燃自己的香，再拜佛。</p>', 0, '2025-04-17 18:49:50');

-- ----------------------------
-- Table structure for scenic_ticket
-- ----------------------------
DROP TABLE IF EXISTS `scenic_ticket`;
CREATE TABLE `scenic_ticket`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景区门票主键ID， 自增',
  `scenic_id` int NULL DEFAULT NULL COMMENT '景点ID',
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '门票描述',
  `number` int NULL DEFAULT NULL COMMENT '门票数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '门票价格',
  `discount` double(10, 1) NULL DEFAULT NULL COMMENT '折扣',
  `use_status` tinyint(1) NULL DEFAULT NULL COMMENT '门票的可用状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic_ticket
-- ----------------------------
INSERT INTO `scenic_ticket` VALUES (2, 6, '成人票', 220, 100.00, 7.0, 1, '2025-04-10 20:18:16');
INSERT INTO `scenic_ticket` VALUES (7, 6, '学生票', 173, 80.00, 8.0, 1, '2025-04-13 11:16:55');
INSERT INTO `scenic_ticket` VALUES (8, 2, '出现门票bug后修改后的数据', 999, 230.00, 9.0, 1, '2025-04-13 11:33:52');
INSERT INTO `scenic_ticket` VALUES (9, 10, '4人团体票', 291, 400.00, 9.0, 1, '2025-04-16 14:46:03');
INSERT INTO `scenic_ticket` VALUES (10, 10, '单人票', 195, 140.00, 9.0, 1, '2025-04-16 14:50:23');
INSERT INTO `scenic_ticket` VALUES (11, 9, '成人票', 241, 200.00, 9.0, 1, '2025-04-16 16:26:29');
INSERT INTO `scenic_ticket` VALUES (12, 9, '儿童票', 290, 150.00, 9.0, 1, '2025-04-16 16:47:24');
INSERT INTO `scenic_ticket` VALUES (13, 9, '4人团体票', 495, 600.00, 8.0, 1, '2025-04-16 16:49:18');
INSERT INTO `scenic_ticket` VALUES (14, 8, '成人票', 586, 60.00, 9.0, 1, '2025-04-16 17:08:22');
INSERT INTO `scenic_ticket` VALUES (15, 8, '学生票', 741, 40.00, 8.5, 1, '2025-04-16 17:09:03');
INSERT INTO `scenic_ticket` VALUES (16, 7, '长隆野生动物世界单人票', 721, 210.00, 9.0, 1, '2025-04-16 17:28:50');
INSERT INTO `scenic_ticket` VALUES (17, 7, '长隆欢乐世界单人票', 528, 250.00, 9.1, 1, '2025-04-16 17:29:35');
INSERT INTO `scenic_ticket` VALUES (18, 7, '长隆飞鸟乐园单人', 633, 300.00, 8.7, 1, '2025-04-16 17:30:21');
INSERT INTO `scenic_ticket` VALUES (19, 2, '单人票', 963, 55.00, 9.1, 1, '2025-04-16 19:29:47');
INSERT INTO `scenic_ticket` VALUES (20, 1, '单人票', 949, 50.00, 9.6, 1, '2025-04-16 19:42:11');
INSERT INTO `scenic_ticket` VALUES (21, 11, '单人票', 645, 120.00, 9.6, 1, '2025-04-16 19:52:55');
INSERT INTO `scenic_ticket` VALUES (22, 12, '单人票', 645, 150.00, 9.0, 1, '2025-04-17 10:31:23');
INSERT INTO `scenic_ticket` VALUES (23, 13, '白天单人票', 542, 70.00, 9.0, 1, '2025-04-17 10:46:42');
INSERT INTO `scenic_ticket` VALUES (24, 13, '夜晚单人票', 1744, 120.00, 9.5, 1, '2025-04-17 10:47:18');
INSERT INTO `scenic_ticket` VALUES (25, 14, '单人票', 767, 50.00, 9.0, 1, '2025-04-17 11:28:37');
INSERT INTO `scenic_ticket` VALUES (26, 15, '成人票', 985, 130.00, 9.0, 1, '2025-04-17 11:33:45');
INSERT INTO `scenic_ticket` VALUES (27, 15, '学生票', 285, 65.00, 8.0, 1, '2025-04-17 11:34:02');
INSERT INTO `scenic_ticket` VALUES (28, 16, '全票', 3214, 190.00, 9.0, 1, '2025-04-17 11:43:26');
INSERT INTO `scenic_ticket` VALUES (29, 16, '车票', 1394, 90.00, 9.0, 1, '2025-04-17 11:43:45');
INSERT INTO `scenic_ticket` VALUES (32, 17, '单人票', 838, 150.00, 9.0, 1, '2025-04-17 19:29:36');

-- ----------------------------
-- Table structure for scenic_ticket_order
-- ----------------------------
DROP TABLE IF EXISTS `scenic_ticket_order`;
CREATE TABLE `scenic_ticket_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '景区门票订单信息主键ID，自增',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `ticket_id` int NULL DEFAULT NULL COMMENT '门票ID',
  `concat_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系人',
  `concat_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买数量',
  `pay_status` tinyint(1) NULL DEFAULT NULL COMMENT '支付状态',
  `pay_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of scenic_ticket_order
-- ----------------------------
INSERT INTO `scenic_ticket_order` VALUES (371, 23, 29, '李威', '15011223344', 243.00, 3, 1, '2025-04-01 21:47:10', '2025-04-01 21:46:39');
INSERT INTO `scenic_ticket_order` VALUES (372, 23, 28, '王丽', '15122334455', 342.00, 2, 1, '2025-04-02 21:47:08', '2025-04-02 21:47:04');
INSERT INTO `scenic_ticket_order` VALUES (373, 23, 29, '张涛', '15233445566', 162.00, 2, 1, '2025-04-03 21:50:00', '2025-04-03 21:48:05');
INSERT INTO `scenic_ticket_order` VALUES (374, 23, 28, '刘敏', '15344556677', 513.00, 3, 1, '2025-04-04 21:49:59', '2025-04-04 21:48:25');
INSERT INTO `scenic_ticket_order` VALUES (375, 22, 27, '杨雪', '15566778899', 416.00, 8, 1, '2025-04-01 21:47:10', '2025-04-01 21:46:39');
INSERT INTO `scenic_ticket_order` VALUES (376, 22, 27, '赵强', '15677889900', 260.00, 5, 1, '2025-04-02 21:47:08', '2025-04-02 21:47:04');
INSERT INTO `scenic_ticket_order` VALUES (377, 22, 26, '黄杰', '15788990011', 468.00, 4, 1, '2025-04-03 21:50:00', '2025-04-03 21:48:05');
INSERT INTO `scenic_ticket_order` VALUES (378, 22, 26, '周霞', '15899001122', 936.00, 8, 1, '2025-04-04 21:49:59', '2025-04-04 21:48:25');
INSERT INTO `scenic_ticket_order` VALUES (379, 21, 25, '吴军', '15900112233', 180.00, 4, 1, '2025-04-01 21:47:10', '2025-04-01 21:46:39');
INSERT INTO `scenic_ticket_order` VALUES (380, 21, 25, '徐红', '16011223344', 135.00, 3, 1, '2025-04-02 21:47:08', '2025-04-02 21:47:04');
INSERT INTO `scenic_ticket_order` VALUES (381, 21, 25, '孙浩', ' 16122334455', 45.00, 1, 1, '2025-04-03 21:50:00', '2025-04-03 21:48:05');
INSERT INTO `scenic_ticket_order` VALUES (382, 21, 25, '胡静', '16233445566', 270.00, 6, 1, '2025-04-04 21:49:59', '2025-04-04 21:48:25');
INSERT INTO `scenic_ticket_order` VALUES (383, 12, 10, '林超', '16566778899', 378.00, 3, 1, '2025-04-01 21:47:10', '2025-04-01 21:46:39');
INSERT INTO `scenic_ticket_order` VALUES (384, 12, 9, '林超', '16566778899', 1440.00, 4, 1, '2025-04-02 21:47:08', '2025-04-02 21:47:04');
INSERT INTO `scenic_ticket_order` VALUES (385, 12, 9, '曹婷', '16788990011', 360.00, 1, 1, '2025-04-03 21:50:00', '2025-04-03 21:48:05');
INSERT INTO `scenic_ticket_order` VALUES (386, 12, 9, '马辉', '1689900112', 360.00, 1, 1, '2025-04-04 21:49:59', '2025-04-04 21:48:25');
INSERT INTO `scenic_ticket_order` VALUES (387, 11, 32, '苏丽', '16900112233', 270.00, 2, 1, '2025-04-04 22:20:16', '2025-04-04 22:20:00');
INSERT INTO `scenic_ticket_order` VALUES (388, 11, 32, '王丽', '15566778899', 135.00, 1, 1, '2025-04-01 21:47:10', '2025-04-01 21:46:39');
INSERT INTO `scenic_ticket_order` VALUES (389, 11, 32, '张涛', '15677889900', 135.00, 1, 1, '2025-04-02 21:47:08', '2025-04-02 21:47:04');
INSERT INTO `scenic_ticket_order` VALUES (390, 11, 32, '刘敏', '15788990011', 135.00, 1, 1, '2025-04-03 21:50:00', '2025-04-03 21:48:05');
INSERT INTO `scenic_ticket_order` VALUES (391, 11, 32, '杨雪', '15899001122', 135.00, 1, 1, '2025-04-04 21:49:59', '2025-04-04 21:48:25');
INSERT INTO `scenic_ticket_order` VALUES (392, 10, 24, '王丽', '1689900112', 114.00, 1, 1, '2025-04-01 21:47:10', '2025-04-01 21:46:39');
INSERT INTO `scenic_ticket_order` VALUES (393, 10, 23, '张涛', '16900112233', 189.00, 3, 1, '2025-04-02 21:47:08', '2025-04-02 21:47:04');
INSERT INTO `scenic_ticket_order` VALUES (394, 10, 24, '刘敏', '15566778899', 342.00, 3, 1, '2025-04-03 21:50:00', '2025-04-03 21:48:05');
INSERT INTO `scenic_ticket_order` VALUES (395, 10, 23, '杨雪', '15677889900', 63.00, 1, 1, '2025-04-04 21:49:59', '2025-04-04 21:48:25');
INSERT INTO `scenic_ticket_order` VALUES (396, 9, 22, '王丽', '1689900112', 675.00, 5, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (397, 9, 22, '张涛', '16900112233', 405.00, 3, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (398, 9, 22, '刘敏', '15566778899', 540.00, 4, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (399, 9, 22, '杨雪', '15677889900', 135.00, 1, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (400, 8, 21, '王丽', '1689900112', 115.20, 1, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (401, 8, 21, '张涛', '16900112233', 345.60, 3, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (402, 8, 21, '刘敏', '15566778899', 576.00, 5, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (403, 8, 21, '杨雪', '15677889900', 115.20, 1, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (404, 7, 20, '王丽', '1689900112', 192.00, 4, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (405, 7, 20, '张涛', '16900112233', 96.00, 2, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (406, 7, 20, '刘敏', '15566778899', 48.00, 1, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (407, 7, 20, '杨雪', '15677889900', 288.00, 6, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (408, 6, 19, '王丽', '1689900112', 50.05, 1, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (409, 6, 19, '张涛', '16900112233', 250.25, 5, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (410, 6, 19, '刘敏', '15566778899', 250.25, 5, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (411, 6, 19, '杨雪', '15677889900', 400.40, 8, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (412, 5, 7, '王丽', '1689900112', 576.00, 9, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (413, 5, 2, '张涛', '16900112233', 70.00, 1, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (414, 5, 2, '刘敏', '15566778899', 210.00, 3, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (415, 5, 7, '杨雪', '15677889900', 64.00, 1, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (416, 4, 18, '王丽', '1689900112', 783.00, 3, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (417, 4, 17, '张涛', '16900112233', 455.00, 2, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (418, 4, 16, '刘敏', '15566778899', 1701.00, 9, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (419, 4, 18, '杨雪', '15677889900', 2088.00, 8, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (420, 3, 15, '王丽', '1689900112', 136.00, 4, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (421, 3, 14, '张涛', '16900112233', 162.00, 3, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (422, 3, 14, '刘敏', '15566778899', 432.00, 8, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (423, 3, 15, '杨雪', '15677889900', 136.00, 4, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');
INSERT INTO `scenic_ticket_order` VALUES (424, 2, 13, '王丽', '1689900112', 1440.00, 3, 1, '2025-04-01 21:50:03', '2025-04-01 21:49:12');
INSERT INTO `scenic_ticket_order` VALUES (425, 2, 12, '张涛', '16900112233', 1080.00, 8, 1, '2025-04-02 21:50:02', '2025-04-02 21:49:27');
INSERT INTO `scenic_ticket_order` VALUES (426, 2, 11, '刘敏', '15566778899', 1260.00, 7, 1, '2025-04-03 21:50:02', '2025-04-03 21:49:38');
INSERT INTO `scenic_ticket_order` VALUES (427, 2, 13, '杨雪', '15677889900', 480.00, 1, 1, '2025-04-04 21:50:02', '2025-04-04 21:49:55');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_role` int NULL DEFAULT NULL COMMENT '用户角色',
  `is_login` tinyint(1) NULL DEFAULT NULL COMMENT '可登录状态(0：可用，1：不可用)',
  `is_word` tinyint(1) NULL DEFAULT NULL COMMENT '禁言状态(0：可用，1：不可用)',
  `create_time` datetime NULL DEFAULT NULL COMMENT '用户注册时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '后台管理员', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=8a4bfd7头像12.jpg', '15454534343@qq.com', 1, 0, 0, '2024-10-25 12:53:05');
INSERT INTO `user` VALUES (2, 'zhoumin', '周敏', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=07a805b头像8.jpg', '789012345@qq.com', 2, 0, 0, '2024-10-09 12:53:05');
INSERT INTO `user` VALUES (3, 'huanglei', '黄磊', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=41dfc1f头像3.jpg', '678901234@qq.com', 2, 0, 0, '2024-10-19 12:53:05');
INSERT INTO `user` VALUES (4, 'yangguang', '杨光', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=81e9c95头像6.jpg', '567890123@qq.com', 2, 0, 0, '2024-10-15 12:53:05');
INSERT INTO `user` VALUES (5, 'chenjing', '陈静', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=35b61b0头像5.jpg', '456789012@qq.com', 2, 0, 0, '2024-10-25 16:42:32');
INSERT INTO `user` VALUES (6, 'liuyang', '刘洋', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=f95ba9c头像4.png', '345678901@qq.com', 2, 0, 0, '2024-10-25 16:42:53');
INSERT INTO `user` VALUES (7, 'wangqiang', '王强	', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=8f56068头像3.jpg', '234567890@qq.com', 2, 0, 0, '2024-10-25 16:43:57');
INSERT INTO `user` VALUES (8, 'laizhaoxi', '赖昭熙', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=2d2c0dd头像1.jpg', '1277594082@qq.com', 2, 0, 0, '2025-04-11 00:38:20');
INSERT INTO `user` VALUES (9, 'lina', '李娜', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=fe853b6头像2.jpg', '987654321@qq.com', 2, 0, 0, '2024-10-25 16:44:46');
INSERT INTO `user` VALUES (10, 'hejuan', '何娟', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=4f7cc02头像10.jpg', '456789013@qq.com', 2, 0, 0, '2025-04-16 10:43:18');
INSERT INTO `user` VALUES (11, 'guotao', '郭涛', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=758b0de头像11.jpg', '345678902@qq.com', 2, 0, 0, '2025-04-16 10:44:23');
INSERT INTO `user` VALUES (12, 'hujun', '胡军', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=8d848f7头像13.jpg', '234567891@qq.com', 2, 0, 0, '2025-04-16 10:45:07');
INSERT INTO `user` VALUES (21, 'lixiaofeng', '李晓风', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=93ee640头像15.jpg', '3001765432@qq.com', 2, 0, 0, '2025-04-17 10:54:00');
INSERT INTO `user` VALUES (22, 'wangjingyi', '王静怡', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=1187744头像16.png', '3002765432@qq.com', 2, 0, 0, '2025-04-17 10:54:46');
INSERT INTO `user` VALUES (23, 'zhangweiqiang', '张伟强', '14e1b600b1fd579f47433b88e8d85291', '/api/online-travel-sys/v1.0/file/getFile?fileName=bfc3b79头像17.jpg', '3003765432@qq.com', 2, 0, 0, '2025-04-17 10:55:20');

-- ----------------------------
-- Table structure for vendor
-- ----------------------------
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '供应商表主键ID，自增',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '供应商的名称',
  `concat_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '供应商联系人',
  `concat_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '供应商联系电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电子邮箱',
  `product_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '产品类型',
  `work_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '办公地址',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `is_audit` tinyint(1) NULL DEFAULT NULL COMMENT '是否已经审核',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '供应商的状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vendor
-- ----------------------------
INSERT INTO `vendor` VALUES (1, '八达岭长城风景区', '王主管', '13987654321', '1608765432@qq.com', '景点', '北京市延庆区1', 12, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (2, '上海迪士尼乐园', '李总监', '13987654321', '1608765432@qq.com', '景点', '上海市青浦区', 2, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (3, '故宫博物院', '陈女士	', '13566778899', '1620765432@qq.com', '景点', '北京市东城区1', 3, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (4, '广州长隆旅游度假区', '张经理', '13812345678', '1597865432@qq.com	', '景点', '广州市番禺区', 4, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (5, '深圳世界之窗', '刘先生', '13699887766', '1620765432@qq.com', '景点', '深圳市南山区', 5, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (6, '成都大熊猫繁育研究基地', '杨经理', '13455667788', '1642765432@qq.com', '景点', '成都市成华区', 6, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (7, '锦里古街', '黄主管', '13344556677', '1653765432@qq.com', '景点', '成都市武侯区', 7, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (8, '西安兵马俑博物馆', '周先生', '13233445566', '1664765432@qq.com', '景点', '西安市临潼区', 8, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (9, '华清池', '吴女士', '13122334455', '1697765432@qq.com', '景点', '	西安市临潼区', 9, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (10, '武汉黄鹤楼公园', '徐经理', '13122334455', '1708765432@qq.com	', '景点', '武汉市武昌区', 10, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (11, '峨眉山风景区', '孙总监', '13099876543', '	1719765432@qq.com', '景点', '四川省峨眉山市', 11, 1, 1, '2025-04-08 18:10:48');
INSERT INTO `vendor` VALUES (12, '丽江古城', '钱经理', '13900123456', '2020765432@qq.com', '景点', '云南省丽江市', 21, 1, 1, '2025-04-16 13:52:21');
INSERT INTO `vendor` VALUES (13, '昆明石林风景区', '	冯先生', '13722345678', '2018765432@qq.com', '景点', '云南省昆明市', 22, 1, 1, '2025-04-15 13:52:57');
INSERT INTO `vendor` VALUES (14, '九寨沟风景区', '赖先生', '13366789086', '2894765432@qq.com', '景点', '四川省阿坝藏族羌族自治州', 23, 1, 1, '2025-04-17 13:53:47');

SET FOREIGN_KEY_CHECKS = 1;
