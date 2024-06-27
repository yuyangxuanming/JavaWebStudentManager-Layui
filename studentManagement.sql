use school;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `administrator`
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `clazz`
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz` (
  `clazz_id` int(11) NOT NULL AUTO_INCREMENT,
  `clazz_name` varchar(30) NOT NULL,
  `clazz_information` varchar(100) NOT NULL,
  PRIMARY KEY (`clazz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES ('1', '软工181', '大数据方向，熟练掌握python和java！');
INSERT INTO `clazz` VALUES ('2', '软工182', '大数据方向，熟练掌握python和java！');
INSERT INTO `clazz` VALUES ('3', '软工184', '云计算方向，精通基于java的各种企业级网络应用开发！');
INSERT INTO `clazz` VALUES ('4', '软工183', '云计算方向，精通基于java的各种企业级网络应用开发！');
INSERT INTO `clazz` VALUES ('5', '软工185', '以python为主，java为辅进行各种数据分析！');
INSERT INTO `clazz` VALUES ('6', '计科181', '网络工程方向！');
INSERT INTO `clazz` VALUES ('7', '计科182', '网络工程方向！');
INSERT INTO `clazz` VALUES ('8', '计科183', '信息安全方向！');
INSERT INTO `clazz` VALUES ('9', '计科184', '信息安全方向！');
INSERT INTO `clazz` VALUES ('10', '计科185', '大数据方向！');
INSERT INTO `clazz` VALUES ('11', '法学181', '环境保护法的应用与发展！');
INSERT INTO `clazz` VALUES ('12', '法学182', '民法的研究与发展！');
INSERT INTO `clazz` VALUES ('13', '法学183', '刑法的研究与发展！');
INSERT INTO `clazz` VALUES ('14', '环境181', '空气污染的检测与处理！');
INSERT INTO `clazz` VALUES ('15', '环境182', '地下水的检测与处理！');
INSERT INTO `clazz` VALUES ('16', '农林191', '解决土地荒漠化的研究！');
INSERT INTO `clazz` VALUES ('17', '数学191', '数值原理分析与拓展！');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(30) NOT NULL,
  `student_sex` varchar(3) NOT NULL DEFAULT '男',
  `student_birthday` date NOT NULL,
  `student_mobile` varchar(15) NOT NULL,
  `student_email` varchar(30) NOT NULL,
  `student_clazzName` varchar(30) NOT NULL,
  `student_teacherName` varchar(30) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '马云', '男', '1998-08-18', '13131313131', '13131313131@aliyun.com', '电商191', '张朝阳');
INSERT INTO `student` VALUES ('2', '马化腾', '男', '1999-10-29', '13232323232', '13232323232@qq.com', '软件182', '雷军');
INSERT INTO `student` VALUES ('3', '李彦宏', '男', '2000-11-11', '13333333333', '13333333333@baidu.com', '信息181', '刘强东');
INSERT INTO `student` VALUES ('4', '张一鸣', '男', '2001-01-01', '13434343434', '13434343434@bytedance.com', '新闻192', '王兴');
INSERT INTO `student` VALUES ('5', '柳传志', '男', '1997-07-07', '13535353535', '13535353535@lenovo.com', '管理191', '杨元庆');
INSERT INTO `student` VALUES ('6', '雷军', '男', '1996-12-06', '13636363636', '13636363636@xiaomi.com', '电子183', '周鸿祎');
INSERT INTO `student` VALUES ('7', '董明珠', '女', '2002-02-02', '13737373737', '13737373737@gree.com', '制冷191', '李东生');
INSERT INTO `student` VALUES ('8', '刘永好', '男', '1995-09-19', '13838383838', '13838383838@newhope.com', '农业182', '陈东升');
INSERT INTO `student` VALUES ('9', '孙正义', '男', '1994-04-14', '13939939939', '13939939939@softbank.com', '金融191', '井贤栋');
INSERT INTO `student` VALUES ('10', '杨致远', '男', '1993-03-13', '14040404040', '14040404040@yahoo.com', '网络192', '陆正耀');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(30) NOT NULL,
  `teacher_sex` varchar(3) NOT NULL DEFAULT '男',
  `teacher_mobile` varchar(15) NOT NULL,
  `teacher_email` varchar(30) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '坎波斯', '男', '15167246378', '15167246378@qq.com');
INSERT INTO `teacher` VALUES ('2', '鲁大福', '男', '18268072793', '18268072793@163.com');
INSERT INTO `teacher` VALUES ('3', '雷老虎', '男', '18798643463', '18798643463@152.com');
INSERT INTO `teacher` VALUES ('4', '当当', '女', '17216847892', '17216847892@qq.com');
INSERT INTO `teacher` VALUES ('5', '飘柔', '女', '13668072798', '13668072798@163.com');
INSERT INTO `teacher` VALUES ('6', '孙正义', '男', '16789764652', '16789764652@qq.com');
INSERT INTO `teacher` VALUES ('7', '庄库', '男', '13567864721', '13567864721@789.com');
INSERT INTO `teacher` VALUES ('8', '田美', '女', '17216852563', '17216852563@163.com');
INSERT INTO `teacher` VALUES ('9', '曹康', '女', '16178456321', '16178456321@qq.com');
INSERT INTO `teacher` VALUES ('10', '毛小乐', '男', '15675982863', '15675982863@163.com');
INSERT INTO `teacher` VALUES ('11', '汪强', '男', '17257435678', '17257435678@789.com');
INSERT INTO `teacher` VALUES ('12', '莫干溪', '女', '15674398732', '15674398732@qq.com');
INSERT INTO `teacher` VALUES ('13', '鲁豫', '女', '17987456781', '17987456781@qq.com');
