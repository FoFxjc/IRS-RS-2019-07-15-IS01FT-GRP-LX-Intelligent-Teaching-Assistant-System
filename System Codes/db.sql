/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : mrtp

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 22/09/2019 10:32:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adjustment
-- ----------------------------
DROP TABLE IF EXISTS `adjustment`;
CREATE TABLE `adjustment`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `key` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of adjustment
-- ----------------------------
INSERT INTO `adjustment` VALUES (1567662259, 1, 1, 'no Monday', 0);
INSERT INTO `adjustment` VALUES (1567662259, 1, 2, 'no Tuesday', 1);
INSERT INTO `adjustment` VALUES (1567662259, 1, 3, 'no Wednesday', 2);
INSERT INTO `adjustment` VALUES (1567662259, 1, 4, 'no Thursday', 3);
INSERT INTO `adjustment` VALUES (1567662259, 1, 5, 'no Friday', 4);
INSERT INTO `adjustment` VALUES (1567662259, 1, 6, 'no Saturday', 5);
INSERT INTO `adjustment` VALUES (1567662259, 1, 7, 'no Sunday', 6);

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('2fec212cc90a');

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NULL DEFAULT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point_reading` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point_writing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point_listening` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `point_total` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommend_speaking` int(11) NOT NULL,
  `recommend_reading` int(11) NOT NULL,
  `recommend_writing` int(11) NOT NULL,
  `recommend_listening` int(11) NOT NULL,
  `stu_adjustments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stu_id` int(11) NULL DEFAULT NULL,
  `point_speaking` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_listening` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_reading` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_speaking` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_total` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_writing` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_id`(`course_id`) USING BTREE,
  INDEX `stu_id`(`stu_id`) USING BTREE,
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES (1567677810, 1, 1, 1, 'IELTS', '4.5', '4.5', '4.5', '4.5', 20, 20, 20, 20, '[1, 2]', 2, 1, '4.5', '6', '6', '6', '6', '6');
INSERT INTO `appointment` VALUES (1567935877, 1, 2, 1, 'IELTS', '4.5', '4.5', '4.5', '4.5', 35, 22, 17, 17, '[]', 2, 5, '4.5', '6', '6', '6', '6', '6');
INSERT INTO `appointment` VALUES (1568887682, 1, 3, 1, 'TOEFL', '15', '15', '15', '60', 12, 12, 22, 7, '[1]', 2, 22, '15', '25', '25', '25', '100', '25');
INSERT INTO `appointment` VALUES (1568895873, 1, 4, 1, 'IELTS', '6.5', '6', '6.5', '6.5', 17, 7, 12, 7, '[1]', 2, 36, '6.5', '7', '7', '7', '7', '7.5');
INSERT INTO `appointment` VALUES (1568896067, 1, 5, 1, 'TOEFL', '21', '21', '20', '90', 7, 12, 17, 12, '[1, 2, 3]', 2, 53, '28', '25', '30', '25', '108', '28');
INSERT INTO `appointment` VALUES (1568896150, 1, 6, 1, 'IELTS', '5.5', '6', '5.5', '5.5', 12, 7, 12, 7, '[1]', 2, 55, '4.5', '6', '6', '7', '6.5', '7');
INSERT INTO `appointment` VALUES (1568896207, 1, 7, 1, 'TOEFL', '24', '24', '21', '93', 17, 4, 12, 7, '[3]', 2, 23, '24', '30', '28', '28', '116', '30');
INSERT INTO `appointment` VALUES (1568896246, 1, 8, 1, 'TOEFL', '20', '20', '20', '80', 17, 4, 12, 7, '[6]', 2, 60, '20', '25', '25', '25', '100', '25');
INSERT INTO `appointment` VALUES (1569026393, 1, 10, 1, 'IELTS', '4.5', '5', '4.5', '5', 12, 17, 12, 7, '[1]', 2, 62, '5.5', '6', '6', '6', '6', '6');
INSERT INTO `appointment` VALUES (1569050022, 1, 11, 3, 'IELTS', '4.5', '4.5', '4.5', '4.5', 35, 22, 17, 7, '[3]', 1, 47, '4.5', '6', '6', '6', '6', '6');

-- ----------------------------
-- Table structure for calendar
-- ----------------------------
DROP TABLE IF EXISTS `calendar`;
CREATE TABLE `calendar`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stu_id`(`stu_id`) USING BTREE,
  INDEX `course_id`(`course_id`) USING BTREE,
  CONSTRAINT `calendar_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `calendar_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of calendar
-- ----------------------------
INSERT INTO `calendar` VALUES (1569027041, 1, 47, 60, 1, 1569859200, 1577116800, 'TOEFL', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 48, 23, 1, 1569859200, 1577721600, 'TOEFL', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 49, 55, 1, 1569859200, 1577376000, 'IELTS', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 50, 5, 1, 1569859200, 1577721600, 'IELTS', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 51, 22, 1, 1569945600, 1577721600, 'TOEFL', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 52, 53, 1, 1569945600, 1577548800, 'TOEFL', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 53, 1, 1, 1569945600, 1577548800, 'IELTS', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 54, 62, 1, 1570032000, 1577462400, 'IELTS', 1);
INSERT INTO `calendar` VALUES (1569027041, 1, 55, 36, 1, 1570032000, 1577721600, 'IELTS', 1);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `types` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `app_deadline` int(11) NOT NULL,
  `tch_id` int(11) NULL DEFAULT NULL,
  `tch_adjustments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `classes_num_limited` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tch_id`(`tch_id`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`tch_id`) REFERENCES `teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1567662404, 1, 1, 'Jenny\'s IELTS and TOEFL Course', '[\'IELTS\', \'TOEFL\']', 1569859200, 1577721600, 1568995200, 1, '[1]', '<p>Jenny is an independent English teacher with 8 years of experience in IELTS and TOEFL education. With rich teaching and guidance experience, she can help students to achieve the target score in the shortest possible time</p>', 4, 368);
INSERT INTO `course` VALUES (1569033098, 1, 3, 'Jenny\'s IELTS Course', '[\'IELTS\', \'TOEFL\']', 1580486400, 1588176000, 1579881600, 1, '[3]', '<p>Jenny\'s IELTS Course</p>', 1, 308);

-- ----------------------------
-- Table structure for scheduler
-- ----------------------------
DROP TABLE IF EXISTS `scheduler`;
CREATE TABLE `scheduler`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cal_id` int(11) NULL DEFAULT NULL,
  `category` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cal_id`(`cal_id`) USING BTREE,
  CONSTRAINT `scheduler_ibfk_1` FOREIGN KEY (`cal_id`) REFERENCES `calendar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1388 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of scheduler
-- ----------------------------
INSERT INTO `scheduler` VALUES (1569027041, 1, 1072, 47, 'Speaking', 1569888000, 1569895200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1073, 47, 'Speaking', 1570339800, 1570347000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1074, 47, 'Speaking', 1570588200, 1570595400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1075, 47, 'Speaking', 1570674600, 1570681800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1076, 47, 'Speaking', 1570780800, 1570788000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1077, 47, 'Speaking', 1570953600, 1570960800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1078, 47, 'Speaking', 1571097600, 1571104800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1079, 47, 'Speaking', 1571270400, 1571277600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1080, 47, 'Speaking', 1571817600, 1571824800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1081, 47, 'Speaking', 1572336000, 1572343200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1082, 47, 'Speaking', 1572413400, 1572420600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1083, 47, 'Speaking', 1572489000, 1572496200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1084, 47, 'Speaking', 1572739200, 1572746400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1085, 47, 'Reading', 1572921000, 1572928200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1086, 47, 'Reading', 1572998400, 1573005600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1087, 47, 'Reading', 1573344000, 1573351200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1088, 47, 'Writing', 1573536600, 1573543800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1089, 47, 'Writing', 1573795800, 1573803000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1090, 47, 'Writing', 1573957800, 1573965000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1091, 47, 'Writing', 1574141400, 1574148600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1092, 47, 'Writing', 1574227800, 1574235000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1093, 47, 'Writing', 1574409600, 1574416800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1094, 47, 'Writing', 1574726400, 1574733600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1095, 47, 'Writing', 1574994600, 1575001800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1096, 47, 'Writing', 1575081000, 1575088200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1097, 47, 'Writing', 1575792000, 1575799200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1098, 47, 'Listening', 1576022400, 1576029600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1099, 47, 'Listening', 1576117800, 1576125000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1100, 47, 'Listening', 1576215000, 1576222200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1101, 47, 'Listening', 1576396800, 1576404000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1102, 47, 'Listening', 1576647000, 1576654200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1103, 47, 'Listening', 1577154600, 1577161800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1104, 48, 'Speaking', 1569897000, 1569904200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1105, 48, 'Speaking', 1570924800, 1570932000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1106, 48, 'Speaking', 1571117400, 1571124600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1107, 48, 'Speaking', 1571443200, 1571450400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1108, 48, 'Speaking', 1571731200, 1571738400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1109, 48, 'Speaking', 1572067800, 1572075000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1110, 48, 'Speaking', 1572508800, 1572516000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1111, 48, 'Speaking', 1572661800, 1572669000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1112, 48, 'Speaking', 1572748200, 1572755400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1113, 48, 'Speaking', 1572931800, 1572939000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1114, 48, 'Speaking', 1573286400, 1573293600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1115, 48, 'Speaking', 1573516800, 1573524000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1116, 48, 'Reading', 1573891200, 1573898400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1117, 48, 'Reading', 1574323200, 1574330400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1118, 48, 'Reading', 1574400600, 1574407800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1119, 48, 'Writing', 1574487000, 1574494200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1120, 48, 'Writing', 1574562600, 1574569800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1121, 48, 'Writing', 1574755200, 1574762400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1122, 48, 'Writing', 1575187200, 1575194400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1123, 48, 'Writing', 1575340200, 1575347400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1124, 48, 'Writing', 1575696600, 1575703800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1125, 48, 'Writing', 1575955800, 1575963000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1126, 48, 'Writing', 1576560600, 1576567800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1127, 48, 'Writing', 1576722600, 1576729800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1128, 48, 'Listening', 1576828800, 1576836000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1129, 48, 'Listening', 1577165400, 1577172600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1130, 48, 'Listening', 1577424600, 1577431800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1131, 48, 'Listening', 1577606400, 1577613600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1132, 48, 'Listening', 1577779200, 1577786400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1133, 49, 'Speaking', 1569907800, 1569915000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1134, 49, 'Speaking', 1570080600, 1570087800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1135, 49, 'Speaking', 1570348800, 1570356000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1136, 49, 'Speaking', 1570599000, 1570606200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1137, 49, 'Speaking', 1570752000, 1570759200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1138, 49, 'Speaking', 1571184000, 1571191200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1139, 49, 'Speaking', 1571376600, 1571383800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1140, 49, 'Speaking', 1571895000, 1571902200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1141, 49, 'Speaking', 1572134400, 1572141600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1142, 49, 'Speaking', 1572402600, 1572409800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1143, 49, 'Speaking', 1572499800, 1572507000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027041, 1, 1144, 49, 'Reading', 1572652800, 1572660000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1145, 49, 'Reading', 1573882200, 1573889400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1146, 49, 'Reading', 1574130600, 1574137800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1147, 49, 'Reading', 1574236800, 1574244000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1148, 49, 'Reading', 1574294400, 1574301600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1149, 49, 'Writing', 1574841600, 1574848800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1150, 49, 'Writing', 1574985600, 1574992800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1151, 49, 'Writing', 1575091800, 1575099000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1152, 49, 'Writing', 1575158400, 1575165600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1153, 49, 'Writing', 1575331200, 1575338400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1154, 49, 'Writing', 1575426600, 1575433800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1155, 49, 'Writing', 1575532800, 1575540000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1156, 49, 'Writing', 1575685800, 1575693000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1157, 49, 'Writing', 1575945000, 1575952200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1158, 49, 'Writing', 1576128600, 1576135800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1159, 49, 'Writing', 1576290600, 1576297800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1160, 49, 'Listening', 1576387800, 1576395000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1161, 49, 'Listening', 1576540800, 1576548000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1162, 49, 'Listening', 1576636200, 1576643400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1163, 49, 'Listening', 1576819800, 1576827000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1164, 49, 'Listening', 1576886400, 1576893600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1165, 49, 'Listening', 1577001600, 1577008800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1166, 49, 'Listening', 1577232000, 1577239200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1167, 49, 'Listening', 1577433600, 1577440800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1168, 50, 'Speaking', 1569916800, 1569924000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1169, 50, 'Speaking', 1569974400, 1569981600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1170, 50, 'Speaking', 1570167000, 1570174200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1171, 50, 'Speaking', 1570233600, 1570240800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1172, 50, 'Speaking', 1570329000, 1570336200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1173, 50, 'Speaking', 1570521600, 1570528800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1174, 50, 'Speaking', 1570608000, 1570615200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1175, 50, 'Speaking', 1570867200, 1570874400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1176, 50, 'Speaking', 1571106600, 1571113800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1177, 50, 'Speaking', 1571203800, 1571211000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1178, 50, 'Speaking', 1571299200, 1571306400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1179, 50, 'Speaking', 1571365800, 1571373000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1180, 50, 'Speaking', 1571711400, 1571718600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1181, 50, 'Speaking', 1571875200, 1571882400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1182, 50, 'Speaking', 1571981400, 1571988600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1183, 50, 'Speaking', 1572163200, 1572170400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1184, 50, 'Speaking', 1572316200, 1572323400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1185, 50, 'Speaking', 1572566400, 1572573600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1186, 50, 'Reading', 1572759000, 1572766200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1187, 50, 'Reading', 1572912000, 1572919200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1188, 50, 'Reading', 1573093800, 1573101000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1189, 50, 'Reading', 1573277400, 1573284600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1190, 50, 'Reading', 1573363800, 1573371000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1191, 50, 'Reading', 1573525800, 1573533000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1192, 50, 'Reading', 1573709400, 1573716600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1193, 50, 'Reading', 1573871400, 1573878600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1194, 50, 'Reading', 1574208000, 1574215200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1195, 50, 'Reading', 1574303400, 1574310600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1196, 50, 'Reading', 1574380800, 1574388000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1197, 50, 'Writing', 1574746200, 1574753400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1198, 50, 'Writing', 1574821800, 1574829000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1199, 50, 'Writing', 1574899200, 1574906400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1200, 50, 'Writing', 1575100800, 1575108000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1201, 50, 'Writing', 1575360000, 1575367200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1202, 50, 'Writing', 1575523800, 1575531000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1203, 50, 'Writing', 1575619200, 1575626400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1204, 50, 'Writing', 1575783000, 1575790200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1205, 50, 'Listening', 1575936000, 1575943200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1206, 50, 'Listening', 1576042200, 1576049400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1207, 50, 'Listening', 1576224000, 1576231200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1208, 50, 'Listening', 1576281600, 1576288800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1209, 50, 'Listening', 1576733400, 1576740600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1210, 50, 'Listening', 1576972800, 1576980000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1211, 50, 'Listening', 1577174400, 1577181600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1212, 50, 'Listening', 1577413800, 1577421000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1213, 50, 'Listening', 1577577600, 1577584800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1214, 50, 'Listening', 1577750400, 1577757600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1215, 51, 'Speaking', 1569983400, 1569990600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1216, 51, 'Speaking', 1570147200, 1570154400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1217, 51, 'Speaking', 1570253400, 1570260600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1218, 51, 'Speaking', 1570320000, 1570327200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1219, 51, 'Speaking', 1570501800, 1570509000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1220, 51, 'Speaking', 1570579200, 1570586400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1221, 51, 'Speaking', 1570771800, 1570779000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1222, 51, 'Speaking', 1571212800, 1571220000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1223, 51, 'Reading', 1571472000, 1571479200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1224, 51, 'Reading', 1571529600, 1571536800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1225, 51, 'Reading', 1571904000, 1571911200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1226, 51, 'Reading', 1571990400, 1571997600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1227, 51, 'Reading', 1572076800, 1572084000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1228, 51, 'Reading', 1572327000, 1572334200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1229, 51, 'Reading', 1572422400, 1572429600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1230, 51, 'Reading', 1572586200, 1572593400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1231, 51, 'Writing', 1572681600, 1572688800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1232, 51, 'Writing', 1572940800, 1572948000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1233, 51, 'Writing', 1573191000, 1573198200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1234, 51, 'Writing', 1573632000, 1573639200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1235, 51, 'Writing', 1573698600, 1573705800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1236, 51, 'Writing', 1573804800, 1573812000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1237, 51, 'Writing', 1574121600, 1574128800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1238, 51, 'Writing', 1574573400, 1574580600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1239, 51, 'Writing', 1574812800, 1574820000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1240, 51, 'Writing', 1575351000, 1575358200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1241, 51, 'Writing', 1575446400, 1575453600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1242, 51, 'Writing', 1575513000, 1575520200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1243, 51, 'Writing', 1575676800, 1575684000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1244, 51, 'Writing', 1576051200, 1576058400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1245, 51, 'Writing', 1576377000, 1576384200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1246, 51, 'Listening', 1576992600, 1576999800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1247, 51, 'Listening', 1577241000, 1577248200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1248, 51, 'Listening', 1577338200, 1577345400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1249, 51, 'Listening', 1577511000, 1577518200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1250, 51, 'Listening', 1577770200, 1577777400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1251, 52, 'Speaking', 1569994200, 1570001400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1252, 52, 'Speaking', 1570858200, 1570865400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1253, 52, 'Speaking', 1571279400, 1571286600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027042, 1, 1254, 52, 'Reading', 1571356800, 1571364000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1255, 52, 'Reading', 1571452200, 1571459400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1256, 52, 'Reading', 1571538600, 1571545800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1257, 52, 'Reading', 1571961600, 1571968800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1258, 52, 'Reading', 1572480000, 1572487200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1259, 52, 'Reading', 1572595200, 1572602400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1260, 52, 'Writing', 1572672600, 1572679800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1261, 52, 'Writing', 1573084800, 1573092000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1262, 52, 'Writing', 1573180200, 1573187400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1263, 52, 'Writing', 1573545600, 1573552800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1264, 52, 'Writing', 1573718400, 1573725600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1265, 52, 'Writing', 1573948800, 1573956000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1266, 52, 'Writing', 1574476200, 1574483400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1267, 52, 'Writing', 1574553600, 1574560800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1268, 52, 'Writing', 1574919000, 1574926200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1269, 52, 'Listening', 1575005400, 1575012600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1270, 52, 'Listening', 1576204200, 1576211400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1271, 52, 'Listening', 1576368000, 1576375200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1272, 52, 'Listening', 1576800000, 1576807200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1273, 52, 'Listening', 1576906200, 1576913400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1274, 52, 'Listening', 1577347200, 1577354400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1275, 52, 'Listening', 1577404800, 1577412000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1276, 52, 'Listening', 1577586600, 1577593800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1277, 53, 'Speaking', 1570003200, 1570010400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1278, 53, 'Speaking', 1570060800, 1570068000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1279, 53, 'Speaking', 1570176000, 1570183200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1280, 53, 'Speaking', 1570262400, 1570269600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1281, 53, 'Speaking', 1570492800, 1570500000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1282, 53, 'Speaking', 1570694400, 1570701600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1283, 53, 'Speaking', 1570761000, 1570768200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1284, 53, 'Speaking', 1570847400, 1570854600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1285, 53, 'Speaking', 1570944600, 1570951800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1286, 53, 'Speaking', 1571290200, 1571297400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1287, 53, 'Reading', 1571549400, 1571556600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1288, 53, 'Reading', 1571808600, 1571815800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1289, 53, 'Reading', 1571970600, 1571977800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1290, 53, 'Reading', 1572057000, 1572064200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1291, 53, 'Reading', 1572154200, 1572161400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1292, 53, 'Reading', 1572575400, 1572582600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1293, 53, 'Reading', 1572768000, 1572775200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1294, 53, 'Reading', 1573027200, 1573034400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1295, 53, 'Reading', 1573104600, 1573111800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1296, 53, 'Reading', 1573171200, 1573178400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1297, 53, 'Writing', 1573623000, 1573630200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1298, 53, 'Writing', 1573689600, 1573696800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1299, 53, 'Writing', 1573776000, 1573783200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1300, 53, 'Writing', 1573968600, 1573975800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1301, 53, 'Writing', 1574314200, 1574321400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1302, 53, 'Writing', 1574389800, 1574397000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1303, 53, 'Writing', 1574582400, 1574589600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1304, 53, 'Writing', 1574908200, 1574915400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1305, 53, 'Writing', 1575014400, 1575021600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1306, 53, 'Writing', 1575437400, 1575444600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1307, 53, 'Listening', 1575610200, 1575617400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1308, 53, 'Listening', 1575763200, 1575770400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1309, 53, 'Listening', 1576137600, 1576144800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1310, 53, 'Listening', 1576195200, 1576202400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1311, 53, 'Listening', 1576809000, 1576816200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1312, 53, 'Listening', 1576915200, 1576922400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1313, 53, 'Listening', 1576981800, 1576989000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1314, 53, 'Listening', 1577145600, 1577152800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1315, 53, 'Listening', 1577260800, 1577268000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1316, 53, 'Listening', 1577500200, 1577507400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1317, 53, 'Listening', 1577597400, 1577604600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1318, 54, 'Speaking', 1570069800, 1570077000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1319, 54, 'Speaking', 1570685400, 1570692600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1320, 54, 'Speaking', 1570933800, 1570941000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1321, 54, 'Speaking', 1571126400, 1571133600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1322, 54, 'Speaking', 1571385600, 1571392800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1323, 54, 'Speaking', 1571463000, 1571470200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1324, 54, 'Speaking', 1571702400, 1571709600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1325, 54, 'Reading', 1571788800, 1571796000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1326, 54, 'Reading', 1571884200, 1571891400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1327, 54, 'Reading', 1572307200, 1572314400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1328, 54, 'Reading', 1573007400, 1573014600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1329, 54, 'Reading', 1573113600, 1573120800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1330, 54, 'Reading', 1573257600, 1573264800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1331, 54, 'Reading', 1573353000, 1573360200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1332, 54, 'Reading', 1573612200, 1573619400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1333, 54, 'Reading', 1573862400, 1573869600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1334, 54, 'Reading', 1574217000, 1574224200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1335, 54, 'Writing', 1574496000, 1574503200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1336, 54, 'Writing', 1574832600, 1574839800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1337, 54, 'Writing', 1575167400, 1575174600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1338, 54, 'Writing', 1575504000, 1575511200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1339, 54, 'Writing', 1575590400, 1575597600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1340, 54, 'Writing', 1576301400, 1576308600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1341, 54, 'Writing', 1576549800, 1576557000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1342, 54, 'Listening', 1576627200, 1576634400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1343, 54, 'Listening', 1576713600, 1576720800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1344, 54, 'Listening', 1577251800, 1577259000, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1345, 54, 'Listening', 1577327400, 1577334600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1346, 54, 'Listening', 1577491200, 1577498400, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1347, 55, 'Speaking', 1570089600, 1570096800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1348, 55, 'Speaking', 1570156200, 1570163400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1349, 55, 'Speaking', 1570242600, 1570249800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1350, 55, 'Speaking', 1570512600, 1570519800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1351, 55, 'Speaking', 1570665600, 1570672800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1352, 55, 'Speaking', 1570838400, 1570845600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1353, 55, 'Speaking', 1571193000, 1571200200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1354, 55, 'Speaking', 1571558400, 1571565600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1355, 55, 'Speaking', 1571722200, 1571729400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1356, 55, 'Speaking', 1571797800, 1571805000, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1357, 55, 'Speaking', 1572048000, 1572055200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1358, 55, 'Speaking', 1572143400, 1572150600, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1359, 55, 'Speaking', 1572393600, 1572400800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1360, 55, 'Speaking', 1573018200, 1573025400, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1361, 55, 'Speaking', 1573200000, 1573207200, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1362, 55, 'Speaking', 1573266600, 1573273800, 'Speaking', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1363, 55, 'Reading', 1573372800, 1573380000, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1364, 55, 'Reading', 1573603200, 1573610400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1365, 55, 'Reading', 1573785000, 1573792200, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1366, 55, 'Reading', 1573977600, 1573984800, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1367, 55, 'Reading', 1574150400, 1574157600, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1368, 55, 'Reading', 1574467200, 1574474400, 'Reading', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1369, 55, 'Writing', 1574735400, 1574742600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1370, 55, 'Writing', 1574928000, 1574935200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1371, 55, 'Writing', 1575072000, 1575079200, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1372, 55, 'Writing', 1575178200, 1575185400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1373, 55, 'Writing', 1575417600, 1575424800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1374, 55, 'Writing', 1575599400, 1575606600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1375, 55, 'Writing', 1575705600, 1575712800, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1376, 55, 'Writing', 1575772200, 1575779400, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1377, 55, 'Writing', 1575964800, 1575972000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1378, 55, 'Writing', 1576031400, 1576038600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027043, 1, 1379, 55, 'Writing', 1576108800, 1576116000, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1380, 55, 'Writing', 1576310400, 1576317600, 'Writing', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1381, 55, 'Listening', 1576569600, 1576576800, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1382, 55, 'Listening', 1576656000, 1576663200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1383, 55, 'Listening', 1576742400, 1576749600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1384, 55, 'Listening', 1576895400, 1576902600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1385, 55, 'Listening', 1577318400, 1577325600, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1386, 55, 'Listening', 1577520000, 1577527200, 'Listening', 1);
INSERT INTO `scheduler` VALUES (1569027044, 1, 1387, 55, 'Listening', 1577759400, 1577766600, 'Listening', 1);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1567662258, 1, 1, 'jiachenx', 'jiachenx@u.nus.edu', 'male', '#252358', 'pbkdf2:sha256:150000$flfac2yV$e5a90fa3ff3ad904493c3c98f06b04f0e49d80efb07522b08e5a2e451c41bd27', '25');
INSERT INTO `student` VALUES (NULL, 1, 2, 'lixinlin', 'lixinlin@u.nus.edu', 'female', '#C31D1D', 'pbkdf2:sha256:150000$UZGSczbK$98f53be6b635fbfe9c90827f4a12f127d44393162d0ae1bd576f5cede315225b', '22');
INSERT INTO `student` VALUES (NULL, 1, 5, 'jack', 'jack@u.nus.edu', 'male', '#07FBEA', 'pbkdf2:sha256:150000$JVeiOjCR$27c3d73bfb490cbd1b14e7c3cff6bcef4f1143e7055b1ad69add4c1ea4b1a381', '18');
INSERT INTO `student` VALUES (1568886490, 1, 15, 'Egon', 'Egon@u.nus.edu', 'male', '#5DFCDE', 'pbkdf2:sha256:150000$DX2I932i$b7fff667b811b2d8a2b0d082a1499490a568563161e2b2da2871ea6a4bddaced', '23');
INSERT INTO `student` VALUES (1568886490, 1, 16, 'Samuel', 'Samuel@u.nus.edu', 'male', '#11EDBC', 'pbkdf2:sha256:150000$spHNVed9$a6e71a3ca54736afbbc77dec9a63e64f1957fdfc0e6308d40643d93069b01e9b', '24');
INSERT INTO `student` VALUES (1568886490, 1, 17, 'Garth', 'Garth@u.nus.edu', 'male', '#C41EAF', 'pbkdf2:sha256:150000$HIj1QKMV$65419ecfd0d0670499f156d3d6cb4ad96d9bb0547b67f098ba325dd19a7587b6', '18');
INSERT INTO `student` VALUES (1568886490, 1, 18, 'Niall', 'Niall@u.nus.edu', 'male', '#47B4EE', 'pbkdf2:sha256:150000$hQ5jOaCY$2046b35a16f4d1390cd042ccd6d7b55668698c9e84b4b690fb9fddeabd2b138d', '22');
INSERT INTO `student` VALUES (1568886491, 1, 19, 'Devin', 'Devin@u.nus.edu', 'male', '#EF8C2F', 'pbkdf2:sha256:150000$jsITzAGb$14d01eeae5e11390d5c4834fed62d1e62f8fcac9d611255a7dcad37c7cc4a9b6', '19');
INSERT INTO `student` VALUES (1568886491, 1, 20, 'Jakob', 'Jakob@u.nus.edu', 'male', '#A15149', 'pbkdf2:sha256:150000$1v0k3AIJ$0320e8c3125942a7b4606438a591b56c9b92e523eb8064ed8c081f0ba9e45019', '19');
INSERT INTO `student` VALUES (1568886491, 1, 21, 'Dashawn', 'Dashawn@u.nus.edu', 'male', '#CC5A7E', 'pbkdf2:sha256:150000$MaWK432r$d5e82d75d21b075d4071c2470b11f703474dea3f46733e17e61a788877f18f98', '24');
INSERT INTO `student` VALUES (1568886491, 1, 22, 'Leandro', 'Leandro@u.nus.edu', 'male', '#CFB2E5', 'pbkdf2:sha256:150000$kSSXPENx$03d2f17ec7878b4c3b75d1f99ec18c7a98c07572a048a9d7e924163c01507afd', '17');
INSERT INTO `student` VALUES (1568886491, 1, 23, 'Tyler', 'Tyler@u.nus.edu', 'male', '#E65755', 'pbkdf2:sha256:150000$s1GyRTLW$75a88512e6e1b87bc7ec1f5947ef108b54e1e140c0272d555e2fdc526a3818da', '23');
INSERT INTO `student` VALUES (1568886491, 1, 24, 'Leon', 'Leon@u.nus.edu', 'male', '#68A439', 'pbkdf2:sha256:150000$H0hwc84E$49210619975537be6586408817c4295ed6d6ad8624a368e2411f651c908d2f72', '19');
INSERT INTO `student` VALUES (1568886491, 1, 25, 'Skylar', 'Skylar@u.nus.edu', 'male', '#5D1C1F', 'pbkdf2:sha256:150000$1of8huKE$29a4f1534a659e2263e1b687c7241a48210208b1bb119669cead75d48b553612', '17');
INSERT INTO `student` VALUES (1568886492, 1, 26, 'Dmitri', 'Dmitri@u.nus.edu', 'male', '#C5DE55', 'pbkdf2:sha256:150000$wmzKKUro$3827686cbcdeeb4a1aecbad7825eb59cd4f858bbfd9bf5260cd7078aeb4652dd', '22');
INSERT INTO `student` VALUES (1568886492, 1, 27, 'Elvis', 'Elvis@u.nus.edu', 'male', '#77D6B2', 'pbkdf2:sha256:150000$TZKdSG5U$60891c6436eca11879c3faa4ee5c91444bc7ab30161ab043a887dfd3f36228b7', '20');
INSERT INTO `student` VALUES (1568886492, 1, 28, 'Ian', 'Ian@u.nus.edu', 'male', '#7D6FB6', 'pbkdf2:sha256:150000$AByfwxQR$94043176a5c45c9b5b32dd835e7e4fd3fe8fdbbb7f8b13b882563e6607d86f4d', '16');
INSERT INTO `student` VALUES (1568886492, 1, 29, 'Cameron', 'Cameron@u.nus.edu', 'male', '#CEDEC9', 'pbkdf2:sha256:150000$8CGq1vFG$22aaccf388c933b0260dd847b94b7dca51800680d8f875e8129654937b79e066', '17');
INSERT INTO `student` VALUES (1568886492, 1, 30, 'Henley', 'Henley@u.nus.edu', 'male', '#6134FD', 'pbkdf2:sha256:150000$X5lwo4Dw$efeea4bcbe76e96840d03863fa9bb1aa78600cb021a7b9b13d0e4fa2c5aad178', '16');
INSERT INTO `student` VALUES (1568886492, 1, 31, 'Giorgio', 'Giorgio@u.nus.edu', 'male', '#8F8DC3', 'pbkdf2:sha256:150000$4wor356e$885a7da1210126557d5cad8b1096b09e31dc4356a525f2f40957d37f727b582a', '21');
INSERT INTO `student` VALUES (1568886492, 1, 32, 'Blue', 'Blue@u.nus.edu', 'male', '#5BD814', 'pbkdf2:sha256:150000$HJow9s1x$1ba9d6d6646b59e2d5ad4e53b20f7e95c9d84f7a76a9c24d689feae85dd39a92', '20');
INSERT INTO `student` VALUES (1568886493, 1, 33, 'Jamal', 'Jamal@u.nus.edu', 'male', '#C49A8C', 'pbkdf2:sha256:150000$l5NjlNHw$a469efa2c1d68bd47067142bcad3b5ee1698e89c301bef4e574717a38cdcc332', '17');
INSERT INTO `student` VALUES (1568886493, 1, 34, 'Oakes', 'Oakes@u.nus.edu', 'male', '#5F3C8A', 'pbkdf2:sha256:150000$HpGGwwqd$ebccc3aab4ae1329a6ebfc4037fc32ae867350adc75456261a63cfb6b52f4f18', '23');
INSERT INTO `student` VALUES (1568886493, 1, 35, 'Tiago', 'Tiago@u.nus.edu', 'male', '#FFF738', 'pbkdf2:sha256:150000$GDRPIEwp$4e0d714dcb6d72fb5b594ad183436646dc985a87cc79756f4f8bee5e601b695b', '24');
INSERT INTO `student` VALUES (1568886493, 1, 36, 'Wesley', 'Wesley@u.nus.edu', 'male', '#FEC1CD', 'pbkdf2:sha256:150000$7C1pai1g$d91f8633943f6a59ec63bcf6ddc5e23b641f54c39c2e741686fbe8bcade6fab1', '22');
INSERT INTO `student` VALUES (1568886493, 1, 37, 'Shay', 'Shay@u.nus.edu', 'male', '#4C3AAC', 'pbkdf2:sha256:150000$K5YDaD59$7390b178cd4e56f2b71b3efb16e97c6ad70da23e646dc4fa58cffe465faa6685', '20');
INSERT INTO `student` VALUES (1568886493, 1, 38, 'Dale', 'Dale@u.nus.edu', 'male', '#F41528', 'pbkdf2:sha256:150000$7VPJAHQQ$89e668b0a1350da547ee13bd30c09a07f14f098e78376b86ccdf62219d0504c1', '21');
INSERT INTO `student` VALUES (1568886494, 1, 39, 'Ella', 'Ella@u.nus.edu', 'female', '#4D12E5', 'pbkdf2:sha256:150000$4uA0ke5J$723887f5410b0259bc5529a64ad871582712b03b6ce829520d3fa8f703e011e9', '21');
INSERT INTO `student` VALUES (1568886494, 1, 40, 'Ester', 'Ester@u.nus.edu', 'female', '#2BDC14', 'pbkdf2:sha256:150000$xMxZqplE$a1cb75769ac1da1947e9e199fb6598d4e2e222ab9f754dfb3e5d133883ce2a62', '18');
INSERT INTO `student` VALUES (1568886494, 1, 41, 'Destinee', 'Destinee@u.nus.edu', 'female', '#7BBC34', 'pbkdf2:sha256:150000$5Voo9UeI$36f34b1895b8ded70f68be9c1dddfcc212160afef77c0bd89a3748cfeff76de6', '22');
INSERT INTO `student` VALUES (1568886494, 1, 42, 'Katherine', 'Katherine@u.nus.edu', 'female', '#A5A864', 'pbkdf2:sha256:150000$7a0lD1G7$ddac686ce343f24dede5b9265329ab6d7fc3bf34ac25579058da2ce777dd3f93', '19');
INSERT INTO `student` VALUES (1568886494, 1, 43, 'Maureen', 'Maureen@u.nus.edu', 'female', '#21B6AA', 'pbkdf2:sha256:150000$KpmSMWV2$d73fb900809f0106f65ebe29e52ff71dcea98e0169ff32b4469a0c95b8395850', '16');
INSERT INTO `student` VALUES (1568886494, 1, 44, 'Mollie', 'Mollie@u.nus.edu', 'female', '#33D71D', 'pbkdf2:sha256:150000$204qwBf3$4c60e2e3f413606e89690368992aa42094c935f71f5da68d51226026d1e497df', '21');
INSERT INTO `student` VALUES (1568886495, 1, 45, 'Catrina', 'Catrina@u.nus.edu', 'female', '#76FB8B', 'pbkdf2:sha256:150000$2PQFOakj$30bf6250d3650f9e9644f5f3a681b4ab85b2ce160d02301661245207ee7f25a0', '24');
INSERT INTO `student` VALUES (1568886495, 1, 46, 'Isa', 'Isa@u.nus.edu', 'female', '#B52978', 'pbkdf2:sha256:150000$1SxLrNRj$e81dd66ca0bed77e0742d36e537aed8122e6c256b7f1e04322836286fa03f87e', '16');
INSERT INTO `student` VALUES (1568886495, 1, 47, 'Rayne', 'Rayne@u.nus.edu', 'female', '#2AD2EA', 'pbkdf2:sha256:150000$L6R6IJ4F$00872635331b569c96e1edb50fb31aac7236003eab32ed8ec69a6f434a8e46d5', '18');
INSERT INTO `student` VALUES (1568886495, 1, 48, 'Alyshialynn', 'Alyshialynn@u.nus.edu', 'female', '#9E13CC', 'pbkdf2:sha256:150000$xo7MVEbu$536cc3416ddc9298c42766aa4f56cdf38aa349575e1580c5b08eb5086b182306', '24');
INSERT INTO `student` VALUES (1568886495, 1, 49, 'Flick', 'Flick@u.nus.edu', 'female', '#DF4915', 'pbkdf2:sha256:150000$CNTbtPqQ$daf43fda7f52db36c61c579b22295372fff52a96f7676f5cc0f19e6af89d8a5d', '24');
INSERT INTO `student` VALUES (1568886495, 1, 50, 'Aya', 'Aya@u.nus.edu', 'female', '#FFEB16', 'pbkdf2:sha256:150000$X786ZRV0$e2864e4a0fdbb290b9dfca1166c560a2797aaa41f85eded0fd84cb6599fc8943', '17');
INSERT INTO `student` VALUES (1568886495, 1, 51, 'Honor', 'Honor@u.nus.edu', 'female', '#5B7C3C', 'pbkdf2:sha256:150000$UVLHxeTM$6911db5ebe4a6a8159d87dbd2a214dc4aa043c0ea41a6af02b3078014c0c3361', '20');
INSERT INTO `student` VALUES (1568886496, 1, 52, 'Alicia', 'Alicia@u.nus.edu', 'female', '#7441BF', 'pbkdf2:sha256:150000$73HFmoal$b75a6a1e9f7ebf75e1212a4026cf3aef2aa5d218a3aaa5e77884b1408b8c942a', '18');
INSERT INTO `student` VALUES (1568886496, 1, 53, 'Evie', 'Evie@u.nus.edu', 'female', '#FB816F', 'pbkdf2:sha256:150000$Tshmlkg9$5ea90f6a52b3a0a3d53fb6f4d220a5f40bacf460dc468fea39db3d2cc3647dcb', '16');
INSERT INTO `student` VALUES (1568886496, 1, 54, 'Rebecca', 'Rebecca@u.nus.edu', 'female', '#A8EF6B', 'pbkdf2:sha256:150000$S9rjUt6V$448ffc9c2491eb32aaf8d8024d46c2dd5aecba980e3cfdbde2292eb432cc5c8d', '22');
INSERT INTO `student` VALUES (1568886496, 1, 55, 'Kaya', 'Kaya@u.nus.edu', 'female', '#6EC3D9', 'pbkdf2:sha256:150000$024rIEAd$eb3ce5401670eeccca528cbb41d04e3230f250fb6d566865f6b5df9f70853e14', '19');
INSERT INTO `student` VALUES (1568886496, 1, 56, 'Esmeralda', 'Esmeralda@u.nus.edu', 'female', '#937D74', 'pbkdf2:sha256:150000$cJSa7D6w$da66e9656d6971a8ceab3d2576826a57d2a2dcb057b78bd272b9aeff78b1e280', '18');
INSERT INTO `student` VALUES (1568886496, 1, 57, 'Hallie', 'Hallie@u.nus.edu', 'female', '#C449D2', 'pbkdf2:sha256:150000$ac4g4Qmo$989fd7ec5d53b8040ec35376e13d36561137491fa49a61acea3362375ff63cd5', '16');
INSERT INTO `student` VALUES (1568886497, 1, 58, 'Patti', 'Patti@u.nus.edu', 'female', '#8F1281', 'pbkdf2:sha256:150000$KbbI9E2y$30d59ecafe0b7416e352d413372ea0c079c4a22d1ad3d1fa60567f68baae225b', '24');
INSERT INTO `student` VALUES (1568886497, 1, 59, 'Lynne', 'Lynne@u.nus.edu', 'female', '#1F3F8A', 'pbkdf2:sha256:150000$n7lZpXtV$ee98c26700b020cdec60bd92ff1d20618fd09ee1465a4b7e16aed02df085804d', '18');
INSERT INTO `student` VALUES (1568886497, 1, 60, 'Kathleen', 'Kathleen@u.nus.edu', 'female', '#5C7A4C', 'pbkdf2:sha256:150000$jzlXQdzG$5ec711fd6bf39e9ecc0aaa5f47f987577c19ba02232ac1b7aec4c2e46777d9e9', '23');
INSERT INTO `student` VALUES (1568886497, 1, 61, 'Brigid', 'Brigid@u.nus.edu', 'female', '#83CF1F', 'pbkdf2:sha256:150000$Qhxtklb0$b0c5c16d707d6b983c456cb3c9437d18af474ffb6ac8e4694411192ac09ab956', '16');
INSERT INTO `student` VALUES (1568886497, 1, 62, 'Doris', 'Doris@u.nus.edu', 'female', '#24B377', 'pbkdf2:sha256:150000$baPurr36$d2a61187c67f6cc49c2f79fbcef4d80478cb878c00e84b6e16ed76917b7a3ce0', '22');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `create_time` int(11) NULL DEFAULT NULL,
  `data_status` smallint(6) NULL DEFAULT 1,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `color` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE,
  UNIQUE INDEX `gender`(`gender`) USING BTREE,
  UNIQUE INDEX `color`(`color`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1567662258, 1, 1, 'jenny', 'jenny@jenny.com', 'female', '#252358', 'pbkdf2:sha256:150000$NFAFe5Sb$239b4a546b80a677ce544eb8e17647f524860053e51bb7d5bb05d2e304050e50');

SET FOREIGN_KEY_CHECKS = 1;
