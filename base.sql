/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : base

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 08/08/2019 08:37:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES (1, 'admin', 'Admin', '091755f72905026fd64c00ce4ae95cf2', '97abff', '/uploads/20190717/479b888adad78a4fde5a83fdc93de835.jpg', 'admin@admin.com', 0, 1565224546, 1492186163, 1565224546, '235eb071-82f2-487a-92ee-edb53bed7f8a', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES (1, 0, 'Unknown', '/', '登录', '{\"__token__\":\"ec46cad10c1bbbc2d3d5a375af616f42\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"7f06894fd1e57c44426ea80b58ef88b8ce\",\"geetest_validate\":\"f1bdc6d0d2b0fcf36f7d947b18843331\",\"geetest_seccode\":\"f1bdc6d0d2b0fcf36f7d947b18843331|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565140757);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/', '登录', '{\"__token__\":\"2d5b3d4d6d5def999049838e4a6169ca\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"391e7d47477f8932be5a1128b81a1361a2\",\"geetest_validate\":\"253bbfac1a5a3d23e3227acd6786d4e9\",\"geetest_seccode\":\"253bbfac1a5a3d23e3227acd6786d4e9|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565140769);
INSERT INTO `fa_admin_log` VALUES (3, 1, 'admin', '/?url=%2Fadmin%2Fgeneral%2Fattachment%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/admin\\/general\\/attachment?ref=addtabs\",\"__token__\":\"d803334425247060d35fcd30c4f462b9\",\"username\":\"admin\",\"captcha\":\"ok\",\"geetest_challenge\":\"25d19bfff89664e494ba39c88d7024c1hp\",\"geetest_validate\":\"0461ce61cdd687ab18ccfcb35685c074\",\"geetest_seccode\":\"0461ce61cdd687ab18ccfcb35685c074|jordan\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 1565224546);

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `fa_attachment` VALUES (2, 1, 0, '/uploads/20190717/479b888adad78a4fde5a83fdc93de835.jpg', '460', '460', 'jpg', 0, 35273, 'image/jpeg', '{\"name\":\"lzqqdy.jpg\"}', 1563372970, 1563372970, 1563372970, 'local', '6f9f0228f8a3d020a63a7ec592922b636a8b1ed4');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1497429920, 143, 'normal');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (85, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', 1, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (86, 'file', 85, 'command/index', '查看', 'fa fa-circle-o', '', '', 0, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (87, 'file', 85, 'command/add', '添加', 'fa fa-circle-o', '', '', 0, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (88, 'file', 85, 'command/detail', '详情', 'fa fa-circle-o', '', '', 0, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (89, 'file', 85, 'command/execute', '运行', 'fa fa-circle-o', '', '', 0, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (90, 'file', 85, 'command/del', '删除', 'fa fa-circle-o', '', '', 0, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (91, 'file', 85, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1563372256, 1563372256, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (92, 'file', 2, 'general/crontab', '定时任务', 'fa fa-tasks', '', '类似于Linux的Crontab定时任务,可以按照设定的时间进行任务的执行,目前仅支持三种任务:请求URL、执行SQL、执行Shell', 1, 1563372282, 1563372282, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (93, 'file', 92, 'general/crontab/index', '查看', 'fa fa-circle-o', '', '', 0, 1563372283, 1563372283, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (94, 'file', 92, 'general/crontab/add', '添加', 'fa fa-circle-o', '', '', 0, 1563372283, 1563372283, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (95, 'file', 92, 'general/crontab/edit', '编辑 ', 'fa fa-circle-o', '', '', 0, 1563372283, 1563372283, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (96, 'file', 92, 'general/crontab/del', '删除', 'fa fa-circle-o', '', '', 0, 1563372283, 1563372283, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (97, 'file', 92, 'general/crontab/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1563372283, 1563372283, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (100, 'file', 2, 'general/logs', '日志管理', 'fa fa-pied-piper-alt', '', '', 1, 1563372853, 1563372853, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (101, 'file', 100, 'general/logs/index', '查看', 'fa fa-circle-o', '', '', 0, 1563372853, 1563372853, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (102, 'file', 100, 'general/logs/del', '删除', 'fa fa-circle-o', '', '', 0, 1563372853, 1563372853, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (103, 'file', 100, 'general/logs/detail', '详情', 'fa fa-circle-o', '', '', 0, 1563372853, 1563372853, 0, 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 5, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 1, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 2, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 7, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 6, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 13, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 12, 'normal');

-- ----------------------------
-- Table structure for fa_command
-- ----------------------------
DROP TABLE IF EXISTS `fa_command`;
CREATE TABLE `fa_command`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '命令',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '返回结果',
  `executetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '执行时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` enum('successed','failured') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线命令表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"WeChat\":\"小程序配置\",\"Payment\":\"支付配置\"}', '', '', '');
INSERT INTO `fa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');
INSERT INTO `fa_config` VALUES (18, 'app_id', 'WeChat', '小程序appid', '填写小程序appid', 'string', 'wx446bb47f5c456b42', '', '', '');
INSERT INTO `fa_config` VALUES (19, 'app_secret', 'WeChat', '小程序AppSecret', '填写小程序AppSecret', 'string', 'eb4c76c7a2a9ee8e0d11a93cdd708e52', '', '', '');
INSERT INTO `fa_config` VALUES (20, 'app_mch_id', 'Payment', '商户账号', '填写商户账号', 'string', '1', '', '', '');
INSERT INTO `fa_config` VALUES (21, 'app_key', 'Payment', '商户密钥', '填写商户密钥', 'string', '1', '', '', '');

-- ----------------------------
-- Table structure for fa_crontab
-- ----------------------------
DROP TABLE IF EXISTS `fa_crontab`;
CREATE TABLE `fa_crontab`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件类型',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '事件内容',
  `schedule` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Crontab格式',
  `sleep` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '延迟秒数执行',
  `maximums` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大执行次数 0为不限',
  `executes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '已经执行的次数',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `begintime` int(10) NOT NULL DEFAULT 0 COMMENT '开始时间',
  `endtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '结束时间',
  `executetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后执行时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` enum('completed','expired','hidden','normal') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_crontab
-- ----------------------------
INSERT INTO `fa_crontab` VALUES (1, 'url', '请求FastAdmin', 'http://www.fastadmin.net', '* * * * *', 0, 0, 13548, 1497070825, 1501253101, 1483200000, 1546272000, 1501253101, 1, 'normal');
INSERT INTO `fa_crontab` VALUES (2, 'sql', '查询一条SQL', 'SELECT 1;', '* * * * *', 0, 0, 13548, 1497071095, 1501253101, 1483200000, 1546272000, 1501253101, 2, 'normal');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) NULL DEFAULT NULL COMMENT '年',
  `times` time NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) NULL DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, NULL, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微信唯一ID',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码(默认123456)',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) NULL DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) NULL DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES (1, 1, '', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1516171614, '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员余额变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `fa_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `fa_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `fa_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `fa_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `fa_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `fa_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `fa_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `fa_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `fa_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `fa_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `fa_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员Token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '版本表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES (1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');

SET FOREIGN_KEY_CHECKS = 1;
