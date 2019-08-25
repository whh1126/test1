/*
Navicat MySQL Data Transfer

Source Server         : bao
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : muen

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2019-08-06 15:15:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assuserandchoose
-- ----------------------------
DROP TABLE IF EXISTS `assuserandchoose`;
CREATE TABLE `assuserandchoose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `chooseId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assuserandchoose
-- ----------------------------

-- ----------------------------
-- Table structure for choose
-- ----------------------------
DROP TABLE IF EXISTS `choose`;
CREATE TABLE `choose` (
  `chooseId` int(11) NOT NULL AUTO_INCREMENT,
  `voteId` int(11) NOT NULL,
  `chooseContent` varchar(255) NOT NULL,
  `totalNum` int(11) NOT NULL,
  PRIMARY KEY (`chooseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choose
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `conmentId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `commentContent` varchar(255) NOT NULL,
  `createTime` datetime NOT NULL,
  `dynamicId` int(11) NOT NULL,
  PRIMARY KEY (`conmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `dynamicId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `createuserId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `dynamicType` varchar(255) NOT NULL,
  PRIMARY KEY (`dynamicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for dynamicimgs
-- ----------------------------
DROP TABLE IF EXISTS `dynamicimgs`;
CREATE TABLE `dynamicimgs` (
  `dynamicImgsId` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicId` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`dynamicImgsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamicimgs
-- ----------------------------

-- ----------------------------
-- Table structure for dynamicprimase
-- ----------------------------
DROP TABLE IF EXISTS `dynamicprimase`;
CREATE TABLE `dynamicprimase` (
  `primaseId` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`primaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dynamicprimase
-- ----------------------------

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  `groupPersonNum` int(255) NOT NULL,
  `declaration` text,
  `leaderUserId` int(11) NOT NULL,
  `groupIcon` varchar(255) NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for leavemessage
-- ----------------------------
DROP TABLE IF EXISTS `leavemessage`;
CREATE TABLE `leavemessage` (
  `leaveMessageId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `leaveContent` text NOT NULL,
  PRIMARY KEY (`leaveMessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leavemessage
-- ----------------------------

-- ----------------------------
-- Table structure for pray
-- ----------------------------
DROP TABLE IF EXISTS `pray`;
CREATE TABLE `pray` (
  `prayId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `createTime` datetime NOT NULL,
  `prayContent` text NOT NULL,
  `isTop` smallint(6) NOT NULL DEFAULT '2',
  PRIMARY KEY (`prayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pray
-- ----------------------------

-- ----------------------------
-- Table structure for share
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `fileName` varchar(255) NOT NULL,
  `fileId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `audioUrl` varchar(255) NOT NULL,
  `playCount` int(11) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `realName` varchar(255) NOT NULL,
  `userType` int(11) NOT NULL DEFAULT '3',
  `phoneNum` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `userIcon` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `groupId` int(11) DEFAULT '-1',
  `sign` varchar(255) DEFAULT NULL,
  `token` text,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `voteId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `anonymity` smallint(6) NOT NULL DEFAULT '1',
  `isSingle` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`voteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vote
-- ----------------------------
