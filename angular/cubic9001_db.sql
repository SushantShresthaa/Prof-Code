/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50730
Source Host           : localhost:3306
Source Database       : cubic9001_db

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2022-07-24 14:58:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dogs_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `dogs_tbl`;
CREATE TABLE `dogs_tbl` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dogs_tbl
-- ----------------------------
INSERT INTO `dogs_tbl` VALUES ('1', 'Tikku', 'white');
INSERT INTO `dogs_tbl` VALUES ('2', 'Pockuy', 'red');
INSERT INTO `dogs_tbl` VALUES ('3', 'Rocky', 'blue');
INSERT INTO `dogs_tbl` VALUES ('4', 'Tommy', 'pink');
INSERT INTO `dogs_tbl` VALUES ('5', 'Tommy', 'pink');
INSERT INTO `dogs_tbl` VALUES ('6', 'laoao', 'white');

-- ----------------------------
-- Table structure for `signup_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `signup_tbl`;
CREATE TABLE `signup_tbl` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of signup_tbl
-- ----------------------------
INSERT INTO `signup_tbl` VALUES ('21', 'Amisha', 'test', 'Amisha@gmail.com', '9873003723', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKigj88VHSdveHVYzwahTfMwxyjXivIWbgMw&usqp=CAU', 'Female', 'India , 292');
INSERT INTO `signup_tbl` VALUES ('22', 'nagendra', 'test', 'nagendra.yadav.niit@gmail.com', '92929292', 'http://localhost:4200/assets/images/programs-child-img-view.png', 'Male', 'Addd');
