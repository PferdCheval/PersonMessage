/*
Navicat MySQL Data Transfer
Source Host     : localhost:3306
Source Database : personmessage
Target Host     : localhost:3306
Target Database : personmessage
*/
drop database `person`;
create database `person`;
use `person`;
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for date
-- ----------------------------
DROP TABLE IF EXISTS `date`;
CREATE TABLE `date` (
  `dateid` int(11) not null AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `time` varchar(30) NOT NULL,
  `thing` varchar(50) NOT NULL,
  `note` varchar(50),
  primary key(`dateid`),
  foreign key(`userid`) references `user`(`userid`) on delete cascade on update cascade
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of date
-- ----------------------------
-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `fileid` int(11) not null AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contentType` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `upLoadTime` varchar(255) NOT NULL,
  `filePath` varchar(255) NOT NULL,
   primary key(`fileid`),
   foreign key(`userid`) references `user`(`userid`) on delete cascade on update cascade
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of file
-- ----------------------------
-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `friendid` int(11) not null AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `workplace` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `QQ` varchar(30) NOT NULL,
  primary key(`friendid`),
  foreign key(`userid`) references `user`(`userid`) on delete cascade on update cascade
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) not null AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `truename` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `birth` varchar(30) NOT NULL,
  `nation` varchar(30) NOT NULL,
  `edu` varchar(30) NOT NULL,
  `work` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `place` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  primary key(`userid`)
) ENGINE=InnoDB  AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
