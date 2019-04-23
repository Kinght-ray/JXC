/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50041
Source Host           : localhost:3306
Source Database       : db_jxc

Target Server Type    : MYSQL
Target Server Version : 50041
File Encoding         : 65001

Date: 2019-04-11 16:07:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL auto_increment,
  `address` varchar(300) default NULL,
  `contact` varchar(50) default NULL,
  `name` varchar(200) default NULL,
  `number` varchar(50) default NULL,
  `remarks` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', '福州新弯曲5号', '小李子', '福州艾玛超市', '2132-23213421', '');
INSERT INTO `t_customer` VALUES ('2', '天津兴达大街888号', '小张', '天津王大连锁酒店', '23432222311', '优质客户');
INSERT INTO `t_customer` VALUES ('3', '大凉山妥洛村', '小爱', '大凉山希望小学', '233243211', '照顾客户2');
INSERT INTO `t_customer` VALUES ('4', '南通通州新金路888号', '王二小', '南通通州综艺集团', '1832132321', '');

-- ----------------------------
-- Table structure for `t_customer_return_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_return_list`;
CREATE TABLE `t_customer_return_list` (
  `id` int(11) NOT NULL auto_increment,
  `amount_paid` float NOT NULL,
  `amount_payable` float NOT NULL,
  `customer_return_date` datetime default NULL,
  `customer_return_number` varchar(100) default NULL,
  `remarks` varchar(1000) default NULL,
  `state` int(11) default NULL,
  `user_id` int(11) default NULL,
  `customer_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKd55ju83f0ntixagdvdrsmw10c` (`user_id`),
  KEY `FKl0ahdwa8slkocbfe57opembfx` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_return_list
-- ----------------------------
INSERT INTO `t_customer_return_list` VALUES ('2', '2200', '2200', '2017-10-27 00:00:00', 'XT201710270001', 'cc', '1', '1', '3');
INSERT INTO `t_customer_return_list` VALUES ('3', '4514', '4514', '2017-10-28 00:00:00', 'XT201710280001', 'cc', '1', '1', '3');
INSERT INTO `t_customer_return_list` VALUES ('4', '4400', '4400', '2017-10-30 00:00:00', 'XT201710300001', 'cc', '1', '1', '3');
INSERT INTO `t_customer_return_list` VALUES ('5', '139', '139', '2017-10-30 00:00:00', 'XT201710300002', 'cc', '1', '1', '2');
INSERT INTO `t_customer_return_list` VALUES ('6', '38', '38', '2017-11-03 00:00:00', 'XT201711030001', 'cc', '1', '1', '2');

-- ----------------------------
-- Table structure for `t_customer_return_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_return_list_goods`;
CREATE TABLE `t_customer_return_list_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `unit` varchar(10) default NULL,
  `customer_return_list_id` int(11) default NULL,
  `type_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKtqt67mbn96lxn8hvtl4piblhi` (`customer_return_list_id`),
  KEY `FK4sm5si4swbj3gae46jfk441yx` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_return_list_goods
-- ----------------------------
INSERT INTO `t_customer_return_list_goods` VALUES ('3', '0002', 'Note8', '华为荣耀Note8', '1', '2200', '2200', '台', '2', '16', '2');
INSERT INTO `t_customer_return_list_goods` VALUES ('4', '0002', 'Note8', '华为荣耀Note8', '2', '2200', '4400', '台', '3', '16', '2');
INSERT INTO `t_customer_return_list_goods` VALUES ('5', '0003', '500g装', '野生东北黑木耳', '3', '38', '114', '袋', '3', '11', '11');
INSERT INTO `t_customer_return_list_goods` VALUES ('6', '0002', 'Note8', '华为荣耀Note8', '2', '2200', '4400', '台', '4', '16', '2');
INSERT INTO `t_customer_return_list_goods` VALUES ('7', '0007', '500g装', '吉利人家牛肉味蛋糕', '2', '10', '20', '袋', '5', '11', '15');
INSERT INTO `t_customer_return_list_goods` VALUES ('8', '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '3', '33', '99', '袋', '5', '11', '17');
INSERT INTO `t_customer_return_list_goods` VALUES ('9', '0010', '250g装', '劲仔小鱼干', '1', '20', '20', '袋', '5', '11', '18');
INSERT INTO `t_customer_return_list_goods` VALUES ('10', '0003', '500g装', '野生东北黑木耳', '1', '38', '38', '袋', '6', '11', '11');

-- ----------------------------
-- Table structure for `t_damage_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_damage_list`;
CREATE TABLE `t_damage_list` (
  `id` int(11) NOT NULL auto_increment,
  `damage_date` datetime default NULL,
  `damage_number` varchar(100) default NULL,
  `remarks` varchar(1000) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKpn094ma69sch1icjc2gu7xus` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_damage_list
-- ----------------------------
INSERT INTO `t_damage_list` VALUES ('3', '2017-10-27 00:00:00', 'BS201710270001', 'cc', '1');
INSERT INTO `t_damage_list` VALUES ('4', '2017-10-27 00:00:00', 'BS201710270002', 'cc', '1');
INSERT INTO `t_damage_list` VALUES ('5', '2017-11-03 00:00:00', 'BS201711030001', '', '1');

-- ----------------------------
-- Table structure for `t_damage_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_damage_list_goods`;
CREATE TABLE `t_damage_list_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `unit` varchar(10) default NULL,
  `damage_list_id` int(11) default NULL,
  `type_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKbf5m8mm3gctrnuubr9xkjamj8` (`damage_list_id`),
  KEY `FKdbdfmp09hlf2raktincwroe9n` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_damage_list_goods
-- ----------------------------
INSERT INTO `t_damage_list_goods` VALUES ('4', '0003', '500g装', '野生东北黑木耳', '2', '23', '46', '袋', '3', '11', '11');
INSERT INTO `t_damage_list_goods` VALUES ('5', '0006', '300g装', '冰糖金桔干', '2', '5', '10', '盒', '3', '11', '14');
INSERT INTO `t_damage_list_goods` VALUES ('6', '0003', '500g装', '野生东北黑木耳', '2', '23', '46', '袋', '4', '11', '11');
INSERT INTO `t_damage_list_goods` VALUES ('7', '0005', '散装500克', '麦片燕麦巧克力', '32', '8', '256', '袋', '4', '11', '13');
INSERT INTO `t_damage_list_goods` VALUES ('8', '0007', '500g装', '吉利人家牛肉味蛋糕', '2', '4.5', '9', '袋', '4', '11', '15');
INSERT INTO `t_damage_list_goods` VALUES ('9', '0002', 'Note8', '华为荣耀Note8', '1', '2220', '2220', '台', '5', '16', '2');

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `inventory_quantity` int(11) NOT NULL,
  `min_num` int(11) NOT NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `producer` varchar(200) default NULL,
  `purchasing_price` float NOT NULL,
  `remarks` varchar(1000) default NULL,
  `selling_price` float NOT NULL,
  `unit` varchar(10) default NULL,
  `type_id` int(11) default NULL,
  `state` int(11) NOT NULL,
  `last_purchasing_price` float NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FKlxnna5ngumghp4f279mmbjtyo` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', '0001', '175', '1000', '红色装', '陶华碧老干妈香辣脆油辣椒', '贵州省贵阳南明老干妈风味食品有限公司', '6.32', '好卖', '8.5', '瓶', '10', '2', '8.5');
INSERT INTO `t_goods` VALUES ('2', '0002', '132', '400', 'Note8', '华为荣耀Note8', '华为计算机系统有限公司', '1950.05', '热销', '2200', '台', '16', '2', '2220');
INSERT INTO `t_goods` VALUES ('11', '0003', '2897', '400', '500g装', '野生东北黑木耳', '辉南县博康土特产有限公司', '23', '够黑2', '38', '袋', '11', '2', '23');
INSERT INTO `t_goods` VALUES ('12', '0004', '326', '300', '2斤装', '新疆红枣', '沧州铭鑫食品有限公司', '13', '好吃', '25', '袋', '10', '2', '13');
INSERT INTO `t_goods` VALUES ('13', '0005', '53', '1000', '散装500克', '麦片燕麦巧克力', '福建省麦德好食品工业有限公司', '8', 'Goods', '15', '袋', '11', '2', '8');
INSERT INTO `t_goods` VALUES ('14', '0006', '36', '1999', '300g装', '冰糖金桔干', '揭西县同心食品有限公司', '5.1', '', '13', '盒', '11', '2', '5');
INSERT INTO `t_goods` VALUES ('15', '0007', '100651', '400', '500g装', '吉利人家牛肉味蛋糕', '合肥吉利人家食品有限公司', '4.5', 'good', '10', '袋', '11', '2', '4.5');
INSERT INTO `t_goods` VALUES ('16', '0008', '196', '500', '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', '潮州市潮安区正大食品有限公司', '3', '', '10', '盒', '11', '2', '3');
INSERT INTO `t_goods` VALUES ('17', '0009', '365', '1000', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '石家庄博群食品有限公司', '20', '', '33', '袋', '11', '2', '20');
INSERT INTO `t_goods` VALUES ('18', '0010', '10', '300', '250g装', '劲仔小鱼干', '湖南省华文食品有限公司', '12', '', '20', '袋', '11', '2', '12');
INSERT INTO `t_goods` VALUES ('19', '0011', '11', '300', '198g装', '山楂条', '临朐县七贤升利食品厂', '3.2', '', '10', '袋', '11', '0', '3.2');
INSERT INTO `t_goods` VALUES ('20', '0012', '22', '200', '500g装', '大乌梅干', '长春市鼎丰真食品有限责任公司', '20', '', '25', '袋', '11', '0', '20');
INSERT INTO `t_goods` VALUES ('21', '0013', '400', '100', '250g装', '手工制作芝麻香酥麻通', '桂林兰雨食品有限公司', '3', '', '8', '袋', '11', '2', '3');
INSERT INTO `t_goods` VALUES ('22', '0014', '12', '200', '250g装', '美国青豆原味 蒜香', '菲律宾', '5', '', '8', '袋', '11', '2', '5');
INSERT INTO `t_goods` VALUES ('24', '0015', '-3', '100', 'X', ' iPhone X', 'xx2', '8000', 'xxx2', '9500', '台', '16', '2', '8000');
INSERT INTO `t_goods` VALUES ('25', '0016', '0', '12', 'X', '21', '32', '100', '21', '120', '盒', '3', '0', '100');
INSERT INTO `t_goods` VALUES ('26', '0017', '-1', '100', 'ILCE-A6000L', 'Sony/索尼 ILCE-A6000L WIFI微单数码相机高清单电', 'xxx', '3000', 'xxx', '3650', '台', '15', '2', '3000');
INSERT INTO `t_goods` VALUES ('27', '0018', '-1', '400', 'IXUS 285 HS', 'Canon/佳能 IXUS 285 HS 数码相机 2020万像素高清拍摄', 'xx', '800', 'xxx', '1299', '台', '15', '2', '800');
INSERT INTO `t_goods` VALUES ('28', '0019', '0', '300', 'Q8', 'Golden Field/金河田 Q8电脑音响台式多媒体家用音箱低音炮重低音', 'xxxx', '60', '', '129', '台', '17', '0', '60');
INSERT INTO `t_goods` VALUES ('29', '0020', '0', '50', '190WDPT', 'Haier/海尔冰箱BCD-190WDPT双门电冰箱大两门冷藏冷冻', 'cc', '1000', '', '1699', '台', '14', '0', '1000');
INSERT INTO `t_goods` VALUES ('30', '0021', '0', '320', '4A ', 'Xiaomi/小米 小米电视4A 32英寸 智能液晶平板电视机', 'cc', '700', '', '1199', '台', '12', '0', '700');
INSERT INTO `t_goods` VALUES ('31', '0022', '0', '40', 'XQB55-36SP', 'TCL XQB55-36SP 5.5公斤全自动波轮迷你小型洗衣机家用单脱抗菌', 'cc', '400', '', '729', '台', '13', '0', '400');
INSERT INTO `t_goods` VALUES ('32', '0023', '0', '1000', '80g*2', '台湾进口膨化零食品张君雅小妹妹日式串烧丸子80g*2', 'cc', '4', '', '15', '袋', '9', '0', '4');
INSERT INTO `t_goods` VALUES ('33', '0024', '0', '10', 'A字裙', '卓图女装立领针织格子印花拼接高腰A字裙2017秋冬新款碎花连衣裙', 'cc', '168', '', '298', '件', '6', '0', '168');
INSERT INTO `t_goods` VALUES ('34', '0025', '0', '10', '三件套秋', '西服套装男三件套秋季新款商务修身职业正装男士西装新郎结婚礼服', 'cc', '189', '', '299', '件', '7', '0', '189');
INSERT INTO `t_goods` VALUES ('35', '0026', '0', '10', 'AFS JEEP', '加绒加厚正品AFS JEEP/战地吉普男大码长裤植绒保暖男士牛仔裤子', 'c', '60', '', '89', '条', '8', '0', '60');
INSERT INTO `t_goods` VALUES ('36', '0027', '1000', '100', 'KBK01', '可比克薯片', '成都达利食品有限公司', '10', '', '12', '袋', '24', '2', '10');
INSERT INTO `t_goods` VALUES ('37', '0028', '0', '10', 'PC', '电脑', '华硕科技有限公司', '5000', '', '5500', '台', '5', '0', '5000');
INSERT INTO `t_goods` VALUES ('38', '0029', '100', '10', 'PC01', '华硕笔记本', '华硕科技有限公司', '5000', '', '5500', '台', '26', '2', '5000');

-- ----------------------------
-- Table structure for `t_goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `t_goodstype`;
CREATE TABLE `t_goodstype` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `p_id` int(11) default NULL,
  `state` int(11) default NULL,
  `icon` varchar(100) default NULL,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goodstype
-- ----------------------------
INSERT INTO `t_goodstype` VALUES ('1', '所有类别', '-1', '1', 'icon-folderOpen', null);
INSERT INTO `t_goodstype` VALUES ('2', '服饰', '1', '1', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('3', '食品', '1', '1', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('4', '家电', '1', '1', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('5', '数码', '1', '1', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('6', '连衣裙', '2', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('7', '男士西装', '2', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('8', '牛仔裤', '2', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('9', '进口食品', '3', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('10', '地方特产', '3', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('11', '休闲食品', '3', '1', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('12', '电视机', '4', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('13', '洗衣机', '4', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('14', '冰箱', '4', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('15', '相机', '5', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('16', '手机', '5', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('17', '音箱', '5', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('26', '电脑', '5', '0', 'icon-folder', null);
INSERT INTO `t_goodstype` VALUES ('24', '零食', '11', '0', 'icon-folder', null);

-- ----------------------------
-- Table structure for `t_goodsunit`
-- ----------------------------
DROP TABLE IF EXISTS `t_goodsunit`;
CREATE TABLE `t_goodsunit` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goodsunit
-- ----------------------------
INSERT INTO `t_goodsunit` VALUES ('1', '个');
INSERT INTO `t_goodsunit` VALUES ('2', '袋');
INSERT INTO `t_goodsunit` VALUES ('3', '盒');
INSERT INTO `t_goodsunit` VALUES ('4', '箱');
INSERT INTO `t_goodsunit` VALUES ('5', '台');
INSERT INTO `t_goodsunit` VALUES ('6', '包');
INSERT INTO `t_goodsunit` VALUES ('11', '件');
INSERT INTO `t_goodsunit` VALUES ('12', '条');

-- ----------------------------
-- Table structure for `t_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(1000) default NULL,
  `time` datetime default NULL,
  `type` varchar(100) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKbvn5yabu3vqwvtjoh32i9r4ip` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5487 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('5478', '查询商品库存信息', '2019-04-11 00:48:21', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5479', '查询商品类别信息', '2019-04-11 00:59:11', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5480', '查询商品信息', '2019-04-11 00:59:35', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5481', '查询商品单位信息', '2019-04-11 00:59:35', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5482', '查询商品类别信息', '2019-04-11 00:59:36', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5483', '查询商品信息', '2019-04-11 00:59:36', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5484', '查询商品单位信息', '2019-04-11 00:59:36', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5485', '查询商品信息', '2019-04-11 01:00:23', '查询操作', '1');
INSERT INTO `t_log` VALUES ('5486', '查询商品库存信息', '2019-04-11 01:01:23', '查询操作', '1');

-- ----------------------------
-- Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL auto_increment,
  `icon` varchar(100) default NULL,
  `name` varchar(50) default NULL,
  `state` int(11) default NULL,
  `url` varchar(200) default NULL,
  `p_id` int(11) default NULL,
  `pid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKsni20f28wjqrmpp44uawa2ky4` (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6051 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', 'menu-plugin', '系统菜单', '1', null, '-1', null);
INSERT INTO `t_menu` VALUES ('10', 'menu-1', '进货管理', '1', null, '1', null);
INSERT INTO `t_menu` VALUES ('20', 'menu-2', '销售管理', '1', null, '1', null);
INSERT INTO `t_menu` VALUES ('30', 'menu-3', '库存管理', '1', null, '1', null);
INSERT INTO `t_menu` VALUES ('40', 'menu-4', '统计报表', '1', null, '1', null);
INSERT INTO `t_menu` VALUES ('50', 'menu-5', '基础资料', '1', null, '1', null);
INSERT INTO `t_menu` VALUES ('60', 'menu-6', '系统管理', '1', null, '1', null);
INSERT INTO `t_menu` VALUES ('1010', 'menu-11', '进货入库', '0', '/purchase/purchase.html', '10', null);
INSERT INTO `t_menu` VALUES ('1020', 'menu-12', '退货出库', '0', '/purchase/return.html', '10', null);
INSERT INTO `t_menu` VALUES ('1030', 'menu-13', '进货单据查询', '0', '/purchase/purchaseSearch.html', '10', null);
INSERT INTO `t_menu` VALUES ('1040', 'menu-14', '退货单据查询', '0', '/purchase/returnSearch.html', '10', null);
INSERT INTO `t_menu` VALUES ('1050', 'menu-15', '当前库存查询', '0', '/common/stockSearch.html', '10', null);
INSERT INTO `t_menu` VALUES ('2010', 'menu-21', '销售出库', '0', '/sale/saleout.html', '20', null);
INSERT INTO `t_menu` VALUES ('2020', 'menu-22', '客户退货', '0', '/sale/salereturn.html', '20', null);
INSERT INTO `t_menu` VALUES ('2030', 'menu-23', '销售单据查询', '0', '/sale/saleSearch.html', '20', null);
INSERT INTO `t_menu` VALUES ('2040', 'menu-24', '客户退货查询', '0', '/sale/returnSearch.html', '20', null);
INSERT INTO `t_menu` VALUES ('2050', 'menu-25', '当前库存查询', '0', '/common/stockSearch.html', '20', null);
INSERT INTO `t_menu` VALUES ('3010', 'menu-31', '商品报损', '0', '/stock/damage.html', '30', null);
INSERT INTO `t_menu` VALUES ('3020', 'menu-32', '商品报溢', '0', '/stock/overflow.html', '30', null);
INSERT INTO `t_menu` VALUES ('3030', 'menu-33', '库存报警', '0', '/stock/alarm.html', '30', null);
INSERT INTO `t_menu` VALUES ('3040', 'menu-34', '报损报溢查询', '0', '/stock/damageOverflowSearch.html', '30', null);
INSERT INTO `t_menu` VALUES ('3050', 'menu-35', '当前库存查询', '0', '/common/stockSearch.html', '30', null);
INSERT INTO `t_menu` VALUES ('4010', 'menu-41', '供应商统计', '0', '/count/supplier.html', '40', null);
INSERT INTO `t_menu` VALUES ('4020', 'menu-42', '客户统计', '0', '/count/customer.html', '40', null);
INSERT INTO `t_menu` VALUES ('4030', 'menu-43', '商品采购统计', '0', '/count/purchase.html', '40', null);
INSERT INTO `t_menu` VALUES ('4040', 'menu-44', '商品销售统计', '0', '/count/sale.html', '40', null);
INSERT INTO `t_menu` VALUES ('4050', 'menu-45', '按日统计分析', '0', '/count/saleDay.html', '40', null);
INSERT INTO `t_menu` VALUES ('4060', 'menu-46', '按月统计分析', '0', '/count/saleMonth.html', '40', null);
INSERT INTO `t_menu` VALUES ('5010', 'menu-51', '供应商管理', '0', '/basicData/supplier.html', '50', null);
INSERT INTO `t_menu` VALUES ('5020', 'menu-52', '客户管理', '0', '/basicData/customer.html', '50', null);
INSERT INTO `t_menu` VALUES ('5030', 'menu-53', '商品管理', '0', '/basicData/goods.html', '50', null);
INSERT INTO `t_menu` VALUES ('5040', 'menu-54', '期初库存', '0', '/basicData/stock.html', '50', null);
INSERT INTO `t_menu` VALUES ('6010', 'menu-61', '角色管理', '0', '/power/role.html', '60', null);
INSERT INTO `t_menu` VALUES ('6020', 'menu-62', '用户管理', '0', '/power/user.html', '60', null);
INSERT INTO `t_menu` VALUES ('6030', 'menu-65', '系统日志', '0', '/power/log.html', '60', null);
INSERT INTO `t_menu` VALUES ('6040', 'menu-63', '修改密码', '0', null, '60', null);
INSERT INTO `t_menu` VALUES ('6050', 'menu-64', '安全退出', '0', null, '60', null);

-- ----------------------------
-- Table structure for `t_overflow_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_overflow_list`;
CREATE TABLE `t_overflow_list` (
  `id` int(11) NOT NULL auto_increment,
  `overflow_date` datetime default NULL,
  `overflow_number` varchar(100) default NULL,
  `remarks` varchar(1000) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK3bu8hj2xniqwbrtg6ls6b8ej2` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_overflow_list
-- ----------------------------
INSERT INTO `t_overflow_list` VALUES ('3', '2017-10-27 00:00:00', 'BY201710270001', 'dd', '1');
INSERT INTO `t_overflow_list` VALUES ('4', '2017-10-27 00:00:00', 'BY201710270002', 'ccc', '1');

-- ----------------------------
-- Table structure for `t_overflow_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_overflow_list_goods`;
CREATE TABLE `t_overflow_list_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `unit` varchar(10) default NULL,
  `overflow_list_id` int(11) default NULL,
  `type_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKd3s9761mgl456tn2xb0d164h7` (`overflow_list_id`),
  KEY `FK8t46iik5kpciki8fnqtiuq5q3` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_overflow_list_goods
-- ----------------------------
INSERT INTO `t_overflow_list_goods` VALUES ('4', '0002', 'Note8', '华为荣耀Note8', '2', '2220', '4440', '台', '3', '16', '2');
INSERT INTO `t_overflow_list_goods` VALUES ('5', '0006', '300g装', '冰糖金桔干', '3', '5', '15', '盒', '3', '11', '14');
INSERT INTO `t_overflow_list_goods` VALUES ('6', '0004', '2斤装', '新疆红枣', '2', '13', '26', '袋', '4', '10', '12');
INSERT INTO `t_overflow_list_goods` VALUES ('7', '0006', '300g装', '冰糖金桔干', '3', '5', '15', '盒', '4', '11', '14');

-- ----------------------------
-- Table structure for `t_purchase_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_list`;
CREATE TABLE `t_purchase_list` (
  `id` int(11) NOT NULL auto_increment,
  `amount_paid` float NOT NULL,
  `amount_payable` float NOT NULL,
  `purchase_date` datetime default NULL,
  `remarks` varchar(1000) default NULL,
  `state` int(11) NOT NULL,
  `purchase_number` varchar(100) default NULL,
  `supplier_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK5j2dev8b2b5d0l69nb8vtr4yb` (`supplier_id`),
  KEY `FK69s6eyxr4wwvsywe9hbthef1h` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_list
-- ----------------------------
INSERT INTO `t_purchase_list` VALUES ('25', '73299', '73299', '2017-10-27 00:00:00', 'cc', '1', 'JH201710270001', '2', '1');
INSERT INTO `t_purchase_list` VALUES ('26', '69099', '69099', '2017-10-28 00:00:00', 'cc', '1', 'JH201710280001', '2', '1');
INSERT INTO `t_purchase_list` VALUES ('28', '17', '17', '2017-10-31 00:00:00', 'cc', '1', 'JH201710310001', '5', '1');
INSERT INTO `t_purchase_list` VALUES ('29', '463', '463', '2017-11-03 00:00:00', 'cc', '1', 'JH201711030001', '1', '1');
INSERT INTO `t_purchase_list` VALUES ('30', '1240', '1240', '2017-11-03 00:00:00', 'cc', '1', 'JH201711030002', '1', '1');
INSERT INTO `t_purchase_list` VALUES ('31', '450', '450', '2017-11-03 00:00:00', 'ccc', '1', 'JH201711030003', '2', '1');
INSERT INTO `t_purchase_list` VALUES ('32', '10000', '10000', '2019-03-09 00:00:00', '', '1', 'JH201903090001', '15', '1');
INSERT INTO `t_purchase_list` VALUES ('33', '500000', '500000', '2019-03-13 00:00:00', '', '1', 'JH201903130001', '16', '1');

-- ----------------------------
-- Table structure for `t_purchase_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_list_goods`;
CREATE TABLE `t_purchase_list_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `unit` varchar(10) default NULL,
  `purchase_list_id` int(11) default NULL,
  `type_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKfvdvgcebqkkokyn0o00idqnpy` (`purchase_list_id`),
  KEY `FK83ikbi2x3epn49fwcco8jlfwu` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_list_goods
-- ----------------------------
INSERT INTO `t_purchase_list_goods` VALUES ('35', '0002', 'Note8', '华为荣耀Note8', '33', '2220', '73260', '台', '25', '16', '2');
INSERT INTO `t_purchase_list_goods` VALUES ('36', '0004', '2斤装', '新疆红枣', '3', '13', '39', '袋', '25', '10', '12');
INSERT INTO `t_purchase_list_goods` VALUES ('37', '0003', '500g装', '野生东北黑木耳', '3000', '23', '69000', '袋', '26', '11', '11');
INSERT INTO `t_purchase_list_goods` VALUES ('38', '0007', '500g装', '吉利人家牛肉味蛋糕', '22', '4.5', '99', '袋', '26', '11', '15');
INSERT INTO `t_purchase_list_goods` VALUES ('41', '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', '2', '8.5', '17', '瓶', '28', '10', '1');
INSERT INTO `t_purchase_list_goods` VALUES ('42', '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', '4', '8.5', '34', '瓶', '29', '10', '1');
INSERT INTO `t_purchase_list_goods` VALUES ('43', '0004', '2斤装', '新疆红枣', '33', '13', '429', '袋', '29', '10', '12');
INSERT INTO `t_purchase_list_goods` VALUES ('44', '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', '100', '8.5', '850', '瓶', '30', '10', '1');
INSERT INTO `t_purchase_list_goods` VALUES ('45', '0004', '2斤装', '新疆红枣', '30', '13', '390', '袋', '30', '10', '12');
INSERT INTO `t_purchase_list_goods` VALUES ('46', '0015', 'X', ' iPhone X', '30', '0', '0', '台', '30', '16', '24');
INSERT INTO `t_purchase_list_goods` VALUES ('47', '0007', '500g装', '吉利人家牛肉味蛋糕', '100', '4.5', '450', '袋', '31', '11', '15');
INSERT INTO `t_purchase_list_goods` VALUES ('48', '0027', 'KBK01', '可比克薯片', '1000', '10', '10000', '袋', '32', '24', '36');
INSERT INTO `t_purchase_list_goods` VALUES ('49', '0029', 'PC01', '华硕笔记本', '100', '5000', '500000', '台', '33', '26', '38');

-- ----------------------------
-- Table structure for `t_return_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_return_list`;
CREATE TABLE `t_return_list` (
  `id` int(11) NOT NULL auto_increment,
  `amount_paid` float NOT NULL,
  `amount_payable` float NOT NULL,
  `remarks` varchar(1000) default NULL,
  `return_date` datetime default NULL,
  `return_number` varchar(100) default NULL,
  `state` int(11) NOT NULL,
  `supplier_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK4qxjj8bvj2etne243xluni0vn` (`supplier_id`),
  KEY `FK904juw2v1hm2av0ig26gae9jb` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_return_list
-- ----------------------------
INSERT INTO `t_return_list` VALUES ('4', '4464', '4464', 'cc', '2017-10-27 00:00:00', 'TH201710270001', '1', '2', '1');
INSERT INTO `t_return_list` VALUES ('5', '4440', '4440', 'cc', '2017-11-03 00:00:00', 'TH201711030001', '1', '2', '1');

-- ----------------------------
-- Table structure for `t_return_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_return_list_goods`;
CREATE TABLE `t_return_list_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `unit` varchar(10) default NULL,
  `return_list_id` int(11) default NULL,
  `type_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKemclu281vyvyk063c3foafq1w` (`return_list_id`),
  KEY `FKa1prpd96fcs0x2oe0omny9vio` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_return_list_goods
-- ----------------------------
INSERT INTO `t_return_list_goods` VALUES ('7', '0002', 'Note8', '华为荣耀Note8', '2', '2220', '4440', '台', '4', '16', '2');
INSERT INTO `t_return_list_goods` VALUES ('8', '0005', '散装500克', '麦片燕麦巧克力', '3', '8', '24', '袋', '4', '11', '13');
INSERT INTO `t_return_list_goods` VALUES ('9', '0002', 'Note8', '华为荣耀Note8', '2', '2220', '4440', '台', '5', '16', '2');
INSERT INTO `t_return_list_goods` VALUES ('10', '0015', 'X', ' iPhone X', '3', '0', '0', '台', '5', '16', '24');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL auto_increment,
  `bz` varchar(1000) default NULL,
  `name` varchar(50) default NULL,
  `remarks` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员 最高权限', '管理员', null);
INSERT INTO `t_role` VALUES ('2', '主管', '主管', null);
INSERT INTO `t_role` VALUES ('4', '采购员', '采购员', null);
INSERT INTO `t_role` VALUES ('5', '销售经理', '销售经理', '22');
INSERT INTO `t_role` VALUES ('7', '仓库管理员', '仓库管理员', null);
INSERT INTO `t_role` VALUES ('9', '总经理', '总经理', null);

-- ----------------------------
-- Table structure for `t_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menu_id` int(11) default NULL,
  `role_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKsonb0rbt2u99hbrqqvv3r0wse` (`role_id`),
  KEY `FKhayg4ib6v7h1wyeyxhq6xlddq` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('2', '1', '1');
INSERT INTO `t_role_menu` VALUES ('3', '10', '1');
INSERT INTO `t_role_menu` VALUES ('4', '20', '1');
INSERT INTO `t_role_menu` VALUES ('5', '30', '1');
INSERT INTO `t_role_menu` VALUES ('6', '40', '1');
INSERT INTO `t_role_menu` VALUES ('7', '50', '1');
INSERT INTO `t_role_menu` VALUES ('8', '60', '1');
INSERT INTO `t_role_menu` VALUES ('9', '1010', '1');
INSERT INTO `t_role_menu` VALUES ('10', '1020', '1');
INSERT INTO `t_role_menu` VALUES ('11', '1030', '1');
INSERT INTO `t_role_menu` VALUES ('12', '1040', '1');
INSERT INTO `t_role_menu` VALUES ('13', '1050', '1');
INSERT INTO `t_role_menu` VALUES ('14', '2010', '1');
INSERT INTO `t_role_menu` VALUES ('15', '2020', '1');
INSERT INTO `t_role_menu` VALUES ('16', '2030', '1');
INSERT INTO `t_role_menu` VALUES ('17', '2040', '1');
INSERT INTO `t_role_menu` VALUES ('18', '2050', '1');
INSERT INTO `t_role_menu` VALUES ('19', '3010', '1');
INSERT INTO `t_role_menu` VALUES ('20', '3020', '1');
INSERT INTO `t_role_menu` VALUES ('21', '3030', '1');
INSERT INTO `t_role_menu` VALUES ('22', '3040', '1');
INSERT INTO `t_role_menu` VALUES ('23', '3050', '1');
INSERT INTO `t_role_menu` VALUES ('24', '4010', '1');
INSERT INTO `t_role_menu` VALUES ('25', '4020', '1');
INSERT INTO `t_role_menu` VALUES ('26', '4030', '1');
INSERT INTO `t_role_menu` VALUES ('27', '4040', '1');
INSERT INTO `t_role_menu` VALUES ('28', '4050', '1');
INSERT INTO `t_role_menu` VALUES ('29', '4060', '1');
INSERT INTO `t_role_menu` VALUES ('30', '5010', '1');
INSERT INTO `t_role_menu` VALUES ('31', '5020', '1');
INSERT INTO `t_role_menu` VALUES ('32', '5030', '1');
INSERT INTO `t_role_menu` VALUES ('33', '5040', '1');
INSERT INTO `t_role_menu` VALUES ('34', '6010', '1');
INSERT INTO `t_role_menu` VALUES ('35', '6020', '1');
INSERT INTO `t_role_menu` VALUES ('36', '10', '2');
INSERT INTO `t_role_menu` VALUES ('37', '1010', '2');
INSERT INTO `t_role_menu` VALUES ('38', '1020', '2');
INSERT INTO `t_role_menu` VALUES ('39', '1030', '2');
INSERT INTO `t_role_menu` VALUES ('40', '1040', '2');
INSERT INTO `t_role_menu` VALUES ('41', '1050', '2');
INSERT INTO `t_role_menu` VALUES ('42', '1', '2');
INSERT INTO `t_role_menu` VALUES ('43', '6030', '1');
INSERT INTO `t_role_menu` VALUES ('44', '6040', '1');
INSERT INTO `t_role_menu` VALUES ('45', '1', '4');
INSERT INTO `t_role_menu` VALUES ('46', '20', '4');
INSERT INTO `t_role_menu` VALUES ('47', '2010', '4');
INSERT INTO `t_role_menu` VALUES ('48', '1', '5');
INSERT INTO `t_role_menu` VALUES ('49', '30', '5');
INSERT INTO `t_role_menu` VALUES ('50', '3010', '5');
INSERT INTO `t_role_menu` VALUES ('55', '1', '9');
INSERT INTO `t_role_menu` VALUES ('56', '30', '9');
INSERT INTO `t_role_menu` VALUES ('57', '3040', '9');
INSERT INTO `t_role_menu` VALUES ('58', '3050', '9');
INSERT INTO `t_role_menu` VALUES ('59', '50', '9');
INSERT INTO `t_role_menu` VALUES ('60', '5010', '9');
INSERT INTO `t_role_menu` VALUES ('61', '5020', '9');
INSERT INTO `t_role_menu` VALUES ('62', '5030', '9');
INSERT INTO `t_role_menu` VALUES ('63', '5040', '9');
INSERT INTO `t_role_menu` VALUES ('64', '6050', '1');
INSERT INTO `t_role_menu` VALUES ('65', '1', '7');
INSERT INTO `t_role_menu` VALUES ('66', '10', '7');
INSERT INTO `t_role_menu` VALUES ('67', '1010', '7');
INSERT INTO `t_role_menu` VALUES ('68', '1020', '7');
INSERT INTO `t_role_menu` VALUES ('69', '1030', '7');
INSERT INTO `t_role_menu` VALUES ('70', '1040', '7');
INSERT INTO `t_role_menu` VALUES ('71', '1050', '7');
INSERT INTO `t_role_menu` VALUES ('72', '20', '7');
INSERT INTO `t_role_menu` VALUES ('73', '2010', '7');
INSERT INTO `t_role_menu` VALUES ('74', '2020', '7');
INSERT INTO `t_role_menu` VALUES ('75', '2030', '7');
INSERT INTO `t_role_menu` VALUES ('76', '40', '7');
INSERT INTO `t_role_menu` VALUES ('77', '4010', '7');
INSERT INTO `t_role_menu` VALUES ('78', '4020', '7');

-- ----------------------------
-- Table structure for `t_sale_list`
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_list`;
CREATE TABLE `t_sale_list` (
  `id` int(11) NOT NULL auto_increment,
  `amount_paid` float NOT NULL,
  `amount_payable` float NOT NULL,
  `remarks` varchar(1000) default NULL,
  `sale_date` datetime default NULL,
  `sale_number` varchar(100) default NULL,
  `state` int(11) default NULL,
  `user_id` int(11) default NULL,
  `customer_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK34bnujemrdqimbhg133enp8k8` (`user_id`),
  KEY `FKox4qfs87eu3fvwdmrvelqhi8e` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale_list
-- ----------------------------
INSERT INTO `t_sale_list` VALUES ('4', '5060', '5060', 'cc', '2017-01-27 00:00:00', 'XS201701270001', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('6', '4889', '4889', 'dd', '2017-02-28 00:00:00', 'XS201702280002', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('7', '4400', '4400', 'cccc', '2017-03-30 00:00:00', 'XS201703300001', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('8', '860', '860', 'cc', '2017-04-30 00:00:00', 'XS201704300002', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('11', '83', '83', 'ccc', '2017-05-01 00:00:00', 'XS201705100003', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('12', '6626', '6626', 'cccc', '2017-06-03 00:00:00', 'XS201706300001', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('13', '76', '76', 'cc', '2017-06-03 00:00:00', 'XS201706300002', '1', '1', '1');
INSERT INTO `t_sale_list` VALUES ('14', '127', '127', 'cc', '2017-07-03 00:00:00', 'XS201707300003', '2', '1', '2');
INSERT INTO `t_sale_list` VALUES ('15', '1579.5', '1579.5', 'cc', '2017-08-03 00:00:00', 'XS201708300004', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('16', '76', '76', 'cc', '2017-09-03 00:00:00', 'XS201709300005', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('17', '111', '111', 'cc', '2017-10-28 00:00:00', 'XS201710280006', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('18', '40', '40', 'cc', '2017-10-29 00:00:00', 'XS201710290007', '1', '1', '1');
INSERT INTO `t_sale_list` VALUES ('19', '45', '45', 'cc', '2017-10-30 00:00:00', 'XS201710300008', '1', '1', '1');
INSERT INTO `t_sale_list` VALUES ('20', '10', '10', 'cc', '2017-10-31 00:00:00', 'XS201710310009', '1', '1', '1');
INSERT INTO `t_sale_list` VALUES ('21', '202', '202', 'cc', '2017-11-01 00:00:00', 'XS201711010010', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('22', '3650', '3650', '11', '2017-11-02 00:00:00', 'XS201711020011', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('23', '20', '20', 'cc', '2017-11-03 00:00:00', 'XS201711030012', '1', '1', '1');
INSERT INTO `t_sale_list` VALUES ('24', '59', '59', 'cc', '2016-12-03 00:00:00', 'XS201712030013', '1', '1', '2');
INSERT INTO `t_sale_list` VALUES ('25', '146', '146', 'cc', '2016-11-03 00:00:00', 'XS201711030014', '1', '1', '1');
INSERT INTO `t_sale_list` VALUES ('26', '22000', '22000', '', '2019-04-11 00:00:00', 'XS201904110001', '1', '1', '4');

-- ----------------------------
-- Table structure for `t_sale_list_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_list_goods`;
CREATE TABLE `t_sale_list_goods` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `num` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `unit` varchar(10) default NULL,
  `sale_list_id` int(11) default NULL,
  `type_id` int(11) default NULL,
  `goods_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK20ehd6ta9geyql4hxtdsnhbox` (`sale_list_id`),
  KEY `FKn9i5p1d8f0gek5x7q45cq8ibw` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale_list_goods
-- ----------------------------
INSERT INTO `t_sale_list_goods` VALUES ('7', '0002', 'Note8', '华为荣耀Note8', '2', '2200', '4400', '台', '4', '16', '2');
INSERT INTO `t_sale_list_goods` VALUES ('8', '0010', '250g装', '劲仔小鱼干', '33', '20', '660', '袋', '4', '11', '18');
INSERT INTO `t_sale_list_goods` VALUES ('11', '0003', '500g装', '野生东北黑木耳', '100', '38', '3800', '袋', '6', '11', '11');
INSERT INTO `t_sale_list_goods` VALUES ('12', '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '33', '33', '1089', '袋', '6', '11', '17');
INSERT INTO `t_sale_list_goods` VALUES ('13', '0002', 'Note8', '华为荣耀Note8', '2', '2200', '4400', '台', '7', '16', '2');
INSERT INTO `t_sale_list_goods` VALUES ('14', '0003', '500g装', '野生东北黑木耳', '22', '38', '836', '袋', '8', '11', '11');
INSERT INTO `t_sale_list_goods` VALUES ('15', '0014', '250g装', '美国青豆原味 蒜香', '3', '8', '24', '袋', '8', '11', '22');
INSERT INTO `t_sale_list_goods` VALUES ('20', '0003', '500g装', '野生东北黑木耳', '1', '38', '38', '袋', '11', '11', '11');
INSERT INTO `t_sale_list_goods` VALUES ('21', '0005', '散装500克', '麦片燕麦巧克力', '3', '15', '45', '袋', '11', '11', '13');
INSERT INTO `t_sale_list_goods` VALUES ('22', '0002', 'Note8', '华为荣耀Note8', '3', '2200', '6600', '台', '12', '16', '2');
INSERT INTO `t_sale_list_goods` VALUES ('23', '0006', '300g装', '冰糖金桔干', '2', '13', '26', '盒', '12', '11', '14');
INSERT INTO `t_sale_list_goods` VALUES ('24', '0003', '500g装', '野生东北黑木耳', '2', '38', '76', '袋', '13', '11', '11');
INSERT INTO `t_sale_list_goods` VALUES ('25', '0004', '2斤装', '新疆红枣', '3', '25', '75', '袋', '14', '10', '12');
INSERT INTO `t_sale_list_goods` VALUES ('26', '0006', '300g装', '冰糖金桔干', '4', '13', '52', '盒', '14', '11', '14');
INSERT INTO `t_sale_list_goods` VALUES ('27', '0001', '红色装', '陶华碧老干妈香辣脆油辣椒', '33', '8.5', '280.5', '瓶', '15', '10', '1');
INSERT INTO `t_sale_list_goods` VALUES ('28', '0018', 'IXUS 285 HS', 'Canon/佳能 IXUS 285 HS 数码相机 2020万像素高清拍摄', '1', '1299', '1299', '台', '15', '15', '27');
INSERT INTO `t_sale_list_goods` VALUES ('29', '0003', '500g装', '野生东北黑木耳', '2', '38', '76', '袋', '16', '11', '11');
INSERT INTO `t_sale_list_goods` VALUES ('30', '0005', '散装500克', '麦片燕麦巧克力', '3', '15', '45', '袋', '17', '11', '13');
INSERT INTO `t_sale_list_goods` VALUES ('31', '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '2', '33', '66', '袋', '17', '11', '17');
INSERT INTO `t_sale_list_goods` VALUES ('32', '0010', '250g装', '劲仔小鱼干', '1', '20', '20', '袋', '18', '11', '18');
INSERT INTO `t_sale_list_goods` VALUES ('33', '0008', '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', '2', '10', '20', '盒', '18', '11', '16');
INSERT INTO `t_sale_list_goods` VALUES ('34', '0004', '2斤装', '新疆红枣', '1', '25', '25', '袋', '19', '10', '12');
INSERT INTO `t_sale_list_goods` VALUES ('35', '0008', '128g装', '奕森奶油桃肉蜜饯果脯果干桃肉干休闲零食品', '2', '10', '20', '盒', '19', '11', '16');
INSERT INTO `t_sale_list_goods` VALUES ('36', '0007', '500g装', '吉利人家牛肉味蛋糕', '1', '10', '10', '袋', '20', '11', '15');
INSERT INTO `t_sale_list_goods` VALUES ('37', '0003', '500g装', '野生东北黑木耳', '2', '38', '76', '袋', '21', '11', '11');
INSERT INTO `t_sale_list_goods` VALUES ('38', '0007', '500g装', '吉利人家牛肉味蛋糕', '2', '10', '20', '袋', '21', '11', '15');
INSERT INTO `t_sale_list_goods` VALUES ('39', '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '2', '33', '66', '袋', '21', '11', '17');
INSERT INTO `t_sale_list_goods` VALUES ('40', '0010', '250g装', '劲仔小鱼干', '2', '20', '40', '袋', '21', '11', '18');
INSERT INTO `t_sale_list_goods` VALUES ('41', '0017', 'ILCE-A6000L', 'Sony/索尼 ILCE-A6000L WIFI微单数码相机高清单电', '1', '3650', '3650', '台', '22', '15', '26');
INSERT INTO `t_sale_list_goods` VALUES ('42', '0010', '250g装', '劲仔小鱼干', '1', '20', '20', '袋', '23', '11', '18');
INSERT INTO `t_sale_list_goods` VALUES ('43', '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '1', '33', '33', '袋', '24', '11', '17');
INSERT INTO `t_sale_list_goods` VALUES ('44', '0006', '300g装', '冰糖金桔干', '2', '13', '26', '盒', '24', '11', '14');
INSERT INTO `t_sale_list_goods` VALUES ('45', '0009', '240g装', '休闲零食坚果特产精品干果无漂白大个开心果', '2', '33', '66', '袋', '25', '11', '17');
INSERT INTO `t_sale_list_goods` VALUES ('46', '0014', '250g装', '美国青豆原味 蒜香', '10', '8', '80', '袋', '25', '11', '22');
INSERT INTO `t_sale_list_goods` VALUES ('47', '0002', 'Note8', '华为荣耀Note8', '10', '2200', '22000', '台', '26', '16', '2');

-- ----------------------------
-- Table structure for `t_supplier`
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `id` int(11) NOT NULL auto_increment,
  `address` varchar(300) default NULL,
  `contact` varchar(50) default NULL,
  `name` varchar(200) default NULL,
  `number` varchar(50) default NULL,
  `remarks` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES ('1', '上海市金山区张堰镇松金公路2072号6607室', '小张', '上海福桂食品有限公司', '0773-7217175', '失信供应商');
INSERT INTO `t_supplier` VALUES ('2', '安徽省合肥市肥西县桃花工业园合派路', '小王', '安徽麦堡食品工业有限公司', '0773-7217275', null);
INSERT INTO `t_supplier` VALUES ('3', '晋江市罗山后林西区41号', '小李', '福建省晋江市罗山惠康食品有限公司', '1273-1217175', '优质供应商');
INSERT INTO `t_supplier` VALUES ('4', '南京市江宁区科学园竹山路565号1幢', '小丽', '南京含羞草食品有限公司', '2121-7217175', null);
INSERT INTO `t_supplier` VALUES ('5', '南京市高淳县阳江镇新桥村下桥278号', '王大狗', '南京禾乃美工贸有限公司', '2133-7217125', null);
INSERT INTO `t_supplier` VALUES ('6', '开平市水口镇东埠路６号', '小七', '开平广合腐乳有限公司', '3332-7217175', '2');
INSERT INTO `t_supplier` VALUES ('7', '汕头市跃进路２３号利鸿基中心大厦写字楼２座', '刘钩子', '汕头市金茂食品有限公司', '0723-7232175', null);
INSERT INTO `t_supplier` VALUES ('8', '南京市溧水区经济开发区', '七枷社', '南京喜之郎食品有限公司', '1773-7217175', null);
INSERT INTO `t_supplier` VALUES ('9', '深圳市罗湖区翠竹北路中深石化区厂房B栋6楼', '小蔡', '深圳昌信实业有限公司', '1773-7217175', null);
INSERT INTO `t_supplier` VALUES ('10', '南京市下关区金陵小区6村27-2-203室', '小路', '南京市下关区红鹰调味品商行', '2132-7217175', null);
INSERT INTO `t_supplier` VALUES ('11', '荔浦县荔塔路１６－３６号', '亲亲', '桂林阜康食品工业有限公司', '2123-7217175', null);
INSERT INTO `t_supplier` VALUES ('12', '南京鼓楼区世纪大楼123号', '小二', '南京大王科技', '0112-1426789', '123');
INSERT INTO `t_supplier` VALUES ('13', '南京将军路800号', '小吴', '南京大陆食品公司', '1243-2135487', 'cc');
INSERT INTO `t_supplier` VALUES ('15', '成都市新城区斑竹园政新斑公路旁', '小明', '成都达利食品有限公司', '0595-87335077', '具体生产地址以生产日期旁边的首字母为准');
INSERT INTO `t_supplier` VALUES ('16', '北京', '华硕', '华硕科技有限公司', '12346789', '');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `bz` varchar(1000) default NULL,
  `password` varchar(50) default NULL,
  `true_name` varchar(50) default NULL,
  `user_name` varchar(50) default NULL,
  `remarks` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '管理员', '1', '王大陆', 'admin', null);
INSERT INTO `t_user` VALUES ('2', '主管', '123', '王大锤', 'jack', '2');
INSERT INTO `t_user` VALUES ('3', '销售经理', '123', '玛丽', 'marry', '33');

-- ----------------------------
-- Table structure for `t_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL auto_increment,
  `role_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKa9c8iiy6ut0gnx491fqx4pxam` (`role_id`),
  KEY `FKq5un6x7ecoef5w1n39cop66kl` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('19', '2', '2');
INSERT INTO `t_user_role` VALUES ('20', '4', '2');
INSERT INTO `t_user_role` VALUES ('21', '5', '2');
INSERT INTO `t_user_role` VALUES ('28', '2', '3');
INSERT INTO `t_user_role` VALUES ('29', '4', '3');
INSERT INTO `t_user_role` VALUES ('30', '5', '3');
INSERT INTO `t_user_role` VALUES ('31', '7', '3');
