/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : data_info

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-06-29 18:19:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_auth`
-- ----------------------------
DROP TABLE IF EXISTS `tb_auth`;
CREATE TABLE `tb_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `real_name` varchar(30) DEFAULT NULL,
  `uer_identity` varchar(20) DEFAULT NULL,
  `identity_effective` varchar(20) DEFAULT NULL,
  `img_identity_positive` varchar(200) DEFAULT NULL,
  `img_identity_back` varchar(200) DEFAULT NULL,
  `img_live` varchar(200) DEFAULT NULL,
  `phone_service_password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `t_class`
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  `class_principal` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES ('1', '1-2班', '露西');
INSERT INTO `t_class` VALUES ('2', '2-2班', '韩门梅');

-- ----------------------------
-- Table structure for `t_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_data`;
CREATE TABLE `t_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `typeRemark` varchar(255) DEFAULT NULL,
  `string1` varchar(255) DEFAULT NULL,
  `string2` varchar(255) DEFAULT NULL,
  `string3` varchar(255) DEFAULT NULL,
  `string4` varchar(255) DEFAULT NULL,
  `string5` varchar(255) DEFAULT NULL,
  `string6` varchar(255) DEFAULT NULL,
  `string7` varchar(255) DEFAULT NULL,
  `string8` varchar(255) DEFAULT NULL,
  `string9` varchar(255) DEFAULT NULL,
  `string10` varchar(255) DEFAULT NULL,
  `string11` varchar(255) DEFAULT NULL,
  `string12` varchar(255) DEFAULT NULL,
  `string13` varchar(255) DEFAULT NULL,
  `string14` varchar(255) DEFAULT NULL,
  `string15` varchar(255) DEFAULT NULL,
  `string16` varchar(255) DEFAULT NULL,
  `string17` varchar(255) DEFAULT NULL,
  `string18` varchar(255) DEFAULT NULL,
  `string19` varchar(255) DEFAULT NULL,
  `string20` varchar(255) DEFAULT NULL,
  `score` int(10) unsigned zerofill DEFAULT '0000000000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_data
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fund`
-- ----------------------------
DROP TABLE IF EXISTS `t_fund`;
CREATE TABLE `t_fund` (
  `fund_id` int(11) NOT NULL AUTO_INCREMENT,
  `fund_code` varchar(10) NOT NULL,
  `fund_name` varchar(30) NOT NULL,
  `fund_manager` varchar(20) DEFAULT NULL,
  `fund_new_price` varchar(10) DEFAULT NULL,
  `fund_new_rate` varchar(10) DEFAULT NULL,
  `fund_has_money` double DEFAULT NULL,
  `fund_buy_price` double DEFAULT NULL COMMENT '买入平均净值',
  PRIMARY KEY (`fund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_fund
-- ----------------------------
INSERT INTO `t_fund` VALUES ('1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `t_fund` VALUES ('2', '001616', '嘉实环保低碳股票', null, null, null, '400.37', '1.3847675568743818');
INSERT INTO `t_fund` VALUES ('3', '001986', '前海开源人工智能主题混合', null, null, null, '1513.97', '1.358683566822326');

-- ----------------------------
-- Table structure for `t_fund_stock`
-- ----------------------------
DROP TABLE IF EXISTS `t_fund_stock`;
CREATE TABLE `t_fund_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_code` varchar(10) NOT NULL,
  `stock_name` varchar(30) NOT NULL,
  `stock_new_price` varchar(10) DEFAULT NULL,
  `stock_new_rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_fund_stock
-- ----------------------------

-- ----------------------------
-- Table structure for `t_fund_stock_relation`
-- ----------------------------
DROP TABLE IF EXISTS `t_fund_stock_relation`;
CREATE TABLE `t_fund_stock_relation` (
  `id` int(11) NOT NULL,
  `stock_code` varchar(10) DEFAULT NULL,
  `fund_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_fund_stock_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `t_plat`
-- ----------------------------
DROP TABLE IF EXISTS `t_plat`;
CREATE TABLE `t_plat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '平台名称',
  `other_name` varchar(30) DEFAULT NULL COMMENT '平台曾用名',
  `score` int(2) DEFAULT '0' COMMENT '平台得分',
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除',
  `is_trouble` int(1) DEFAULT '0' COMMENT '是否有问题',
  `url` varchar(200) DEFAULT NULL COMMENT '平台网址',
  `icon_url` varchar(200) DEFAULT NULL COMMENT '平台logo',
  `zhiji_rank` int(5) DEFAULT '0' COMMENT '之家排名',
  `zhijia_url` varchar(200) DEFAULT NULL COMMENT '之家url',
  `zhijia_code` varchar(30) DEFAULT NULL,
  `tianyan_rank` int(5) DEFAULT '0',
  `tianyan_code` varchar(300) DEFAULT NULL COMMENT '天眼的平台信息',
  `tianyan_level` varchar(5) DEFAULT NULL,
  `luopan_code` varchar(30) DEFAULT NULL,
  `rank360_int` int(11) DEFAULT '0',
  `rank360` varchar(10) DEFAULT '-',
  `tianyan_url` varchar(200) DEFAULT NULL,
  `gentou_rank` varchar(2) DEFAULT '0',
  `rate3_return` float DEFAULT NULL,
  `rate6_return` float DEFAULT NULL,
  `is_love` varchar(10) DEFAULT '0',
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_plat
-- ----------------------------
INSERT INTO `t_plat` VALUES ('0', '宜人贷', null, '9', '0', '0', 'http://www.yirendai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/85.jpg', '1', 'https://www.wdzj.com/wdzj/images/plat/icon/85.jpg', 'yrd', '2', 'http://yirendai.p2peye.com', 'A+', null, '2', 'A ', '', '1', '5', '6.5', '0', '美国上市公司');
INSERT INTO `t_plat` VALUES ('3', '微贷网', null, '9', '0', '0', 'https://www.weidai.com.cn', 'https://www.wdzj.com/wdzj/images/example/2017/04/12/20170412141745s_.png', '4', 'https://www.wdzj.com/wdzj/images/example/2017/04/12/20170412141745s_.png', 'wdw', '5', 'http://weidai.p2peye.com', 'A+', null, '6', 'A ', '', '1', '7.3', '8', '6', null);
INSERT INTO `t_plat` VALUES ('4', '开鑫金服', '开鑫贷', '8', '0', '0', 'https://www.gkkxd.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/116.jpg', '24', null, 'kxd1', '0', 'http://gkkxd.p2peye.com', '', null, '22', 'B+', '', '1', '6', '6.5', '0', null);
INSERT INTO `t_plat` VALUES ('5', '投哪网', null, '8', '0', '0', 'http://www.touna.cn/', 'https://www.wdzj.com/wdzj/images/example/2016/09/12/20160912212140s_.jpg', '11', 'https://www.wdzj.com/wdzj/images/example/2016/09/12/20160912212140s_.jpg', 'tnw1', '16', 'http://touna.p2peye.com', 'A', null, '10', 'A-', '', '1', '8.3', '9', '6', null);
INSERT INTO `t_plat` VALUES ('6', '凤凰金融', null, '8', '0', '0', 'https://www.fengjr.com/cn/', 'https://openplat.wdzj.com/upload/plats/2857/20160713110504s_.PNG', '0', 'https://openplat.wdzj.com/upload/plats/2857/20160713110504s_.PNG', 'fhjr', '10', 'http://fengjr.p2peye.com', 'A+', null, '25', 'B ', '', '1', '7', '7.5', '0', null);
INSERT INTO `t_plat` VALUES ('7', '人人贷', null, '9', '0', '0', 'https://www.renrendai.com/pc/ppb/cv1/page/593a049d9827d2695231d883.html?utmSource=pc-bd-wdtytl', 'https://openplat.wdzj.com/upload/plats/57/20170525170921s_.jpg', '2', 'https://openplat.wdzj.com/upload/plats/57/20170525170921s_.jpg', 'rrd', '4', 'http://we.p2peye.com', 'A+', null, '5', 'A ', '', '0', '5.6', '6.2', '4', '低息，安全');
INSERT INTO `t_plat` VALUES ('8', '宜贷网', null, '8', '0', '0', 'http://www.yidai.com', 'https://openplat.wdzj.com/upload/plats/942/20180124101044s_.jpg', '15', 'https://www.wdzj.com/wdzj/images/example/2016/09/26/20160926171653s_.jpg', 'ydw', '20', 'http://yidai.p2peye.com', 'A', null, '20', 'B+', '', '2', '9', '10', '8', null);
INSERT INTO `t_plat` VALUES ('9', '积木盒子', null, '9', '0', '0', 'https://www.jimubox.com/', 'https://openplat.wdzj.com/upload/plats/268/20160606101200s_.png', '9', 'https://openplat.wdzj.com/upload/plats/268/20160606101200s_.png', 'jmhz', '9', 'http://jimubox.p2peye.com', 'A+', null, '12', 'A-', '', '1', '7.5', '8.5', '7', null);
INSERT INTO `t_plat` VALUES ('10', '团贷网', null, '9', '0', '0', 'http://www.tuandai.com/', 'https://www.wdzj.com/wdzj/images/example/2017/05/05/20170505120053s_.jpg', '7', 'https://www.wdzj.com/wdzj/images/example/2017/05/05/20170505120053s_.jpg', 'tdw', '7', 'http://tuandai.p2peye.com', 'A+', null, '16', 'B+', '', '1', '9', '10', '10', '性价比平台');
INSERT INTO `t_plat` VALUES ('11', '东方汇', null, '7', '0', '0', 'https://www.eastlending.com', 'https://www.wdzj.com/wdzj/images/plat/icon/2001.jpg', '81', 'https://www.wdzj.com/wdzj/images/plat/icon/2001.jpg', 'dfh1', '23', 'http://eastlending.p2peye.com', 'B+', null, '0', '-', '', '0', '5.5', '5.8', '0', null);
INSERT INTO `t_plat` VALUES ('12', '翼龙贷', null, '7', '0', '0', 'http://www.eloancn.com', 'https://www.wdzj.com/wdzj/images/plat/icon/144.jpg', '12', 'https://www.wdzj.com/wdzj/images/plat/icon/144.jpg', 'yld1', '18', 'http://eloancn.p2peye.com', 'A', null, '18', 'B+', '', '3', '7.3', '8', '0', null);
INSERT INTO `t_plat` VALUES ('13', '麻袋理财', '麻袋财富', '8', '0', '0', 'https://www.madailicai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1152.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1152.jpg', 'mdlc', '15', 'http://madailicai.p2peye.com', 'A', null, '11', 'A-', '', '1', '6', '7', '6', null);
INSERT INTO `t_plat` VALUES ('14', 'PPmoney网贷', 'PPmoney网贷', '7', '0', '0', 'https://www.ppmoney.com', 'https://openplat.wdzj.com/upload/plats/498/20170105151807s_.gif', '17', null, 'pp', '24', 'http://ppmoney.p2peye.com', 'B+', null, '19', 'B+', '', '0', '7', '8', '6', null);
INSERT INTO `t_plat` VALUES ('15', '爱钱进', null, '9', '0', '0', 'http://www.iqianjin.com/', 'https://openplat.wdzj.com/upload/plats/689/20170116162547s_.jpg', '8', 'https://openplat.wdzj.com/upload/plats/689/20170116162547s_.jpg', 'aqj', '6', 'http://iqianjin.p2peye.com', 'A+', null, '7', 'A-', '', '1', '6.35', '7.35', '0', null);
INSERT INTO `t_plat` VALUES ('16', '鑫合汇', null, '7', '0', '0', 'https://www.xinhehui.com', 'https://openplat.wdzj.com/upload/plats/505/20180504173013s_.png', '0', 'https://openplat.wdzj.com/upload/plats/505/20161102155944s_.png', 'xhh', '17', 'http://xinhehui.p2peye.com', 'A', null, '42', 'B-', '', '2', '8.8', '9.5', '8', null);
INSERT INTO `t_plat` VALUES ('17', '有利网', null, '8', '0', '0', 'http://www.yooli.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/142.jpg', '10', 'https://www.wdzj.com/wdzj/images/plat/icon/142.jpg', 'ylw1', '13', 'http://yooli.p2peye.com', 'A+', null, '17', 'B+', '', '2', '6', '7', '0', null);
INSERT INTO `t_plat` VALUES ('18', '民贷天下', null, '8', '0', '0', 'https://www.mindai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1493.jpg', '28', 'https://www.wdzj.com/wdzj/images/plat/icon/1493.jpg', 'mdtx', '25', 'http://mindai.p2peye.com', 'B+', null, '30', 'B ', '', '2', '7.5', '9.3', '7', null);
INSERT INTO `t_plat` VALUES ('19', '小赢理财', '小赢网金', '8', '0', '0', 'https://www.yingzt.com', 'https://openplat.wdzj.com/upload/plats/1309/20160713140837s_.png', '14', null, 'xylc', '8', 'http://xiaoying.p2peye.com', 'A+', null, '9', 'A-', '', '1', '6.2', '7.2', '0', null);
INSERT INTO `t_plat` VALUES ('20', '理财范', null, '7', '0', '0', 'http://www.licaifan.com/', 'https://openplat.wdzj.com/upload/plats/500/20160427143655s_.png', '36', 'https://openplat.wdzj.com/upload/plats/500/20160427143655s_.png', 'lcf', '42', 'http://licaifan.p2peye.com', 'B+', null, '45', 'B-', '', '3', '6.5', '9.5', '6', null);
INSERT INTO `t_plat` VALUES ('21', '拍拍贷', null, '7', '0', '0', 'http://www.ppdai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/52.jpg', '6', 'https://www.wdzj.com/wdzj/images/plat/icon/52.jpg', 'ppd', '3', 'http://ppdai.p2peye.com', 'A+', null, '3', 'A ', '', '1', '6.2', '6.8', '8', null);
INSERT INTO `t_plat` VALUES ('22', '博金贷', null, '7', '0', '0', 'https://www.bjdp2p.com/', 'https://openplat.wdzj.com/upload/plats/1190/20161103142110s_.jpg', '22', 'https://openplat.wdzj.com/upload/plats/1190/20161103142110s_.jpg', 'bjd1', '19', 'http://bjdp2p.p2peye.com', 'A', null, '33', 'B ', '', '0', '8', '9.5', '7', null);
INSERT INTO `t_plat` VALUES ('23', '点融网', '点融', '9', '0', '0', 'https://www.dianrong.com', 'https://www.wdzj.com/wdzj/images/plat/icon/129.jpg', '5', 'https://www.wdzj.com/wdzj/images/plat/icon/129.jpg', 'drw', '12', 'http://dianrong.p2peye.com', 'A+', null, '8', 'A-', '', '1', '6', '8', '0', '利息低，回款慢，不能投');
INSERT INTO `t_plat` VALUES ('24', '金开贷', null, '7', '0', '0', 'http://www.jkd.com', 'https://openplat.wdzj.com/upload/plats/488/20160613171921s_.png', '48', 'https://openplat.wdzj.com/upload/plats/488/20160613171921s_.png', 'jkd', '32', 'http://jkd.p2peye.com', 'B+', null, '60', 'B-', '', '2', '7.4', '7.6', '0', null);
INSERT INTO `t_plat` VALUES ('25', '小牛在线', null, '7', '0', '0', 'http://www.xiaoniu88.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/223.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/223.jpg', 'xnzx', '21', 'http://xiaoniu88.p2peye.com', 'A', null, '64', 'B-', '', '0', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('26', '铜掌柜', null, '7', '0', '0', 'http://www.tzg.cn', 'https://openplat.wdzj.com/upload/plats/2016/20160831135342s_.png', '0', 'https://openplat.wdzj.com/upload/plats/2016/20160831135342s_.png', 'tzg', '47', 'http://tzg.p2peye.com', 'B+', null, '77', 'C ', '', '2', '7.5', '8.5', '0', null);
INSERT INTO `t_plat` VALUES ('27', '道口贷', null, '7', '0', '0', 'https://www.daokoudai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1982.jpg', '23', 'https://www.wdzj.com/wdzj/images/plat/icon/1982.jpg', 'dkd', '14', 'http://daokoudai.p2peye.com', 'A+', null, '0', '-', '', '2', '8', '8.5', '6', null);
INSERT INTO `t_plat` VALUES ('28', '和信贷', null, '8', '0', '0', 'http://www.hexindai.com', 'https://openplat.wdzj.com/upload/plats/235/20160713161352s_.png', '16', 'https://openplat.wdzj.com/upload/plats/235/20160713161352s_.png', 'hxd5', '30', 'http://hexindai.p2peye.com', 'B+', null, '24', 'B+', '', '2', '9', '10', '9', null);
INSERT INTO `t_plat` VALUES ('29', '银豆网', null, '7', '0', '0', 'https://www.yindou.com/', 'https://openplat.wdzj.com/upload/plats/447/20160112174534s_.png', '50', 'https://openplat.wdzj.com/upload/plats/447/20160112174534s_.png', 'ydw1', '0', 'http://yindou.p2peye.com', '', null, '40', 'B-', '', '0', '10', '10', '6', null);
INSERT INTO `t_plat` VALUES ('30', '你我贷', null, '8', '0', '0', 'http://www.niwodai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/40.jpg', '19', 'https://www.wdzj.com/wdzj/images/plat/icon/40.jpg', 'nwd', '11', 'http://niwodai.p2peye.com', 'A+', null, '15', 'B+', '', '3', '7', '9', '7', null);
INSERT INTO `t_plat` VALUES ('31', '广信贷', null, '7', '0', '0', 'https://www.guangxindai.com', 'https://openplat.wdzj.com/upload/plats/165/20160627144908s_.png', '55', 'https://openplat.wdzj.com/upload/plats/165/20160627144908s_.png', 'gxd', '43', 'http://guangxindai.p2peye.com', 'B+', null, '70', 'C ', '', '0', '10', '12', '7', null);
INSERT INTO `t_plat` VALUES ('32', '短融网', null, '8', '0', '0', 'http://www.duanrong.com', 'https://www.wdzj.com/wdzj/images/plat/icon/664.jpg', '35', 'https://www.wdzj.com/wdzj/images/plat/icon/664.jpg', 'drw1', '36', 'http://duanrong.p2peye.com', 'B+', null, '0', '-', '', '2', '8.4', '9.2', '8', '性价比平台');
INSERT INTO `t_plat` VALUES ('33', '付融宝', null, '7', '0', '0', 'https://www.frbao.com', 'https://openplat.wdzj.com/upload/plats/460/20161123135427s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/460/20161123135427s_.jpg', 'frb', '27', 'http://frbao.p2peye.com', 'B+', null, '41', 'B-', '', '0', '8.5', '10', '7', null);
INSERT INTO `t_plat` VALUES ('34', '生菜金融', null, '7', '0', '0', 'https://www.shengcaijinrong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1090.jpg', '79', 'https://www.wdzj.com/wdzj/images/plat/icon/1090.jpg', 'scjr', '31', 'http://shengcaijinrong.p2peye.com', 'B+', null, '53', 'B-', '', '0', '7', '8.5', '0', null);
INSERT INTO `t_plat` VALUES ('35', '财富星球', null, '7', '0', '0', 'http://www.caifuxq.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/430.jpg', '67', 'https://www.wdzj.com/wdzj/images/plat/icon/430.jpg', 'cfxq', '28', 'http://caifuxq.p2peye.com', 'B+', null, '58', 'B-', '', '3', '7.8', '8.5', '0', null);
INSERT INTO `t_plat` VALUES ('36', '玖融网', null, '7', '0', '0', 'https://www.jiurong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/246.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/246.jpg', 'jrw', '37', 'http://jiurong.p2peye.com', 'B+', null, '85', 'C ', '', '2', '10', '11', '6', null);
INSERT INTO `t_plat` VALUES ('37', '拓道金服', null, '7', '0', '0', 'http://www.51tuodao.com', 'https://openplat.wdzj.com/upload/plats/932/20170322112237s_.png', '42', 'https://openplat.wdzj.com/upload/plats/932/20170322112237s_.png', 'tdjf', '38', 'http://51tuodao.p2peye.com', 'B+', null, '46', 'B-', '', '0', '9', '10', '7', null);
INSERT INTO `t_plat` VALUES ('38', '口袋理财', null, '7', '0', '0', 'https://www.koudailc.com/', 'https://www.wdzj.com/wdzj/images/example/2016/07/08/20160708143116s_.jpg', '63', 'https://www.wdzj.com/wdzj/images/example/2016/07/08/20160708143116s_.jpg', 'kdlc', '49', 'http://koudailc.p2peye.com', 'B+', null, '56', 'B-', '', '3', '7.5', '8', '0', null);
INSERT INTO `t_plat` VALUES ('39', '红岭创投', null, '8', '0', '0', 'https://www.my089.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/60.jpg', '64', 'https://www.wdzj.com/wdzj/images/plat/icon/60.jpg', 'hlct', '35', 'http://my089.p2peye.com', 'B+', null, '36', 'B-', '', '2', '8.3', '8.5', '8', null);
INSERT INTO `t_plat` VALUES ('40', '众信金融', null, '6', '0', '0', 'http://www.imzhongxin.com/', null, '0', null, null, '0', 'http://imzhongxin.p2peye.com', '', null, '73', 'C ', '', '0', '7', '7.5', '0', null);
INSERT INTO `t_plat` VALUES ('41', '联连理财', '联连普金', '6', '0', '0', 'https://www.lianlianmoney.com/account/register?channel=tysy', 'https://openplat.wdzj.com/upload/plats/3859/20180308144447s_.jpg', '86', 'https://openplat.wdzj.com/upload/plats/3859/20160701115010s_.jpg', 'lllc', '53', 'http://lianlianmoney.p2peye.com', 'B', null, '0', '-', '', '3', '8.5', '9.2', '5', null);
INSERT INTO `t_plat` VALUES ('42', '首金网', null, '8', '0', '0', 'https://www.shoujinwang.com/', 'https://openplat.wdzj.com/upload/plats/4005/20160128163419s_.jpg', '70', 'https://openplat.wdzj.com/upload/plats/4005/20160128163419s_.jpg', 'sjw5', '39', 'http://shoujinwang.p2peye.com', 'B+', null, '51', 'B-', '', '1', '8', '8.5', '7', '性价比平台');
INSERT INTO `t_plat` VALUES ('43', '爱钱帮', null, '7', '0', '0', 'http://www.iqianbang.com/', 'https://www.wdzj.com/wdzj/images/example/2018/01/15/20180115174942s_.png', '53', 'https://www.wdzj.com/wdzj/images/example/2018/01/15/20180115174942s_.png', 'aqb', '41', 'http://iqianbang.p2peye.com', 'B+', null, '67', 'C ', '', '2', '9', '10', '7', null);
INSERT INTO `t_plat` VALUES ('44', '万盈金融', null, '7', '0', '0', 'http://www.wyjr168.com', 'https://www.wdzj.com/wdzj/images/plat/icon/2930.jpg', '41', 'https://www.wdzj.com/wdzj/images/plat/icon/2930.jpg', 'wyjr', '57', 'http://wyjr168.p2peye.com', 'B', null, '0', '-', '', '2', '8.5', '11', '7', null);
INSERT INTO `t_plat` VALUES ('45', '银湖网', null, '8', '0', '0', 'http://www.yinhu.com', 'https://openplat.wdzj.com/upload/plats/623/20170210141335s_.jpg', '20', 'https://openplat.wdzj.com/upload/plats/623/20170210141335s_.jpg', 'yhw', '26', 'http://yinhu.p2peye.com', 'B+', null, '27', 'B ', '', '1', '7.5', '9.5', '7', null);
INSERT INTO `t_plat` VALUES ('46', '麦子金服', '麦子金服财富', '6', '0', '0', 'https://www.nonobank.com/', 'https://openplat.wdzj.com/upload/plats/34/20180607161219s_.jpg', '0', null, 'nnbk', '0', 'http://nonobank.p2peye.com', '', null, '68', 'C ', '', '0', '8.5', '9.5', '6', '负面多，融资作假，高管离职');
INSERT INTO `t_plat` VALUES ('47', '珠宝贷', null, '7', '0', '0', 'http://www.zhubaodai.com/?tn=A003', 'https://www.wdzj.com/wdzj/images/plat/icon/883.jpg', '73', 'https://www.wdzj.com/wdzj/images/plat/icon/883.jpg', 'zbd', '65', 'http://zhubaodai.p2peye.com', 'B', null, '63', 'B-', '', '3', '10', '11', '0', null);
INSERT INTO `t_plat` VALUES ('48', '广州e贷', null, '7', '0', '0', 'https://www.gzdai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/799.jpg', '37', 'https://www.wdzj.com/wdzj/images/plat/icon/799.jpg', 'gzed', '56', 'http://gzdai.p2peye.com', 'B', null, '49', 'B-', '', '0', '8', '9', '7', null);
INSERT INTO `t_plat` VALUES ('49', '图腾贷', null, '7', '0', '0', 'https://www.tutengdai.com', 'https://openplat.wdzj.com/upload/plats/881/20151209153249s_.jpg', '88', 'https://openplat.wdzj.com/upload/plats/881/20151209153249s_.jpg', 'ttd5', '0', 'http://tutengdai.p2peye.com', '', null, '61', 'B-', '', '3', '11', '12', '6', null);
INSERT INTO `t_plat` VALUES ('50', '海融易', null, '8', '0', '0', 'https://www.hairongyi.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2549.jpg', '45', 'https://www.wdzj.com/wdzj/images/plat/icon/2549.jpg', 'hry', '0', 'http://hairongyi.p2peye.com', '', null, '34', 'B-', '', '2', '7', '7.5', '0', null);
INSERT INTO `t_plat` VALUES ('51', '抱财网', null, '7', '0', '0', 'http://www.baocai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/541.jpg', '71', 'https://www.wdzj.com/wdzj/images/plat/icon/541.jpg', 'bcw', '58', 'http://baocai.p2peye.com', 'B', null, '72', 'C ', '', '0', '7.6', '9', '0', null);
INSERT INTO `t_plat` VALUES ('52', 'e融所', null, '7', '0', '0', 'https://www.myerong.com/', 'https://www.wdzj.com/wdzj/images/example/2017/03/23/20170323151638s_.png', '43', 'https://www.wdzj.com/wdzj/images/example/2017/03/23/20170323151638s_.png', 'ers', '40', 'http://myerong.p2peye.com', 'B+', null, '47', 'B-', '', '3', '9', '10', '8', null);
INSERT INTO `t_plat` VALUES ('53', '理想宝', null, '7', '0', '0', 'http://www.id68.cn', 'https://openplat.wdzj.com/upload/plats/583/20160629112320s_.png', '38', 'https://openplat.wdzj.com/upload/plats/583/20160629112320s_.png', 'lxb68', '62', 'http://id68.p2peye.com', 'B', null, '78', 'C ', '', '3', '8.8', '9.3', '7', null);
INSERT INTO `t_plat` VALUES ('54', '口贷网', null, '5', '0', '0', 'https://www.kdw.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1089.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1089.jpg', 'kdw', '0', 'http://qdai.p2peye.com', '', null, '81', 'C ', '', '0', '13', '14', '0', null);
INSERT INTO `t_plat` VALUES ('55', '合拍在线', null, '7', '0', '0', 'https://www.he-pai.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/117.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/117.jpg', 'hpzx', '70', 'http://he-pai.p2peye.com', 'B', null, '48', 'B-', '', '0', '9.8', '10', '0', null);
INSERT INTO `t_plat` VALUES ('56', '米缸金融', null, '7', '0', '0', 'http://www.migang.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1745.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1745.jpg', 'mgjr', '50', 'http://migang.p2peye.com', 'B+', null, '44', 'B-', '', '1', '6.8', '7.5', '0', null);
INSERT INTO `t_plat` VALUES ('57', '新联在线', null, '7', '0', '0', 'https://www.newunion.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/236.jpg', '52', 'https://www.wdzj.com/wdzj/images/plat/icon/236.jpg', 'xlzx', '71', 'http://newunion.p2peye.com', 'B', null, '55', 'B-', '', '3', '10', '11', '6', null);
INSERT INTO `t_plat` VALUES ('58', '恒大金服', null, '7', '0', '0', 'https://www.hdfax.com/', 'https://www.wdzj.com/wdzj/images/example/2016/03/18/20160318131945s_.jpg', '0', 'https://www.wdzj.com/wdzj/images/example/2016/03/18/20160318131945s_.jpg', 'hdjf3', '0', 'http://hdfax.p2peye.com', '', null, '0', '-', '', '2', '5', '6', '0', null);
INSERT INTO `t_plat` VALUES ('59', '懒财网', '懒财网贷', '5', '0', '0', 'https://www.lancai.cn/', 'https://openplat.wdzj.com/upload/plats/827/20170517160617s_.png', '0', 'https://openplat.wdzj.com/upload/plats/827/20170517160617s_.png', 'lcw', '0', 'http://lancai.p2peye.com', '', null, '37', 'B-', '', '3', '10', '10', '0', null);
INSERT INTO `t_plat` VALUES ('60', '奇乐融', null, '5', '0', '0', 'https://www.qilerong.com', 'https://www.wdzj.com/wdzj/images/example/2016/12/06/20161206173823s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/12/06/20161206173823s_.png', 'qlr', '51', 'http://qilerong.p2peye.com', 'B+', null, '0', '-', '', '0', '7.1', '7.9', '0', null);
INSERT INTO `t_plat` VALUES ('61', '聚宝匯', null, '5', '0', '0', 'http://www.jbh.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2750.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2750.jpg', 'jbh1', '0', 'http://jbh.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('62', '果树财富', null, '7', '0', '0', 'https://www.goodsure.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/746.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/746.jpg', 'gscf', '67', 'http://goodsure.p2peye.com', 'B', null, '0', '-', '', '2', '12', '13', '5', null);
INSERT INTO `t_plat` VALUES ('63', '石投金融', null, '6', '0', '0', 'http://www.shitou.com/', 'https://openplat.wdzj.com/upload/plats/628/20151216151249s_.png', '32', 'https://openplat.wdzj.com/upload/plats/628/20151216151249s_.png', 'stjr', '76', 'http://shitou.p2peye.com', 'B', null, '0', '-', '', '2', '8', '8.5', '0', null);
INSERT INTO `t_plat` VALUES ('64', '汉金所', null, '6', '0', '0', 'http://www.hanxinbank.com/ic/A0098', 'https://www.wdzj.com/wdzj/images/plat/icon/2043.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2043.jpg', 'hjs6', '52', 'http://hanxinbank.p2peye.com', 'B+', null, '75', 'C ', '', '0', '7', '8', '0', '有消息自融');
INSERT INTO `t_plat` VALUES ('65', '有融网', null, '4', '0', '0', 'http://www.yrw.com', 'https://openplat.wdzj.com/upload/plats/1881/20161212164519s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1881/20161212164519s_.png', 'yrw1', '0', 'http://yrw.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('66', '沪商财富', null, '6', '0', '0', 'http://www.hushangcaifu.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/677.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/677.jpg', 'hscf', '68', 'http://hushangcaifu.p2peye.com', 'B', null, '0', '-', '', '0', '13', '13', '5', null);
INSERT INTO `t_plat` VALUES ('67', '君融贷', null, '4', '0', '0', 'http://www.junrongdai.com', 'https://openplat.wdzj.com/upload/plats/1224/20160715183157s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1224/20160715183157s_.png', 'jrd', '0', 'http://junrongdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('68', '钱香金融', null, '7', '0', '0', 'http://www.qianxiangbank.com/', 'https://openplat.wdzj.com/upload/plats/2600/20180110175804s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2600/20180110175804s_.jpg', 'qx', '0', 'http://qianxiangbank.p2peye.com', '', null, '0', '-', '', '2', '9.6', '11', '0', null);
INSERT INTO `t_plat` VALUES ('69', '永利宝', null, '6', '0', '0', 'https://www.yonglibao.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/443.jpg', '54', 'https://www.wdzj.com/wdzj/images/plat/icon/443.jpg', 'ylb', '64', 'http://yonglibao.p2peye.com', 'B', null, '83', 'C ', '', '3', '8', '10', '0', null);
INSERT INTO `t_plat` VALUES ('70', '花果金融', null, '4', '0', '0', 'http://www.huaguo.cn', 'https://openplat.wdzj.com/upload/plats/396/20170830174847s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/396/20170830174847s_.jpg', 'hgjr', '0', 'http://huaguo.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('71', '多多理财', null, '5', '0', '0', 'https://www.51duoduo.com/?act&s=wdty', 'https://www.wdzj.com/wdzj/images/example/2017/05/17/20170517100826s_.jpg', '49', 'https://www.wdzj.com/wdzj/images/example/2017/05/17/20170517100826s_.jpg', 'ddlc1', '0', 'http://51duoduo.p2peye.com', '', null, '0', '-', '', '0', '10.5', '11', '5', null);
INSERT INTO `t_plat` VALUES ('72', '可溯金融', null, '6', '0', '0', 'https://dai.kesucorp.com/', 'https://openplat.wdzj.com/upload/plats/1440/20160829124401s_.png', '65', 'https://openplat.wdzj.com/upload/plats/1440/20160829124401s_.png', 'ksjr', '46', 'http://kesucorp.p2peye.com', 'B+', null, '0', '-', '', '0', '9', '10.5', '0', null);
INSERT INTO `t_plat` VALUES ('73', '中融投', null, '4', '0', '0', 'https://www.topzrt.com/', 'https://openplat.wdzj.com/upload/plats/1623/20171208094036s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/1623/20171208094036s_.jpg', 'zrt', '0', 'http://topzrt.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('74', '小猪理财', null, '5', '0', '0', 'https://www.xiaozhu158.com/', 'https://openplat.wdzj.com/upload/plats/2674/20170527153216s_.png', '89', 'https://openplat.wdzj.com/upload/plats/2674/20170527153216s_.png', 'xzlc', '0', 'http://xiaozhu158.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('75', '金票通', null, '5', '0', '0', 'https://www.jinpiaotong.com', 'https://openplat.wdzj.com/upload/plats/1030/20160523160155s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1030/20160523160155s_.png', 'jpt', '0', 'http://jinpiaotong.p2peye.com', '', null, '98', 'C-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('76', '礼德财富', null, '5', '0', '0', 'http://www.leadercf.com/', 'https://openplat.wdzj.com/upload/plats/341/20160905140632s_.png', '33', 'https://openplat.wdzj.com/upload/plats/341/20160905140632s_.png', 'ldcf1', '0', 'http://leadercf.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('77', '腾邦创投', null, '1', '0', '0', 'https://www.p2p178.net/', 'https://www.wdzj.com/wdzj/images/plat/icon/1087.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1087.jpg', 'tbct', '0', 'http://p2p178.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('79', '金筑财富', null, '4', '0', '0', 'https://www.jinzhucaifu.com', 'https://openplat.wdzj.com/upload/plats/4286/20170511141249s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4286/20170511141249s_.png', 'jzcf', '0', 'http://jinzhucaifu.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('80', '投融家', null, '5', '0', '0', 'https://www.tourongjia.com/', 'https://openplat.wdzj.com/upload/plats/3187/20160427165921s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3187/20160427165921s_.jpg', 'trj', '0', 'http://tourongjia.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('81', '合时代', null, '5', '0', '0', 'https://www.heshidai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/339.jpg', '100', 'https://www.wdzj.com/wdzj/images/plat/icon/339.jpg', 'hsd9', '0', 'http://heshidai.p2peye.com', '', null, '71', 'C ', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('82', '小猪罐子', null, '5', '0', '0', 'http://www.xiaozhu168.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1069.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1069.jpg', 'xzgz', '0', 'http://xiaozhu168.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('83', '壹心贷', null, '5', '0', '0', 'http://www.yxp2p.com', 'https://www.wdzj.com/wdzj/images/plat/icon/458.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/458.jpg', 'yxd5', '0', 'http://yxp2p.p2peye.com', '', null, '0', '-', '', '2', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('84', '信融财富', null, '7', '0', '0', 'http://www.xinrong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/128.jpg', '62', 'https://www.wdzj.com/wdzj/images/plat/icon/128.jpg', 'xrcf', '0', 'http://xinrong.p2peye.com', '', null, '31', 'B ', '', '0', '10', '12', '7', null);
INSERT INTO `t_plat` VALUES ('85', '今日捷财', null, '6', '0', '0', 'https://www.51jiecai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/808.jpg', '78', 'https://www.wdzj.com/wdzj/images/plat/icon/808.jpg', 'jrjc', '0', 'http://51jiecai.p2peye.com', '', null, '89', 'C ', '', '0', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('86', '迷你贷', null, '4', '0', '0', 'https://www.miniwangdai.com/', 'https://openplat.wdzj.com/upload/plats/387/20160914094131s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/387/20160914094131s_.jpg', 'mnd', '0', 'http://miniwangdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('87', '365易贷', null, '5', '0', '0', 'http://www.365edai.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/53.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/53.jpg', 'slwyd', '0', 'http://365edai.p2peye.com', '', null, '35', 'B-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('88', '网利宝', null, '6', '0', '0', 'https://www.wanglibao.com/', 'https://openplat.wdzj.com/upload/plats/868/20180323102600s_.jpg', '60', 'https://www.wdzj.com/wdzj/images/plat/icon/868.jpg', 'wlb', '61', 'http://wanglibao.p2peye.com', 'B', null, '0', '-', '', '3', '8', '9', '0', '发生过萝卜章事件');
INSERT INTO `t_plat` VALUES ('89', '合力贷', null, '5', '0', '0', 'http://www.helloan.cn', 'https://www.wdzj.com/wdzj/images/plat/icon/118.jpg', '75', 'https://www.wdzj.com/wdzj/images/plat/icon/118.jpg', 'hld10', '0', 'http://helloan.p2peye.com', '', null, '79', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('90', '金融工场', null, '4', '0', '0', 'http://www.9888.cn/', 'https://openplat.wdzj.com/upload/plats/629/20171023163525s_.png', '0', 'https://openplat.wdzj.com/upload/plats/629/20171023163525s_.png', 'jrgc', '0', 'http://11119888.p2peye.com', '', null, '0', '-', '', '0', '8', '8.5', '0', null);
INSERT INTO `t_plat` VALUES ('91', '元宝365', null, '5', '0', '0', 'http://www.yuanbao365.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1496.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1496.jpg', 'yb', '0', 'http://yuanbao365.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('92', '友金所', '友金服', '8', '0', '0', 'http://www.yyfax.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2005.jpg', '31', null, 'yjs2', '22', 'http://yyfax.p2peye.com', 'A', null, '38', 'B-', '', '0', '6.2', '7.2', '0', null);
INSERT INTO `t_plat` VALUES ('93', '网投网', null, '2', '0', '0', 'http://www.wangtouwang.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1436.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1436.jpg', 'wtw', '0', 'http://wangtouwang.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('94', '豫商贷', null, '1', '0', '0', 'https://www.zzwms.com/invite/3451.html', 'https://www.wdzj.com/wdzj/images/plat/icon/319.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/319.jpg', 'ysd3', '0', 'http://zzwms.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('95', '温州贷', null, '5', '0', '0', 'http://www.wzdai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/50.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/50.jpg', 'wzd', '0', 'http://wzdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('96', '互融宝', null, '5', '0', '0', 'https://www.hurbao.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/694.jpg', '57', 'https://www.wdzj.com/wdzj/images/plat/icon/694.jpg', 'hrb', '0', 'http://hurbao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', '华宇系');
INSERT INTO `t_plat` VALUES ('97', '华人金融', null, '4', '0', '0', 'http://www.5262.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1437.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1437.jpg', 'hrjr', '0', 'http://hrj5262.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('98', '国泰惠民益贷', null, '1', '0', '0', 'https://www.hmyd.com/', null, '0', null, null, '0', 'http://hmyd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('99', '绿化贷', null, '4', '0', '0', 'http://www.lvhuadai.com', 'https://openplat.wdzj.com/upload/plats/2310/20160920114040s_.png', '0', 'https://openplat.wdzj.com/upload/plats/2310/20160920114040s_.png', 'lhd8', '0', 'http://lvhuadai.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('100', '好好理财', null, '3', '0', '0', 'https://www.haohaolicai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/3322.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/3322.jpg', 'hhlc', '0', 'http://haohaolicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('101', '普汇云通', null, '5', '0', '0', 'https://www.phyt88.com?c=wdty', 'https://www.wdzj.com/wdzj/images/example/2017/04/05/20170405101955s_.jpg', '72', 'https://www.wdzj.com/wdzj/images/example/2017/04/05/20170405101955s_.jpg', 'phyt', '0', 'http://phyt88.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('102', '乐享宝', null, '2', '0', '0', 'http://www.lexiangbao.com', 'https://openplat.wdzj.com/upload/plats/3921/20161223120319s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3921/20161223120319s_.png', 'lxb', '0', 'http://lexiangbao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('103', '爱投资', null, '5', '0', '0', 'https://www.itouzi.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/169.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/169.jpg', 'atz', '0', 'http://itouzi.p2peye.com', '', null, '97', 'C-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('104', '中瑞财富', null, '5', '0', '0', 'https://www.zrcaifu.com', 'https://www.wdzj.com/wdzj/images/plat/icon/663.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/663.jpg', 'zrcf2', '0', 'http://zrcaifu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('105', '金元宝理财', null, '5', '0', '0', 'http://www.jyblc.cn', 'https://openplat.wdzj.com/upload/plats/5258/20180426194308s_.png', '0', 'https://openplat.wdzj.com/upload/plats/5258/20160930164455s_.png', 'jyblc', '0', 'http://jyblc.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('106', '嘉石榴', null, '5', '0', '0', 'https://www.jia16.com', 'https://openplat.wdzj.com/upload/plats/4142/20170110152119s_.png', '96', 'https://openplat.wdzj.com/upload/plats/4142/20170110152119s_.png', 'jsl', '80', 'http://jia16.p2peye.com', 'B', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('107', '胖胖猪', null, '2', '0', '0', 'http://www.pangpangpig.com', 'https://openplat.wdzj.com/upload/plats/1796/20171018141250s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1796/20171018141250s_.png', 'ppz', '0', 'http://pangpangpig.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('108', '钱保姆', null, '5', '0', '0', 'http://www.qbm360.com/', 'https://openplat.wdzj.com/upload/plats/1732/20170821184630s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/1732/20170821184630s_.jpg', 'qbm', '0', 'http://qbm360.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('109', '大麦理财', null, '5', '0', '0', 'https://www.damailicai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1274.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1274.jpg', 'dmlc', '0', 'http://damailicai.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('110', '金银猫', null, '5', '0', '0', 'http://www.jinyinmao.com.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/440.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/440.jpg', 'jym', '0', 'http://jinyinmao.p2peye.com', '', null, '92', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('111', 'e路同心', null, '7', '0', '0', 'http://www.88bank.com', 'https://www.wdzj.com/wdzj/images/plat/icon/2219.jpg', '40', 'https://www.wdzj.com/wdzj/images/plat/icon/2219.jpg', 'eltx', '44', 'http://88bank.p2peye.com', 'B+', null, '52', 'B-', '', '2', '8', '9', '6', null);
INSERT INTO `t_plat` VALUES ('112', '一起好', null, '2', '0', '0', 'https://www.yiqihao.com/', 'https://www.wdzj.com/wdzj/images/example/20140331110800.png', '0', 'https://www.wdzj.com/wdzj/images/example/20140331110800.png', 'yqh', '0', 'http://yiqihao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('113', '宝象金融', null, '4', '0', '0', 'https://www.bxjr.com/', 'https://openplat.wdzj.com/upload/plats/2762/20160309171352s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2762/20160309171352s_.jpg', 'bxjr', '0', 'http://bxjr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('114', '鹏金所', null, '7', '0', '0', 'http://www.penging.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1195.jpg', '46', 'https://www.wdzj.com/wdzj/images/plat/icon/1195.jpg', 'pjs', '55', 'http://penging.p2peye.com', 'B', null, '26', 'B ', '', '0', '5', '6', '0', null);
INSERT INTO `t_plat` VALUES ('115', '智融会', null, '1', '0', '0', 'https://www.ddzrh.com/', 'https://openplat.wdzj.com/upload/plats/1113/20160902154518s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/1113/20160902154518s_.jpg', 'zrh', '0', 'http://ddzrh.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('116', '恒信易贷', null, '5', '0', '0', 'https://www.p2phx.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/491.jpg', '98', 'https://www.wdzj.com/wdzj/images/plat/icon/491.jpg', 'hxyd', '0', 'http://p2phx.p2peye.com', '', null, '62', 'B-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('117', '惠投无忧', null, '5', '0', '0', 'http://www.huitou51.com', 'https://openplat.wdzj.com/upload/plats/3098/20151012090541s_.jpg', '95', 'https://openplat.wdzj.com/upload/plats/3098/20151012090541s_.jpg', 'htwy', '0', 'http://huitou51.p2peye.com', '', null, '0', '-', '', '1', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('118', '钜宝盆', null, '5', '0', '0', 'http://www.jpjbp.com/', 'https://openplat.wdzj.com/upload/plats/3347/20151123142627s_.png', '68', 'https://openplat.wdzj.com/upload/plats/3347/20151123142627s_.png', 'jbp1', '54', 'http://jpjbp.p2peye.com', 'B', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('119', '德众金融', null, '4', '0', '0', 'https://www.dezhong365.com/', 'https://openplat.wdzj.com/upload/plats/648/20171120100323s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/648/20171120100323s_.jpg', 'dzjr1', '0', 'http://dezhong365.p2peye.com', '', null, '74', 'C ', '', '0', null, null, '0', '逾期舆论');
INSERT INTO `t_plat` VALUES ('120', '微邦金融', null, '1', '0', '0', 'http://www.wibong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/3264.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/3264.jpg', 'wbjr', '0', 'http://wibong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('121', '国金宝', null, '2', '0', '0', 'http://www.guojinbao.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1676.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1676.jpg', 'gjb', '0', 'http://guojinbao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('122', '信用宝', null, '7', '0', '0', 'http://www.xyb100.com/', 'https://openplat.wdzj.com/upload/plats/307/20161019180935s_.jpg', '29', 'https://openplat.wdzj.com/upload/plats/307/20161019180935s_.jpg', 'xyb', '77', 'http://xyb100.p2peye.com', 'B', null, '0', '-', '', '3', '7', '8', '0', null);
INSERT INTO `t_plat` VALUES ('123', '农泰金融', null, '1', '0', '0', 'https://www.ntjrchina.com/', 'https://openplat.wdzj.com/upload/plats/3991/20161103141929s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3991/20161103141929s_.jpg', 'ntjr', '0', 'http://ntjrchina.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('124', '金信网', null, '4', '0', '0', 'http://www.jinxin99.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/508.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/508.jpg', 'jxw', '0', 'http://jinxin99.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('125', '招商贷', null, '5', '0', '0', 'http://www.zhaoshangdai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/175.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/175.jpg', 'zsd9', '0', 'http://zhaoshangdai.p2peye.com', '', null, '76', 'C ', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('126', '微金所', null, '5', '0', '0', 'http://www.weijinsuo.com/', 'https://openplat.wdzj.com/upload/plats/415/20161123103846s_.png', '0', 'https://openplat.wdzj.com/upload/plats/415/20161123103846s_.png', 'wjs1', '0', 'http://weijinsuo.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('127', '壹宝贷', null, '3', '0', '0', 'http://www.ebaodai.com', 'https://openplat.wdzj.com/upload/plats/699/20170614140044s_.png', '0', 'https://openplat.wdzj.com/upload/plats/699/20170614140044s_.png', 'ybd2', '0', 'http://ebaodai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('128', '合盘贷', '合盘理财', '5', '0', '0', 'http://www.hepandai.com', 'https://www.wdzj.com/wdzj/images/example/2017/11/30/20171130171848s_.png', '0', null, 'hpd1', '0', 'http://hepandai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('129', '小狗钱钱', null, '2', '0', '0', 'http://www.xgqq.com/', 'https://openplat.wdzj.com/upload/plats/2683/20170712142135s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2683/20170712142135s_.jpg', 'xgqq', '0', 'http://xiaogouqianqian.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('130', '资本在线', null, '1', '0', '0', 'https://www.zbzx.com/website/new_exclusive.jsp', 'https://www.wdzj.com/wdzj/images/plat/icon/333.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/333.jpg', 'zbzx', '0', 'http://zbzx.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('131', '小诺理财', null, '6', '0', '0', 'https://nyonline.cn/', 'https://openplat.wdzj.com/upload/plats/3841/20160715114034s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3841/20160715114034s_.jpg', 'xnlc', '0', 'http://nyonline.p2peye.com', '', null, '0', '-', '', '0', '7.4', '8', '0', null);
INSERT INTO `t_plat` VALUES ('132', '升值空间', null, '1', '0', '0', 'http://www.dlszkj.com/', 'https://openplat.wdzj.com/upload/plats/4198/20180514180044s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4198/20160324094432s_.png', 'szkj', '0', 'http://dlszkj.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('133', '念钱安', null, '2', '0', '0', 'https://www.nianqa.com/', 'https://openplat.wdzj.com/upload/plats/5588/20161222200617s_.png', '0', 'https://openplat.wdzj.com/upload/plats/5588/20161222200617s_.png', 'nqa', '0', 'http://niian.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('134', '融贝网', null, '6', '0', '0', 'https://www.irongbei.com/', 'https://openplat.wdzj.com/upload/plats/1144/20160318112551s_.jpg', '39', 'https://openplat.wdzj.com/upload/plats/1144/20160318112551s_.jpg', 'rbw', '0', 'http://irongbei.p2peye.com', '', null, '0', '-', '', '2', '8', '9.1', '0', null);
INSERT INTO `t_plat` VALUES ('135', '联金所', null, '6', '0', '0', 'https://www.uf-club.com/', 'https://www.wdzj.com/wdzj/images/example/2018/06/22/20180622093845s_.png', '34', 'https://www.wdzj.com/wdzj/images/example/2018/01/16/20180116160519s_.jpg', 'ljs', '34', 'http://uf-club.p2peye.com', 'B+', null, '0', '-', '', '0', '10', '11', '6', null);
INSERT INTO `t_plat` VALUES ('136', '金联储', null, '7', '0', '0', 'http://www.jinlianchu.com/', 'https://openplat.wdzj.com/upload/plats/809/20180201115910s_.jpg', '51', 'https://openplat.wdzj.com/upload/plats/809/20160505164032s_.gif', 'jlc', '66', 'http://jinlianchu.p2peye.com', 'B', null, '0', '-', '', '0', '10', '11', '6', null);
INSERT INTO `t_plat` VALUES ('137', '车易贷', null, '1', '0', '0', 'https://www.cheyidai88.com', 'https://openplat.wdzj.com/upload/plats/511/20170811180717s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/511/20170811180717s_.jpg', 'cyd2', '0', 'http://cheyidai88.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('138', '达人贷', null, '6', '0', '0', 'http://www.darenloan.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/715.jpg', '82', 'https://www.wdzj.com/wdzj/images/plat/icon/715.jpg', 'drd', '0', 'http://darenloan.p2peye.com', '', null, '0', '-', '', '3', '10', '12', '0', null);
INSERT INTO `t_plat` VALUES ('139', '聚金资本', null, '1', '0', '0', 'http://www.jujinziben.com', 'https://www.wdzj.com/wdzj/images/plat/icon/633.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/633.jpg', 'jjzb', '0', 'http://jujinziben.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('140', '前海惠农', null, '5', '0', '0', 'https://bank.qhziben.com/index', 'https://www.wdzj.com/wdzj/images/example/2017/10/12/20171012180653s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2017/10/12/20171012180653s_.png', 'qhcf1', '0', 'http://qhziben.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('141', '钱盒子金融', '钱盒子', '4', '0', '0', 'https://www.qianhezi.cn', 'https://openplat.wdzj.com/upload/plats/974/20161116105238s_.jpg', '0', null, 'qhzjr', '0', 'http://qianhezi.p2peye.com', '', null, '88', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('142', '爱投金融', null, '4', '0', '0', 'http://www.5aitou.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/346.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/346.jpg', 'atjr', '0', 'http://5aitou.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('143', '网信理财', '网信普惠', '8', '0', '0', 'http://www.firstp2p.cn/deals', 'https://www.wdzj.com/wdzj/images/plat/icon/380.jpg', '0', null, 'wxlc', '0', 'http://firstp2p.p2peye.com', '', null, '21', 'B+', '', '2', '7.2', '8.8', '6', null);
INSERT INTO `t_plat` VALUES ('144', '91旺财', null, '7', '0', '0', 'http://www.91wangcai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/537.jpg', '27', 'https://www.wdzj.com/wdzj/images/plat/icon/537.jpg', 'jywc', '59', 'http://91wangcai.p2peye.com', 'B', null, '32', 'B ', '', '3', '7.4', '8', '0', null);
INSERT INTO `t_plat` VALUES ('145', '车能贷', null, '1', '0', '0', 'http://www.chenengdai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1401.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1401.jpg', 'cnd', '0', 'http://chenengdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('147', '邦帮堂', null, '5', '0', '0', 'https://www.rmbbox.com/', 'https://openplat.wdzj.com/upload/plats/1041/20151207104209s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1041/20151207104209s_.png', 'bbt', '0', 'http://rmbbox.p2peye.com', '', null, '54', 'B-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('148', '分利宝', null, '1', '0', '0', 'https://www.fenlibao.com/', 'https://www.wdzj.com/wdzj/images/example/2017/08/11/20170811164740s_.jpg', '0', 'https://www.wdzj.com/wdzj/images/example/2017/08/11/20170811164740s_.jpg', 'flb', '0', 'http://fenlibao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('149', '隆金宝', null, '1', '0', '0', 'https://www.longkin.net/', 'https://www.wdzj.com/wdzj/images/plat/icon/1638.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1638.jpg', 'ljb', '0', 'http://longkin.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('151', '蜜蜂有钱', null, '6', '0', '0', 'http://www.beesbank.com.cn/', 'https://openplat.wdzj.com/upload/plats/3670/20161014143058s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3670/20161014143058s_.png', 'mfyq', '0', 'http://beesbank.p2peye.com', '', null, '0', '-', '', '2', '9.5', '11', '0', null);
INSERT INTO `t_plat` VALUES ('152', '民投金服', null, '7', '0', '0', 'http://www.100lending.com/', 'https://www.wdzj.com/wdzj/images/example/2017/04/14/20170414110824s_.jpg', '91', 'https://www.wdzj.com/wdzj/images/example/2017/04/14/20170414110824s_.jpg', 'mtjf', '79', 'http://100lending.p2peye.com', 'B', null, '0', '-', '', '2', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('153', '金投行', null, '4', '0', '0', 'http://www.jintouxing.com/', 'https://openplat.wdzj.com/upload/plats/3797/20170316151214s_.png', '44', 'https://openplat.wdzj.com/upload/plats/3797/20170316151214s_.png', 'jtx', '0', 'http://jintouxing.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('154', '百财车贷', null, '1', '0', '0', 'https://www.83chedai.com', 'https://openplat.wdzj.com/upload/plats/3576/20151210164526s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3576/20151210164526s_.jpg', 'bccd', '0', 'http://83chedai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('155', '金投手', null, '0', '0', '0', 'https://www.jintoushou.com', 'https://openplat.wdzj.com/upload/plats/2954/20170223150801s_.png', '0', 'https://openplat.wdzj.com/upload/plats/2954/20170223150801s_.png', 'jts', '0', 'http://jintoushou.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('157', '协众金融', null, '1', '0', '0', 'http://www.xzjinrong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2400.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2400.jpg', 'xzjr', '0', 'http://xzjinrong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('158', '多宝贷', null, '1', '0', '0', 'http://www.duobaodai.com/', 'https://openplat.wdzj.com/upload/plats/1864/20161121145521s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1864/20161121145521s_.png', 'dbd1', '0', 'http://duobaodai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('159', '蛙蛙在线', null, '0', '0', '0', null, 'https://openplat.wdzj.com/upload/plats/4444/20160607152708s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4444/20160607152708s_.jpg', 'wwzx6', '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('160', '钱来网', null, '1', '0', '0', 'http://www.cashlai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/581.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/581.jpg', 'qlw', '0', 'http://cashlai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('161', '银狐财富', null, '4', '0', '0', 'https://www.silverfox-cn.com/', 'https://openplat.wdzj.com/upload/plats/4343/20180528114419s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4343/20160524131907s_.jpg', 'yhcf11', '0', 'http://silverfox-cn.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('162', '小九金服', null, '4', '0', '0', 'http://www.x9jf.com/', 'https://openplat.wdzj.com/upload/plats/4146/20160316164552s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4146/20160316164552s_.png', 'xjjf', '0', 'http://x9jf.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('163', '银多网', null, '4', '0', '0', 'http://www.yinduowang.com/', 'https://openplat.wdzj.com/upload/plats/4929/20170816165228s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4929/20170816165228s_.jpg', 'ydw01', '0', 'http://yinduowang.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('164', 'e周行', null, '4', '0', '0', 'https://www.ezxing.com/', 'https://openplat.wdzj.com/upload/plats/1994/20151201095824s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1994/20151201095824s_.png', 'ezx', '0', 'http://ezxing.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('165', '今金贷', null, '3', '0', '0', 'https://bank.91jinjindai.com', 'https://openplat.wdzj.com/upload/plats/4315/20170901144000s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4315/20170901144000s_.jpg', 'jjd3', '0', 'http://jinjindai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('166', '理财农场', null, '9', '0', '0', 'https://www.lcfarm.com/?channel=wdty', 'https://openplat.wdzj.com/upload/plats/3192/20160629101541s_.jpg', '25', 'https://openplat.wdzj.com/upload/plats/3192/20160629101541s_.jpg', 'lcnc', '0', 'http://lcfarm.p2peye.com', '', null, '0', '-', '', '2', '6.8', '7.5', '0', null);
INSERT INTO `t_plat` VALUES ('167', '收获宝', null, '1', '0', '0', 'http://www.sh.com/', null, '0', null, null, '0', 'http://sh.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('168', '喔喔贷', null, '3', '0', '0', 'https://www.woowoodai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1473.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1473.jpg', 'wwd111', '0', 'http://woowoodai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('169', '好车贷', null, '4', '0', '0', 'https://www.haochedai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/400.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/400.jpg', 'hcd', '0', 'http://haochedai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('170', '人众金服', null, '5', '0', '0', 'http://www.51rz.com/', 'https://openplat.wdzj.com/upload/plats/3558/20160106122614s_.png', '87', 'https://openplat.wdzj.com/upload/plats/3558/20160106122614s_.png', 'rzjf', '0', 'http://51rz.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('171', '厚本金融', null, '5', '0', '0', 'https://www.houbank.com/', 'https://www.wdzj.com/wdzj/images/example/2016/11/01/20161101143239s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/11/01/20161101143239s_.png', 'hbjr', '0', 'http://houbank.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('172', '好贷宝', null, '3', '0', '0', 'http://www.haodaibao.com/', 'https://www.wdzj.com/wdzj/images/example/2016/02/01/20160201104459s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/02/01/20160201104459s_.png', 'hdb', '0', 'http://haodaibao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('173', '信而富', null, '6', '0', '0', 'http://www.crfchina.com/', 'https://openplat.wdzj.com/upload/plats/1846/20160107160905s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1846/20160107160905s_.png', 'xef', '0', 'http://crfchina.p2peye.com', '', null, '14', 'A-', '', '1', '7', '8', '0', null);
INSERT INTO `t_plat` VALUES ('174', '小油菜', null, '6', '0', '0', 'http://www.xiaoyoucai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/524.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/524.jpg', 'xyc', '0', 'http://xiaoyoucai.p2peye.com', '', null, '86', 'C ', '', '0', '9.5', '10.5', '0', null);
INSERT INTO `t_plat` VALUES ('175', '淘淘金', null, '1', '0', '0', 'http://www.taotaojin.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2636.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2636.jpg', 'ttj1', '0', 'http://taotaojin.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('176', '钱满仓', null, '4', '0', '0', 'http://www.qianmancang.com', 'https://openplat.wdzj.com/upload/plats/3346/20180115161529s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3346/20180115161529s_.png', 'qmc', '0', 'http://qianmancang.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('177', '天府财富', null, '3', '0', '0', 'https://www.52tfd.com', 'https://openplat.wdzj.com/upload/plats/3654/20160613160152s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3654/20160613160152s_.png', 'tfcf2', '0', 'http://52tfd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('178', '点牛金融', null, '4', '0', '0', 'http://www.dianniu98.com/', 'https://openplat.wdzj.com/upload/plats/4024/20160202133158s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4024/20160202133158s_.jpg', 'dnjr', '0', 'http://dianniu98.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('179', '筷来财', null, '1', '0', '0', 'http://58klc.com/', 'https://openplat.wdzj.com/upload/plats/3204/20151021181216s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3204/20151021181216s_.png', 'klc', '0', 'http://58klc.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('180', '青岛汇泉贷', null, '2', '0', '0', 'https://www.huiquandai.com/', null, '0', null, null, '0', 'http://huiquandai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('181', '钱内助', null, '4', '0', '0', 'http://www.qianneizhu.com/', 'https://openplat.wdzj.com/upload/plats/2635/20170103143710s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2635/20170103143710s_.jpg', 'qnz', '0', 'http://qianneizhu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('184', '万家贷', null, '1', '0', '0', 'http://www.wjdai.com/', 'https://openplat.wdzj.com/upload/plats/3917/20160108155809s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3917/20160108155809s_.png', 'wjd1', '0', 'http://wjdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('185', '桔子理财', null, '8', '0', '0', 'https://www.juzilicai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1093.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1093.jpg', 'jzlc', '0', 'http://juzilicai.p2peye.com', '', null, '13', 'A-', '', '1', '6.5', '7.1', '0', null);
INSERT INTO `t_plat` VALUES ('186', 'e微贷', null, '1', '0', '0', 'http://www.eweidai.com/?comeFrom=p2peye', 'https://www.wdzj.com/wdzj/images/plat/icon/566.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/566.jpg', 'ewd', '0', 'http://eweidai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('188', '摇财树', null, '4', '0', '0', 'http://www.moneytree33.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1868.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1868.jpg', 'ycs3', '0', 'http://moneytree33.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('189', '鼎有财', null, '7', '0', '0', 'https://www.duc360.com/index.html', 'https://openplat.wdzj.com/upload/plats/2935/20151021150955s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2935/20151021150955s_.jpg', 'dyc', '0', 'http://duc365.p2peye.com', '', null, '0', '-', '', '2', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('190', '八条鱼', null, '1', '0', '0', 'https://www.batiaoyu.com/', 'https://openplat.wdzj.com/upload/plats/6570/20170712160710s_.png', '0', 'https://openplat.wdzj.com/upload/plats/6570/20170712160710s_.png', 'bty', '0', 'http://batiaoyu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('191', '固金所', null, '4', '0', '0', 'http://www.gujinsuo.com.cn', 'https://www.wdzj.com/wdzj/images/plat/icon/1949.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1949.jpg', 'gjs', '0', 'http://gujinsuo.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('192', '四海众投', null, '1', '0', '0', 'http://www.ishzt.com/', 'https://openplat.wdzj.com/upload/plats/4215/20170807170709s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4215/20170807170709s_.jpg', 'shzt', '0', 'http://ishzt.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('193', '艺点理财', null, '1', '0', '0', 'https://www.edianlicai.com/', 'https://openplat.wdzj.com/upload/plats/3867/20151225115301s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3867/20151225115301s_.jpg', 'ydlc', '0', 'http://edianlicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('194', '中再融', null, '1', '0', '0', 'https://www.zhongzairong.cn/', 'https://openplat.wdzj.com/upload/plats/4367/20171031114424s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4367/20171031114424s_.jpg', 'zzr', '0', 'http://zhongzairong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('195', '融信网', null, '1', '0', '0', 'http://www.rongxin365.com/', 'https://openplat.wdzj.com/upload/plats/125/20180516110608s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/125/20160918102308s_.png', 'rxw', '0', 'http://rongxin365.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('196', '54贷客', null, '1', '0', '0', null, 'https://openplat.wdzj.com/upload/plats/2340/20160321112430s_.png', '0', 'https://openplat.wdzj.com/upload/plats/2340/20160321112430s_.png', 'wsdk', '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('197', '格林易贷    2', null, '1', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('198', '新安左右贷', null, '1', '0', '0', 'http://www.xamoney.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/786.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/786.jpg', 'xazyd', '0', 'http://xamoney.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('199', '中融宝', null, '5', '0', '0', 'http://www.zrbao.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1005.jpg', '61', 'https://www.wdzj.com/wdzj/images/plat/icon/1005.jpg', 'zrb', '0', 'http://zrbao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('200', 'e葱金融', null, '1', '0', '0', 'http://www.econgfin.com', 'https://openplat.wdzj.com/upload/plats/4182/20170502172024s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4182/20170502172024s_.jpg', 'ecjr', '0', 'http://econgfin.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('201', '沃时贷', null, '5', '0', '0', 'http://www.woshidai.com', 'https://openplat.wdzj.com/upload/plats/368/20160906171811s_.png', '0', 'https://openplat.wdzj.com/upload/plats/368/20160906171811s_.png', 'wsd1', '0', 'http://woshidai.p2peye.com', '', null, '96', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('202', '普惠理财', null, '2', '0', '0', 'https://www.puhuilicai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/923.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/923.jpg', 'phlc', '0', 'http://puhuilicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('203', '好又贷', null, '1', '0', '0', 'http://www.hydbest.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/644.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/644.jpg', 'hyd1', '0', 'http://hydbest.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('204', '瑞钱宝', null, '2', '0', '0', 'http://www.rqbao.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1276.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1276.jpg', 'rqb', '0', 'http://rqbao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('205', '易享贷', null, '1', '0', '0', 'http://www.yixiangdai.com', 'https://openplat.wdzj.com/upload/plats/4183/20160317121716s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4183/20160317121716s_.png', 'yxd7', '0', 'http://yixiangdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('206', '闲钱宝', null, '1', '0', '0', 'http://www.51xqb.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/402.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/402.jpg', 'xqb', '0', 'http://51xqb.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('207', '握握贷', '握握金服', '3', '0', '0', 'http://www.wowodai.cn/', 'https://openplat.wdzj.com/upload/plats/882/20171121164325s_.png', '0', null, 'wwd1', '0', 'http://wowodai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('208', '产融贷', null, '1', '0', '0', 'http://www.chanrongdai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1428.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1428.jpg', 'crd', '0', 'http://chanrongdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('209', '懒投资', null, '5', '0', '0', 'https://lantouzi.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1460.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1460.jpg', 'ltz', '0', 'http://lantouzi.p2peye.com', '', null, '39', 'B-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('210', '郑投网', null, '5', '0', '0', 'https://www.zhengtou.com/', 'https://openplat.wdzj.com/upload/plats/3930/20160126172450s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3930/20160126172450s_.png', 'ztw2', '0', 'http://zhengtou.p2peye.com', '', null, '0', '-', '', '2', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('211', '三信贷', null, '3', '0', '0', 'http://www.sxrong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/102.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/102.jpg', 'sxd', '0', 'http://sxrong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('212', '小宝金融', null, '1', '0', '0', 'http://www.babymoney.cn', 'https://www.wdzj.com/wdzj/images/plat/icon/2388.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2388.jpg', 'xbjr', '0', 'http://babymoney.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('213', '票票喵', null, '6', '0', '0', 'https://www.ppmiao.com/', 'https://openplat.wdzj.com/upload/plats/6395/20171218141016s_.png', '0', 'https://openplat.wdzj.com/upload/plats/6395/20171218141016s_.png', 'ppm', '0', 'http://piaopiaomiao.p2peye.com', '', null, '0', '-', '', '2', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('214', '欧亚金融', null, '1', '0', '0', 'https://www.xjoyjr.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2502.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2502.jpg', 'oyjr', '0', 'http://xjoyjr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('215', '聚雪球', null, '1', '0', '0', 'https://www.juxueqiu.com/', 'https://openplat.wdzj.com/upload/plats/3173/20151020155929s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3173/20151020155929s_.png', 'jxq', '0', 'http://juxueqiu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('216', '安家贷', null, '1', '0', '0', 'https://www.anjd.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/3170.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/3170.jpg', 'ajd', '0', 'http://anjd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('217', '乐金所', null, '1', '0', '0', 'https://www.lejinsuo.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1932.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1932.jpg', 'ljs3', '0', 'http://lejinsuo.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('218', '58财福', null, '1', '0', '0', 'http://www.58caifu.cn', 'https://www.wdzj.com/wdzj/images/plat/icon/659.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/659.jpg', 'wbcf1', '0', 'http://58caifu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('219', '玖富理财', '玖富', '9', '0', '0', 'http://www.9fbank.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/555.jpg', '0', null, 'jf8', '0', 'http://9fbank.p2peye.com', '', null, '4', 'A ', '', '1', '7', '8', '7', 'c轮');
INSERT INTO `t_plat` VALUES ('220', '创客金融', null, '5', '0', '0', 'https://www.chuangke18.com/', 'https://openplat.wdzj.com/upload/plats/3046/20151126103347s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3046/20151126103347s_.jpg', 'ckjr', '0', 'http://chuangke18.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('221', '投促金融', null, '1', '0', '0', 'https://www.chinap2g.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1168.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1168.jpg', 'tcjr', '0', 'http://chinap2g.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('222', '爱达财富', null, '1', '0', '0', 'http://www.idacf.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/968.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/968.jpg', 'adcf', '0', 'http://idacf.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('223', '考拉理财', null, '1', '0', '0', 'https://www.kaolalicai.cn/', 'https://openplat.wdzj.com/upload/plats/4614/20160719120526s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4614/20160719120526s_.jpg', 'kllc', '0', 'http://kaolalicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('224', '金汇微金', null, '1', '0', '0', 'https://www.51jhwj.com/', 'https://www.wdzj.com/wdzj/images/example/2016/09/23/20160923095403s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/09/23/20160923095403s_.png', 'jhwj', '0', 'http://51jhwj.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('226', '旺财谷', null, '1', '0', '0', 'https://www.wangcaigu.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/695.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/695.jpg', 'wcg', '0', 'http://wangcaigu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('227', '金宝保', null, '6', '0', '0', 'http://www.5djbb.com', 'https://www.wdzj.com/wdzj/images/plat/icon/984.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/984.jpg', 'jbb', '0', 'http://5djbb.p2peye.com', '', null, '50', 'B-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('228', '首E家', null, '3', '0', '0', 'https://www.shoujins.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/3029.jpg', '99', 'https://www.wdzj.com/wdzj/images/plat/icon/3029.jpg', 'sej', '0', 'http://shoujins.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('229', '京金所', null, '1', '0', '0', 'http://www.jinbank.com.cn', 'https://www.wdzj.com/wdzj/images/plat/icon/1441.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1441.jpg', 'jjs', '0', 'http://jinbank.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('230', '银票网', null, '4', '0', '0', 'http://www.yinpiao.com', 'https://openplat.wdzj.com/upload/plats/950/20170718170320s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/950/20170718170320s_.jpg', 'ypw', '0', 'http://yinpiao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('231', '冀金宝', null, '1', '0', '0', 'http://www.chinajijinbao.com', 'https://www.wdzj.com/wdzj/images/plat/icon/noicon.png', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/noicon.png', 'jjb', '0', 'http://chinajijinbao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('232', '星火钱包', null, '4', '0', '0', 'https://www.xeenho.com/', null, '0', null, null, '0', 'http://xeenho.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('234', '货融贷', null, '1', '0', '0', 'http://www.huorongdai.com/', 'https://openplat.wdzj.com/upload/plats/4184/20170426150703s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4184/20170426150703s_.png', 'hrd6', '0', 'http://huorongdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('235', '黄河金融', null, '5', '0', '0', 'http://www.hhedai.com', 'https://openplat.wdzj.com/upload/plats/602/20180201143051s_.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/602.jpg', 'hhjr1', '74', 'http://hhedai.p2peye.com', 'B', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('236', '杉易贷', null, '7', '0', '0', 'http://www.33lend.com', 'https://www.wdzj.com/wdzj/images/plat/icon/2375.jpg', '26', 'https://www.wdzj.com/wdzj/images/plat/icon/2375.jpg', 'syd9', '63', 'http://33lend.p2peye.com', 'B', null, '66', 'B-', '', '0', '8', '8.5', '6', null);
INSERT INTO `t_plat` VALUES ('237', '融通资产', null, '1', '0', '0', 'http://www.rongtongzc.com', 'https://www.wdzj.com/wdzj/images/plat/icon/418.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/418.jpg', 'rtzc', '0', 'http://rongtongzc.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('238', '三农金服', null, '1', '0', '0', 'https://www.snjfu.com/', 'https://openplat.wdzj.com/upload/plats/3113/20160225145420s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3113/20160225145420s_.jpg', 'snjf', '0', 'http://snjfu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('239', '国盈金服', null, '2', '0', '0', null, 'https://openplat.wdzj.com/upload/plats/6380/20170322103622s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/6380/20170322103622s_.jpg', 'gyfj', '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('240', '沙小僧', null, '4', '0', '0', 'http://www.shaxiaoseng.com/', 'https://openplat.wdzj.com/upload/plats/4412/20160526102809s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4412/20160526102809s_.png', 'sxs', '0', 'http://shaxiaoseng.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('241', '海投汇', null, '4', '0', '0', 'https://www.htouhui.com/', 'https://openplat.wdzj.com/upload/plats/3037/20151209123053s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3037/20151209123053s_.png', 'hth', '0', 'http://htouhui.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('242', '人人爱家金融', null, '4', '0', '0', 'https://www.renrenaijia.com/', 'https://openplat.wdzj.com/upload/plats/6362/20170313152851s_.png', '0', 'https://openplat.wdzj.com/upload/plats/6362/20170313152851s_.png', 'rrajjr', '0', 'http://renrenaijia.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('243', '草根投资', null, '5', '0', '0', 'https://www.cgtz.com/', 'https://openplat.wdzj.com/upload/plats/1120/20170814111635s_.gif', '0', 'https://openplat.wdzj.com/upload/plats/1120/20170814111635s_.gif', 'cgtz', '0', 'http://cgtz.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('244', '添米财富', null, '1', '0', '0', 'https://www.91tianmi.com/#/', null, '0', null, null, '0', 'http://91tianmi.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('245', '电网贷', null, '1', '0', '0', 'http://www.dianwd.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1808.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1808.jpg', 'dwd', '0', 'http://dianwd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('246', '真融宝', null, '4', '0', '0', 'https://www.zhenrongbao.com', null, '0', null, null, '0', 'http://zhenrongbao.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('247', '五爱金融', null, '1', '0', '0', 'http://www.wuaijr.com/mypage.page', 'https://openplat.wdzj.com/upload/plats/4464/20170807162343s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4464/20170807162343s_.jpg', 'wajr', '0', 'http://wuaijr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('248', '希望金融', null, '5', '0', '0', 'https://www.xwjr.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1784.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1784.jpg', 'xwjr1', '0', 'http://xwjr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('249', '聚财猫', null, '1', '0', '0', 'https://www.jucaicat.com', 'https://openplat.wdzj.com/upload/plats/4909/20170118104756s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4909/20170118104756s_.png', 'jcm', '0', 'http://jucaicat.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('250', '阿拉丁金服', null, '1', '0', '0', 'http://www.aldjf.com', 'https://openplat.wdzj.com/upload/plats/4291/20160415171201s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4291/20160415171201s_.jpg', 'aldjf', '0', 'http://aldjf.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('251', '铜板街', null, '8', '0', '0', 'https://www.tongbanjie.com/', 'https://www.wdzj.com/wdzj/images/example/2016/09/01/20160901163217s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/09/01/20160901163217s_.png', 'tbj', '0', 'http://tongbanjie.p2peye.com', '', null, '0', '-', '', '2', '8.5', '9', '8', null);
INSERT INTO `t_plat` VALUES ('252', '抓钱猫', null, '2', '0', '0', 'https://www.zhuaqianmao.com/index.html', null, '0', null, null, '0', 'http://zhuaqianmao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('253', '中广核富盈', null, '1', '0', '0', 'https://www.cgnfex.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1050.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1050.jpg', 'zghfy', '0', 'http://cgnfs.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('254', '海狸金融', null, '1', '0', '0', 'https://www.hailijr.com/', null, '0', null, null, '0', 'http://hailijr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('255', '爱贷网', null, '5', '0', '0', 'http://www.cnaidai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/143.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/143.jpg', 'adw', '0', 'http://cnaidai.p2peye.com', '', null, '100', 'C-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('257', '票据宝', null, '4', '0', '0', 'http://www.pj.com/', 'https://openplat.wdzj.com/upload/plats/3084/20161014094642s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3084/20161014094642s_.png', 'pjb', '0', 'http://pj.p2peye.com', '', null, '0', '-', '', '0', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('258', '爵财网', null, '1', '0', '0', null, 'https://openplat.wdzj.com/upload/plats/4313/20160421170048s_.gif', '0', 'https://openplat.wdzj.com/upload/plats/4313/20160421170048s_.gif', 'jcw', '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('259', '楚金所', null, '1', '0', '0', 'http://www.chujinsuo.com', 'https://www.wdzj.com/wdzj/images/plat/icon/858.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/858.jpg', 'cjs1', '0', 'http://chujinsuo.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('260', '赢众投', null, '1', '0', '0', 'https://www.yingzhongtou.com/', 'https://openplat.wdzj.com/upload/plats/4116/20160309161253s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4116/20160309161253s_.png', 'yzt', '0', 'http://yingzhongtou.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('261', '中投融', null, '1', '0', '0', 'https://www.ztrong.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/2786.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2786.jpg', 'ztr', '0', 'http://ztrong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('262', '安润金融', null, '1', '0', '0', 'https://www.anrunjinrong.com/', 'https://openplat.wdzj.com/upload/plats/4106/20160601140528s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4106/20160601140528s_.png', 'arjr', '0', 'http://anrunjinrong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('263', '宝点网', null, '3', '0', '0', 'https://www.bao.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/217.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/217.jpg', 'bdw', '0', 'http://bao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('264', '商富贷', null, '1', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('265', '国民丰泰', null, '1', '0', '0', 'http://www.sztnf.com/', 'https://openplat.wdzj.com/upload/plats/3260/20160824122655s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3260/20160824122655s_.jpg', 'gmft', '0', 'http://sztnf.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('266', '阿朋贷', null, '2', '0', '0', 'https://www.apengdai.com', 'https://openplat.wdzj.com/upload/plats/601/20180115115732s_.png', '0', 'https://openplat.wdzj.com/upload/plats/601/20180115115732s_.png', 'apd1', '0', 'http://apengdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('267', '房金所', null, '1', '0', '0', 'https://fangjs.sina.com.cn/', 'https://www.wdzj.com/wdzj/images/example/2016/01/22/20160122202241s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/01/22/20160122202241s_.png', 'fjs', '0', 'http://sina.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('268', '穗金所', null, '1', '0', '0', 'https://www.8258.com/', 'https://openplat.wdzj.com/upload/plats/735/20170815173452s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/735/20170815173452s_.jpg', 'sjs2', '0', 'http://11118258.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('269', '火球理财', null, '4', '0', '0', 'https://www.huoqiu.cn/', 'https://openplat.wdzj.com/upload/plats/4351/20160512154605s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4351/20160512154605s_.jpg', 'hqlc', '0', 'http://huoqiu.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('270', '链车金服', null, '0', '0', '0', 'http://chaincar.com', 'https://openplat.wdzj.com/upload/plats/4212/20160324135135s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4212/20160324135135s_.jpg', 'lcjf1', '0', 'http://chaincar.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('271', '彩麒麟', null, '1', '0', '0', 'http://www.caiqilin.com', 'https://www.wdzj.com/wdzj/images/plat/icon/2836.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/2836.jpg', 'cql', '0', 'http://caiqilin.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('272', '牛伯伯理财', null, '1', '0', '0', 'http://sanniujinfu.com/', 'https://openplat.wdzj.com/upload/plats/5503/20161025141250s_.gif', '0', 'https://openplat.wdzj.com/upload/plats/5503/20161025141250s_.gif', 'nbb1c', '0', 'http://zsfzzx.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('273', '信投在线', null, '1', '0', '0', 'https://www.xintouzaixian.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1106.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1106.jpg', 'xtzx', '0', 'http://xintouzaixian.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('274', '星月创投', null, '2', '0', '0', 'https://cg.newzgxyct.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/450.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/450.jpg', 'xyct', '0', 'http://zgxyct.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('275', '贷贷兴隆', null, '4', '0', '0', 'http://www.ddxlong.com', 'https://www.wdzj.com/wdzj/images/plat/icon/446.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/446.jpg', 'ddxl', '0', 'http://ddxlong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('276', '小猪生财', null, '4', '0', '0', 'https://www.pigcaifu.com', 'https://openplat.wdzj.com/upload/plats/4385/20160905170911s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4385/20160905170911s_.png', 'xzsc', '0', 'http://pigcaifu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('278', '方元金服', null, '1', '0', '0', 'http://www.fangyuano.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1914.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1914.jpg', 'fyjf3', '0', 'http://fangyuano.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('279', '紫金所', null, '4', '0', '0', 'http://www.zijinsuo.com/', 'https://openplat.wdzj.com/upload/plats/1577/20170815144159s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1577/20170815144159s_.png', 'zjs', '0', 'http://zijinsuo.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('280', '贷财行', null, '1', '0', '0', 'https://www.daicaihang.cn', 'https://openplat.wdzj.com/upload/plats/2074/20180425100807s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2074/20161207175353s_.png', 'dch', '0', 'http://daicaihang.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('281', '苏宁金融', null, '9', '0', '0', 'http://jinrong.suning.com', 'https://www.wdzj.com/wdzj/images/example/2016/06/02/20160602151253s_.jpg', '0', 'https://www.wdzj.com/wdzj/images/example/2016/06/02/20160602151253s_.jpg', 'snjr', '0', 'http://suning.p2peye.com', '', null, '0', '-', '', '0', '5', '6', '0', null);
INSERT INTO `t_plat` VALUES ('282', '惠人贷', null, '5', '0', '0', 'http://www.huirendai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/865.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/865.jpg', 'hrd3', '0', 'http://huirendai.p2peye.com', '', null, '0', '-', '', '2', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('283', '借贷宝', null, '1', '0', '0', 'http://www.jiedaibao.com', 'https://www.wdzj.com/wdzj/images/example/2016/11/02/20161102160245s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2016/11/02/20161102160245s_.png', 'jdb', '0', 'http://jiedaibao.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('284', '京东金融', null, '9', '0', '0', 'http://jr.jd.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/3080.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/3080.jpg', 'jdjr7', '0', 'http://jd.p2peye.com', '', null, '0', '-', '', '0', '5.2', '5.4', '0', null);
INSERT INTO `t_plat` VALUES ('285', 'Formax金融圈', '金融圈', '4', '0', '0', 'http://p2p.jrq.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1530.jpg', '0', null, 'jrq', '0', 'http://jrq.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('286', '汇付四海', null, '1', '0', '0', 'http://www.huifusihai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1683.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1683.jpg', 'hfsh', '0', 'http://huifusihai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('287', '派派猪理财', null, '2', '0', '0', 'http://www.paipaizhu.com', 'https://openplat.wdzj.com/upload/plats/2465/20160428153150s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2465/20160428153150s_.jpg', 'ppz3', '0', 'http://paipaizhu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('288', '财蜂发财树', null, '1', '0', '0', 'https://www.facaishu.com/', 'https://openplat.wdzj.com/upload/plats/3942/20160128145603s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/3942/20160128145603s_.jpg', 'cffcs', '0', 'http://facaishu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('289', '金控网贷', null, '1', '0', '0', 'http://www.gzjkp2p.com', 'https://openplat.wdzj.com/upload/plats/822/20151201171021s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/822/20151201171021s_.jpg', 'jkwd', '0', 'http://gzjkp2p.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('290', '医界贷', null, '1', '0', '0', 'http://www.yijiedai.com/', 'https://openplat.wdzj.com/upload/plats/421/20171020123052s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/421/20171020123052s_.jpg', 'yjd2', '0', 'http://yijiedai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('291', '你财富', null, '1', '0', '0', 'https://www.nicaifu.com/', 'https://www.wdzj.com/wdzj/images/example/2017/08/08/20170808163511s_.png', '0', null, 'ncf', '0', 'http://nicaifu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('292', '全民财富', null, '1', '0', '0', 'http://www.qmcaifu.com/', 'https://openplat.wdzj.com/upload/plats/1617/20151222160853s_.png', '0', 'https://openplat.wdzj.com/upload/plats/1617/20151222160853s_.png', 'qmcf1', '0', 'http://qmcaifu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('293', '龙金中心', null, '1', '0', '0', 'https://www.lonfax.com/index.htm', 'https://www.wdzj.com/wdzj/images/example/2017/04/19/20170419163641s_.png', '0', 'https://www.wdzj.com/wdzj/images/example/2017/04/19/20170419163641s_.png', 'ljzx', '0', 'http://lonfax.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('294', '普惠金融', null, '2', '0', '0', 'http://www.puhui365.cn/', null, '0', null, null, '0', 'http://puhui365.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('295', '金财动力', null, '1', '0', '0', 'http://www.jincaidongli.com/', 'https://openplat.wdzj.com/upload/plats/4126/20160308112524s_.png', '0', 'https://openplat.wdzj.com/upload/plats/4126/20160308112524s_.png', 'jcdl', '0', 'http://jincaidongli.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('296', '票据客', null, '1', '0', '0', 'http://www.piaojuke.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1398.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1398.jpg', 'pjk', '0', 'http://piaojuke.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('297', '华众金服', null, '1', '0', '0', 'https://www.bankhz.cn', 'https://openplat.wdzj.com/upload/plats/3783/20171113104744s_.png', '0', 'https://openplat.wdzj.com/upload/plats/3783/20171113104744s_.png', 'hzjf2', '0', 'http://bankhz.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('298', '新新贷', null, '6', '0', '0', 'http://www.xinxindai.com', 'https://www.wdzj.com/wdzj/images/plat/icon/95.jpg', '66', 'https://www.wdzj.com/wdzj/images/plat/icon/95.jpg', 'xxd8', '0', 'http://xinxindai.p2peye.com', '', null, '57', 'B-', '', '0', '7', '8', '0', '华宇系');
INSERT INTO `t_plat` VALUES ('299', '安心de利', null, '1', '0', '0', 'https://www.anxindeli.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/891.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/891.jpg', 'axdl', '0', 'http://anxindeli.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('300', '隆隆网', null, '1', '0', '0', 'https://www.longlongweb.com/', 'https://openplat.wdzj.com/upload/plats/964/20160407102319s_.png', '0', 'https://openplat.wdzj.com/upload/plats/964/20160407102319s_.png', 'llw', '0', 'http://longlongweb.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('301', '招财猫理财', '招财猫', '6', '0', '0', 'https://www.zcmlc.com/', 'https://openplat.wdzj.com/upload/plats/2601/20150819142044s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/2601/20150819142044s_.jpg', 'zcmlc', '0', 'http://zcmlc.p2peye.com', '', null, '0', '-', '', '3', '7.5', '8', '0', null);
INSERT INTO `t_plat` VALUES ('303', '浙金网', null, '1', '0', '0', 'https://www.zjmax.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1953.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1953.jpg', 'zjw', '0', 'http://zjmax.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('304', '钱牛牛', null, '5', '0', '0', 'https://www.qianshengqian.com/', 'https://openplat.wdzj.com/upload/plats/977/20170612114815s_.png', '0', 'https://openplat.wdzj.com/upload/plats/977/20170612114815s_.png', 'qnn', '0', 'http://qianshengqian.p2peye.com', '', null, '0', '-', '', '0', '6.5', '7.5', '0', null);
INSERT INTO `t_plat` VALUES ('305', '梦想盈行', null, '1', '0', '0', 'http://www.mxyinghang.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1552.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/1552.jpg', 'mxyh', '0', 'http://mxyinghang.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('306', '椰子理财', null, '1', '0', '0', 'https://www.yeamoney.cn/', 'https://openplat.wdzj.com/upload/plats/4588/20160713165732s_.jpg', '0', 'https://openplat.wdzj.com/upload/plats/4588/20160713165732s_.jpg', 'yzlc1', '0', 'http://yeamoney.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('307', '中金贷', null, '1', '0', '0', 'https://www.zhongjindai.com/index', 'https://www.wdzj.com/wdzj/images/plat/icon/971.jpg', '0', 'https://www.wdzj.com/wdzj/images/plat/icon/971.jpg', 'zjd1', '0', 'http://zhongjindai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('308', '熊猫金库', null, '7', '0', '0', 'http://www.xiongmaojinku.com/', 'https://www.wdzj.com/wdzj/images/example/2016/09/09/20160909112718s_.jpg', '0', 'https://www.wdzj.com/wdzj/images/example/2016/09/09/20160909112718s_.jpg', 'xmjk', '0', 'http://xiongmaojinku.p2peye.com', '', null, '0', '-', '', '2', '7.5', '9', '0', null);
INSERT INTO `t_plat` VALUES ('309', '唐小僧', null, '3', '0', '0', 'http://www.txslicai.com', 'https://www.wdzj.com/wdzj/images/example/2016/04/25/20160425141122s_.jpg', '0', 'https://www.wdzj.com/wdzj/images/example/2016/04/25/20160425141122s_.jpg', 'txs5', '0', 'http://txslicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('311', '陆金服', '陆金所', '10', '0', '0', 'https://www.lu.com/', 'https://www.wdzj.com/wdzj/images/example/2017/03/24/20170324172206s_.jpg', '3', 'https://www.wdzj.com/wdzj/images/example/2017/03/24/20170324172206s_.jpg', 'ljf2', '1', 'http://lu.p2peye.com', 'A+', null, '1', 'A ', '', '1', '3.3', '6', '0', '低息，安全');
INSERT INTO `t_plat` VALUES ('312', '人人聚财', null, '7', '0', '0', 'https://www.rrjc.com/', 'https://openplat.wdzj.com/upload/plats/93/20171207135313s_.jpg', '30', null, 'rrjc', '33', 'http://rrjc.p2peye.com', 'B+', null, '29', 'B ', '', '2', '7.8', '8.5', '0', null);
INSERT INTO `t_plat` VALUES ('313', '向上金服', null, '7', '0', '0', 'http://www.xiangshang360.com/', 'https://www.wdzj.com/wdzj/images/example/2018/01/16/20180116140550s_.png', '18', null, 'xsjf', '45', 'http://xiangshang360.p2peye.com', 'B+', null, '28', 'B ', '', '0', '8', '8.8', '6', null);
INSERT INTO `t_plat` VALUES ('314', '融金所', null, '6', '0', '0', 'https://www.rjs.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/184.jpg', '0', null, 'rjs1', '29', 'http://rjs.p2peye.com', 'B+', null, '43', 'B-', '', '0', '9.5', '10.8', '0', null);
INSERT INTO `t_plat` VALUES ('315', '易通贷', null, '6', '0', '0', 'http://www.etongdai.com/', 'https://openplat.wdzj.com/upload/plats/127/20160713141628s_.png', '92', null, 'ytd2', '0', 'http://etongdai.p2peye.com', '', null, '69', 'C ', '', '0', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('316', '城城理财', null, '0', '0', '0', 'https://www.cclc.co/', 'https://www.wdzj.com/wdzj/images/plat/icon/1725.jpg', '0', null, 'cclc', '0', 'http://cclc.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', '融360评级C级过');
INSERT INTO `t_plat` VALUES ('317', '钱盆网', null, '6', '0', '0', 'http://www.qianpen.com/', 'https://www.wdzj.com/wdzj/images/example/2018/01/10/20180110113837s_.jpg', '47', null, 'qpw', '78', 'http://qianpen.p2peye.com', 'B', null, '65', 'B-', '', '0', '13', '14', '7', null);
INSERT INTO `t_plat` VALUES ('318', '安心贷', null, '5', '0', '0', 'http://www.anxin.com', 'https://www.wdzj.com/wdzj/images/plat/icon/92.jpg', '0', null, 'axd', '0', 'http://anxin.p2peye.com', '', null, '80', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('319', '钱爸爸', null, '5', '0', '0', 'https://www.qian88.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/216.jpg', '0', null, 'qbb', '0', 'http://qian88.p2peye.com', '', null, '82', 'C ', '', '0', '10', '10.6', '0', null);
INSERT INTO `t_plat` VALUES ('320', '九斗鱼', null, '5', '0', '0', 'http://www.9douyu.com/', 'https://openplat.wdzj.com/upload/plats/671/20160428165017s_.jpg', '0', null, 'jdy', '0', 'http://9douyu.p2peye.com', '', null, '84', 'C ', '', '0', '11', '11.5', '0', null);
INSERT INTO `t_plat` VALUES ('321', '指旺财富', '指旺理财', '8', '0', '0', 'https://zhiwang.yixin.com/', null, '0', null, null, '0', 'http://yixin.p2peye.com', '', null, '0', '-', '', '1', '6', '7', '0', '宜信公司旗下，和宜人贷一个爹');
INSERT INTO `t_plat` VALUES ('322', '丁丁金服', null, '5', '0', '0', 'http://www.dingdingjinfu.com', 'https://openplat.wdzj.com/upload/plats/336/20160909093215s_.jpg', '0', null, 'ddjf', '0', 'http://dingdingjinfu.p2peye.com', '', null, '93', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('323', '粤商贷', null, '5', '0', '0', 'https://www.yesvion.com', 'https://openplat.wdzj.com/upload/plats/398/20160725135404s_.png', '0', null, 'ysd2', '0', 'http://yesvion.p2peye.com', '', null, '95', 'C ', '', '0', '11.6', '12.8', '5', null);
INSERT INTO `t_plat` VALUES ('324', '掌中财富', null, '5', '0', '0', 'https://www.zzcaifu.com/?regFrom=wdtyda', 'https://openplat.wdzj.com/upload/plats/2591/20160602160706s_.png', '0', null, 'zzcf', '0', 'http://zzcaifu.p2peye.com', '', null, '94', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('325', '钱多多', null, '6', '0', '0', 'https://d.com.cn/', 'https://www.wdzj.com/wdzj/images/plat/icon/467.jpg', '0', null, 'qdd2', '0', 'http://d.p2peye.com', '', null, '99', 'C-', '', '0', '8.8', '10', '5', null);
INSERT INTO `t_plat` VALUES ('326', '51人品', null, '8', '0', '0', 'https://www.51rp.com/', 'https://openplat.wdzj.com/upload/plats/4891/20171212160139s_.png', '21', null, '51rp', '0', 'http://51rp.p2peye.com', '', null, '0', '-', '', '2', '7.2', '8.1', '7', null);
INSERT INTO `t_plat` VALUES ('327', '58车贷', null, '5', '0', '0', 'https://www.58chedai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1614.jpg', '0', null, 'wbcd', '0', 'http://58chedai.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('328', '360你财富', null, '6', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '1', '5.6', '7', '0', null);
INSERT INTO `t_plat` VALUES ('329', '宜聚网', null, '5', '0', '0', 'http://www.1ju.com', 'https://openplat.wdzj.com/upload/plats/154/20171113134432s_.jpg', '69', null, 'yjw', '0', 'http://1ju.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', '河南汽车工业控股');
INSERT INTO `t_plat` VALUES ('330', '优投在线', null, '4', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('331', '易港金融', null, '7', '0', '0', 'https://www.ycd360.com/', 'https://www.wdzj.com/wdzj/images/example/2018/06/05/20180605162940s_.png', '56', null, 'ygjr1', '0', 'http://ycd360.p2peye.com', '', null, '0', '-', '', '2', '10', '11', '7', null);
INSERT INTO `t_plat` VALUES ('332', '盈盈理财', null, '4', '0', '0', 'https://licai.yingyinglicai.com/index.htm', 'https://www.wdzj.com/wdzj/images/plat/icon/848.jpg', '0', null, 'yylc', '0', 'http://yingyinglicai.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('333', '壹佰金融', null, '5', '0', '0', 'https://www.pp100.com/', 'https://openplat.wdzj.com/upload/plats/2389/20160428135701s_.png', '0', null, 'ybjr1', '0', 'http://pp100.p2peye.com', '', null, '0', '-', '', '2', '8', '9', '0', null);
INSERT INTO `t_plat` VALUES ('334', '洋钱罐', null, '5', '0', '0', 'https://www.yangqianguan.com/', 'https://openplat.wdzj.com/upload/plats/5658/20180607153028s_.png', '59', null, 'yqg', '0', 'http://yangqianguan.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('335', '小马金融', null, '5', '0', '0', 'http://www.xmjr.com', 'https://openplat.wdzj.com/upload/plats/3480/20151223170440s_.jpg', '0', null, 'xmjr', '0', 'http://xmjr.p2peye.com', '', null, '0', '-', '', '1', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('336', '悟空理财', null, '7', '0', '0', 'http://www.wukonglicai.com/', null, '0', null, null, '0', 'http://wukonglicai.p2peye.com', '', null, '0', '-', '', '1', '7', '8', '0', null);
INSERT INTO `t_plat` VALUES ('337', '温商贷', null, '6', '0', '0', 'http://www.wsloan.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/211.jpg', '76', null, 'wsd', '0', 'http://wsloan.p2peye.com', '', null, '0', '-', '', '3', '10.2', '11.4', '6', null);
INSERT INTO `t_plat` VALUES ('338', '微金在线', null, '4', '0', '0', 'https://www.weijinzaixian.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/507.jpg', '0', null, 'wjzx', '0', 'http://weijinzaixian.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('339', '挖财宝', '挖财', '8', '0', '0', 'http://www.wacai.com/', 'https://www.wdzj.com/wdzj/images/example/2016/09/23/20160923113449s_.png', '0', null, 'wc', '0', 'http://wacai.p2peye.com', '', null, '0', '-', '', '1', '6.5', '7', '0', null);
INSERT INTO `t_plat` VALUES ('340', '投之家', null, '6', '0', '0', 'https://www.touzhijia.com/', 'https://www.wdzj.com/wdzj/images/example/2016/01/29/20160129163911s_.jpg', '0', null, 'tzj', '0', 'http://touzhijia.p2peye.com', '', null, '0', '-', '', '2', '8.2', '9.5', '5', null);
INSERT INTO `t_plat` VALUES ('341', '甜橙理财', null, '4', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '1', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('342', '随手记', null, '8', '0', '0', 'http://www.suishou.com/', 'https://openplat.wdzj.com/upload/plats/6751/20171011171027s_.png', '0', null, 'ssj', '0', 'http://feidee.p2peye.com', '', null, '0', '-', '', '1', '6.5', '6.5', '0', null);
INSERT INTO `t_plat` VALUES ('343', '钱包金融', null, '7', '0', '0', null, 'https://openplat.wdzj.com/upload/plats/7106/20180516093339s_.jpg', '0', null, 'qbjr1', '0', null, '', null, '0', '-', '', '2', '11.2', '12.7', '5', null);
INSERT INTO `t_plat` VALUES ('344', '你我金融', null, '6', '0', '0', 'http://www.niiwoo.com/index.html', 'https://openplat.wdzj.com/upload/plats/5724/20161212110225s_.png', '0', null, 'nwjr', '0', 'http://niiwoo.p2peye.com', '', null, '0', '-', '', '2', '9', '11', '5', null);
INSERT INTO `t_plat` VALUES ('347', '金蛋理财', null, '5', '0', '0', 'https://www.jindanlicai.com', 'https://openplat.wdzj.com/upload/plats/3332/20151104204524s_.png', '0', null, 'jdlc1', '0', 'http://jindanlicai.p2peye.com', '', null, '0', '-', '', '2', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('348', '饭饭金服', null, '5', '0', '0', 'http://www.fanfanjf.cn', 'https://openplat.wdzj.com/upload/plats/4640/20160728112141s_.jpg', '0', null, 'ffjf', '0', 'http://fanfanjf.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('349', '合众e贷', null, '5', '0', '0', 'https://www.hzed.com/', 'https://www.wdzj.com/wdzj/images/example/2016/11/02/20161102120214s_.png', '83', null, 'hzed', '69', 'http://hzed.p2peye.com', 'B', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('350', '惠金所', null, '7', '0', '0', 'https://www.hfax.com/', 'https://openplat.wdzj.com/upload/plats/3764/20170901151855s_.png', '0', null, 'hjs2', '0', 'http://hfax.p2peye.com', '', null, '23', 'B+', '', '1', '6.8', '7.6', '0', null);
INSERT INTO `t_plat` VALUES ('351', '狐狸慧赚', '搜易贷', '8', '0', '0', 'https://www.souyidai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1345.jpg', '13', null, 'syd5', '72', 'http://souyidai.p2peye.com', 'B', null, '0', '-', '', '1', '6.3', '7.3', '0', null);
INSERT INTO `t_plat` VALUES ('352', '简理财', null, '5', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('353', '恒易融', null, '5', '0', '0', 'http://www.hengyirong.com/', 'https://openplat.wdzj.com/upload/plats/1503/20150212173400s_.png', '58', null, 'hyr', '0', 'http://hengyirong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('354', '链家理财', null, '5', '0', '0', 'http://licai.lianjia.com', null, '0', null, null, '0', 'http://lianjia.p2peye.com', '', null, '0', '-', '', '0', '7', null, '0', null);
INSERT INTO `t_plat` VALUES ('355', '一点通财富', null, '5', '0', '0', 'https://www.1-dt.com/', 'https://openplat.wdzj.com/upload/plats/2126/20170329163054s_.png', '0', null, 'ydtcf', '0', 'http://1-dt.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('356', 'E都市钱包', 'e都市钱包', '5', '0', '0', 'https://www.edspay.com/', 'https://openplat.wdzj.com/upload/plats/5216/20171205180316s_.jpg', '84', null, 'edsqb', '0', 'http://edspay.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('357', '连资贷', null, '4', '0', '0', 'https://www.lianzidai.com/', 'https://openplat.wdzj.com/upload/plats/1282/20161201115310s_.png', '74', null, 'lzd2', '0', 'http://lianzidai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('358', '多赢金融', '多赢普惠', '4', '0', '0', 'https://www.duoying.com/', 'https://openplat.wdzj.com/upload/plats/2189/20161212141016s_.jpg', '77', null, 'dy', '0', 'http://duoying.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('359', '立业贷', null, '6', '0', '0', 'https://www.liyedai.cn/', 'https://openplat.wdzj.com/upload/plats/435/20160620142544s_.jpg', '0', null, 'lyd', '60', 'http://liyedai.p2peye.com', 'B', null, '0', '-', '', '0', '11', '10.5', '5', null);
INSERT INTO `t_plat` VALUES ('360', '喜投网', null, '4', '0', '0', 'http://www.xitouwang.com', 'https://www.wdzj.com/wdzj/images/example/2014/11/07/20141107155308s_.png', '97', null, 'xtw', '0', 'http://xitouwang.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('361', '乾贷网', null, '4', '0', '0', 'http://www.qiandw.com/', 'https://openplat.wdzj.com/upload/plats/403/20170810152747s_.png', '0', null, 'qdw1', '0', 'http://qiandw.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('362', '后河财富', null, '4', '0', '0', 'https://www.honhe.com', 'https://www.wdzj.com/wdzj/images/plat/icon/417.jpg', '0', null, 'hhcf9', '0', 'http://honhe.p2peye.com', '', null, '87', 'C ', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('363', '掌众财富', null, '4', '0', '0', 'https://www.wealth365.com.cn/', 'https://openplat.wdzj.com/upload/plats/4246/20170902172703s_.png', '0', null, 'zzjr', '0', 'http://wealth365.p2peye.com', '', null, '0', '-', '', '3', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('364', '看看钱包', null, '5', '0', '0', 'https://www.kkqb.cn/', 'https://openplat.wdzj.com/upload/plats/4320/20160823102951s_.jpg', '0', null, 'kkqb', '75', 'http://kkqb.p2peye.com', 'B', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('365', '泰然金融', null, '5', '0', '0', 'https://jr.trc.com/', 'https://openplat.wdzj.com/upload/plats/1077/20160815112310s_.png', '0', null, 'trjr0', '0', 'http://trc.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('366', '小微金融', null, '5', '0', '0', 'https://www.weloan.com/', 'https://openplat.wdzj.com/upload/plats/933/20161115111914s_.png', '0', null, 'xwjr', '0', 'http://weloan.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('367', '小微时贷', null, '4', '0', '0', 'http://www.xwsd.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1411.jpg', '0', null, 'xwsd', '0', 'http://xwsd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('368', '中业兴融', null, '5', '0', '0', 'https://www.zyxr.com', 'https://openplat.wdzj.com/upload/plats/3090/20160831161909s_.jpg', '0', null, 'zyxr', '0', 'http://zyxr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('369', '百金贷', null, '4', '0', '0', 'https://www.baijindai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1527.jpg', '85', null, 'bjd', '73', 'http://baijindai.p2peye.com', 'B', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('370', '利民网理财', '利民网', '3', '0', '0', 'http://www.limin.com/', 'https://openplat.wdzj.com/upload/plats/897/20170307152830s_.png', '0', null, 'lmw', '0', 'http://liminwang.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('371', '汇盈金服', null, '5', '0', '0', 'https://www.hyjf.com/', 'https://www.wdzj.com/wdzj/images/example/2016/03/11/20160311133639s_.png', '93', null, 'hyjf1', '0', 'http://huiyingdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('372', '花虾金融', null, '5', '0', '0', 'http://www.huaxiaoxia.com/', 'https://openplat.wdzj.com/upload/plats/5310/20161025141720s_.jpg', '0', null, 'hxjr6', '0', 'http://huaxiaoxia.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('373', '福利金融', null, '5', '0', '0', 'http://www.fulijr.com/', 'https://openplat.wdzj.com/upload/plats/5117/20170817183934s_.png', '0', null, 'fljf4', '0', 'http://fulijr.p2peye.com', '', null, '0', '-', '', '1', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('374', '百度钱包', null, '10', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '0', '6', '6', '0', null);
INSERT INTO `t_plat` VALUES ('375', '工场微金', null, '4', '0', '0', 'https://www.gongchangp2p.com/', 'https://openplat.wdzj.com/upload/plats/629/20180122163603s_.jpg', '90', null, 'jrgc', '0', 'http://11119888.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('376', '链链金融', null, '5', '0', '0', 'https://www.lljr.com/', 'https://openplat.wdzj.com/upload/plats/6398/20170330104723s_.png', '80', null, 'lljr', '48', 'http://lljr.p2peye.com', 'B+', null, '59', 'B-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('377', '荷包金融', null, '2', '0', '0', 'http://www.hebaodai.com', null, '0', null, null, '0', 'http://hebaodai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('378', '才米公社', null, '6', '0', '0', 'https://www.caimigs.com/', 'https://www.wdzj.com/wdzj/images/example/2018/01/09/20180109143211s_.png', '0', null, 'cmgs', '0', 'http://caimigs.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('379', '美美理财', null, '6', '0', '0', 'https://www.meme2c.com/', null, '0', null, null, '0', 'http://meme2c.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('380', '抱金网', null, '4', '0', '0', 'http://www.baojinjinfu.com/', null, '0', null, null, '0', 'http://baojinjinfu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('381', '好利网', null, '4', '0', '0', 'http://www.haolyy.com/', 'https://openplat.wdzj.com/upload/plats/851/20180621170211s_.jpg', '0', null, 'hlw', '0', 'http://haolyy.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('382', '花生理财', null, '3', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('383', '渝金所', null, '3', '0', '0', 'http://www.yufex.com/', 'https://openplat.wdzj.com/upload/plats/1465/20151106154202s_.png', '0', null, 'yjs', '0', 'http://yufex.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('384', '前海航交所', null, '3', '0', '0', 'https://www.as-exchange.com/index.html', 'https://www.wdzj.com/wdzj/images/example/2016/08/17/20160817150733s_.png', '0', null, 'qhhjs', '0', 'http://as-exchange.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('385', '诚汇通', null, '4', '0', '0', 'https://www.chenghuitong.net/', 'https://www.wdzj.com/wdzj/images/plat/icon/245.jpg', '0', null, 'cht', '0', 'http://chenghuitong.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('387', '冠e通', null, '4', '0', '0', 'https://www.gqget.com/index', 'https://openplat.wdzj.com/upload/plats/3995/20160811111707s_.png', '0', null, 'get', '0', 'http://gqget.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('388', '小树时代理财', '小树时代', '3', '0', '0', 'http://www.xiaoshushidai.cn/', 'https://openplat.wdzj.com/upload/plats/3992/20171027104902s_.jpg', '0', null, 'xssdlc', '0', 'http://xiaoshushidai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('389', '知商金融', null, '4', '0', '0', 'https://www.i2p.com/', 'https://openplat.wdzj.com/upload/plats/2953/20151208172739s_.jpg', '0', null, 'zsjr', '0', 'http://i2p.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('390', '信广立诚贷', null, '3', '0', '0', 'http://www.lichengdai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/1286.jpg', '0', null, 'xglcd', '0', 'http://lichengdai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('391', '银承派', null, '3', '0', '0', 'https://www.yinchengpai.com/', 'https://openplat.wdzj.com/upload/plats/4631/20160722172444s_.jpg', '0', null, 'ycp', '0', 'http://yinchengpai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('392', '大同行', null, '4', '0', '0', 'http://www.dtcash.com', 'https://www.wdzj.com/wdzj/images/plat/icon/574.jpg', '0', null, 'dth', '0', 'http://dtcash.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('393', '钱罐子', '钱罐子\r\n小牛钱罐子', '4', '0', '0', 'https://www.qguanzi.com/', 'https://openplat.wdzj.com/upload/plats/6365/20170321155059s_.jpg', '0', null, 'qgz2', '0', 'http://xiaoniuapp.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('394', '祺天优贷', null, '4', '0', '0', 'https://www.qtyd.com', 'https://www.wdzj.com/wdzj/images/plat/icon/1485.jpg', '0', null, 'qtyd', '0', 'http://qtyd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('395', '小诸葛金服', null, '3', '0', '0', 'http://www.xzgjf.com/', 'https://openplat.wdzj.com/upload/plats/3919/20160910082936s_.jpg', '0', null, 'xzgjf', '0', 'http://xzgjf.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('396', '米族金融', null, '3', '0', '0', 'http://www.miuzone.com', 'https://openplat.wdzj.com/upload/plats/5355/20161202140229s_.png', '0', null, 'mzjr2016', '0', 'http://miuzone.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('397', '长富理财', null, '3', '0', '0', 'http://www.changfulicai.com/', 'https://openplat.wdzj.com/upload/plats/6641/20170811150358s_.png', '0', null, 'cflc1', '0', 'http://changfulicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('398', '东银金服', null, '4', '0', '0', 'https://jf.dyfin.com/', null, '0', null, null, '0', 'http://dyfin.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('399', '艺条龙', null, '3', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('400', '零钱罐', null, '4', '0', '0', 'http://www.lqgapp.com', 'https://openplat.wdzj.com/upload/plats/6529/20170621114651s_.jpg', '0', null, 'lqg', '0', 'http://lqgapp.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('401', '银谷在线', null, '4', '0', '0', 'https://www.yingujr.com/', 'https://openplat.wdzj.com/upload/plats/6533/20170629100101s_.jpg', '0', null, 'ygzx4965', '0', 'http://yingujr.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', '交易量290多亿');
INSERT INTO `t_plat` VALUES ('402', '火理财', null, '4', '0', '0', 'https://www.huolicai.com', 'https://openplat.wdzj.com/upload/plats/7173/20180622140503s_.jpg', '0', null, 'hlc2015', '0', 'http://huolicai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('403', '可信贷', null, '2', '0', '0', 'https://www.kexindai.com/', 'https://www.wdzj.com/wdzj/images/plat/icon/264.jpg', '0', null, 'kxd2', '0', 'http://kexindai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('404', '美易理财', null, '5', '0', '0', 'http://www.gomefinance.com.cn/about', 'https://www.wdzj.com/wdzj/images/example/2016/11/17/20161117133338s_.png', '0', null, 'mylc5', '0', 'http://gomefinance.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', '国美');
INSERT INTO `t_plat` VALUES ('405', '金盈所', null, '2', '0', '0', 'http://www.jinyingsuo.com/', 'https://openplat.wdzj.com/upload/plats/4420/20160527164940s_.png', '0', null, 'jys2', '0', 'http://jinyingsuo.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('406', '智富360', null, '2', '0', '0', 'http://www.zhifu360.com', null, '0', null, null, '0', 'http://zhifu360.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('407', '包公有财', null, '4', '0', '0', 'http://www.baogongyoucai.com/', 'https://openplat.wdzj.com/upload/plats/6886/20171207104359s_.png', '0', null, 'bgyc', '0', 'http://baogongyoucai.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('408', '蜂涌理财', null, '2', '0', '0', 'https://www.fyosd.com/', 'https://openplat.wdzj.com/upload/plats/3913/20180621131248s_.png', '0', null, 'fylc8', '0', 'http://fyosd.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('409', '花生米富', null, '4', '0', '0', 'http://www.yaoyuefu.com/', 'https://www.wdzj.com/wdzj/images/example/2016/07/28/20160728164012s_.png', '0', null, 'hsmf', '0', 'http://yaoyuefu.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('410', '米金社', null, '2', '0', '0', 'https://www.yinmimoney.com/', 'https://openplat.wdzj.com/upload/plats/4278/20160413160916s_.png', '0', null, 'mjs', '0', 'http://yinmimoney.p2peye.com', '', null, '0', '-', '', '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('411', '轻易贷', null, '4', '0', '0', 'https://www.qingyidai.com/?from=pc-wdty01', 'https://www.wdzj.com/wdzj/images/plat/icon/2140.jpg', '0', null, 'qyd1', '0', 'http://qingyidai.p2peye.com', '', null, '0', '-', null, '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('412', '信和大金融', null, '4', '0', '0', 'http://www.xinhe99.com/', 'https://openplat.wdzj.com/upload/plats/512/20170217093214s_.jpg', '0', null, 'xhdjr', '0', 'http://xinhe99.p2peye.com', '', null, '0', '-', null, '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('413', '善林财富', null, '0', '0', '0', null, 'https://openplat.wdzj.com/upload/plats/6369/20170619161856s_.jpg', '0', null, 'slcf1', '0', null, '', null, '0', '-', null, '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('414', ' 宜湃网', null, '5', '0', '0', null, null, '0', null, null, '0', null, '', null, '0', '-', null, '0', null, null, '0', '和宜贷网一个公司');
INSERT INTO `t_plat` VALUES ('415', '米庄理财', null, '5', '0', '0', 'http://www.mizlicai.com/', 'https://openplat.wdzj.com/upload/plats/4982/20170710152017s_.jpg', '94', null, 'mzlc', '0', 'http://mizlicai.p2peye.com', '', null, '0', '-', null, '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('416', '空中金融', null, '5', '0', '0', 'https://www.kongzhongjr.com/', 'https://openplat.wdzj.com/upload/plats/6340/20170223182146s_.jpg', '0', null, 'kzjr', '0', 'http://kongzhong.p2peye.com', '', null, '90', 'C ', null, '0', null, null, '0', null);
INSERT INTO `t_plat` VALUES ('417', '麦麦提', null, '5', '0', '0', 'https://www.mmtvip.com/', null, '0', null, null, '0', 'http://mmtvip.p2peye.com', '', null, '91', 'C ', null, '0', null, null, '0', null);

-- ----------------------------
-- Table structure for `t_plat_eye_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_plat_eye_data`;
CREATE TABLE `t_plat_eye_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eye_name` varchar(30) NOT NULL,
  `eye_plat_url` varchar(100) DEFAULT NULL,
  `eye_plat_icon` varchar(200) DEFAULT NULL,
  `eye_id` varchar(10) DEFAULT NULL,
  `eye_code` varchar(10) DEFAULT NULL,
  `eye_plat_detail_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_plat_eye_data
-- ----------------------------

-- ----------------------------
-- Table structure for `t_plat_rank_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_plat_rank_record`;
CREATE TABLE `t_plat_rank_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plat_id` int(11) NOT NULL,
  `rank_type` int(11) NOT NULL,
  `record_time` int(11) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_plat_rank_record
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `user_age` int(11) DEFAULT NULL,
  `user_class_id` int(11) DEFAULT '1',
  `user_address` varchar(50) DEFAULT NULL,
  `user_remark` varchar(10) DEFAULT NULL COMMENT '备注',
  `user_phone` varchar(20) NOT NULL DEFAULT '',
  `user_password` varchar(20) DEFAULT '',
  PRIMARY KEY (`user_id`,`user_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('4', '五羊', '67', '1', '上海徐汇', '三好学生', '13636415907', '');
INSERT INTO `t_user` VALUES ('5', '李明', '27', '1', '南京苏州', '个人信息不完善', '13636415902', '');
INSERT INTO `t_user` VALUES ('10', 'vf', '12', '1', null, null, '1493949290330', '');
INSERT INTO `t_user` VALUES ('11', 'tg13636415988', '11', '1', null, null, '13636415988', '444444');
INSERT INTO `t_user` VALUES ('12', 'tg13365235653', '11', '1', null, null, '13365235653', '123456');
INSERT INTO `t_user` VALUES ('13', 'tg13333333333', '11', '2', null, null, '13333333333', '1224411');
INSERT INTO `t_user` VALUES ('14', '123', '123', '2', null, null, '1516781735032', '');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` varchar(2) NOT NULL COMMENT '性别',
  `age` int(3) NOT NULL COMMENT '年龄',
  `phone` varchar(11) NOT NULL DEFAULT '0' COMMENT '手机',
  `deliveryaddress` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `adddate` int(11) NOT NULL COMMENT '\r\n\r\n添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '1', '01', '1', '1');
