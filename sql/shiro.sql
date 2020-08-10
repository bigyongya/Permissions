/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost:3306
 Source Schema         : shiro

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : 65001

 Date: 24/07/2020 16:10:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '上级ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名',
  `type` smallint(6) NULL DEFAULT NULL COMMENT '类型 0、菜单 1、功能',
  `sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `perm_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限编码',
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态 0、禁用 1、正常',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'permission 权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 0, '用户', 0, 2, '-', '-', 'layui-icon', '系统管理员目录', 1, '2017-09-12 16:48:53', '2017-09-21 16:57:15');
INSERT INTO `permission` VALUES (2, 1, '用户管理', 0, 1, 'views/users', '-', '', '用户管理', 1, '2017-09-12 16:52:28', '2017-09-21 16:57:31');
INSERT INTO `permission` VALUES (3, 1, '角色管理', 0, 2, 'views/roles', '-', '', '角色管理', 1, '2017-09-12 16:52:34', '2017-09-21 16:58:33');
INSERT INTO `permission` VALUES (4, 1, '权限配置', 0, 3, 'views/operaterule', '-', '', '权限管理', 1, '2017-09-12 16:52:40', '2017-09-21 16:58:40');
INSERT INTO `permission` VALUES (5, 0, '主页', 0, 1, '-', '-', 'layui-icon', '主页', 1, '2017-09-12 16:52:45', '2017-11-05 14:37:16');
INSERT INTO `permission` VALUES (6, 5, '控制台', 0, 1, 'views/console', '-', '', '控制台', 1, '2020-07-20 16:34:31', '2020-07-20 16:34:33');
INSERT INTO `permission` VALUES (7, 5, '菜单管理', 0, 2, 'views/menu', '-', '', '菜单管理', 1, '2020-07-20 16:35:33', '2020-07-20 16:35:35');
INSERT INTO `permission` VALUES (8, 0, '商品管理', 0, 3, '-', '-', 'layui-icon', '商品管理目录', 1, '2020-07-24 15:56:16', '2020-07-24 15:56:20');
INSERT INTO `permission` VALUES (9, 8, '列表一', 0, 1, 'views/test1', '-', NULL, '列表一', 1, '2020-07-24 15:58:51', '2020-07-24 15:58:54');
INSERT INTO `permission` VALUES (10, 8, '列表二', 0, 2, 'views/test2', '-', NULL, '列表二', 1, '2020-07-24 15:59:22', '2020-07-24 15:59:24');
INSERT INTO `permission` VALUES (11, 8, '列表三', 0, 3, 'views/test2', '-', NULL, '列表三', 1, '2020-07-24 15:59:54', '2020-07-24 15:59:57');
INSERT INTO `permission` VALUES (12, 0, '解决方案', 0, 4, '-', '-', 'layui-icon', '解决方案', 1, '2020-07-24 16:00:58', '2020-07-24 16:01:00');
INSERT INTO `permission` VALUES (13, 12, '样本一', 0, 1, 'veiws/demo1', '-', NULL, '样本一', 1, '2020-07-24 16:02:16', '2020-07-24 16:02:19');
INSERT INTO `permission` VALUES (14, 12, '样本二', 0, 2, 'views/demo2', '-', NULL, '样本二', 1, '2020-07-24 16:02:23', '2020-07-24 16:02:21');
INSERT INTO `permission` VALUES (15, 12, '样本三', 0, 3, 'views/demo3', '-', NULL, '样本三', 1, '2020-07-24 16:02:28', '2020-07-24 16:02:26');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `sort` smallint(6) NULL DEFAULT NULL COMMENT '排序',
  `description` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` smallint(5) NULL DEFAULT NULL,
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'role 角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, '超级管理员', 1, '超级管理员', 1, '2017-09-12 17:04:33', '2017-09-12 17:04:35');
INSERT INTO `role` VALUES (9, '审批', 900, '审批员', 1, '2017-10-12 15:53:14', NULL);
INSERT INTO `role` VALUES (10, '测试无权限', 3000, '测试无权限', 1, '2017-11-05 14:35:16', '2017-11-05 14:35:24');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rid` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '权限ID',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'role_permission 角色权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (133, 9, 1, '2017-10-12 15:53:33', NULL);
INSERT INTO `role_permission` VALUES (134, 9, 2, '2017-10-12 15:53:33', NULL);
INSERT INTO `role_permission` VALUES (135, 9, 3, '2017-10-12 15:53:33', NULL);
INSERT INTO `role_permission` VALUES (136, 2, 1, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (137, 2, 2, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (138, 2, 3, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (139, 2, 4, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (140, 2, 5, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (141, 2, 6, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (142, 2, 7, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (143, 2, 8, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (144, 2, 9, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (145, 2, 10, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (146, 2, 11, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (147, 2, 12, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (148, 2, 15, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (149, 2, 13, '2017-10-12 15:56:28', NULL);
INSERT INTO `role_permission` VALUES (151, 9, 12, '2017-11-05 14:38:27', NULL);
INSERT INTO `role_permission` VALUES (152, 9, 13, '2017-11-05 14:38:27', NULL);
INSERT INTO `role_permission` VALUES (153, 2, 14, '2020-07-24 16:03:02', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '0、禁用 1、正常',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'user 用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'admin', 'admin', 'admin', '123', 'admin@qq.com', 1, '2017-09-13 09:40:18', '2017-09-13 09:40:20');
INSERT INTO `user` VALUES (115, 'qq', 'qq', 'qq', '1507637903315', 'XiaoBingBy@qq.com', 6, '2017-10-10 20:18:23', '2017-10-13 10:58:05');
INSERT INTO `user` VALUES (116, 'MM', 'MM', '00f1f98ac1894db39a46d8355d29ea6c', '1507794757173', 'XiaoBingBy@qq.com', 1, '2017-10-12 15:52:37', NULL);
INSERT INTO `user` VALUES (117, '123', '123', '123', '1508422236752', '123123@qq', 1, '2017-10-19 22:10:37', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '角色ID',
  `gmt_create` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'user_role 用户角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (20, 2, 2, '2017-09-21 17:07:07', NULL);
INSERT INTO `user_role` VALUES (21, 115, 9, '2017-10-12 15:53:52', NULL);
INSERT INTO `user_role` VALUES (22, 116, 10, '2017-11-05 14:35:36', NULL);
INSERT INTO `user_role` VALUES (23, 2, 9, '2020-07-24 16:04:39', NULL);
INSERT INTO `user_role` VALUES (24, 2, 10, '2020-07-24 16:04:41', NULL);

SET FOREIGN_KEY_CHECKS = 1;
