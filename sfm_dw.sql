/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : sfm_dw

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 18/10/2020 18:13:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sfm_class
-- ----------------------------
DROP TABLE IF EXISTS `sfm_class`;
CREATE TABLE `sfm_class`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级名称',
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级编号',
  `specialty_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业id',
  `teacher_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师id',
  `class_president_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班长id',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_class
-- ----------------------------
INSERT INTO `sfm_class` VALUES ('9a41c6414b94f4a082bcb5b691dc63d7', '大一', '2002', '49a1f7a997043f7f6981bae783232ad4', 'a38f1c52a1c8ade71c7420f45a7b42d6', '', '0', '2020-10-18 18:01:37', 'admin', '2020-10-18 18:01:45', 'admin');
INSERT INTO `sfm_class` VALUES ('bac53e787332f56202a824b5a2d88fa5', '大一', '2001', '49a1f7a997043f7f6981bae783232ad4', '72ef082a2fd43ea2da9a5740b5ba19d6', '', '0', '2020-10-18 18:01:03', 'admin', '2020-10-18 18:01:13', 'admin');
INSERT INTO `sfm_class` VALUES ('e72898d283a1b3064b5d1c3ac4b54b49', '大一', '2001', 'bcc25ea38b144a01383557180c24438d', '72ef082a2fd43ea2da9a5740b5ba19d6', '', '0', '2020-10-18 18:02:41', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for sfm_college
-- ----------------------------
DROP TABLE IF EXISTS `sfm_college`;
CREATE TABLE `sfm_college`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院名称',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学院表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_college
-- ----------------------------
INSERT INTO `sfm_college` VALUES ('eab2dc2bb3ecaaddeeaf4c44d5ddc250', '经济管理学院', '0', '2020-10-18 17:56:20', 'admin', NULL, NULL);
INSERT INTO `sfm_college` VALUES ('fa3b8bb293f8ef6e85a8bfd2815c1064', '信息工程学院', '0', '2020-10-18 17:56:30', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for sfm_education_experience
-- ----------------------------
DROP TABLE IF EXISTS `sfm_education_experience`;
CREATE TABLE `sfm_education_experience`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '在校职务',
  `school_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `certifier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '证明人姓名',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教育经历表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_education_experience
-- ----------------------------
INSERT INTO `sfm_education_experience` VALUES ('949f13fdb31f80a3a20bbcb15e1cc1ee', '2018-09-01 08:00:00', '2020-06-30 08:00:00', '班长', '某某高中', '路人甲', '0', '2020-10-18 18:09:16', 'admin', NULL, NULL, 'b7f61947b7fde451dc023fea5c3a5d7d');

-- ----------------------------
-- Table structure for sfm_reward_punishment
-- ----------------------------
DROP TABLE IF EXISTS `sfm_reward_punishment`;
CREATE TABLE `sfm_reward_punishment`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生id',
  `date` datetime(0) NULL DEFAULT NULL COMMENT '发生时间',
  `incident` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '事件说明',
  `nature` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '性质',
  `site` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地点',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '奖惩事件记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_reward_punishment
-- ----------------------------
INSERT INTO `sfm_reward_punishment` VALUES ('5a4d3f0aa40d860f484eb8d7bad5e60f', 'b7f61947b7fde451dc023fea5c3a5d7d', '2019-01-11 08:00:00', '...说明', '...性质', '某某高中', '0', '2020-10-18 18:10:39', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for sfm_specialty
-- ----------------------------
DROP TABLE IF EXISTS `sfm_specialty`;
CREATE TABLE `sfm_specialty`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `college_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院id',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_specialty
-- ----------------------------
INSERT INTO `sfm_specialty` VALUES ('49a1f7a997043f7f6981bae783232ad4', '人工智能', 'fa3b8bb293f8ef6e85a8bfd2815c1064', '0', '2020-10-18 17:57:07', 'admin', NULL, NULL);
INSERT INTO `sfm_specialty` VALUES ('8e04eeb043732bb4f1a8caf4357f497b', '会计', 'eab2dc2bb3ecaaddeeaf4c44d5ddc250', '0', '2020-10-18 17:57:28', 'admin', '2020-10-18 17:58:55', 'admin');
INSERT INTO `sfm_specialty` VALUES ('bcc25ea38b144a01383557180c24438d', '软件技术', 'fa3b8bb293f8ef6e85a8bfd2815c1064', '0', '2020-10-18 17:56:47', 'admin', '2020-10-18 17:57:15', 'admin');

-- ----------------------------
-- Table structure for sfm_student
-- ----------------------------
DROP TABLE IF EXISTS `sfm_student`;
CREATE TABLE `sfm_student`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别（男1，女2）',
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `birthdate` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `native_place` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `enrolled_date` datetime(0) NULL DEFAULT NULL COMMENT '入校日期',
  `class_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级Id',
  `bareheaded_photo` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '免冠照片',
  `file_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '档案编号',
  `home_address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学籍状况：1在读、2休学、3退学、4转出',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_student
-- ----------------------------

-- ----------------------------
-- Table structure for sfm_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sfm_sys_user`;
CREATE TABLE `sfm_sys_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `permission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_sys_user
-- ----------------------------

-- ----------------------------
-- Table structure for sfm_teacher
-- ----------------------------
DROP TABLE IF EXISTS `sfm_teacher`;
CREATE TABLE `sfm_teacher`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师编号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师名称',
  `college_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院id',
  `del_flag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sfm_teacher
-- ----------------------------
INSERT INTO `sfm_teacher` VALUES ('72ef082a2fd43ea2da9a5740b5ba19d6', 'TC0002', '123456', '老张', 'fa3b8bb293f8ef6e85a8bfd2815c1064', '0', '2020-10-18 17:58:36', 'admin', '2020-10-18 17:59:01', 'admin');
INSERT INTO `sfm_teacher` VALUES ('a38f1c52a1c8ade71c7420f45a7b42d6', 'TC0001', '123456', '老王', 'fa3b8bb293f8ef6e85a8bfd2815c1064', '0', '2020-10-18 17:58:10', 'admin', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;