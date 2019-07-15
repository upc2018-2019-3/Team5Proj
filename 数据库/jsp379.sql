/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : jsp379

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2019-07-15 11:04:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `allusers`
-- ----------------------------
DROP TABLE IF EXISTS `allusers`;
CREATE TABLE `allusers` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `cx` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of allusers
-- ----------------------------
INSERT INTO `allusers` VALUES ('1', '陶新月', '123', '管理员', '2019-07-02 19:49:37');

-- ----------------------------
-- Table structure for `dx`
-- ----------------------------
DROP TABLE IF EXISTS `dx`;
CREATE TABLE `dx` (
  `id` int(11) NOT NULL auto_increment,
  `leibie` varchar(50) default NULL,
  `content` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dx
-- ----------------------------
INSERT INTO `dx` VALUES ('1', '系统公告', '<P>&nbsp;&nbsp;&nbsp; 欢迎大家登陆我站，我站主要是为广大朋友精心制作的一个系统，希望大家能够在我站获得一个好心情，谢谢！</P>\r\n<P>&nbsp;&nbsp;&nbsp; 自强不息，海纳百川，努力学习！</P>');
INSERT INTO `dx` VALUES ('2', '系统简介', '系统简介');

-- ----------------------------
-- Table structure for `jiaofei`
-- ----------------------------
DROP TABLE IF EXISTS `jiaofei`;
CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL auto_increment,
  `yuanximingcheng` varchar(50) default NULL,
  `zhuanyemingcheng` varchar(50) default NULL,
  `xuefei` varchar(50) default NULL,
  `shufei` varchar(50) default NULL,
  `baoxianfei` varchar(50) default NULL,
  `zafei` varchar(50) default NULL,
  `zonge` varchar(50) default NULL,
  `shoufeiriqi` varchar(50) default NULL,
  `jiaofeiren` varchar(50) default NULL,
  `beizhu` varchar(255) default NULL,
  `issh` varchar(2) default NULL,
  `iszf` varchar(2) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jiaofei
-- ----------------------------
INSERT INTO `jiaofei` VALUES ('1', '经济管理学院', '信息管理与信息系统', '1300', '4500', '800', '0', '6600', '2018-09-10', '1608020225', '', '是', '否', '2019-07-05 09:06:16');
INSERT INTO `jiaofei` VALUES ('3', '经济管理学院', '信息管理与信息系统', '1400', '3400', '1000', '0', '5800', '2018-09-10', '1608020114', null, '否', '是', '2019-07-15 10:48:18');

-- ----------------------------
-- Table structure for `shoufeixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shoufeixinxi`;
CREATE TABLE `shoufeixinxi` (
  `id` int(11) NOT NULL auto_increment,
  `yuanximingcheng` varchar(50) default NULL,
  `zhuanyemingcheng` varchar(50) default NULL,
  `xuefei` varchar(50) default NULL,
  `shufei` varchar(50) default NULL,
  `baoxianfei` varchar(50) default NULL,
  `zafei` varchar(50) default NULL,
  `zonge` varchar(50) default NULL,
  `shoufeiriqi` varchar(50) default NULL,
  `beizhu` varchar(255) default NULL,
  `issh` varchar(2) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoufeixinxi
-- ----------------------------
INSERT INTO `shoufeixinxi` VALUES ('1', '经济管理学院', '信息管理与信息系统', '1300', '4500', '800', '0', '6600', '2018-09-10', '', '是', '2019-07-03 16:05:12');
INSERT INTO `shoufeixinxi` VALUES ('2', '文学院', '汉语言文学', '1400', '3400', '1000', '0', '5800', '2018-09-10', null, '是', '2019-07-03 16:05:09');
INSERT INTO `shoufeixinxi` VALUES ('3', '经济管理学院', '信息管理与信息系统', '1300', '4500', '800', '0', '6600', '2018-09-10', '', '是', '2019-07-03 16:05:17');

-- ----------------------------
-- Table structure for `xuankexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xuankexinxi`;
CREATE TABLE `xuankexinxi` (
  `id` int(11) NOT NULL auto_increment,
  `yixuankecheng` varchar(400) default NULL,
  `xuefen` varchar(50) default NULL,
  `xuefei` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xuankexinxi
-- ----------------------------
INSERT INTO `xuankexinxi` VALUES ('1', '程序设计语言C（2-1）', '1.5', '150', '2019-07-04 10:08:58');
INSERT INTO `xuankexinxi` VALUES ('2', '管理学', '2', '200', '2019-07-03 15:50:53');
INSERT INTO `xuankexinxi` VALUES ('3', '大学英语', '3', '300', '2019-07-04 10:05:01');
INSERT INTO `xuankexinxi` VALUES ('4', '商务办公技能', '1.5', '150', '2019-07-04 10:04:47');
INSERT INTO `xuankexinxi` VALUES ('5', '微观经济学', '3', '300', '2019-07-03 16:01:40');
INSERT INTO `xuankexinxi` VALUES ('6', '计算机应用技术实验', '1', '100', '2019-07-04 10:07:27');
INSERT INTO `xuankexinxi` VALUES ('7', '新生研讨课', '1', '100', '2019-07-04 10:08:08');
INSERT INTO `xuankexinxi` VALUES ('8', '高等数学（2-1）', '5.5', '550', '2019-07-04 10:08:40');
INSERT INTO `xuankexinxi` VALUES ('9', '体育（4-1）', '1', '100', '2019-07-04 10:09:17');
INSERT INTO `xuankexinxi` VALUES ('10', '军训', '1', '100', '2019-07-04 10:09:31');
INSERT INTO `xuankexinxi` VALUES ('11', '计算机网络基础', '2', '200', '2019-07-04 10:09:33');
INSERT INTO `xuankexinxi` VALUES ('12', '大学物理', '3', '300', '2019-07-04 10:10:19');
INSERT INTO `xuankexinxi` VALUES ('13', '思想道德修养与法律基础', '3', '300', '2019-07-04 10:10:41');
INSERT INTO `xuankexinxi` VALUES ('14', '中国近代史纲要', '3', '300', '2019-07-04 10:10:56');
INSERT INTO `xuankexinxi` VALUES ('15', '面向对象程序设计', '3', '300', '2019-07-04 10:12:14');

-- ----------------------------
-- Table structure for `xueshengxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xueshengxinxi`;
CREATE TABLE `xueshengxinxi` (
  `id` int(11) NOT NULL auto_increment,
  `yonghuming` varchar(50) default NULL,
  `mima` varchar(50) default NULL,
  `yuanximingcheng` varchar(50) default NULL,
  `zhuanyemingcheng` varchar(50) default NULL,
  `xingming` varchar(255) default NULL,
  `xingbie` varchar(50) default NULL,
  `chushengnianyue` varchar(50) default NULL,
  `nianling` varchar(50) default NULL,
  `touxiang` varchar(50) default NULL,
  `shenfenzheng` varchar(50) default NULL,
  `lianxishouji` varchar(50) default NULL,
  `weixin` varchar(50) default NULL,
  `youxiang` varchar(50) default NULL,
  `beizhu` varchar(255) default NULL,
  `issh` varchar(2) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xueshengxinxi
-- ----------------------------
INSERT INTO `xueshengxinxi` VALUES ('1', '1608020225', '111', '经济管理学院', '信息管理与信息系统', '程婷', '女', '1998-05-14', '21', '', '', '17865111111', '', '36478908@qq.com', '', '是', '2019-07-05 09:05:28');
INSERT INTO `xueshengxinxi` VALUES ('2', '1609010111', '222', '文学院', '汉语言文学', '宋毓', '女', '1998-11-28', '21', '', '111111111111111111', '18111111111', '', '9989999@qq.com', '', '是', '2019-07-05 09:05:08');
INSERT INTO `xueshengxinxi` VALUES ('3', '1608020114', '333', '经济管理学院', '信息管理与信息系统', '刘烨', '女', '1998-01-04', '21', 'upload/1562201847938.jpg', '212123199801041306', '17856211111', '', '0567890@162.com', '', '是', '2019-07-05 09:04:48');

-- ----------------------------
-- Table structure for `youjian`
-- ----------------------------
DROP TABLE IF EXISTS `youjian`;
CREATE TABLE `youjian` (
  `id` int(11) NOT NULL auto_increment,
  `jieshouzhe` varchar(50) default NULL,
  `xiaoxineirong` varchar(255) default NULL,
  `fasongzhe` varchar(50) default NULL,
  `cx` varchar(50) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of youjian
-- ----------------------------
INSERT INTO `youjian` VALUES ('1', '', '请同学们在2018年10月1日之前进行缴费！', '陶新月', '管理员', '2019-07-02 19:59:22');
INSERT INTO `youjian` VALUES ('2', '', '再次通知，请大家按时缴费！', '陶新月', '管理员', '2019-07-03 16:06:49');
INSERT INTO `youjian` VALUES ('3', '', '暑假快乐！', '陶新月', '管理员', '2019-07-15 10:50:38');

-- ----------------------------
-- Table structure for `yuanxixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `yuanxixinxi`;
CREATE TABLE `yuanxixinxi` (
  `id` int(11) NOT NULL auto_increment,
  `yuanximingcheng` varchar(50) default NULL,
  `beizhu` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuanxixinxi
-- ----------------------------
INSERT INTO `yuanxixinxi` VALUES ('1', '地球科学与技术学院', null, '2019-07-03 16:09:38');
INSERT INTO `yuanxixinxi` VALUES ('2', '石油工程学院', null, '2019-07-03 16:09:36');
INSERT INTO `yuanxixinxi` VALUES ('3', '化学工程学院', null, '2019-07-03 16:09:30');
INSERT INTO `yuanxixinxi` VALUES ('4', '机电工程学院', null, '2019-07-03 16:10:00');
INSERT INTO `yuanxixinxi` VALUES ('5', '材料科学与工程学院', null, '2019-07-03 16:10:24');
INSERT INTO `yuanxixinxi` VALUES ('6', '信息与控制工程学院', null, '2019-07-03 16:10:39');
INSERT INTO `yuanxixinxi` VALUES ('7', '储运与建筑工程学院', null, '2019-07-03 16:11:04');
INSERT INTO `yuanxixinxi` VALUES ('8', '计算机与通信工程学院', null, '2019-07-03 16:11:41');
INSERT INTO `yuanxixinxi` VALUES ('9', '经济管理学院', '', '2019-07-03 16:12:08');
INSERT INTO `yuanxixinxi` VALUES ('10', '理学院', null, '2019-07-03 16:12:19');
INSERT INTO `yuanxixinxi` VALUES ('11', '文学院', '', '2019-07-03 16:12:41');

-- ----------------------------
-- Table structure for `zhuanyexinxi`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanyexinxi`;
CREATE TABLE `zhuanyexinxi` (
  `id` int(11) NOT NULL auto_increment,
  `yuanximingcheng` varchar(50) default NULL,
  `zhuanyemingcheng` varchar(255) default NULL,
  `xiangxijieshao` longtext,
  `beizhu` varchar(255) default NULL,
  `addtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuanyexinxi
-- ----------------------------
INSERT INTO `zhuanyexinxi` VALUES ('1', '经济管理学院', '信息管理与信息系统', '具有一定的创新能力和领导潜质，具备良好的数理基础、管理学和经济学理论知识、信息技术知识及应用能力，掌握信息系统的规划、分析、设计、实施和管理等方面的方法与技术，具有一定的信息系统和信息资源开发利用实践和研究能力。', '', '2019-07-02 20:01:26');
INSERT INTO `zhuanyexinxi` VALUES ('2', '经济管理学院', '工程管理', null, null, '2019-07-03 16:13:35');
INSERT INTO `zhuanyexinxi` VALUES ('3', '经济管理学院', '经济学', null, null, '2019-07-03 16:14:11');
INSERT INTO `zhuanyexinxi` VALUES ('4', '文学院', '汉语言文学', '培养掌握汉语和中国文学方面的基本知识，受到有关理论、发展历史、研究现状等方面的系统教育和业务能力的基本训练', '', '2019-07-03 16:13:41');
