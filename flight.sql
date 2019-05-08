/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : flight

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2018-12-04 18:53:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_flight`
-- ----------------------------
DROP TABLE IF EXISTS `t_flight`;
CREATE TABLE `t_flight` (
  `flightid` int(11) NOT NULL auto_increment,
  `flighname` varchar(50) NOT NULL,
  `StartDate` varchar(100) NOT NULL,
  `StartTime` varchar(100) NOT NULL,
  `ArrivalTime` varchar(100) NOT NULL,
  `StartCity` varchar(100) NOT NULL,
  `ArrivalCity` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `punctuality` varchar(20) NOT NULL,
  `ticket` int(100) NOT NULL,
  PRIMARY KEY  (`flightid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_flight
-- ----------------------------
INSERT INTO `t_flight` VALUES ('1', '国际航空', '2018-10-27', '18:00', '20:00', '北京', '深圳', '520', '70', '50');
INSERT INTO `t_flight` VALUES ('2', '海南航空', '2018-10-27', '18:00', '20:00', '河北', '深圳', '520', '80', '10');
INSERT INTO `t_flight` VALUES ('3', '深圳航空', '2018-10-28', '18:00', '20:00', '重庆', '深圳', '200', '70', '30');
INSERT INTO `t_flight` VALUES ('4', '东方航空', '2018-10-27', '17.00', '22.00', '内蒙古', '深圳', '500', '70', '500');
INSERT INTO `t_flight` VALUES ('5', '上海航空', '2018-11-02', '18:00', '20:00', '北京', '黑龙江', '500', '60', '55');
INSERT INTO `t_flight` VALUES ('6', '深圳航空', '2018-10-24', '18:00', '20:00', '河北', '深圳', '600', '100', '55');
INSERT INTO `t_flight` VALUES ('7', '南方航空', '2018-10-31', '18:00', '20:00', '北京', '深圳', '520', '20', '1111');
INSERT INTO `t_flight` VALUES ('8', '四川航空', '2019-01-03', '17:00', '22:00', '北京', '黑龙江', '111', '100', '10');
INSERT INTO `t_flight` VALUES ('9', '国际航空', '2018-10-31', '18:00', '20:00', '北京', '北京', '520', '60', '20');
INSERT INTO `t_flight` VALUES ('10', '国际航空', '2018-11-10', '17:00', '22.00', '天津', '北京', '300', '100', '20');
INSERT INTO `t_flight` VALUES ('11', '深圳航空', '2018-11-10', '8:00', '10:00', '河北', '北京', '250', '30', '10');
INSERT INTO `t_flight` VALUES ('12', '南方航空', '2018-11-10', '14:00', '10:00', '天津', '上海', '100', '50', '20');
INSERT INTO `t_flight` VALUES ('13', '山东航空', '2018-11-10', '17:00', '10:00', '山西', '重庆', '500', '60', '500');
INSERT INTO `t_flight` VALUES ('14', '海南航空', '2018-11-10', '8:00', '10:00', '山西', '重庆', '3000', '50', '55');
INSERT INTO `t_flight` VALUES ('15', '四川航空', '2018-11-10', '14:00', '15.00', '内蒙古', '辽宁', '2500', '80', '500');
INSERT INTO `t_flight` VALUES ('16', '上海航空', '2018-11-10', '14:00', '22.00', '重庆', '重庆', '300', '50', '55');
INSERT INTO `t_flight` VALUES ('17', '请选择航空公司 ', '2018-11-10', '14:00', '22.00', '北京', '北京', '500', '30', '500');
INSERT INTO `t_flight` VALUES ('18', '请选择航空公司 ', '2018-11-10', '17:00', '22.00', '北京', '北京', '300', '30', '55');
INSERT INTO `t_flight` VALUES ('19', '请选择航空公司 ', '2018-11-10', '8:00', '22.00', '北京', '北京', '100', '50', '4124');
INSERT INTO `t_flight` VALUES ('20', '请选择航空公司 ', '2018-11-10', '8:00', '10:00', '北京', '北京', '1000', '50', '1010');
INSERT INTO `t_flight` VALUES ('21', '请选择航空公司 ', '2018-11-10', '14:00', '10:00', '北京', '天津', '300', '20', '20');
INSERT INTO `t_flight` VALUES ('22', '请选择航空公司 ', '2018-11-10', '14:00', '10:00', '北京', '重庆', '300', '40', '20');
INSERT INTO `t_flight` VALUES ('23', '国际航空', '2018-11-25', '8:00', '22.00', '请选择城市 ', '天津', '300', '70', '500');
INSERT INTO `t_flight` VALUES ('24', '请选择航空公司 ', '2018-11-25', '17:00', '22.00', '重庆', '上海', '500', '0', '55');
INSERT INTO `t_flight` VALUES ('25', '国际航空', '2018-11-30', '8:00', '20:00', '重庆', '河北', '300', '60', '55');
INSERT INTO `t_flight` VALUES ('26', '海南航空', '2018-11-30', '14:00', '10:00', '辽宁', '天津', '500', '60', '500');
INSERT INTO `t_flight` VALUES ('27', '南方航空', '2018-12-01', '8:00', '10:00', '上海', '上海', '300', '70', '500');
INSERT INTO `t_flight` VALUES ('28', '海南航空', '2018-12-01', '14:00', '20:00', '吉林', '河北', '300', '90', '34');
INSERT INTO `t_flight` VALUES ('29', '上海航空', '2018-12-01', '14:00', '15.00', '黑龙江', '上海', '559', '100', '36');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderid` int(11) NOT NULL auto_increment,
  `username` char(20) NOT NULL,
  `flightid` int(11) NOT NULL,
  `orderticket` int(100) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `state` int(2) NOT NULL default '0',
  PRIMARY KEY  (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '123', '1', '1', '2018-10-30 21:04:39', '0');
INSERT INTO `t_order` VALUES ('3', 'cc', '1', '1', '2018-10-31 19:19:03', '0');
INSERT INTO `t_order` VALUES ('4', 'cc', '4', '1', '2018-10-31 19:19:07', '0');
INSERT INTO `t_order` VALUES ('7', 'aaa', '25', '1', '2018-11-30 15:06:15', '0');
INSERT INTO `t_order` VALUES ('9', 'aaa', '26', '1', '2018-11-30 15:24:47', '0');
INSERT INTO `t_order` VALUES ('14', '110', '27', '2', '2018-12-01 11:06:19', '1');
INSERT INTO `t_order` VALUES ('15', '110', '28', '3', '2018-12-01 11:19:40', '1');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userid` int(11) NOT NULL auto_increment,
  `username` char(20) NOT NULL,
  `userpassword` char(30) NOT NULL,
  `userphone` char(20) NOT NULL,
  `useridentity` char(30) NOT NULL,
  `jurisdiction` int(11) default '1',
  `usermail` varchar(20) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', '2312321312', '21321321312', '2', null);
INSERT INTO `t_user` VALUES ('2', '123', '123', '666666', '666666', '1', null);
INSERT INTO `t_user` VALUES ('3', '666', '666', '4524245', '4545454', '1', null);
INSERT INTO `t_user` VALUES ('4', 'sasa', 'aaa', 'sadsad', 'asdsa', '1', null);
INSERT INTO `t_user` VALUES ('5', 'ddddd', 'ddd', '423423', '214324', '1', null);
INSERT INTO `t_user` VALUES ('6', 'heihei', '110', '13254', '154545', '1', null);
INSERT INTO `t_user` VALUES ('7', '23213', '3232', '312321', '213123', '1', null);
INSERT INTO `t_user` VALUES ('8', 'a阿达', 'dasda', '1231232', '213123123', '1', null);
INSERT INTO `t_user` VALUES ('9', 'cc', '123', '1242141241', '124123412412', '1', null);
INSERT INTO `t_user` VALUES ('10', '110', '110', '743', '2222', '1', '641884200@qq.com');
INSERT INTO `t_user` VALUES ('11', '11', '111', '00000000000', '2222', '1', null);
INSERT INTO `t_user` VALUES ('12', '2454', '111111', '00000000000', '2222', '1', null);
INSERT INTO `t_user` VALUES ('13', 'aaa', 'aaa', '15997717200', '421023199501041314', '1', 'weihu53323@qq.com');
