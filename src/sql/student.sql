/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 28/11/2021 18:13:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `power` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('202032110101', '陈心韵', NULL, '18057081277', 3);
INSERT INTO `student` VALUES ('202032110102', '何乐怡', NULL, '13362574540', 3);
INSERT INTO `student` VALUES ('202032110103', '胡静雯', NULL, '13566014266', 3);
INSERT INTO `student` VALUES ('202032110104', '黄梁宇', NULL, '17355346082', 3);
INSERT INTO `student` VALUES ('202032110105', '宋子仪', NULL, '15565685395', 3);
INSERT INTO `student` VALUES ('202032110106', '田欣', NULL, '19918274095', 3);
INSERT INTO `student` VALUES ('202032110107', '王昕羽', NULL, '15157112387', 3);
INSERT INTO `student` VALUES ('202032110108', '王怡尧', NULL, '15136770083', 3);
INSERT INTO `student` VALUES ('202032110109', '毋彦茹', NULL, '13703890013', 3);
INSERT INTO `student` VALUES ('202032110110', '姚粲昀', NULL, '18042320516', 3);
INSERT INTO `student` VALUES ('202032110111', '章雅琦', NULL, '15067709180', 3);
INSERT INTO `student` VALUES ('202032110112', '陈邦律', NULL, '18968516128', 3);
INSERT INTO `student` VALUES ('202032110113', '陈锴奇', NULL, '13606636492', 3);
INSERT INTO `student` VALUES ('202032110114', '葛凡柯', NULL, '17280508010', 3);
INSERT INTO `student` VALUES ('202032110115', '韩智睿', NULL, '17280508013', 3);
INSERT INTO `student` VALUES ('202032110116', '胡佳杰', NULL, '13516722905', 3);
INSERT INTO `student` VALUES ('202032110118', '黄沁源', NULL, '18973518105', 3);
INSERT INTO `student` VALUES ('202032110119', '黄文豪', NULL, '15869681027', 3);
INSERT INTO `student` VALUES ('202032110120', '金韬', NULL, '13065576563', 3);
INSERT INTO `student` VALUES ('202032110121', '雷佳逸', NULL, '13276725267', 3);
INSERT INTO `student` VALUES ('202032110122', '李琨', NULL, '15372092678', 3);
INSERT INTO `student` VALUES ('202032110123', '李权昭', NULL, '13598495573', 3);
INSERT INTO `student` VALUES ('202032110124', '李思齐', NULL, '18258308892', 3);
INSERT INTO `student` VALUES ('202032110125', '卢佳豪', NULL, '17788527519', 3);
INSERT INTO `student` VALUES ('202032110126', '鲁超凡', NULL, '18324739773', 3);
INSERT INTO `student` VALUES ('202032110127', '陆建杰', NULL, '13335999298', 3);
INSERT INTO `student` VALUES ('202032110128', '陆郑豪', NULL, '15958005408', 3);
INSERT INTO `student` VALUES ('202032110129', '罗海洋', NULL, '17634438141', 3);
INSERT INTO `student` VALUES ('202032110130', '糜越凡', NULL, '19858531601', 3);
INSERT INTO `student` VALUES ('202032110131', '潘蛮', NULL, '18570338584', 3);
INSERT INTO `student` VALUES ('202032110132', '彭泳康', NULL, '18258291018', 3);
INSERT INTO `student` VALUES ('202032110133', '齐向辰', NULL, '13396578599', 3);
INSERT INTO `student` VALUES ('202032110134', '钱泽楷', NULL, '15205853065', 3);
INSERT INTO `student` VALUES ('202032110135', '乔春禾', NULL, '19557863409', 3);
INSERT INTO `student` VALUES ('202032110136', '秦毅', NULL, '19511320722', 3);
INSERT INTO `student` VALUES ('202032110137', '佘坪', NULL, '18072332719', 3);
INSERT INTO `student` VALUES ('202032110138', '孙昊', NULL, '13250933658', 3);
INSERT INTO `student` VALUES ('202032110139', '孙浩捷', NULL, '19511318216', 3);
INSERT INTO `student` VALUES ('202032110140', '唐正正', NULL, '17857966573', 3);
INSERT INTO `student` VALUES ('202032110141', '佟利阳', NULL, '18110890075', 3);
INSERT INTO `student` VALUES ('202032110142', '王琦海', NULL, '18658483879', 3);
INSERT INTO `student` VALUES ('202032110143', '王宇翔', NULL, '13866365830', 3);
INSERT INTO `student` VALUES ('202032110144', '吴宏杰', NULL, '18758179885', 3);
INSERT INTO `student` VALUES ('202032110145', '吴江', NULL, '15669630570', 3);
INSERT INTO `student` VALUES ('202032110146', '吴铮', NULL, '18258113885', 3);
INSERT INTO `student` VALUES ('202032110147', '肖雨哲', NULL, '18067032199', 3);
INSERT INTO `student` VALUES ('202032110148', '徐哲', NULL, '15873376586', 3);
INSERT INTO `student` VALUES ('202032110149', '许中原', NULL, '19511326180', 3);
INSERT INTO `student` VALUES ('202032110150', '薛小龙', NULL, '19957923023', 3);
INSERT INTO `student` VALUES ('202032110151', '寻宇灿', NULL, '15874099700', 3);
INSERT INTO `student` VALUES ('202032110152', '严嘉浩', NULL, '2822514910', 3);
INSERT INTO `student` VALUES ('202032110153', '言佳超', NULL, '19812406803', 3);
INSERT INTO `student` VALUES ('202032110154', '於雍翔', NULL, '15858652564', 3);
INSERT INTO `student` VALUES ('202032110155', '张博琛', NULL, '17606785433', 3);
INSERT INTO `student` VALUES ('202032110156', '张晨筱', NULL, '15868626522', 3);
INSERT INTO `student` VALUES ('202032110157', '张天玮', NULL, '13738168129', 3);
INSERT INTO `student` VALUES ('202032110158', '赵舒贤', NULL, '18358307999', 3);
INSERT INTO `student` VALUES ('202032110159', '郑柳凯', NULL, '15869369577', 3);
INSERT INTO `student` VALUES ('202032110160', '周幸', NULL, '15157595031', 3);

SET FOREIGN_KEY_CHECKS = 1;
