/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : db_spzx

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 07/02/2025 09:58:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品牌名称',
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品牌图标',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '小米', 'http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg', '2023-05-06 09:30:27', '2025-01-22 05:48:34', 0);
INSERT INTO `brand` VALUES (2, '华为', 'http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png', '2023-05-06 09:31:19', '2025-01-22 05:47:40', 0);
INSERT INTO `brand` VALUES (3, '14', '1', '2023-07-18 16:09:22', '2023-07-18 16:29:18', 1);
INSERT INTO `brand` VALUES (4, 'opop4', 'http://127.0.0.1:9000/spzx-bucket/20230718/fc34453767a245b5836d3693dd4a5be2.jpg', '2023-07-18 16:21:12', '2023-07-18 16:29:20', 1);
INSERT INTO `brand` VALUES (5, 'vivo', 'http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png', '2025-01-22 03:26:44', '2025-01-23 03:52:20', 0);
INSERT INTO `brand` VALUES (6, 'oppo', 'http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg', '2025-01-22 03:43:28', '2025-01-23 03:52:28', 0);
INSERT INTO `brand` VALUES (7, '333', 'http://127.0.0.1:9000/spzx-bucket/20250122/552b9824c7fc47f29379743e247021e6112123.jpg', '2025-01-22 04:02:45', '2025-01-22 04:03:17', 1);
INSERT INTO `brand` VALUES (8, '333', 'http://127.0.0.1:9000/spzx-bucket/20250122/59a6528a58764b0f9509c60d99692cd6asian beuty.jpg', '2025-01-22 04:03:52', '2025-01-22 04:03:58', 1);
INSERT INTO `brand` VALUES (9, 'iphone', 'http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png', '2025-01-22 06:17:11', '2025-01-22 06:17:48', 0);
INSERT INTO `brand` VALUES (10, '三星', 'http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg', '2025-01-22 21:43:55', '2025-01-23 03:52:08', 0);
INSERT INTO `brand` VALUES (11, '诺基亚', 'http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg', '2025-01-22 21:50:37', '2025-01-23 03:51:58', 0);
INSERT INTO `brand` VALUES (12, '索尼', 'http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png', '2025-01-22 23:20:48', '2025-01-22 23:20:48', 0);
INSERT INTO `brand` VALUES (13, '荣耀', 'http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg', '2025-01-23 03:44:28', '2025-01-23 03:44:28', 0);
INSERT INTO `brand` VALUES (14, '红米', 'http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg', '2025-01-23 03:50:50', '2025-01-23 03:50:50', 0);
INSERT INTO `brand` VALUES (15, '步步高', 'http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png', '2025-01-23 03:51:10', '2025-01-23 03:51:10', 0);
INSERT INTO `brand` VALUES (16, '特斯拉', 'http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg', '2025-01-23 03:51:40', '2025-01-23 03:56:32', 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类名称',
  `image_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父分类id',
  `status` tinyint NULL DEFAULT NULL COMMENT '是否显示[0-不显示，1显示]',
  `order_num` int NULL DEFAULT NULL COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9992 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '数码办公', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/230f48f024a343c6be9be72597c2dcd0.png', 0, 1, 1, '2023-05-22 15:30:28', '2023-05-23 14:51:05', 0);
INSERT INTO `category` VALUES (2, '手机通讯', '', 1, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (3, '手机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204943.png', 2, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (4, '对讲机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204944.png', 2, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (5, '摄影摄像', '', 1, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (6, '数码相机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204947.png', 5, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (7, '单电/微单相机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204948.png', 5, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (8, '单反相机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204949.png', 5, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (9, '摄像机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204950.png', 5, 1, 0, '2023-05-22 15:30:28', '2023-05-22 15:30:28', 0);
INSERT INTO `category` VALUES (10, '拍立得', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204951.png', 5, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (11, '镜头', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204952.png', 5, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (12, '数码配件', '', 1, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (13, '存储卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204954.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (14, '读卡器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204955.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (15, '滤镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204956.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (16, '闪光灯/手柄', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204957.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (17, '相机包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204958.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (18, '三脚架/云台', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204959.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (19, '相机清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204960.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (20, '相机贴膜	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204961.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (21, '机身附件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204962.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (22, '镜头附件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204963.png', 12, 1, 0, '2023-05-22 15:30:29', '2023-05-22 15:30:29', 0);
INSERT INTO `category` VALUES (23, '电池/充电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204964.png', 12, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (24, '移动电源', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204965.png', 12, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (25, 'SSS', '', 12, 1, 100, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (26, '时尚影音', '', 1, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (27, 'MP3/MP4', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204967.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (28, '智能设备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204968.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (29, '耳机/耳麦', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204969.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (30, '音箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204970.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (31, '高清播放器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204971.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (32, '电子书', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204972.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (33, '电子词典', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204973.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (34, 'MP3/MP4配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204974.png', 26, 1, 0, '2023-05-22 15:30:30', '2023-05-22 15:30:30', 0);
INSERT INTO `category` VALUES (35, '录音笔', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204975.png', 26, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (36, '麦克风', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204976.png', 26, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (37, '专业音频', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204977.png', 26, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (38, '电子教育', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204978.png', 26, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (39, '数码相框', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204979.png', 26, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (40, '苹果配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204980.png', 26, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (41, '电脑整机', '', 1, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (42, '笔记本', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204982.png', 41, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (43, '超极本', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204983.png', 41, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (44, '游戏本', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204984.png', 41, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (45, '平板电脑', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204985.png', 41, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (46, '平板电脑配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204986.png', 41, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (47, '台式机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204987.png', 41, 1, 0, '2023-05-22 15:30:31', '2023-05-22 15:30:31', 0);
INSERT INTO `category` VALUES (48, '服务器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204988.png', 41, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (49, '笔记本配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204989.png', 41, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (50, '电脑配件', '', 1, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (51, 'CPU', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399105.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (52, '主板', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399106.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (53, '显卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399107.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (54, '硬盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399108.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (55, 'SSD固态硬盘	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399109.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (56, '内存', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399110.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (57, '机箱	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399111.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (58, '电源', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399112.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (59, '显示器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399113.png', 50, 1, 0, '2023-05-22 15:30:32', '2023-05-22 15:30:32', 0);
INSERT INTO `category` VALUES (60, '刻录机/光驱	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399114.png', 50, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (61, '散热器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399115.png', 50, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (62, '声卡/扩展卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399116.png', 50, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (63, '装机配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399117.png', 50, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (64, '外设产品', '', 1, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (65, '鼠标', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399119.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (66, '键盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399120.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (67, '移动硬盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399121.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (68, 'U盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399122.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (69, '摄像头', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399123.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (70, '外置盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399124.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (71, '游戏设备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399125.png', 64, 1, 0, '2023-05-22 15:30:33', '2023-05-22 15:30:33', 0);
INSERT INTO `category` VALUES (72, '电视盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399126.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (73, '手写板	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399127.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (74, '鼠标垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399128.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (75, '插座', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399129.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (76, 'UPS电源	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399130.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (77, '线缆	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399131.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (78, '电脑工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399132.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (79, '电脑清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399133.png', 64, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (80, '网络产品', '', 1, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (81, '路由器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399135.png', 80, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (82, '网卡', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399136.png', 80, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (83, '交换机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399137.png', 80, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (84, '网络存储', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399138.png', 80, 1, 0, '2023-05-22 15:30:34', '2023-05-22 15:30:34', 0);
INSERT INTO `category` VALUES (85, '3G上网', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399139.png', 80, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (86, '网络盒子	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399140.png', 80, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (87, '办公打印', '', 1, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (88, '打印机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399142.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (89, '一体机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399143.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (90, '投影机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399144.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (91, '投影配件	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399145.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (92, '传真机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399146.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (93, '复合机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399147.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (94, '碎纸机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399148.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (95, '扫描仪	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399149.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (96, '墨盒	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399150.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (97, '墨粉', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399151.png', 87, 1, 0, '2023-05-22 15:30:35', '2023-05-22 15:30:35', 0);
INSERT INTO `category` VALUES (98, '色带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399152.png', 87, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (99, '定制服务', '', 87, 1, 100, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (100, '办公文仪', '', 1, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (101, '办公文具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399154.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (102, '文件管理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399155.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (103, '笔类	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399156.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (104, '纸类	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399157.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (105, '本册/便签	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399158.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (106, '学生文具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399159.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (107, '财务用品	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399160.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (108, '计算器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399161.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (109, '激光笔', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399162.png', 100, 1, 0, '2023-05-22 15:30:36', '2023-05-22 15:30:36', 0);
INSERT INTO `category` VALUES (110, '白板/封装	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399163.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (111, '考勤机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399164.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (112, '刻录碟片/附件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399165.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (113, '点钞机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399166.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (114, '支付设备/POS机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399167.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (115, '安防监控	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399168.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (116, '呼叫/会议设备	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399169.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (117, '保险柜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399170.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (118, '办公家具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399171.png', 100, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (119, '家用电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/ada7d39419554cb1ab52b3d5aae1563a.png', 0, 1, 2, '2023-05-22 15:30:37', '2023-05-23 14:52:07', 0);
INSERT INTO `category` VALUES (120, '大家电', '', 119, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (121, '平板电视	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399555.png', 120, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (122, '空调	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399556.png', 120, 1, 0, '2023-05-22 15:30:37', '2023-05-22 15:30:37', 0);
INSERT INTO `category` VALUES (123, '冰箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399557.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (124, '洗衣机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399558.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (125, '家庭影院	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399559.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (126, 'DVD播放机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399560.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (127, '迷你音响	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399561.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (128, '烟机/灶具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399562.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (129, '热水器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399563.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (130, '消毒柜/洗碗机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399564.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (131, '酒柜/冰吧/冷柜	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399565.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (132, '家电配件	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399566.png', 120, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (133, '生活电器', '', 119, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (134, '电风扇	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399568.png', 133, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (135, '吸尘器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399569.png', 133, 1, 0, '2023-05-22 15:30:38', '2023-05-22 15:30:38', 0);
INSERT INTO `category` VALUES (136, '加湿器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399570.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (137, '净水设备	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399571.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (138, '饮水机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399572.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (139, '冷风扇	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399573.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (140, '电话机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399574.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (141, '插座	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399575.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (142, '除湿/干衣机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399576.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (143, '清洁机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399577.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (144, '取暖电器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399578.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (145, '其它生活电器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399579.png', 133, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (146, '厨房电器', '', 119, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (147, '料理/榨汁机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399581.png', 146, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (148, '豆浆机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399582.png', 146, 1, 0, '2023-05-22 15:30:39', '2023-05-22 15:30:39', 0);
INSERT INTO `category` VALUES (149, '电饭煲	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399583.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (150, '电压力锅	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399584.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (151, '面包机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399585.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (152, '咖啡机	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399586.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (153, '微波炉	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399587.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (154, '电烤箱	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399588.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (155, '电饼铛/烧烤盘	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399589.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (156, '煮蛋器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399590.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (157, '电水壶/热水瓶	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399591.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (158, '其它厨房电器	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399592.png', 146, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (159, '五金家装', '', 119, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (160, '电动工具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399609.png', 159, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (161, '手动工具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399610.png', 159, 1, 0, '2023-05-22 15:30:40', '2023-05-22 15:30:40', 0);
INSERT INTO `category` VALUES (162, '仪器仪表	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399611.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (163, '浴霸/排气扇	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399612.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (164, '灯具	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399613.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (165, 'LED灯	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399614.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (166, '水槽	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399615.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (167, '龙头', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399616.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (168, '淋浴花洒	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399617.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (169, '厨卫五金	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399618.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (170, '家具五金', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399619.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (171, '插座	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399620.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (172, '电工电料	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399621.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (173, '监控安防	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399622.png', 159, 1, 0, '2023-05-22 15:30:41', '2023-05-22 15:30:41', 0);
INSERT INTO `category` VALUES (174, '服装鞋帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/9bd0d0ed2ec546619d62889f2ae465c7.jpeg', 0, 1, 3, '2023-05-22 15:30:41', '2023-05-23 14:52:35', 0);
INSERT INTO `category` VALUES (175, '女装', '', 174, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (176, 'T恤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204801.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (177, '衬衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204802.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (178, '雪纺衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204803.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (179, '卫衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204804.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (180, '马甲', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204805.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (181, '连衣裙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204806.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (182, '半身裙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204807.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (183, '牛仔裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204808.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (184, '休闲裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204809.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (185, '正装裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204810.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (186, '西服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204811.png', 175, 1, 0, '2023-05-22 15:30:42', '2023-05-22 15:30:42', 0);
INSERT INTO `category` VALUES (187, '短外套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204812.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (188, '风衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204813.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (189, '大衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204814.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (190, '皮衣皮草', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204815.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (191, '棉服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204816.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (192, '羽绒服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204817.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (193, '孕妇装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204818.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (194, '大码装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204819.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (195, '婚纱礼服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204820.png', 175, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (196, '男装', '', 174, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (197, '衬衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204822.png', 196, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (198, 'T恤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204823.png', 196, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (199, 'POLO衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204824.png', 196, 1, 0, '2023-05-22 15:30:43', '2023-05-22 15:30:43', 0);
INSERT INTO `category` VALUES (200, '针织衫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204825.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (201, '卫衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204826.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (202, '马甲／背心', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204827.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (203, '夹克', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204828.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (204, '风衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204829.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (205, '大衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204830.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (206, '皮衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204831.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (207, '外套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204832.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (208, '西服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204833.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (209, '牛仔裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204834.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (210, '休闲裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204835.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (211, '西裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204836.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (212, '西服套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204837.png', 196, 1, 0, '2023-05-22 15:30:44', '2023-05-22 15:30:44', 0);
INSERT INTO `category` VALUES (213, '大码装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204838.png', 196, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (214, '中老年装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204839.png', 196, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (215, '唐装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204840.png', 196, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (216, '工装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204841.png', 196, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (217, '内衣', '', 174, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (218, '文胸', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204843.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (219, '女式内裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204844.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (220, '男式内裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204845.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (221, '家居', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204846.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (222, '睡衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204847.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (223, '塑身衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204848.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (224, '睡袍／浴袍', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204849.png', 217, 1, 0, '2023-05-22 15:30:45', '2023-05-22 15:30:45', 0);
INSERT INTO `category` VALUES (225, '泳衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204850.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (226, '背心', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204851.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (227, '抹胸', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204852.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (228, '连裤袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204853.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (229, '美腿袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204854.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (230, '男袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204855.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (231, '女袜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204856.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (232, '情趣内衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204857.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (233, '保暖内衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204858.png', 217, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (234, '运动', '', 174, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (235, '休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204860.png', 234, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (236, '帆布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204861.png', 234, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (237, '跑步鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204862.png', 234, 1, 0, '2023-05-22 15:30:46', '2023-05-22 15:30:46', 0);
INSERT INTO `category` VALUES (238, '篮球鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204863.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (239, '足球鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204864.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (240, '训练鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204865.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (241, '乒羽鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204866.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (242, '拖鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204867.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (243, '卫衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204868.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (244, '夹克', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204869.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (245, 'T恤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204870.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (246, '棉服／羽绒服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204871.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (247, '运动裤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204872.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (248, '套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204873.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (249, '运动包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204874.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (250, '运动配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204875.png', 234, 1, 0, '2023-05-22 15:30:47', '2023-05-22 15:30:47', 0);
INSERT INTO `category` VALUES (251, '女鞋', '', 174, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (252, '平底鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204877.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (253, '高跟鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204878.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (254, '单鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204879.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (255, '休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204880.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (256, '凉鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204881.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (257, '女靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204882.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (258, '雪地靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204883.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (259, '拖鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204884.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (260, '裸靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204885.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (261, '筒靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204886.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (262, '帆布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204887.png', 251, 1, 0, '2023-05-22 15:30:48', '2023-05-22 15:30:48', 0);
INSERT INTO `category` VALUES (263, '雨鞋／雨靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204888.png', 251, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (264, '妈妈鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204889.png', 251, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (265, '鞋配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204890.png', 251, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (266, '特色鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204891.png', 251, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (267, '鱼嘴鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204892.png', 251, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (268, '布鞋／绣花鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204893.png', 251, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (269, '男鞋', '', 174, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (270, '商务休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204895.png', 269, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (271, '正装鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204896.png', 269, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (272, '休闲鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204897.png', 269, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (273, '凉鞋／沙滩鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204898.png', 269, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (274, '男靴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204899.png', 269, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (275, '功能鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204900.png', 269, 1, 0, '2023-05-22 15:30:49', '2023-05-22 15:30:49', 0);
INSERT INTO `category` VALUES (276, '拖鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204901.png', 269, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (277, '传统布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204902.png', 269, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (278, '鞋配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204903.png', 269, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (279, '帆布鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204904.png', 269, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (280, '豆豆鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204905.png', 269, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (281, '驾车鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204906.png', 269, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (282, '配饰', '', 174, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (283, '太阳镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204908.png', 282, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (284, '框镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204909.png', 282, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (285, '皮带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204910.png', 282, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (286, '围巾', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204911.png', 282, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (287, '手套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204912.png', 282, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (288, '帽子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204913.png', 282, 1, 0, '2023-05-22 15:30:50', '2023-05-22 15:30:50', 0);
INSERT INTO `category` VALUES (289, '领带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204914.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (290, '袖扣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204915.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (291, '其他配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204916.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (292, '丝巾', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204917.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (293, '披肩', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204918.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (294, '腰带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204919.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (295, '腰链／腰封', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204920.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (296, '棒球帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204921.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (297, '毛线', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204922.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (298, '遮阳帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204923.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (299, '防紫外线手套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204924.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (300, '草帽', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204925.png', 282, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (301, '童装', '', 174, 1, 0, '2023-05-22 15:30:51', '2023-05-22 15:30:51', 0);
INSERT INTO `category` VALUES (302, '套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204927.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (303, '上衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204928.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (304, '裤子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204929.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (305, '裙子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204930.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (306, '内衣／家居服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204931.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (307, '羽绒服／棉服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204932.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (308, '亲子装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204933.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (309, '儿童配饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204934.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (310, '礼服／演出服', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204935.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (311, '运动鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204936.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (312, '单鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204937.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (313, '靴子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204938.png', 301, 1, 0, '2023-05-22 15:30:52', '2023-05-22 15:30:52', 0);
INSERT INTO `category` VALUES (314, '凉鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204939.png', 301, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (315, '功能鞋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427264204940.png', 301, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (316, '食品饮料', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/24b886dd9ea84559bdf173320b6c7366.png', 0, 1, 3, '2023-05-22 15:30:53', '2023-05-23 14:52:55', 0);
INSERT INTO `category` VALUES (317, '进口食品', '', 316, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (318, '饼干蛋糕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399365.png', 317, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (319, '糖果巧克力', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399366.png', 317, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (320, '休闲零食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399367.png', 317, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (321, '冲调饮品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399368.png', 317, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (322, '粮油调味', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399369.png', 317, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (323, '地方特产', '', 316, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (324, '华北', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399371.png', 323, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (325, '西北', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399372.png', 323, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (326, '西南', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399373.png', 323, 1, 0, '2023-05-22 15:30:53', '2023-05-22 15:30:53', 0);
INSERT INTO `category` VALUES (327, '东北', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399374.png', 323, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (328, '华南', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399375.png', 323, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (329, '华东', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399376.png', 323, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (330, '华中', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399377.png', 323, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (331, '休闲食品', '', 316, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (332, '休闲零食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399379.png', 331, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (333, '坚果炒货', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399380.png', 331, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (334, '肉干肉松', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399381.png', 331, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (335, '蜜饯果脯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399382.png', 331, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (336, '糖果/巧克力', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399383.png', 331, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (337, '饼干蛋糕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399384.png', 331, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (338, '粮油调味', '', 316, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (339, '米面杂粮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399386.png', 338, 1, 0, '2023-05-22 15:30:54', '2023-05-22 15:30:54', 0);
INSERT INTO `category` VALUES (340, '食用油', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399387.png', 338, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (341, '调味品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399388.png', 338, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (342, '南北干货', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399389.png', 338, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (343, '方便食品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399390.png', 338, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (344, '有机食品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399391.png', 338, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (345, '中外名酒', '', 316, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (346, '白酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399393.png', 345, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (347, '洋酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399394.png', 345, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (348, '葡萄酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399395.png', 345, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (349, '啤酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399396.png', 345, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (350, '黄酒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399397.png', 345, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (351, '饮料冲调', '', 316, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (352, '水', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399399.png', 351, 1, 0, '2023-05-22 15:30:55', '2023-05-22 15:30:55', 0);
INSERT INTO `category` VALUES (353, '饮料', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399400.png', 351, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (354, '牛奶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399401.png', 351, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (355, '茶叶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399402.png', 351, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (356, '咖啡/奶茶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399403.png', 351, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (357, '冲饮谷物', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399404.png', 351, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (358, '营养健康', '', 316, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (359, '基础营养', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399406.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (360, '美体养颜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399407.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (361, '滋补调养', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399408.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (362, '骨骼健康', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399409.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (363, '保健茶饮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399410.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (364, '成分保健', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399411.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (365, '无糖食品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399412.png', 358, 1, 0, '2023-05-22 15:30:56', '2023-05-22 15:30:56', 0);
INSERT INTO `category` VALUES (366, '亚健康调理', '', 316, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (367, '调节三高', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399414.png', 366, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (368, '心脑养护', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399415.png', 366, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (369, '改善睡眠', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399416.png', 366, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (370, '肝肾养护', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399417.png', 366, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (371, '免疫调节', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399418.png', 366, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (372, '更多调理', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399419.png', 366, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (373, '健康礼品', '', 316, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (374, '参茸礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399421.png', 373, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (375, '更多礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399422.png', 373, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (376, '生鲜食品', '', 316, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (377, '水果', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399424.png', 376, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (378, '蔬菜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399425.png', 376, 1, 0, '2023-05-22 15:30:57', '2023-05-22 15:30:57', 0);
INSERT INTO `category` VALUES (379, '海鲜水产', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399426.png', 376, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (380, '禽蛋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399427.png', 376, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (381, '鲜肉', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399428.png', 376, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (382, '加工类肉食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399429.png', 376, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (383, '冻品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399430.png', 376, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (384, '半成品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399431.png', 376, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (385, '礼品箱包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/ebc6c9e114d6416f9985a3ff7c8ea19f.png', 0, 1, 4, '2023-05-22 15:30:58', '2023-05-23 14:57:47', 0);
INSERT INTO `category` VALUES (386, '潮流女包', '', 385, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (387, '钱包/卡包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399174.png', 386, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (388, '手拿包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399175.png', 386, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (389, '单肩包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399176.png', 386, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (390, '双肩包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399177.png', 386, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (391, '手提包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399178.png', 386, 1, 0, '2023-05-22 15:30:58', '2023-05-22 15:30:58', 0);
INSERT INTO `category` VALUES (392, '斜挎包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399179.png', 386, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (393, '时尚男包', '', 385, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (394, '钱包/卡包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399181.png', 393, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (395, '男士手包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399182.png', 393, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (396, '腰带／礼盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399183.png', 393, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (397, '商务公文包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399184.png', 393, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (398, '功能箱包', '', 385, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (399, '电脑数码包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399186.png', 398, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (400, '拉杆箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399187.png', 398, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (401, '旅行包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399188.png', 398, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (402, '旅行用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399189.png', 398, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (403, '休闲运动包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399190.png', 398, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (404, '登山包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399191.png', 398, 1, 0, '2023-05-22 15:30:59', '2023-05-22 15:30:59', 0);
INSERT INTO `category` VALUES (405, '妈咪包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399192.png', 398, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (406, '书包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399193.png', 398, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (407, '礼品', '', 385, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (408, '火机烟具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399195.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (409, '礼品文具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399196.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (410, '瑞士军刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399197.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (411, '收藏品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399198.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (412, '工艺礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399199.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (413, '创意礼品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399200.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (414, '礼卡礼卷', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399201.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (415, '鲜花速递', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399202.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (416, '婚庆用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399203.png', 407, 1, 0, '2023-05-22 15:31:00', '2023-05-22 15:31:00', 0);
INSERT INTO `category` VALUES (417, '奢侈品', '', 385, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (418, '奢侈品箱包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399205.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (419, '钱包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399206.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (420, '服饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399207.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (421, '腰带', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399208.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (422, '太阳镜眼镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399209.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (423, '配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399210.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (424, 'GUCCI', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399211.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (425, 'PRADA', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399212.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (426, 'FENDI', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399213.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (427, 'BURBERRY', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399214.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (428, 'ARMANI', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399215.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (429, 'COACH', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399216.png', 417, 1, 0, '2023-05-22 15:31:01', '2023-05-22 15:31:01', 0);
INSERT INTO `category` VALUES (430, '个护化妆', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/9a107ef24c444b30bf3a577ed9630fe1.jpeg', 0, 1, 4, '2023-05-22 15:31:02', '2023-05-23 14:53:47', 0);
INSERT INTO `category` VALUES (431, '面部护理', '', 430, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (432, '洁面乳', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399320.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (433, '爽肤水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399321.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (434, '精华露	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399322.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (435, '乳液面霜	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399323.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (436, '面膜面贴	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399324.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (437, '眼部护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399325.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (438, 'T区护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399326.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (439, '护肤套装	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399327.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (440, '防晒隔离	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399328.png', 431, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (441, '身体护理', '', 430, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (442, '洗发护发	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399330.png', 441, 1, 0, '2023-05-22 15:31:02', '2023-05-22 15:31:02', 0);
INSERT INTO `category` VALUES (443, '染发/造型	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399331.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (444, '沐浴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399332.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (445, '身体乳	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399333.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (446, '香薰精油	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399334.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (447, '纤体瘦身	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399335.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (448, '脱毛膏', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399336.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (449, '手足护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399337.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (450, '洗护套装	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399338.png', 441, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (451, '口腔护理', '', 430, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (452, '牙膏/牙粉	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399340.png', 451, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (453, '漱口水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399341.png', 451, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (454, '女性护理', '', 430, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (455, '卫生巾	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399343.png', 454, 1, 0, '2023-05-22 15:31:03', '2023-05-22 15:31:03', 0);
INSERT INTO `category` VALUES (456, '卫生护垫	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399344.png', 454, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (457, '洗液	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399345.png', 454, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (458, '男士护理', '', 430, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (459, '男士香水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399347.png', 458, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (460, '剃须护理	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399348.png', 458, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (461, '魅力彩妆', '', 430, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (462, '粉底/遮瑕	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399350.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (463, '腮红	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399351.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (464, '眼影/眼线	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399352.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (465, '眉笔	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399353.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (466, '睫毛膏	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399354.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (467, '唇膏唇彩	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399355.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (468, '彩妆组合	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399356.png', 461, 1, 0, '2023-05-22 15:31:04', '2023-05-22 15:31:04', 0);
INSERT INTO `category` VALUES (469, '卸妆', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399357.png', 461, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (470, '美甲	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399358.png', 461, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (471, '假发', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399359.png', 461, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (472, '香水SPA', '', 430, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (473, '女士香水', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399361.png', 472, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (474, '男士香水	', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399362.png', 472, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (475, '厨房餐饮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/155c65e778204372ac196ab6cd7cd598.png', 0, 1, 5, '2023-05-22 15:31:05', '2023-05-23 14:56:17', 0);
INSERT INTO `category` VALUES (476, '烹饪锅具', '', 475, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (477, '炒锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399276.png', 476, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (478, '煎锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399277.png', 476, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (479, '压力锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399278.png', 476, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (480, '汤锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399279.png', 476, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (481, '蒸锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399280.png', 476, 1, 0, '2023-05-22 15:31:05', '2023-05-22 15:31:05', 0);
INSERT INTO `category` VALUES (482, '奶锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399281.png', 476, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (483, '套锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399282.png', 476, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (484, '煲锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399283.png', 476, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (485, '水壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399284.png', 476, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (486, '刀剪菜板', '', 475, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (487, '单刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399286.png', 486, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (488, '剪刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399287.png', 486, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (489, '套刀', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399288.png', 486, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (490, '砧板', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399289.png', 486, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (491, '刀具配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399290.png', 486, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (492, '收纳保鲜', '', 475, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (493, '保鲜盒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399292.png', 492, 1, 0, '2023-05-22 15:31:06', '2023-05-22 15:31:06', 0);
INSERT INTO `category` VALUES (494, '保鲜膜/袋', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399293.png', 492, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (495, '塑料器皿', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399294.png', 492, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (496, '饭盒/提锅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399295.png', 492, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (497, '水具酒具', '', 475, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (498, '塑料杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399297.png', 497, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (499, '运动水壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399298.png', 497, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (500, '玻璃杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399299.png', 497, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (501, '陶瓷马克杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399300.png', 497, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (502, '保温壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399301.png', 497, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (503, '杯具套件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399302.png', 497, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (504, '餐具', '', 475, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (505, '餐具套装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399304.png', 504, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (506, '碗/碟/盘', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399305.png', 504, 1, 0, '2023-05-22 15:31:07', '2023-05-22 15:31:07', 0);
INSERT INTO `category` VALUES (507, '筷勺/刀叉', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399306.png', 504, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (508, '一次性餐具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399307.png', 504, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (509, '茶具/咖啡具', '', 475, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (510, '整套茶具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399309.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (511, '茶杯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399310.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (512, '茶壶', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399311.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (513, '茶盘茶托', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399312.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (514, '茶叶罐', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399313.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (515, '茶具配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399314.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (516, '茶宠摆件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399315.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (517, '咖啡具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399316.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (518, '其他', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399317.png', 509, 1, 0, '2023-05-22 15:31:08', '2023-05-22 15:31:08', 0);
INSERT INTO `category` VALUES (519, '家居家装', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/d1a0cea8d5554bafafef7734efc08820.png', 0, 1, 10, '2023-05-22 15:31:08', '2023-05-23 14:54:19', 0);
INSERT INTO `category` VALUES (520, '家纺', '', 519, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (521, '床品套件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399219.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (522, '被子', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399220.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (523, '枕芯枕套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399221.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (524, '床单被罩', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399222.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (525, '毛巾被/毯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399223.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (526, '床垫/床褥', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399224.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (527, '蚊帐/凉席', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399225.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (528, '抱枕坐垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399226.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (529, '毛巾家纺', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399227.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (530, '', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399228.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (531, '窗帘/窗纱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399229.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (532, '酒店用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399230.png', 520, 1, 0, '2023-05-22 15:31:09', '2023-05-22 15:31:09', 0);
INSERT INTO `category` VALUES (533, '灯具', '', 519, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (534, '台灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399232.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (535, '节能灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399233.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (536, '装饰灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399234.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (537, '落地灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399235.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (538, '应急灯/手电', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399236.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (539, 'LED灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399237.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (540, '吸顶灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399238.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (541, '五金电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399239.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (542, '吊灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399240.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (543, '氛围照明', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399241.png', 533, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (544, '生活日用', '', 519, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (545, '收纳用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399243.png', 544, 1, 0, '2023-05-22 15:31:10', '2023-05-22 15:31:10', 0);
INSERT INTO `category` VALUES (546, '雨伞雨具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399244.png', 544, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (547, '浴室用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399245.png', 544, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (548, '缝纫用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399246.png', 544, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (549, '洗晒用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399247.png', 544, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (550, '净化除味', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399248.png', 544, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (551, '家装软饰', '', 519, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (552, '桌布/罩件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399250.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (553, '地毯地垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399251.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (554, '沙发垫套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399252.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (555, '相框/相片墙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399253.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (556, '墙画墙贴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399254.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (557, '节庆饰品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399255.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (558, '手工/十字绣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399256.png', 551, 1, 0, '2023-05-22 15:31:11', '2023-05-22 15:31:11', 0);
INSERT INTO `category` VALUES (559, '工艺摆件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399257.png', 551, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (560, '其他', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399258.png', 551, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (561, '清洁日用', '', 519, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (562, '纸品湿巾', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399260.png', 561, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (563, '衣物清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399261.png', 561, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (564, '清洁工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399262.png', 561, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (565, '驱虫用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399263.png', 561, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (566, '居室清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399264.png', 561, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (567, '皮具护理', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399265.png', 561, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (568, '宠物生活', '', 519, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (569, '宠物主粮', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399267.png', 568, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (570, '宠物零食', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399268.png', 568, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (571, '营养品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399269.png', 568, 1, 0, '2023-05-22 15:31:12', '2023-05-22 15:31:12', 0);
INSERT INTO `category` VALUES (572, '家居日用', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399270.png', 568, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (573, '玩具服饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399271.png', 568, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (574, '出行装备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399272.png', 568, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (575, '医护美容', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399273.png', 568, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (576, '汽车用品', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/665dd952b54e4911b99b5e1eba4b164f.png', 0, 1, 10, '2023-05-22 15:31:13', '2023-05-23 14:56:20', 0);
INSERT INTO `category` VALUES (577, '电子电器', '', 576, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (578, '导航仪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399488.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (579, '安全预警仪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399489.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (580, '行车记录仪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399490.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (581, '倒车雷达', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399491.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (582, '车载电源', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399492.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (583, '车载蓝牙', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399493.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (584, '车载影音', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399494.png', 577, 1, 0, '2023-05-22 15:31:13', '2023-05-22 15:31:13', 0);
INSERT INTO `category` VALUES (585, '车载净化器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399495.png', 577, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (586, '车载冰箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399496.png', 577, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (587, '车载吸尘器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399497.png', 577, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (588, '充气泵', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399498.png', 577, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (589, '车载生活电器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399499.png', 577, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (590, '系统养护', '', 576, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (591, '机油', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399501.png', 590, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (592, '添加剂', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399502.png', 590, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (593, '防冻冷却液', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399503.png', 590, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (594, '附属油', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399504.png', 590, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (595, '底盘装甲', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399505.png', 590, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (596, '空调清洗剂', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399506.png', 590, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (597, '改装配件', '', 576, 1, 0, '2023-05-22 15:31:14', '2023-05-22 15:31:14', 0);
INSERT INTO `category` VALUES (598, '雨刷', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399508.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (599, '车灯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399509.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (600, '轮胎', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399510.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (601, '贴膜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399511.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (602, '后视镜', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399512.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (603, '机油滤', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399513.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (604, '火花塞', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399514.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (605, '刹车片', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399515.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (606, '蓄电池', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399516.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (607, '车身装饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399517.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (608, '维修配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399518.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (609, '汽修工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399519.png', 597, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (610, '汽车美容', '', 576, 1, 0, '2023-05-22 15:31:15', '2023-05-22 15:31:15', 0);
INSERT INTO `category` VALUES (611, '漆面美容', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399521.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (612, '漆面修复', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399522.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (613, '内饰清洁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399523.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (614, '玻璃美容', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399524.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (615, '洗车机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399525.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (616, '洗车水枪', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399526.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (617, '洗车配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399527.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (618, '车掸', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399528.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (619, '洗车液', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399529.png', 610, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (620, '坐垫脚垫', '', 576, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (621, '脚垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399531.png', 620, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (622, '坐垫', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399532.png', 620, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (623, '座套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399533.png', 620, 1, 0, '2023-05-22 15:31:16', '2023-05-22 15:31:16', 0);
INSERT INTO `category` VALUES (624, '内饰精品', '', 576, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (625, '车用香水', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399535.png', 624, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (626, '车用炭包', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399536.png', 624, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (627, '头枕腰枕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399537.png', 624, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (628, '方向盘套', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399538.png', 624, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (629, '功能小件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399539.png', 624, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (630, '车内挂饰', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399540.png', 624, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (631, '安全自驾', '', 576, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (632, '安全座椅', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399542.png', 631, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (633, '应急救援', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399543.png', 631, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (634, '汽修工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399544.png', 631, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (635, '保温箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399545.png', 631, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (636, '储物箱', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399546.png', 631, 1, 0, '2023-05-22 15:31:17', '2023-05-22 15:31:17', 0);
INSERT INTO `category` VALUES (637, '车衣', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399547.png', 631, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (638, '车锁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399548.png', 631, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (639, '摩托车设备', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399549.png', 631, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (640, '整车', '', 576, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (641, '新车', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399551.png', 640, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (642, '二手车', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399552.png', 640, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (643, '玩具乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/0f423fb60f084b2caade164fae25a9a0.png', 0, 1, 10, '2023-05-22 15:31:18', '2023-05-23 14:57:00', 0);
INSERT INTO `category` VALUES (644, '适用年龄', '', 643, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (645, '1-3岁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399678.png', 644, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (646, '3-6岁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399679.png', 644, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (647, '6-14岁', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399680.png', 644, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (648, '14岁以上', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399681.png', 644, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (649, '遥控/电动', '', 643, 1, 0, '2023-05-22 15:31:18', '2023-05-22 15:31:18', 0);
INSERT INTO `category` VALUES (650, '遥控车', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399683.png', 649, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (651, '遥控飞机', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399684.png', 649, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (652, '遥控船', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399685.png', 649, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (653, '机器人/电动', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399686.png', 649, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (654, '轨道/助力', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399687.png', 649, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (655, '毛绒布艺', '', 643, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (656, '毛绒/布艺', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399689.png', 655, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (657, '靠垫/抱枕', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399690.png', 655, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (658, '娃娃玩具', '', 643, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (659, '芭比娃娃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399692.png', 658, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (660, '卡通娃娃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399693.png', 658, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (661, '智能娃娃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399694.png', 658, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (662, '模型玩具', '', 643, 1, 0, '2023-05-22 15:31:19', '2023-05-22 15:31:19', 0);
INSERT INTO `category` VALUES (663, '仿真模型', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399696.png', 662, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (664, '拼插模型', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399697.png', 662, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (665, '收藏爱好', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399698.png', 662, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (666, '健身玩具', '', 643, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (667, '炫舞毯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399700.png', 666, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (668, '爬行垫/毯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399701.png', 666, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (669, '户外玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399702.png', 666, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (670, '戏水玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399703.png', 666, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (671, '动漫玩具', '', 643, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (672, '电影周边', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399705.png', 671, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (673, '卡通周边', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399706.png', 671, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (674, '网游周边', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399707.png', 671, 1, 0, '2023-05-22 15:31:20', '2023-05-22 15:31:20', 0);
INSERT INTO `category` VALUES (675, '益智玩具', '', 643, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (676, '摇铃/床铃', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399709.png', 675, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (677, '健身架', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399710.png', 675, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (678, '早教启智', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399711.png', 675, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (679, '拖拉玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399712.png', 675, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (680, '积木拼插', '', 643, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (681, '积木', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399714.png', 680, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (682, '拼图', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399715.png', 680, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (683, '磁力棒', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399716.png', 680, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (684, '立体拼插', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399717.png', 680, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (685, 'DIY玩具', '', 643, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (686, '手工彩泥', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399719.png', 685, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (687, '绘画工具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399720.png', 685, 1, 0, '2023-05-22 15:31:21', '2023-05-22 15:31:21', 0);
INSERT INTO `category` VALUES (688, '情景玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399721.png', 685, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (689, '创意减压', '', 643, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (690, '减压玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399723.png', 689, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (691, '创意玩具', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399724.png', 689, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (692, '乐器相关', '', 643, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (693, '钢琴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399726.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (694, '电子琴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399727.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (695, '手风琴', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399728.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (696, '吉他/贝斯', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399729.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (697, '民族管弦乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399730.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (698, '西洋管弦乐', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399731.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (699, '口琴/口风琴/竖笛', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399732.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (700, '西洋打击乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399733.png', 692, 1, 0, '2023-05-22 15:31:22', '2023-05-22 15:31:22', 0);
INSERT INTO `category` VALUES (701, '各式乐器配件', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399734.png', 692, 1, 0, '2023-05-22 15:31:23', '2023-05-22 15:31:23', 0);
INSERT INTO `category` VALUES (702, '电脑音乐', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399735.png', 692, 1, 0, '2023-05-22 15:31:23', '2023-05-22 15:31:23', 0);
INSERT INTO `category` VALUES (703, '工艺礼品乐器', 'https://lilishop-oss.oss-cn-beijing.aliyuncs.com/1348576427268399736.png', 692, 1, 0, '2023-05-22 15:31:23', '2023-05-22 15:31:23', 0);

-- ----------------------------
-- Table structure for category_brand
-- ----------------------------
DROP TABLE IF EXISTS `category_brand`;
CREATE TABLE `category_brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `brand_id` bigint NULL DEFAULT NULL COMMENT '品牌ID',
  `category_id` bigint NULL DEFAULT NULL COMMENT '分类ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类品牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_brand
-- ----------------------------
INSERT INTO `category_brand` VALUES (1, 5, 3, '2023-05-06 10:59:08', '2025-01-22 06:38:29', 0);
INSERT INTO `category_brand` VALUES (2, 1, 3, '2023-05-25 14:14:07', '2023-05-25 14:14:07', 0);
INSERT INTO `category_brand` VALUES (3, 2, 42, '2023-05-25 15:20:21', '2023-05-25 15:20:21', 0);
INSERT INTO `category_brand` VALUES (4, 2, 693, '2023-05-30 08:50:37', '2023-05-30 08:51:07', 1);
INSERT INTO `category_brand` VALUES (5, 2, 642, '2023-07-18 17:15:08', '2023-07-19 09:07:36', 1);
INSERT INTO `category_brand` VALUES (6, 2, 702, '2023-07-19 08:41:40', '2023-07-19 09:06:16', 1);
INSERT INTO `category_brand` VALUES (7, 6, 42, '2025-01-22 06:18:28', '2025-01-22 07:17:31', 0);
INSERT INTO `category_brand` VALUES (8, 9, 3, '2025-01-22 06:20:09', '2025-01-22 06:37:37', 0);
INSERT INTO `category_brand` VALUES (9, 6, 702, '2025-01-22 06:56:34', '2025-01-22 06:56:49', 1);
INSERT INTO `category_brand` VALUES (10, 12, 29, '2025-01-22 23:21:13', '2025-01-26 03:39:11', 0);
INSERT INTO `category_brand` VALUES (11, 16, 3, '2025-01-25 20:25:37', '2025-01-25 20:25:37', 0);

-- ----------------------------
-- Table structure for coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `coupon_info`;
CREATE TABLE `coupon_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `coupon_type` tinyint NOT NULL DEFAULT 1 COMMENT '购物券类型 1 现金券 2 满减券',
  `coupon_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '优惠卷名字',
  `amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `condition_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '使用门槛 0->没门槛',
  `start_time` date NULL DEFAULT NULL COMMENT '可以领取的开始日期',
  `end_time` date NULL DEFAULT NULL COMMENT '可以领取的结束日期',
  `range_type` tinyint NOT NULL DEFAULT 1 COMMENT '使用范围[1->全场通用；2->指定分类；3->指定商品]',
  `range_desc` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '使用范围描述',
  `publish_count` int NOT NULL DEFAULT 1 COMMENT '发行数量',
  `per_limit` int NOT NULL DEFAULT 1 COMMENT '每人限领张数',
  `use_count` int NOT NULL DEFAULT 0 COMMENT '已使用数量',
  `receive_count` int NOT NULL DEFAULT 0 COMMENT '领取数量',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '过期时间',
  `publish_status` tinyint(1) NULL DEFAULT NULL COMMENT '发布状态[0-未发布，1-已发布]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '优惠券信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_info
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_range
-- ----------------------------
DROP TABLE IF EXISTS `coupon_range`;
CREATE TABLE `coupon_range`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '购物券编号',
  `coupon_id` bigint NOT NULL DEFAULT 0 COMMENT '优惠券id',
  `range_type` tinyint NOT NULL DEFAULT 1 COMMENT '范围类型； 1->商品(sku) ；2->分类',
  `range_id` bigint NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '优惠券范围表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_range
-- ----------------------------

-- ----------------------------
-- Table structure for coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `coupon_user`;
CREATE TABLE `coupon_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `coupon_id` bigint NULL DEFAULT NULL COMMENT '购物券ID',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `order_id` bigint NULL DEFAULT NULL COMMENT '订单ID',
  `coupon_status` tinyint NULL DEFAULT NULL COMMENT '购物券状态（1：未使用 2：已使用）',
  `get_type` tinyint NOT NULL DEFAULT 2 COMMENT '获取类型（1：后台赠送；2：主动获取）',
  `get_time` datetime NULL DEFAULT NULL COMMENT '获取时间',
  `using_time` datetime NULL DEFAULT NULL COMMENT '使用时间',
  `used_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `expire_time` datetime NULL DEFAULT NULL COMMENT '过期时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '优惠券领用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_user
-- ----------------------------

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT '会员_id',
  `nick_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `order_no` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `coupon_id` bigint NULL DEFAULT NULL COMMENT '使用的优惠券',
  `total_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '订单总额',
  `coupon_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '优惠券',
  `original_total_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '原价金额',
  `feight_fee` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '运费',
  `pay_type` tinyint NULL DEFAULT NULL COMMENT '支付方式【1->微信 2->支付宝】',
  `order_status` tinyint NOT NULL DEFAULT 0 COMMENT '订单状态【0->待付款；1->待发货；2->已发货；3->待用户收货，已完成；-1->已取消】',
  `receiver_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `receiver_phone` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `receiver_tag_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收货人地址标签',
  `receiver_province` bigint NULL DEFAULT NULL COMMENT '省份/直辖市',
  `receiver_city` bigint NULL DEFAULT NULL COMMENT '城市',
  `receiver_district` bigint NULL DEFAULT NULL COMMENT '区',
  `receiver_address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `payment_time` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `delivery_time` datetime NULL DEFAULT NULL COMMENT '发货时间',
  `receive_time` datetime NULL DEFAULT NULL COMMENT '确认收货时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单备注',
  `cancel_time` datetime NULL DEFAULT NULL COMMENT '取消订单时间',
  `cancel_reason` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '取消订单原因',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 1, 'admin', '1000011122555', NULL, 10.00, 0.00, 10.00, 0.00, 2, 0, 'test', '1501022222', '684568', 130000, NULL, NULL, '北京市天通苑大街', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-18 09:06:20', '2023-07-19 12:54:56', 0);
INSERT INTO `order_info` VALUES (168, 1, NULL, '653f7153bf28454d82a5ac07d1c043d8', NULL, 11.00, 0.00, 11.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-18 11:54:34', '2023-07-19 12:55:00', 0);
INSERT INTO `order_info` VALUES (169, 1, NULL, '1684393427504', NULL, 3.00, 0.00, 3.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-18 15:03:45', '2023-07-19 12:55:02', 0);
INSERT INTO `order_info` VALUES (170, 1, NULL, '1684747834653', NULL, 1.00, 0.00, 1.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-22 17:30:32', '2023-06-07 09:03:14', 0);
INSERT INTO `order_info` VALUES (171, 1, NULL, '1684826584591', NULL, 16.00, 0.00, 16.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-23 15:23:04', '2023-06-07 09:03:15', 0);
INSERT INTO `order_info` VALUES (172, 1, NULL, '1684827208589', NULL, 3.00, 0.00, 3.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-23 15:33:28', '2023-06-07 09:03:15', 0);
INSERT INTO `order_info` VALUES (173, 1, 'test', '1685351605797', NULL, 19.00, 0.00, 19.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-29 17:13:25', '2023-06-07 09:03:16', 0);
INSERT INTO `order_info` VALUES (174, 1, 'test', '1685352236016', NULL, 4.00, 0.00, 4.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-29 17:23:56', '2023-06-07 09:03:16', 0);
INSERT INTO `order_info` VALUES (175, 1, 'test', '1685403044073', NULL, 4.00, 0.00, 4.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:30:44', '2023-06-07 09:03:17', 0);
INSERT INTO `order_info` VALUES (176, 1, 'test', '1685403048904', NULL, 2003.00, 0.00, 2003.00, 0.00, 2, 1, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', '2023-06-01 07:27:08', NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:30:49', '2023-06-07 09:03:17', 0);
INSERT INTO `order_info` VALUES (177, 1, 'test', '1685403180956', NULL, 13001.00, 0.00, 13001.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 07:33:01', '2023-06-07 09:03:18', 0);
INSERT INTO `order_info` VALUES (178, 1, 'test', '1685408175090', NULL, 16000.00, 0.00, 16000.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-30 08:56:15', '2023-06-07 09:03:18', 0);
INSERT INTO `order_info` VALUES (179, 1, 'test', '1685408188255', NULL, 16000.00, 0.00, 16000.00, 0.00, 2, 1, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', '2023-06-01 07:34:26', NULL, NULL, NULL, NULL, NULL, '2023-05-30 08:56:28', '2023-06-07 09:03:19', 0);
INSERT INTO `order_info` VALUES (180, 1, 'test', '1685498312468', NULL, 28997.00, 0.00, 28997.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-31 09:58:32', '2023-06-07 09:03:19', 0);
INSERT INTO `order_info` VALUES (181, 1, 'test', '1685592470587', NULL, 4998.00, 0.00, 4998.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-01 12:07:50', '2023-06-07 09:03:20', 0);
INSERT INTO `order_info` VALUES (182, 1, 'test', '1685604960824', NULL, 4998.00, 0.00, 4998.00, 0.00, 2, 1, '张三', '15012563333', '公司', 130000, 130700, 130724, '快乐家园1号', '2023-06-01 07:36:23', NULL, NULL, NULL, NULL, NULL, '2023-06-01 15:36:01', '2023-06-07 09:03:21', 0);
INSERT INTO `order_info` VALUES (183, 1, 'test', '1685608890072', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '晴天', '15014526352', '家', 130000, 130700, 130724, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-01 16:41:30', '2023-06-07 09:03:21', 0);
INSERT INTO `order_info` VALUES (184, 1, 'test', '1685675623255', NULL, 7997.00, 0.00, 7997.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-02 11:13:43', '2023-06-07 09:03:22', 0);
INSERT INTO `order_info` VALUES (185, 1, 'test', '1685675729448', NULL, 7997.00, 0.00, 7997.00, 0.00, 2, 0, '晴天', '15014526352', '家', 110000, 110100, 110114, '天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-02 11:15:29', '2023-06-07 09:03:23', 0);
INSERT INTO `order_info` VALUES (186, 1, 'test', '1686099951770', NULL, 13995.00, 0.00, 13995.00, 0.00, 1, 0, '晴天', '15014526352', '家', 110000, 110100, 110114, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_info` VALUES (187, 1, 'test', '1686123357507', NULL, 13995.00, 0.00, 13995.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 15:35:57', '2023-06-07 15:35:57', 0);
INSERT INTO `order_info` VALUES (188, 1, 'test', '1686185180987', NULL, 7997.00, 0.00, 7997.00, 0.00, 2, 0, '晴天', '15014526352', '家', 110000, 110100, 110114, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-08 08:46:21', '2023-06-08 08:46:21', 0);
INSERT INTO `order_info` VALUES (189, 1, 'test', '1686185194411', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-08 08:46:34', '2023-06-08 08:46:34', 0);
INSERT INTO `order_info` VALUES (190, 1, 'test', '1686185549074', NULL, 9996.00, 0.00, 9996.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-08 08:52:29', '2023-06-08 08:52:29', 0);
INSERT INTO `order_info` VALUES (191, 1, '13700032456', '1686710657145', NULL, 3998.00, 0.00, 3998.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 10:44:17', '2023-06-14 10:44:17', 0);
INSERT INTO `order_info` VALUES (192, 1, '13700032456', '1686710730886', NULL, 3998.00, 0.00, 3998.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 10:45:31', '2023-06-14 10:45:31', 0);
INSERT INTO `order_info` VALUES (193, 1, '13700032456', '1686710753480', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 10:45:53', '2023-06-14 10:45:53', 0);
INSERT INTO `order_info` VALUES (194, 1, 'test', '1686713371363', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 11:29:31', '2023-06-14 11:29:31', 0);
INSERT INTO `order_info` VALUES (195, 1, '13700032456', '1686722955768', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 14:09:15', '2023-06-14 14:09:15', 0);
INSERT INTO `order_info` VALUES (196, 1, '13700032456', '1686732838424', NULL, 4998.00, 0.00, 4998.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-14 16:53:58', '2023-06-14 16:53:58', 0);
INSERT INTO `order_info` VALUES (197, 1, '13700032456', '1689993414292', NULL, 6997.00, 0.00, 6997.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 10:37:20', '2023-07-22 10:37:20', 0);
INSERT INTO `order_info` VALUES (198, 1, '13700032456', '1690006305717', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 14:11:45', '2023-07-22 14:11:45', 0);
INSERT INTO `order_info` VALUES (199, 1, '13700032456', '1690008262150', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 14:44:22', '2023-07-22 14:44:22', 0);
INSERT INTO `order_info` VALUES (200, 1, '13700032456', '1690008335205', NULL, 3998.00, 0.00, 3998.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 14:45:35', '2023-07-22 14:45:35', 0);
INSERT INTO `order_info` VALUES (201, 1, '13700032456', '1690011204025', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 15:33:24', '2023-07-22 15:33:24', 0);
INSERT INTO `order_info` VALUES (202, 1, '13700032456', '1690012099399', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 15:48:19', '2023-07-22 15:48:19', 0);
INSERT INTO `order_info` VALUES (203, 1, '13700032456', '1690247814503', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:16:54', '2023-07-25 09:16:54', 0);
INSERT INTO `order_info` VALUES (204, 1, '13700032456', '1690248907152', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:35:07', '2023-07-25 09:35:07', 0);
INSERT INTO `order_info` VALUES (205, 1, '13700032456', '1690249178324', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:39:38', '2023-07-25 09:39:38', 0);
INSERT INTO `order_info` VALUES (206, 1, '13700032456', '1690249523884', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:45:23', '2023-07-25 09:45:23', 0);
INSERT INTO `order_info` VALUES (207, 1, '13700032456', '1690249600181', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:46:40', '2023-07-25 09:46:40', 0);
INSERT INTO `order_info` VALUES (208, 1, '13700032456', '1690250078835', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:54:38', '2023-07-25 09:54:38', 0);
INSERT INTO `order_info` VALUES (209, 1, '13700032456', '1690250115807', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, '张三', '15012563333', '公司', 130000, 130700, 130724, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-25 09:55:15', '2023-07-25 09:55:15', 0);
INSERT INTO `order_info` VALUES (210, 33, 'xiaowen', '1737735135720', NULL, 2999.00, 0.00, 2999.00, 0.00, 2, 0, 'xw', '13811112222', 'aaa', 111111, 111111, 111111, '河北省张家口市沽源县快乐家园1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 00:12:16', '2025-01-25 00:12:16', 0);
INSERT INTO `order_info` VALUES (211, 33, 'xiaowen', '1737736857549', NULL, 1999.00, 0.00, 1999.00, 0.00, 2, 0, 'xw', '13811112222', 'bbb', 222222, 222222, 222222, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 00:40:57', '2025-01-25 00:40:57', 0);
INSERT INTO `order_info` VALUES (212, 33, 'xiaowen', '1737808481189', NULL, 0.10, 0.00, 0.10, 0.00, 2, 0, 'xw', '13811112222', 'bbb', 222222, 222222, 222222, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 20:34:41', '2025-01-25 20:34:41', 0);
INSERT INTO `order_info` VALUES (213, 33, 'xiaowen', '1737812065823', NULL, 0.10, 0.00, 0.10, 0.00, 2, 0, 'xw', '13811112222', 'bbb', 222222, 222222, 222222, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 21:34:25', '2025-01-25 21:34:25', 0);
INSERT INTO `order_info` VALUES (214, 33, 'xiaowen', '1737814975662', NULL, 0.10, 0.00, 0.10, 0.00, 2, 0, 'xw', '13811112222', 'bbb', 222222, 222222, 222222, '北京市北京市昌平区天通苑大街1号', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 22:22:55', '2025-01-25 22:22:55', 0);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` bigint NULL DEFAULT NULL COMMENT 'order_id',
  `sku_id` bigint NULL DEFAULT NULL COMMENT '商品sku编号',
  `sku_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品sku名字',
  `thumb_img` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品sku图片',
  `sku_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品sku价格',
  `sku_num` int NULL DEFAULT NULL COMMENT '商品购买的数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 451 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单项信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (1, 1, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 5.00, 1, '2023-05-15 09:07:58', '2023-05-15 09:08:18', 0);
INSERT INTO `order_item` VALUES (2, 1, 2, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 5.00, 1, '2023-05-15 09:08:24', '2023-05-15 09:08:45', 0);
INSERT INTO `order_item` VALUES (368, 168, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 1.00, 2, '2023-05-18 11:54:34', '2023-05-18 11:54:34', 0);
INSERT INTO `order_item` VALUES (369, 168, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 3, '2023-05-18 11:54:34', '2023-05-18 11:54:34', 0);
INSERT INTO `order_item` VALUES (370, 169, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 1, '2023-05-18 15:03:45', '2023-05-18 15:03:45', 0);
INSERT INTO `order_item` VALUES (371, 170, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 1.00, 1, '2023-05-22 17:30:32', '2023-05-22 17:30:32', 0);
INSERT INTO `order_item` VALUES (372, 171, 1, '华为笔记本 内存:8G', 'http://139.198.127.41:9000/sph/20230508/124322.png', 1.00, 4, '2023-05-23 15:23:04', '2023-05-23 15:23:04', 0);
INSERT INTO `order_item` VALUES (373, 171, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 4, '2023-05-23 15:23:05', '2023-05-23 15:23:05', 0);
INSERT INTO `order_item` VALUES (374, 172, 3, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/sph/20230508/0230508124243.png', 3.00, 1, '2023-05-23 15:33:29', '2023-05-23 15:33:29', 0);
INSERT INTO `order_item` VALUES (375, 173, 3, '小米 红米Note10 5G手机 颜色:红色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 19.00, 1, '2023-05-29 17:13:26', '2023-05-29 17:58:02', 0);
INSERT INTO `order_item` VALUES (376, 174, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-29 17:23:56', '2023-05-29 17:23:56', 0);
INSERT INTO `order_item` VALUES (377, 175, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-30 07:30:44', '2023-05-30 07:30:44', 0);
INSERT INTO `order_item` VALUES (378, 176, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-30 07:30:49', '2023-05-30 07:30:49', 0);
INSERT INTO `order_item` VALUES (379, 176, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 07:30:49', '2023-05-30 07:30:49', 0);
INSERT INTO `order_item` VALUES (380, 177, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item` VALUES (381, 177, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item` VALUES (382, 177, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/spzx/20230525/35b3b7e2e67b98b2.jpg.avif', 4999.00, 1, '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item` VALUES (383, 177, 9, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/spzx/20230525/c8f2eae0d36b6270.jpg.avif', 5999.00, 1, '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_item` VALUES (384, 178, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item` VALUES (385, 178, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item` VALUES (386, 178, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/spzx/20230525/35b3b7e2e67b98b2.jpg.avif', 4999.00, 1, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item` VALUES (387, 178, 9, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/spzx/20230525/c8f2eae0d36b6270.jpg.avif', 5999.00, 1, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item` VALUES (388, 178, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_item` VALUES (389, 179, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item` VALUES (390, 179, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item` VALUES (391, 179, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/spzx/20230525/35b3b7e2e67b98b2.jpg.avif', 4999.00, 1, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item` VALUES (392, 179, 9, '华为笔记本 内存:32G', 'http://139.198.127.41:9000/spzx/20230525/c8f2eae0d36b6270.jpg.avif', 5999.00, 1, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item` VALUES (393, 179, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_item` VALUES (394, 180, 8, '华为笔记本 内存:16G', 'http://139.198.127.41:9000/spzx/20230525/35b3b7e2e67b98b2.jpg.avif', 4999.00, 4, '2023-05-31 09:58:32', '2023-05-31 09:58:32', 0);
INSERT INTO `order_item` VALUES (395, 180, 2, '华为笔记本 内存:18G', 'http://139.198.127.41:9000/sph/20230508/0508124316.png', 2.00, 2, '2023-05-31 09:58:32', '2023-05-31 09:58:32', 0);
INSERT INTO `order_item` VALUES (396, 180, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 3, '2023-05-31 09:58:32', '2023-05-31 09:58:32', 0);
INSERT INTO `order_item` VALUES (397, 181, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-01 12:07:50', '2023-06-01 12:07:50', 0);
INSERT INTO `order_item` VALUES (398, 181, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-01 12:07:50', '2023-06-01 12:07:50', 0);
INSERT INTO `order_item` VALUES (399, 182, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-01 15:36:01', '2023-06-01 15:36:01', 0);
INSERT INTO `order_item` VALUES (400, 182, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-01 15:36:01', '2023-06-01 15:36:01', 0);
INSERT INTO `order_item` VALUES (401, 183, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-06-01 16:41:30', '2023-06-01 16:41:30', 0);
INSERT INTO `order_item` VALUES (402, 184, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-02 11:13:43', '2023-06-02 11:13:43', 0);
INSERT INTO `order_item` VALUES (403, 184, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-02 11:13:43', '2023-06-02 11:13:43', 0);
INSERT INTO `order_item` VALUES (404, 184, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-06-02 11:13:43', '2023-06-02 11:13:43', 0);
INSERT INTO `order_item` VALUES (405, 185, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-02 11:15:29', '2023-06-02 11:15:29', 0);
INSERT INTO `order_item` VALUES (406, 185, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-02 11:15:29', '2023-06-02 11:15:29', 0);
INSERT INTO `order_item` VALUES (407, 185, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 1, '2023-06-02 11:15:29', '2023-06-02 11:15:29', 0);
INSERT INTO `order_item` VALUES (408, 186, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_item` VALUES (409, 186, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_item` VALUES (410, 186, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_item` VALUES (411, 186, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 2, '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_item` VALUES (412, 187, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-07 15:35:57', '2023-06-07 15:35:57', 0);
INSERT INTO `order_item` VALUES (413, 187, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-07 15:35:57', '2023-06-07 15:35:57', 0);
INSERT INTO `order_item` VALUES (414, 187, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-07 15:35:58', '2023-06-07 15:35:58', 0);
INSERT INTO `order_item` VALUES (415, 187, 4, '小米 红米Note10 5G手机 颜色:红色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 2999.00, 2, '2023-06-07 15:35:58', '2023-06-07 15:35:58', 0);
INSERT INTO `order_item` VALUES (416, 188, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-08 08:46:21', '2023-06-08 08:46:21', 0);
INSERT INTO `order_item` VALUES (417, 188, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-08 08:46:21', '2023-06-08 08:46:21', 0);
INSERT INTO `order_item` VALUES (418, 188, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-08 08:46:21', '2023-06-08 08:46:21', 0);
INSERT INTO `order_item` VALUES (419, 189, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-08 08:46:34', '2023-06-08 08:46:34', 0);
INSERT INTO `order_item` VALUES (420, 190, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-06-08 08:52:29', '2023-06-08 08:52:29', 0);
INSERT INTO `order_item` VALUES (421, 190, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-08 08:52:29', '2023-06-08 08:52:29', 0);
INSERT INTO `order_item` VALUES (422, 190, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 2, '2023-06-08 08:52:29', '2023-06-08 08:52:29', 0);
INSERT INTO `order_item` VALUES (423, 191, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 10:44:17', '2023-06-14 10:44:17', 0);
INSERT INTO `order_item` VALUES (424, 191, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-06-14 10:44:17', '2023-06-14 10:44:17', 0);
INSERT INTO `order_item` VALUES (425, 192, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 10:45:31', '2023-06-14 10:45:31', 0);
INSERT INTO `order_item` VALUES (426, 192, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-06-14 10:45:31', '2023-06-14 10:45:31', 0);
INSERT INTO `order_item` VALUES (427, 193, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-06-14 10:45:53', '2023-06-14 10:45:53', 0);
INSERT INTO `order_item` VALUES (428, 194, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-14 11:29:31', '2023-06-14 11:29:31', 0);
INSERT INTO `order_item` VALUES (429, 195, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 14:09:16', '2023-06-14 14:09:16', 0);
INSERT INTO `order_item` VALUES (430, 196, 6, '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 2999.00, 1, '2023-06-14 16:53:58', '2023-06-14 16:53:58', 0);
INSERT INTO `order_item` VALUES (431, 196, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-06-14 16:53:58', '2023-06-14 16:53:58', 0);
INSERT INTO `order_item` VALUES (432, 197, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 2, '2023-07-22 10:37:20', '2023-07-22 10:37:20', 0);
INSERT INTO `order_item` VALUES (433, 197, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-22 10:37:20', '2023-07-22 10:37:20', 0);
INSERT INTO `order_item` VALUES (434, 198, 3, '小米 红米Note10 5G手机 颜色:红色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-3_u_1.jpg', 1999.00, 1, '2023-07-22 14:11:45', '2023-07-22 14:11:45', 0);
INSERT INTO `order_item` VALUES (435, 199, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-22 14:44:22', '2023-07-22 14:44:22', 0);
INSERT INTO `order_item` VALUES (436, 200, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 2, '2023-07-22 14:45:35', '2023-07-22 14:45:35', 0);
INSERT INTO `order_item` VALUES (437, 201, 5, '小米 红米Note10 5G手机 颜色:黑色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-1_u_1.jpg', 1999.00, 1, '2023-07-22 15:33:24', '2023-07-22 15:33:24', 0);
INSERT INTO `order_item` VALUES (438, 202, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-22 15:48:19', '2023-07-22 15:48:19', 0);
INSERT INTO `order_item` VALUES (439, 203, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:16:54', '2023-07-25 09:16:54', 0);
INSERT INTO `order_item` VALUES (440, 204, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:35:07', '2023-07-25 09:35:07', 0);
INSERT INTO `order_item` VALUES (441, 205, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:39:38', '2023-07-25 09:39:38', 0);
INSERT INTO `order_item` VALUES (442, 206, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:45:23', '2023-07-25 09:45:23', 0);
INSERT INTO `order_item` VALUES (443, 207, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:46:40', '2023-07-25 09:46:40', 0);
INSERT INTO `order_item` VALUES (444, 208, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 2999.00, 1, '2023-07-25 09:54:38', '2023-07-25 09:54:38', 0);
INSERT INTO `order_item` VALUES (445, 209, 1, '小米 红米Note10 5G手机 颜色:白色 内存:8G', 'http://139.198.127.41:9000/spzx/20230525/665832167-5_u_1 (1).jpg', 1999.00, 1, '2023-07-25 09:55:15', '2023-07-25 09:55:15', 0);
INSERT INTO `order_item` VALUES (446, 210, 2, '小米 红米Note10 5G手机 颜色:白色 内存:18G', 'http://127.0.0.1:9000/spzx-bucket/20250123/66aa0d1030184bddbdb8e81ec49f71f0bizhihui_com_20231109113923169950116333457.png', 2999.00, 1, '2025-01-25 00:12:16', '2025-01-25 00:12:16', 0);
INSERT INTO `order_item` VALUES (447, 211, 3, '小米 红米Note10 5G手机 颜色:红色 内存:8G', 'http://127.0.0.1:9000/spzx-bucket/20250123/bab47b8cd599454bbb740d02bff074ae15845073223520576.png', 1999.00, 1, '2025-01-25 00:40:57', '2025-01-25 00:40:57', 0);
INSERT INTO `order_item` VALUES (448, 212, 53, '特斯拉黄金手机999', 'http://127.0.0.1:9000/spzx-bucket/20250125/69a31d891a634f8c99db8a3bee3d9863【哲风壁纸】写真-许岚LAN (1).png', 0.10, 1, '2025-01-25 20:34:41', '2025-01-25 20:34:41', 0);
INSERT INTO `order_item` VALUES (449, 213, 53, '特斯拉黄金手机999', 'http://127.0.0.1:9000/spzx-bucket/20250125/69a31d891a634f8c99db8a3bee3d9863【哲风壁纸】写真-许岚LAN (1).png', 0.10, 1, '2025-01-25 21:34:25', '2025-01-25 21:34:25', 0);
INSERT INTO `order_item` VALUES (450, 214, 52, '特斯拉黄金手机9999', 'http://127.0.0.1:9000/spzx-bucket/20250125/655a60d5ca9c4ba5804b5ec6d3d1ebf3【哲风壁纸】少女-真人系列.png', 0.10, 1, '2025-01-25 22:22:55', '2025-01-25 22:22:55', 0);

-- ----------------------------
-- Table structure for order_log
-- ----------------------------
DROP TABLE IF EXISTS `order_log`;
CREATE TABLE `order_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NULL DEFAULT NULL COMMENT '订单id',
  `operate_user` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '操作人：用户；系统；后台管理员',
  `process_status` int NULL DEFAULT NULL COMMENT '订单状态',
  `note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_log
-- ----------------------------
INSERT INTO `order_log` VALUES (175, 168, NULL, 0, '提交订单', '2023-05-18 11:54:34', '2023-05-18 11:54:34', 0);
INSERT INTO `order_log` VALUES (176, 169, NULL, 0, '提交订单', '2023-05-18 15:03:45', '2023-05-18 15:03:45', 0);
INSERT INTO `order_log` VALUES (177, 170, NULL, 0, '提交订单', '2023-05-22 17:30:32', '2023-05-22 17:30:32', 0);
INSERT INTO `order_log` VALUES (178, 171, NULL, 0, '提交订单', '2023-05-23 15:23:05', '2023-05-23 15:23:05', 0);
INSERT INTO `order_log` VALUES (179, 172, NULL, 0, '提交订单', '2023-05-23 15:33:29', '2023-05-23 15:33:29', 0);
INSERT INTO `order_log` VALUES (180, 173, NULL, 0, '提交订单', '2023-05-29 17:13:26', '2023-05-29 17:13:26', 0);
INSERT INTO `order_log` VALUES (181, 174, NULL, 0, '提交订单', '2023-05-29 17:23:56', '2023-05-29 17:23:56', 0);
INSERT INTO `order_log` VALUES (182, 175, NULL, 0, '提交订单', '2023-05-30 07:30:44', '2023-05-30 07:30:44', 0);
INSERT INTO `order_log` VALUES (183, 176, NULL, 0, '提交订单', '2023-05-30 07:30:49', '2023-05-30 07:30:49', 0);
INSERT INTO `order_log` VALUES (184, 177, NULL, 0, '提交订单', '2023-05-30 07:33:01', '2023-05-30 07:33:01', 0);
INSERT INTO `order_log` VALUES (185, 178, NULL, 0, '提交订单', '2023-05-30 08:56:15', '2023-05-30 08:56:15', 0);
INSERT INTO `order_log` VALUES (186, 179, NULL, 0, '提交订单', '2023-05-30 08:56:28', '2023-05-30 08:56:28', 0);
INSERT INTO `order_log` VALUES (187, 180, NULL, 0, '提交订单', '2023-05-31 09:58:33', '2023-05-31 09:58:33', 0);
INSERT INTO `order_log` VALUES (188, 181, NULL, 0, '提交订单', '2023-06-01 12:07:51', '2023-06-01 12:07:51', 0);
INSERT INTO `order_log` VALUES (189, 182, NULL, 0, '提交订单', '2023-06-01 15:36:01', '2023-06-01 15:36:01', 0);
INSERT INTO `order_log` VALUES (190, 183, NULL, 0, '提交订单', '2023-06-01 16:41:30', '2023-06-01 16:41:30', 0);
INSERT INTO `order_log` VALUES (191, 184, NULL, 0, '提交订单', '2023-06-02 11:13:43', '2023-06-02 11:13:43', 0);
INSERT INTO `order_log` VALUES (192, 185, NULL, 0, '提交订单', '2023-06-02 11:15:29', '2023-06-02 11:15:29', 0);
INSERT INTO `order_log` VALUES (193, 186, NULL, 0, '提交订单', '2023-06-07 09:05:52', '2023-06-07 09:05:52', 0);
INSERT INTO `order_log` VALUES (194, 187, NULL, 0, '提交订单', '2023-06-07 15:35:58', '2023-06-07 15:35:58', 0);
INSERT INTO `order_log` VALUES (195, 188, NULL, 0, '提交订单', '2023-06-08 08:46:21', '2023-06-08 08:46:21', 0);
INSERT INTO `order_log` VALUES (196, 189, NULL, 0, '提交订单', '2023-06-08 08:46:34', '2023-06-08 08:46:34', 0);
INSERT INTO `order_log` VALUES (197, 190, NULL, 0, '提交订单', '2023-06-08 08:52:29', '2023-06-08 08:52:29', 0);
INSERT INTO `order_log` VALUES (198, 191, NULL, 0, '提交订单', '2023-06-14 10:44:17', '2023-06-14 10:44:17', 0);
INSERT INTO `order_log` VALUES (199, 192, NULL, 0, '提交订单', '2023-06-14 10:45:31', '2023-06-14 10:45:31', 0);
INSERT INTO `order_log` VALUES (200, 193, NULL, 0, '提交订单', '2023-06-14 10:45:53', '2023-06-14 10:45:53', 0);
INSERT INTO `order_log` VALUES (201, 194, NULL, 0, '提交订单', '2023-06-14 11:29:31', '2023-06-14 11:29:31', 0);
INSERT INTO `order_log` VALUES (202, 195, NULL, 0, '提交订单', '2023-06-14 14:09:16', '2023-06-14 14:09:16', 0);
INSERT INTO `order_log` VALUES (203, 196, NULL, 0, '提交订单', '2023-06-14 16:53:58', '2023-06-14 16:53:58', 0);
INSERT INTO `order_log` VALUES (204, 197, NULL, 0, '提交订单', '2023-07-22 10:37:20', '2023-07-22 10:37:20', 0);
INSERT INTO `order_log` VALUES (205, 198, NULL, 0, '提交订单', '2023-07-22 14:11:45', '2023-07-22 14:11:45', 0);
INSERT INTO `order_log` VALUES (206, 199, NULL, 0, '提交订单', '2023-07-22 14:44:22', '2023-07-22 14:44:22', 0);
INSERT INTO `order_log` VALUES (207, 200, NULL, 0, '提交订单', '2023-07-22 14:45:35', '2023-07-22 14:45:35', 0);
INSERT INTO `order_log` VALUES (208, 201, NULL, 0, '提交订单', '2023-07-22 15:33:24', '2023-07-22 15:33:24', 0);
INSERT INTO `order_log` VALUES (209, 202, NULL, 0, '提交订单', '2023-07-22 15:48:19', '2023-07-22 15:48:19', 0);
INSERT INTO `order_log` VALUES (210, 203, NULL, 0, '提交订单', '2023-07-25 09:16:54', '2023-07-25 09:16:54', 0);
INSERT INTO `order_log` VALUES (211, 204, NULL, 0, '提交订单', '2023-07-25 09:35:07', '2023-07-25 09:35:07', 0);
INSERT INTO `order_log` VALUES (212, 205, NULL, 0, '提交订单', '2023-07-25 09:39:38', '2023-07-25 09:39:38', 0);
INSERT INTO `order_log` VALUES (213, 206, NULL, 0, '提交订单', '2023-07-25 09:45:23', '2023-07-25 09:45:23', 0);
INSERT INTO `order_log` VALUES (214, 207, NULL, 0, '提交订单', '2023-07-25 09:46:40', '2023-07-25 09:46:40', 0);
INSERT INTO `order_log` VALUES (215, 208, NULL, 0, '提交订单', '2023-07-25 09:54:38', '2023-07-25 09:54:38', 0);
INSERT INTO `order_log` VALUES (216, 209, NULL, 0, '提交订单', '2023-07-25 09:55:15', '2023-07-25 09:55:15', 0);
INSERT INTO `order_log` VALUES (217, 210, NULL, 0, '提交订单', '2025-01-25 00:12:16', '2025-01-25 00:12:16', 0);
INSERT INTO `order_log` VALUES (218, 211, NULL, 0, '提交订单', '2025-01-25 00:40:57', '2025-01-25 00:40:57', 0);
INSERT INTO `order_log` VALUES (219, 212, NULL, 0, '提交订单', '2025-01-25 20:34:41', '2025-01-25 20:34:41', 0);
INSERT INTO `order_log` VALUES (220, 213, NULL, 0, '提交订单', '2025-01-25 21:34:25', '2025-01-25 21:34:25', 0);
INSERT INTO `order_log` VALUES (221, 214, NULL, 0, '提交订单', '2025-01-25 22:22:55', '2025-01-25 22:22:55', 0);

-- ----------------------------
-- Table structure for order_statistics
-- ----------------------------
DROP TABLE IF EXISTS `order_statistics`;
CREATE TABLE `order_statistics`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `province_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '省份',
  `order_date` date NULL DEFAULT NULL COMMENT '订单统计日期',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `total_num` int NULL DEFAULT NULL COMMENT '订单总数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 290 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单统计' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_statistics
-- ----------------------------
INSERT INTO `order_statistics` VALUES (259, NULL, '2023-07-18', 24.00, 30, '2023-07-19 12:56:40', '2023-07-19 12:59:14', 0);
INSERT INTO `order_statistics` VALUES (262, NULL, '2023-07-20', 100.00, 5, '2023-07-20 12:57:50', '2023-07-19 12:58:59', 0);
INSERT INTO `order_statistics` VALUES (263, NULL, '2023-07-22', 10.00, 15, '2023-07-22 12:58:00', '2023-07-19 12:59:05', 0);
INSERT INTO `order_statistics` VALUES (264, NULL, '2023-07-26', 50.00, 8, '2023-07-26 12:58:10', '2023-07-19 12:59:11', 0);
INSERT INTO `order_statistics` VALUES (289, NULL, '2025-01-25', 4998.30, 5, '2025-01-26 02:00:00', '2025-01-26 02:00:00', 0);

-- ----------------------------
-- Table structure for payment_info
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户id',
  `order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `pay_type` tinyint NOT NULL DEFAULT 0 COMMENT '付款方式：1-微信 2-支付宝',
  `out_trade_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易编号（微信或支付）',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付金额',
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易内容',
  `payment_status` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支付状态：0-未支付 1-已支付',
  `callback_time` datetime NULL DEFAULT NULL COMMENT '回调时间',
  `callback_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '回调信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uniq_order_no`(`order_no` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '付款信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_info
-- ----------------------------
INSERT INTO `payment_info` VALUES (60, 1, '1685592470587', 1, NULL, 4998.00, '小米 红米Note10 5G手机 颜色:黑色 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G ', '0', NULL, NULL, '2023-06-01 13:58:01', '2023-06-01 13:58:01', 0);
INSERT INTO `payment_info` VALUES (61, 1, '1685408188255', 1, NULL, 16000.00, '华为笔记本 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G 华为笔记本 内存:16G 华为笔记本 内存:32G 小米 红米Note10 5G手机 颜色:红色 内存:18G ', '1', '2023-06-01 07:34:26', '{\"gmt_create\":\"2023-06-01 15:20:39\",\"charset\":\"utf-8\",\"seller_email\":\"zhuchangqing@atguigu.com\",\"subject\":\"华为笔记本 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G 华为笔记本 内存:16G 华为笔记本 内存:32G 小米 红米Note10 5G手机 颜色:红色 内存:18G \",\"buyer_id\":\"2088702516029538\",\"invoice_amount\":\"0.01\",\"notify_id\":\"2023060101222152040029531462239138\",\"fund_bill_list\":\"[{\\\"amount\\\":\\\"0.01\\\",\\\"fundChannel\\\":\\\"ALIPAYACCOUNT\\\"}]\",\"notify_type\":\"trade_status_sync\",\"trade_status\":\"TRADE_SUCCESS\",\"receipt_amount\":\"0.01\",\"buyer_pay_amount\":\"0.01\",\"app_id\":\"2021001163617452\",\"seller_id\":\"2088831489324244\",\"gmt_payment\":\"2023-06-01 15:20:40\",\"notify_time\":\"2023-06-01 15:34:25\",\"version\":\"1.0\",\"out_trade_no\":\"1685408188255\",\"total_amount\":\"0.01\",\"trade_no\":\"2023060122001429531454519472\",\"auth_app_id\":\"2021001163617452\",\"buyer_logon_id\":\"150****6384\",\"point_amount\":\"0.00\"}', '2023-06-01 15:20:17', '2023-06-01 15:34:25', 0);
INSERT INTO `payment_info` VALUES (62, 1, '1685403048904', 1, NULL, 2003.00, '华为笔记本 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', '2023-06-01 07:27:08', '{\"gmt_create\":\"2023-06-01 15:27:06\",\"charset\":\"utf-8\",\"seller_email\":\"zhuchangqing@atguigu.com\",\"subject\":\"华为笔记本 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G \",\"buyer_id\":\"2088702516029538\",\"invoice_amount\":\"0.01\",\"notify_id\":\"2023060101222152707029531462515344\",\"fund_bill_list\":\"[{\\\"amount\\\":\\\"0.01\\\",\\\"fundChannel\\\":\\\"ALIPAYACCOUNT\\\"}]\",\"notify_type\":\"trade_status_sync\",\"trade_status\":\"TRADE_SUCCESS\",\"receipt_amount\":\"0.01\",\"buyer_pay_amount\":\"0.01\",\"app_id\":\"2021001163617452\",\"seller_id\":\"2088831489324244\",\"gmt_payment\":\"2023-06-01 15:27:07\",\"notify_time\":\"2023-06-01 15:27:07\",\"version\":\"1.0\",\"out_trade_no\":\"1685403048904\",\"total_amount\":\"0.01\",\"trade_no\":\"2023060122001429531456608140\",\"auth_app_id\":\"2021001163617452\",\"buyer_logon_id\":\"150****6384\",\"point_amount\":\"0.00\"}', '2023-06-01 15:26:45', '2023-06-01 15:27:07', 0);
INSERT INTO `payment_info` VALUES (63, 1, '1685604960824', 1, NULL, 4998.00, '小米 红米Note10 5G手机 颜色:黑色 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', '2023-06-01 07:36:23', '{\"gmt_create\":\"2023-06-01 15:36:19\",\"charset\":\"utf-8\",\"seller_email\":\"zhuchangqing@atguigu.com\",\"subject\":\"小米 红米Note10 5G手机 颜色:黑色 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G \",\"buyer_id\":\"2088702516029538\",\"invoice_amount\":\"0.01\",\"notify_id\":\"2023060101222153620029531462966677\",\"fund_bill_list\":\"[{\\\"amount\\\":\\\"0.01\\\",\\\"fundChannel\\\":\\\"ALIPAYACCOUNT\\\"}]\",\"notify_type\":\"trade_status_sync\",\"trade_status\":\"TRADE_SUCCESS\",\"receipt_amount\":\"0.01\",\"buyer_pay_amount\":\"0.01\",\"app_id\":\"2021001163617452\",\"seller_id\":\"2088831489324244\",\"gmt_payment\":\"2023-06-01 15:36:20\",\"notify_time\":\"2023-06-01 15:36:21\",\"version\":\"1.0\",\"out_trade_no\":\"1685604960824\",\"total_amount\":\"0.01\",\"trade_no\":\"2023060122001429531454846874\",\"auth_app_id\":\"2021001163617452\",\"buyer_logon_id\":\"150****6384\",\"point_amount\":\"0.00\"}', '2023-06-01 15:36:05', '2023-06-01 15:36:22', 0);
INSERT INTO `payment_info` VALUES (64, 1, '1685608890072', 1, NULL, 2999.00, '小米 红米Note10 5G手机 颜色:红色 内存:18G ', '1', NULL, NULL, '2023-06-01 16:41:53', '2025-01-25 23:36:44', 0);
INSERT INTO `payment_info` VALUES (65, 1, '1685675729448', 1, NULL, 7997.00, '小米 红米Note10 5G手机 颜色:黑色 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G 小米 红米Note10 5G手机 颜色:红色 内存:18G ', '1', NULL, NULL, '2023-06-03 10:37:19', '2025-01-25 23:36:41', 0);
INSERT INTO `payment_info` VALUES (66, 1, '1686123357507', 2, NULL, 13995.00, '小米 红米Note10 5G手机 颜色:白色 内存:18G 小米 红米Note10 5G手机 颜色:黑色 内存:18G 小米 红米Note10 5G手机 颜色:白色 内存:8G 小米 红米Note10 5G手机 颜色:红色 内存:18G ', '1', NULL, NULL, '2023-06-07 15:36:02', '2025-01-25 23:36:39', 0);
INSERT INTO `payment_info` VALUES (67, 1, '1686185194411', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-06-08 08:48:41', '2025-01-25 23:36:33', 0);
INSERT INTO `payment_info` VALUES (68, 1, '1686722955768', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-06-14 16:48:20', '2025-01-25 23:36:32', 0);
INSERT INTO `payment_info` VALUES (69, 1, '1686732838424', 2, NULL, 4998.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G 小米 红米Note10 5G手机 颜色:黑色 内存:18G ', '1', NULL, NULL, '2023-06-14 16:54:00', '2025-01-25 23:36:26', 0);
INSERT INTO `payment_info` VALUES (70, 1, '1690006305717', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:红色 内存:8G ', '1', NULL, NULL, '2023-07-22 14:15:32', '2025-01-25 23:36:28', 0);
INSERT INTO `payment_info` VALUES (71, 1, '1690008335205', 2, NULL, 3998.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-22 14:45:43', '2025-01-25 23:36:30', 0);
INSERT INTO `payment_info` VALUES (72, 1, '1690011204025', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:黑色 内存:8G ', '1', NULL, NULL, '2023-07-22 15:33:27', '2025-01-25 23:36:24', 0);
INSERT INTO `payment_info` VALUES (73, 1, '1690012099399', 2, NULL, 2999.00, '小米 红米Note10 5G手机 颜色:白色 内存:18G ', '1', NULL, NULL, '2023-07-22 15:48:31', '2025-01-25 23:36:22', 0);
INSERT INTO `payment_info` VALUES (74, 1, '1690247814503', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-25 09:16:57', '2025-01-25 23:36:21', 0);
INSERT INTO `payment_info` VALUES (75, 1, '1690248907152', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-25 09:35:12', '2025-01-25 23:36:20', 0);
INSERT INTO `payment_info` VALUES (76, 1, '1690249178324', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-25 09:39:41', '2025-01-25 23:36:19', 0);
INSERT INTO `payment_info` VALUES (77, 1, '1690249523884', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-25 09:45:36', '2025-01-25 23:36:18', 0);
INSERT INTO `payment_info` VALUES (78, 1, '1690249600181', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-25 09:46:44', '2025-01-25 23:36:15', 0);
INSERT INTO `payment_info` VALUES (79, 1, '1690250078835', 2, NULL, 2999.00, '小米 红米Note10 5G手机 颜色:白色 内存:18G ', '1', NULL, NULL, '2023-07-25 09:54:41', '2025-01-25 23:36:13', 0);
INSERT INTO `payment_info` VALUES (80, 1, '1690250115807', 2, NULL, 1999.00, '小米 红米Note10 5G手机 颜色:白色 内存:8G ', '1', NULL, NULL, '2023-07-25 09:55:17', '2025-01-25 23:35:59', 0);
INSERT INTO `payment_info` VALUES (81, 33, '1737812065823', 2, NULL, 0.10, '特斯拉黄金手机999 ', '0', NULL, NULL, '2025-01-25 21:34:30', '2025-01-25 21:34:30', 0);
INSERT INTO `payment_info` VALUES (82, 33, '1737814975662', 2, NULL, 0.10, '特斯拉黄金手机9999 ', '0', NULL, NULL, '2025-01-25 22:23:56', '2025-01-25 22:23:56', 0);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `brand_id` bigint NULL DEFAULT NULL COMMENT '品牌ID',
  `category1_id` bigint NULL DEFAULT NULL COMMENT '一级分类id',
  `category2_id` bigint NULL DEFAULT NULL COMMENT '二级分类id',
  `category3_id` bigint NULL DEFAULT NULL COMMENT '三级分类id',
  `unit_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '计量单位',
  `slider_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '轮播图',
  `spec_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '商品规格json',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '线上状态：0-初始值，1-上架，-1-自主下架',
  `audit_status` tinyint NOT NULL DEFAULT 0 COMMENT '审核状态：0-初始值，1-通过，-1-未通过',
  `audit_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '审核信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '小米 红米Note10 5G手机', 1, 1, 2, 3, '个', 'http://127.0.0.1:9000/spzx-bucket/20250122/ac3dc98d285547e191f1c803455651adxw4.jpg', '[{\"key\":\"颜色\",\"valueList\":[\"白色\",\"红色\",\"黑色\"]},{\"key\":\"内存\",\"valueList\":[\"8G\",\"18G\"]}]', 1, 1, '审批通过', '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product` VALUES (2, '华为笔记本', 2, 1, 41, 42, '个', 'http://127.0.0.1:9000/spzx-bucket/20250122/67d0ccaa55624d49a2c1a19c02b0b266下载.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/4aa70e0a1ff548dbaa5c1dbffd3ebd94qqwqwqw.png,http://127.0.0.1:9000/spzx-bucket/20250123/f718580cb5d5482999b3a844e230c7c19.png,http://127.0.0.1:9000/spzx-bucket/20250123/c152e4543a6041298b5af8c5c03a85515.png,http://127.0.0.1:9000/spzx-bucket/20250123/fbe2c1ad496347d9971ae943b6c790e26.png', '[{\"key\":\"内存\",\"valueList\":[\"8G\",\"16G\",\"32G\"]}]', -1, 1, '审批通过', '2023-05-25 15:18:28', '2025-01-23 09:29:20', 0);
INSERT INTO `product` VALUES (3, '华为手机最新款1', 2, 1, 2, 3, '台', 'http://127.0.0.1:9000/spzx-bucket/20230719/7c03fe0fde114c5792c2b4de0bed9adc.jpg', '[{\"key\":\"高度\",\"valueList\":[\"200\"]},{\"key\":\"容积\",\"valueList\":[\"60L\"]}]', 1, 1, '审批通过', '2023-07-19 11:01:11', '2023-07-19 11:28:03', 1);
INSERT INTO `product` VALUES (4, '索尼耳机WH-1000XM5', 12, 1, 26, 29, '个', 'http://127.0.0.1:9000/spzx-bucket/20250126/33a49b1dc22f48bd849f7633afd51c70【哲风壁纸】可爱女孩-性感-美女.png,http://127.0.0.1:9000/spzx-bucket/20250126/ea1bd011437248158a04cd9a32a4332e15509417202782528.png,http://127.0.0.1:9000/spzx-bucket/20250126/d0590b96c694486696f9693c91154656GMKS9dKaQAAAmrV.jpg,http://127.0.0.1:9000/spzx-bucket/20250126/4e0bd9ed7507471ea43a59ed904e400515511067950616896.png', '[{\"key\":\"内存\",\"valueList\":[\"128G\",\"256G\",\"512G\",\"1T\"]},{\"key\":\"颜色\",\"valueList\":[\"黑色\",\"紫色\"]},{\"key\":\"型号\",\"valueList\":[\"Pro\",\"Max\",\"Min\",\"Utral\"]}]', 1, 1, '审批通过', '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product` VALUES (5, '索尼耳机2', 12, 1, 26, 29, '个', 'http://127.0.0.1:9000/spzx-bucket/20250122/7a89faf66ec4411698aa2ff29bc96c2f7.png,http://127.0.0.1:9000/spzx-bucket/20250122/7e29a88422bf491eb0dac8365a57f84c8.png,http://127.0.0.1:9000/spzx-bucket/20250126/280ae121889a49bebddc4be7a4bc8ee8【哲风壁纸】可爱女孩-性感-美女.png', '[{\"key\":\"型号\",\"valueList\":[\"WF-1000XM4\",\"WF-1000XM5\",\"WF-1000XM6\"]},{\"key\":\"颜色\",\"valueList\":[\"流光紫\",\"经典黑\",\"哑光白\"]}]', 1, 1, '审批通过', '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product` VALUES (6, '特斯拉黄金手机', 16, 1, 2, 3, '台', 'http://127.0.0.1:9000/spzx-bucket/20250125/f0621b0aa17348caa50adeb2170f1d95【哲风壁纸】少女-真人系列.png,http://127.0.0.1:9000/spzx-bucket/20250125/ae6ec3e9bba94cdf887440c74eed2823【哲风壁纸】女明星-性感.png,http://127.0.0.1:9000/spzx-bucket/20250125/976cf5b934e042998a086158a1dd81af15466825643692352.png,http://127.0.0.1:9000/spzx-bucket/20250125/1c180fb7d17d424793fe368430f6a2d8【哲风壁纸】写真-许岚LAN (1).png', '[{\"key\":\"黄金纯度\",\"valueList\":[\"9999\",\"999\"]}]', 1, 1, '审批通过', '2025-01-25 20:31:03', '2025-01-25 20:31:13', 0);

-- ----------------------------
-- Table structure for product_attr
-- ----------------------------
DROP TABLE IF EXISTS `product_attr`;
CREATE TABLE `product_attr`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品id',
  `attr_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性key',
  `attr_value` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '属性value',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_attr
-- ----------------------------

-- ----------------------------
-- Table structure for product_details
-- ----------------------------
DROP TABLE IF EXISTS `product_details`;
CREATE TABLE `product_details`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品id',
  `image_urls` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '详情图片地址',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品sku属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_details
-- ----------------------------
INSERT INTO `product_details` VALUES (1, 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/c88ff110e3034b72a60c84cdd4a97833jsciyfhk21i.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/cbf5e73343cc4d588a3c6f7209a14f24lh2e2wyucdu.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/a8cb85c5d32346c28520ebc141656138meafrwqhn0f.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/e82027121a9e4246be25c534f8345785toh0zlgihgz.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/9afa853d69014926b6bdb6cd76b152f2bajqnonv4v5.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/bd00919352e241d4a5a479d2b8708847bizhihui_com_20231109113923169950116333457.png', '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_details` VALUES (2, 2, 'http://139.198.127.41:9000/spzx/20230525/3976e9cfaf7c6ceb.jpg.avif,http://139.198.127.41:9000/spzx/20230525/f1d7433dbe88c25e.jpg.avif,http://139.198.127.41:9000/spzx/20230525/13beb824e9dcfc88.jpg.avif,http://139.198.127.41:9000/spzx/20230525/4b5a68a9bfbd0795.jpg.avif,http://139.198.127.41:9000/spzx/20230525/35b3b7e2e67b98b2.jpg.avif,http://139.198.127.41:9000/spzx/20230525/c8f2eae0d36b6270.jpg.avif,http://139.198.127.41:9000/spzx/20230525/fd5c6bfa6f3c4d43.jpg.avif', '2023-05-25 15:18:28', '2025-01-23 09:29:20', 0);
INSERT INTO `product_details` VALUES (3, 3, 'http://127.0.0.1:9000/spzx-bucket/20230719/48aa930d779d486da56cdb85c3862a71.jpg,http://127.0.0.1:9000/spzx-bucket/20230719/5090c475fc7344ebae61011d21ea88c5.jpg,http://127.0.0.1:9000/spzx-bucket/20230719/7b391bb468bb4ab8a181808cf4241512.jpg', '2023-07-19 11:01:11', '2023-07-19 11:28:03', 1);
INSERT INTO `product_details` VALUES (4, 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/8643acd255fd4cdcbd5fd54ad1eaee5ax0itinan4ve.jpg,http://127.0.0.1:9000/spzx-bucket/20250123/cea253c3d8994cc5b1911ff54ebe3a99头像.png,http://127.0.0.1:9000/spzx-bucket/20250126/cfa662c01f97434fab5f05d503da7886【哲风壁纸】写真-美女.png,http://127.0.0.1:9000/spzx-bucket/20250126/0faefd6c5e134fb5a70f87d38c19ea6b【哲风壁纸】少女-真人系列.png', '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_details` VALUES (5, 5, 'http://127.0.0.1:9000/spzx-bucket/20250122/24c2d48fc77d4ee5a9c45db117f194c06.png,http://127.0.0.1:9000/spzx-bucket/20250122/d40d1df8d85f40789d44776edfb884359.png,http://127.0.0.1:9000/spzx-bucket/20250122/11b51d8ba1954313a0f0672a47cdc03a8.png,http://127.0.0.1:9000/spzx-bucket/20250122/b3d8a089e50b4a24a9d33d0673559f6b1233.png,http://127.0.0.1:9000/spzx-bucket/20250122/52cd359ed41e4309b2ce9caa127ddb1d7.png,http://127.0.0.1:9000/spzx-bucket/20250122/e402d2aee0aa4efe8e709a3f943561f05.png,http://127.0.0.1:9000/spzx-bucket/20250122/d2bfe60933e14669b76caa246d9475c06.png,http://127.0.0.1:9000/spzx-bucket/20250122/729f12a9dd2741b185391cc9916ab38aqqwqwqw.png,http://127.0.0.1:9000/spzx-bucket/20250122/7975ecfb630d41a9823f0f1d1a222b1fqweqwe.png', '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_details` VALUES (6, 6, 'http://127.0.0.1:9000/spzx-bucket/20250125/7ee9637a379c4696a8a35a312a850c34【哲风壁纸】小清新-时尚穿搭.png,http://127.0.0.1:9000/spzx-bucket/20250125/01ddffd35dab4558bf1b5b73e6830695【哲风壁纸】可爱女孩-性感-美女.png,http://127.0.0.1:9000/spzx-bucket/20250125/d7d77ee4a4f54f22a94fb79899c3cf0916185762071694720.png,http://127.0.0.1:9000/spzx-bucket/20250125/8b04be575e6e4b8e8262f7dbcb7c7640【哲风壁纸】小清新-性感.png', '2025-01-25 20:31:03', '2025-01-25 20:31:03', 0);

-- ----------------------------
-- Table structure for product_sku
-- ----------------------------
DROP TABLE IF EXISTS `product_sku`;
CREATE TABLE `product_sku`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sku_code` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品编号',
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL COMMENT '商品ID',
  `thumb_img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '缩略图路径',
  `sale_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '售价',
  `market_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '市场价',
  `cost_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '成本价',
  `stock_num` int NULL DEFAULT NULL COMMENT '库存数',
  `sale_num` int NOT NULL DEFAULT 0 COMMENT '销量',
  `sku_spec` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT 'sku规格信息json',
  `weight` decimal(10, 2) NULL DEFAULT NULL COMMENT '重量',
  `volume` decimal(10, 2) NULL DEFAULT NULL COMMENT '体积',
  `status` tinyint NULL DEFAULT NULL COMMENT '线上状态：0-初始值，1-上架，-1-自主下架',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品sku' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_sku
-- ----------------------------
INSERT INTO `product_sku` VALUES (1, '1_0', '小米 红米Note10 5G手机 颜色:白色 内存:8G', 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/33aa806ddb824607a3b6a38384dab4fatoh0zlgihgz.jpg', 1999.00, 2019.00, 1599.00, 96, 4, '颜色:白色,内存:8G', 1.00, 1.00, NULL, '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_sku` VALUES (2, '1_1', '小米 红米Note10 5G手机 颜色:白色 内存:18G', 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/66aa0d1030184bddbdb8e81ec49f71f0bizhihui_com_20231109113923169950116333457.png', 2999.00, 3019.00, 2599.00, 97, 3, '颜色:白色,内存:18G', 1.00, 1.00, NULL, '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_sku` VALUES (3, '1_2', '小米 红米Note10 5G手机 颜色:红色 内存:8G', 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/bab47b8cd599454bbb740d02bff074ae15845073223520576.png', 1999.00, 2019.00, 1599.00, 100, 0, '颜色:红色,内存:8G', 1.00, 1.00, NULL, '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_sku` VALUES (4, '1_3', '小米 红米Note10 5G手机 颜色:红色 内存:18G', 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/f67ad130e2f04ac4bf917d96d66dce27【哲风壁纸】写真-美女.png', 2999.00, 3019.00, 2599.00, 100, 0, '颜色:红色,内存:18G', 1.00, 1.00, NULL, '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_sku` VALUES (5, '1_4', '小米 红米Note10 5G手机 颜色:黑色 内存:8G', 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/a397588842ae4a3b96102eeb388f04ddtoh0zlgihgz.jpg', 1999.00, 2019.00, 1599.00, 100, 0, '颜色:黑色,内存:8G', 1.00, 1.00, NULL, '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_sku` VALUES (6, '1_5', '小米 红米Note10 5G手机 颜色:黑色 内存:18G', 1, 'http://127.0.0.1:9000/spzx-bucket/20250123/bf8a24961de54087b1b8c4430d11af87【哲风壁纸】写真-许岚LAN.png', 2999.00, 3019.00, 2599.00, 99, 1, '颜色:黑色,内存:18G', 1.00, 1.00, NULL, '2023-05-25 14:21:07', '2025-01-23 08:34:13', 0);
INSERT INTO `product_sku` VALUES (7, '2_0', '华为笔记本 内存:8G', 2, 'http://139.198.127.41:9000/spzx/20230525/4b5a68a9bfbd0795.jpg.avif', 3999.00, 3999.00, 3999.00, 100, 0, '内存:8G', 1.00, 2.00, NULL, '2023-05-25 15:18:28', '2025-01-23 09:29:20', 0);
INSERT INTO `product_sku` VALUES (8, '2_1', '华为笔记本 内存:16G', 2, 'http://139.198.127.41:9000/spzx/20230525/35b3b7e2e67b98b2.jpg.avif', 4999.00, 4999.00, 4999.00, 100, 0, '内存:16G', 1.00, 2.00, NULL, '2023-05-25 15:18:28', '2025-01-23 09:29:20', 0);
INSERT INTO `product_sku` VALUES (9, '2_2', '华为笔记本 内存:32G', 2, 'http://139.198.127.41:9000/spzx/20230525/c8f2eae0d36b6270.jpg.avif', 5999.00, 5999.00, 5999.00, 100, 0, '内存:32G', 1.00, 2.00, NULL, '2023-05-25 15:18:28', '2025-01-23 09:29:20', 0);
INSERT INTO `product_sku` VALUES (10, '3_0', '华为手机最新款200 + 60L', 3, 'http://127.0.0.1:9000/spzx-bucket/20230719/25f6566d9bdd4d349b051f9223c4c672.jpg', 2300.00, 2500.00, 200.00, 1, 0, '200 + 60L', 1.00, 20.00, 0, '2023-07-19 11:01:11', '2023-07-19 11:28:03', 1);
INSERT INTO `product_sku` VALUES (11, '4_0', '索尼耳机WH-1000XM5128G + 黑色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/a4c5562d7aa94fe885f2e937ed367e3fbajqnonv4v5.jpg', 8.00, 8.00, 8.00, 8, 0, '128G + 黑色 + Pro', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (12, '4_1', '索尼耳机WH-1000XM5128G + 黑色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/265cff9c8c4c4378b498cddfe504427ddl1l41fy0qk.jpg', 8.00, 8.00, 8.00, 8, 0, '128G + 黑色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (13, '4_2', '索尼耳机WH-1000XM5128G + 黑色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/3a46d8e473004423a45147be38228a52emqizb4ttqa.jpg', 8.00, 8.00, 8.00, 8, 0, '128G + 黑色 + Min', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (14, '4_3', '索尼耳机WH-1000XM5128G + 黑色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/91c94596178b440f8c062832b8b70123bizhihui_com_20231109113923169950116333457.png', 8.00, 8.00, 8.00, 8, 0, '128G + 黑色 + Utral', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (15, '4_4', '索尼耳机WH-1000XM5128G + 紫色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/8c9ea8fa6eb240fe871241419f6ceda415409087114613056.png', 8.00, 8.00, 8.00, 8, 0, '128G + 紫色 + Pro', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (16, '4_5', '索尼耳机WH-1000XM5128G + 紫色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/07ff3a9013744b7e86ffc1891d81097d11k2v41q1se.jpg', 8.00, 8.00, 8.00, 8, 0, '128G + 紫色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (17, '4_6', '索尼耳机WH-1000XM5128G + 紫色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/1ed25e47abd44c47976ff6ecbd23ff793ksbyfoqouo.jpg', 8.00, 8.00, 8.00, 8, 0, '128G + 紫色 + Min', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (18, '4_7', '索尼耳机WH-1000XM5128G + 紫色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/efc616eac99b487fb10709695793ae462fpbh2dipd0.jpg', 8.00, 8.00, 8.00, 8, 0, '128G + 紫色 + Utral', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (19, '4_8', '索尼耳机WH-1000XM5256G + 黑色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/dd1f2c95dbec41a3b725718364b9f4bd【哲风壁纸】写真-许岚LAN.png', 8.00, 8.00, 8.00, 8, 0, '256G + 黑色 + Pro', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (20, '4_9', '索尼耳机WH-1000XM5256G + 黑色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/b673a9f04b804adb8cd229b846461897【哲风壁纸】写真-许岚LAN (1).png', 8.00, 8.00, 8.00, 8, 0, '256G + 黑色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (21, '4_10', '索尼耳机WH-1000XM5256G + 黑色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/a2cf03f47d7e458497da4392ff129c58【哲风壁纸】美女-青春.png', 8.00, 8.00, 8.00, 8, 0, '256G + 黑色 + Min', 88.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (22, '4_11', '索尼耳机WH-1000XM5256G + 黑色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/1776d9955b91480689397f16aca74cdb【哲风壁纸】写真-美女 (1).png', 8.00, 8.00, 8.00, 8, 0, '256G + 黑色 + Utral', 8.00, 88.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (23, '4_12', '索尼耳机WH-1000XM5256G + 紫色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/244d5b6f59494a789b4f7d726010cf59【哲风壁纸】少女-真人系列 (1).png', 8.00, 8.00, 88.00, 8, 0, '256G + 紫色 + Pro', 88.00, 88.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (24, '4_13', '索尼耳机WH-1000XM5256G + 紫色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/134349568ddf4cf08b5125dcb8885aa6【哲风壁纸】美女-雪.png', 8.00, 8.00, 8.00, 8, 0, '256G + 紫色 + Max', 88.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (25, '4_14', '索尼耳机WH-1000XM5256G + 紫色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/ae23889a6d684f6796b98ae8e87c0ebabizhihui_com_20231109113923169950116333457.png', 8.00, 8.00, 88.00, 88, 0, '256G + 紫色 + Min', 88.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (26, '4_15', '索尼耳机WH-1000XM5256G + 紫色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/5cb81ba76ed84ef2b373c3055af92ca615919054796737920.png', 8.00, 8.00, 88.00, 88, 0, '256G + 紫色 + Utral', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (27, '4_16', '索尼耳机WH-1000XM5512G + 黑色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/a0dbe89cb16d47debc914ff8d3cfac68lh2e2wyucdu.jpg', 8.00, 8.00, 88.00, 88, 0, '512G + 黑色 + Pro', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (28, '4_17', '索尼耳机WH-1000XM5512G + 黑色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/16879e1b6ed74c13a923764729ebb1d6【哲风壁纸】写真-许岚LAN.png', 8.00, 8.00, 88.00, 8, 0, '512G + 黑色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (29, '4_18', '索尼耳机WH-1000XM5512G + 黑色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/b3287079bf7c48ffaa995a62b44801b2dl1l41fy0qk.jpg', 8.00, 88.00, 8.00, 8, 0, '512G + 黑色 + Min', 8.00, 88.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (30, '4_19', '索尼耳机WH-1000XM5512G + 黑色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/85b3ad942280450ebb699fb76408ed23113prif1uwj.jpg', 8.00, 8.00, 88.00, 88, 0, '512G + 黑色 + Utral', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (31, '4_20', '索尼耳机WH-1000XM5512G + 紫色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/b10eb2e12ad647d399d4a1463e1ecb4fbajqnonv4v5.jpg', 8.00, 8.00, 8.00, 8, 0, '512G + 紫色 + Pro', 88.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (32, '4_21', '索尼耳机WH-1000XM5512G + 紫色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/ab0f03604ff94435820f09b94aef41cav5agd5zistf.jpg', 8.00, 8.00, 88.00, 88, 0, '512G + 紫色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (33, '4_22', '索尼耳机WH-1000XM5512G + 紫色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/91d399a2e5d74c5db5f8be34cd74bedflh2e2wyucdu.jpg', 8.00, 8.00, 8.00, 8, 0, '512G + 紫色 + Min', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (34, '4_23', '索尼耳机WH-1000XM5512G + 紫色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/be135fe192f64755b8f83234700adfa3x0itinan4ve.jpg', 8.00, 8.00, 8.00, 8, 0, '512G + 紫色 + Utral', 8.00, 888.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (35, '4_24', '索尼耳机WH-1000XM51T + 黑色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/687dca258bda4130ac494faa834f9f04【哲风壁纸】写真-美女 (1).png', 8.00, 8.00, 88.00, 8, 0, '1T + 黑色 + Pro', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (36, '4_25', '索尼耳机WH-1000XM51T + 黑色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/34e621a33fc446799229ecabe6f71340【哲风壁纸】少女-真人系列.png', 8.00, 8.00, 8.00, 8, 0, '1T + 黑色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (37, '4_26', '索尼耳机WH-1000XM51T + 黑色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/c4e2aeef7349483abe21d6f67b75df9e【哲风壁纸】美女-雪.png', 8.00, 8.00, 88.00, 88, 0, '1T + 黑色 + Min', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (38, '4_27', '索尼耳机WH-1000XM51T + 黑色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/0fc6c76441a64c968ee8fba0c61861d5【哲风壁纸】写真-美女.png', 8.00, 8.00, 8.00, 8, 0, '1T + 黑色 + Utral', 88.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (39, '4_28', '索尼耳机WH-1000XM51T + 紫色 + Pro', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/c59120c7dbcc4d3c987bd55099ea15173ksbyfoqouo.jpg', 8.00, 8.00, 88.00, 8, 0, '1T + 紫色 + Pro', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (40, '4_29', '索尼耳机WH-1000XM51T + 紫色 + Max', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/bf5da494ed3149de8a52ca9f58c0697815409082730254656.png', 8.00, 8.00, 8.00, 8, 0, '1T + 紫色 + Max', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (41, '4_30', '索尼耳机WH-1000XM51T + 紫色 + Min', 4, 'http://127.0.0.1:9000/spzx-bucket/20250123/fec8a20ccfa84e7d811f314bd0a4288a15719455806689600.png', 888.00, 888.00, 88.00, 8, 0, '1T + 紫色 + Min', 8.00, 8.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (42, '4_31', '索尼耳机WH-1000XM51T + 紫色 + Utral', 4, 'http://127.0.0.1:9000/spzx-bucket/20250122/4ed32b59f9f04d5fa00581dec01e924c1233.png', 10000.00, 10000.00, 10000.00, 1000, 0, '1T + 紫色 + Utral', 12.00, 20.00, 0, '2025-01-22 23:19:06', '2025-01-26 03:45:46', 0);
INSERT INTO `product_sku` VALUES (43, '5_0', 'nullWF-1000XM4 + 流光紫', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/c53a4aaa4364440782b7215c14132d88GMKS9dKaQAAAmrV.jpg', 999.00, 999.00, 999.00, 999, 0, 'WF-1000XM4 + 流光紫', 9.00, 9.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (44, '5_1', 'nullWF-1000XM4 + 经典黑', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/e89d66bb4e2d422aa1e6129b27fee7a415466830463799616.png', 888.00, 888.00, 888.00, 888, 0, 'WF-1000XM4 + 经典黑', 8.00, 8.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (45, '5_2', 'nullWF-1000XM4 + 哑光白', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/568c519e7bfc4ab3ba46949a1190000415511064914989376.png', 777.00, 777.00, 777.00, 777, 0, 'WF-1000XM4 + 哑光白', 7.00, 7.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (46, '5_3', 'nullWF-1000XM5 + 流光紫', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/401bcdd406b841049dd6f893bb643c7015466826587869504.png', 666.00, 666.00, 666.00, 666, 0, 'WF-1000XM5 + 流光紫', 6.00, 6.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (47, '5_4', 'nullWF-1000XM5 + 经典黑', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/7ec00186522946a994585b3bccae180215466822368137536.png', 555.00, 555.00, 555.00, 555, 0, 'WF-1000XM5 + 经典黑', 5.00, 5.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (48, '5_5', 'nullWF-1000XM5 + 哑光白', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/cef1f6f4d7694d82b338c0fef78d2ea4【哲风壁纸】小清新-时尚穿搭.png', 444.00, 444.00, 444.00, 444, 0, 'WF-1000XM5 + 哑光白', 4.00, 4.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (49, '5_6', 'nullWF-1000XM6 + 流光紫', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/44846672964642a38576032b746b7fd615466825643692352.png', 333.00, 333.00, 333.00, 333, 0, 'WF-1000XM6 + 流光紫', 3.00, 3.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (50, '5_7', 'nullWF-1000XM6 + 经典黑', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/181d99d24fcd41beaf8d5b77f51acfbe【哲风壁纸】小清新-性感.png', 222.00, 222.00, 222.00, 222, 0, 'WF-1000XM6 + 经典黑', 2.00, 2.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (51, '5_8', 'nullWF-1000XM6 + 哑光白', 5, 'http://127.0.0.1:9000/spzx-bucket/20250126/c8fc2bccc94447f7b70d051abd4a3c7cGLRLcPobkAAUuHG.jpg', 111.00, 111.00, 111.00, 111, 0, 'WF-1000XM6 + 哑光白', 1.00, 1.00, 0, '2025-01-22 23:29:06', '2025-01-26 03:43:45', 0);
INSERT INTO `product_sku` VALUES (52, '6_0', '特斯拉黄金手机9999', 6, 'http://127.0.0.1:9000/spzx-bucket/20250125/655a60d5ca9c4ba5804b5ec6d3d1ebf3【哲风壁纸】少女-真人系列.png', 0.10, 1.00, 1.00, 100, 0, '9999', 1.00, 1.00, 0, '2025-01-25 20:31:03', '2025-01-25 20:31:03', 0);
INSERT INTO `product_sku` VALUES (53, '6_1', '特斯拉黄金手机999', 6, 'http://127.0.0.1:9000/spzx-bucket/20250125/69a31d891a634f8c99db8a3bee3d9863【哲风壁纸】写真-许岚LAN (1).png', 0.10, 1.00, 1.00, 200, 0, '999', 1.00, 1.00, 0, '2025-01-25 20:31:03', '2025-01-25 20:31:03', 0);

-- ----------------------------
-- Table structure for product_spec
-- ----------------------------
DROP TABLE IF EXISTS `product_spec`;
CREATE TABLE `product_spec`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `spec_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格名称',
  `spec_value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '规格值：\"[{\"key\":\"颜色\",\"valueList\":[\"蓝\",\"白\",\"红\"]]\"',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品规格' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_spec
-- ----------------------------
INSERT INTO `product_spec` VALUES (1, '小米手机', '[{\"key\":\"颜色\",\"valueList\":[\"白色\",\"红色\",\"黑色\"]},{\"key\":\"内存\",\"valueList\":[\"8G\",\"18G\"]}]', '2023-05-06 12:40:22', '2023-05-06 12:40:22', 0);
INSERT INTO `product_spec` VALUES (2, '笔记本电脑', '[{\"key\":\"内存\",\"valueList\":[\"8G\",\"16G\",\"32G\"]}]', '2023-05-06 12:56:08', '2023-05-25 14:59:59', 0);
INSERT INTO `product_spec` VALUES (8, '冰箱', '[{\"key\":\"高度\",\"valueList\":[\"200\"]},{\"key\":\"容积\",\"valueList\":[\"60L\"]}]', '2023-07-19 09:41:16', '2023-07-19 09:41:24', 0);
INSERT INTO `product_spec` VALUES (9, '1111', '[{\"key\":\"1111\",\"valueList\":[\"1111\"]},{\"key\":\"222\",\"valueList\":[\"222\"]}]', '2025-01-22 07:49:23', '2025-01-22 07:56:32', 1);
INSERT INTO `product_spec` VALUES (10, '华为手机', '[{\"key\":\"内存\",\"valueList\":[\"128G\",\"256G\",\"512G\",\"1T\"]},{\"key\":\"颜色\",\"valueList\":[\"黑色\",\"紫色\"]},{\"key\":\"型号\",\"valueList\":[\"Pro\",\"Max\",\"Min\",\"Utral\"]}]', '2025-01-22 07:58:57', '2025-01-22 08:03:00', 0);
INSERT INTO `product_spec` VALUES (11, '索尼耳机', '[{\"key\":\"型号\",\"valueList\":[\"WF-1000XM4\",\"WF-1000XM5\",\"WF-1000XM6\"]},{\"key\":\"颜色\",\"valueList\":[\"流光紫\",\"经典黑\",\"哑光白\"]}]', '2025-01-22 23:23:24', '2025-01-22 23:23:24', 0);
INSERT INTO `product_spec` VALUES (12, '特斯拉手机', '[{\"key\":\"黄金纯度\",\"valueList\":[\"9999\",\"999\"]}]', '2025-01-25 20:26:37', '2025-01-25 20:26:37', 0);

-- ----------------------------
-- Table structure for product_unit
-- ----------------------------
DROP TABLE IF EXISTS `product_unit`;
CREATE TABLE `product_unit`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品单位' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_unit
-- ----------------------------
INSERT INTO `product_unit` VALUES (1, '个', '2023-05-12 10:43:17', '2023-05-12 10:43:17', 0);
INSERT INTO `product_unit` VALUES (2, '台', '2023-06-06 09:47:17', '2023-06-06 09:47:17', 0);
INSERT INTO `product_unit` VALUES (3, '包', '2023-06-06 09:47:21', '2023-06-06 09:47:21', 0);
INSERT INTO `product_unit` VALUES (4, '打', '2023-06-06 09:47:26', '2023-06-06 09:47:26', 0);
INSERT INTO `product_unit` VALUES (5, '带', '2023-06-06 09:47:43', '2023-06-06 09:47:43', 0);

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地区编码',
  `parent_code` bigint NULL DEFAULT NULL COMMENT '上级地区code',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地区名称',
  `level` int NULL DEFAULT NULL COMMENT '地区级别：1-省、自治区、直辖市 2-地级市、地区、自治州、盟 3-市辖区、县级市、县',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3712 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '地区信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES (1, '110000', 0, '北京市', 1, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (2, '110100', 110000, '北京市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (3, '110101', 110100, '东城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (4, '110102', 110100, '西城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (5, '110105', 110100, '朝阳区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (6, '110106', 110100, '丰台区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (7, '110107', 110100, '石景山区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (8, '110108', 110100, '海淀区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (9, '110109', 110100, '门头沟区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (10, '110111', 110100, '房山区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (11, '110112', 110100, '通州区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (12, '110113', 110100, '顺义区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (13, '110114', 110100, '昌平区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (14, '110115', 110100, '大兴区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (15, '110116', 110100, '怀柔区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (16, '110117', 110100, '平谷区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (17, '110118', 110100, '密云区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (18, '110119', 110100, '延庆区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (19, '120000', 0, '天津市', 1, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (20, '120100', 120000, '天津市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (21, '120101', 120100, '和平区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (22, '120102', 120100, '河东区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (23, '120103', 120100, '河西区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (24, '120104', 120100, '南开区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (25, '120105', 120100, '河北区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (26, '120106', 120100, '红桥区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (27, '120110', 120100, '东丽区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (28, '120111', 120100, '西青区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (29, '120112', 120100, '津南区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (30, '120113', 120100, '北辰区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (31, '120114', 120100, '武清区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (32, '120115', 120100, '宝坻区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (33, '120116', 120100, '滨海新区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (34, '120117', 120100, '宁河区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (35, '120118', 120100, '静海区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (36, '120119', 120100, '蓟州区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (37, '130000', 0, '河北省', 1, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (38, '130100', 130000, '石家庄市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (39, '130102', 130100, '长安区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (40, '130104', 130100, '桥西区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (41, '130105', 130100, '新华区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (42, '130107', 130100, '井陉矿区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (43, '130108', 130100, '裕华区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (44, '130109', 130100, '藁城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (45, '130110', 130100, '鹿泉区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (46, '130111', 130100, '栾城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (47, '130121', 130100, '井陉县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (48, '130123', 130100, '正定县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (49, '130125', 130100, '行唐县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (50, '130126', 130100, '灵寿县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (51, '130127', 130100, '高邑县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (52, '130128', 130100, '深泽县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (53, '130129', 130100, '赞皇县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (54, '130130', 130100, '无极县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (55, '130131', 130100, '平山县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (56, '130132', 130100, '元氏县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (57, '130133', 130100, '赵县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (58, '130181', 130100, '辛集市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (59, '130183', 130100, '晋州市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (60, '130184', 130100, '新乐市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (61, '130200', 130000, '唐山市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (62, '130202', 130200, '路南区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (63, '130203', 130200, '路北区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (64, '130204', 130200, '古冶区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (65, '130205', 130200, '开平区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (66, '130207', 130200, '丰南区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (67, '130208', 130200, '丰润区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (68, '130209', 130200, '曹妃甸区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (69, '130224', 130200, '滦南县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (70, '130225', 130200, '乐亭县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (71, '130227', 130200, '迁西县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (72, '130229', 130200, '玉田县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (73, '130281', 130200, '遵化市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (74, '130283', 130200, '迁安市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (75, '130284', 130200, '滦州市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (76, '130300', 130000, '秦皇岛市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (77, '130302', 130300, '海港区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (78, '130303', 130300, '山海关区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (79, '130304', 130300, '北戴河区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (80, '130306', 130300, '抚宁区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (81, '130321', 130300, '青龙满族自治县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (82, '130322', 130300, '昌黎县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (83, '130324', 130300, '卢龙县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (84, '130400', 130000, '邯郸市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (85, '130402', 130400, '邯山区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (86, '130403', 130400, '丛台区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (87, '130404', 130400, '复兴区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (88, '130406', 130400, '峰峰矿区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (89, '130407', 130400, '肥乡区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (90, '130408', 130400, '永年区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (91, '130423', 130400, '临漳县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (92, '130424', 130400, '成安县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (93, '130425', 130400, '大名县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (94, '130426', 130400, '涉县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (95, '130427', 130400, '磁县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (96, '130430', 130400, '邱县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (97, '130431', 130400, '鸡泽县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (98, '130432', 130400, '广平县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (99, '130433', 130400, '馆陶县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (100, '130434', 130400, '魏县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (101, '130435', 130400, '曲周县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (102, '130481', 130400, '武安市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (103, '130500', 130000, '邢台市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (104, '130502', 130500, '桥东区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (105, '130503', 130500, '桥西区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (106, '130521', 130500, '邢台县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (107, '130522', 130500, '临城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (108, '130523', 130500, '内丘县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (109, '130524', 130500, '柏乡县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (110, '130525', 130500, '隆尧县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (111, '130526', 130500, '任县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (112, '130527', 130500, '南和县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (113, '130528', 130500, '宁晋县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (114, '130529', 130500, '巨鹿县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (115, '130530', 130500, '新河县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (116, '130531', 130500, '广宗县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (117, '130532', 130500, '平乡县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (118, '130533', 130500, '威县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (119, '130534', 130500, '清河县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (120, '130535', 130500, '临西县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (121, '130581', 130500, '南宫市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (122, '130582', 130500, '沙河市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (123, '130600', 130000, '保定市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (124, '130602', 130600, '竞秀区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (125, '130606', 130600, '莲池区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (126, '130607', 130600, '满城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (127, '130608', 130600, '清苑区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (128, '130609', 130600, '徐水区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (129, '130623', 130600, '涞水县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (130, '130624', 130600, '阜平县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (131, '130626', 130600, '定兴县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (132, '130627', 130600, '唐县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (133, '130628', 130600, '高阳县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (134, '130629', 130600, '容城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (135, '130630', 130600, '涞源县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (136, '130631', 130600, '望都县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (137, '130632', 130600, '安新县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (138, '130633', 130600, '易县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (139, '130634', 130600, '曲阳县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (140, '130635', 130600, '蠡县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (141, '130636', 130600, '顺平县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (142, '130637', 130600, '博野县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (143, '130638', 130600, '雄县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (144, '130681', 130600, '涿州市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (145, '130682', 130600, '定州市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (146, '130683', 130600, '安国市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (147, '130684', 130600, '高碑店市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (148, '130700', 130000, '张家口市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (149, '130702', 130700, '桥东区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (150, '130703', 130700, '桥西区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (151, '130705', 130700, '宣化区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (152, '130706', 130700, '下花园区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (153, '130708', 130700, '万全区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (154, '130709', 130700, '崇礼区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (155, '130722', 130700, '张北县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (156, '130723', 130700, '康保县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (157, '130724', 130700, '沽源县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (158, '130725', 130700, '尚义县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (159, '130726', 130700, '蔚县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (160, '130727', 130700, '阳原县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (161, '130728', 130700, '怀安县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (162, '130730', 130700, '怀来县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (163, '130731', 130700, '涿鹿县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (164, '130732', 130700, '赤城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (165, '130800', 130000, '承德市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (166, '130802', 130800, '双桥区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (167, '130803', 130800, '双滦区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (168, '130804', 130800, '鹰手营子矿区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (169, '130821', 130800, '承德县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (170, '130822', 130800, '兴隆县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (171, '130824', 130800, '滦平县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (172, '130825', 130800, '隆化县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (173, '130826', 130800, '丰宁满族自治县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (174, '130827', 130800, '宽城满族自治县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (175, '130828', 130800, '围场满族蒙古族自治县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (176, '130881', 130800, '平泉市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (177, '130900', 130000, '沧州市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (178, '130902', 130900, '新华区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (179, '130903', 130900, '运河区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (180, '130921', 130900, '沧县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (181, '130922', 130900, '青县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (182, '130923', 130900, '东光县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (183, '130924', 130900, '海兴县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (184, '130925', 130900, '盐山县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (185, '130926', 130900, '肃宁县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (186, '130927', 130900, '南皮县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (187, '130928', 130900, '吴桥县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (188, '130929', 130900, '献县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (189, '130930', 130900, '孟村回族自治县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (190, '130981', 130900, '泊头市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (191, '130982', 130900, '任丘市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (192, '130983', 130900, '黄骅市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (193, '130984', 130900, '河间市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (194, '131000', 130000, '廊坊市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (195, '131002', 131000, '安次区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (196, '131003', 131000, '广阳区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (197, '131022', 131000, '固安县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (198, '131023', 131000, '永清县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (199, '131024', 131000, '香河县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (200, '131025', 131000, '大城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (201, '131026', 131000, '文安县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (202, '131028', 131000, '大厂回族自治县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (203, '131081', 131000, '霸州市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (204, '131082', 131000, '三河市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (205, '131100', 130000, '衡水市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (206, '131102', 131100, '桃城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (207, '131103', 131100, '冀州区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (208, '131121', 131100, '枣强县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (209, '131122', 131100, '武邑县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (210, '131123', 131100, '武强县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (211, '131124', 131100, '饶阳县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (212, '131125', 131100, '安平县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (213, '131126', 131100, '故城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (214, '131127', 131100, '景县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (215, '131128', 131100, '阜城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (216, '131182', 131100, '深州市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (217, '140000', 0, '山西省', 1, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (218, '140100', 140000, '太原市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (219, '140105', 140100, '小店区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (220, '140106', 140100, '迎泽区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (221, '140107', 140100, '杏花岭区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (222, '140108', 140100, '尖草坪区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (223, '140109', 140100, '万柏林区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (224, '140110', 140100, '晋源区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (225, '140121', 140100, '清徐县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (226, '140122', 140100, '阳曲县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (227, '140123', 140100, '娄烦县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (228, '140181', 140100, '古交市', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (229, '140200', 140000, '大同市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (230, '140212', 140200, '新荣区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (231, '140213', 140200, '平城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (232, '140214', 140200, '云冈区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (233, '140215', 140200, '云州区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (234, '140221', 140200, '阳高县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (235, '140222', 140200, '天镇县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (236, '140223', 140200, '广灵县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (237, '140224', 140200, '灵丘县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (238, '140225', 140200, '浑源县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (239, '140226', 140200, '左云县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (240, '140300', 140000, '阳泉市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (241, '140302', 140300, '城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (242, '140303', 140300, '矿区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (243, '140311', 140300, '郊区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (244, '140321', 140300, '平定县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (245, '140322', 140300, '盂县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (246, '140400', 140000, '长治市', 2, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (247, '140403', 140400, '潞州区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (248, '140404', 140400, '上党区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (249, '140405', 140400, '屯留区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (250, '140406', 140400, '潞城区', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (251, '140423', 140400, '襄垣县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (252, '140425', 140400, '平顺县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (253, '140426', 140400, '黎城县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (254, '140427', 140400, '壶关县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (255, '140428', 140400, '长子县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (256, '140429', 140400, '武乡县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (257, '140430', 140400, '沁县', 3, '2023-02-01 09:13:01', '2023-02-01 09:13:01', 0);
INSERT INTO `region` VALUES (258, '140431', 140400, '沁源县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (259, '140500', 140000, '晋城市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (260, '140502', 140500, '城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (261, '140521', 140500, '沁水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (262, '140522', 140500, '阳城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (263, '140524', 140500, '陵川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (264, '140525', 140500, '泽州县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (265, '140581', 140500, '高平市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (266, '140600', 140000, '朔州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (267, '140602', 140600, '朔城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (268, '140603', 140600, '平鲁区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (269, '140621', 140600, '山阴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (270, '140622', 140600, '应县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (271, '140623', 140600, '右玉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (272, '140681', 140600, '怀仁市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (273, '140700', 140000, '晋中市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (274, '140702', 140700, '榆次区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (275, '140703', 140700, '太谷区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (276, '140721', 140700, '榆社县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (277, '140722', 140700, '左权县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (278, '140723', 140700, '和顺县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (279, '140724', 140700, '昔阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (280, '140725', 140700, '寿阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (281, '140727', 140700, '祁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (282, '140728', 140700, '平遥县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (283, '140729', 140700, '灵石县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (284, '140781', 140700, '介休市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (285, '140800', 140000, '运城市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (286, '140802', 140800, '盐湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (287, '140821', 140800, '临猗县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (288, '140822', 140800, '万荣县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (289, '140823', 140800, '闻喜县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (290, '140824', 140800, '稷山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (291, '140825', 140800, '新绛县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (292, '140826', 140800, '绛县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (293, '140827', 140800, '垣曲县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (294, '140828', 140800, '夏县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (295, '140829', 140800, '平陆县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (296, '140830', 140800, '芮城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (297, '140881', 140800, '永济市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (298, '140882', 140800, '河津市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (299, '140900', 140000, '忻州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (300, '140902', 140900, '忻府区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (301, '140921', 140900, '定襄县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (302, '140922', 140900, '五台县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (303, '140923', 140900, '代县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (304, '140924', 140900, '繁峙县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (305, '140925', 140900, '宁武县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (306, '140926', 140900, '静乐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (307, '140927', 140900, '神池县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (308, '140928', 140900, '五寨县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (309, '140929', 140900, '岢岚县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (310, '140930', 140900, '河曲县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (311, '140931', 140900, '保德县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (312, '140932', 140900, '偏关县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (313, '140981', 140900, '原平市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (314, '141000', 140000, '临汾市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (315, '141002', 141000, '尧都区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (316, '141021', 141000, '曲沃县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (317, '141022', 141000, '翼城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (318, '141023', 141000, '襄汾县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (319, '141024', 141000, '洪洞县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (320, '141025', 141000, '古县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (321, '141026', 141000, '安泽县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (322, '141027', 141000, '浮山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (323, '141028', 141000, '吉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (324, '141029', 141000, '乡宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (325, '141030', 141000, '大宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (326, '141031', 141000, '隰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (327, '141032', 141000, '永和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (328, '141033', 141000, '蒲县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (329, '141034', 141000, '汾西县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (330, '141081', 141000, '侯马市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (331, '141082', 141000, '霍州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (332, '141100', 140000, '吕梁市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (333, '141102', 141100, '离石区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (334, '141121', 141100, '文水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (335, '141122', 141100, '交城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (336, '141123', 141100, '兴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (337, '141124', 141100, '临县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (338, '141125', 141100, '柳林县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (339, '141126', 141100, '石楼县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (340, '141127', 141100, '岚县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (341, '141128', 141100, '方山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (342, '141129', 141100, '中阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (343, '141130', 141100, '交口县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (344, '141181', 141100, '孝义市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (345, '141182', 141100, '汾阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (346, '150000', 0, '内蒙古自治区', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (347, '150100', 150000, '呼和浩特市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (348, '150102', 150100, '新城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (349, '150103', 150100, '回民区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (350, '150104', 150100, '玉泉区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (351, '150105', 150100, '赛罕区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (352, '150121', 150100, '土默特左旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (353, '150122', 150100, '托克托县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (354, '150123', 150100, '和林格尔县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (355, '150124', 150100, '清水河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (356, '150125', 150100, '武川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (357, '150200', 150000, '包头市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (358, '150202', 150200, '东河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (359, '150203', 150200, '昆都仑区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (360, '150204', 150200, '青山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (361, '150205', 150200, '石拐区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (362, '150206', 150200, '白云鄂博矿区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (363, '150207', 150200, '九原区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (364, '150221', 150200, '土默特右旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (365, '150222', 150200, '固阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (366, '150223', 150200, '达尔罕茂明安联合旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (367, '150300', 150000, '乌海市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (368, '150302', 150300, '海勃湾区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (369, '150303', 150300, '海南区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (370, '150304', 150300, '乌达区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (371, '150400', 150000, '赤峰市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (372, '150402', 150400, '红山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (373, '150403', 150400, '元宝山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (374, '150404', 150400, '松山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (375, '150421', 150400, '阿鲁科尔沁旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (376, '150422', 150400, '巴林左旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (377, '150423', 150400, '巴林右旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (378, '150424', 150400, '林西县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (379, '150425', 150400, '克什克腾旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (380, '150426', 150400, '翁牛特旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (381, '150428', 150400, '喀喇沁旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (382, '150429', 150400, '宁城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (383, '150430', 150400, '敖汉旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (384, '150500', 150000, '通辽市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (385, '150502', 150500, '科尔沁区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (386, '150521', 150500, '科尔沁左翼中旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (387, '150522', 150500, '科尔沁左翼后旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (388, '150523', 150500, '开鲁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (389, '150524', 150500, '库伦旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (390, '150525', 150500, '奈曼旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (391, '150526', 150500, '扎鲁特旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (392, '150581', 150500, '霍林郭勒市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (393, '150600', 150000, '鄂尔多斯市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (394, '150602', 150600, '东胜区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (395, '150603', 150600, '康巴什区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (396, '150621', 150600, '达拉特旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (397, '150622', 150600, '准格尔旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (398, '150623', 150600, '鄂托克前旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (399, '150624', 150600, '鄂托克旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (400, '150625', 150600, '杭锦旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (401, '150626', 150600, '乌审旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (402, '150627', 150600, '伊金霍洛旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (403, '150700', 150000, '呼伦贝尔市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (404, '150702', 150700, '海拉尔区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (405, '150703', 150700, '扎赉诺尔区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (406, '150721', 150700, '阿荣旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (407, '150722', 150700, '莫力达瓦达斡尔族自治旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (408, '150723', 150700, '鄂伦春自治旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (409, '150724', 150700, '鄂温克族自治旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (410, '150725', 150700, '陈巴尔虎旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (411, '150726', 150700, '新巴尔虎左旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (412, '150727', 150700, '新巴尔虎右旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (413, '150781', 150700, '满洲里市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (414, '150782', 150700, '牙克石市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (415, '150783', 150700, '扎兰屯市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (416, '150784', 150700, '额尔古纳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (417, '150785', 150700, '根河市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (418, '150800', 150000, '巴彦淖尔市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (419, '150802', 150800, '临河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (420, '150821', 150800, '五原县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (421, '150822', 150800, '磴口县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (422, '150823', 150800, '乌拉特前旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (423, '150824', 150800, '乌拉特中旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (424, '150825', 150800, '乌拉特后旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (425, '150826', 150800, '杭锦后旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (426, '150900', 150000, '乌兰察布市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (427, '150902', 150900, '集宁区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (428, '150921', 150900, '卓资县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (429, '150922', 150900, '化德县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (430, '150923', 150900, '商都县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (431, '150924', 150900, '兴和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (432, '150925', 150900, '凉城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (433, '150926', 150900, '察哈尔右翼前旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (434, '150927', 150900, '察哈尔右翼中旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (435, '150928', 150900, '察哈尔右翼后旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (436, '150929', 150900, '四子王旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (437, '150981', 150900, '丰镇市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (438, '152200', 150000, '兴安盟', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (439, '152201', 152200, '乌兰浩特市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (440, '152202', 152200, '阿尔山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (441, '152221', 152200, '科尔沁右翼前旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (442, '152222', 152200, '科尔沁右翼中旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (443, '152223', 152200, '扎赉特旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (444, '152224', 152200, '突泉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (445, '152500', 150000, '锡林郭勒盟', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (446, '152501', 152500, '二连浩特市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (447, '152502', 152500, '锡林浩特市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (448, '152522', 152500, '阿巴嘎旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (449, '152523', 152500, '苏尼特左旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (450, '152524', 152500, '苏尼特右旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (451, '152525', 152500, '东乌珠穆沁旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (452, '152526', 152500, '西乌珠穆沁旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (453, '152527', 152500, '太仆寺旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (454, '152528', 152500, '镶黄旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (455, '152529', 152500, '正镶白旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (456, '152530', 152500, '正蓝旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (457, '152531', 152500, '多伦县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (458, '152900', 150000, '阿拉善盟', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (459, '152921', 152900, '阿拉善左旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (460, '152922', 152900, '阿拉善右旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (461, '152923', 152900, '额济纳旗', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (462, '210000', 0, '辽宁省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (463, '210100', 210000, '沈阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (464, '210102', 210100, '和平区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (465, '210103', 210100, '沈河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (466, '210104', 210100, '大东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (467, '210105', 210100, '皇姑区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (468, '210106', 210100, '铁西区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (469, '210111', 210100, '苏家屯区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (470, '210112', 210100, '浑南区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (471, '210113', 210100, '沈北新区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (472, '210114', 210100, '于洪区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (473, '210115', 210100, '辽中区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (474, '210123', 210100, '康平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (475, '210124', 210100, '法库县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (476, '210181', 210100, '新民市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (477, '210200', 210000, '大连市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (478, '210202', 210200, '中山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (479, '210203', 210200, '西岗区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (480, '210204', 210200, '沙河口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (481, '210211', 210200, '甘井子区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (482, '210212', 210200, '旅顺口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (483, '210213', 210200, '金州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (484, '210214', 210200, '普兰店区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (485, '210224', 210200, '长海县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (486, '210281', 210200, '瓦房店市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (487, '210283', 210200, '庄河市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (488, '210300', 210000, '鞍山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (489, '210302', 210300, '铁东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (490, '210303', 210300, '铁西区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (491, '210304', 210300, '立山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (492, '210311', 210300, '千山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (493, '210321', 210300, '台安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (494, '210323', 210300, '岫岩满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (495, '210381', 210300, '海城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (496, '210400', 210000, '抚顺市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (497, '210402', 210400, '新抚区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (498, '210403', 210400, '东洲区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (499, '210404', 210400, '望花区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (500, '210411', 210400, '顺城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (501, '210421', 210400, '抚顺县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (502, '210422', 210400, '新宾满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (503, '210423', 210400, '清原满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (504, '210500', 210000, '本溪市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (505, '210502', 210500, '平山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (506, '210503', 210500, '溪湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (507, '210504', 210500, '明山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (508, '210505', 210500, '南芬区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (509, '210521', 210500, '本溪满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (510, '210522', 210500, '桓仁满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (511, '210600', 210000, '丹东市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (512, '210602', 210600, '元宝区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (513, '210603', 210600, '振兴区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (514, '210604', 210600, '振安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (515, '210624', 210600, '宽甸满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (516, '210681', 210600, '东港市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (517, '210682', 210600, '凤城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (518, '210700', 210000, '锦州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (519, '210702', 210700, '古塔区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (520, '210703', 210700, '凌河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (521, '210711', 210700, '太和区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (522, '210726', 210700, '黑山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (523, '210727', 210700, '义县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (524, '210781', 210700, '凌海市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (525, '210782', 210700, '北镇市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (526, '210800', 210000, '营口市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (527, '210802', 210800, '站前区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (528, '210803', 210800, '西市区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (529, '210804', 210800, '鲅鱼圈区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (530, '210811', 210800, '老边区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (531, '210881', 210800, '盖州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (532, '210882', 210800, '大石桥市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (533, '210900', 210000, '阜新市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (534, '210902', 210900, '海州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (535, '210903', 210900, '新邱区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (536, '210904', 210900, '太平区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (537, '210905', 210900, '清河门区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (538, '210911', 210900, '细河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (539, '210921', 210900, '阜新蒙古族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (540, '210922', 210900, '彰武县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (541, '211000', 210000, '辽阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (542, '211002', 211000, '白塔区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (543, '211003', 211000, '文圣区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (544, '211004', 211000, '宏伟区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (545, '211005', 211000, '弓长岭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (546, '211011', 211000, '太子河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (547, '211021', 211000, '辽阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (548, '211081', 211000, '灯塔市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (549, '211100', 210000, '盘锦市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (550, '211102', 211100, '双台子区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (551, '211103', 211100, '兴隆台区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (552, '211104', 211100, '大洼区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (553, '211122', 211100, '盘山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (554, '211200', 210000, '铁岭市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (555, '211202', 211200, '银州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (556, '211204', 211200, '清河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (557, '211221', 211200, '铁岭县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (558, '211223', 211200, '西丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (559, '211224', 211200, '昌图县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (560, '211281', 211200, '调兵山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (561, '211282', 211200, '开原市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (562, '211300', 210000, '朝阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (563, '211302', 211300, '双塔区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (564, '211303', 211300, '龙城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (565, '211321', 211300, '朝阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (566, '211322', 211300, '建平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (567, '211324', 211300, '喀喇沁左翼蒙古族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (568, '211381', 211300, '北票市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (569, '211382', 211300, '凌源市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (570, '211400', 210000, '葫芦岛市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (571, '211402', 211400, '连山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (572, '211403', 211400, '龙港区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (573, '211404', 211400, '南票区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (574, '211421', 211400, '绥中县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (575, '211422', 211400, '建昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (576, '211481', 211400, '兴城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (577, '220000', 0, '吉林省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (578, '220100', 220000, '长春市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (579, '220102', 220100, '南关区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (580, '220103', 220100, '宽城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (581, '220104', 220100, '朝阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (582, '220105', 220100, '二道区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (583, '220106', 220100, '绿园区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (584, '220112', 220100, '双阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (585, '220113', 220100, '九台区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (586, '220122', 220100, '农安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (587, '220182', 220100, '榆树市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (588, '220183', 220100, '德惠市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (589, '220200', 220000, '吉林市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (590, '220202', 220200, '昌邑区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (591, '220203', 220200, '龙潭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (592, '220204', 220200, '船营区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (593, '220211', 220200, '丰满区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (594, '220221', 220200, '永吉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (595, '220281', 220200, '蛟河市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (596, '220282', 220200, '桦甸市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (597, '220283', 220200, '舒兰市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (598, '220284', 220200, '磐石市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (599, '220300', 220000, '四平市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (600, '220302', 220300, '铁西区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (601, '220303', 220300, '铁东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (602, '220322', 220300, '梨树县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (603, '220323', 220300, '伊通满族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (604, '220381', 220300, '公主岭市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (605, '220382', 220300, '双辽市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (606, '220400', 220000, '辽源市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (607, '220402', 220400, '龙山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (608, '220403', 220400, '西安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (609, '220421', 220400, '东丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (610, '220422', 220400, '东辽县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (611, '220500', 220000, '通化市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (612, '220502', 220500, '东昌区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (613, '220503', 220500, '二道江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (614, '220521', 220500, '通化县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (615, '220523', 220500, '辉南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (616, '220524', 220500, '柳河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (617, '220581', 220500, '梅河口市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (618, '220582', 220500, '集安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (619, '220600', 220000, '白山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (620, '220602', 220600, '浑江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (621, '220605', 220600, '江源区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (622, '220621', 220600, '抚松县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (623, '220622', 220600, '靖宇县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (624, '220623', 220600, '长白朝鲜族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (625, '220681', 220600, '临江市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (626, '220700', 220000, '松原市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (627, '220702', 220700, '宁江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (628, '220721', 220700, '前郭尔罗斯蒙古族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (629, '220722', 220700, '长岭县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (630, '220723', 220700, '乾安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (631, '220781', 220700, '扶余市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (632, '220800', 220000, '白城市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (633, '220802', 220800, '洮北区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (634, '220821', 220800, '镇赉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (635, '220822', 220800, '通榆县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (636, '220881', 220800, '洮南市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (637, '220882', 220800, '大安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (638, '222400', 220000, '延边朝鲜族自治州', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (639, '222401', 222400, '延吉市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (640, '222402', 222400, '图们市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (641, '222403', 222400, '敦化市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (642, '222404', 222400, '珲春市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (643, '222405', 222400, '龙井市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (644, '222406', 222400, '和龙市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (645, '222424', 222400, '汪清县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (646, '222426', 222400, '安图县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (647, '230000', 0, '黑龙江省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (648, '230100', 230000, '哈尔滨市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (649, '230102', 230100, '道里区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (650, '230103', 230100, '南岗区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (651, '230104', 230100, '道外区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (652, '230108', 230100, '平房区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (653, '230109', 230100, '松北区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (654, '230110', 230100, '香坊区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (655, '230111', 230100, '呼兰区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (656, '230112', 230100, '阿城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (657, '230113', 230100, '双城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (658, '230123', 230100, '依兰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (659, '230124', 230100, '方正县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (660, '230125', 230100, '宾县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (661, '230126', 230100, '巴彦县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (662, '230127', 230100, '木兰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (663, '230128', 230100, '通河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (664, '230129', 230100, '延寿县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (665, '230183', 230100, '尚志市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (666, '230184', 230100, '五常市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (667, '230200', 230000, '齐齐哈尔市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (668, '230202', 230200, '龙沙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (669, '230203', 230200, '建华区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (670, '230204', 230200, '铁锋区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (671, '230205', 230200, '昂昂溪区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (672, '230206', 230200, '富拉尔基区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (673, '230207', 230200, '碾子山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (674, '230208', 230200, '梅里斯达斡尔族区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (675, '230221', 230200, '龙江县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (676, '230223', 230200, '依安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (677, '230224', 230200, '泰来县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (678, '230225', 230200, '甘南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (679, '230227', 230200, '富裕县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (680, '230229', 230200, '克山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (681, '230230', 230200, '克东县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (682, '230231', 230200, '拜泉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (683, '230281', 230200, '讷河市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (684, '230300', 230000, '鸡西市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (685, '230302', 230300, '鸡冠区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (686, '230303', 230300, '恒山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (687, '230304', 230300, '滴道区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (688, '230305', 230300, '梨树区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (689, '230306', 230300, '城子河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (690, '230307', 230300, '麻山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (691, '230321', 230300, '鸡东县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (692, '230381', 230300, '虎林市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (693, '230382', 230300, '密山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (694, '230400', 230000, '鹤岗市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (695, '230402', 230400, '向阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (696, '230403', 230400, '工农区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (697, '230404', 230400, '南山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (698, '230405', 230400, '兴安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (699, '230406', 230400, '东山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (700, '230407', 230400, '兴山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (701, '230421', 230400, '萝北县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (702, '230422', 230400, '绥滨县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (703, '230500', 230000, '双鸭山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (704, '230502', 230500, '尖山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (705, '230503', 230500, '岭东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (706, '230505', 230500, '四方台区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (707, '230506', 230500, '宝山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (708, '230521', 230500, '集贤县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (709, '230522', 230500, '友谊县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (710, '230523', 230500, '宝清县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (711, '230524', 230500, '饶河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (712, '230600', 230000, '大庆市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (713, '230602', 230600, '萨尔图区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (714, '230603', 230600, '龙凤区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (715, '230604', 230600, '让胡路区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (716, '230605', 230600, '红岗区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (717, '230606', 230600, '大同区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (718, '230621', 230600, '肇州县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (719, '230622', 230600, '肇源县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (720, '230623', 230600, '林甸县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (721, '230624', 230600, '杜尔伯特蒙古族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (722, '230700', 230000, '伊春市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (723, '230717', 230700, '伊美区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (724, '230718', 230700, '乌翠区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (725, '230719', 230700, '友好区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (726, '230722', 230700, '嘉荫县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (727, '230723', 230700, '汤旺县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (728, '230724', 230700, '丰林县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (729, '230725', 230700, '大箐山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (730, '230726', 230700, '南岔县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (731, '230751', 230700, '金林区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (732, '230781', 230700, '铁力市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (733, '230800', 230000, '佳木斯市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (734, '230803', 230800, '向阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (735, '230804', 230800, '前进区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (736, '230805', 230800, '东风区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (737, '230811', 230800, '郊区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (738, '230822', 230800, '桦南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (739, '230826', 230800, '桦川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (740, '230828', 230800, '汤原县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (741, '230881', 230800, '同江市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (742, '230882', 230800, '富锦市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (743, '230883', 230800, '抚远市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (744, '230900', 230000, '七台河市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (745, '230902', 230900, '新兴区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (746, '230903', 230900, '桃山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (747, '230904', 230900, '茄子河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (748, '230921', 230900, '勃利县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (749, '231000', 230000, '牡丹江市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (750, '231002', 231000, '东安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (751, '231003', 231000, '阳明区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (752, '231004', 231000, '爱民区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (753, '231005', 231000, '西安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (754, '231025', 231000, '林口县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (755, '231081', 231000, '绥芬河市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (756, '231083', 231000, '海林市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (757, '231084', 231000, '宁安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (758, '231085', 231000, '穆棱市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (759, '231086', 231000, '东宁市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (760, '231100', 230000, '黑河市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (761, '231102', 231100, '爱辉区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (762, '231123', 231100, '逊克县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (763, '231124', 231100, '孙吴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (764, '231181', 231100, '北安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (765, '231182', 231100, '五大连池市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (766, '231183', 231100, '嫩江市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (767, '231200', 230000, '绥化市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (768, '231202', 231200, '北林区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (769, '231221', 231200, '望奎县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (770, '231222', 231200, '兰西县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (771, '231223', 231200, '青冈县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (772, '231224', 231200, '庆安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (773, '231225', 231200, '明水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (774, '231226', 231200, '绥棱县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (775, '231281', 231200, '安达市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (776, '231282', 231200, '肇东市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (777, '231283', 231200, '海伦市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (778, '232700', 230000, '大兴安岭地区', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (779, '232701', 232700, '漠河市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (780, '232721', 232700, '呼玛县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (781, '232722', 232700, '塔河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (782, '310000', 0, '上海市', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (783, '310100', 310000, '上海市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (784, '310101', 310100, '黄浦区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (785, '310104', 310100, '徐汇区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (786, '310105', 310100, '长宁区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (787, '310106', 310100, '静安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (788, '310107', 310100, '普陀区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (789, '310109', 310100, '虹口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (790, '310110', 310100, '杨浦区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (791, '310112', 310100, '闵行区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (792, '310113', 310100, '宝山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (793, '310114', 310100, '嘉定区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (794, '310115', 310100, '浦东新区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (795, '310116', 310100, '金山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (796, '310117', 310100, '松江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (797, '310118', 310100, '青浦区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (798, '310120', 310100, '奉贤区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (799, '310151', 310100, '崇明区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (800, '320000', 0, '江苏省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (801, '320100', 320000, '南京市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (802, '320102', 320100, '玄武区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (803, '320104', 320100, '秦淮区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (804, '320105', 320100, '建邺区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (805, '320106', 320100, '鼓楼区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (806, '320111', 320100, '浦口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (807, '320113', 320100, '栖霞区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (808, '320114', 320100, '雨花台区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (809, '320115', 320100, '江宁区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (810, '320116', 320100, '六合区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (811, '320117', 320100, '溧水区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (812, '320118', 320100, '高淳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (813, '320200', 320000, '无锡市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (814, '320205', 320200, '锡山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (815, '320206', 320200, '惠山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (816, '320211', 320200, '滨湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (817, '320213', 320200, '梁溪区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (818, '320214', 320200, '新吴区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (819, '320281', 320200, '江阴市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (820, '320282', 320200, '宜兴市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (821, '320300', 320000, '徐州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (822, '320302', 320300, '鼓楼区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (823, '320303', 320300, '云龙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (824, '320305', 320300, '贾汪区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (825, '320311', 320300, '泉山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (826, '320312', 320300, '铜山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (827, '320321', 320300, '丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (828, '320322', 320300, '沛县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (829, '320324', 320300, '睢宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (830, '320381', 320300, '新沂市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (831, '320382', 320300, '邳州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (832, '320400', 320000, '常州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (833, '320402', 320400, '天宁区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (834, '320404', 320400, '钟楼区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (835, '320411', 320400, '新北区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (836, '320412', 320400, '武进区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (837, '320413', 320400, '金坛区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (838, '320481', 320400, '溧阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (839, '320500', 320000, '苏州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (840, '320505', 320500, '虎丘区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (841, '320506', 320500, '吴中区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (842, '320507', 320500, '相城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (843, '320508', 320500, '姑苏区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (844, '320509', 320500, '吴江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (845, '320581', 320500, '常熟市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (846, '320582', 320500, '张家港市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (847, '320583', 320500, '昆山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (848, '320585', 320500, '太仓市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (849, '320600', 320000, '南通市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (850, '320602', 320600, '崇川区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (851, '320611', 320600, '港闸区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (852, '320612', 320600, '通州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (853, '320623', 320600, '如东县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (854, '320681', 320600, '启东市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (855, '320682', 320600, '如皋市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (856, '320684', 320600, '海门市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (857, '320685', 320600, '海安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (858, '320700', 320000, '连云港市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (859, '320703', 320700, '连云区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (860, '320706', 320700, '海州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (861, '320707', 320700, '赣榆区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (862, '320722', 320700, '东海县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (863, '320723', 320700, '灌云县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (864, '320724', 320700, '灌南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (865, '320800', 320000, '淮安市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (866, '320803', 320800, '淮安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (867, '320804', 320800, '淮阴区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (868, '320812', 320800, '清江浦区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (869, '320813', 320800, '洪泽区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (870, '320826', 320800, '涟水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (871, '320830', 320800, '盱眙县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (872, '320831', 320800, '金湖县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (873, '320900', 320000, '盐城市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (874, '320902', 320900, '亭湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (875, '320903', 320900, '盐都区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (876, '320904', 320900, '大丰区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (877, '320921', 320900, '响水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (878, '320922', 320900, '滨海县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (879, '320923', 320900, '阜宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (880, '320924', 320900, '射阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (881, '320925', 320900, '建湖县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (882, '320981', 320900, '东台市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (883, '321000', 320000, '扬州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (884, '321002', 321000, '广陵区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (885, '321003', 321000, '邗江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (886, '321012', 321000, '江都区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (887, '321023', 321000, '宝应县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (888, '321081', 321000, '仪征市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (889, '321084', 321000, '高邮市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (890, '321100', 320000, '镇江市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (891, '321102', 321100, '京口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (892, '321111', 321100, '润州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (893, '321112', 321100, '丹徒区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (894, '321181', 321100, '丹阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (895, '321182', 321100, '扬中市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (896, '321183', 321100, '句容市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (897, '321200', 320000, '泰州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (898, '321202', 321200, '海陵区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (899, '321203', 321200, '高港区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (900, '321204', 321200, '姜堰区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (901, '321281', 321200, '兴化市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (902, '321282', 321200, '靖江市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (903, '321283', 321200, '泰兴市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (904, '321300', 320000, '宿迁市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (905, '321302', 321300, '宿城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (906, '321311', 321300, '宿豫区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (907, '321322', 321300, '沭阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (908, '321323', 321300, '泗阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (909, '321324', 321300, '泗洪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (910, '330000', 0, '浙江省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (911, '330100', 330000, '杭州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (912, '330102', 330100, '上城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (913, '330103', 330100, '下城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (914, '330104', 330100, '江干区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (915, '330105', 330100, '拱墅区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (916, '330106', 330100, '西湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (917, '330108', 330100, '滨江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (918, '330109', 330100, '萧山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (919, '330110', 330100, '余杭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (920, '330111', 330100, '富阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (921, '330112', 330100, '临安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (922, '330122', 330100, '桐庐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (923, '330127', 330100, '淳安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (924, '330182', 330100, '建德市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (925, '330200', 330000, '宁波市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (926, '330203', 330200, '海曙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (927, '330205', 330200, '江北区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (928, '330206', 330200, '北仑区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (929, '330211', 330200, '镇海区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (930, '330212', 330200, '鄞州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (931, '330213', 330200, '奉化区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (932, '330225', 330200, '象山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (933, '330226', 330200, '宁海县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (934, '330281', 330200, '余姚市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (935, '330282', 330200, '慈溪市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (936, '330300', 330000, '温州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (937, '330302', 330300, '鹿城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (938, '330303', 330300, '龙湾区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (939, '330304', 330300, '瓯海区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (940, '330305', 330300, '洞头区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (941, '330324', 330300, '永嘉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (942, '330326', 330300, '平阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (943, '330327', 330300, '苍南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (944, '330328', 330300, '文成县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (945, '330329', 330300, '泰顺县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (946, '330381', 330300, '瑞安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (947, '330382', 330300, '乐清市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (948, '330383', 330300, '龙港市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (949, '330400', 330000, '嘉兴市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (950, '330402', 330400, '南湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (951, '330411', 330400, '秀洲区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (952, '330421', 330400, '嘉善县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (953, '330424', 330400, '海盐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (954, '330481', 330400, '海宁市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (955, '330482', 330400, '平湖市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (956, '330483', 330400, '桐乡市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (957, '330500', 330000, '湖州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (958, '330502', 330500, '吴兴区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (959, '330503', 330500, '南浔区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (960, '330521', 330500, '德清县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (961, '330522', 330500, '长兴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (962, '330523', 330500, '安吉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (963, '330600', 330000, '绍兴市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (964, '330602', 330600, '越城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (965, '330603', 330600, '柯桥区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (966, '330604', 330600, '上虞区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (967, '330624', 330600, '新昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (968, '330681', 330600, '诸暨市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (969, '330683', 330600, '嵊州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (970, '330700', 330000, '金华市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (971, '330702', 330700, '婺城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (972, '330703', 330700, '金东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (973, '330723', 330700, '武义县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (974, '330726', 330700, '浦江县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (975, '330727', 330700, '磐安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (976, '330781', 330700, '兰溪市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (977, '330782', 330700, '义乌市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (978, '330783', 330700, '东阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (979, '330784', 330700, '永康市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (980, '330800', 330000, '衢州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (981, '330802', 330800, '柯城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (982, '330803', 330800, '衢江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (983, '330822', 330800, '常山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (984, '330824', 330800, '开化县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (985, '330825', 330800, '龙游县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (986, '330881', 330800, '江山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (987, '330900', 330000, '舟山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (988, '330902', 330900, '定海区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (989, '330903', 330900, '普陀区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (990, '330921', 330900, '岱山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (991, '330922', 330900, '嵊泗县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (992, '331000', 330000, '台州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (993, '331002', 331000, '椒江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (994, '331003', 331000, '黄岩区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (995, '331004', 331000, '路桥区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (996, '331022', 331000, '三门县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (997, '331023', 331000, '天台县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (998, '331024', 331000, '仙居县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (999, '331081', 331000, '温岭市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1000, '331082', 331000, '临海市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1001, '331083', 331000, '玉环市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1002, '331100', 330000, '丽水市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1003, '331102', 331100, '莲都区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1004, '331121', 331100, '青田县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1005, '331122', 331100, '缙云县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1006, '331123', 331100, '遂昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1007, '331124', 331100, '松阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1008, '331125', 331100, '云和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1009, '331126', 331100, '庆元县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1010, '331127', 331100, '景宁畲族自治县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1011, '331181', 331100, '龙泉市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1012, '340000', 0, '安徽省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1013, '340100', 340000, '合肥市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1014, '340102', 340100, '瑶海区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1015, '340103', 340100, '庐阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1016, '340104', 340100, '蜀山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1017, '340111', 340100, '包河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1018, '340121', 340100, '长丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1019, '340122', 340100, '肥东县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1020, '340123', 340100, '肥西县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1021, '340124', 340100, '庐江县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1022, '340181', 340100, '巢湖市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1023, '340200', 340000, '芜湖市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1024, '340202', 340200, '镜湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1025, '340203', 340200, '弋江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1026, '340207', 340200, '鸠江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1027, '340208', 340200, '三山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1028, '340221', 340200, '芜湖县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1029, '340222', 340200, '繁昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1030, '340223', 340200, '南陵县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1031, '340281', 340200, '无为市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1032, '340300', 340000, '蚌埠市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1033, '340302', 340300, '龙子湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1034, '340303', 340300, '蚌山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1035, '340304', 340300, '禹会区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1036, '340311', 340300, '淮上区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1037, '340321', 340300, '怀远县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1038, '340322', 340300, '五河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1039, '340323', 340300, '固镇县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1040, '340400', 340000, '淮南市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1041, '340402', 340400, '大通区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1042, '340403', 340400, '田家庵区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1043, '340404', 340400, '谢家集区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1044, '340405', 340400, '八公山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1045, '340406', 340400, '潘集区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1046, '340421', 340400, '凤台县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1047, '340422', 340400, '寿县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1048, '340500', 340000, '马鞍山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1049, '340503', 340500, '花山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1050, '340504', 340500, '雨山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1051, '340506', 340500, '博望区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1052, '340521', 340500, '当涂县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1053, '340522', 340500, '含山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1054, '340523', 340500, '和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1055, '340600', 340000, '淮北市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1056, '340602', 340600, '杜集区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1057, '340603', 340600, '相山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1058, '340604', 340600, '烈山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1059, '340621', 340600, '濉溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1060, '340700', 340000, '铜陵市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1061, '340705', 340700, '铜官区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1062, '340706', 340700, '义安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1063, '340711', 340700, '郊区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1064, '340722', 340700, '枞阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1065, '340800', 340000, '安庆市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1066, '340802', 340800, '迎江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1067, '340803', 340800, '大观区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1068, '340811', 340800, '宜秀区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1069, '340822', 340800, '怀宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1070, '340825', 340800, '太湖县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1071, '340826', 340800, '宿松县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1072, '340827', 340800, '望江县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1073, '340828', 340800, '岳西县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1074, '340881', 340800, '桐城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1075, '340882', 340800, '潜山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1076, '341000', 340000, '黄山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1077, '341002', 341000, '屯溪区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1078, '341003', 341000, '黄山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1079, '341004', 341000, '徽州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1080, '341021', 341000, '歙县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1081, '341022', 341000, '休宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1082, '341023', 341000, '黟县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1083, '341024', 341000, '祁门县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1084, '341100', 340000, '滁州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1085, '341102', 341100, '琅琊区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1086, '341103', 341100, '南谯区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1087, '341122', 341100, '来安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1088, '341124', 341100, '全椒县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1089, '341125', 341100, '定远县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1090, '341126', 341100, '凤阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1091, '341181', 341100, '天长市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1092, '341182', 341100, '明光市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1093, '341200', 340000, '阜阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1094, '341202', 341200, '颍州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1095, '341203', 341200, '颍东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1096, '341204', 341200, '颍泉区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1097, '341221', 341200, '临泉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1098, '341222', 341200, '太和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1099, '341225', 341200, '阜南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1100, '341226', 341200, '颍上县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1101, '341282', 341200, '界首市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1102, '341300', 340000, '宿州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1103, '341302', 341300, '埇桥区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1104, '341321', 341300, '砀山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1105, '341322', 341300, '萧县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1106, '341323', 341300, '灵璧县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1107, '341324', 341300, '泗县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1108, '341500', 340000, '六安市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1109, '341502', 341500, '金安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1110, '341503', 341500, '裕安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1111, '341504', 341500, '叶集区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1112, '341522', 341500, '霍邱县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1113, '341523', 341500, '舒城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1114, '341524', 341500, '金寨县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1115, '341525', 341500, '霍山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1116, '341600', 340000, '亳州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1117, '341602', 341600, '谯城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1118, '341621', 341600, '涡阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1119, '341622', 341600, '蒙城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1120, '341623', 341600, '利辛县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1121, '341700', 340000, '池州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1122, '341702', 341700, '贵池区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1123, '341721', 341700, '东至县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1124, '341722', 341700, '石台县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1125, '341723', 341700, '青阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1126, '341800', 340000, '宣城市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1127, '341802', 341800, '宣州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1128, '341821', 341800, '郎溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1129, '341823', 341800, '泾县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1130, '341824', 341800, '绩溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1131, '341825', 341800, '旌德县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1132, '341881', 341800, '宁国市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1133, '341882', 341800, '广德市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1134, '350000', 0, '福建省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1135, '350100', 350000, '福州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1136, '350102', 350100, '鼓楼区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1137, '350103', 350100, '台江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1138, '350104', 350100, '仓山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1139, '350105', 350100, '马尾区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1140, '350111', 350100, '晋安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1141, '350112', 350100, '长乐区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1142, '350121', 350100, '闽侯县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1143, '350122', 350100, '连江县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1144, '350123', 350100, '罗源县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1145, '350124', 350100, '闽清县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1146, '350125', 350100, '永泰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1147, '350128', 350100, '平潭县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1148, '350181', 350100, '福清市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1149, '350200', 350000, '厦门市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1150, '350203', 350200, '思明区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1151, '350205', 350200, '海沧区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1152, '350206', 350200, '湖里区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1153, '350211', 350200, '集美区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1154, '350212', 350200, '同安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1155, '350213', 350200, '翔安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1156, '350300', 350000, '莆田市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1157, '350302', 350300, '城厢区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1158, '350303', 350300, '涵江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1159, '350304', 350300, '荔城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1160, '350305', 350300, '秀屿区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1161, '350322', 350300, '仙游县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1162, '350400', 350000, '三明市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1163, '350402', 350400, '梅列区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1164, '350403', 350400, '三元区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1165, '350421', 350400, '明溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1166, '350423', 350400, '清流县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1167, '350424', 350400, '宁化县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1168, '350425', 350400, '大田县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1169, '350426', 350400, '尤溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1170, '350427', 350400, '沙县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1171, '350428', 350400, '将乐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1172, '350429', 350400, '泰宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1173, '350430', 350400, '建宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1174, '350481', 350400, '永安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1175, '350500', 350000, '泉州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1176, '350502', 350500, '鲤城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1177, '350503', 350500, '丰泽区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1178, '350504', 350500, '洛江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1179, '350505', 350500, '泉港区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1180, '350521', 350500, '惠安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1181, '350524', 350500, '安溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1182, '350525', 350500, '永春县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1183, '350526', 350500, '德化县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1184, '350527', 350500, '金门县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1185, '350581', 350500, '石狮市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1186, '350582', 350500, '晋江市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1187, '350583', 350500, '南安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1188, '350600', 350000, '漳州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1189, '350602', 350600, '芗城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1190, '350603', 350600, '龙文区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1191, '350622', 350600, '云霄县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1192, '350623', 350600, '漳浦县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1193, '350624', 350600, '诏安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1194, '350625', 350600, '长泰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1195, '350626', 350600, '东山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1196, '350627', 350600, '南靖县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1197, '350628', 350600, '平和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1198, '350629', 350600, '华安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1199, '350681', 350600, '龙海市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1200, '350700', 350000, '南平市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1201, '350702', 350700, '延平区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1202, '350703', 350700, '建阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1203, '350721', 350700, '顺昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1204, '350722', 350700, '浦城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1205, '350723', 350700, '光泽县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1206, '350724', 350700, '松溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1207, '350725', 350700, '政和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1208, '350781', 350700, '邵武市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1209, '350782', 350700, '武夷山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1210, '350783', 350700, '建瓯市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1211, '350800', 350000, '龙岩市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1212, '350802', 350800, '新罗区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1213, '350803', 350800, '永定区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1214, '350821', 350800, '长汀县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1215, '350823', 350800, '上杭县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1216, '350824', 350800, '武平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1217, '350825', 350800, '连城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1218, '350881', 350800, '漳平市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1219, '350900', 350000, '宁德市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1220, '350902', 350900, '蕉城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1221, '350921', 350900, '霞浦县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1222, '350922', 350900, '古田县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1223, '350923', 350900, '屏南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1224, '350924', 350900, '寿宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1225, '350925', 350900, '周宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1226, '350926', 350900, '柘荣县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1227, '350981', 350900, '福安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1228, '350982', 350900, '福鼎市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1229, '360000', 0, '江西省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1230, '360100', 360000, '南昌市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1231, '360102', 360100, '东湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1232, '360103', 360100, '西湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1233, '360104', 360100, '青云谱区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1234, '360111', 360100, '青山湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1235, '360112', 360100, '新建区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1236, '360113', 360100, '红谷滩区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1237, '360121', 360100, '南昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1238, '360123', 360100, '安义县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1239, '360124', 360100, '进贤县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1240, '360200', 360000, '景德镇市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1241, '360202', 360200, '昌江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1242, '360203', 360200, '珠山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1243, '360222', 360200, '浮梁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1244, '360281', 360200, '乐平市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1245, '360300', 360000, '萍乡市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1246, '360302', 360300, '安源区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1247, '360313', 360300, '湘东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1248, '360321', 360300, '莲花县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1249, '360322', 360300, '上栗县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1250, '360323', 360300, '芦溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1251, '360400', 360000, '九江市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1252, '360402', 360400, '濂溪区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1253, '360403', 360400, '浔阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1254, '360404', 360400, '柴桑区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1255, '360423', 360400, '武宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1256, '360424', 360400, '修水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1257, '360425', 360400, '永修县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1258, '360426', 360400, '德安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1259, '360428', 360400, '都昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1260, '360429', 360400, '湖口县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1261, '360430', 360400, '彭泽县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1262, '360481', 360400, '瑞昌市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1263, '360482', 360400, '共青城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1264, '360483', 360400, '庐山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1265, '360500', 360000, '新余市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1266, '360502', 360500, '渝水区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1267, '360521', 360500, '分宜县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1268, '360600', 360000, '鹰潭市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1269, '360602', 360600, '月湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1270, '360603', 360600, '余江区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1271, '360681', 360600, '贵溪市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1272, '360700', 360000, '赣州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1273, '360702', 360700, '章贡区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1274, '360703', 360700, '南康区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1275, '360704', 360700, '赣县区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1276, '360722', 360700, '信丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1277, '360723', 360700, '大余县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1278, '360724', 360700, '上犹县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1279, '360725', 360700, '崇义县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1280, '360726', 360700, '安远县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1281, '360727', 360700, '龙南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1282, '360728', 360700, '定南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1283, '360729', 360700, '全南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1284, '360730', 360700, '宁都县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1285, '360731', 360700, '于都县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1286, '360732', 360700, '兴国县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1287, '360733', 360700, '会昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1288, '360734', 360700, '寻乌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1289, '360735', 360700, '石城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1290, '360781', 360700, '瑞金市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1291, '360800', 360000, '吉安市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1292, '360802', 360800, '吉州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1293, '360803', 360800, '青原区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1294, '360821', 360800, '吉安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1295, '360822', 360800, '吉水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1296, '360823', 360800, '峡江县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1297, '360824', 360800, '新干县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1298, '360825', 360800, '永丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1299, '360826', 360800, '泰和县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1300, '360827', 360800, '遂川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1301, '360828', 360800, '万安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1302, '360829', 360800, '安福县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1303, '360830', 360800, '永新县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1304, '360881', 360800, '井冈山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1305, '360900', 360000, '宜春市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1306, '360902', 360900, '袁州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1307, '360921', 360900, '奉新县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1308, '360922', 360900, '万载县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1309, '360923', 360900, '上高县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1310, '360924', 360900, '宜丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1311, '360925', 360900, '靖安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1312, '360926', 360900, '铜鼓县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1313, '360981', 360900, '丰城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1314, '360982', 360900, '樟树市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1315, '360983', 360900, '高安市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1316, '361000', 360000, '抚州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1317, '361002', 361000, '临川区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1318, '361003', 361000, '东乡区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1319, '361021', 361000, '南城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1320, '361022', 361000, '黎川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1321, '361023', 361000, '南丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1322, '361024', 361000, '崇仁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1323, '361025', 361000, '乐安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1324, '361026', 361000, '宜黄县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1325, '361027', 361000, '金溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1326, '361028', 361000, '资溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1327, '361030', 361000, '广昌县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1328, '361100', 360000, '上饶市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1329, '361102', 361100, '信州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1330, '361103', 361100, '广丰区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1331, '361104', 361100, '广信区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1332, '361123', 361100, '玉山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1333, '361124', 361100, '铅山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1334, '361125', 361100, '横峰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1335, '361126', 361100, '弋阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1336, '361127', 361100, '余干县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1337, '361128', 361100, '鄱阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1338, '361129', 361100, '万年县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1339, '361130', 361100, '婺源县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1340, '361181', 361100, '德兴市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1341, '370000', 0, '山东省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1342, '370100', 370000, '济南市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1343, '370102', 370100, '历下区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1344, '370103', 370100, '市中区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1345, '370104', 370100, '槐荫区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1346, '370105', 370100, '天桥区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1347, '370112', 370100, '历城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1348, '370113', 370100, '长清区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1349, '370114', 370100, '章丘区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1350, '370115', 370100, '济阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1351, '370116', 370100, '莱芜区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1352, '370117', 370100, '钢城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1353, '370124', 370100, '平阴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1354, '370126', 370100, '商河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1355, '370200', 370000, '青岛市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1356, '370202', 370200, '市南区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1357, '370203', 370200, '市北区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1358, '370211', 370200, '黄岛区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1359, '370212', 370200, '崂山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1360, '370213', 370200, '李沧区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1361, '370214', 370200, '城阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1362, '370215', 370200, '即墨区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1363, '370281', 370200, '胶州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1364, '370283', 370200, '平度市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1365, '370285', 370200, '莱西市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1366, '370300', 370000, '淄博市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1367, '370302', 370300, '淄川区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1368, '370303', 370300, '张店区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1369, '370304', 370300, '博山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1370, '370305', 370300, '临淄区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1371, '370306', 370300, '周村区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1372, '370321', 370300, '桓台县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1373, '370322', 370300, '高青县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1374, '370323', 370300, '沂源县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1375, '370400', 370000, '枣庄市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1376, '370402', 370400, '市中区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1377, '370403', 370400, '薛城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1378, '370404', 370400, '峄城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1379, '370405', 370400, '台儿庄区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1380, '370406', 370400, '山亭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1381, '370481', 370400, '滕州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1382, '370500', 370000, '东营市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1383, '370502', 370500, '东营区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1384, '370503', 370500, '河口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1385, '370505', 370500, '垦利区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1386, '370522', 370500, '利津县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1387, '370523', 370500, '广饶县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1388, '370600', 370000, '烟台市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1389, '370602', 370600, '芝罘区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1390, '370611', 370600, '福山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1391, '370612', 370600, '牟平区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1392, '370613', 370600, '莱山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1393, '370634', 370600, '长岛县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1394, '370681', 370600, '龙口市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1395, '370682', 370600, '莱阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1396, '370683', 370600, '莱州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1397, '370684', 370600, '蓬莱市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1398, '370685', 370600, '招远市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1399, '370686', 370600, '栖霞市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1400, '370687', 370600, '海阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1401, '370700', 370000, '潍坊市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1402, '370702', 370700, '潍城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1403, '370703', 370700, '寒亭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1404, '370704', 370700, '坊子区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1405, '370705', 370700, '奎文区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1406, '370724', 370700, '临朐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1407, '370725', 370700, '昌乐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1408, '370781', 370700, '青州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1409, '370782', 370700, '诸城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1410, '370783', 370700, '寿光市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1411, '370784', 370700, '安丘市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1412, '370785', 370700, '高密市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1413, '370786', 370700, '昌邑市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1414, '370800', 370000, '济宁市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1415, '370811', 370800, '任城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1416, '370812', 370800, '兖州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1417, '370826', 370800, '微山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1418, '370827', 370800, '鱼台县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1419, '370828', 370800, '金乡县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1420, '370829', 370800, '嘉祥县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1421, '370830', 370800, '汶上县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1422, '370831', 370800, '泗水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1423, '370832', 370800, '梁山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1424, '370881', 370800, '曲阜市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1425, '370883', 370800, '邹城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1426, '370900', 370000, '泰安市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1427, '370902', 370900, '泰山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1428, '370911', 370900, '岱岳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1429, '370921', 370900, '宁阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1430, '370923', 370900, '东平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1431, '370982', 370900, '新泰市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1432, '370983', 370900, '肥城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1433, '371000', 370000, '威海市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1434, '371002', 371000, '环翠区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1435, '371003', 371000, '文登区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1436, '371082', 371000, '荣成市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1437, '371083', 371000, '乳山市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1438, '371100', 370000, '日照市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1439, '371102', 371100, '东港区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1440, '371103', 371100, '岚山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1441, '371121', 371100, '五莲县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1442, '371122', 371100, '莒县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1443, '371300', 370000, '临沂市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1444, '371302', 371300, '兰山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1445, '371311', 371300, '罗庄区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1446, '371312', 371300, '河东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1447, '371321', 371300, '沂南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1448, '371322', 371300, '郯城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1449, '371323', 371300, '沂水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1450, '371324', 371300, '兰陵县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1451, '371325', 371300, '费县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1452, '371326', 371300, '平邑县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1453, '371327', 371300, '莒南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1454, '371328', 371300, '蒙阴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1455, '371329', 371300, '临沭县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1456, '371400', 370000, '德州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1457, '371402', 371400, '德城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1458, '371403', 371400, '陵城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1459, '371422', 371400, '宁津县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1460, '371423', 371400, '庆云县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1461, '371424', 371400, '临邑县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1462, '371425', 371400, '齐河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1463, '371426', 371400, '平原县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1464, '371427', 371400, '夏津县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1465, '371428', 371400, '武城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1466, '371481', 371400, '乐陵市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1467, '371482', 371400, '禹城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1468, '371500', 370000, '聊城市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1469, '371502', 371500, '东昌府区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1470, '371523', 371500, '茌平区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1471, '371521', 371500, '阳谷县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1472, '371522', 371500, '莘县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1473, '371524', 371500, '东阿县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1474, '371525', 371500, '冠县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1475, '371526', 371500, '高唐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1476, '371581', 371500, '临清市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1477, '371600', 370000, '滨州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1478, '371602', 371600, '滨城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1479, '371603', 371600, '沾化区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1480, '371621', 371600, '惠民县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1481, '371622', 371600, '阳信县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1482, '371623', 371600, '无棣县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1483, '371625', 371600, '博兴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1484, '371681', 371600, '邹平市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1485, '371700', 370000, '菏泽市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1486, '371702', 371700, '牡丹区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1487, '371703', 371700, '定陶区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1488, '371721', 371700, '曹县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1489, '371722', 371700, '单县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1490, '371723', 371700, '成武县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1491, '371724', 371700, '巨野县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1492, '371725', 371700, '郓城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1493, '371726', 371700, '鄄城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1494, '371728', 371700, '东明县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1495, '410000', 0, '河南省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1496, '410100', 410000, '郑州市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1497, '410102', 410100, '中原区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1498, '410103', 410100, '二七区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1499, '410104', 410100, '管城回族区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1500, '410105', 410100, '金水区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1501, '410106', 410100, '上街区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1502, '410108', 410100, '惠济区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1503, '410122', 410100, '中牟县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1504, '410181', 410100, '巩义市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1505, '410182', 410100, '荥阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1506, '410183', 410100, '新密市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1507, '410184', 410100, '新郑市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1508, '410185', 410100, '登封市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1509, '410200', 410000, '开封市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1510, '410202', 410200, '龙亭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1511, '410203', 410200, '顺河回族区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1512, '410204', 410200, '鼓楼区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1513, '410205', 410200, '禹王台区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1514, '410212', 410200, '祥符区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1515, '410221', 410200, '杞县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1516, '410222', 410200, '通许县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1517, '410223', 410200, '尉氏县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1518, '410225', 410200, '兰考县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1519, '410300', 410000, '洛阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1520, '410302', 410300, '老城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1521, '410303', 410300, '西工区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1522, '410304', 410300, '瀍河回族区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1523, '410305', 410300, '涧西区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1524, '410306', 410300, '吉利区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1525, '410311', 410300, '洛龙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1526, '410322', 410300, '孟津县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1527, '410323', 410300, '新安县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1528, '410324', 410300, '栾川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1529, '410325', 410300, '嵩县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1530, '410326', 410300, '汝阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1531, '410327', 410300, '宜阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1532, '410328', 410300, '洛宁县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1533, '410329', 410300, '伊川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1534, '410381', 410300, '偃师市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1535, '410400', 410000, '平顶山市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1536, '410402', 410400, '新华区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1537, '410403', 410400, '卫东区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1538, '410404', 410400, '石龙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1539, '410411', 410400, '湛河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1540, '410421', 410400, '宝丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1541, '410422', 410400, '叶县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1542, '410423', 410400, '鲁山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1543, '410425', 410400, '郏县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1544, '410481', 410400, '舞钢市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1545, '410482', 410400, '汝州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1546, '410500', 410000, '安阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1547, '410502', 410500, '文峰区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1548, '410503', 410500, '北关区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1549, '410505', 410500, '殷都区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1550, '410506', 410500, '龙安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1551, '410522', 410500, '安阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1552, '410523', 410500, '汤阴县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1553, '410526', 410500, '滑县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1554, '410527', 410500, '内黄县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1555, '410581', 410500, '林州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1556, '410600', 410000, '鹤壁市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1557, '410602', 410600, '鹤山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1558, '410603', 410600, '山城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1559, '410611', 410600, '淇滨区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1560, '410621', 410600, '浚县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1561, '410622', 410600, '淇县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1562, '410700', 410000, '新乡市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1563, '410702', 410700, '红旗区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1564, '410703', 410700, '卫滨区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1565, '410704', 410700, '凤泉区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1566, '410711', 410700, '牧野区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1567, '410721', 410700, '新乡县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1568, '410724', 410700, '获嘉县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1569, '410725', 410700, '原阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1570, '410726', 410700, '延津县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1571, '410727', 410700, '封丘县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1572, '410781', 410700, '卫辉市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1573, '410782', 410700, '辉县市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1574, '410783', 410700, '长垣市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1575, '410800', 410000, '焦作市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1576, '410802', 410800, '解放区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1577, '410803', 410800, '中站区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1578, '410804', 410800, '马村区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1579, '410811', 410800, '山阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1580, '410821', 410800, '修武县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1581, '410822', 410800, '博爱县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1582, '410823', 410800, '武陟县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1583, '410825', 410800, '温县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1584, '410882', 410800, '沁阳市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1585, '410883', 410800, '孟州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1586, '410900', 410000, '濮阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1587, '410902', 410900, '华龙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1588, '410922', 410900, '清丰县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1589, '410923', 410900, '南乐县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1590, '410926', 410900, '范县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1591, '410927', 410900, '台前县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1592, '410928', 410900, '濮阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1593, '411000', 410000, '许昌市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1594, '411002', 411000, '魏都区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1595, '411003', 411000, '建安区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1596, '411024', 411000, '鄢陵县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1597, '411025', 411000, '襄城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1598, '411081', 411000, '禹州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1599, '411082', 411000, '长葛市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1600, '411100', 410000, '漯河市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1601, '411102', 411100, '源汇区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1602, '411103', 411100, '郾城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1603, '411104', 411100, '召陵区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1604, '411121', 411100, '舞阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1605, '411122', 411100, '临颍县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1606, '411200', 410000, '三门峡市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1607, '411202', 411200, '湖滨区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1608, '411203', 411200, '陕州区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1609, '411221', 411200, '渑池县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1610, '411224', 411200, '卢氏县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1611, '411281', 411200, '义马市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1612, '411282', 411200, '灵宝市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1613, '411300', 410000, '南阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1614, '411302', 411300, '宛城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1615, '411303', 411300, '卧龙区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1616, '411321', 411300, '南召县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1617, '411322', 411300, '方城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1618, '411323', 411300, '西峡县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1619, '411324', 411300, '镇平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1620, '411325', 411300, '内乡县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1621, '411326', 411300, '淅川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1622, '411327', 411300, '社旗县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1623, '411328', 411300, '唐河县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1624, '411329', 411300, '新野县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1625, '411330', 411300, '桐柏县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1626, '411381', 411300, '邓州市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1627, '411400', 410000, '商丘市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1628, '411402', 411400, '梁园区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1629, '411403', 411400, '睢阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1630, '411421', 411400, '民权县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1631, '411422', 411400, '睢县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1632, '411423', 411400, '宁陵县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1633, '411424', 411400, '柘城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1634, '411425', 411400, '虞城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1635, '411426', 411400, '夏邑县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1636, '411481', 411400, '永城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1637, '411500', 410000, '信阳市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1638, '411502', 411500, '浉河区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1639, '411503', 411500, '平桥区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1640, '411521', 411500, '罗山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1641, '411522', 411500, '光山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1642, '411523', 411500, '新县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1643, '411524', 411500, '商城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1644, '411525', 411500, '固始县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1645, '411526', 411500, '潢川县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1646, '411527', 411500, '淮滨县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1647, '411528', 411500, '息县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1648, '411600', 410000, '周口市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1649, '411602', 411600, '川汇区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1650, '411603', 411600, '淮阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1651, '411621', 411600, '扶沟县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1652, '411622', 411600, '西华县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1653, '411623', 411600, '商水县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1654, '411624', 411600, '沈丘县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1655, '411625', 411600, '郸城县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1656, '411627', 411600, '太康县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1657, '411628', 411600, '鹿邑县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1658, '411681', 411600, '项城市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1659, '411700', 410000, '驻马店市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1660, '411702', 411700, '驿城区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1661, '411721', 411700, '西平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1662, '411722', 411700, '上蔡县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1663, '411723', 411700, '平舆县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1664, '411724', 411700, '正阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1665, '411725', 411700, '确山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1666, '411726', 411700, '泌阳县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1667, '411727', 411700, '汝南县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1668, '411728', 411700, '遂平县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1669, '411729', 411700, '新蔡县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1670, '419000', 410000, '省直辖县级行政区划', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1671, '419001', 419000, '济源市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1672, '420000', 0, '湖北省', 1, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1673, '420100', 420000, '武汉市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1674, '420102', 420100, '江岸区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1675, '420103', 420100, '江汉区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1676, '420104', 420100, '硚口区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1677, '420105', 420100, '汉阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1678, '420106', 420100, '武昌区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1679, '420107', 420100, '青山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1680, '420111', 420100, '洪山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1681, '420112', 420100, '东西湖区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1682, '420113', 420100, '汉南区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1683, '420114', 420100, '蔡甸区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1684, '420115', 420100, '江夏区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1685, '420116', 420100, '黄陂区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1686, '420117', 420100, '新洲区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1687, '420200', 420000, '黄石市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1688, '420202', 420200, '黄石港区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1689, '420203', 420200, '西塞山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1690, '420204', 420200, '下陆区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1691, '420205', 420200, '铁山区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1692, '420222', 420200, '阳新县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1693, '420281', 420200, '大冶市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1694, '420300', 420000, '十堰市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1695, '420302', 420300, '茅箭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1696, '420303', 420300, '张湾区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1697, '420304', 420300, '郧阳区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1698, '420322', 420300, '郧西县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1699, '420323', 420300, '竹山县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1700, '420324', 420300, '竹溪县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1701, '420325', 420300, '房县', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1702, '420381', 420300, '丹江口市', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1703, '420500', 420000, '宜昌市', 2, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1704, '420502', 420500, '西陵区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1705, '420503', 420500, '伍家岗区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1706, '420504', 420500, '点军区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1707, '420505', 420500, '猇亭区', 3, '2023-02-01 09:13:02', '2023-02-01 09:13:02', 0);
INSERT INTO `region` VALUES (1708, '420506', 420500, '夷陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1709, '420525', 420500, '远安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1710, '420526', 420500, '兴山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1711, '420527', 420500, '秭归县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1712, '420528', 420500, '长阳土家族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1713, '420529', 420500, '五峰土家族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1714, '420581', 420500, '宜都市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1715, '420582', 420500, '当阳市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1716, '420583', 420500, '枝江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1717, '420600', 420000, '襄阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1718, '420602', 420600, '襄城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1719, '420606', 420600, '樊城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1720, '420607', 420600, '襄州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1721, '420624', 420600, '南漳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1722, '420625', 420600, '谷城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1723, '420626', 420600, '保康县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1724, '420682', 420600, '老河口市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1725, '420683', 420600, '枣阳市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1726, '420684', 420600, '宜城市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1727, '420700', 420000, '鄂州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1728, '420702', 420700, '梁子湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1729, '420703', 420700, '华容区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1730, '420704', 420700, '鄂城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1731, '420800', 420000, '荆门市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1732, '420802', 420800, '东宝区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1733, '420804', 420800, '掇刀区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1734, '420822', 420800, '沙洋县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1735, '420881', 420800, '钟祥市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1736, '420882', 420800, '京山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1737, '420900', 420000, '孝感市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1738, '420902', 420900, '孝南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1739, '420921', 420900, '孝昌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1740, '420922', 420900, '大悟县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1741, '420923', 420900, '云梦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1742, '420981', 420900, '应城市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1743, '420982', 420900, '安陆市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1744, '420984', 420900, '汉川市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1745, '421000', 420000, '荆州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1746, '421002', 421000, '沙市区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1747, '421003', 421000, '荆州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1748, '421022', 421000, '公安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1749, '421023', 421000, '监利县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1750, '421024', 421000, '江陵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1751, '421081', 421000, '石首市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1752, '421083', 421000, '洪湖市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1753, '421087', 421000, '松滋市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1754, '421100', 420000, '黄冈市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1755, '421102', 421100, '黄州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1756, '421121', 421100, '团风县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1757, '421122', 421100, '红安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1758, '421123', 421100, '罗田县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1759, '421124', 421100, '英山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1760, '421125', 421100, '浠水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1761, '421126', 421100, '蕲春县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1762, '421127', 421100, '黄梅县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1763, '421181', 421100, '麻城市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1764, '421182', 421100, '武穴市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1765, '421200', 420000, '咸宁市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1766, '421202', 421200, '咸安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1767, '421221', 421200, '嘉鱼县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1768, '421222', 421200, '通城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1769, '421223', 421200, '崇阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1770, '421224', 421200, '通山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1771, '421281', 421200, '赤壁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1772, '421300', 420000, '随州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1773, '421303', 421300, '曾都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1774, '421321', 421300, '随县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1775, '421381', 421300, '广水市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1776, '422800', 420000, '恩施土家族苗族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1777, '422801', 422800, '恩施市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1778, '422802', 422800, '利川市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1779, '422822', 422800, '建始县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1780, '422823', 422800, '巴东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1781, '422825', 422800, '宣恩县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1782, '422826', 422800, '咸丰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1783, '422827', 422800, '来凤县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1784, '422828', 422800, '鹤峰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1785, '429000', 420000, '省直辖县级行政区划', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1786, '429004', 429000, '仙桃市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1787, '429005', 429000, '潜江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1788, '429006', 429000, '天门市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1789, '429021', 429000, '神农架林区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1790, '430000', 0, '湖南省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1791, '430100', 430000, '长沙市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1792, '430102', 430100, '芙蓉区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1793, '430103', 430100, '天心区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1794, '430104', 430100, '岳麓区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1795, '430105', 430100, '开福区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1796, '430111', 430100, '雨花区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1797, '430112', 430100, '望城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1798, '430121', 430100, '长沙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1799, '430181', 430100, '浏阳市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1800, '430182', 430100, '宁乡市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1801, '430200', 430000, '株洲市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1802, '430202', 430200, '荷塘区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1803, '430203', 430200, '芦淞区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1804, '430204', 430200, '石峰区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1805, '430211', 430200, '天元区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1806, '430212', 430200, '渌口区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1807, '430223', 430200, '攸县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1808, '430224', 430200, '茶陵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1809, '430225', 430200, '炎陵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1810, '430281', 430200, '醴陵市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1811, '430300', 430000, '湘潭市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1812, '430302', 430300, '雨湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1813, '430304', 430300, '岳塘区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1814, '430321', 430300, '湘潭县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1815, '430381', 430300, '湘乡市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1816, '430382', 430300, '韶山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1817, '430400', 430000, '衡阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1818, '430405', 430400, '珠晖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1819, '430406', 430400, '雁峰区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1820, '430407', 430400, '石鼓区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1821, '430408', 430400, '蒸湘区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1822, '430412', 430400, '南岳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1823, '430421', 430400, '衡阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1824, '430422', 430400, '衡南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1825, '430423', 430400, '衡山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1826, '430424', 430400, '衡东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1827, '430426', 430400, '祁东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1828, '430481', 430400, '耒阳市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1829, '430482', 430400, '常宁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1830, '430500', 430000, '邵阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1831, '430502', 430500, '双清区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1832, '430503', 430500, '大祥区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1833, '430511', 430500, '北塔区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1834, '430522', 430500, '新邵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1835, '430523', 430500, '邵阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1836, '430524', 430500, '隆回县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1837, '430525', 430500, '洞口县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1838, '430527', 430500, '绥宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1839, '430528', 430500, '新宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1840, '430529', 430500, '城步苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1841, '430581', 430500, '武冈市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1842, '430582', 430500, '邵东市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1843, '430600', 430000, '岳阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1844, '430602', 430600, '岳阳楼区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1845, '430603', 430600, '云溪区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1846, '430611', 430600, '君山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1847, '430621', 430600, '岳阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1848, '430623', 430600, '华容县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1849, '430624', 430600, '湘阴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1850, '430626', 430600, '平江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1851, '430681', 430600, '汨罗市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1852, '430682', 430600, '临湘市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1853, '430700', 430000, '常德市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1854, '430702', 430700, '武陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1855, '430703', 430700, '鼎城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1856, '430721', 430700, '安乡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1857, '430722', 430700, '汉寿县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1858, '430723', 430700, '澧县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1859, '430724', 430700, '临澧县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1860, '430725', 430700, '桃源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1861, '430726', 430700, '石门县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1862, '430781', 430700, '津市市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1863, '430800', 430000, '张家界市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1864, '430802', 430800, '永定区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1865, '430811', 430800, '武陵源区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1866, '430821', 430800, '慈利县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1867, '430822', 430800, '桑植县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1868, '430900', 430000, '益阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1869, '430902', 430900, '资阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1870, '430903', 430900, '赫山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1871, '430921', 430900, '南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1872, '430922', 430900, '桃江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1873, '430923', 430900, '安化县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1874, '430981', 430900, '沅江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1875, '431000', 430000, '郴州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1876, '431002', 431000, '北湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1877, '431003', 431000, '苏仙区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1878, '431021', 431000, '桂阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1879, '431022', 431000, '宜章县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1880, '431023', 431000, '永兴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1881, '431024', 431000, '嘉禾县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1882, '431025', 431000, '临武县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1883, '431026', 431000, '汝城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1884, '431027', 431000, '桂东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1885, '431028', 431000, '安仁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1886, '431081', 431000, '资兴市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1887, '431100', 430000, '永州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1888, '431102', 431100, '零陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1889, '431103', 431100, '冷水滩区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1890, '431121', 431100, '祁阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1891, '431122', 431100, '东安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1892, '431123', 431100, '双牌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1893, '431124', 431100, '道县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1894, '431125', 431100, '江永县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1895, '431126', 431100, '宁远县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1896, '431127', 431100, '蓝山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1897, '431128', 431100, '新田县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1898, '431129', 431100, '江华瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1899, '431200', 430000, '怀化市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1900, '431202', 431200, '鹤城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1901, '431221', 431200, '中方县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1902, '431222', 431200, '沅陵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1903, '431223', 431200, '辰溪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1904, '431224', 431200, '溆浦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1905, '431225', 431200, '会同县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1906, '431226', 431200, '麻阳苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1907, '431227', 431200, '新晃侗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1908, '431228', 431200, '芷江侗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1909, '431229', 431200, '靖州苗族侗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1910, '431230', 431200, '通道侗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1911, '431281', 431200, '洪江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1912, '431300', 430000, '娄底市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1913, '431302', 431300, '娄星区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1914, '431321', 431300, '双峰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1915, '431322', 431300, '新化县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1916, '431381', 431300, '冷水江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1917, '431382', 431300, '涟源市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1918, '433100', 430000, '湘西土家族苗族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1919, '433101', 433100, '吉首市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1920, '433122', 433100, '泸溪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1921, '433123', 433100, '凤凰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1922, '433124', 433100, '花垣县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1923, '433125', 433100, '保靖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1924, '433126', 433100, '古丈县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1925, '433127', 433100, '永顺县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1926, '433130', 433100, '龙山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1927, '440000', 0, '广东省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1928, '440100', 440000, '广州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1929, '440103', 440100, '荔湾区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1930, '440104', 440100, '越秀区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1931, '440105', 440100, '海珠区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1932, '440106', 440100, '天河区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1933, '440111', 440100, '白云区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1934, '440112', 440100, '黄埔区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1935, '440113', 440100, '番禺区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1936, '440114', 440100, '花都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1937, '440115', 440100, '南沙区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1938, '440117', 440100, '从化区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1939, '440118', 440100, '增城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1940, '440200', 440000, '韶关市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1941, '440203', 440200, '武江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1942, '440204', 440200, '浈江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1943, '440205', 440200, '曲江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1944, '440222', 440200, '始兴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1945, '440224', 440200, '仁化县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1946, '440229', 440200, '翁源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1947, '440232', 440200, '乳源瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1948, '440233', 440200, '新丰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1949, '440281', 440200, '乐昌市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1950, '440282', 440200, '南雄市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1951, '440300', 440000, '深圳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1952, '440303', 440300, '罗湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1953, '440304', 440300, '福田区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1954, '440305', 440300, '南山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1955, '440306', 440300, '宝安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1956, '440307', 440300, '龙岗区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1957, '440308', 440300, '盐田区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1958, '440309', 440300, '龙华区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1959, '440310', 440300, '坪山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1960, '440311', 440300, '光明区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1961, '440400', 440000, '珠海市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1962, '440402', 440400, '香洲区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1963, '440403', 440400, '斗门区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1964, '440404', 440400, '金湾区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1965, '440500', 440000, '汕头市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1966, '440507', 440500, '龙湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1967, '440511', 440500, '金平区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1968, '440512', 440500, '濠江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1969, '440513', 440500, '潮阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1970, '440514', 440500, '潮南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1971, '440515', 440500, '澄海区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1972, '440523', 440500, '南澳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1973, '440600', 440000, '佛山市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1974, '440604', 440600, '禅城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1975, '440605', 440600, '南海区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1976, '440606', 440600, '顺德区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1977, '440607', 440600, '三水区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1978, '440608', 440600, '高明区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1979, '440700', 440000, '江门市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1980, '440703', 440700, '蓬江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1981, '440704', 440700, '江海区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1982, '440705', 440700, '新会区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1983, '440781', 440700, '台山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1984, '440783', 440700, '开平市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1985, '440784', 440700, '鹤山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1986, '440785', 440700, '恩平市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1987, '440800', 440000, '湛江市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1988, '440802', 440800, '赤坎区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1989, '440803', 440800, '霞山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1990, '440804', 440800, '坡头区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1991, '440811', 440800, '麻章区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1992, '440823', 440800, '遂溪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1993, '440825', 440800, '徐闻县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1994, '440881', 440800, '廉江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1995, '440882', 440800, '雷州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1996, '440883', 440800, '吴川市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1997, '440900', 440000, '茂名市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1998, '440902', 440900, '茂南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (1999, '440904', 440900, '电白区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2000, '440981', 440900, '高州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2001, '440982', 440900, '化州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2002, '440983', 440900, '信宜市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2003, '441200', 440000, '肇庆市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2004, '441202', 441200, '端州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2005, '441203', 441200, '鼎湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2006, '441204', 441200, '高要区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2007, '441223', 441200, '广宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2008, '441224', 441200, '怀集县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2009, '441225', 441200, '封开县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2010, '441226', 441200, '德庆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2011, '441284', 441200, '四会市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2012, '441300', 440000, '惠州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2013, '441302', 441300, '惠城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2014, '441303', 441300, '惠阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2015, '441322', 441300, '博罗县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2016, '441323', 441300, '惠东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2017, '441324', 441300, '龙门县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2018, '441400', 440000, '梅州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2019, '441402', 441400, '梅江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2020, '441403', 441400, '梅县区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2021, '441422', 441400, '大埔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2022, '441423', 441400, '丰顺县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2023, '441424', 441400, '五华县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2024, '441426', 441400, '平远县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2025, '441427', 441400, '蕉岭县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2026, '441481', 441400, '兴宁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2027, '441500', 440000, '汕尾市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2028, '441502', 441500, '城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2029, '441521', 441500, '海丰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2030, '441523', 441500, '陆河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2031, '441581', 441500, '陆丰市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2032, '441600', 440000, '河源市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2033, '441602', 441600, '源城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2034, '441621', 441600, '紫金县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2035, '441622', 441600, '龙川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2036, '441623', 441600, '连平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2037, '441624', 441600, '和平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2038, '441625', 441600, '东源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2039, '441700', 440000, '阳江市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2040, '441702', 441700, '江城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2041, '441704', 441700, '阳东区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2042, '441721', 441700, '阳西县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2043, '441781', 441700, '阳春市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2044, '441800', 440000, '清远市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2045, '441802', 441800, '清城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2046, '441803', 441800, '清新区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2047, '441821', 441800, '佛冈县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2048, '441823', 441800, '阳山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2049, '441825', 441800, '连山壮族瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2050, '441826', 441800, '连南瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2051, '441881', 441800, '英德市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2052, '441882', 441800, '连州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2053, '441900', 440000, '东莞市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2054, '441901', 441900, '东城街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2055, '441902', 441900, '南城街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2056, '441903', 441900, '万江街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2057, '441904', 441900, '莞城街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2058, '441905', 441900, '石碣镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2059, '441906', 441900, '石龙镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2060, '441907', 441900, '茶山镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2061, '441908', 441900, '石排镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2062, '441909', 441900, '企石镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2063, '441910', 441900, '横沥镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2064, '441911', 441900, '桥头镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2065, '441912', 441900, '谢岗镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2066, '441913', 441900, '东坑镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2067, '441914', 441900, '常平镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2068, '441915', 441900, '寮步镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2069, '441916', 441900, '樟木头镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2070, '441917', 441900, '大朗镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2071, '441918', 441900, '黄江镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2072, '441919', 441900, '清溪镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2073, '441920', 441900, '塘厦镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2074, '441921', 441900, '凤岗镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2075, '441922', 441900, '大岭山镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2076, '441923', 441900, '长安镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2077, '441924', 441900, '虎门镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2078, '441925', 441900, '厚街镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2079, '441926', 441900, '沙田镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2080, '441927', 441900, '道滘镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2081, '441928', 441900, '洪梅镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2082, '441929', 441900, '麻涌镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2083, '441930', 441900, '望牛墩镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2084, '441931', 441900, '中堂镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2085, '441932', 441900, '高埗镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2086, '441933', 441900, '松山湖管委会', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2087, '441934', 441900, '虎门港管委会', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2088, '441935', 441900, '东莞生态园', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2089, '442000', 440000, '中山市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2090, '442001', 442000, '石岐街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2091, '442002', 442000, '东区街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2092, '442003', 442000, '中山港街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2093, '442004', 442000, '西区街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2094, '442005', 442000, '南区街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2095, '442006', 442000, '五桂山街道', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2096, '442007', 442000, '小榄镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2097, '442008', 442000, '黄圃镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2098, '442009', 442000, '民众镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2099, '442010', 442000, '东凤镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2100, '442011', 442000, '东升镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2101, '442012', 442000, '古镇镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2102, '442013', 442000, '沙溪镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2103, '442014', 442000, '坦洲镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2104, '442015', 442000, '港口镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2105, '442016', 442000, '三角镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2106, '442017', 442000, '横栏镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2107, '442018', 442000, '南头镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2108, '442019', 442000, '阜沙镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2109, '442020', 442000, '南朗镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2110, '442021', 442000, '三乡镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2111, '442022', 442000, '板芙镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2112, '442023', 442000, '大涌镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2113, '442024', 442000, '神湾镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2114, '445100', 440000, '潮州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2115, '445102', 445100, '湘桥区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2116, '445103', 445100, '潮安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2117, '445122', 445100, '饶平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2118, '445200', 440000, '揭阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2119, '445202', 445200, '榕城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2120, '445203', 445200, '揭东区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2121, '445222', 445200, '揭西县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2122, '445224', 445200, '惠来县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2123, '445281', 445200, '普宁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2124, '445300', 440000, '云浮市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2125, '445302', 445300, '云城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2126, '445303', 445300, '云安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2127, '445321', 445300, '新兴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2128, '445322', 445300, '郁南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2129, '445381', 445300, '罗定市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2130, '450000', 0, '广西壮族自治区', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2131, '450100', 450000, '南宁市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2132, '450102', 450100, '兴宁区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2133, '450103', 450100, '青秀区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2134, '450105', 450100, '江南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2135, '450107', 450100, '西乡塘区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2136, '450108', 450100, '良庆区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2137, '450109', 450100, '邕宁区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2138, '450110', 450100, '武鸣区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2139, '450123', 450100, '隆安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2140, '450124', 450100, '马山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2141, '450125', 450100, '上林县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2142, '450126', 450100, '宾阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2143, '450127', 450100, '横县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2144, '450200', 450000, '柳州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2145, '450202', 450200, '城中区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2146, '450203', 450200, '鱼峰区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2147, '450204', 450200, '柳南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2148, '450205', 450200, '柳北区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2149, '450206', 450200, '柳江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2150, '450222', 450200, '柳城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2151, '450223', 450200, '鹿寨县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2152, '450224', 450200, '融安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2153, '450225', 450200, '融水苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2154, '450226', 450200, '三江侗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2155, '450300', 450000, '桂林市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2156, '450302', 450300, '秀峰区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2157, '450303', 450300, '叠彩区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2158, '450304', 450300, '象山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2159, '450305', 450300, '七星区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2160, '450311', 450300, '雁山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2161, '450312', 450300, '临桂区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2162, '450321', 450300, '阳朔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2163, '450323', 450300, '灵川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2164, '450324', 450300, '全州县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2165, '450325', 450300, '兴安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2166, '450326', 450300, '永福县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2167, '450327', 450300, '灌阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2168, '450328', 450300, '龙胜各族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2169, '450329', 450300, '资源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2170, '450330', 450300, '平乐县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2171, '450332', 450300, '恭城瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2172, '450381', 450300, '荔浦市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2173, '450400', 450000, '梧州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2174, '450403', 450400, '万秀区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2175, '450405', 450400, '长洲区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2176, '450406', 450400, '龙圩区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2177, '450421', 450400, '苍梧县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2178, '450422', 450400, '藤县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2179, '450423', 450400, '蒙山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2180, '450481', 450400, '岑溪市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2181, '450500', 450000, '北海市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2182, '450502', 450500, '海城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2183, '450503', 450500, '银海区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2184, '450512', 450500, '铁山港区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2185, '450521', 450500, '合浦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2186, '450600', 450000, '防城港市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2187, '450602', 450600, '港口区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2188, '450603', 450600, '防城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2189, '450621', 450600, '上思县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2190, '450681', 450600, '东兴市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2191, '450700', 450000, '钦州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2192, '450702', 450700, '钦南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2193, '450703', 450700, '钦北区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2194, '450721', 450700, '灵山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2195, '450722', 450700, '浦北县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2196, '450800', 450000, '贵港市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2197, '450802', 450800, '港北区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2198, '450803', 450800, '港南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2199, '450804', 450800, '覃塘区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2200, '450821', 450800, '平南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2201, '450881', 450800, '桂平市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2202, '450900', 450000, '玉林市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2203, '450902', 450900, '玉州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2204, '450903', 450900, '福绵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2205, '450921', 450900, '容县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2206, '450922', 450900, '陆川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2207, '450923', 450900, '博白县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2208, '450924', 450900, '兴业县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2209, '450981', 450900, '北流市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2210, '451000', 450000, '百色市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2211, '451002', 451000, '右江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2212, '451003', 451000, '田阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2213, '451022', 451000, '田东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2214, '451024', 451000, '德保县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2215, '451026', 451000, '那坡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2216, '451027', 451000, '凌云县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2217, '451028', 451000, '乐业县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2218, '451029', 451000, '田林县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2219, '451030', 451000, '西林县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2220, '451031', 451000, '隆林各族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2221, '451081', 451000, '靖西市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2222, '451082', 451000, '平果市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2223, '451100', 450000, '贺州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2224, '451102', 451100, '八步区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2225, '451103', 451100, '平桂区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2226, '451121', 451100, '昭平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2227, '451122', 451100, '钟山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2228, '451123', 451100, '富川瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2229, '451200', 450000, '河池市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2230, '451202', 451200, '金城江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2231, '451203', 451200, '宜州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2232, '451221', 451200, '南丹县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2233, '451222', 451200, '天峨县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2234, '451223', 451200, '凤山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2235, '451224', 451200, '东兰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2236, '451225', 451200, '罗城仫佬族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2237, '451226', 451200, '环江毛南族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2238, '451227', 451200, '巴马瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2239, '451228', 451200, '都安瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2240, '451229', 451200, '大化瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2241, '451300', 450000, '来宾市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2242, '451302', 451300, '兴宾区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2243, '451321', 451300, '忻城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2244, '451322', 451300, '象州县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2245, '451323', 451300, '武宣县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2246, '451324', 451300, '金秀瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2247, '451381', 451300, '合山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2248, '451400', 450000, '崇左市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2249, '451402', 451400, '江州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2250, '451421', 451400, '扶绥县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2251, '451422', 451400, '宁明县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2252, '451423', 451400, '龙州县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2253, '451424', 451400, '大新县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2254, '451425', 451400, '天等县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2255, '451481', 451400, '凭祥市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2256, '460000', 0, '海南省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2257, '460100', 460000, '海口市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2258, '460105', 460100, '秀英区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2259, '460106', 460100, '龙华区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2260, '460107', 460100, '琼山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2261, '460108', 460100, '美兰区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2262, '460200', 460000, '三亚市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2263, '460202', 460200, '海棠区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2264, '460203', 460200, '吉阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2265, '460204', 460200, '天涯区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2266, '460205', 460200, '崖州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2267, '460300', 460000, '三沙市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2268, '460321', 460300, '西沙群岛', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2269, '460322', 460300, '南沙群岛', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2270, '460323', 460300, '中沙群岛的岛礁及其海域', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2271, '460400', 460000, '儋州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2272, '460401', 460400, '那大镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2273, '460402', 460400, '和庆镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2274, '460403', 460400, '南丰镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2275, '460404', 460400, '大成镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2276, '460405', 460400, '雅星镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2277, '460406', 460400, '兰洋镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2278, '460407', 460400, '光村镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2279, '460408', 460400, '木棠镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2280, '460409', 460400, '海头镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2281, '460410', 460400, '峨蔓镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2282, '460412', 460400, '王五镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2283, '460413', 460400, '白马井镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2284, '460414', 460400, '中和镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2285, '460415', 460400, '排浦镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2286, '460416', 460400, '东成镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2287, '460417', 460400, '新州镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2288, '460422', 460400, '洋浦经济开发区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2289, '460423', 460400, '华南热作学院', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2290, '469000', 460000, '省直辖县级行政区划', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2291, '469001', 469000, '五指山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2292, '469002', 469000, '琼海市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2293, '469005', 469000, '文昌市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2294, '469006', 469000, '万宁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2295, '469007', 469000, '东方市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2296, '469021', 469000, '定安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2297, '469022', 469000, '屯昌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2298, '469023', 469000, '澄迈县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2299, '469024', 469000, '临高县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2300, '469025', 469000, '白沙黎族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2301, '469026', 469000, '昌江黎族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2302, '469027', 469000, '乐东黎族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2303, '469028', 469000, '陵水黎族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2304, '469029', 469000, '保亭黎族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2305, '469030', 469000, '琼中黎族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2306, '500000', 0, '重庆市', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2307, '500100', 500000, '重庆市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2308, '500101', 500100, '万州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2309, '500102', 500100, '涪陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2310, '500103', 500100, '渝中区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2311, '500104', 500100, '大渡口区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2312, '500105', 500100, '江北区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2313, '500106', 500100, '沙坪坝区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2314, '500107', 500100, '九龙坡区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2315, '500108', 500100, '南岸区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2316, '500109', 500100, '北碚区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2317, '500110', 500100, '綦江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2318, '500111', 500100, '大足区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2319, '500112', 500100, '渝北区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2320, '500113', 500100, '巴南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2321, '500114', 500100, '黔江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2322, '500115', 500100, '长寿区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2323, '500116', 500100, '江津区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2324, '500117', 500100, '合川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2325, '500118', 500100, '永川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2326, '500119', 500100, '南川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2327, '500120', 500100, '璧山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2328, '500151', 500100, '铜梁区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2329, '500152', 500100, '潼南区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2330, '500153', 500100, '荣昌区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2331, '500154', 500100, '开州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2332, '500155', 500100, '梁平区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2333, '500156', 500100, '武隆区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2334, '500200', 500000, '县', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2335, '500229', 500200, '城口县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2336, '500230', 500200, '丰都县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2337, '500231', 500200, '垫江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2338, '500233', 500200, '忠县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2339, '500235', 500200, '云阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2340, '500236', 500200, '奉节县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2341, '500237', 500200, '巫山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2342, '500238', 500200, '巫溪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2343, '500240', 500200, '石柱土家族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2344, '500241', 500200, '秀山土家族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2345, '500242', 500200, '酉阳土家族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2346, '500243', 500200, '彭水苗族土家族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2347, '510000', 0, '四川省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2348, '510100', 510000, '成都市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2349, '510104', 510100, '锦江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2350, '510105', 510100, '青羊区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2351, '510106', 510100, '金牛区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2352, '510107', 510100, '武侯区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2353, '510108', 510100, '成华区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2354, '510112', 510100, '龙泉驿区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2355, '510113', 510100, '青白江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2356, '510114', 510100, '新都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2357, '510115', 510100, '温江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2358, '510116', 510100, '双流区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2359, '510117', 510100, '郫都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2360, '510121', 510100, '金堂县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2361, '510129', 510100, '大邑县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2362, '510131', 510100, '蒲江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2363, '510132', 510100, '新津县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2364, '510181', 510100, '都江堰市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2365, '510182', 510100, '彭州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2366, '510183', 510100, '邛崃市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2367, '510184', 510100, '崇州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2368, '510185', 510100, '简阳市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2369, '510300', 510000, '自贡市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2370, '510302', 510300, '自流井区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2371, '510303', 510300, '贡井区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2372, '510304', 510300, '大安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2373, '510311', 510300, '沿滩区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2374, '510321', 510300, '荣县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2375, '510322', 510300, '富顺县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2376, '510400', 510000, '攀枝花市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2377, '510402', 510400, '东区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2378, '510403', 510400, '西区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2379, '510411', 510400, '仁和区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2380, '510421', 510400, '米易县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2381, '510422', 510400, '盐边县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2382, '510500', 510000, '泸州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2383, '510502', 510500, '江阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2384, '510503', 510500, '纳溪区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2385, '510504', 510500, '龙马潭区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2386, '510521', 510500, '泸县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2387, '510522', 510500, '合江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2388, '510524', 510500, '叙永县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2389, '510525', 510500, '古蔺县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2390, '510600', 510000, '德阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2391, '510603', 510600, '旌阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2392, '510604', 510600, '罗江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2393, '510623', 510600, '中江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2394, '510681', 510600, '广汉市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2395, '510682', 510600, '什邡市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2396, '510683', 510600, '绵竹市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2397, '510700', 510000, '绵阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2398, '510703', 510700, '涪城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2399, '510704', 510700, '游仙区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2400, '510705', 510700, '安州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2401, '510722', 510700, '三台县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2402, '510723', 510700, '盐亭县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2403, '510725', 510700, '梓潼县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2404, '510726', 510700, '北川羌族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2405, '510727', 510700, '平武县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2406, '510781', 510700, '江油市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2407, '510800', 510000, '广元市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2408, '510802', 510800, '利州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2409, '510811', 510800, '昭化区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2410, '510812', 510800, '朝天区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2411, '510821', 510800, '旺苍县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2412, '510822', 510800, '青川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2413, '510823', 510800, '剑阁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2414, '510824', 510800, '苍溪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2415, '510900', 510000, '遂宁市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2416, '510903', 510900, '船山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2417, '510904', 510900, '安居区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2418, '510921', 510900, '蓬溪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2419, '510923', 510900, '大英县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2420, '510981', 510900, '射洪市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2421, '511000', 510000, '内江市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2422, '511002', 511000, '市中区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2423, '511011', 511000, '东兴区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2424, '511024', 511000, '威远县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2425, '511025', 511000, '资中县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2426, '511083', 511000, '隆昌市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2427, '511100', 510000, '乐山市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2428, '511102', 511100, '市中区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2429, '511111', 511100, '沙湾区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2430, '511112', 511100, '五通桥区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2431, '511113', 511100, '金口河区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2432, '511123', 511100, '犍为县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2433, '511124', 511100, '井研县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2434, '511126', 511100, '夹江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2435, '511129', 511100, '沐川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2436, '511132', 511100, '峨边彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2437, '511133', 511100, '马边彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2438, '511181', 511100, '峨眉山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2439, '511300', 510000, '南充市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2440, '511302', 511300, '顺庆区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2441, '511303', 511300, '高坪区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2442, '511304', 511300, '嘉陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2443, '511321', 511300, '南部县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2444, '511322', 511300, '营山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2445, '511323', 511300, '蓬安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2446, '511324', 511300, '仪陇县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2447, '511325', 511300, '西充县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2448, '511381', 511300, '阆中市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2449, '511400', 510000, '眉山市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2450, '511402', 511400, '东坡区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2451, '511403', 511400, '彭山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2452, '511421', 511400, '仁寿县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2453, '511423', 511400, '洪雅县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2454, '511424', 511400, '丹棱县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2455, '511425', 511400, '青神县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2456, '511500', 510000, '宜宾市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2457, '511502', 511500, '翠屏区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2458, '511503', 511500, '南溪区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2459, '511504', 511500, '叙州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2460, '511523', 511500, '江安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2461, '511524', 511500, '长宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2462, '511525', 511500, '高县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2463, '511526', 511500, '珙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2464, '511527', 511500, '筠连县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2465, '511528', 511500, '兴文县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2466, '511529', 511500, '屏山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2467, '511600', 510000, '广安市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2468, '511602', 511600, '广安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2469, '511603', 511600, '前锋区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2470, '511621', 511600, '岳池县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2471, '511622', 511600, '武胜县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2472, '511623', 511600, '邻水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2473, '511681', 511600, '华蓥市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2474, '511700', 510000, '达州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2475, '511702', 511700, '通川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2476, '511703', 511700, '达川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2477, '511722', 511700, '宣汉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2478, '511723', 511700, '开江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2479, '511724', 511700, '大竹县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2480, '511725', 511700, '渠县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2481, '511781', 511700, '万源市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2482, '511800', 510000, '雅安市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2483, '511802', 511800, '雨城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2484, '511803', 511800, '名山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2485, '511822', 511800, '荥经县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2486, '511823', 511800, '汉源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2487, '511824', 511800, '石棉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2488, '511825', 511800, '天全县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2489, '511826', 511800, '芦山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2490, '511827', 511800, '宝兴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2491, '511900', 510000, '巴中市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2492, '511902', 511900, '巴州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2493, '511903', 511900, '恩阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2494, '511921', 511900, '通江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2495, '511922', 511900, '南江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2496, '511923', 511900, '平昌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2497, '512000', 510000, '资阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2498, '512002', 512000, '雁江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2499, '512021', 512000, '安岳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2500, '512022', 512000, '乐至县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2501, '513200', 510000, '阿坝藏族羌族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2502, '513201', 513200, '马尔康市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2503, '513221', 513200, '汶川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2504, '513222', 513200, '理县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2505, '513223', 513200, '茂县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2506, '513224', 513200, '松潘县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2507, '513225', 513200, '九寨沟县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2508, '513226', 513200, '金川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2509, '513227', 513200, '小金县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2510, '513228', 513200, '黑水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2511, '513230', 513200, '壤塘县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2512, '513231', 513200, '阿坝县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2513, '513232', 513200, '若尔盖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2514, '513233', 513200, '红原县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2515, '513300', 510000, '甘孜藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2516, '513301', 513300, '康定市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2517, '513322', 513300, '泸定县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2518, '513323', 513300, '丹巴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2519, '513324', 513300, '九龙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2520, '513325', 513300, '雅江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2521, '513326', 513300, '道孚县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2522, '513327', 513300, '炉霍县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2523, '513328', 513300, '甘孜县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2524, '513329', 513300, '新龙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2525, '513330', 513300, '德格县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2526, '513331', 513300, '白玉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2527, '513332', 513300, '石渠县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2528, '513333', 513300, '色达县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2529, '513334', 513300, '理塘县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2530, '513335', 513300, '巴塘县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2531, '513336', 513300, '乡城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2532, '513337', 513300, '稻城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2533, '513338', 513300, '得荣县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2534, '513400', 510000, '凉山彝族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2535, '513401', 513400, '西昌市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2536, '513422', 513400, '木里藏族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2537, '513423', 513400, '盐源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2538, '513424', 513400, '德昌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2539, '513425', 513400, '会理县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2540, '513426', 513400, '会东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2541, '513427', 513400, '宁南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2542, '513428', 513400, '普格县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2543, '513429', 513400, '布拖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2544, '513430', 513400, '金阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2545, '513431', 513400, '昭觉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2546, '513432', 513400, '喜德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2547, '513433', 513400, '冕宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2548, '513434', 513400, '越西县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2549, '513435', 513400, '甘洛县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2550, '513436', 513400, '美姑县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2551, '513437', 513400, '雷波县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2552, '520000', 0, '贵州省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2553, '520100', 520000, '贵阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2554, '520102', 520100, '南明区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2555, '520103', 520100, '云岩区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2556, '520111', 520100, '花溪区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2557, '520112', 520100, '乌当区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2558, '520113', 520100, '白云区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2559, '520115', 520100, '观山湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2560, '520121', 520100, '开阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2561, '520122', 520100, '息烽县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2562, '520123', 520100, '修文县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2563, '520181', 520100, '清镇市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2564, '520200', 520000, '六盘水市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2565, '520201', 520200, '钟山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2566, '520203', 520200, '六枝特区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2567, '520221', 520200, '水城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2568, '520281', 520200, '盘州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2569, '520300', 520000, '遵义市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2570, '520302', 520300, '红花岗区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2571, '520303', 520300, '汇川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2572, '520304', 520300, '播州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2573, '520322', 520300, '桐梓县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2574, '520323', 520300, '绥阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2575, '520324', 520300, '正安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2576, '520325', 520300, '道真仡佬族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2577, '520326', 520300, '务川仡佬族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2578, '520327', 520300, '凤冈县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2579, '520328', 520300, '湄潭县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2580, '520329', 520300, '余庆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2581, '520330', 520300, '习水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2582, '520381', 520300, '赤水市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2583, '520382', 520300, '仁怀市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2584, '520400', 520000, '安顺市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2585, '520402', 520400, '西秀区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2586, '520403', 520400, '平坝区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2587, '520422', 520400, '普定县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2588, '520423', 520400, '镇宁布依族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2589, '520424', 520400, '关岭布依族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2590, '520425', 520400, '紫云苗族布依族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2591, '520500', 520000, '毕节市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2592, '520502', 520500, '七星关区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2593, '520521', 520500, '大方县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2594, '520522', 520500, '黔西县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2595, '520523', 520500, '金沙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2596, '520524', 520500, '织金县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2597, '520525', 520500, '纳雍县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2598, '520526', 520500, '威宁彝族回族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2599, '520527', 520500, '赫章县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2600, '520600', 520000, '铜仁市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2601, '520602', 520600, '碧江区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2602, '520603', 520600, '万山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2603, '520621', 520600, '江口县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2604, '520622', 520600, '玉屏侗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2605, '520623', 520600, '石阡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2606, '520624', 520600, '思南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2607, '520625', 520600, '印江土家族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2608, '520626', 520600, '德江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2609, '520627', 520600, '沿河土家族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2610, '520628', 520600, '松桃苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2611, '522300', 520000, '黔西南布依族苗族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2612, '522301', 522300, '兴义市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2613, '522302', 522300, '兴仁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2614, '522323', 522300, '普安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2615, '522324', 522300, '晴隆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2616, '522325', 522300, '贞丰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2617, '522326', 522300, '望谟县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2618, '522327', 522300, '册亨县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2619, '522328', 522300, '安龙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2620, '522600', 520000, '黔东南苗族侗族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2621, '522601', 522600, '凯里市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2622, '522622', 522600, '黄平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2623, '522623', 522600, '施秉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2624, '522624', 522600, '三穗县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2625, '522625', 522600, '镇远县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2626, '522626', 522600, '岑巩县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2627, '522627', 522600, '天柱县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2628, '522628', 522600, '锦屏县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2629, '522629', 522600, '剑河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2630, '522630', 522600, '台江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2631, '522631', 522600, '黎平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2632, '522632', 522600, '榕江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2633, '522633', 522600, '从江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2634, '522634', 522600, '雷山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2635, '522635', 522600, '麻江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2636, '522636', 522600, '丹寨县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2637, '522700', 520000, '黔南布依族苗族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2638, '522701', 522700, '都匀市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2639, '522702', 522700, '福泉市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2640, '522722', 522700, '荔波县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2641, '522723', 522700, '贵定县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2642, '522725', 522700, '瓮安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2643, '522726', 522700, '独山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2644, '522727', 522700, '平塘县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2645, '522728', 522700, '罗甸县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2646, '522729', 522700, '长顺县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2647, '522730', 522700, '龙里县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2648, '522731', 522700, '惠水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2649, '522732', 522700, '三都水族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2650, '530000', 0, '云南省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2651, '530100', 530000, '昆明市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2652, '530102', 530100, '五华区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2653, '530103', 530100, '盘龙区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2654, '530111', 530100, '官渡区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2655, '530112', 530100, '西山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2656, '530113', 530100, '东川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2657, '530114', 530100, '呈贡区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2658, '530115', 530100, '晋宁区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2659, '530124', 530100, '富民县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2660, '530125', 530100, '宜良县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2661, '530126', 530100, '石林彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2662, '530127', 530100, '嵩明县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2663, '530128', 530100, '禄劝彝族苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2664, '530129', 530100, '寻甸回族彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2665, '530181', 530100, '安宁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2666, '530300', 530000, '曲靖市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2667, '530302', 530300, '麒麟区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2668, '530303', 530300, '沾益区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2669, '530304', 530300, '马龙区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2670, '530322', 530300, '陆良县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2671, '530323', 530300, '师宗县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2672, '530324', 530300, '罗平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2673, '530325', 530300, '富源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2674, '530326', 530300, '会泽县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2675, '530381', 530300, '宣威市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2676, '530400', 530000, '玉溪市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2677, '530402', 530400, '红塔区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2678, '530403', 530400, '江川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2679, '530423', 530400, '通海县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2680, '530424', 530400, '华宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2681, '530425', 530400, '易门县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2682, '530426', 530400, '峨山彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2683, '530427', 530400, '新平彝族傣族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2684, '530428', 530400, '元江哈尼族彝族傣族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2685, '530481', 530400, '澄江市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2686, '530500', 530000, '保山市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2687, '530502', 530500, '隆阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2688, '530521', 530500, '施甸县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2689, '530523', 530500, '龙陵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2690, '530524', 530500, '昌宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2691, '530581', 530500, '腾冲市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2692, '530600', 530000, '昭通市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2693, '530602', 530600, '昭阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2694, '530621', 530600, '鲁甸县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2695, '530622', 530600, '巧家县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2696, '530623', 530600, '盐津县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2697, '530624', 530600, '大关县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2698, '530625', 530600, '永善县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2699, '530626', 530600, '绥江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2700, '530627', 530600, '镇雄县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2701, '530628', 530600, '彝良县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2702, '530629', 530600, '威信县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2703, '530681', 530600, '水富市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2704, '530700', 530000, '丽江市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2705, '530702', 530700, '古城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2706, '530721', 530700, '玉龙纳西族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2707, '530722', 530700, '永胜县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2708, '530723', 530700, '华坪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2709, '530724', 530700, '宁蒗彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2710, '530800', 530000, '普洱市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2711, '530802', 530800, '思茅区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2712, '530821', 530800, '宁洱哈尼族彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2713, '530822', 530800, '墨江哈尼族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2714, '530823', 530800, '景东彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2715, '530824', 530800, '景谷傣族彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2716, '530825', 530800, '镇沅彝族哈尼族拉祜族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2717, '530826', 530800, '江城哈尼族彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2718, '530827', 530800, '孟连傣族拉祜族佤族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2719, '530828', 530800, '澜沧拉祜族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2720, '530829', 530800, '西盟佤族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2721, '530900', 530000, '临沧市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2722, '530902', 530900, '临翔区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2723, '530921', 530900, '凤庆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2724, '530922', 530900, '云县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2725, '530923', 530900, '永德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2726, '530924', 530900, '镇康县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2727, '530925', 530900, '双江拉祜族佤族布朗族傣族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2728, '530926', 530900, '耿马傣族佤族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2729, '530927', 530900, '沧源佤族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2730, '532300', 530000, '楚雄彝族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2731, '532301', 532300, '楚雄市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2732, '532322', 532300, '双柏县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2733, '532323', 532300, '牟定县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2734, '532324', 532300, '南华县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2735, '532325', 532300, '姚安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2736, '532326', 532300, '大姚县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2737, '532327', 532300, '永仁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2738, '532328', 532300, '元谋县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2739, '532329', 532300, '武定县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2740, '532331', 532300, '禄丰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2741, '532500', 530000, '红河哈尼族彝族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2742, '532501', 532500, '个旧市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2743, '532502', 532500, '开远市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2744, '532503', 532500, '蒙自市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2745, '532504', 532500, '弥勒市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2746, '532523', 532500, '屏边苗族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2747, '532524', 532500, '建水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2748, '532525', 532500, '石屏县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2749, '532527', 532500, '泸西县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2750, '532528', 532500, '元阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2751, '532529', 532500, '红河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2752, '532530', 532500, '金平苗族瑶族傣族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2753, '532531', 532500, '绿春县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2754, '532532', 532500, '河口瑶族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2755, '532600', 530000, '文山壮族苗族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2756, '532601', 532600, '文山市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2757, '532622', 532600, '砚山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2758, '532623', 532600, '西畴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2759, '532624', 532600, '麻栗坡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2760, '532625', 532600, '马关县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2761, '532626', 532600, '丘北县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2762, '532627', 532600, '广南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2763, '532628', 532600, '富宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2764, '532800', 530000, '西双版纳傣族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2765, '532801', 532800, '景洪市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2766, '532822', 532800, '勐海县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2767, '532823', 532800, '勐腊县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2768, '532900', 530000, '大理白族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2769, '532901', 532900, '大理市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2770, '532922', 532900, '漾濞彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2771, '532923', 532900, '祥云县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2772, '532924', 532900, '宾川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2773, '532925', 532900, '弥渡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2774, '532926', 532900, '南涧彝族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2775, '532927', 532900, '巍山彝族回族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2776, '532928', 532900, '永平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2777, '532929', 532900, '云龙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2778, '532930', 532900, '洱源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2779, '532931', 532900, '剑川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2780, '532932', 532900, '鹤庆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2781, '533100', 530000, '德宏傣族景颇族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2782, '533102', 533100, '瑞丽市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2783, '533103', 533100, '芒市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2784, '533122', 533100, '梁河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2785, '533123', 533100, '盈江县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2786, '533124', 533100, '陇川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2787, '533300', 530000, '怒江傈僳族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2788, '533301', 533300, '泸水市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2789, '533323', 533300, '福贡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2790, '533324', 533300, '贡山独龙族怒族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2791, '533325', 533300, '兰坪白族普米族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2792, '533400', 530000, '迪庆藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2793, '533401', 533400, '香格里拉市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2794, '533422', 533400, '德钦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2795, '533423', 533400, '维西傈僳族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2796, '540000', 0, '西藏自治区', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2797, '540100', 540000, '拉萨市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2798, '540102', 540100, '城关区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2799, '540103', 540100, '堆龙德庆区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2800, '540104', 540100, '达孜区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2801, '540121', 540100, '林周县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2802, '540122', 540100, '当雄县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2803, '540123', 540100, '尼木县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2804, '540124', 540100, '曲水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2805, '540127', 540100, '墨竹工卡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2806, '540200', 540000, '日喀则市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2807, '540202', 540200, '桑珠孜区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2808, '540221', 540200, '南木林县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2809, '540222', 540200, '江孜县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2810, '540223', 540200, '定日县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2811, '540224', 540200, '萨迦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2812, '540225', 540200, '拉孜县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2813, '540226', 540200, '昂仁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2814, '540227', 540200, '谢通门县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2815, '540228', 540200, '白朗县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2816, '540229', 540200, '仁布县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2817, '540230', 540200, '康马县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2818, '540231', 540200, '定结县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2819, '540232', 540200, '仲巴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2820, '540233', 540200, '亚东县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2821, '540234', 540200, '吉隆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2822, '540235', 540200, '聂拉木县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2823, '540236', 540200, '萨嘎县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2824, '540237', 540200, '岗巴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2825, '540300', 540000, '昌都市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2826, '540302', 540300, '卡若区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2827, '540321', 540300, '江达县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2828, '540322', 540300, '贡觉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2829, '540323', 540300, '类乌齐县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2830, '540324', 540300, '丁青县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2831, '540325', 540300, '察雅县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2832, '540326', 540300, '八宿县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2833, '540327', 540300, '左贡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2834, '540328', 540300, '芒康县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2835, '540329', 540300, '洛隆县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2836, '540330', 540300, '边坝县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2837, '540400', 540000, '林芝市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2838, '540402', 540400, '巴宜区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2839, '540421', 540400, '工布江达县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2840, '540422', 540400, '米林县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2841, '540423', 540400, '墨脱县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2842, '540424', 540400, '波密县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2843, '540425', 540400, '察隅县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2844, '540426', 540400, '朗县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2845, '540500', 540000, '山南市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2846, '540502', 540500, '乃东区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2847, '540521', 540500, '扎囊县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2848, '540522', 540500, '贡嘎县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2849, '540523', 540500, '桑日县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2850, '540524', 540500, '琼结县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2851, '540525', 540500, '曲松县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2852, '540526', 540500, '措美县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2853, '540527', 540500, '洛扎县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2854, '540528', 540500, '加查县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2855, '540529', 540500, '隆子县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2856, '540530', 540500, '错那县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2857, '540531', 540500, '浪卡子县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2858, '540600', 540000, '那曲市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2859, '540602', 540600, '色尼区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2860, '540621', 540600, '嘉黎县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2861, '540622', 540600, '比如县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2862, '540623', 540600, '聂荣县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2863, '540624', 540600, '安多县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2864, '540625', 540600, '申扎县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2865, '540626', 540600, '索县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2866, '540627', 540600, '班戈县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2867, '540628', 540600, '巴青县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2868, '540629', 540600, '尼玛县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2869, '540630', 540600, '双湖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2870, '542500', 540000, '阿里地区', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2871, '542521', 542500, '普兰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2872, '542522', 542500, '札达县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2873, '542523', 542500, '噶尔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2874, '542524', 542500, '日土县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2875, '542525', 542500, '革吉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2876, '542526', 542500, '改则县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2877, '542527', 542500, '措勤县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2878, '610000', 0, '陕西省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2879, '610100', 610000, '西安市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2880, '610102', 610100, '新城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2881, '610103', 610100, '碑林区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2882, '610104', 610100, '莲湖区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2883, '610111', 610100, '灞桥区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2884, '610112', 610100, '未央区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2885, '610113', 610100, '雁塔区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2886, '610114', 610100, '阎良区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2887, '610115', 610100, '临潼区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2888, '610116', 610100, '长安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2889, '610117', 610100, '高陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2890, '610118', 610100, '鄠邑区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2891, '610122', 610100, '蓝田县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2892, '610124', 610100, '周至县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2893, '610200', 610000, '铜川市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2894, '610202', 610200, '王益区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2895, '610203', 610200, '印台区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2896, '610204', 610200, '耀州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2897, '610222', 610200, '宜君县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2898, '610300', 610000, '宝鸡市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2899, '610302', 610300, '渭滨区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2900, '610303', 610300, '金台区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2901, '610304', 610300, '陈仓区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2902, '610322', 610300, '凤翔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2903, '610323', 610300, '岐山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2904, '610324', 610300, '扶风县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2905, '610326', 610300, '眉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2906, '610327', 610300, '陇县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2907, '610328', 610300, '千阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2908, '610329', 610300, '麟游县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2909, '610330', 610300, '凤县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2910, '610331', 610300, '太白县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2911, '610400', 610000, '咸阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2912, '610402', 610400, '秦都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2913, '610403', 610400, '杨陵区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2914, '610404', 610400, '渭城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2915, '610422', 610400, '三原县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2916, '610423', 610400, '泾阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2917, '610424', 610400, '乾县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2918, '610425', 610400, '礼泉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2919, '610426', 610400, '永寿县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2920, '610482', 610400, '彬州市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2921, '610428', 610400, '长武县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2922, '610429', 610400, '旬邑县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2923, '610430', 610400, '淳化县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2924, '610431', 610400, '武功县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2925, '610481', 610400, '兴平市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2926, '610500', 610000, '渭南市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2927, '610502', 610500, '临渭区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2928, '610503', 610500, '华州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2929, '610522', 610500, '潼关县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2930, '610523', 610500, '大荔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2931, '610524', 610500, '合阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2932, '610525', 610500, '澄城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2933, '610526', 610500, '蒲城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2934, '610527', 610500, '白水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2935, '610528', 610500, '富平县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2936, '610581', 610500, '韩城市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2937, '610582', 610500, '华阴市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2938, '610600', 610000, '延安市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2939, '610602', 610600, '宝塔区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2940, '610603', 610600, '安塞区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2941, '610621', 610600, '延长县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2942, '610622', 610600, '延川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2943, '610625', 610600, '志丹县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2944, '610626', 610600, '吴起县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2945, '610627', 610600, '甘泉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2946, '610628', 610600, '富县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2947, '610629', 610600, '洛川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2948, '610630', 610600, '宜川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2949, '610631', 610600, '黄龙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2950, '610632', 610600, '黄陵县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2951, '610681', 610600, '子长市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2952, '610700', 610000, '汉中市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2953, '610702', 610700, '汉台区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2954, '610703', 610700, '南郑区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2955, '610722', 610700, '城固县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2956, '610723', 610700, '洋县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2957, '610724', 610700, '西乡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2958, '610725', 610700, '勉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2959, '610726', 610700, '宁强县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2960, '610727', 610700, '略阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2961, '610728', 610700, '镇巴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2962, '610729', 610700, '留坝县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2963, '610730', 610700, '佛坪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2964, '610800', 610000, '榆林市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2965, '610802', 610800, '榆阳区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2966, '610803', 610800, '横山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2967, '610822', 610800, '府谷县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2968, '610824', 610800, '靖边县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2969, '610825', 610800, '定边县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2970, '610826', 610800, '绥德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2971, '610827', 610800, '米脂县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2972, '610828', 610800, '佳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2973, '610829', 610800, '吴堡县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2974, '610830', 610800, '清涧县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2975, '610831', 610800, '子洲县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2976, '610881', 610800, '神木市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2977, '610900', 610000, '安康市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2978, '610902', 610900, '汉滨区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2979, '610921', 610900, '汉阴县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2980, '610922', 610900, '石泉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2981, '610923', 610900, '宁陕县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2982, '610924', 610900, '紫阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2983, '610925', 610900, '岚皋县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2984, '610926', 610900, '平利县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2985, '610927', 610900, '镇坪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2986, '610928', 610900, '旬阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2987, '610929', 610900, '白河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2988, '611000', 610000, '商洛市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2989, '611002', 611000, '商州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2990, '611021', 611000, '洛南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2991, '611022', 611000, '丹凤县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2992, '611023', 611000, '商南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2993, '611024', 611000, '山阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2994, '611025', 611000, '镇安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2995, '611026', 611000, '柞水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2996, '620000', 0, '甘肃省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2997, '620100', 620000, '兰州市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2998, '620102', 620100, '城关区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (2999, '620103', 620100, '七里河区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3000, '620104', 620100, '西固区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3001, '620105', 620100, '安宁区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3002, '620111', 620100, '红古区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3003, '620121', 620100, '永登县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3004, '620122', 620100, '皋兰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3005, '620123', 620100, '榆中县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3006, '620200', 620000, '嘉峪关市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3007, '620201', 620200, '雄关区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3008, '620202', 620200, '镜铁区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3009, '620203', 620200, '长城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3010, '620204', 620200, '新城镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3011, '620205', 620200, '峪泉镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3012, '620206', 620200, '文殊镇', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3013, '620300', 620000, '金昌市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3014, '620302', 620300, '金川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3015, '620321', 620300, '永昌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3016, '620400', 620000, '白银市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3017, '620402', 620400, '白银区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3018, '620403', 620400, '平川区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3019, '620421', 620400, '靖远县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3020, '620422', 620400, '会宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3021, '620423', 620400, '景泰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3022, '620500', 620000, '天水市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3023, '620502', 620500, '秦州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3024, '620503', 620500, '麦积区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3025, '620521', 620500, '清水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3026, '620522', 620500, '秦安县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3027, '620523', 620500, '甘谷县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3028, '620524', 620500, '武山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3029, '620525', 620500, '张家川回族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3030, '620600', 620000, '武威市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3031, '620602', 620600, '凉州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3032, '620621', 620600, '民勤县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3033, '620622', 620600, '古浪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3034, '620623', 620600, '天祝藏族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3035, '620700', 620000, '张掖市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3036, '620702', 620700, '甘州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3037, '620721', 620700, '肃南裕固族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3038, '620722', 620700, '民乐县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3039, '620723', 620700, '临泽县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3040, '620724', 620700, '高台县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3041, '620725', 620700, '山丹县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3042, '620800', 620000, '平凉市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3043, '620802', 620800, '崆峒区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3044, '620821', 620800, '泾川县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3045, '620822', 620800, '灵台县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3046, '620823', 620800, '崇信县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3047, '620825', 620800, '庄浪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3048, '620826', 620800, '静宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3049, '620881', 620800, '华亭市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3050, '620900', 620000, '酒泉市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3051, '620902', 620900, '肃州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3052, '620921', 620900, '金塔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3053, '620922', 620900, '瓜州县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3054, '620923', 620900, '肃北蒙古族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3055, '620924', 620900, '阿克塞哈萨克族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3056, '620981', 620900, '玉门市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3057, '620982', 620900, '敦煌市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3058, '621000', 620000, '庆阳市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3059, '621002', 621000, '西峰区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3060, '621021', 621000, '庆城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3061, '621022', 621000, '环县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3062, '621023', 621000, '华池县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3063, '621024', 621000, '合水县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3064, '621025', 621000, '正宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3065, '621026', 621000, '宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3066, '621027', 621000, '镇原县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3067, '621100', 620000, '定西市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3068, '621102', 621100, '安定区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3069, '621121', 621100, '通渭县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3070, '621122', 621100, '陇西县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3071, '621123', 621100, '渭源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3072, '621124', 621100, '临洮县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3073, '621125', 621100, '漳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3074, '621126', 621100, '岷县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3075, '621200', 620000, '陇南市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3076, '621202', 621200, '武都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3077, '621221', 621200, '成县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3078, '621222', 621200, '文县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3079, '621223', 621200, '宕昌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3080, '621224', 621200, '康县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3081, '621225', 621200, '西和县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3082, '621226', 621200, '礼县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3083, '621227', 621200, '徽县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3084, '621228', 621200, '两当县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3085, '622900', 620000, '临夏回族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3086, '622901', 622900, '临夏市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3087, '622921', 622900, '临夏县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3088, '622922', 622900, '康乐县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3089, '622923', 622900, '永靖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3090, '622924', 622900, '广河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3091, '622925', 622900, '和政县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3092, '622926', 622900, '东乡族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3093, '622927', 622900, '积石山保安族东乡族撒拉族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3094, '623000', 620000, '甘南藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3095, '623001', 623000, '合作市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3096, '623021', 623000, '临潭县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3097, '623022', 623000, '卓尼县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3098, '623023', 623000, '舟曲县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3099, '623024', 623000, '迭部县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3100, '623025', 623000, '玛曲县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3101, '623026', 623000, '碌曲县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3102, '623027', 623000, '夏河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3103, '630000', 0, '青海省', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3104, '630100', 630000, '西宁市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3105, '630102', 630100, '城东区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3106, '630103', 630100, '城中区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3107, '630104', 630100, '城西区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3108, '630105', 630100, '城北区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3109, '630106', 630100, '湟中区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3110, '630121', 630100, '大通回族土族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3111, '630123', 630100, '湟源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3112, '630200', 630000, '海东市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3113, '630202', 630200, '乐都区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3114, '630203', 630200, '平安区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3115, '630222', 630200, '民和回族土族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3116, '630223', 630200, '互助土族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3117, '630224', 630200, '化隆回族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3118, '630225', 630200, '循化撒拉族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3119, '632200', 630000, '海北藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3120, '632221', 632200, '门源回族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3121, '632222', 632200, '祁连县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3122, '632223', 632200, '海晏县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3123, '632224', 632200, '刚察县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3124, '632300', 630000, '黄南藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3125, '632321', 632300, '同仁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3126, '632322', 632300, '尖扎县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3127, '632323', 632300, '泽库县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3128, '632324', 632300, '河南蒙古族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3129, '632500', 630000, '海南藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3130, '632521', 632500, '共和县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3131, '632522', 632500, '同德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3132, '632523', 632500, '贵德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3133, '632524', 632500, '兴海县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3134, '632525', 632500, '贵南县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3135, '632600', 630000, '果洛藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3136, '632621', 632600, '玛沁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3137, '632622', 632600, '班玛县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3138, '632623', 632600, '甘德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3139, '632624', 632600, '达日县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3140, '632625', 632600, '久治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3141, '632626', 632600, '玛多县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3142, '632700', 630000, '玉树藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3143, '632701', 632700, '玉树市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3144, '632722', 632700, '杂多县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3145, '632723', 632700, '称多县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3146, '632724', 632700, '治多县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3147, '632725', 632700, '囊谦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3148, '632726', 632700, '曲麻莱县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3149, '632800', 630000, '海西蒙古族藏族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3150, '632801', 632800, '格尔木市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3151, '632802', 632800, '德令哈市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3152, '632803', 632800, '茫崖市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3153, '632821', 632800, '乌兰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3154, '632822', 632800, '都兰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3155, '632823', 632800, '天峻县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3156, '632825', 632800, '大柴旦行政委员会', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3157, '640000', 0, '宁夏回族自治区', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3158, '640100', 640000, '银川市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3159, '640104', 640100, '兴庆区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3160, '640105', 640100, '西夏区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3161, '640106', 640100, '金凤区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3162, '640121', 640100, '永宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3163, '640122', 640100, '贺兰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3164, '640181', 640100, '灵武市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3165, '640200', 640000, '石嘴山市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3166, '640202', 640200, '大武口区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3167, '640205', 640200, '惠农区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3168, '640221', 640200, '平罗县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3169, '640300', 640000, '吴忠市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3170, '640302', 640300, '利通区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3171, '640303', 640300, '红寺堡区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3172, '640323', 640300, '盐池县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3173, '640324', 640300, '同心县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3174, '640381', 640300, '青铜峡市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3175, '640400', 640000, '固原市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3176, '640402', 640400, '原州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3177, '640422', 640400, '西吉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3178, '640423', 640400, '隆德县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3179, '640424', 640400, '泾源县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3180, '640425', 640400, '彭阳县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3181, '640500', 640000, '中卫市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3182, '640502', 640500, '沙坡头区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3183, '640521', 640500, '中宁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3184, '640522', 640500, '海原县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3185, '650000', 0, '新疆维吾尔自治区', 1, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3186, '650100', 650000, '乌鲁木齐市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3187, '650102', 650100, '天山区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3188, '650103', 650100, '沙依巴克区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3189, '650104', 650100, '新市区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3190, '650105', 650100, '水磨沟区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3191, '650106', 650100, '头屯河区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3192, '650107', 650100, '达坂城区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3193, '650109', 650100, '米东区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3194, '650121', 650100, '乌鲁木齐县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3195, '650200', 650000, '克拉玛依市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3196, '650202', 650200, '独山子区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3197, '650203', 650200, '克拉玛依区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3198, '650204', 650200, '白碱滩区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3199, '650205', 650200, '乌尔禾区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3200, '650400', 650000, '吐鲁番市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3201, '650402', 650400, '高昌区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3202, '650421', 650400, '鄯善县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3203, '650422', 650400, '托克逊县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3204, '650500', 650000, '哈密市', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3205, '650502', 650500, '伊州区', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3206, '650521', 650500, '巴里坤哈萨克自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3207, '650522', 650500, '伊吾县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3208, '652300', 650000, '昌吉回族自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3209, '652301', 652300, '昌吉市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3210, '652302', 652300, '阜康市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3211, '652323', 652300, '呼图壁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3212, '652324', 652300, '玛纳斯县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3213, '652325', 652300, '奇台县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3214, '652327', 652300, '吉木萨尔县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3215, '652328', 652300, '木垒哈萨克自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3216, '652700', 650000, '博尔塔拉蒙古自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3217, '652701', 652700, '博乐市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3218, '652702', 652700, '阿拉山口市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3219, '652722', 652700, '精河县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3220, '652723', 652700, '温泉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3221, '652800', 650000, '巴音郭楞蒙古自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3222, '652801', 652800, '库尔勒市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3223, '652822', 652800, '轮台县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3224, '652823', 652800, '尉犁县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3225, '652824', 652800, '若羌县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3226, '652825', 652800, '且末县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3227, '652826', 652800, '焉耆回族自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3228, '652827', 652800, '和静县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3229, '652828', 652800, '和硕县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3230, '652829', 652800, '博湖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3231, '652900', 650000, '阿克苏地区', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3232, '652901', 652900, '阿克苏市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3233, '652902', 652900, '库车市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3234, '652922', 652900, '温宿县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3235, '652924', 652900, '沙雅县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3236, '652925', 652900, '新和县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3237, '652926', 652900, '拜城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3238, '652927', 652900, '乌什县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3239, '652928', 652900, '阿瓦提县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3240, '652929', 652900, '柯坪县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3241, '653000', 650000, '克孜勒苏柯尔克孜自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3242, '653001', 653000, '阿图什市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3243, '653022', 653000, '阿克陶县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3244, '653023', 653000, '阿合奇县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3245, '653024', 653000, '乌恰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3246, '653100', 650000, '喀什地区', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3247, '653101', 653100, '喀什市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3248, '653121', 653100, '疏附县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3249, '653122', 653100, '疏勒县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3250, '653123', 653100, '英吉沙县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3251, '653124', 653100, '泽普县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3252, '653125', 653100, '莎车县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3253, '653126', 653100, '叶城县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3254, '653127', 653100, '麦盖提县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3255, '653128', 653100, '岳普湖县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3256, '653129', 653100, '伽师县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3257, '653130', 653100, '巴楚县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3258, '653131', 653100, '塔什库尔干塔吉克自治县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3259, '653200', 650000, '和田地区', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3260, '653201', 653200, '和田市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3261, '653221', 653200, '和田县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3262, '653222', 653200, '墨玉县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3263, '653223', 653200, '皮山县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3264, '653224', 653200, '洛浦县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3265, '653225', 653200, '策勒县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3266, '653226', 653200, '于田县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3267, '653227', 653200, '民丰县', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3268, '654000', 650000, '伊犁哈萨克自治州', 2, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3269, '654002', 654000, '伊宁市', 3, '2023-02-01 09:13:03', '2023-02-01 09:13:03', 0);
INSERT INTO `region` VALUES (3270, '654003', 654000, '奎屯市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3271, '654004', 654000, '霍尔果斯市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3272, '654021', 654000, '伊宁县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3273, '654022', 654000, '察布查尔锡伯自治县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3274, '654023', 654000, '霍城县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3275, '654024', 654000, '巩留县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3276, '654025', 654000, '新源县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3277, '654026', 654000, '昭苏县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3278, '654027', 654000, '特克斯县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3279, '654028', 654000, '尼勒克县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3280, '654200', 650000, '塔城地区', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3281, '654201', 654200, '塔城市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3282, '654202', 654200, '乌苏市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3283, '654221', 654200, '额敏县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3284, '654223', 654200, '沙湾县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3285, '654224', 654200, '托里县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3286, '654225', 654200, '裕民县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3287, '654226', 654200, '和布克赛尔蒙古自治县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3288, '654300', 650000, '阿勒泰地区', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3289, '654301', 654300, '阿勒泰市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3290, '654321', 654300, '布尔津县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3291, '654322', 654300, '富蕴县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3292, '654323', 654300, '福海县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3293, '654324', 654300, '哈巴河县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3294, '654325', 654300, '青河县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3295, '654326', 654300, '吉木乃县', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3296, '659000', 650000, '自治区直辖县级行政区划', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3297, '659001', 659000, '石河子市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3298, '659002', 659000, '阿拉尔市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3299, '659003', 659000, '图木舒克市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3300, '659004', 659000, '五家渠市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3301, '659005', 659000, '北屯市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3302, '659006', 659000, '铁门关市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3303, '659007', 659000, '双河市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3304, '659008', 659000, '可克达拉市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3305, '659009', 659000, '昆玉市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3306, '659010', 659000, '胡杨河市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3307, '710000', 0, '台湾省', 1, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3308, '710100', 710000, '台北市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3309, '710101', 710100, '中正区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3310, '710102', 710100, '大同区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3311, '710103', 710100, '中山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3312, '710104', 710100, '松山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3313, '710105', 710100, '大安区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3314, '710106', 710100, '万华区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3315, '710107', 710100, '信义区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3316, '710108', 710100, '士林区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3317, '710109', 710100, '北投区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3318, '710110', 710100, '内湖区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3319, '710111', 710100, '南港区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3320, '710112', 710100, '文山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3321, '710200', 710000, '高雄市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3322, '710201', 710200, '新兴区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3323, '710202', 710200, '前金区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3324, '710203', 710200, '苓雅区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3325, '710204', 710200, '盐埕区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3326, '710205', 710200, '鼓山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3327, '710206', 710200, '旗津区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3328, '710207', 710200, '前镇区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3329, '710208', 710200, '三民区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3330, '710209', 710200, '左营区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3331, '710210', 710200, '楠梓区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3332, '710211', 710200, '小港区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3333, '710242', 710200, '仁武区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3334, '710243', 710200, '大社区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3335, '710244', 710200, '冈山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3336, '710245', 710200, '路竹区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3337, '710246', 710200, '阿莲区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3338, '710247', 710200, '田寮区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3339, '710248', 710200, '燕巢区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3340, '710249', 710200, '桥头区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3341, '710250', 710200, '梓官区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3342, '710251', 710200, '弥陀区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3343, '710252', 710200, '永安区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3344, '710253', 710200, '湖内区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3345, '710254', 710200, '凤山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3346, '710255', 710200, '大寮区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3347, '710256', 710200, '林园区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3348, '710257', 710200, '鸟松区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3349, '710258', 710200, '大树区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3350, '710259', 710200, '旗山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3351, '710260', 710200, '美浓区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3352, '710261', 710200, '六龟区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3353, '710262', 710200, '内门区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3354, '710263', 710200, '杉林区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3355, '710264', 710200, '甲仙区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3356, '710265', 710200, '桃源区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3357, '710266', 710200, '那玛夏区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3358, '710267', 710200, '茂林区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3359, '710268', 710200, '茄萣区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3360, '710300', 710000, '台南市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3361, '710301', 710300, '中西区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3362, '710302', 710300, '东区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3363, '710303', 710300, '南区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3364, '710304', 710300, '北区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3365, '710305', 710300, '安平区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3366, '710306', 710300, '安南区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3367, '710339', 710300, '永康区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3368, '710340', 710300, '归仁区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3369, '710341', 710300, '新化区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3370, '710342', 710300, '左镇区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3371, '710343', 710300, '玉井区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3372, '710344', 710300, '楠西区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3373, '710345', 710300, '南化区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3374, '710346', 710300, '仁德区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3375, '710347', 710300, '关庙区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3376, '710348', 710300, '龙崎区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3377, '710349', 710300, '官田区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3378, '710350', 710300, '麻豆区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3379, '710351', 710300, '佳里区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3380, '710352', 710300, '西港区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3381, '710353', 710300, '七股区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3382, '710354', 710300, '将军区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3383, '710355', 710300, '学甲区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3384, '710356', 710300, '北门区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3385, '710357', 710300, '新营区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3386, '710358', 710300, '后壁区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3387, '710359', 710300, '白河区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3388, '710360', 710300, '东山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3389, '710361', 710300, '六甲区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3390, '710362', 710300, '下营区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3391, '710363', 710300, '柳营区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3392, '710364', 710300, '盐水区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3393, '710365', 710300, '善化区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3394, '710366', 710300, '大内区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3395, '710367', 710300, '山上区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3396, '710368', 710300, '新市区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3397, '710369', 710300, '安定区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3398, '710400', 710000, '台中市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3399, '710401', 710400, '中区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3400, '710402', 710400, '东区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3401, '710403', 710400, '南区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3402, '710404', 710400, '西区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3403, '710405', 710400, '北区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3404, '710406', 710400, '北屯区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3405, '710407', 710400, '西屯区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3406, '710408', 710400, '南屯区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3407, '710431', 710400, '太平区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3408, '710432', 710400, '大里区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3409, '710433', 710400, '雾峰区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3410, '710434', 710400, '乌日区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3411, '710435', 710400, '丰原区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3412, '710436', 710400, '后里区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3413, '710437', 710400, '石冈区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3414, '710438', 710400, '东势区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3415, '710439', 710400, '和平区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3416, '710440', 710400, '新社区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3417, '710441', 710400, '潭子区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3418, '710442', 710400, '大雅区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3419, '710443', 710400, '神冈区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3420, '710444', 710400, '大肚区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3421, '710445', 710400, '沙鹿区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3422, '710446', 710400, '龙井区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3423, '710447', 710400, '梧栖区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3424, '710448', 710400, '清水区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3425, '710449', 710400, '大甲区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3426, '710450', 710400, '外埔区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3427, '710451', 710400, '大安区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3428, '710600', 710000, '南投县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3429, '710614', 710600, '南投市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3430, '710615', 710600, '中寮乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3431, '710616', 710600, '草屯镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3432, '710617', 710600, '国姓乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3433, '710618', 710600, '埔里镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3434, '710619', 710600, '仁爱乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3435, '710620', 710600, '名间乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3436, '710621', 710600, '集集镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3437, '710622', 710600, '水里乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3438, '710623', 710600, '鱼池乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3439, '710624', 710600, '信义乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3440, '710625', 710600, '竹山镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3441, '710626', 710600, '鹿谷乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3442, '710700', 710000, '基隆市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3443, '710701', 710700, '仁爱区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3444, '710702', 710700, '信义区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3445, '710703', 710700, '中正区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3446, '710704', 710700, '中山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3447, '710705', 710700, '安乐区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3448, '710706', 710700, '暖暖区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3449, '710707', 710700, '七堵区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3450, '710800', 710000, '新竹市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3451, '710801', 710800, '东区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3452, '710802', 710800, '北区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3453, '710803', 710800, '香山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3454, '710900', 710000, '嘉义市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3455, '710901', 710900, '东区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3456, '710902', 710900, '西区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3457, '711100', 710000, '新北市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3458, '711130', 711100, '万里区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3459, '711131', 711100, '金山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3460, '711132', 711100, '板桥区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3461, '711133', 711100, '汐止区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3462, '711134', 711100, '深坑区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3463, '711135', 711100, '石碇区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3464, '711136', 711100, '瑞芳区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3465, '711137', 711100, '平溪区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3466, '711138', 711100, '双溪区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3467, '711139', 711100, '贡寮区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3468, '711140', 711100, '新店区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3469, '711141', 711100, '坪林区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3470, '711142', 711100, '乌来区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3471, '711143', 711100, '永和区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3472, '711144', 711100, '中和区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3473, '711145', 711100, '土城区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3474, '711146', 711100, '三峡区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3475, '711147', 711100, '树林区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3476, '711148', 711100, '莺歌区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3477, '711149', 711100, '三重区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3478, '711150', 711100, '新庄区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3479, '711151', 711100, '泰山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3480, '711152', 711100, '林口区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3481, '711153', 711100, '芦洲区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3482, '711154', 711100, '五股区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3483, '711155', 711100, '八里区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3484, '711156', 711100, '淡水区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3485, '711157', 711100, '三芝区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3486, '711158', 711100, '石门区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3487, '711200', 710000, '宜兰县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3488, '711214', 711200, '宜兰市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3489, '711215', 711200, '头城镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3490, '711216', 711200, '礁溪乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3491, '711217', 711200, '壮围乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3492, '711218', 711200, '员山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3493, '711219', 711200, '罗东镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3494, '711220', 711200, '三星乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3495, '711221', 711200, '大同乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3496, '711222', 711200, '五结乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3497, '711223', 711200, '冬山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3498, '711224', 711200, '苏澳镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3499, '711225', 711200, '南澳乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3500, '711300', 710000, '新竹县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3501, '711314', 711300, '竹北市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3502, '711315', 711300, '湖口乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3503, '711316', 711300, '新丰乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3504, '711317', 711300, '新埔镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3505, '711318', 711300, '关西镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3506, '711319', 711300, '芎林乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3507, '711320', 711300, '宝山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3508, '711321', 711300, '竹东镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3509, '711322', 711300, '五峰乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3510, '711323', 711300, '横山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3511, '711324', 711300, '尖石乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3512, '711325', 711300, '北埔乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3513, '711326', 711300, '峨眉乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3514, '711400', 710000, '桃园市', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3515, '711414', 711400, '中坜区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3516, '711415', 711400, '平镇区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3517, '711416', 711400, '龙潭区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3518, '711417', 711400, '杨梅区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3519, '711418', 711400, '新屋区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3520, '711419', 711400, '观音区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3521, '711420', 711400, '桃园区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3522, '711421', 711400, '龟山区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3523, '711422', 711400, '八德区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3524, '711423', 711400, '大溪区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3525, '711424', 711400, '复兴区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3526, '711425', 711400, '大园区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3527, '711426', 711400, '芦竹区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3528, '711500', 710000, '苗栗县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3529, '711519', 711500, '竹南镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3530, '711520', 711500, '头份市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3531, '711521', 711500, '三湾乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3532, '711522', 711500, '南庄乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3533, '711523', 711500, '狮潭乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3534, '711524', 711500, '后龙镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3535, '711525', 711500, '通霄镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3536, '711526', 711500, '苑里镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3537, '711527', 711500, '苗栗市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3538, '711528', 711500, '造桥乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3539, '711529', 711500, '头屋乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3540, '711530', 711500, '公馆乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3541, '711531', 711500, '大湖乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3542, '711532', 711500, '泰安乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3543, '711533', 711500, '铜锣乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3544, '711534', 711500, '三义乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3545, '711535', 711500, '西湖乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3546, '711536', 711500, '卓兰镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3547, '711700', 710000, '彰化县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3548, '711727', 711700, '彰化市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3549, '711728', 711700, '芬园乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3550, '711729', 711700, '花坛乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3551, '711730', 711700, '秀水乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3552, '711731', 711700, '鹿港镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3553, '711732', 711700, '福兴乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3554, '711733', 711700, '线西乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3555, '711734', 711700, '和美镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3556, '711735', 711700, '伸港乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3557, '711736', 711700, '员林市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3558, '711737', 711700, '社头乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3559, '711738', 711700, '永靖乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3560, '711739', 711700, '埔心乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3561, '711740', 711700, '溪湖镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3562, '711741', 711700, '大村乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3563, '711742', 711700, '埔盐乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3564, '711743', 711700, '田中镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3565, '711744', 711700, '北斗镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3566, '711745', 711700, '田尾乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3567, '711746', 711700, '埤头乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3568, '711747', 711700, '溪州乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3569, '711748', 711700, '竹塘乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3570, '711749', 711700, '二林镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3571, '711750', 711700, '大城乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3572, '711751', 711700, '芳苑乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3573, '711752', 711700, '二水乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3574, '711900', 710000, '嘉义县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3575, '711919', 711900, '番路乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3576, '711920', 711900, '梅山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3577, '711921', 711900, '竹崎乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3578, '711922', 711900, '阿里山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3579, '711923', 711900, '中埔乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3580, '711924', 711900, '大埔乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3581, '711925', 711900, '水上乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3582, '711926', 711900, '鹿草乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3583, '711927', 711900, '太保市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3584, '711928', 711900, '朴子市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3585, '711929', 711900, '东石乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3586, '711930', 711900, '六脚乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3587, '711931', 711900, '新港乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3588, '711932', 711900, '民雄乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3589, '711933', 711900, '大林镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3590, '711934', 711900, '溪口乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3591, '711935', 711900, '义竹乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3592, '711936', 711900, '布袋镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3593, '712100', 710000, '云林县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3594, '712121', 712100, '斗南镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3595, '712122', 712100, '大埤乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3596, '712123', 712100, '虎尾镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3597, '712124', 712100, '土库镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3598, '712125', 712100, '褒忠乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3599, '712126', 712100, '东势乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3600, '712127', 712100, '台西乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3601, '712128', 712100, '仑背乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3602, '712129', 712100, '麦寮乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3603, '712130', 712100, '斗六市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3604, '712131', 712100, '林内乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3605, '712132', 712100, '古坑乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3606, '712133', 712100, '莿桐乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3607, '712134', 712100, '西螺镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3608, '712135', 712100, '二仑乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3609, '712136', 712100, '北港镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3610, '712137', 712100, '水林乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3611, '712138', 712100, '口湖乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3612, '712139', 712100, '四湖乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3613, '712140', 712100, '元长乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3614, '712400', 710000, '屏东县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3615, '712434', 712400, '屏东市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3616, '712435', 712400, '三地门乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3617, '712436', 712400, '雾台乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3618, '712437', 712400, '玛家乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3619, '712438', 712400, '九如乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3620, '712439', 712400, '里港乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3621, '712440', 712400, '高树乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3622, '712441', 712400, '盐埔乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3623, '712442', 712400, '长治乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3624, '712443', 712400, '麟洛乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3625, '712444', 712400, '竹田乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3626, '712445', 712400, '内埔乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3627, '712446', 712400, '万丹乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3628, '712447', 712400, '潮州镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3629, '712448', 712400, '泰武乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3630, '712449', 712400, '来义乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3631, '712450', 712400, '万峦乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3632, '712451', 712400, '崁顶乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3633, '712452', 712400, '新埤乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3634, '712453', 712400, '南州乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3635, '712454', 712400, '林边乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3636, '712455', 712400, '东港镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3637, '712456', 712400, '琉球乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3638, '712457', 712400, '佳冬乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3639, '712458', 712400, '新园乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3640, '712459', 712400, '枋寮乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3641, '712460', 712400, '枋山乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3642, '712461', 712400, '春日乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3643, '712462', 712400, '狮子乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3644, '712463', 712400, '车城乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3645, '712464', 712400, '牡丹乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3646, '712465', 712400, '恒春镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3647, '712466', 712400, '满州乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3648, '712500', 710000, '台东县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3649, '712517', 712500, '台东市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3650, '712518', 712500, '绿岛乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3651, '712519', 712500, '兰屿乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3652, '712520', 712500, '延平乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3653, '712521', 712500, '卑南乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3654, '712522', 712500, '鹿野乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3655, '712523', 712500, '关山镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3656, '712524', 712500, '海端乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3657, '712525', 712500, '池上乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3658, '712526', 712500, '东河乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3659, '712527', 712500, '成功镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3660, '712528', 712500, '长滨乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3661, '712529', 712500, '金峰乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3662, '712530', 712500, '大武乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3663, '712531', 712500, '达仁乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3664, '712532', 712500, '太麻里乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3665, '712600', 710000, '花莲县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3666, '712615', 712600, '花莲市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3667, '712616', 712600, '新城乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3668, '712618', 712600, '秀林乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3669, '712619', 712600, '吉安乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3670, '712620', 712600, '寿丰乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3671, '712621', 712600, '凤林镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3672, '712622', 712600, '光复乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3673, '712623', 712600, '丰滨乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3674, '712624', 712600, '瑞穗乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3675, '712625', 712600, '万荣乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3676, '712626', 712600, '玉里镇', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3677, '712627', 712600, '卓溪乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3678, '712628', 712600, '富里乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3679, '712700', 710000, '澎湖县', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3680, '712707', 712700, '马公市', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3681, '712708', 712700, '西屿乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3682, '712709', 712700, '望安乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3683, '712710', 712700, '七美乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3684, '712711', 712700, '白沙乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3685, '712712', 712700, '湖西乡', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3686, '810000', 0, '香港特别行政区', 1, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3687, '810100', 810000, '香港特别行政区', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3688, '810101', 810100, '中西区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3689, '810102', 810100, '东区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3690, '810103', 810100, '九龙城区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3691, '810104', 810100, '观塘区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3692, '810105', 810100, '南区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3693, '810106', 810100, '深水埗区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3694, '810107', 810100, '湾仔区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3695, '810108', 810100, '黄大仙区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3696, '810109', 810100, '油尖旺区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3697, '810110', 810100, '离岛区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3698, '810111', 810100, '葵青区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3699, '810112', 810100, '北区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3700, '810113', 810100, '西贡区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3701, '810114', 810100, '沙田区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3702, '810115', 810100, '屯门区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3703, '810116', 810100, '大埔区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3704, '810117', 810100, '荃湾区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3705, '810118', 810100, '元朗区', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3706, '820000', 0, '澳门特别行政区', 1, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3707, '820100', 820000, '澳门特别行政区', 2, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3708, '820101', 820100, '澳门半岛', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3709, '820102', 820100, '凼仔', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3710, '820103', 820100, '路凼城', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);
INSERT INTO `region` VALUES (3711, '820104', 820100, '路环', 3, '2023-02-01 09:13:04', '2023-02-01 09:13:04', 0);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统用户登录记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint NOT NULL DEFAULT 0 COMMENT '所属上级',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '菜单标题',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件名称',
  `sort_value` int NOT NULL DEFAULT 1 COMMENT '排序',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态(0:禁止,1:正常)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', 'system', 1, 1, '2023-05-04 10:46:47', '2023-05-06 17:33:53', 0);
INSERT INTO `sys_menu` VALUES (2, 1, '用户管理', 'sysUser', 1, 1, '2023-05-04 10:47:13', '2023-05-06 17:33:57', 0);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'sysRole', 2, 1, '2023-05-04 10:47:19', '2023-05-06 17:33:58', 0);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'sysMenu', 3, 1, '2023-05-04 10:47:26', '2023-05-06 17:33:58', 0);
INSERT INTO `sys_menu` VALUES (5, 0, '基础数据管理', 'base', 2, 1, '2023-05-05 12:25:07', '2023-05-15 15:37:36', 0);
INSERT INTO `sys_menu` VALUES (6, 5, '商品单位', 'productUnit', 2, 1, '2023-05-05 12:27:20', '2023-05-15 15:44:33', 0);
INSERT INTO `sys_menu` VALUES (7, 5, '地区管理', 'region', 1, 1, '2023-05-15 15:38:09', '2023-05-15 15:52:22', 0);
INSERT INTO `sys_menu` VALUES (8, 0, '商品管理', 'product', 3, 1, '2023-05-15 15:38:47', '2023-05-15 15:52:23', 0);
INSERT INTO `sys_menu` VALUES (9, 8, '分类管理', 'category', 1, 1, '2023-05-15 15:39:04', '2023-05-15 15:52:23', 0);
INSERT INTO `sys_menu` VALUES (10, 8, '品牌管理', 'brand', 2, 1, '2023-05-15 15:39:14', '2023-05-15 15:52:24', 0);
INSERT INTO `sys_menu` VALUES (11, 8, '分类品牌', 'categoryBrand', 3, 1, '2023-05-15 15:39:23', '2023-05-15 15:52:26', 0);
INSERT INTO `sys_menu` VALUES (12, 8, '商品规格', 'productSpec', 4, 1, '2023-05-15 15:39:34', '2023-05-15 15:52:25', 0);
INSERT INTO `sys_menu` VALUES (13, 8, '商品列表', 'product', 5, 1, '2023-05-15 15:39:42', '2023-05-15 15:52:26', 0);
INSERT INTO `sys_menu` VALUES (14, 0, '会员管理', 'users', 4, 1, '2023-05-15 15:41:00', '2023-05-15 16:00:52', 0);
INSERT INTO `sys_menu` VALUES (15, 14, '会员列表', 'userInfo', 1, 1, '2023-05-15 15:41:24', '2023-05-15 15:55:28', 0);
INSERT INTO `sys_menu` VALUES (16, 0, '订单管理', 'order', 5, 1, '2023-05-15 15:42:23', '2023-05-15 15:52:29', 0);
INSERT INTO `sys_menu` VALUES (17, 16, '订单列表', 'orderInfo', 1, 1, '2023-05-15 15:42:43', '2023-05-15 15:52:29', 0);
INSERT INTO `sys_menu` VALUES (18, 16, '订单统计', 'orderStatistics', 2, 1, '2023-05-15 15:43:05', '2023-05-30 10:07:50', 0);
INSERT INTO `sys_menu` VALUES (21, 1, '操作日志', 'sysOperLog', 4, 1, '2023-06-02 09:04:13', '2023-06-02 09:04:21', 0);
INSERT INTO `sys_menu` VALUES (22, 0, 'test', 'test', 1, 1, '2023-07-18 11:36:26', '2023-07-18 13:51:40', 1);
INSERT INTO `sys_menu` VALUES (23, 0, '4', '4', 4, 1, '2023-07-18 11:42:58', '2023-07-18 13:51:47', 1);
INSERT INTO `sys_menu` VALUES (24, 0, '5', '5', 5, 1, '2023-07-18 11:47:09', '2023-07-18 13:51:50', 1);
INSERT INTO `sys_menu` VALUES (25, 1, '7766', '7', 7, 1, '2023-07-18 11:47:19', '2023-07-18 13:51:42', 1);
INSERT INTO `sys_menu` VALUES (26, 0, '8', '8', 8, 1, '2023-07-18 11:48:41', '2023-07-18 13:52:05', 1);
INSERT INTO `sys_menu` VALUES (27, 26, '888', '8', 8, 1, '2023-07-18 11:48:47', '2023-07-18 13:51:56', 1);
INSERT INTO `sys_menu` VALUES (28, 26, '90', '7', 8, 1, '2023-07-18 11:49:01', '2023-07-18 13:52:03', 1);
INSERT INTO `sys_menu` VALUES (29, 28, '9999', '88', 8, 1, '2023-07-18 11:49:06', '2023-07-18 13:52:01', 1);
INSERT INTO `sys_menu` VALUES (30, 1, '1', '1', 1, 1, '2023-07-18 14:37:13', '2023-07-19 09:08:47', 1);
INSERT INTO `sys_menu` VALUES (31, 0, 'aaa管理', 'aaa', 6, 1, '2025-01-21 22:54:49', '2025-01-21 22:55:18', 0);
INSERT INTO `sys_menu` VALUES (32, 31, 'aaa子节点', 'aaa', 1, 1, '2025-01-21 22:55:38', '2025-01-21 22:55:38', 0);
INSERT INTO `sys_menu` VALUES (33, 1, 'aaa管理', 'aaa', 5, 1, '2025-01-21 23:04:59', '2025-01-21 23:04:59', 0);
INSERT INTO `sys_menu` VALUES (34, 1, 'bbb管理', 'bbb', 6, 1, '2025-01-21 23:12:45', '2025-01-21 23:12:45', 0);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_param` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(5000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (64, '角色管理:修改', 'com.atguigu.spzx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', NULL, '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1', '{\"createTime\":1683196582000,\"roleCode\":\"yhgly\",\"roleName\":\"用户管理员\",\"description\":\"用户管理员\",\"id\":10}', '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-02 08:53:25', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (65, '角色管理:修改', 'com.atguigu.spzx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1', '{\"createTime\":1683196566000,\"roleCode\":\"ptgly\",\"roleName\":\"平台管理员\",\"description\":\"平台管理员\",\"id\":9}', '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-02 09:03:31', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (66, '品牌管理:修改', 'com.atguigu.spzx.product.controller.BrandController.updateById()', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '117.173.208.34', '{\"createTime\":1683365427000,\"name\":\"小米\",\"logo\":\"http://139.198.127.41:9000/sph/20230506/小米.png\",\"id\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-02 09:40:24', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (67, '角色管理:新增', 'com.atguigu.spzx.system.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '/admin/system/sysRole/save', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"1\",\"roleName\":\"1\",\"description\":\"1\",\"id\":27}', '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-25 10:13:43', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (68, '角色管理:新增', 'com.atguigu.spzx.system.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '/admin/system/sysRole/save', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"12\",\"roleName\":\"12\",\"description\":\"12\",\"id\":28}', '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-25 10:14:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (69, '角色管理:修改', 'com.atguigu.spzx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"112\",\"roleName\":\"112\",\"description\":\"112\",\"id\":28}', NULL, 0, NULL, '2023-06-25 10:15:38', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (70, '角色管理:修改', 'com.atguigu.spzx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"112\",\"roleName\":\"112\",\"description\":\"112\",\"id\":28}', NULL, 0, NULL, '2023-06-25 10:16:36', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (71, '角色管理:修改', 'com.atguigu.spzx.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '/admin/system/sysRole/updateById', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"112\",\"roleName\":\"112\",\"description\":\"112\",\"id\":28}', '{\"code\":200,\"message\":\"成功\"}', 1, NULL, '2023-06-25 10:23:35', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (72, '角色', 'com.atguigu.spzx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan', '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"},{\"createTime\":\"2023-07-18 14:05:18\",\"id\":32,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"test\",\"updateTime\":\"2023-07-18 14:05:18\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":5},\"message\":\"操作成功\"}', 0, NULL, '2023-07-19 14:26:14', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (73, '角色添加', 'com.atguigu.spzx.controller.SysRoleController', 'POST', 'MANAGE', 'zhangsan', '/admin/system/sysRole/saveSysRole', '0:0:0:0:0:0:0:1', '{\"roleCode\":\"bbb\",\"roleName\":\"bbb\"}', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2023-07-19 14:26:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (74, '角色', 'com.atguigu.spzx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan', '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:26:28\",\"id\":35,\"isDeleted\":0,\"roleCode\":\"bbb\",\"roleName\":\"bbb\",\"updateTime\":\"2023-07-19 14:26:28\"},{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":6},\"message\":\"操作成功\"}', 0, NULL, '2023-07-19 14:26:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (75, '角色菜单模块:分配菜单', 'com.atguigu.spzx.service.impl.SysRoleMenuServiceImpl', 'POST', 'MANAGE', 'zhangsan', '/admin/system/sysRoleMenu/doAssign', '0:0:0:0:0:0:0:1', '{\"roleId\":35,\"menuIdList\":[{\"id\":2,\"isHalf\":0},{\"id\":1,\"isHalf\":1}]}', 'null', 0, NULL, '2023-07-19 14:32:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (76, '角色', 'com.atguigu.spzx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan', '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:26:28\",\"id\":35,\"isDeleted\":0,\"roleCode\":\"bbb\",\"roleName\":\"bbb\",\"updateTime\":\"2023-07-19 14:26:28\"},{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":6},\"message\":\"操作成功\"}', 0, NULL, '2023-07-19 14:34:16', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (77, '角色菜单模块:分配菜单', 'com.atguigu.spzx.service.impl.SysRoleMenuServiceImpl', 'POST', 'MANAGE', 'zhangsan', '/admin/system/sysRoleMenu/doAssign', '0:0:0:0:0:0:0:1', '{\"roleId\":35,\"menuIdList\":[{\"id\":2,\"isHalf\":0},{\"id\":3,\"isHalf\":0},{\"id\":1,\"isHalf\":1}]}', 'null', 1, '/ by zero', '2023-07-19 14:34:23', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (78, '角色菜单模块:分配菜单', 'com.atguigu.spzx.service.impl.SysRoleMenuServiceImpl', 'POST', 'MANAGE', 'zhangsan', '/admin/system/sysRoleMenu/doAssign', '0:0:0:0:0:0:0:1', '{\"roleId\":35,\"menuIdList\":[{\"id\":2,\"isHalf\":0},{\"id\":1,\"isHalf\":1}]}', 'null', 0, NULL, '2023-07-19 14:36:38', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (79, '角色', 'com.atguigu.spzx.controller.SysRoleController', 'GET', 'MANAGE', 'zhangsan', '/admin/system/sysRole/findByPage/1/3', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":3,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2023-07-19 14:26:28\",\"id\":35,\"isDeleted\":0,\"roleCode\":\"bbb\",\"roleName\":\"bbb\",\"updateTime\":\"2023-07-19 14:26:28\"},{\"createTime\":\"2023-07-19 14:09:32\",\"id\":34,\"isDeleted\":0,\"roleCode\":\"aaa\",\"roleName\":\"aaa\",\"updateTime\":\"2023-07-19 14:09:32\"},{\"createTime\":\"2023-07-18 14:36:22\",\"id\":33,\"isDeleted\":0,\"roleCode\":\"test\",\"roleName\":\"测试\",\"updateTime\":\"2023-07-18 14:36:22\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":3,\"pages\":2,\"prePage\":0,\"size\":3,\"startRow\":1,\"total\":6},\"message\":\"操作成功\"}', 0, NULL, '2023-07-19 14:37:11', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (80, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":8,\"hasNextPage\":false,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":true,\"list\":[{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"},{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"},{\"createTime\":\"2023-05-06 09:30:27\",\"id\":1,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg\",\"name\":\"小米\",\"updateTime\":\"2025-01-22 05:48:34\"}],\"navigateFirstPage\":1,\"navigateLastPage\":1,\"navigatePages\":8,\"navigatepageNums\":[1],\"nextPage\":0,\"pageNum\":1,\"pageSize\":10,\"pages\":1,\"prePage\":0,\"size\":8,\"startRow\":1,\"total\":8},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:01:30', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (81, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":8,\"hasNextPage\":false,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":true,\"list\":[{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"},{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"},{\"createTime\":\"2023-05-06 09:30:27\",\"id\":1,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg\",\"name\":\"小米\",\"updateTime\":\"2025-01-22 05:48:34\"}],\"navigateFirstPage\":1,\"navigateLastPage\":1,\"navigatePages\":8,\"navigatepageNums\":[1],\"nextPage\":0,\"pageNum\":1,\"pageSize\":10,\"pages\":1,\"prePage\":0,\"size\":8,\"startRow\":1,\"total\":8},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:03:13', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (82, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":8,\"hasNextPage\":false,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":true,\"list\":[{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"},{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"},{\"createTime\":\"2023-05-06 09:30:27\",\"id\":1,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg\",\"name\":\"小米\",\"updateTime\":\"2025-01-22 05:48:34\"}],\"navigateFirstPage\":1,\"navigateLastPage\":1,\"navigatePages\":8,\"navigatepageNums\":[1],\"nextPage\":0,\"pageNum\":1,\"pageSize\":10,\"pages\":1,\"prePage\":0,\"size\":8,\"startRow\":1,\"total\":8},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:43:51', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (83, '品牌添加', 'com.atguigu.spzx.manager.controller.BrandController', 'POST', 'MANAGE', 'admin', '/admin/product/brand/save', '0:0:0:0:0:0:0:1', '[Brand(name=荣耀, logo=http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:44:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (84, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":9,\"hasNextPage\":false,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":true,\"list\":[{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"},{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"},{\"createTime\":\"2023-05-06 09:30:27\",\"id\":1,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg\",\"name\":\"小米\",\"updateTime\":\"2025-01-22 05:48:34\"}],\"navigateFirstPage\":1,\"navigateLastPage\":1,\"navigatePages\":8,\"navigatepageNums\":[1],\"nextPage\":0,\"pageNum\":1,\"pageSize\":10,\"pages\":1,\"prePage\":0,\"size\":9,\"startRow\":1,\"total\":9},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:49:46', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (85, '品牌添加', 'com.atguigu.spzx.manager.controller.BrandController', 'POST', 'MANAGE', 'admin', '/admin/product/brand/save', '0:0:0:0:0:0:0:1', '[Brand(name=红米, logo=http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:50:50', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (86, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":false,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":true,\"list\":[{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"},{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"},{\"createTime\":\"2023-05-06 09:30:27\",\"id\":1,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg\",\"name\":\"小米\",\"updateTime\":\"2025-01-22 05:48:34\"}],\"navigateFirstPage\":1,\"navigateLastPage\":1,\"navigatePages\":8,\"navigatepageNums\":[1],\"nextPage\":0,\"pageNum\":1,\"pageSize\":10,\"pages\":1,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":10},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:50:50', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (87, '品牌添加', 'com.atguigu.spzx.manager.controller.BrandController', 'POST', 'MANAGE', 'admin', '/admin/product/brand/save', '0:0:0:0:0:0:0:1', '[Brand(name=步步高, logo=http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:51:10', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (88, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"},{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":11},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:51:10', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (89, '品牌添加', 'com.atguigu.spzx.manager.controller.BrandController', 'POST', 'MANAGE', 'admin', '/admin/product/brand/save', '0:0:0:0:0:0:0:1', '[Brand(name=特斯拉, logo=http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:51:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (90, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/7ea4cdb88e864658b661d7aea064b56f1233.png\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-22 21:52:12\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:51:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (91, '品牌修改', 'com.atguigu.spzx.manager.controller.BrandController', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '0:0:0:0:0:0:0:1', '[Brand(name=诺基亚, logo=http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:51:58', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (92, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/019bc0d0ed5245c9a5b37f20f2843ac91.png\",\"name\":\"三星\",\"updateTime\":\"2025-01-22 21:43:55\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:51:58', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (93, '品牌修改', 'com.atguigu.spzx.manager.controller.BrandController', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '0:0:0:0:0:0:0:1', '[Brand(name=三星, logo=http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (94, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/4bbc7bac8f5c46f49ab5aba1b06da3c9asdasd.jpg\",\"name\":\"vivo\",\"updateTime\":\"2025-01-22 06:16:50\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (95, '品牌修改', 'com.atguigu.spzx.manager.controller.BrandController', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '0:0:0:0:0:0:0:1', '[Brand(name=vivo, logo=http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:20', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (96, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/9530cd79fa71423ca2716db3ffb5f58f下载.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-22 06:17:03\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:20', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (97, '品牌修改', 'com.atguigu.spzx.manager.controller.BrandController', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '0:0:0:0:0:0:0:1', '[Brand(name=oppo, logo=http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (98, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (99, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/2/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":12,\"hasNextPage\":false,\"hasPreviousPage\":true,\"isFirstPage\":false,\"isLastPage\":true,\"list\":[{\"createTime\":\"2023-05-06 09:31:19\",\"id\":2,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/65c9d16727b0467ab0c607de973c830916250676834848128.png\",\"name\":\"华为\",\"updateTime\":\"2025-01-22 05:47:40\"},{\"createTime\":\"2023-05-06 09:30:27\",\"id\":1,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/f1d2aed8c66f4f24bcc7b7206758963958764382-d655-48ad-ad3b-be62507a3312.jpg\",\"name\":\"小米\",\"updateTime\":\"2025-01-22 05:48:34\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":0,\"pageNum\":2,\"pageSize\":10,\"pages\":2,\"prePage\":1,\"size\":2,\"startRow\":11,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:36', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (100, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:52:42', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (101, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:53:03', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (102, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:51:40\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:55:32', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (103, '品牌修改', 'com.atguigu.spzx.manager.controller.BrandController', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '0:0:0:0:0:0:0:1', '[Brand(name=特斯拉1, logo=http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:55:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (104, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉1\",\"updateTime\":\"2025-01-23 03:55:39\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:55:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (105, '品牌修改', 'com.atguigu.spzx.manager.controller.BrandController', 'PUT', 'MANAGE', 'admin', '/admin/product/brand/updateById', '0:0:0:0:0:0:0:1', '[Brand(name=特斯拉, logo=http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg)]', '{\"code\":200,\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:56:32', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (106, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 03:56:32', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (107, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 09:30:36', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (108, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 09:31:16', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (109, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-23 22:05:11', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (110, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-25 23:47:14', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (111, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-25 23:47:14', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (112, '品牌列表', 'com.atguigu.spzx.manager.controller.BrandController', 'GET', 'MANAGE', 'admin', '/admin/product/brand/1/10', '0:0:0:0:0:0:0:1', NULL, '{\"code\":200,\"data\":{\"endRow\":10,\"hasNextPage\":true,\"hasPreviousPage\":false,\"isFirstPage\":true,\"isLastPage\":false,\"list\":[{\"createTime\":\"2025-01-23 03:51:40\",\"id\":16,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/d6fafe8b509249c69eb072cd2f5a77292fpbh2dipd0.jpg\",\"name\":\"特斯拉\",\"updateTime\":\"2025-01-23 03:56:32\"},{\"createTime\":\"2025-01-23 03:51:10\",\"id\":15,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/c2791732b6304e908d61797f1fef06b4【哲风壁纸】写真-许岚LAN (1).png\",\"name\":\"步步高\",\"updateTime\":\"2025-01-23 03:51:10\"},{\"createTime\":\"2025-01-23 03:50:50\",\"id\":14,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/3a669f3955a147cfaa8deb08a47d6c1fx0itinan4ve.jpg\",\"name\":\"红米\",\"updateTime\":\"2025-01-23 03:50:50\"},{\"createTime\":\"2025-01-23 03:44:28\",\"id\":13,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/ac604f60282246489e672a6ee4f8ca5cv5agd5zistf.jpg\",\"name\":\"荣耀\",\"updateTime\":\"2025-01-23 03:44:28\"},{\"createTime\":\"2025-01-22 23:20:48\",\"id\":12,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/55c758a7738b4f5485981558b92e844912.png\",\"name\":\"索尼\",\"updateTime\":\"2025-01-22 23:20:48\"},{\"createTime\":\"2025-01-22 21:50:37\",\"id\":11,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/b35281b3b87b4e6ea389d20c68c69033emqizb4ttqa.jpg\",\"name\":\"诺基亚\",\"updateTime\":\"2025-01-23 03:51:58\"},{\"createTime\":\"2025-01-22 21:43:55\",\"id\":10,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/7c020de7bc284ed98fdd66b546e68768113prif1uwj.jpg\",\"name\":\"三星\",\"updateTime\":\"2025-01-23 03:52:08\"},{\"createTime\":\"2025-01-22 06:17:11\",\"id\":9,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250122/90757efbe8214b6a9022747969f025d916251636018236800.png\",\"name\":\"iphone\",\"updateTime\":\"2025-01-22 06:17:48\"},{\"createTime\":\"2025-01-22 03:43:28\",\"id\":6,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/72634a36c946474cb994374055aa08f211k2v41q1se.jpg\",\"name\":\"oppo\",\"updateTime\":\"2025-01-23 03:52:28\"},{\"createTime\":\"2025-01-22 03:26:44\",\"id\":5,\"isDeleted\":0,\"logo\":\"http://127.0.0.1:9000/spzx-bucket/20250123/eb0c33084ad34615a0a6708a20b7c43015845073223520576.png\",\"name\":\"vivo\",\"updateTime\":\"2025-01-23 03:52:20\"}],\"navigateFirstPage\":1,\"navigateLastPage\":2,\"navigatePages\":8,\"navigatepageNums\":[1,2],\"nextPage\":2,\"pageNum\":1,\"pageSize\":10,\"pages\":2,\"prePage\":0,\"size\":10,\"startRow\":1,\"total\":12},\"message\":\"操作成功\"}', 0, NULL, '2025-01-26 03:38:37', NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (2, 'test02', 'test02', 'test02', '2023-09-03 21:23:41', '2023-09-03 21:23:59', 0);
INSERT INTO `sys_role` VALUES (9, '平台管理员', 'ptgly', '平台管理员', '2023-05-04 10:36:06', '2023-06-02 09:03:31', 0);
INSERT INTO `sys_role` VALUES (10, '用户管理员', 'yhgly', '用户管理员', '2023-05-04 10:36:22', '2023-07-18 08:40:56', 0);
INSERT INTO `sys_role` VALUES (36, '销售人员', '销售', NULL, '2023-09-03 23:23:04', '2023-09-03 23:23:04', 0);
INSERT INTO `sys_role` VALUES (37, '测试人员', 'test', NULL, '2023-09-03 23:24:26', '2023-09-04 10:04:17', 0);
INSERT INTO `sys_role` VALUES (38, '开发人员', 'dev', NULL, '2023-09-03 23:24:32', '2023-09-04 10:30:06', 1);
INSERT INTO `sys_role` VALUES (39, '运维人员', 'yw', NULL, '2023-09-04 10:04:41', '2023-09-04 10:30:01', 1);
INSERT INTO `sys_role` VALUES (40, '总经理', '111', '总经理', '2025-01-21 23:01:50', '2025-01-21 23:01:50', 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL DEFAULT 0,
  `menu_id` bigint NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  `is_half` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_menu_id`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 155 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (69, 32, 2, '2023-07-18 14:32:43', '2023-07-18 14:32:43', 0, 0);
INSERT INTO `sys_role_menu` VALUES (70, 32, 3, '2023-07-18 14:32:43', '2023-07-18 14:32:43', 0, 0);
INSERT INTO `sys_role_menu` VALUES (71, 32, 1, '2023-07-18 14:32:43', '2023-07-18 14:32:43', 0, 1);
INSERT INTO `sys_role_menu` VALUES (84, 33, 2, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 0);
INSERT INTO `sys_role_menu` VALUES (85, 33, 30, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 0);
INSERT INTO `sys_role_menu` VALUES (86, 33, 3, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 0);
INSERT INTO `sys_role_menu` VALUES (87, 33, 1, '2023-07-18 14:39:13', '2023-07-18 14:39:13', 0, 1);
INSERT INTO `sys_role_menu` VALUES (88, 10, 1, '2023-07-18 14:43:53', '2025-01-21 23:12:45', 0, 1);
INSERT INTO `sys_role_menu` VALUES (89, 10, 2, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (90, 10, 30, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (91, 10, 3, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (92, 10, 4, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (93, 10, 21, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (94, 10, 5, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (95, 10, 7, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (96, 10, 6, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (97, 10, 8, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (98, 10, 9, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (99, 10, 10, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (100, 10, 11, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (101, 10, 12, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (102, 10, 13, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (103, 10, 14, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (104, 10, 15, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (105, 10, 16, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (106, 10, 17, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (107, 10, 18, '2023-07-18 14:43:53', '2023-07-18 14:43:53', 0, 0);
INSERT INTO `sys_role_menu` VALUES (110, 35, 2, '2023-07-19 14:36:38', '2023-07-19 14:36:38', 0, 0);
INSERT INTO `sys_role_menu` VALUES (111, 35, 1, '2023-07-19 14:36:38', '2023-07-19 14:36:38', 0, 1);
INSERT INTO `sys_role_menu` VALUES (117, 9, 2, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (118, 9, 3, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (119, 9, 4, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (120, 9, 21, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (121, 9, 5, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (122, 9, 7, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (123, 9, 6, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (124, 9, 8, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (125, 9, 9, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (126, 9, 10, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (127, 9, 11, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (128, 9, 12, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (129, 9, 13, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (130, 9, 14, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (131, 9, 15, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (132, 9, 16, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (133, 9, 17, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (134, 9, 18, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 0);
INSERT INTO `sys_role_menu` VALUES (135, 9, 1, '2025-01-22 23:42:58', '2025-01-22 23:42:58', 0, 1);
INSERT INTO `sys_role_menu` VALUES (136, 40, 2, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (137, 40, 3, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (138, 40, 4, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (139, 40, 21, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (140, 40, 5, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (141, 40, 7, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (142, 40, 6, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (143, 40, 8, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (144, 40, 9, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (145, 40, 10, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (146, 40, 11, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (147, 40, 12, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (148, 40, 13, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (149, 40, 14, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (150, 40, 15, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (151, 40, 16, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (152, 40, 17, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (153, 40, 18, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 0);
INSERT INTO `sys_role_menu` VALUES (154, 40, 1, '2025-01-23 00:08:51', '2025-01-23 00:08:51', 0, 1);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态（1：正常 0：停用）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', 'admin', '15011113652', 'https://s2.loli.net/2025/01/22/LRiVwyQEMK61SAN.jpg', NULL, 1, '2023-05-04 10:17:18', '2025-01-22 03:17:24', 0);
INSERT INTO `sys_user` VALUES (5, 'zhangsan', '96e79218965eb72c92a549dd5a330112', '张三', '13589658968', 'https://oss.aliyuncs.com/aliyun_id_photo_bucket/default_handsome.jpg', '', 1, '2023-05-04 10:38:30', '2025-01-21 23:18:41', 0);
INSERT INTO `sys_user` VALUES (6, 'test1212', '96e79218965eb72c92a549dd5a330112', 'test12', '15011245632', 'http://139.198.127.41:9000/sph/20230505/default_handsome.jpg', 'test12', 1, '2023-05-05 11:03:48', '2023-07-18 10:28:24', 0);
INSERT INTO `sys_user` VALUES (12, 'lucy', '96e79218965eb72c92a549dd5a330112', '1', '1', NULL, '1', 1, '2023-07-18 14:36:03', '2025-01-22 23:47:15', 0);
INSERT INTO `sys_user` VALUES (13, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'aaa', 'aaa', 'http://127.0.0.1:9000/spzx-bucket/20250121/b3dd00c903ef4d14bbb110c1f085bb69Untitled.png', 'aaa', 0, '2025-01-21 23:13:51', '2025-01-21 23:13:51', 0);
INSERT INTO `sys_user` VALUES (14, 'xiaowen', '96e79218965eb72c92a549dd5a330112', 'xiaowen', '13611112222', 'http://127.0.0.1:9000/spzx-bucket/20250122/6ebaa401be154ed98caa4a99b5896bebxw4.jpg', 'xiaowen666', 0, '2025-01-22 23:44:12', '2025-01-22 23:44:12', 0);
INSERT INTO `sys_user` VALUES (15, '111', '698d51a19d8a121ce581499d7b701668', '111', '13700001111', NULL, '111', 0, '2025-01-23 05:44:09', '2025-01-23 05:44:09', 0);
INSERT INTO `sys_user` VALUES (16, '1', '1bbd886460827015e5d605ed44252251', '1', '13811110000', NULL, '1', 0, '2025-01-23 05:45:01', '2025-01-23 05:45:01', 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint NOT NULL DEFAULT 0 COMMENT '角色id',
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT '用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_admin_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (7, 9, 1, '2023-07-18 10:59:09', '2025-01-21 22:52:06', 0);
INSERT INTO `sys_user_role` VALUES (10, 10, 8, '2023-07-18 11:09:35', '2023-07-18 11:09:35', 0);
INSERT INTO `sys_user_role` VALUES (11, 10, 5, '2023-07-18 14:28:42', '2023-07-18 14:28:42', 0);
INSERT INTO `sys_user_role` VALUES (12, 32, 6, '2023-07-18 14:33:04', '2023-07-18 14:33:04', 0);
INSERT INTO `sys_user_role` VALUES (13, 33, 12, '2023-07-18 14:39:07', '2023-07-18 14:39:07', 0);
INSERT INTO `sys_user_role` VALUES (14, 9, 13, '2025-01-21 23:14:06', '2025-01-21 23:14:06', 0);
INSERT INTO `sys_user_role` VALUES (15, 9, 14, '2025-01-22 23:44:25', '2025-01-22 23:44:25', 0);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT 0 COMMENT '用户ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '电话',
  `tag_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签名称',
  `province_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `district_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '详细地址',
  `full_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '完整地址',
  `is_default` tinyint NOT NULL DEFAULT 1 COMMENT '是否默认地址（0：否 1：是）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标识（0：否 1：是）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户地址表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES (1, 1, '晴天', '15014526352', '家', '110000', '110100', '110114', '天通苑大街1号', '北京市北京市昌平区天通苑大街1号', 0, '2023-05-12 09:50:41', '2023-06-02 11:15:17', 0);
INSERT INTO `user_address` VALUES (2, 1, '张三', '15012563333', '公司', '130000', '130700', '130724', '快乐家园1号', '河北省张家口市沽源县快乐家园1号', 1, '2023-05-17 16:57:11', '2023-06-07 15:35:49', 0);
INSERT INTO `user_address` VALUES (3, 30, 'zhangs', '15201252001', '家', '110000', '110100', '110101', 'ddddd', '北京市北京市东城区ddddd', 1, '2023-05-23 14:14:00', '2023-05-23 14:14:00', 0);
INSERT INTO `user_address` VALUES (4, 33, 'xw', '13811112222', 'aaa', '111111', '111111', '111111', '11111', '河北省张家口市沽源县快乐家园1号', 1, '2025-01-24 08:10:24', '2025-01-24 08:10:38', 0);
INSERT INTO `user_address` VALUES (5, 33, 'xw', '13811112222', 'bbb', '222222', '222222', '222222', '222222', '北京市北京市昌平区天通苑大街1号', 1, '2025-01-25 00:39:46', '2025-01-25 00:40:32', 0);

-- ----------------------------
-- Table structure for user_browse_history
-- ----------------------------
DROP TABLE IF EXISTS `user_browse_history`;
CREATE TABLE `user_browse_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `sku_id` bigint NOT NULL DEFAULT 0 COMMENT '商品skuID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户浏览记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_browse_history
-- ----------------------------
INSERT INTO `user_browse_history` VALUES (1, 1, 1, '2023-05-31 15:19:30', '2023-06-16 11:56:44', 0);
INSERT INTO `user_browse_history` VALUES (2, 1, 2, '2023-05-31 15:35:39', '2023-06-08 22:33:31', 0);
INSERT INTO `user_browse_history` VALUES (3, 1, 3, '2023-05-31 15:46:12', '2023-06-08 08:42:25', 0);
INSERT INTO `user_browse_history` VALUES (4, 1, 4, '2023-05-31 15:46:19', '2023-06-13 16:35:13', 0);
INSERT INTO `user_browse_history` VALUES (5, 1, 5, '2023-05-31 15:46:23', '2023-06-08 08:42:26', 0);
INSERT INTO `user_browse_history` VALUES (6, 1, 6, '2023-05-31 15:46:28', '2023-06-14 10:02:23', 0);
INSERT INTO `user_browse_history` VALUES (7, 1, 7, '2023-05-31 15:46:33', '2023-05-31 17:27:30', 0);
INSERT INTO `user_browse_history` VALUES (8, 1, 8, '2023-05-31 15:46:38', '2023-05-31 17:22:56', 0);
INSERT INTO `user_browse_history` VALUES (9, 1, 9, '2023-05-31 15:46:44', '2023-05-31 17:27:18', 0);

-- ----------------------------
-- Table structure for user_collect
-- ----------------------------
DROP TABLE IF EXISTS `user_collect`;
CREATE TABLE `user_collect`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `sku_id` bigint NOT NULL DEFAULT 0 COMMENT '商品skuID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_collect
-- ----------------------------
INSERT INTO `user_collect` VALUES (1, 1, 2, '2023-05-31 14:55:22', '2023-05-31 14:55:22', 0);
INSERT INTO `user_collect` VALUES (2, 1, 1, '2023-05-31 17:27:50', '2023-05-31 17:27:50', 0);
INSERT INTO `user_collect` VALUES (3, 1, 4, '2023-06-13 16:35:18', '2023-06-13 16:35:18', 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `phone` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` tinyint(1) NULL DEFAULT NULL COMMENT '性别',
  `memo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `open_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信open id',
  `union_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信开放平台unionID',
  `last_login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后一次登录ip',
  `last_login_time` datetime NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `status` tinyint NULL DEFAULT NULL COMMENT '状态：1为正常，0为禁止',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '会员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '13700032456', '96e79218965eb72c92a549dd5a330112', 'test', '13700032456', 'http://139.198.127.41:9000/sph/20230505/default_handsome.jpg', 1, 'test', NULL, NULL, '127.0.0.1', '2023-07-25 09:55:06', 1, '2023-05-12 09:14:03', '2023-07-25 09:55:06', 0);
INSERT INTO `user_info` VALUES (30, '13700011111', '96e79218965eb72c92a549dd5a330112', '11', NULL, 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', 0, NULL, NULL, NULL, '0:0:0:0:0:0:0:1', '2023-05-23 06:34:35', 1, '2023-05-23 14:03:53', '2023-05-23 14:34:35', 0);
INSERT INTO `user_info` VALUES (31, '15100000000', '96e79218965eb72c92a549dd5a330112', '11', '15100000000', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', 0, NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 10:29:01', '2023-06-12 10:29:01', 0);
INSERT INTO `user_info` VALUES (32, '13521096172', '96e79218965eb72c92a549dd5a330112', '111', '13521096172', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', 0, NULL, NULL, NULL, '0:0:0:0:0:0:0:1', '2023-07-22 10:24:06', 1, '2023-07-21 16:26:53', '2023-07-22 10:24:06', 0);
INSERT INTO `user_info` VALUES (33, '18929416369', '1bbd886460827015e5d605ed44252251', 'xiaowen', '18929416369', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoj0hHXhgJNOTSOFsS4uZs8x1ConecaVOB8eIl115xmJZcT4oCicvia7wMEufibKtTLqiaJeanU2Lpg3w/132', 0, NULL, NULL, NULL, NULL, NULL, 1, '2025-01-24 03:40:50', '2025-01-24 03:40:50', 0);
INSERT INTO `user_info` VALUES (34, '13711112222', '1bbd886460827015e5d605ed44252251', 'xin', '13711112222', 'https://s2.loli.net/2025/01/25/WKeUiVo7gZ5Oyp3.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-25 00:34:41', '2025-01-25 00:38:45', 0);

SET FOREIGN_KEY_CHECKS = 1;
