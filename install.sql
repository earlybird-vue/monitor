/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : moniter

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 11/02/2019 10:55:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oa_admin
-- ----------------------------
DROP TABLE IF EXISTS `oa_admin`;
CREATE TABLE `oa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_admin
-- ----------------------------
INSERT INTO `oa_admin` VALUES (1, 'admin', 'Admin', 'f2c318cfb7b3b4018a47b50e4b301a2e', '0d7c9d', '/assets/img/avatar.png', '939942478@qq.com', 0, 1549849866, 1492186163, 1549849866, 'ddfd6d0c-42e4-451d-97ac-3d7505350568', 'normal');

-- ----------------------------
-- Table structure for oa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_admin_log`;
CREATE TABLE `oa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_admin_log
-- ----------------------------
INSERT INTO `oa_admin_log` VALUES (1, 1, 'admin', '/index.php/admin/index/login', '登录', '{\"__token__\":\"de4d56ddb7b276a7d10b008d156c741f\",\"username\":\"admin\",\"captcha\":\"KHER\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548319559);
INSERT INTO `oa_admin_log` VALUES (2, 1, 'admin', '/admin_moniter.php/index/login', '登录', '{\"__token__\":\"91456468af2a5f5243e6af76f63722a3\",\"username\":\"admin\",\"captcha\":\"wp36\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548320144);
INSERT INTO `oa_admin_log` VALUES (3, 1, 'admin', '/admin_moniter.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"email\",\"title\":\"\\u90ae\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-puzzle-piece\",\"weigh\":\"0\",\"condition\":\"email\",\"remark\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548394879);
INSERT INTO `oa_admin_log` VALUES (4, 1, 'admin', '/admin_moniter.php/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548394881);
INSERT INTO `oa_admin_log` VALUES (5, 1, 'admin', '/admin_moniter.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"email\\/tempale\",\"title\":\"\\u6a21\\u677f\\u7ba1\\u7406\",\"icon\":\"fa fa-th-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\\u6a21\\u677f\\u7ba1\\u7406\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548394994);
INSERT INTO `oa_admin_log` VALUES (6, 1, 'admin', '/admin_moniter.php/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548394996);
INSERT INTO `oa_admin_log` VALUES (7, 1, 'admin', '/admin_moniter.php/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548396626);
INSERT INTO `oa_admin_log` VALUES (8, 1, 'admin', '/admin_moniter.php/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548396646);
INSERT INTO `oa_admin_log` VALUES (9, 1, 'admin', '/admin_moniter.php/auth/group/roletree', '', '{\"id\":\"4\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548396665);
INSERT INTO `oa_admin_log` VALUES (10, 1, 'admin', '/admin_moniter.php/auth/rule/edit/ids/86?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"email\\/template\",\"title\":\"\\u6a21\\u677f\\u7ba1\\u7406\",\"icon\":\"fa fa-th-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\\u6a21\\u677f\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"86\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548400395);
INSERT INTO `oa_admin_log` VALUES (11, 1, 'admin', '/admin_moniter.php/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548400398);
INSERT INTO `oa_admin_log` VALUES (12, 1, 'admin', '/admin_moniter.php/auth/rule/edit/ids/86?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"85\",\"name\":\"email\\/template\",\"title\":\"\\u90ae\\u4ef6\\u6a21\\u677f\\u7ba1\\u7406\",\"icon\":\"fa fa-th-list\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\\u90ae\\u4ef6\\u6a21\\u677f\\u7ba1\\u7406\",\"status\":\"normal\"},\"ids\":\"86\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548406305);
INSERT INTO `oa_admin_log` VALUES (13, 1, 'admin', '/admin_moniter.php/index/index', '', '{\"action\":\"refreshmenu\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548406307);
INSERT INTO `oa_admin_log` VALUES (14, 1, 'admin', '/admin_moniter.php/auth/group/roletree', '', '{\"id\":\"2\",\"pid\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548412208);
INSERT INTO `oa_admin_log` VALUES (15, 1, 'admin', '/admin_moniter.php/email/template/edit/ids/21?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"register_link\",\"language\":\"chinese\",\"subject\":\"EPFO \\u5e73\\u53f0\\u6ce8\\u518c\\u901a\\u77e5\",\"content\":\"\\u901a\\u77e5\\u5185\\u5bb9\",\"status\":\"normal\"},\"ids\":\"21\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548412999);
INSERT INTO `oa_admin_log` VALUES (16, 1, 'admin', '/admin_moniter.php/index/login?url=%2Fadmin_moniter.php', '登录', '{\"url\":\"\\/admin_moniter.php\",\"__token__\":\"142ba82aa9d37377672e05c8756725ca\",\"username\":\"admin\",\"captcha\":\"EJND\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548638229);
INSERT INTO `oa_admin_log` VALUES (17, 1, 'admin', '/admin_moniter.php/index/login?url=%2Fadmin_moniter.php', '', '{\"url\":\"\\/admin_moniter.php\",\"__token__\":\"142ba82aa9d37377672e05c8756725ca\",\"username\":\"admin\",\"captcha\":\"EJND\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548638233);
INSERT INTO `oa_admin_log` VALUES (18, 1, 'admin', '/admin_moniter.php/email/template/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"register_link_test\",\"language\":\"english\",\"subject\":\"EPFO\\u5e73\\u53f0\\u6ce8\\u518c\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548639932);
INSERT INTO `oa_admin_log` VALUES (19, 1, 'admin', '/admin_moniter.php/email/template/edit/ids/23?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"register_link_test\",\"language\":\"english\",\"subject\":\"EPFO\\u5e73\\u53f0\\u6ce8\\u518c\\u901a\\u77e5\\u6d4b\\u8bd5\",\"content\":\"\\u6d4b\\u8bd5\",\"status\":\"normal\"},\"ids\":\"23\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548639954);
INSERT INTO `oa_admin_log` VALUES (20, 1, 'admin', '/admin_moniter.php/email/template/del/ids/23', '', '{\"action\":\"del\",\"ids\":\"23\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548640270);
INSERT INTO `oa_admin_log` VALUES (21, 1, 'admin', '/admin_moniter.php/email/template/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u6d4b\\u8bd5\",\"language\":\"english\",\"subject\":\"\\u6d4b\\u8bd5\",\"content\":\"\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548640428);
INSERT INTO `oa_admin_log` VALUES (22, 1, 'admin', '/admin_moniter.php/email/template/del/ids/24', '', '{\"action\":\"del\",\"ids\":\"24\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548640438);
INSERT INTO `oa_admin_log` VALUES (23, 1, 'admin', '/admin_moniter.php/email/template/add?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"test template\",\"language\":\"english\",\"subject\":\"hello\",\"content\":\"hello\",\"status\":\"normal\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548641138);
INSERT INTO `oa_admin_log` VALUES (24, 1, 'admin', '/admin_moniter.php/email/template/edit/ids/25?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"test template\",\"language\":\"english\",\"subject\":\"hello\",\"content\":\"helloa\",\"status\":\"normal\"},\"ids\":\"25\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548641153);
INSERT INTO `oa_admin_log` VALUES (25, 1, 'admin', '/admin_moniter.php/email/template/edit/ids/25?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"test template\",\"language\":\"english\",\"subject\":\"hello\",\"content\":\"helloaaaa\",\"status\":\"normal\"},\"ids\":\"25\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548641588);
INSERT INTO `oa_admin_log` VALUES (26, 1, 'admin', '/admin_moniter.php/index/login?url=%2Fadmin_moniter.php', '登录', '{\"url\":\"\\/admin_moniter.php\",\"__token__\":\"a182426243040487f9fa1ee0f37a8398\",\"username\":\"admin\",\"captcha\":\"X3RB\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548647545);
INSERT INTO `oa_admin_log` VALUES (27, 1, 'admin', '/admin_moniter.php/apilog/add?dialog=1', 'AIP请求日志管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\/group\\/list\",\"apicontent\":\"\\u8bf7\\u6c42\\u5185\\u5bb9\\u554a\",\"ip\":\"192.168.123.134\",\"status\":\"1\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548647835);
INSERT INTO `oa_admin_log` VALUES (28, 1, 'admin', '/admin_moniter.php/apilog/add?dialog=1', 'AIP请求日志管理 添加', '{\"dialog\":\"1\",\"row\":{\"name\":\"company\\/list\",\"apicontent\":\"\\u516c\\u53f8\\u5217\\u8868\\u5185\\u5bb9\\u4f53\",\"ip\":\"192.168.134.456\",\"status\":\"1\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548647870);
INSERT INTO `oa_admin_log` VALUES (29, 1, 'admin', '/admin_moniter.php/apilog/del/ids/2', 'AIP请求日志管理 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548657858);
INSERT INTO `oa_admin_log` VALUES (30, 1, 'admin', '/admin_moniter.php/email/logs/add?dialog=1', '邮件管理 邮件发送记录管理 添加', '{\"dialog\":\"1\",\"row\":{\"template_code\":\"25\",\"from_email\":\"939942478@qq.com\",\"to_email\":\"1874299065@qq.com\",\"subject\":\"hello\",\"content\":\"hello,\\u6211\\u4eec\\u770b\\u4f60\\u4eec\\u5f88\\u5389\\u5bb3\\u554a\",\"status\":\"1\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548658561);
INSERT INTO `oa_admin_log` VALUES (31, 1, 'admin', '/admin_moniter.php/email/logs/edit/ids/1?dialog=1', '邮件管理 邮件发送记录管理 编辑', '{\"dialog\":\"1\",\"row\":{\"template_code\":\"25\",\"from_email\":\"939942478@qq.com\",\"to_email\":\"1874299065@qq.com\",\"subject\":\"hello\",\"content\":\"hello,\\u6211\\u4eec\\u770b\\u4f60\\u4eec\\u5f88\\u5389\\u5bb3\\u554a,\\u60a8\\u597d\\u554a\",\"status\":\"0\"},\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548658713);
INSERT INTO `oa_admin_log` VALUES (32, 1, 'admin', '/admin_moniter.php/email/logs/edit/ids/1?dialog=1', '邮件管理 邮件发送记录管理 编辑', '{\"dialog\":\"1\",\"row\":{\"template_code\":\"25\",\"from_email\":\"939942478@qq.com\",\"to_email\":\"1874299065@qq.com\",\"subject\":\"hello\",\"content\":\"hello,\\u6211\\u4eec\\u770b\\u4f60\\u4eec\\u5f88\\u5389\\u5bb3\\u554a,\\u60a8\\u597d\\u554a\",\"status\":\"1\"},\"ids\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548658720);
INSERT INTO `oa_admin_log` VALUES (33, 1, 'admin', '/admin_moniter.php/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.126.com\",\"mail_smtp_port\":\"25\",\"mail_smtp_user\":\"liulinyan521\",\"mail_smtp_pass\":\"liulinyan\",\"mail_verify_type\":\"2\",\"mail_from\":\"liulinyan521@126.com\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548658978);
INSERT INTO `oa_admin_log` VALUES (34, 1, 'admin', '/admin_moniter.php/general/config/emailtest?receiver=939942478@qq.com', '', '{\"receiver\":\"939942478@qq.com\",\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.126.com\",\"mail_smtp_port\":\"25\",\"mail_smtp_user\":\"liulinyan521\",\"mail_smtp_pass\":\"liulinyan\",\"mail_verify_type\":\"2\",\"mail_from\":\"liulinyan521@126.com\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548658992);
INSERT INTO `oa_admin_log` VALUES (35, 1, 'admin', '/admin_moniter.php/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.126.com\",\"mail_smtp_port\":\"25\",\"mail_smtp_user\":\"liulinyan521@126.com\",\"mail_smtp_pass\":\"liulinyan\",\"mail_verify_type\":\"2\",\"mail_from\":\"liulinyan521@126.com\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548659038);
INSERT INTO `oa_admin_log` VALUES (36, 1, 'admin', '/admin_moniter.php/general/config/emailtest?receiver=939942478@qq.com', '', '{\"receiver\":\"939942478@qq.com\",\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.126.com\",\"mail_smtp_port\":\"25\",\"mail_smtp_user\":\"liulinyan521@126.com\",\"mail_smtp_pass\":\"liulinyan\",\"mail_verify_type\":\"2\",\"mail_from\":\"liulinyan521@126.com\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548659054);
INSERT INTO `oa_admin_log` VALUES (37, 1, 'admin', '/admin_moniter.php/general.config/edit', '常规管理 系统配置 编辑', '{\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.126.com\",\"mail_smtp_port\":\"25\",\"mail_smtp_user\":\"liulinyan521@126.com\",\"mail_smtp_pass\":\"liulinyan\",\"mail_verify_type\":\"0\",\"mail_from\":\"liulinyan521@126.com\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548659095);
INSERT INTO `oa_admin_log` VALUES (38, 1, 'admin', '/admin_moniter.php/general/config/emailtest?receiver=939942478@qq.com', '', '{\"receiver\":\"939942478@qq.com\",\"row\":{\"mail_type\":\"1\",\"mail_smtp_host\":\"smtp.126.com\",\"mail_smtp_port\":\"25\",\"mail_smtp_user\":\"liulinyan521@126.com\",\"mail_smtp_pass\":\"liulinyan\",\"mail_verify_type\":\"0\",\"mail_from\":\"liulinyan521@126.com\"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548659105);
INSERT INTO `oa_admin_log` VALUES (39, 0, 'Unknown', '/admin_moniter.php/index/login?url=%2Fadmin_moniter.php', '', '{\"url\":\"\\/admin_moniter.php\",\"__token__\":\"67cbff8b7a336082c574647e14534218\",\"username\":\"admin\",\"captcha\":\"63BX\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548741426);
INSERT INTO `oa_admin_log` VALUES (40, 1, 'admin', '/admin_moniter.php/index/login?url=%2Fadmin_moniter.php', '登录', '{\"url\":\"\\/admin_moniter.php\",\"__token__\":\"8e3f05eb0131b1de8cb83ff4c2d05b6f\",\"username\":\"admin\",\"captcha\":\"ZFbE\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1548741436);
INSERT INTO `oa_admin_log` VALUES (41, 1, 'admin', '/admin_moniter.php/index/login?url=%2Fadmin_moniter.php', '登录', '{\"url\":\"\\/admin_moniter.php\",\"__token__\":\"fed3ec8bdb1675a606bf0ed717536548\",\"username\":\"admin\",\"captcha\":\"ERZY\",\"keeplogin\":\"1\"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', 1549849867);

-- ----------------------------
-- Table structure for oa_api_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_api_log`;
CREATE TABLE `oa_api_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'api名称',
  `apicontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'api请求的body体',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'api请求的IP地址',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `status` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态:0=失败,1=正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'AIP请求日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_apilog
-- ----------------------------
DROP TABLE IF EXISTS `oa_apilog`;
CREATE TABLE `oa_apilog`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'api名称',
  `apicontent` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'api请求的body体',
  `ip` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'api请求的IP地址',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `status` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态:0=失败,1=正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 461 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'AIP请求日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_apilog
-- ----------------------------
INSERT INTO `oa_apilog` VALUES (1, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548754217, '1');
INSERT INTO `oa_apilog` VALUES (2, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548754220, '1');
INSERT INTO `oa_apilog` VALUES (3, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548754235, '1');
INSERT INTO `oa_apilog` VALUES (4, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548754235, '1');
INSERT INTO `oa_apilog` VALUES (5, '/market/create', '[{\"f_group_code\":\"jt_25971872021611758\",\"f_company_code\":\"gs_25971872021611761\",\"f_market_name\":\"\\u6d4b\\u8bd592\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd592\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"f_authorized_user_code\":[\"ct_25971872021611759\"],\"f_charge_user_code\":\"ct_25971872021611759\"},{\"f_group_code\":\"jt_25971872021611758\",\"f_company_code\":\"gs_25971872021611762\",\"f_market_name\":\"\\u6d4b\\u8bd593\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd593\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"f_authorized_user_code\":[\"ct_25971872021611759\"],\"f_charge_user_code\":\"ct_25971872021611759\"}]', '192.168.1.104', 1548754255, '1');
INSERT INTO `oa_apilog` VALUES (6, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548754661, '1');
INSERT INTO `oa_apilog` VALUES (7, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548754663, '1');
INSERT INTO `oa_apilog` VALUES (8, '/group/create', '{\"f_name\":\"\\u6d4b\\u8bd5100\",\"f_web_site\":\"www.test100\",\"f_group_number\":\"144223\",\"f_address\":\"\\u6df1\\u5733\\u7f57\\u6e56\",\"f_industry_id\":1,\"f_country_id\":1,\"f_type_id\":4,\"f_contact_phone\":\"0755-26337877\",\"f_fiscal_month\":\"1\"}', '192.168.1.104', 1548754694, '1');
INSERT INTO `oa_apilog` VALUES (9, '/contact/create', '[{\"f_first_name\":\"\\u6d4b\\u8bd5101\",\"f_last_name\":\"\\u5f20\",\"f_user_position\":\"\\u603b\\u7ecf\\u7406\",\"f_user_phone\":\"13466223311\",\"f_user_email\":\"ceshi101@163.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_25971872021611775\"},{\"f_first_name\":\"\\u6d4b\\u8bd5102\",\"f_last_name\":\"\\u5f20\",\"f_user_position\":\"\\u526f\\u603b\\u7ecf\\u7406\",\"f_user_phone\":\"13166772222\",\"f_user_email\":\"ceshi102@163.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_25971872021611775\"}]', '192.168.1.104', 1548754757, '1');
INSERT INTO `oa_apilog` VALUES (10, '/finance/create', '{\"f_group_code\":\"jt_25971872021611775\",\"f_sale_volume_id\":\"1\",\"f_sale_volume\":\"12345\",\"f_purhchase_volume_id\":\"1\",\"f_purhchase_volume\":\"23456\",\"f_cashflow_volume_id\":\"1\",\"f_cashflow_volume\":\"34567\"}', '192.168.1.104', 1548754768, '1');
INSERT INTO `oa_apilog` VALUES (11, '/company/create', '[{\"f_name\":\"\\u6d4b\\u8bd5103\",\"f_en_name\":\"test103\",\"f_group_code\":\"jt_25971872021611775\"},{\"f_name\":\"\\u6d4b\\u8bd5104\",\"f_en_name\":\"test104\",\"f_group_code\":\"jt_25971872021611775\"}]', '192.168.1.104', 1548754788, '1');
INSERT INTO `oa_apilog` VALUES (12, '/company/list/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548754790, '1');
INSERT INTO `oa_apilog` VALUES (13, '/contact/getCharge/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548754790, '1');
INSERT INTO `oa_apilog` VALUES (14, '/contact/getCharge/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548754852, '1');
INSERT INTO `oa_apilog` VALUES (15, '/company/list/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548754854, '1');
INSERT INTO `oa_apilog` VALUES (16, '/market/create', '[{\"f_group_code\":\"jt_25971872021611775\",\"f_company_code\":\"gs_25971872021611779\",\"f_market_name\":\"\\u6d4b\\u8bd5103\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5103\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5101\",\"f_authorized_user_code\":[\"ct_25971872021611776\"],\"f_charge_user_code\":\"ct_25971872021611776\"},{\"f_group_code\":\"jt_25971872021611775\",\"f_company_code\":\"gs_25971872021611780\",\"f_market_name\":\"\\u6d4b\\u8bd5104\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5104\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5102\",\"f_authorized_user_code\":[\"ct_25971872021611777\"],\"f_charge_user_code\":\"ct_25971872021611777\"}]', '192.168.1.104', 1548754888, '1');
INSERT INTO `oa_apilog` VALUES (17, '/contact/getCharge/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548755395, '1');
INSERT INTO `oa_apilog` VALUES (18, '/company/list/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548755398, '1');
INSERT INTO `oa_apilog` VALUES (19, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548755401, '1');
INSERT INTO `oa_apilog` VALUES (20, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548755771, '1');
INSERT INTO `oa_apilog` VALUES (21, '/group/create', '{\"f_name\":\"\\u6d4b\\u8bd5110\",\"f_web_site\":\"www.test110.com\",\"f_group_number\":\"1442211\",\"f_address\":\"\\u6df1\\u5733\\u7f57\\u6e56\",\"f_industry_id\":1,\"f_country_id\":1,\"f_type_id\":4,\"f_contact_phone\":\"075527771313\",\"f_fiscal_month\":\"1\"}', '192.168.1.104', 1548755804, '1');
INSERT INTO `oa_apilog` VALUES (22, '/contact/create', '[{\"f_first_name\":\"\\u6d4b\\u8bd5111\",\"f_last_name\":\"\\u5f20\",\"f_user_position\":\"\\u603b\\u7ecf\\u7406\",\"f_user_phone\":\"13477772222\",\"f_user_email\":\"ceshi111@163.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_25971872021611785\"},{\"f_first_name\":\"\\u6d4b\\u8bd5112\",\"f_last_name\":\"\\u5f20\",\"f_user_position\":\"\\u526f\\u603b\\u7ecf\\u7406\",\"f_user_phone\":\"13566612223\",\"f_user_email\":\"ceshi112@163.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_25971872021611785\"}]', '192.168.1.104', 1548755856, '1');
INSERT INTO `oa_apilog` VALUES (23, '/finance/create', '{\"f_group_code\":\"jt_25971872021611785\",\"f_sale_volume_id\":\"1\",\"f_sale_volume\":\"123456\",\"f_purhchase_volume_id\":\"1\",\"f_purhchase_volume\":\"234566\",\"f_cashflow_volume_id\":\"1\",\"f_cashflow_volume\":\"345678\"}', '192.168.1.104', 1548755869, '1');
INSERT INTO `oa_apilog` VALUES (24, '/company/create', '[{\"f_name\":\"\\u6d4b\\u8bd5113\",\"f_en_name\":\"test113\",\"f_group_code\":\"jt_25971872021611785\"},{\"f_name\":\"\\u6d4b\\u8bd5114\",\"f_en_name\":\"test114\",\"f_group_code\":\"jt_25971872021611785\"}]', '192.168.1.104', 1548755896, '1');
INSERT INTO `oa_apilog` VALUES (25, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548755898, '1');
INSERT INTO `oa_apilog` VALUES (26, '/contact/getCharge/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548755898, '1');
INSERT INTO `oa_apilog` VALUES (27, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548755926, '1');
INSERT INTO `oa_apilog` VALUES (28, '/contact/getCharge/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548755926, '1');
INSERT INTO `oa_apilog` VALUES (29, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548755950, '1');
INSERT INTO `oa_apilog` VALUES (30, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548755959, '1');
INSERT INTO `oa_apilog` VALUES (31, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756027, '1');
INSERT INTO `oa_apilog` VALUES (32, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756057, '1');
INSERT INTO `oa_apilog` VALUES (33, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756175, '1');
INSERT INTO `oa_apilog` VALUES (34, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756204, '1');
INSERT INTO `oa_apilog` VALUES (35, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756234, '1');
INSERT INTO `oa_apilog` VALUES (36, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756342, '1');
INSERT INTO `oa_apilog` VALUES (37, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756378, '1');
INSERT INTO `oa_apilog` VALUES (38, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756407, '1');
INSERT INTO `oa_apilog` VALUES (39, '/market/create', '[{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611789\",\"f_market_name\":\"\\u6d4b\\u8bd5113\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5113\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5111\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611786\"},{\"f_group_code\":\"jt_25971872021611785\",\"f_company_code\":\"gs_25971872021611790\",\"f_market_name\":\"\\u6d4b\\u8bd5114\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6d4b\\u8bd5114\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd5112\",\"f_authorized_user_code\":[\"ct_25971872021611786\",\"ct_25971872021611787\"],\"f_charge_user_code\":\"ct_25971872021611787\"}]', '192.168.1.104', 1548756441, '1');
INSERT INTO `oa_apilog` VALUES (40, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548757107, '1');
INSERT INTO `oa_apilog` VALUES (41, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548757110, '1');
INSERT INTO `oa_apilog` VALUES (42, '/group/get/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548757110, '1');
INSERT INTO `oa_apilog` VALUES (43, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548757110, '1');
INSERT INTO `oa_apilog` VALUES (44, '/company/get/gs_25971872021611789', '{\"code\":\"gs_25971872021611789\"}', '192.168.1.104', 1548757129, '1');
INSERT INTO `oa_apilog` VALUES (45, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548757132, '1');
INSERT INTO `oa_apilog` VALUES (46, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548757138, '1');
INSERT INTO `oa_apilog` VALUES (47, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548757179, '1');
INSERT INTO `oa_apilog` VALUES (48, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548757181, '1');
INSERT INTO `oa_apilog` VALUES (49, '/group/create', '{\"f_name\":\"1\",\"f_web_site\":\"1\",\"f_group_number\":\"11\",\"f_address\":\"11\",\"f_industry_id\":1,\"f_country_id\":1,\"f_type_id\":5,\"f_contact_phone\":\"11\",\"f_fiscal_month\":\"1\"}', '192.168.1.104', 1548757192, '1');
INSERT INTO `oa_apilog` VALUES (50, '/contact/create', '[{\"f_first_name\":\"1\",\"f_last_name\":\"1\",\"f_user_position\":\"1\",\"f_user_phone\":\"1\",\"f_user_email\":\"11\",\"f_user_role\":[\"enterprise\"],\"f_group_code\":\"jt_25971872021611857\"}]', '192.168.1.104', 1548757209, '1');
INSERT INTO `oa_apilog` VALUES (51, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548757235, '1');
INSERT INTO `oa_apilog` VALUES (52, '/group/get/jt_25971872021611857', '{\"code\":\"jt_25971872021611857\"}', '192.168.1.104', 1548757239, '1');
INSERT INTO `oa_apilog` VALUES (53, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548757239, '1');
INSERT INTO `oa_apilog` VALUES (54, '/company/list/jt_25971872021611857', '{\"code\":\"jt_25971872021611857\"}', '192.168.1.104', 1548757239, '1');
INSERT INTO `oa_apilog` VALUES (55, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548760411, '1');
INSERT INTO `oa_apilog` VALUES (56, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548760413, '1');
INSERT INTO `oa_apilog` VALUES (57, '/group/create', '{\"f_name\":\"\\u6d4b\\u8bd5120\",\"f_web_site\":\"www.test120.com\",\"f_group_number\":\"144551\",\"f_address\":\"\\u6df1\\u5733\\u798f\\u7530\",\"f_industry_id\":1,\"f_country_id\":1,\"f_type_id\":4,\"f_contact_phone\":\"0755-26447722\",\"f_fiscal_month\":\"1\"}', '192.168.1.104', 1548760442, '1');
INSERT INTO `oa_apilog` VALUES (58, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548760446, '1');
INSERT INTO `oa_apilog` VALUES (59, '/group/create', '{\"f_name\":\"\\u6d4b\\u8bd5130\",\"f_web_site\":\"www.test130.com\",\"f_group_number\":\"1452323\",\"f_address\":\"\\u6df1\\u5733\\u798f\\u7530\",\"f_industry_id\":1,\"f_country_id\":1,\"f_type_id\":4,\"f_contact_phone\":\"0755-27271112\",\"f_fiscal_month\":\"3\"}', '192.168.1.104', 1548760558, '1');
INSERT INTO `oa_apilog` VALUES (60, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548760563, '1');
INSERT INTO `oa_apilog` VALUES (61, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548814448, '1');
INSERT INTO `oa_apilog` VALUES (62, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548814450, '1');
INSERT INTO `oa_apilog` VALUES (63, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548814909, '1');
INSERT INTO `oa_apilog` VALUES (64, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548814917, '1');
INSERT INTO `oa_apilog` VALUES (65, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548814927, '1');
INSERT INTO `oa_apilog` VALUES (66, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548814929, '1');
INSERT INTO `oa_apilog` VALUES (67, '/group/create', '{\"f_name\":\"\\u6d4b\\u8bd5140\",\"f_web_site\":\"www.test140.com\",\"f_group_number\":\"13546\",\"f_address\":\"\\u6df1\\u5733\\u798f\\u7530\",\"f_industry_id\":1,\"f_country_id\":2,\"f_type_id\":4,\"f_contact_phone\":\"0888\",\"f_fiscal_month\":\"2\"}', '192.168.1.104', 1548814961, '1');
INSERT INTO `oa_apilog` VALUES (68, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548814965, '1');
INSERT INTO `oa_apilog` VALUES (69, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548815871, '1');
INSERT INTO `oa_apilog` VALUES (70, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548815874, '1');
INSERT INTO `oa_apilog` VALUES (71, '/group/get/jt_25971872021611861', '{\"code\":\"jt_25971872021611861\"}', '192.168.1.104', 1548815896, '1');
INSERT INTO `oa_apilog` VALUES (72, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548815896, '1');
INSERT INTO `oa_apilog` VALUES (73, '/company/list/jt_25971872021611861', '{\"code\":\"jt_25971872021611861\"}', '192.168.1.104', 1548815896, '1');
INSERT INTO `oa_apilog` VALUES (74, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548815916, '1');
INSERT INTO `oa_apilog` VALUES (75, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548815920, '1');
INSERT INTO `oa_apilog` VALUES (76, '/group/get/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548815921, '1');
INSERT INTO `oa_apilog` VALUES (77, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548815921, '1');
INSERT INTO `oa_apilog` VALUES (78, '/company/get/gs_25971872021611789', '{\"code\":\"gs_25971872021611789\"}', '192.168.1.104', 1548815925, '1');
INSERT INTO `oa_apilog` VALUES (79, '/company/update', '{\"f_name\":\"\\u6d4b\\u8bd5114\",\"f_en_name\":\"test114\",\"f_code\":\"gs_25971872021611789\",\"f_status\":1}', '192.168.1.104', 1548815935, '1');
INSERT INTO `oa_apilog` VALUES (80, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548815935, '1');
INSERT INTO `oa_apilog` VALUES (81, '/company/get/gs_25971872021611789', '{\"code\":\"gs_25971872021611789\"}', '192.168.1.104', 1548815937, '1');
INSERT INTO `oa_apilog` VALUES (82, '/company/get/gs_25971872021611789', '{\"code\":\"gs_25971872021611789\"}', '192.168.1.104', 1548815941, '1');
INSERT INTO `oa_apilog` VALUES (83, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548816864, '1');
INSERT INTO `oa_apilog` VALUES (84, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548816866, '1');
INSERT INTO `oa_apilog` VALUES (85, '/group/get/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548816866, '1');
INSERT INTO `oa_apilog` VALUES (86, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548816867, '1');
INSERT INTO `oa_apilog` VALUES (87, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548816871, '1');
INSERT INTO `oa_apilog` VALUES (88, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548816871, '1');
INSERT INTO `oa_apilog` VALUES (89, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548816871, '1');
INSERT INTO `oa_apilog` VALUES (90, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548816982, '1');
INSERT INTO `oa_apilog` VALUES (91, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548816984, '1');
INSERT INTO `oa_apilog` VALUES (92, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548816985, '1');
INSERT INTO `oa_apilog` VALUES (93, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548816985, '1');
INSERT INTO `oa_apilog` VALUES (94, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548816987, '1');
INSERT INTO `oa_apilog` VALUES (95, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548816987, '1');
INSERT INTO `oa_apilog` VALUES (96, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548816987, '1');
INSERT INTO `oa_apilog` VALUES (97, '/company/create', '{\"f_name\":\"\\u6d4b\\u8bd587\",\"f_en_name\":\"test87\",\"f_group_code\":\"gs_25971872021611756\"}', '192.168.1.104', 1548817007, '1');
INSERT INTO `oa_apilog` VALUES (98, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817056, '1');
INSERT INTO `oa_apilog` VALUES (99, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817056, '1');
INSERT INTO `oa_apilog` VALUES (100, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817056, '1');
INSERT INTO `oa_apilog` VALUES (101, '/company/create', '[{\"f_name\":\"\\u6d4b\\u8bd588\",\"f_en_name\":\"test88\",\"f_group_code\":\"gs_25971872021611756\"}]', '192.168.1.104', 1548817072, '1');
INSERT INTO `oa_apilog` VALUES (102, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817072, '1');
INSERT INTO `oa_apilog` VALUES (103, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817258, '1');
INSERT INTO `oa_apilog` VALUES (104, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817261, '1');
INSERT INTO `oa_apilog` VALUES (105, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817261, '1');
INSERT INTO `oa_apilog` VALUES (106, '/company/create', '[{\"f_name\":\"\\u6d4b\\u8bd589\",\"f_en_name\":\"test89\",\"f_group_code\":\"gs_25971872021611756\"}]', '192.168.1.104', 1548817281, '1');
INSERT INTO `oa_apilog` VALUES (107, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817281, '1');
INSERT INTO `oa_apilog` VALUES (108, '/index/sync', '[]', '0.0.0.0', 1548817283, '1');
INSERT INTO `oa_apilog` VALUES (109, '/index/sync', '[]', '0.0.0.0', 1548817388, '1');
INSERT INTO `oa_apilog` VALUES (110, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817400, '1');
INSERT INTO `oa_apilog` VALUES (111, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817403, '1');
INSERT INTO `oa_apilog` VALUES (112, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817403, '1');
INSERT INTO `oa_apilog` VALUES (113, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817410, '1');
INSERT INTO `oa_apilog` VALUES (114, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817410, '1');
INSERT INTO `oa_apilog` VALUES (115, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817410, '1');
INSERT INTO `oa_apilog` VALUES (116, '/index/sync', '[]', '0.0.0.0', 1548817417, '1');
INSERT INTO `oa_apilog` VALUES (117, '/company/create', '[{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"\"}]', '192.168.1.104', 1548817484, '1');
INSERT INTO `oa_apilog` VALUES (118, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817484, '1');
INSERT INTO `oa_apilog` VALUES (119, '/company/create', '[{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"\"}]', '192.168.1.104', 1548817519, '1');
INSERT INTO `oa_apilog` VALUES (120, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817519, '1');
INSERT INTO `oa_apilog` VALUES (121, '/company/create', '[{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"\"}]', '192.168.1.104', 1548817546, '1');
INSERT INTO `oa_apilog` VALUES (122, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817546, '1');
INSERT INTO `oa_apilog` VALUES (123, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817588, '1');
INSERT INTO `oa_apilog` VALUES (124, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817588, '1');
INSERT INTO `oa_apilog` VALUES (125, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817588, '1');
INSERT INTO `oa_apilog` VALUES (126, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817833, '1');
INSERT INTO `oa_apilog` VALUES (127, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817836, '1');
INSERT INTO `oa_apilog` VALUES (128, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817836, '1');
INSERT INTO `oa_apilog` VALUES (129, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817899, '1');
INSERT INTO `oa_apilog` VALUES (130, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817901, '1');
INSERT INTO `oa_apilog` VALUES (131, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817901, '1');
INSERT INTO `oa_apilog` VALUES (132, '/company/create', '[{\"f_name\":\"\\u6d4b\\u8bd589\",\"f_en_name\":\"test89\",\"f_group_code\":\"jt_25971872021611753\"}]', '192.168.1.104', 1548817916, '1');
INSERT INTO `oa_apilog` VALUES (133, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817916, '1');
INSERT INTO `oa_apilog` VALUES (134, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548817961, '1');
INSERT INTO `oa_apilog` VALUES (135, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817961, '1');
INSERT INTO `oa_apilog` VALUES (136, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548817961, '1');
INSERT INTO `oa_apilog` VALUES (137, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548817999, '1');
INSERT INTO `oa_apilog` VALUES (138, '/company/list/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548818004, '1');
INSERT INTO `oa_apilog` VALUES (139, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818004, '1');
INSERT INTO `oa_apilog` VALUES (140, '/group/get/jt_25971872021611753', '{\"code\":\"jt_25971872021611753\"}', '192.168.1.104', 1548818004, '1');
INSERT INTO `oa_apilog` VALUES (141, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548818026, '1');
INSERT INTO `oa_apilog` VALUES (142, '/company/list/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818031, '1');
INSERT INTO `oa_apilog` VALUES (143, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818031, '1');
INSERT INTO `oa_apilog` VALUES (144, '/group/get/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818031, '1');
INSERT INTO `oa_apilog` VALUES (145, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548818052, '1');
INSERT INTO `oa_apilog` VALUES (146, '/company/list/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818064, '1');
INSERT INTO `oa_apilog` VALUES (147, '/group/get/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818064, '1');
INSERT INTO `oa_apilog` VALUES (148, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818064, '1');
INSERT INTO `oa_apilog` VALUES (149, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818339, '1');
INSERT INTO `oa_apilog` VALUES (150, '/group/get/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818342, '1');
INSERT INTO `oa_apilog` VALUES (151, '/company/list/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818342, '1');
INSERT INTO `oa_apilog` VALUES (152, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818395, '1');
INSERT INTO `oa_apilog` VALUES (153, '/company/list/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818395, '1');
INSERT INTO `oa_apilog` VALUES (154, '/group/get/jt_25971872021611747', '{\"code\":\"jt_25971872021611747\"}', '192.168.1.104', 1548818395, '1');
INSERT INTO `oa_apilog` VALUES (155, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548818475, '1');
INSERT INTO `oa_apilog` VALUES (156, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818670, '1');
INSERT INTO `oa_apilog` VALUES (157, '/group/get/jt_25971872021611742', '{\"code\":\"jt_25971872021611742\"}', '192.168.1.104', 1548818670, '1');
INSERT INTO `oa_apilog` VALUES (158, '/company/list/jt_25971872021611742', '{\"code\":\"jt_25971872021611742\"}', '192.168.1.104', 1548818670, '1');
INSERT INTO `oa_apilog` VALUES (159, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548818680, '1');
INSERT INTO `oa_apilog` VALUES (160, '/market/list/null', '{\"code\":\"null\"}', '192.168.1.104', 1548818685, '1');
INSERT INTO `oa_apilog` VALUES (161, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548818685, '1');
INSERT INTO `oa_apilog` VALUES (162, '/group/get/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548818685, '1');
INSERT INTO `oa_apilog` VALUES (163, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548818867, '1');
INSERT INTO `oa_apilog` VALUES (164, '/market/list/gs_25971872021611789', '{\"code\":\"gs_25971872021611789\"}', '192.168.1.104', 1548818868, '1');
INSERT INTO `oa_apilog` VALUES (165, '/group/get/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548818870, '1');
INSERT INTO `oa_apilog` VALUES (166, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548819021, '1');
INSERT INTO `oa_apilog` VALUES (167, '/group/get/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548819027, '1');
INSERT INTO `oa_apilog` VALUES (168, '/company/list/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548819027, '1');
INSERT INTO `oa_apilog` VALUES (169, '/market/list/gs_25971872021611779', '{\"code\":\"gs_25971872021611779\"}', '192.168.1.104', 1548819027, '1');
INSERT INTO `oa_apilog` VALUES (170, '/company/list/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548819155, '1');
INSERT INTO `oa_apilog` VALUES (171, '/market/list/gs_25971872021611779', '{\"code\":\"gs_25971872021611779\"}', '192.168.1.104', 1548819155, '1');
INSERT INTO `oa_apilog` VALUES (172, '/market/list/gs_25971872021611779', '{\"code\":\"gs_25971872021611779\"}', '192.168.1.104', 1548819158, '1');
INSERT INTO `oa_apilog` VALUES (173, '/group/get/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548819158, '1');
INSERT INTO `oa_apilog` VALUES (174, '/market/list/gs_25971872021611779', '{\"code\":\"gs_25971872021611779\"}', '192.168.1.104', 1548819171, '1');
INSERT INTO `oa_apilog` VALUES (175, '/company/list/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548826970, '1');
INSERT INTO `oa_apilog` VALUES (176, '/market/list/gs_25971872021611779', '{\"code\":\"gs_25971872021611779\"}', '192.168.1.104', 1548826971, '1');
INSERT INTO `oa_apilog` VALUES (177, '/group/get/jt_25971872021611775', '{\"code\":\"jt_25971872021611775\"}', '192.168.1.104', 1548826973, '1');
INSERT INTO `oa_apilog` VALUES (178, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548828672, '1');
INSERT INTO `oa_apilog` VALUES (179, '/group/get/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548828681, '1');
INSERT INTO `oa_apilog` VALUES (180, '/company/list/jt_25971872021611785', '{\"code\":\"jt_25971872021611785\"}', '192.168.1.104', 1548828681, '1');
INSERT INTO `oa_apilog` VALUES (181, '/market/list/gs_25971872021611789', '{\"code\":\"gs_25971872021611789\"}', '192.168.1.104', 1548828682, '1');
INSERT INTO `oa_apilog` VALUES (182, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548828691, '1');
INSERT INTO `oa_apilog` VALUES (183, '/group/list', '{\"keywords\":\"\",\"page\":\"6\",\"limit\":\"10\"}', '192.168.1.104', 1548828696, '1');
INSERT INTO `oa_apilog` VALUES (184, '/group/list', '{\"keywords\":\"\",\"page\":\"5\",\"limit\":\"10\"}', '192.168.1.104', 1548828699, '1');
INSERT INTO `oa_apilog` VALUES (185, '/group/list', '{\"keywords\":\"\",\"page\":\"3\",\"limit\":\"10\"}', '192.168.1.104', 1548828700, '1');
INSERT INTO `oa_apilog` VALUES (186, '/company/list/jt_25971872021610512', '{\"code\":\"jt_25971872021610512\"}', '192.168.1.104', 1548828714, '1');
INSERT INTO `oa_apilog` VALUES (187, '/group/get/jt_25971872021610512', '{\"code\":\"jt_25971872021610512\"}', '192.168.1.104', 1548828714, '1');
INSERT INTO `oa_apilog` VALUES (188, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548828724, '1');
INSERT INTO `oa_apilog` VALUES (189, '/group/get/jt_25971872021611742', '{\"code\":\"jt_25971872021611742\"}', '192.168.1.104', 1548828730, '1');
INSERT INTO `oa_apilog` VALUES (190, '/company/list/jt_25971872021611742', '{\"code\":\"jt_25971872021611742\"}', '192.168.1.104', 1548828730, '1');
INSERT INTO `oa_apilog` VALUES (191, '/market/list/gs_25971872021611745', '{\"code\":\"gs_25971872021611745\"}', '192.168.1.104', 1548828731, '1');
INSERT INTO `oa_apilog` VALUES (192, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548828745, '1');
INSERT INTO `oa_apilog` VALUES (193, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828750, '1');
INSERT INTO `oa_apilog` VALUES (194, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828750, '1');
INSERT INTO `oa_apilog` VALUES (195, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548828751, '1');
INSERT INTO `oa_apilog` VALUES (196, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548828763, '1');
INSERT INTO `oa_apilog` VALUES (197, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828767, '1');
INSERT INTO `oa_apilog` VALUES (198, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828767, '1');
INSERT INTO `oa_apilog` VALUES (199, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548828767, '1');
INSERT INTO `oa_apilog` VALUES (200, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828934, '1');
INSERT INTO `oa_apilog` VALUES (201, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548828935, '1');
INSERT INTO `oa_apilog` VALUES (202, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828937, '1');
INSERT INTO `oa_apilog` VALUES (203, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548828946, '1');
INSERT INTO `oa_apilog` VALUES (204, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828950, '1');
INSERT INTO `oa_apilog` VALUES (205, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548828950, '1');
INSERT INTO `oa_apilog` VALUES (206, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548828951, '1');
INSERT INTO `oa_apilog` VALUES (207, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829244, '1');
INSERT INTO `oa_apilog` VALUES (208, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548829244, '1');
INSERT INTO `oa_apilog` VALUES (209, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829247, '1');
INSERT INTO `oa_apilog` VALUES (210, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829773, '1');
INSERT INTO `oa_apilog` VALUES (211, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548829774, '1');
INSERT INTO `oa_apilog` VALUES (212, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829776, '1');
INSERT INTO `oa_apilog` VALUES (213, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829782, '1');
INSERT INTO `oa_apilog` VALUES (214, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829782, '1');
INSERT INTO `oa_apilog` VALUES (215, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829851, '1');
INSERT INTO `oa_apilog` VALUES (216, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548829852, '1');
INSERT INTO `oa_apilog` VALUES (217, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829854, '1');
INSERT INTO `oa_apilog` VALUES (218, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829881, '1');
INSERT INTO `oa_apilog` VALUES (219, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548829881, '1');
INSERT INTO `oa_apilog` VALUES (220, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830057, '1');
INSERT INTO `oa_apilog` VALUES (221, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548830058, '1');
INSERT INTO `oa_apilog` VALUES (222, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830059, '1');
INSERT INTO `oa_apilog` VALUES (223, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830059, '1');
INSERT INTO `oa_apilog` VALUES (224, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830060, '1');
INSERT INTO `oa_apilog` VALUES (225, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830309, '1');
INSERT INTO `oa_apilog` VALUES (226, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548830309, '1');
INSERT INTO `oa_apilog` VALUES (227, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830312, '1');
INSERT INTO `oa_apilog` VALUES (228, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830315, '1');
INSERT INTO `oa_apilog` VALUES (229, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830315, '1');
INSERT INTO `oa_apilog` VALUES (230, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830567, '1');
INSERT INTO `oa_apilog` VALUES (231, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548830567, '1');
INSERT INTO `oa_apilog` VALUES (232, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830570, '1');
INSERT INTO `oa_apilog` VALUES (233, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830571, '1');
INSERT INTO `oa_apilog` VALUES (234, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830571, '1');
INSERT INTO `oa_apilog` VALUES (235, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830620, '1');
INSERT INTO `oa_apilog` VALUES (236, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830620, '1');
INSERT INTO `oa_apilog` VALUES (237, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548830620, '1');
INSERT INTO `oa_apilog` VALUES (238, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830622, '1');
INSERT INTO `oa_apilog` VALUES (239, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830622, '1');
INSERT INTO `oa_apilog` VALUES (240, '/market/create', '[{\"f_group_code\":\"jt_25971872021611758\",\"f_company_code\":\"gs_25971872021611762\",\"f_market_name\":\"\\u6d4b\\u8bd594\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"1\",\"f_memo\":\"\\u6d4b\\u8bd594\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"f_authorized_user_code\":[],\"f_charge_user_code\":\"ct_25971872021611759\"}]', '192.168.1.104', 1548830641, '1');
INSERT INTO `oa_apilog` VALUES (241, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548830642, '1');
INSERT INTO `oa_apilog` VALUES (242, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830752, '1');
INSERT INTO `oa_apilog` VALUES (243, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548830752, '1');
INSERT INTO `oa_apilog` VALUES (244, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548830754, '1');
INSERT INTO `oa_apilog` VALUES (245, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831158, '1');
INSERT INTO `oa_apilog` VALUES (246, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548831159, '1');
INSERT INTO `oa_apilog` VALUES (247, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831161, '1');
INSERT INTO `oa_apilog` VALUES (248, '/contact/getCharge/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831162, '1');
INSERT INTO `oa_apilog` VALUES (249, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831161, '1');
INSERT INTO `oa_apilog` VALUES (250, '/market/create', '[{\"f_group_code\":\"jt_25971872021611758\",\"f_company_code\":\"gs_25971872021611761\",\"f_market_name\":\"\\u6d4b\\u8bd595\",\"f_currency_name\":\"RMB\",\"f_currency_sign\":\"\\u00a5\",\"f_sync_type\":\"1\",\"f_memo\":\"\\u6d4b\\u8bd595\",\"f_charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"f_authorized_user_code\":[\"ct_25971872021611759\"],\"f_charge_user_code\":\"ct_25971872021611759\"}]', '192.168.1.104', 1548831198, '1');
INSERT INTO `oa_apilog` VALUES (251, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548831199, '1');
INSERT INTO `oa_apilog` VALUES (252, '/market/update', '[{\"market_code\":\"mk_25971872021611771\",\"group_code\":\"jt_25971872021611758\",\"company_code\":\"gs_25971872021611761\",\"market_name\":\"\\u6d4b\\u8bd592\",\"currency_sign\":\"\\u00a5\",\"currency_name\":\"RMB\",\"sync_type\":0,\"charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"status\":0},{\"market_code\":\"mk_25971872021611869\",\"group_code\":\"jt_25971872021611758\",\"company_code\":\"gs_25971872021611761\",\"market_name\":\"\\u6d4b\\u8bd595\",\"currency_sign\":\"\\u00a5\",\"currency_name\":\"RMB\",\"sync_type\":1,\"charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"status\":0}]', '192.168.1.104', 1548831506, '1');
INSERT INTO `oa_apilog` VALUES (253, '/market/update', '[{\"market_code\":\"mk_25971872021611771\",\"group_code\":\"jt_25971872021611758\",\"company_code\":\"gs_25971872021611761\",\"market_name\":\"\\u6d4b\\u8bd592\",\"currency_sign\":\"\\u00a5\",\"currency_name\":\"RMB\",\"sync_type\":0,\"charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"status\":0},{\"market_code\":\"mk_25971872021611869\",\"group_code\":\"jt_25971872021611758\",\"company_code\":\"gs_25971872021611761\",\"market_name\":\"\\u6d4b\\u8bd595\",\"currency_sign\":\"\\u00a5\",\"currency_name\":\"RMB\",\"sync_type\":1,\"charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"status\":0}]', '192.168.1.104', 1548831540, '1');
INSERT INTO `oa_apilog` VALUES (254, '/market/update', '[{\"market_code\":\"mk_25971872021611771\",\"group_code\":\"jt_25971872021611758\",\"company_code\":\"gs_25971872021611761\",\"market_name\":\"\\u6d4b\\u8bd592\",\"currency_sign\":\"\\u00a5\",\"currency_name\":\"RMB\",\"sync_type\":0,\"charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"status\":0},{\"market_code\":\"mk_25971872021611869\",\"group_code\":\"jt_25971872021611758\",\"company_code\":\"gs_25971872021611761\",\"market_name\":\"\\u6d4b\\u8bd595\",\"currency_sign\":\"\\u00a5\",\"currency_name\":\"RMB\",\"sync_type\":1,\"charge_user_name\":\"\\u5f20\\u6d4b\\u8bd591\",\"status\":0}]', '192.168.1.104', 1548831603, '1');
INSERT INTO `oa_apilog` VALUES (255, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831616, '1');
INSERT INTO `oa_apilog` VALUES (256, '/company/list/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831616, '1');
INSERT INTO `oa_apilog` VALUES (257, '/market/list/gs_25971872021611761', '{\"code\":\"gs_25971872021611761\"}', '192.168.1.104', 1548831617, '1');
INSERT INTO `oa_apilog` VALUES (258, '/market/get/mk_25971872021611771', '{\"code\":\"mk_25971872021611771\"}', '192.168.1.104', 1548831622, '1');
INSERT INTO `oa_apilog` VALUES (259, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548831708, '1');
INSERT INTO `oa_apilog` VALUES (260, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831712, '1');
INSERT INTO `oa_apilog` VALUES (261, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548831715, '1');
INSERT INTO `oa_apilog` VALUES (262, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548831719, '1');
INSERT INTO `oa_apilog` VALUES (263, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548831738, '1');
INSERT INTO `oa_apilog` VALUES (264, '/group/get/jt_25971872021611861', '{\"code\":\"jt_25971872021611861\"}', '192.168.1.104', 1548831741, '1');
INSERT INTO `oa_apilog` VALUES (265, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548831744, '1');
INSERT INTO `oa_apilog` VALUES (266, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548832152, '1');
INSERT INTO `oa_apilog` VALUES (267, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '192.168.1.104', 1548832164, '1');
INSERT INTO `oa_apilog` VALUES (268, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548832170, '1');
INSERT INTO `oa_apilog` VALUES (269, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548832180, '1');
INSERT INTO `oa_apilog` VALUES (270, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548832261, '1');
INSERT INTO `oa_apilog` VALUES (271, '/group/list', '{\"keywords\":\"\",\"page\":\"1\",\"limit\":\"10\"}', '192.168.1.104', 1548832264, '1');
INSERT INTO `oa_apilog` VALUES (272, '/group/get/jt_25971872021611758', '{\"code\":\"jt_25971872021611758\"}', '192.168.1.104', 1548832276, '1');
INSERT INTO `oa_apilog` VALUES (273, '/index/company', '[]', '0.0.0.0', 1548835354, '1');
INSERT INTO `oa_apilog` VALUES (274, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835356, '1');
INSERT INTO `oa_apilog` VALUES (275, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835383, '1');
INSERT INTO `oa_apilog` VALUES (276, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835402, '1');
INSERT INTO `oa_apilog` VALUES (277, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835483, '1');
INSERT INTO `oa_apilog` VALUES (278, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835502, '1');
INSERT INTO `oa_apilog` VALUES (279, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835589, '1');
INSERT INTO `oa_apilog` VALUES (280, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835695, '1');
INSERT INTO `oa_apilog` VALUES (281, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835732, '1');
INSERT INTO `oa_apilog` VALUES (282, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835776, '1');
INSERT INTO `oa_apilog` VALUES (283, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548835813, '1');
INSERT INTO `oa_apilog` VALUES (284, '/index/company', '[]', '0.0.0.0', 1548836592, '1');
INSERT INTO `oa_apilog` VALUES (285, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548836600, '1');
INSERT INTO `oa_apilog` VALUES (286, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548836694, '1');
INSERT INTO `oa_apilog` VALUES (287, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548836756, '1');
INSERT INTO `oa_apilog` VALUES (288, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548836797, '1');
INSERT INTO `oa_apilog` VALUES (289, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548836820, '1');
INSERT INTO `oa_apilog` VALUES (290, '/company/create', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548837016, '1');
INSERT INTO `oa_apilog` VALUES (291, '/index/company', '[]', '0.0.0.0', 1548837490, '1');
INSERT INTO `oa_apilog` VALUES (292, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548837492, '1');
INSERT INTO `oa_apilog` VALUES (293, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548837975, '1');
INSERT INTO `oa_apilog` VALUES (294, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548837994, '1');
INSERT INTO `oa_apilog` VALUES (295, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838027, '1');
INSERT INTO `oa_apilog` VALUES (296, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838078, '1');
INSERT INTO `oa_apilog` VALUES (297, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838102, '1');
INSERT INTO `oa_apilog` VALUES (298, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838266, '1');
INSERT INTO `oa_apilog` VALUES (299, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838304, '1');
INSERT INTO `oa_apilog` VALUES (300, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838330, '1');
INSERT INTO `oa_apilog` VALUES (301, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838391, '1');
INSERT INTO `oa_apilog` VALUES (302, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548838437, '1');
INSERT INTO `oa_apilog` VALUES (303, '/company/list/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548838578, '1');
INSERT INTO `oa_apilog` VALUES (304, '/company/get/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548838632, '1');
INSERT INTO `oa_apilog` VALUES (305, '/index/company', '[]', '0.0.0.0', 1548838813, '1');
INSERT INTO `oa_apilog` VALUES (306, '/company/delete', '{\"f_code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548838815, '1');
INSERT INTO `oa_apilog` VALUES (307, '/company/gettoken/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548838870, '1');
INSERT INTO `oa_apilog` VALUES (308, '/index/company', '[]', '0.0.0.0', 1548839016, '1');
INSERT INTO `oa_apilog` VALUES (309, '/company/flushkey/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548839066, '1');
INSERT INTO `oa_apilog` VALUES (310, '/company/flushkey/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548839107, '1');
INSERT INTO `oa_apilog` VALUES (311, '/company/gettoken/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548839138, '1');
INSERT INTO `oa_apilog` VALUES (312, '/index/company', '[]', '0.0.0.0', 1548839181, '1');
INSERT INTO `oa_apilog` VALUES (313, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548839183, '1');
INSERT INTO `oa_apilog` VALUES (314, '/company/update', '{\"f_name\":\"\",\"f_en_name\":\"\",\"f_status\":\"\",\"f_code\":\"gs_98029314963931166\"}', '0.0.0.0', 1548839239, '1');
INSERT INTO `oa_apilog` VALUES (315, '/group/list/page/1/size/10', '{\"page\":\"1\",\"size\":\"10\"}', '0.0.0.0', 1548839767, '1');
INSERT INTO `oa_apilog` VALUES (316, '/group/list/page/1/size/1', '{\"page\":\"1\",\"size\":\"1\"}', '0.0.0.0', 1548839769, '1');
INSERT INTO `oa_apilog` VALUES (317, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548839821, '1');
INSERT INTO `oa_apilog` VALUES (318, '/index/company', '[]', '0.0.0.0', 1548897264, '1');
INSERT INTO `oa_apilog` VALUES (319, '/index/group', '[]', '0.0.0.0', 1548897778, '1');
INSERT INTO `oa_apilog` VALUES (320, '/group/list', '[]', '0.0.0.0', 1548898446, '1');
INSERT INTO `oa_apilog` VALUES (321, '/index/group', '[]', '0.0.0.0', 1548898829, '1');
INSERT INTO `oa_apilog` VALUES (322, '/index/group', '[]', '0.0.0.0', 1548898858, '1');
INSERT INTO `oa_apilog` VALUES (323, '/index/group', '[]', '0.0.0.0', 1548898866, '1');
INSERT INTO `oa_apilog` VALUES (324, '/index/group', '[]', '0.0.0.0', 1548898881, '1');
INSERT INTO `oa_apilog` VALUES (325, '/group/create', '{\"f_name\":\"\\u4fe1\\u4eab\\u79d1\\u6280\",\"f_web_site\":\"www.xinxian.com\",\"f_group_number\":\"xinxian1\",\"f_industry_id\":\"1\",\"f_country_id\":\"1\",\"f_type_id\":\"4\",\"f_contact_phone\":\"18682038500\",\"f_address\":\"\\u6df1\\u5733\\u9f99\\u5c97\\u4e94\\u5408\",\"f_fiscal_month\":\"6\"}', '0.0.0.0', 1548898945, '1');
INSERT INTO `oa_apilog` VALUES (326, '/index/group', '[]', '0.0.0.0', 1548899012, '1');
INSERT INTO `oa_apilog` VALUES (327, '/index/group', '[]', '0.0.0.0', 1548899167, '1');
INSERT INTO `oa_apilog` VALUES (328, '/group/update', '{\"f_name\":\"\\u4fe1\\u4eab\\u79d1\\u6280\",\"f_web_site\":\"www.xinxian.com\",\"f_group_number\":\"xinxian1\",\"f_industry_id\":\"1\",\"f_country_id\":\"1\",\"f_type_id\":\"4\",\"f_contact_phone\":\"18682038500\",\"f_address\":\"\\u96c6\\u56e2\\u5730\\u5740\",\"f_fiscal_month\":\"8\",\"f_code\":\"jt_98042625621229579\"}', '0.0.0.0', 1548899183, '1');
INSERT INTO `oa_apilog` VALUES (329, '/group/list', '[]', '0.0.0.0', 1548899289, '1');
INSERT INTO `oa_apilog` VALUES (330, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548899320, '1');
INSERT INTO `oa_apilog` VALUES (331, '/group/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548899335, '1');
INSERT INTO `oa_apilog` VALUES (332, '/group/get/0', '{\"code\":\"0\"}', '0.0.0.0', 1548899341, '1');
INSERT INTO `oa_apilog` VALUES (333, '/index/group', '[]', '0.0.0.0', 1548899462, '1');
INSERT INTO `oa_apilog` VALUES (334, '/index/group', '[]', '0.0.0.0', 1548899525, '1');
INSERT INTO `oa_apilog` VALUES (335, '/index/group', '[]', '0.0.0.0', 1548899546, '1');
INSERT INTO `oa_apilog` VALUES (336, '/index/group', '[]', '0.0.0.0', 1548899617, '1');
INSERT INTO `oa_apilog` VALUES (337, '/index/group', '[]', '0.0.0.0', 1548899657, '1');
INSERT INTO `oa_apilog` VALUES (338, '/index/company', '[]', '0.0.0.0', 1548899900, '1');
INSERT INTO `oa_apilog` VALUES (339, '/index/company', '[]', '0.0.0.0', 1548899924, '1');
INSERT INTO `oa_apilog` VALUES (340, '/index/group', '[]', '0.0.0.0', 1548899930, '1');
INSERT INTO `oa_apilog` VALUES (341, '/index/company', '[]', '0.0.0.0', 1548899940, '1');
INSERT INTO `oa_apilog` VALUES (342, '/index/company', '[]', '0.0.0.0', 1548900029, '1');
INSERT INTO `oa_apilog` VALUES (343, '/company/list/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548900031, '1');
INSERT INTO `oa_apilog` VALUES (344, '/company/get/gs_1548153426', '{\"code\":\"gs_1548153426\"}', '0.0.0.0', 1548900037, '1');
INSERT INTO `oa_apilog` VALUES (345, '/index/company', '[]', '0.0.0.0', 1548900060, '1');
INSERT INTO `oa_apilog` VALUES (346, '/company/get/gs_1548153426', '{\"code\":\"gs_1548153426\"}', '0.0.0.0', 1548900062, '1');
INSERT INTO `oa_apilog` VALUES (347, '/index/company', '[]', '0.0.0.0', 1548900101, '1');
INSERT INTO `oa_apilog` VALUES (348, '/company/get/gs_15488370171166977', '{\"code\":\"gs_15488370171166977\"}', '0.0.0.0', 1548900102, '1');
INSERT INTO `oa_apilog` VALUES (349, '/index/company', '[]', '0.0.0.0', 1548900277, '1');
INSERT INTO `oa_apilog` VALUES (350, '/index/company', '[]', '0.0.0.0', 1548900298, '1');
INSERT INTO `oa_apilog` VALUES (351, '/index/company', '[]', '0.0.0.0', 1548900314, '1');
INSERT INTO `oa_apilog` VALUES (352, '/index/company', '[]', '0.0.0.0', 1548900665, '1');
INSERT INTO `oa_apilog` VALUES (353, '/index/company', '[]', '0.0.0.0', 1548900742, '1');
INSERT INTO `oa_apilog` VALUES (354, '/company/update', '{\"f_name\":\"\\u767e\\u5ea6\",\"f_en_name\":\"bd\",\"f_status\":\"1\",\"f_group_code\":\"gs_15488370171166977\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548900758, '1');
INSERT INTO `oa_apilog` VALUES (355, '/company/update', '{\"f_name\":\"\\u767e\\u5ea6\",\"f_en_name\":\"bd\",\"f_status\":\"1\",\"f_group_code\":\"gs_15488370171166977\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548900831, '1');
INSERT INTO `oa_apilog` VALUES (356, '/index/company', '[]', '0.0.0.0', 1548900861, '1');
INSERT INTO `oa_apilog` VALUES (357, '/company/update', '{\"f_name\":\"\\u767e\\u5ea6\",\"f_en_name\":\"bd\",\"f_status\":\"1\",\"f_code\":\"gs_15488370171166977\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548900881, '1');
INSERT INTO `oa_apilog` VALUES (358, '/index/company', '[]', '0.0.0.0', 1548900903, '1');
INSERT INTO `oa_apilog` VALUES (359, '/company/create', '{\"f_name\":\"\\u6dd8\\u5b9d\",\"f_en_name\":\"tb\",\"f_group_code\":\"jt_1548139507\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548900916, '1');
INSERT INTO `oa_apilog` VALUES (360, '/company/create', '{\"f_name\":\"\\u6dd8\\u5b9d\",\"f_en_name\":\"tb\",\"f_group_code\":\"jt_1548139507\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548901206, '1');
INSERT INTO `oa_apilog` VALUES (361, '/company/create', '{\"f_name\":\"\\u6dd8\\u5b9d\",\"f_en_name\":\"tb\",\"f_group_code\":\"jt_1548139507\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548901252, '1');
INSERT INTO `oa_apilog` VALUES (362, '/company/create', '{\"f_name\":\"\\u6dd8\\u5b9d\",\"f_en_name\":\"tb\",\"f_group_code\":\"jt_1548139507\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548901280, '1');
INSERT INTO `oa_apilog` VALUES (363, '/company/create', '{\"f_name\":\"\\u6dd8\\u5b9d\",\"f_en_name\":\"tb\",\"f_group_code\":\"jt_1548139507\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548901315, '1');
INSERT INTO `oa_apilog` VALUES (364, '/company/create', '{\"f_name\":\"\\u6dd8\\u5b9d\",\"f_en_name\":\"tb\",\"f_group_code\":\"jt_1548139507\",\"f_sync_type\":\"1\"}', '0.0.0.0', 1548901334, '1');
INSERT INTO `oa_apilog` VALUES (365, '/index/company', '[]', '0.0.0.0', 1548901426, '1');
INSERT INTO `oa_apilog` VALUES (366, '/index/company', '[]', '0.0.0.0', 1548901660, '1');
INSERT INTO `oa_apilog` VALUES (367, '/company/delete', '{\"f_code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548901662, '1');
INSERT INTO `oa_apilog` VALUES (368, '/index/company', '[]', '0.0.0.0', 1548901794, '1');
INSERT INTO `oa_apilog` VALUES (369, '/index/company', '[]', '0.0.0.0', 1548901816, '1');
INSERT INTO `oa_apilog` VALUES (370, '/company/flushkey/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548901821, '1');
INSERT INTO `oa_apilog` VALUES (371, '/index/company', '[]', '0.0.0.0', 1548901892, '1');
INSERT INTO `oa_apilog` VALUES (372, '/index/company/gettoken/gs_15488370176758973', '{\"gettoken\":\"gs_15488370176758973\"}', '0.0.0.0', 1548901894, '1');
INSERT INTO `oa_apilog` VALUES (373, '/index/company', '[]', '0.0.0.0', 1548901906, '1');
INSERT INTO `oa_apilog` VALUES (374, '/company/gettoken/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548901907, '1');
INSERT INTO `oa_apilog` VALUES (375, '/index/company', '[]', '0.0.0.0', 1548901920, '1');
INSERT INTO `oa_apilog` VALUES (376, '/company/gettoken/gs_15488370171166977', '{\"code\":\"gs_15488370171166977\"}', '0.0.0.0', 1548901921, '1');
INSERT INTO `oa_apilog` VALUES (377, '/index/contact', '[]', '0.0.0.0', 1548902131, '1');
INSERT INTO `oa_apilog` VALUES (378, '/index/contact', '[]', '0.0.0.0', 1548902218, '1');
INSERT INTO `oa_apilog` VALUES (379, '/contact/list/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548902220, '1');
INSERT INTO `oa_apilog` VALUES (380, '/contact/list/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548902316, '1');
INSERT INTO `oa_apilog` VALUES (381, '/index/contact', '[]', '0.0.0.0', 1548902320, '1');
INSERT INTO `oa_apilog` VALUES (382, '/contact/get/ct_1548212016', '{\"code\":\"ct_1548212016\"}', '0.0.0.0', 1548902322, '1');
INSERT INTO `oa_apilog` VALUES (383, '/index/contact', '[]', '0.0.0.0', 1548902339, '1');
INSERT INTO `oa_apilog` VALUES (384, '/contact/get/ct_1548383615', '{\"code\":\"ct_1548383615\"}', '0.0.0.0', 1548902340, '1');
INSERT INTO `oa_apilog` VALUES (385, '/index/contact', '[]', '0.0.0.0', 1548903170, '1');
INSERT INTO `oa_apilog` VALUES (386, '/index/contact', '[]', '0.0.0.0', 1548903224, '1');
INSERT INTO `oa_apilog` VALUES (387, '/contact/create', '{\"f_last_name\":\"\\u5218\",\"f_first_name\":\"\\u6797\\u71d5\",\"f_user_position\":\"PHP\\u7814\\u53d1\",\"f_user_phone\":\"18588209320\",\"f_user_email\":\"939942478@qq.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548903234, '1');
INSERT INTO `oa_apilog` VALUES (388, '/contact/create', '{\"f_last_name\":\"\\u5218\",\"f_first_name\":\"\\u6797\\u71d5\",\"f_user_position\":\"PHP\\u7814\\u53d1\",\"f_user_phone\":\"18588209320\",\"f_user_email\":\"939942478@qq.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548903346, '1');
INSERT INTO `oa_apilog` VALUES (389, '/index/contact', '[]', '0.0.0.0', 1548903438, '1');
INSERT INTO `oa_apilog` VALUES (390, '/index/contact', '[]', '0.0.0.0', 1548904075, '1');
INSERT INTO `oa_apilog` VALUES (391, '/contact/update', '{\"f_last_name\":\"\\u5218\",\"f_first_name\":\"\\u6797\\u71d5\",\"f_user_position\":\"PHP\\u7814\\u53d1\",\"f_user_phone\":\"18588209320\",\"f_user_email\":\"939942478@qq.com\",\"f_user_role\":[\"charge\"],\"f_status\":\"1\",\"f_code\":\"ct_15489033479418238\"}', '0.0.0.0', 1548904114, '1');
INSERT INTO `oa_apilog` VALUES (392, '/index/contact', '[]', '0.0.0.0', 1548904247, '1');
INSERT INTO `oa_apilog` VALUES (393, '/contact/delete', '{\"f_code\":\"ct_15489033479418238\"}', '0.0.0.0', 1548904258, '1');
INSERT INTO `oa_apilog` VALUES (394, '/index/contact', '[]', '0.0.0.0', 1548904347, '1');
INSERT INTO `oa_apilog` VALUES (395, '/contact/simplelist/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548904349, '1');
INSERT INTO `oa_apilog` VALUES (396, '/contact/simplelist/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548904355, '1');
INSERT INTO `oa_apilog` VALUES (397, '/index/contact', '[]', '0.0.0.0', 1548904388, '1');
INSERT INTO `oa_apilog` VALUES (398, '/contact/getCharge/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548904395, '1');
INSERT INTO `oa_apilog` VALUES (399, '/contact/simplelist/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548904427, '1');
INSERT INTO `oa_apilog` VALUES (400, '/index/contact', '[]', '0.0.0.0', 1548904499, '1');
INSERT INTO `oa_apilog` VALUES (401, '/contact/getCharge/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548904500, '1');
INSERT INTO `oa_apilog` VALUES (402, '/index/market', '[]', '0.0.0.0', 1548904697, '1');
INSERT INTO `oa_apilog` VALUES (403, '/index/market', '[]', '0.0.0.0', 1548904741, '1');
INSERT INTO `oa_apilog` VALUES (404, '/index/market', '[]', '0.0.0.0', 1548904797, '1');
INSERT INTO `oa_apilog` VALUES (405, '/market/list/gs_15488370176758973', '{\"code\":\"gs_15488370176758973\"}', '0.0.0.0', 1548904798, '1');
INSERT INTO `oa_apilog` VALUES (406, '/index/market', '[]', '0.0.0.0', 1548905010, '1');
INSERT INTO `oa_apilog` VALUES (407, '/index/market', '[]', '0.0.0.0', 1548905100, '1');
INSERT INTO `oa_apilog` VALUES (408, '/contact/getCharge/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548905110, '1');
INSERT INTO `oa_apilog` VALUES (409, '/index/market', '[]', '0.0.0.0', 1548905240, '1');
INSERT INTO `oa_apilog` VALUES (410, '/index/market', '[]', '0.0.0.0', 1548905336, '1');
INSERT INTO `oa_apilog` VALUES (411, '/market/create', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u97f3\\u4e50\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_memo\":\"\\u817e\\u8baf\\u97f3\\u4e50\\u7684\\u6df1\\u5733\\u5e02\\u573a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_authorized_user_email\":[\"187@qq.com\"]}', '0.0.0.0', 1548905441, '1');
INSERT INTO `oa_apilog` VALUES (412, '/index/market', '[]', '0.0.0.0', 1548905963, '1');
INSERT INTO `oa_apilog` VALUES (413, '/market/create', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u97f3\\u4e50\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u817e\\u8baf\\u97f3\\u4e50\\u7684\\u6df1\\u5733\\u5e02\\u573a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_authorized_user_code\":[\"ct_15489033479418238\"]}', '0.0.0.0', 1548905997, '1');
INSERT INTO `oa_apilog` VALUES (414, '/market/create', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u97f3\\u4e50\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u817e\\u8baf\\u97f3\\u4e50\\u7684\\u6df1\\u5733\\u5e02\\u573a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_authorized_user_code\":[\"ct_15489033479418238\"]}', '0.0.0.0', 1548906058, '1');
INSERT INTO `oa_apilog` VALUES (415, '/index/company', '[]', '0.0.0.0', 1548906171, '1');
INSERT INTO `oa_apilog` VALUES (416, '/index/contact', '[]', '0.0.0.0', 1548906175, '1');
INSERT INTO `oa_apilog` VALUES (417, '/contact/create', '{\"f_last_name\":\"\\u738b\",\"f_first_name\":\"\\u6770\",\"f_user_position\":\"PHP\\u7814\\u53d1\",\"f_user_phone\":\"18588209321\",\"f_user_email\":\"1874299065@qq.com\",\"f_user_role\":[\"enterprise\",\"financial\",\"charge\"],\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548906215, '1');
INSERT INTO `oa_apilog` VALUES (418, '/index/market', '[]', '0.0.0.0', 1548906227, '1');
INSERT INTO `oa_apilog` VALUES (419, '/index/market', '[]', '0.0.0.0', 1548906295, '1');
INSERT INTO `oa_apilog` VALUES (420, '/market/create', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u89c6\\u9891\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_memo\":\"\\u817e\\u8baf\\u89c6\\u9891\\u7684\\u6df1\\u5733\\u5e02\\u573a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_authorized_user_code\":[\"ct_15489033479418238\",\"ct_98042625621229582\"]}', '0.0.0.0', 1548906325, '1');
INSERT INTO `oa_apilog` VALUES (421, '/index/market', '[]', '0.0.0.0', 1548906497, '1');
INSERT INTO `oa_apilog` VALUES (422, '/market/create', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u97f3\\u4e50\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u817e\\u8baf\\u97f3\\u4e50\\u7684\\u6df1\\u5733\\u5e02\\u573a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_authorized_user_code\":[\"ct_15489033479418238\"]}', '0.0.0.0', 1548906511, '1');
INSERT INTO `oa_apilog` VALUES (423, '/market/create', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u89c6\\u9891\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u817e\\u8baf\\u89c6\\u9891\\u7684\\u6df1\\u5733\\u5e02\\u573a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_authorized_user_code\":[\"ct_15489033479418238\",\"ct_98042625621229582\"]}', '0.0.0.0', 1548906541, '1');
INSERT INTO `oa_apilog` VALUES (424, '/index/market', '[]', '0.0.0.0', 1548906719, '1');
INSERT INTO `oa_apilog` VALUES (425, '/market/get/mk_15489065116281903', '{\"code\":\"mk_15489065116281903\"}', '0.0.0.0', 1548906721, '1');
INSERT INTO `oa_apilog` VALUES (426, '/index/market', '[]', '0.0.0.0', 1548906964, '1');
INSERT INTO `oa_apilog` VALUES (427, '/index/market', '[]', '0.0.0.0', 1548907027, '1');
INSERT INTO `oa_apilog` VALUES (428, '/market/update', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u97f3\\u4e50\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6539\\u52a8\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_code\":\"mk_15489065116281903\",\"f_status\":\"0\"}', '0.0.0.0', 1548907069, '1');
INSERT INTO `oa_apilog` VALUES (429, '/index/market', '[]', '0.0.0.0', 1548907258, '1');
INSERT INTO `oa_apilog` VALUES (430, '/market/update', '{\"f_group_code\":\"jt_1548139507\",\"f_company_code\":\"gs_15488370176758973\",\"f_market_name\":\"\\u817e\\u8baf\\u97f3\\u4e50\",\"f_currency_sign\":\"$\",\"f_currency_name\":\"USD\",\"f_sync_type\":\"0\",\"f_memo\":\"\\u6539\\u52a8\\u554a\",\"f_charge_user_code\":\"ct_15489033479418238\",\"f_charge_user_name\":\"\\u5218\\u6797\\u71d5\",\"f_code\":\"mk_15489065116281903\",\"f_status\":\"0\"}', '0.0.0.0', 1548907265, '1');
INSERT INTO `oa_apilog` VALUES (431, '/index/market', '[]', '0.0.0.0', 1548914525, '1');
INSERT INTO `oa_apilog` VALUES (432, '/index/market', '[]', '0.0.0.0', 1548914663, '1');
INSERT INTO `oa_apilog` VALUES (433, '/market/delete', '{\"f_code\":\"mk_98042625621229586\"}', '0.0.0.0', 1548914676, '1');
INSERT INTO `oa_apilog` VALUES (434, '/index/market', '[]', '0.0.0.0', 1548914724, '1');
INSERT INTO `oa_apilog` VALUES (435, '/index/extend', '[]', '0.0.0.0', 1548914851, '1');
INSERT INTO `oa_apilog` VALUES (436, '/index/extend', '[]', '0.0.0.0', 1548914854, '1');
INSERT INTO `oa_apilog` VALUES (437, '/index/extend', '[]', '0.0.0.0', 1548914899, '1');
INSERT INTO `oa_apilog` VALUES (438, '/index/extend', '[]', '0.0.0.0', 1548914947, '1');
INSERT INTO `oa_apilog` VALUES (439, '/extend/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548914949, '1');
INSERT INTO `oa_apilog` VALUES (440, '/index/extend', '[]', '0.0.0.0', 1548915303, '1');
INSERT INTO `oa_apilog` VALUES (441, '/index/extend', '[]', '0.0.0.0', 1548915369, '1');
INSERT INTO `oa_apilog` VALUES (442, '/extend/create', '{\"f_subdomain\":\"newapi.master.com\",\"f_group_code\":\"jt_1548139507\",\"f_logo\":\"23232\",\"f_group_email\":\"email.liuliny.com\"}', '0.0.0.0', 1548915373, '1');
INSERT INTO `oa_apilog` VALUES (443, '/index/extend', '[]', '0.0.0.0', 1548915438, '1');
INSERT INTO `oa_apilog` VALUES (444, '/extend/update', '{\"f_subdomain\":\"newapi.master.com\",\"f_group_code\":\"jt_1548139507\",\"f_logo\":\"4\",\"f_group_email\":\"email.liuliny.com\",\"f_code\":\"ex_1548311813\",\"f_status\":\"0\"}', '0.0.0.0', 1548915500, '1');
INSERT INTO `oa_apilog` VALUES (445, '/index/finance', '[]', '0.0.0.0', 1548915609, '1');
INSERT INTO `oa_apilog` VALUES (446, '/index/finance', '[]', '0.0.0.0', 1548915743, '1');
INSERT INTO `oa_apilog` VALUES (447, '/index/finance', '[]', '0.0.0.0', 1548915745, '1');
INSERT INTO `oa_apilog` VALUES (448, '/finance/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548915747, '1');
INSERT INTO `oa_apilog` VALUES (449, '/index/finance', '[]', '0.0.0.0', 1548915797, '1');
INSERT INTO `oa_apilog` VALUES (450, '/finance/get/jt_1548139507', '{\"code\":\"jt_1548139507\"}', '0.0.0.0', 1548915802, '1');
INSERT INTO `oa_apilog` VALUES (451, '/index/finance', '[]', '0.0.0.0', 1548915988, '1');
INSERT INTO `oa_apilog` VALUES (452, '/index/finance', '[]', '0.0.0.0', 1548916010, '1');
INSERT INTO `oa_apilog` VALUES (453, '/finance/create', '{\"f_sale_volume_id\":\"1\",\"f_sale_volume\":\"10000\",\"f_purhchase_volume_id\":\"2\",\"f_purhchase_volume\":\"20000\",\"f_cashflow_volume_id\":\"3\",\"f_cashflow_volume\":\"30000\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548916012, '1');
INSERT INTO `oa_apilog` VALUES (454, '/index/finance', '[]', '0.0.0.0', 1548916121, '1');
INSERT INTO `oa_apilog` VALUES (455, '/finance/create', '{\"f_sale_volume_id\":\"1\",\"f_sale_volume\":\"10000\",\"f_purhchase_volume_id\":\"2\",\"f_purhchase_volume\":\"20000\",\"f_cashflow_volume_id\":\"3\",\"f_cashflow_volume\":\"30000\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548916122, '1');
INSERT INTO `oa_apilog` VALUES (456, '/finance/create', '{\"f_sale_volume_id\":\"1\",\"f_sale_volume\":\"10000\",\"f_purhchase_volume_id\":\"2\",\"f_purhchase_volume\":\"20000\",\"f_cashflow_volume_id\":\"3\",\"f_cashflow_volume\":\"30000\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548916166, '1');
INSERT INTO `oa_apilog` VALUES (457, '/index/finance', '[]', '0.0.0.0', 1548916181, '1');
INSERT INTO `oa_apilog` VALUES (458, '/index/finance', '[]', '0.0.0.0', 1548916241, '1');
INSERT INTO `oa_apilog` VALUES (459, '/finance/create', '{\"f_sale_volume_id\":\"1\",\"f_sale_volume\":\"10000\",\"f_purhchase_volume_id\":\"2\",\"f_purhchase_volume\":\"20000\",\"f_cashflow_volume_id\":\"3\",\"f_cashflow_volume\":\"30000\",\"f_group_code\":\"jt_1548139507\"}', '0.0.0.0', 1548916244, '1');
INSERT INTO `oa_apilog` VALUES (460, '/index/finance', '[]', '0.0.0.0', 1548916267, '1');

-- ----------------------------
-- Table structure for oa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `oa_attachment`;
CREATE TABLE `oa_attachment`  (
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
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建日期',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_attachment
-- ----------------------------
INSERT INTO `oa_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- ----------------------------
-- Table structure for oa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `oa_auth_group`;
CREATE TABLE `oa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_auth_group
-- ----------------------------
INSERT INTO `oa_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `oa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `oa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `oa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `oa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for oa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `oa_auth_group_access`;
CREATE TABLE `oa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_auth_group_access
-- ----------------------------
INSERT INTO `oa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for oa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `oa_auth_rule`;
CREATE TABLE `oa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_auth_rule
-- ----------------------------
INSERT INTO `oa_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1497429920, 143, 'normal');
INSERT INTO `oa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal');
INSERT INTO `oa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-list', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal');
INSERT INTO `oa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `oa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `oa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `oa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `oa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `oa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `oa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `oa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `oa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `oa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `oa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `oa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `oa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `oa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `oa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `oa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `oa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `oa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `oa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `oa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `oa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `oa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `oa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `oa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `oa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `oa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `oa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `oa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `oa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `oa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `oa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `oa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `oa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `oa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `oa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `oa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `oa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `oa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `oa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `oa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `oa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `oa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `oa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `oa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `oa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `oa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `oa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `oa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `oa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `oa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `oa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (85, 'file', 0, 'email', '邮件管理', 'fa fa-puzzle-piece', 'email', '', 1, 1548394879, 1548394879, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (86, 'file', 85, 'email/template', '邮件模板管理', 'fa fa-th-list', '', '邮件模板管理', 1, 1548394994, 1548406305, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (87, 'file', 0, 'apilog', 'AIP请求日志管理', 'fa fa-circle-o', '', '', 1, 1548647658, 1548647658, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (88, 'file', 87, 'apilog/index', '查看', 'fa fa-circle-o', '', '', 0, 1548647658, 1548647658, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (89, 'file', 87, 'apilog/add', '添加', 'fa fa-circle-o', '', '', 0, 1548647658, 1548647658, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (90, 'file', 87, 'apilog/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548647658, 1548647658, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (91, 'file', 87, 'apilog/del', '删除', 'fa fa-circle-o', '', '', 0, 1548647658, 1548647658, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (92, 'file', 87, 'apilog/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548647658, 1548647658, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (93, 'file', 85, 'email/logs', '邮件发送记录管理', 'fa fa-circle-o', '', '', 1, 1548658426, 1548658426, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (94, 'file', 93, 'email/logs/index', '查看', 'fa fa-circle-o', '', '', 0, 1548658426, 1548658426, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (95, 'file', 93, 'email/logs/add', '添加', 'fa fa-circle-o', '', '', 0, 1548658426, 1548658426, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (96, 'file', 93, 'email/logs/edit', '编辑', 'fa fa-circle-o', '', '', 0, 1548658426, 1548658426, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (97, 'file', 93, 'email/logs/del', '删除', 'fa fa-circle-o', '', '', 0, 1548658426, 1548658426, 0, 'normal');
INSERT INTO `oa_auth_rule` VALUES (98, 'file', 93, 'email/logs/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1548658426, 1548658426, 0, 'normal');

-- ----------------------------
-- Table structure for oa_category
-- ----------------------------
DROP TABLE IF EXISTS `oa_category`;
CREATE TABLE `oa_category`  (
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
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_category
-- ----------------------------
INSERT INTO `oa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal');
INSERT INTO `oa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal');
INSERT INTO `oa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `oa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `oa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal');
INSERT INTO `oa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal');
INSERT INTO `oa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal');
INSERT INTO `oa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `oa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `oa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `oa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `oa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal');
INSERT INTO `oa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');

-- ----------------------------
-- Table structure for oa_config
-- ----------------------------
DROP TABLE IF EXISTS `oa_config`;
CREATE TABLE `oa_config`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_config
-- ----------------------------
INSERT INTO `oa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `oa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '', '', '', '');
INSERT INTO `oa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `oa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `oa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `oa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `oa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `oa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `oa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `oa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `oa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `oa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.126.com', '', '', '');
INSERT INTO `oa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '25', '', '', '');
INSERT INTO `oa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', 'liulinyan521@126.com', '', '', '');
INSERT INTO `oa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'liulinyan', '', '', '');
INSERT INTO `oa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '0', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `oa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', 'liulinyan521@126.com', '', '', '');

-- ----------------------------
-- Table structure for oa_email_logs
-- ----------------------------
DROP TABLE IF EXISTS `oa_email_logs`;
CREATE TABLE `oa_email_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号ID',
  `template_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板的编码',
  `from_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发送的邮箱',
  `to_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '接收的邮箱',
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮件主题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '发送的邮件内容',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态:0=失败,1=成功',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `template_code`(`template_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮件发送记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_email_logs
-- ----------------------------
INSERT INTO `oa_email_logs` VALUES (1, '25', '939942478@qq.com', '1874299065@qq.com', 'hello', 'hello,我们看你们很厉害啊,您好啊', 1548658561, '1');
INSERT INTO `oa_email_logs` VALUES (2, '2', 'liulinyan521@126.com', '939942478@qq.com', 'EPFO 平台注册邀请', '您的二级域名为：newapi.master.com<br/>域名邮箱为：email.liuliny.com<br/>用户名为：王丽', 1548748078, '0');
INSERT INTO `oa_email_logs` VALUES (4, '2', 'liulinyan521@126.com', '939942478@qq.com', 'EPFO 平台注册邀请', '您的二级域名为：newapi.master.com<br/>域名邮箱为：email.liuliny.com<br/>用户名为：王丽', 1548748427, '0');
INSERT INTO `oa_email_logs` VALUES (5, '2', 'liulinyan521@126.com', '939942478@qq.com', 'EPFO 平台注册邀请', '您的二级域名为：newapi.master.com\r\n域名邮箱为：email.liuliny.com\r\n用户名为：王丽', 1548748427, '1');
INSERT INTO `oa_email_logs` VALUES (6, '2', 'liulinyan521@126.com', '939942478@qq.com', 'EPFO 平台注册邀请', '您的二级域名为：newapi.master.com<br/>域名邮箱为：email.liuliny.com<br/>用户名为：王丽', 1548748633, '1');

-- ----------------------------
-- Table structure for oa_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `oa_email_templates`;
CREATE TABLE `oa_email_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `language` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '语言',
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板主题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '邮件内容',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态正常normal,无效hidden',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`, `language`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮件模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of oa_email_templates
-- ----------------------------
INSERT INTO `oa_email_templates` VALUES (1, 'register_invite', 'english', 'EPFO Registration Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (2, 'register_invite', 'chinese', 'EPFO 平台注册邀请', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (3, 'password_reminder', 'english', 'EPFO User Password Reminder', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (4, 'password_reminder', 'chinese', 'EPFO 用户密码重置', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (5, 'plan_invite', 'english', 'EPFO Plan {plancode} Invite Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (6, 'plan_invite', 'chinese', 'EPFO 早付计划 {plancode} 邀请通知', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (7, 'plan_pending', 'english', 'EPFO Plan {plancode} Pending Proposal Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (8, 'plan_pending', 'chinese', 'EPFO 早付计划 {plancode} 等待报告通知', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (9, 'plan_failed', 'english', 'EPFO Plan {plancode} Failed Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (10, 'plan_failed', 'chinese', 'EPFO 早付计划 {plancode} 失败通知', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (11, 'plan_report', 'english', 'EPFO EarlyPlan {plancode} Winner Report Available', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (12, 'plan_report', 'chinese', 'EPFO 早付计划 {plancode} 成交报告已经生成', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (13, 'cust_register_invite', 'english', 'EPFO Registration Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (14, 'cust_register_invite', 'chinese', 'EPFO 平台注册邀请', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (15, 'cust_plan_pending', 'english', 'EPFO Plan Pending Proposal Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (16, 'cust_plan_pending', 'chinese', 'EPFO 早付计划等待报告通知', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (17, 'cust_plan_failer', 'english', 'EPFO Plan Failed Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (18, 'cust_plan_failer', 'chinese', 'EPFO 早付计划失败通知', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (19, 'cust_plan_finished', 'english', 'Plan {plancode} Winner Report Available', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (20, 'cust_plan_finished', 'chinese', '计划编号 {plancode} 早付的成交报告已经生成', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (21, 'register_link', 'chinese', 'EPFO 平台注册通知', '通知内容', 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (22, 'register_link', 'english', 'EPFO Registration Information', NULL, 1548412100, 1548412100, 'normal');
INSERT INTO `oa_email_templates` VALUES (24, '测试', 'english', '测试', '', 1548640427, 0, 'hidden');
INSERT INTO `oa_email_templates` VALUES (25, 'test template', 'english', 'hello', 'helloaaaa', 1548641137, 0, 'normal');

-- ----------------------------
-- Table structure for oa_ems
-- ----------------------------
DROP TABLE IF EXISTS `oa_ems`;
CREATE TABLE `oa_ems`  (
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
-- Table structure for oa_sms
-- ----------------------------
DROP TABLE IF EXISTS `oa_sms`;
CREATE TABLE `oa_sms`  (
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
-- Table structure for oa_test
-- ----------------------------
DROP TABLE IF EXISTS `oa_test`;
CREATE TABLE `oa_test`  (
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
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime(0) NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year NULL DEFAULT NULL COMMENT '年',
  `times` time(0) NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '刷新时间(int)',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_test
-- ----------------------------
INSERT INTO `oa_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
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
  `prevtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上次登录时间',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '加入时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES (1, 1, 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '/assets/img/avatar.png', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1516171614, '', 'normal', '');

-- ----------------------------
-- Table structure for oa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_group`;
CREATE TABLE `oa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_user_group
-- ----------------------------
INSERT INTO `oa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for oa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_money_log`;
CREATE TABLE `oa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员余额变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_rule`;
CREATE TABLE `oa_user_rule`  (
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
-- Records of oa_user_rule
-- ----------------------------
INSERT INTO `oa_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `oa_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `oa_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `oa_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `oa_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `oa_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `oa_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `oa_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `oa_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `oa_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `oa_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `oa_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for oa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_score_log`;
CREATE TABLE `oa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_token`;
CREATE TABLE `oa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `expiretime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员Token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_version
-- ----------------------------
DROP TABLE IF EXISTS `oa_version`;
CREATE TABLE `oa_version`  (
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
-- Records of oa_version
-- ----------------------------
INSERT INTO `oa_version` VALUES (1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');

SET FOREIGN_KEY_CHECKS = 1;
