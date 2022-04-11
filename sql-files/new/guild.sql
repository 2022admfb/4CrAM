/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : ragnarok

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 14/03/2021 11:16:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `guild_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL DEFAULT '',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `master` varchar(24) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `connect_member` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `max_member` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `average_lv` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `next_exp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `mes1` varchar(60) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL DEFAULT '',
  `mes2` varchar(120) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL DEFAULT '',
  `emblem_len` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_data` blob NULL,
  `last_master_change` datetime(0) NULL DEFAULT NULL,
  `rent_date` datetime(0) NULL DEFAULT NULL,
  `rent_hour` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `rent_minute` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `char_id`) USING BTREE,
  UNIQUE INDEX `guild_id`(`guild_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
