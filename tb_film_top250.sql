/*
Navicat MySQL Data Transfer

Source Server         : java
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2020-06-23 13:58:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_film_top250
-- ----------------------------
DROP TABLE IF EXISTS `tb_film_top250`;
CREATE TABLE `tb_film_top250` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `filmname` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `showtime` int(10) DEFAULT NULL,
  `genres` varchar(20) DEFAULT NULL,
  `areas` varchar(20) DEFAULT NULL,
  `directors` varchar(255) DEFAULT NULL,
  `scriptwriters` varchar(255) DEFAULT NULL,
  `actors` varchar(255) DEFAULT NULL,
  `comments` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_film_top250
-- ----------------------------
INSERT INTO `tb_film_top250` VALUES ('1', 'https://movie.douban.com/subject/1292052/', '肖申克的救赎 The Shawshank Redemption', '9.7', '1994', '剧情/犯罪', '美国', '弗兰克·德拉邦特', '弗兰克·德拉邦特/斯蒂芬·金', '蒂姆·罗宾斯/摩根·弗里曼/鲍勃·冈顿', '2038767');
INSERT INTO `tb_film_top250` VALUES ('2', 'https://movie.douban.com/subject/1291546/', '霸王别姬', '9.6', '1993', '剧情/爱情/同性', '中国大陆/中国香港', '陈凯歌', '芦苇/李碧华', '张国荣/张丰毅/巩俐', '1510767');
INSERT INTO `tb_film_top250` VALUES ('3', 'https://movie.douban.com/subject/1292720/', '阿甘正传 Forrest Gump', '9.5', '1994', '剧情/爱情', '美国', '罗伯特·泽米吉斯', '艾瑞克·罗斯/温斯顿·格鲁姆', '汤姆·汉克斯/罗宾·怀特/加里·西尼斯', '1542682');
INSERT INTO `tb_film_top250` VALUES ('4', 'https://movie.douban.com/subject/1295644/', '这个杀手不太冷 Léon', '9.4', '1994', '剧情/动作/犯罪', '法国', '吕克·贝松', '吕克·贝松', '让·雷诺/娜塔莉·波特曼/加里·奥德曼', '1734715');
INSERT INTO `tb_film_top250` VALUES ('5', 'https://movie.douban.com/subject/1292063/', '美丽人生 La vita è bella', '9.5', '1997', '剧情/喜剧/爱情/战争', '意大利', '罗伯托·贝尼尼', '温琴佐·切拉米/罗伯托·贝尼尼', '罗伯托·贝尼尼/尼可莱塔·布拉斯基/乔治·坎塔里尼', '969375');
INSERT INTO `tb_film_top250` VALUES ('6', 'https://movie.douban.com/subject/1292722/', '泰坦尼克号 Titanic', '9.4', '1997', '剧情/爱情/灾难', '美国', '詹姆斯·卡梅隆', '詹姆斯·卡梅隆', '莱昂纳多·迪卡普里奥/凯特·温丝莱特/比利·赞恩', '1493851');
INSERT INTO `tb_film_top250` VALUES ('7', 'https://movie.douban.com/subject/1291561/', '千与千寻 千と千尋の神隠し', '9.4', '2001', '剧情/动画/奇幻', '日本', '宫崎骏', '宫崎骏', '柊瑠美/入野自由/夏木真理', '1598476');
INSERT INTO `tb_film_top250` VALUES ('8', 'https://movie.douban.com/subject/1295124/', '辛德勒的名单 Schindler\'s List', '9.5', '1993', '剧情/历史/战争', '美国', '史蒂文·斯皮尔伯格', '托马斯·肯尼利/斯蒂文·泽里安', '连姆·尼森/本·金斯利/拉尔夫·费因斯', '786319');
INSERT INTO `tb_film_top250` VALUES ('9', 'https://movie.douban.com/subject/3541415/', '盗梦空间 Inception', '9.3', '2010', '剧情/科幻/悬疑/冒险', '美国/英国', '克里斯托弗·诺兰', '克里斯托弗·诺兰', '莱昂纳多·迪卡普里奥/约瑟夫·高登-莱维特/艾伦·佩吉', '1475155');
INSERT INTO `tb_film_top250` VALUES ('10', 'https://movie.douban.com/subject/3011091/', '忠犬八公的故事 Hachi: A Dog\'s Tale', '9.4', '2009', '剧情', '美国/英国', '拉斯·霍尔斯道姆', '斯蒂芬·P·林赛/新藤兼人', '理查·基尔/萨拉·罗默尔/琼·艾伦', '1024806');
INSERT INTO `tb_film_top250` VALUES ('11', 'https://movie.douban.com/subject/1292001/', '海上钢琴师 La leggenda del pianista sull\'oceano', '9.3', '1998', '剧情/音乐', '意大利', '朱塞佩·托纳多雷', '亚利桑德罗·巴里克/朱塞佩·托纳多雷', '蒂姆·罗斯/普路特·泰勒·文斯/比尔·努恩', '1229698');
INSERT INTO `tb_film_top250` VALUES ('12', 'https://movie.douban.com/subject/1292064/', '楚门的世界 The Truman Show', '9.3', '1998', '剧情/科幻', '美国', '彼得·威尔', '安德鲁·尼科尔', '金·凯瑞/劳拉·琳妮/艾德·哈里斯', '1099046');
INSERT INTO `tb_film_top250` VALUES ('13', 'https://movie.douban.com/subject/3793023/', '三傻大闹宝莱坞 3 Idiots', '9.2', '2009', '剧情/喜剧/爱情/歌舞', '印度', '拉吉库马尔·希拉尼', '维德胡·维诺德·乔普拉/拉吉库马尔·希拉尼/阿希贾特·乔希', '阿米尔·汗/卡琳娜·卡普尔/马达范', '1367631');
INSERT INTO `tb_film_top250` VALUES ('14', 'https://movie.douban.com/subject/2131459/', '机器人总动员 WALL·E', '9.3', '2008', '科幻/动画/冒险', '美国', '安德鲁·斯坦顿', '安德鲁·斯坦顿/吉姆·里尔顿/彼特·道格特', '本·贝尔特/艾丽莎·奈特/杰夫·格尔林', '971521');
INSERT INTO `tb_film_top250` VALUES ('15', 'https://movie.douban.com/subject/1291549/', '放牛班的春天 Les choristes', '9.3', '2004', '剧情/音乐', '法国/瑞士/德国', '克里斯托夫·巴拉蒂', '乔治·沙普罗/勒·惠勒/诺埃-诺尔', '热拉尔·朱尼奥/弗朗索瓦·贝莱昂/凯德·麦拉德', '951581');
INSERT INTO `tb_film_top250` VALUES ('16', 'https://movie.douban.com/subject/1889243/', '星际穿越 Interstellar', '9.3', '2014', '剧情/科幻/冒险', '美国/英国/加拿大/冰岛', '克里斯托弗·诺兰', '乔纳森·诺兰/克里斯托弗·诺兰', '马修·麦康纳/安妮·海瑟薇/杰西卡·查斯坦', '1101766');
INSERT INTO `tb_film_top250` VALUES ('17', 'https://movie.douban.com/subject/1292213/', '大话西游之大圣娶亲 西遊記大結局之仙履奇緣', '9.2', '1995', '喜剧/爱情/奇幻/古装', '中国香港/中国大陆', '刘镇伟', '刘镇伟', '周星驰/吴孟达/朱茵', '1079927');
INSERT INTO `tb_film_top250` VALUES ('18', 'https://movie.douban.com/subject/5912992/', '熔炉 도가니', '9.3', '2011', '剧情', '韩国', '黄东赫', '黄东赫/孔枝泳', '孔侑/郑有美/金贤秀', '665422');
INSERT INTO `tb_film_top250` VALUES ('19', 'https://movie.douban.com/subject/25662329/', '疯狂动物城 Zootopia', '9.2', '2016', '喜剧/动画/冒险', '美国', '拜伦·霍华德/瑞奇·摩尔/杰拉德·布什', '拜伦·霍华德/瑞奇·摩尔/杰拉德·布什', '金妮弗·古德温/杰森·贝特曼/伊德里斯·艾尔巴', '1289485');
INSERT INTO `tb_film_top250` VALUES ('20', 'https://movie.douban.com/subject/1307914/', '无间道 無間道', '9.2', '2002', '剧情/悬疑/犯罪', '中国香港', '刘伟强/麦兆辉', '麦兆辉/庄文强', '刘德华/梁朝伟/黄秋生', '880254');
INSERT INTO `tb_film_top250` VALUES ('21', 'https://movie.douban.com/subject/1291560/', '龙猫 となりのトトロ', '9.2', '1988', '动画/奇幻/冒险', '日本', '宫崎骏', '宫崎骏', '日高法子/坂本千夏/糸井重里', '914469');
INSERT INTO `tb_film_top250` VALUES ('22', 'https://movie.douban.com/subject/1291841/', '教父 The Godfather', '9.3', '1972', '剧情/犯罪', '美国', '弗朗西斯·福特·科波拉', '马里奥·普佐/弗朗西斯·福特·科波拉', '马龙·白兰度/阿尔·帕西诺/詹姆斯·肯恩', '668393');
INSERT INTO `tb_film_top250` VALUES ('23', 'https://movie.douban.com/subject/1849031/', '当幸福来敲门 The Pursuit of Happyness', '9.1', '2006', '剧情/家庭/传记', '美国', '加布里埃莱·穆奇诺', '斯蒂夫·康拉德', '威尔·史密斯/贾登·史密斯/坦迪·牛顿', '1092107');
INSERT INTO `tb_film_top250` VALUES ('24', 'https://movie.douban.com/subject/3319755/', '怦然心动 Flipped', '9.1', '2010', '剧情/喜剧/爱情', '美国', '罗伯·莱纳', '罗伯·莱纳/安德鲁·沙因曼/文德琳·范·德拉安南', '玛德琳·卡罗尔/卡兰·麦克奥利菲/瑞贝卡·德·莫妮', '1273017');
INSERT INTO `tb_film_top250` VALUES ('25', 'https://movie.douban.com/subject/6786002/', '触不可及 Intouchables', '9.2', '2011', '剧情/喜剧', '法国', '奥利维埃·纳卡什/埃里克·托莱达诺', '奥利维埃·纳卡什/埃里克·托莱达诺', '弗朗索瓦·克鲁塞/奥玛·希/安娜·勒尼', '714567');
INSERT INTO `tb_film_top250` VALUES ('26', 'https://movie.douban.com/subject/1851857/', '蝙蝠侠：黑暗骑士 The Dark Knight', '9.2', '2008', '剧情/动作/科幻/惊悚/犯罪', '美国/英国', '克里斯托弗·诺兰', '乔纳森·诺兰/克里斯托弗·诺兰/大卫·S·高耶', '克里斯蒂安·贝尔/希斯·莱杰/艾伦·艾克哈特', '735805');
INSERT INTO `tb_film_top250` VALUES ('27', 'https://movie.douban.com/subject/1296141/', '控方证人 Witness for the Prosecution', '9.6', '1957', '剧情/悬疑/犯罪', '美国', '比利·怀德', '阿加莎·克里斯蒂/比利·怀德/哈里·库尼兹', '泰隆·鲍华/玛琳·黛德丽/查尔斯·劳顿', '286759');
INSERT INTO `tb_film_top250` VALUES ('28', 'https://movie.douban.com/subject/1292365/', '活着', '9.2', '1994', '剧情/家庭/历史', '中国大陆/中国香港', '张艺谋', '芦苇/余华', '葛优/巩俐/姜武', '572181');
INSERT INTO `tb_film_top250` VALUES ('29', 'https://movie.douban.com/subject/1300267/', '乱世佳人 Gone with the Wind', '9.3', '1939', '剧情/爱情/历史/战争', '美国', '维克多·弗莱明/乔治·库克/山姆·伍德', '玛格丽特·米歇尔/西德尼·霍华德/奥利弗·H·P·加勒特', '费雯·丽/克拉克·盖博/奥利维娅·德哈维兰', '489578');
INSERT INTO `tb_film_top250` VALUES ('30', 'https://movie.douban.com/subject/20495023/', '寻梦环游记 Coco', '9.1', '2017', '喜剧/动画/音乐/奇幻', '美国', '李·昂克里奇/阿德里安·莫利纳', '阿德里安·莫利纳/马修·奥尔德里奇/李·昂克里奇', '安东尼·冈萨雷斯/盖尔·加西亚·贝纳尔/本杰明·布拉特', '1075497');
INSERT INTO `tb_film_top250` VALUES ('31', 'https://movie.douban.com/subject/1293172/', '末代皇帝 The Last Emperor', '9.2', '1987', '剧情/传记/历史', '英国/意大利/中国大陆/法国', '贝纳尔多·贝托鲁奇', '贝纳尔多·贝托鲁奇/马克·派普罗', '尊龙/陈冲/邬君梅', '518357');
INSERT INTO `tb_film_top250` VALUES ('32', 'https://movie.douban.com/subject/26387939/', '摔跤吧！爸爸 Dangal', '9', '2016', '剧情/家庭/传记/运动', '印度', '涅提·蒂瓦里', '比于什·古普塔/施热亚·简/尼基尔·麦罗特拉', '阿米尔·汗/法缇玛·萨那·纱卡/桑亚·玛荷塔', '1119564');
INSERT INTO `tb_film_top250` VALUES ('33', 'https://movie.douban.com/subject/1291552/', '指环王3：王者无敌 The Lord of the Rings: The Return of the King', '9.2', '2003', '剧情/动作/奇幻/冒险', '美国/新西兰', '彼得·杰克逊', '弗兰·威尔士/菲利帕·鲍恩斯/彼得·杰克逊', '伊利亚·伍德/西恩·奥斯汀/维果·莫腾森', '541911');
INSERT INTO `tb_film_top250` VALUES ('34', 'https://movie.douban.com/subject/30170448/', '何以为家 كفرناحوم', '9.1', '2018', '剧情', '黎巴嫩/法国/美国', '娜丁·拉巴基', '娜丁·拉巴基/吉哈德·霍加里/米歇尔·凯斯沃尼', '赞恩·阿尔·拉菲亚/约丹诺斯·希费罗/博鲁瓦蒂夫·特雷杰·班科尔', '658225');
INSERT INTO `tb_film_top250` VALUES ('35', 'https://movie.douban.com/subject/1929463/', '少年派的奇幻漂流 Life of Pi', '9.1', '2012', '剧情/奇幻/冒险', '美国/中国台湾/英国/加拿大', '李安', '扬·马特尔/大卫·麦基', '苏拉·沙玛/伊尔凡·可汗/拉菲·斯波', '1028453');
INSERT INTO `tb_film_top250` VALUES ('36', 'https://movie.douban.com/subject/2129039/', '飞屋环游记 Up', '9', '2009', '剧情/喜剧/动画/冒险', '美国', '彼特·道格特/鲍勃·彼德森', '彼特·道格特/鲍勃·彼德森/汤姆·麦卡锡', '爱德华·阿斯纳/克里斯托弗·普卢默/乔丹·长井', '960106');
INSERT INTO `tb_film_top250` VALUES ('37', 'https://movie.douban.com/subject/1293182/', '十二怒汉 12 Angry Men', '9.4', '1957', '剧情', '美国', '西德尼·吕美特', '雷金纳德·罗斯', '亨利·方达/马丁·鲍尔萨姆/约翰·菲德勒', '326040');
INSERT INTO `tb_film_top250` VALUES ('38', 'https://movie.douban.com/subject/1291858/', '鬼子来了', '9.2', '2000', '剧情/喜剧', '中国大陆', '姜文', '姜文/史建全/述平', '姜文/香川照之/袁丁', '442479');
INSERT INTO `tb_film_top250` VALUES ('39', 'https://movie.douban.com/subject/1291583/', '天空之城 天空の城ラピュタ', '9.1', '1986', '动画/奇幻/冒险', '日本', '宫崎骏', '宫崎骏', '田中真弓/横泽启子/初井言荣', '609288');
INSERT INTO `tb_film_top250` VALUES ('40', 'https://movie.douban.com/subject/21937452/', '素媛 소원', '9.2', '2013', '剧情', '韩国', '李濬益', '金智慧/赵重勋/金成旭', '薛景求/严志媛/李来', '445746');
INSERT INTO `tb_film_top250` VALUES ('41', 'https://movie.douban.com/subject/1308807/', '哈尔的移动城堡 ハウルの動く城', '9.1', '2004', '动画/奇幻/冒险', '日本', '宫崎骏', '宫崎骏/吉田玲子/黛安娜·温恩·琼斯', '倍赏千惠子/木村拓哉/美轮明宏', '700986');
INSERT INTO `tb_film_top250` VALUES ('42', 'https://movie.douban.com/subject/1299398/', '大话西游之月光宝盒 西遊記第壹佰零壹回之月光寶盒', '9', '1995', '喜剧/爱情/奇幻/古装', '中国香港/中国大陆', '刘镇伟', '刘镇伟/吴承恩', '周星驰/吴孟达/罗家英', '865092');
INSERT INTO `tb_film_top250` VALUES ('43', 'https://movie.douban.com/subject/1291828/', '天堂电影院 Nuovo Cinema Paradiso', '9.2', '1988', '剧情/爱情', '意大利/法国', '朱塞佩·托纳多雷', '朱塞佩·托纳多雷/瓦娜·波利/理查德·埃帕卡', '安东内拉·阿蒂利/恩佐·卡拉瓦勒/艾萨·丹尼埃利', '476516');
INSERT INTO `tb_film_top250` VALUES ('44', 'https://movie.douban.com/subject/1293839/', '罗马假日 Roman Holiday', '9', '1953', '剧情/喜剧/爱情', '美国', '威廉·惠勒', '伊安·麦克莱伦·亨特/约翰·戴顿/达尔顿·特朗勃', '奥黛丽·赫本/格利高里·派克/埃迪·艾伯特', '703752');
INSERT INTO `tb_film_top250` VALUES ('45', 'https://movie.douban.com/subject/1298624/', '闻香识女人 Scent of a Woman', '9.1', '1992', '剧情', '美国', '马丁·布莱斯特', '博·古德曼/乔瓦尼·阿尔皮诺', '阿尔·帕西诺/克里斯·奥唐纳/詹姆斯·瑞布霍恩', '612077');
INSERT INTO `tb_film_top250` VALUES ('46', 'https://movie.douban.com/subject/21937445/', '辩护人 변호인', '9.2', '2013', '剧情', '韩国', '杨宇硕', '杨宇硕/尹贤浩', '宋康昊/金英爱/吴达洙', '438283');
INSERT INTO `tb_film_top250` VALUES ('47', 'https://movie.douban.com/subject/1295038/', '哈利·波特与魔法石 Harry Potter and the Sorcerer\'s Stone', '9', '2001', '奇幻/冒险', '美国/英国', '克里斯·哥伦布', '史蒂夫·克洛夫斯/J·K·罗琳', '丹尼尔·雷德克里夫/艾玛·沃森/鲁伯特·格林特', '667256');
INSERT INTO `tb_film_top250` VALUES ('48', 'https://movie.douban.com/subject/26752088/', '我不是药神', '9', '2018', '剧情/喜剧', '中国大陆', '文牧野', '韩家女/钟伟/文牧野', '徐峥/王传君/周一围', '1498984');
INSERT INTO `tb_film_top250` VALUES ('49', 'https://movie.douban.com/subject/1292000/', '搏击俱乐部 Fight Club', '9', '1999', '剧情/动作/悬疑/惊悚', '美国/德国', '大卫·芬奇', '恰克·帕拉尼克/吉姆·乌尔斯', '爱德华·诺顿/布拉德·皮特/海伦娜·伯翰·卡特', '632630');
INSERT INTO `tb_film_top250` VALUES ('50', 'https://movie.douban.com/subject/1291548/', '死亡诗社 Dead Poets Society', '9.1', '1989', '剧情', '美国', '彼得·威尔', '汤姆·舒尔曼', '罗宾·威廉姆斯/罗伯特·肖恩·莱纳德/伊桑·霍克', '500213');
INSERT INTO `tb_film_top250` VALUES ('51', 'https://movie.douban.com/subject/1299131/', '教父2 The Godfather: Part Ⅱ', '9.2', '1974', '剧情/犯罪', '美国', '弗朗西斯·福特·科波拉', '弗朗西斯·福特·科波拉/马里奥·普佐', '阿尔·帕西诺/罗伯特·杜瓦尔/黛安·基顿', '369768');
INSERT INTO `tb_film_top250` VALUES ('52', 'https://movie.douban.com/subject/1291572/', '指环王2：双塔奇兵 The Lord of the Rings: The Two Towers', '9.1', '2002', '剧情/动作/奇幻/冒险', '美国/新西兰', '彼得·杰克逊', '弗兰·威尔士/菲利帕·鲍恩斯/斯蒂芬·辛克莱', '伊利亚·伍德/西恩·奥斯汀/多米尼克·莫纳汉', '495056');
INSERT INTO `tb_film_top250` VALUES ('53', 'https://movie.douban.com/subject/1301753/', '狮子王 The Lion King', '9', '1994', '动画/歌舞/冒险', '美国', '罗杰·阿勒斯/罗伯·明可夫', '艾琳·梅琪/乔纳森·罗伯特 /琳达·伍尔芙顿', '乔纳森·泰勒·托马斯/马修·布罗德里克/杰瑞米·艾恩斯', '574216');
INSERT INTO `tb_film_top250` VALUES ('54', 'https://movie.douban.com/subject/1418019/', '大闹天宫', '9.3', '1961', '动画/奇幻', '中国大陆', '万籁鸣/唐澄', '李克弱/万籁鸣', '邱岳峰/富润生/毕克', '274471');
INSERT INTO `tb_film_top250` VALUES ('55', 'https://movie.douban.com/subject/1900841/', '窃听风暴 Das Leben der Anderen', '9.1', '2006', '剧情/悬疑', '德国', '弗洛里安·亨克尔·冯·多纳斯马尔克', '弗洛里安·亨克尔·冯·多纳斯马尔克', '乌尔里希·穆埃/马蒂娜·格德克/塞巴斯蒂安·科赫', '411337');
INSERT INTO `tb_film_top250` VALUES ('56', 'https://movie.douban.com/subject/1291571/', '指环王1：魔戒再现 The Lord of the Rings: The Fellowship of the Ring', '9', '2001', '剧情/动作/奇幻/冒险', '新西兰/美国', '彼得·杰克逊', '弗兰·威尔士/菲利帕·鲍恩斯/彼得·杰克逊', '伊利亚·伍德/西恩·奥斯汀/伊恩·麦克莱恩', '557149');
INSERT INTO `tb_film_top250` VALUES ('57', 'https://movie.douban.com/subject/1305487/', '猫鼠游戏 Catch Me If You Can', '9', '2002', '剧情/传记/犯罪', '美国/加拿大', '史蒂文·斯皮尔伯格', '杰夫·内桑森', '莱昂纳多·迪卡普里奥/汤姆·汉克斯/克里斯托弗·沃肯', '572281');
INSERT INTO `tb_film_top250` VALUES ('58', 'https://movie.douban.com/subject/1293350/', '两杆大烟枪 Lock, Stock and Two Smoking Barrels', '9.1', '1998', '剧情/喜剧/犯罪', '英国', '盖·里奇', '盖·里奇', '杰森·弗莱明/德克斯特·弗莱彻/尼克·莫兰', '439303');
INSERT INTO `tb_film_top250` VALUES ('59', 'https://movie.douban.com/subject/1306029/', '美丽心灵 A Beautiful Mind', '9', '2001', '剧情/传记', '美国', '朗·霍华德', '阿齐瓦·高斯曼/西尔维娅·纳萨尔', '罗素·克劳/艾德·哈里斯/詹妮弗·康纳利', '542417');
INSERT INTO `tb_film_top250` VALUES ('60', 'https://movie.douban.com/subject/1291818/', '饮食男女 飲食男女', '9.1', '1994', '剧情/家庭', '中国台湾/美国', '李安', '李安/王蕙玲/詹姆斯·夏慕斯', '郎雄/杨贵媚/吴倩莲', '405958');
INSERT INTO `tb_film_top250` VALUES ('61', 'https://movie.douban.com/subject/1296736/', '钢琴家 The Pianist', '9.2', '2002', '剧情/音乐/传记/历史/战争', '法国/德国/英国/波兰', '罗曼·波兰斯基', '罗纳德·哈伍德', '艾德里安·布洛迪/托马斯·克莱舒曼/艾米莉娅·福克斯', '371207');
INSERT INTO `tb_film_top250` VALUES ('62', 'https://movie.douban.com/subject/1291843/', '黑客帝国 The Matrix', '9', '1999', '动作/科幻', '美国/澳大利亚', '莉莉·沃卓斯基/拉娜·沃卓斯基', '莉莉·沃卓斯基/拉娜·沃卓斯基', '基努·里维斯/劳伦斯·菲什伯恩/凯瑞-安·莫斯', '557210');
INSERT INTO `tb_film_top250` VALUES ('63', 'https://movie.douban.com/subject/1292224/', '飞越疯人院 One Flew Over the Cuckoo\'s Nest', '9.1', '1975', '剧情', '美国', '米洛斯·福尔曼', '劳伦斯·奥邦/博·古德曼/肯·凯西', '杰克·尼科尔森/丹尼·德维托/克里斯托弗·洛伊德', '431347');
INSERT INTO `tb_film_top250` VALUES ('64', 'https://movie.douban.com/subject/1309046/', 'V字仇杀队 V for Vendetta', '8.9', '2005', '剧情/动作/科幻/惊悚', '美国/英国/德国', '詹姆斯·麦克特格', '莉莉·沃卓斯基/拉娜·沃卓斯基', '娜塔莉·波特曼/雨果·维文/斯蒂芬·瑞', '760697');
INSERT INTO `tb_film_top250` VALUES ('65', 'https://movie.douban.com/subject/1485260/', '本杰明·巴顿奇事 The Curious Case of Benjamin Button', '8.9', '2008', '剧情/爱情/奇幻', '美国', '大卫·芬奇', '艾瑞克·罗斯/罗宾·史威考德/F·司各特·菲茨杰拉德', '凯特·布兰切特/布拉德·皮特/朱莉娅·奥蒙德', '707986');
INSERT INTO `tb_film_top250` VALUES ('66', 'https://movie.douban.com/subject/26580232/', '看不见的客人 Contratiempo', '8.8', '2016', '剧情/悬疑/惊悚/犯罪', '西班牙', '奥里奥尔·保罗', '奥里奥尔·保罗', '马里奥·卡萨斯/阿娜·瓦格纳/何塞·科罗纳多', '834047');
INSERT INTO `tb_film_top250` VALUES ('67', 'https://movie.douban.com/subject/3742360/', '让子弹飞', '8.8', '2010', '剧情/喜剧/动作/西部', '中国大陆/中国香港', '姜文', '朱苏进/述平/姜文', '姜文/葛优/周润发', '1152294');
INSERT INTO `tb_film_top250` VALUES ('68', 'https://movie.douban.com/subject/1292402/', '西西里的美丽传说 Malèna', '8.9', '2000', '剧情/情色/战争', '意大利/美国', '朱塞佩·托纳多雷', '朱塞佩·托纳多雷/卢恰诺·温琴佐尼', '莫妮卡·贝鲁奇/朱塞佩·苏尔法罗/LucianoFederico', '696493');
INSERT INTO `tb_film_top250` VALUES ('69', 'https://movie.douban.com/subject/1303021/', '小鞋子 بچههای آسمان', '9.2', '1997', '剧情/家庭/儿童', '伊朗', '马基德·马基迪', '马基德·马基迪', '法拉赫阿米尔·哈什米安/默罕默德·阿米尔·纳吉/巴哈丽·西迪奇', '285821');
INSERT INTO `tb_film_top250` VALUES ('70', 'https://movie.douban.com/subject/1292849/', '拯救大兵瑞恩 Saving Private Ryan', '9', '1998', '剧情/历史/战争', '美国', '史蒂文·斯皮尔伯格', '罗伯特·罗达特', '汤姆·汉克斯/汤姆·塞兹摩尔/爱德华·伯恩斯', '458376');
INSERT INTO `tb_film_top250` VALUES ('71', 'https://movie.douban.com/subject/3442220/', '海豚湾 The Cove', '9.3', '2009', '纪录片', '美国', '路易·西霍尤斯', '马克·蒙雷', 'RichardO\'Barry/路易·西霍尤斯/HardyJones', '285281');
INSERT INTO `tb_film_top250` VALUES ('72', 'https://movie.douban.com/subject/1292220/', '情书 Love Letter', '8.9', '1995', '剧情/爱情', '日本', '岩井俊二', '岩井俊二', '中山美穗/丰川悦司/酒井美纪', '650262');
INSERT INTO `tb_film_top250` VALUES ('73', 'https://movie.douban.com/subject/27060077/', '绿皮书 Green Book', '8.9', '2018', '剧情/喜剧/传记', '美国', '彼得·法雷里', '尼克·瓦莱隆加/布莱恩·库瑞/彼得·法雷里', '维果·莫腾森/马赫沙拉·阿里/琳达·卡德里尼', '1078590');
INSERT INTO `tb_film_top250` VALUES ('74', 'https://movie.douban.com/subject/3008247/', '穿条纹睡衣的男孩 The Boy in the Striped Pajamas', '9.1', '2008', '剧情/战争', '英国/美国', '马克·赫尔曼', '约翰·伯恩/马克·赫尔曼', '阿萨·巴特菲尔德/维拉·法米加/卡拉·霍根', '353488');
INSERT INTO `tb_film_top250` VALUES ('75', 'https://movie.douban.com/subject/1294408/', '音乐之声 The Sound of Music', '9', '1965', '剧情/爱情/歌舞/传记', '美国', '罗伯特·怀斯', '乔治·胡达勒克/霍华德·林赛/拉塞尔·克劳斯', '朱莉·安德鲁斯/克里斯托弗·普卢默/埃琳诺·帕克', '426034');
INSERT INTO `tb_film_top250` VALUES ('76', 'https://movie.douban.com/subject/25958717/', '海蒂和爷爷 Heidi', '9.2', '2015', '剧情/家庭/冒险', '德国/瑞士/南非', '阿兰·葛斯彭纳', '约翰娜·施皮里/佩特拉·比翁迪娜·沃尔普', '阿努克·斯特芬/布鲁诺·甘茨/昆林·艾格匹', '273208');
INSERT INTO `tb_film_top250` VALUES ('77', 'https://movie.douban.com/subject/1292262/', '美国往事 Once Upon a Time in America', '9.2', '1984', '剧情/犯罪', '美国/意大利', '赛尔乔·莱昂内', '皮耶罗·德·贝纳迪/莱奥纳多·本韦努蒂/弗兰科·奥卡利', '罗伯特·德尼罗/詹姆斯·伍兹/伊丽莎白·麦戈文', '300854');
INSERT INTO `tb_film_top250` VALUES ('78', 'https://movie.douban.com/subject/1780330/', '致命魔术 The Prestige', '8.9', '2006', '剧情/悬疑/惊悚', '英国/美国', '克里斯托弗·诺兰', '乔纳森·诺兰/克里斯托弗·诺兰/克里斯托弗·普瑞丝特', '休·杰克曼/克里斯蒂安·贝尔/迈克尔·凯恩', '607106');
INSERT INTO `tb_film_top250` VALUES ('79', 'https://movie.douban.com/subject/1291832/', '低俗小说 Pulp Fiction', '8.8', '1994', '剧情/喜剧/犯罪', '美国', '昆汀·塔伦蒂诺', '昆汀·塔伦蒂诺/罗杰·阿夫瑞', '约翰·特拉沃尔塔/乌玛·瑟曼/阿曼达·普拉莫', '599858');
INSERT INTO `tb_film_top250` VALUES ('80', 'https://movie.douban.com/subject/1292223/', '七宗罪 Se7en', '8.8', '1995', '剧情/悬疑/惊悚/犯罪', '美国', '大卫·芬奇', '安德鲁·凯文·沃克', '摩根·弗里曼/布拉德·皮特/凯文·史派西', '702662');
INSERT INTO `tb_film_top250` VALUES ('81', 'https://movie.douban.com/subject/1293544/', '沉默的羔羊 The Silence of the Lambs', '8.8', '1991', '剧情/惊悚/犯罪', '美国', '乔纳森·戴米', '托马斯·哈里斯/泰德·塔里', '朱迪·福斯特/安东尼·霍普金斯/斯科特·格伦', '600546');
INSERT INTO `tb_film_top250` VALUES ('82', 'https://movie.douban.com/subject/1292343/', '蝴蝶效应 The Butterfly Effect', '8.8', '2004', '剧情/科幻/悬疑/惊悚', '美国/加拿大', '埃里克·布雷斯/J·麦基·格鲁伯', 'J·麦基·格鲁伯/埃里克·布雷斯', '阿什顿·库彻/梅洛拉·沃尔特斯/艾米·斯马特', '666638');
INSERT INTO `tb_film_top250` VALUES ('83', 'https://movie.douban.com/subject/2334904/', '禁闭岛 Shutter Island', '8.8', '2010', '剧情/悬疑/惊悚', '美国', '马丁·斯科塞斯', '莱塔·卡罗格里迪斯/丹尼斯·勒翰', '莱昂纳多·迪卡普里奥/马克·鲁弗洛/本·金斯利', '668984');
INSERT INTO `tb_film_top250` VALUES ('84', 'https://movie.douban.com/subject/1292679/', '春光乍泄 春光乍洩', '8.9', '1997', '剧情/爱情/同性', '中国香港/日本/韩国', '王家卫', '王家卫', '张国荣/梁朝伟/张震', '450446');
INSERT INTO `tb_film_top250` VALUES ('85', 'https://movie.douban.com/subject/1292656/', '心灵捕手 Good Will Hunting', '8.9', '1997', '剧情', '美国', '格斯·范·桑特', '本·阿弗莱克/马特·达蒙', '马特·达蒙/罗宾·威廉姆斯/本·阿弗莱克', '498135');
INSERT INTO `tb_film_top250` VALUES ('86', 'https://movie.douban.com/subject/11525673/', '布达佩斯大饭店 The Grand Budapest Hotel', '8.8', '2014', '剧情/喜剧/冒险', '美国/德国/英国', '韦斯·安德森', '韦斯·安德森/雨果·吉尼斯/斯蒂芬·茨威格', '拉尔夫·费因斯/托尼·雷沃罗利/艾德里安·布洛迪', '632077');
INSERT INTO `tb_film_top250` VALUES ('87', 'https://movie.douban.com/subject/1787291/', '被嫌弃的松子的一生 嫌われ松子の一生', '8.9', '2006', '剧情/歌舞', '日本', '中岛哲也', '中岛哲也/山田宗树', '中谷美纪/永山瑛太/香川照之', '537214');
INSERT INTO `tb_film_top250` VALUES ('88', 'https://movie.douban.com/subject/1652587/', '阿凡达 Avatar', '8.7', '2009', '动作/科幻/冒险', '美国/英国', '詹姆斯·卡梅隆', '詹姆斯·卡梅隆', '萨姆·沃辛顿/佐伊·索尔达娜/西格妮·韦弗', '953082');
INSERT INTO `tb_film_top250` VALUES ('89', 'https://movie.douban.com/subject/1294371/', '摩登时代 Modern Times', '9.3', '1936', '剧情/喜剧/爱情', '美国', '查理·卓别林', '查理·卓别林', '查理·卓别林/宝莲·高黛/亨利·伯格曼', '198858');
INSERT INTO `tb_film_top250` VALUES ('90', 'https://movie.douban.com/subject/1292370/', '剪刀手爱德华 Edward Scissorhands', '8.7', '1990', '剧情/爱情/奇幻', '美国', '蒂姆·波顿', '蒂姆·波顿/卡罗琳·汤普森', '约翰尼·德普/薇诺娜·瑞德/黛安·韦斯特', '806232');
INSERT INTO `tb_film_top250` VALUES ('91', 'https://movie.douban.com/subject/1294639/', '勇敢的心 Braveheart', '8.9', '1995', '剧情/动作/传记/历史/战争', '美国', '梅尔·吉布森', '兰道尔·华莱士', '梅尔·吉布森/苏菲·玛索/布莱恩·考克斯', '445122');
INSERT INTO `tb_film_top250` VALUES ('92', 'https://movie.douban.com/subject/1292215/', '天使爱美丽 Le fabuleux destin d\'Amélie Poulain', '8.7', '2001', '喜剧/爱情', '法国/德国', '让-皮埃尔·热内', '纪尧姆·洛朗/让-皮埃尔·热内', '奥黛丽·塔图/马修·卡索维茨/吕菲斯', '770386');
INSERT INTO `tb_film_top250` VALUES ('93', 'https://movie.douban.com/subject/1302425/', '喜剧之王 喜劇之王', '8.7', '1999', '剧情/喜剧/爱情', '中国香港', '周星驰/李力持', '曾瑾昌/周星驰/李敏', '周星驰/张柏芝/莫文蔚', '669404');
INSERT INTO `tb_film_top250` VALUES ('94', 'https://movie.douban.com/subject/1297192/', '致命ID Identity', '8.8', '2003', '剧情/悬疑/惊悚', '美国', '詹姆斯·曼高德', '迈克尔·库尼', '约翰·库萨克/雷·利奥塔/阿曼达·皮特', '562753');
INSERT INTO `tb_film_top250` VALUES ('95', 'https://movie.douban.com/subject/1298070/', '加勒比海盗 Pirates of the Caribbean: The Curse of the Black Pearl', '8.7', '2003', '动作/奇幻/冒险', '美国', '戈尔·维宾斯基', '泰德·艾略特/特里·鲁西奥/斯图尔特·贝亚蒂耶', '约翰尼·德普/杰弗里·拉什/奥兰多·布鲁姆', '633001');
INSERT INTO `tb_film_top250` VALUES ('96', 'https://movie.douban.com/subject/1418834/', '断背山 Brokeback Mountain', '8.8', '2005', '剧情/爱情/同性/家庭', '美国/加拿大', '李安', '拉里·麦克穆特瑞/黛安娜·奥撒纳/安妮·普鲁', '希斯·莱杰/杰克·吉伦哈尔/米歇尔·威廉姆斯', '535840');
INSERT INTO `tb_film_top250` VALUES ('97', 'https://movie.douban.com/subject/1300299/', '杀人回忆 살인의 추억', '8.8', '2003', '剧情/动作/悬疑/惊悚/犯罪', '韩国', '奉俊昊', '奉俊昊/金光林/沈成宝', '宋康昊/金相庆/金雷夏', '464683');
INSERT INTO `tb_film_top250` VALUES ('98', 'https://movie.douban.com/subject/6985810/', '狩猎 Jagten', '9.1', '2012', '剧情', '丹麦/瑞典', '托马斯·温特伯格', '托马斯·温特伯格/托比亚斯·林道赫姆', '麦斯·米科尔森/托玛斯·博·拉森/安妮卡·韦德科普', '252939');
INSERT INTO `tb_film_top250` VALUES ('99', 'https://movie.douban.com/subject/3011235/', '哈利·波特与死亡圣器(下) Harry Potter and the Deathly Hallows: Part 2', '8.8', '2011', '奇幻/冒险', '美国/英国', '大卫·叶茨', '史蒂夫·克洛夫斯/J·K·罗琳', '丹尼尔·雷德克里夫/艾玛·沃森/鲁伯特·格林特', '532993');
INSERT INTO `tb_film_top250` VALUES ('100', 'https://movie.douban.com/subject/26799731/', '请以你的名字呼唤我 Call Me by Your Name', '8.9', '2017', '剧情/爱情/同性', '意大利/法国/巴西/美国/荷兰/德国', '卢卡·瓜达尼诺', '詹姆斯·伊沃里/安德列·艾席蒙', '艾米·汉莫/蒂莫西·柴勒梅德/迈克尔·斯图巴', '451012');
INSERT INTO `tb_film_top250` VALUES ('101', 'https://movie.douban.com/subject/1297359/', '幽灵公主 もののけ姫', '8.9', '1997', '动画/奇幻/冒险', '日本', '宫崎骏', '宫崎骏', '松田洋治/石田百合子/田中裕子', '393535');
INSERT INTO `tb_film_top250` VALUES ('102', 'https://movie.douban.com/subject/1291875/', '阳光灿烂的日子', '8.8', '1994', '剧情/爱情', '中国大陆/中国香港', '姜文', '姜文/王朔', '夏雨/宁静/陶虹', '452171');
INSERT INTO `tb_film_top250` VALUES ('103', 'https://movie.douban.com/subject/25814705/', '小森林 夏秋篇 リトル・フォレスト 夏・秋', '9', '2014', '剧情', '日本', '森淳一', '森淳一/五十岚大介', '桥本爱/三浦贵大/松冈茉优', '298796');
INSERT INTO `tb_film_top250` VALUES ('104', 'https://movie.douban.com/subject/2149806/', '入殓师 おくりびと', '8.8', '2008', '剧情', '日本', '泷田洋二郎', '小山薰堂', '本木雅弘/广末凉子/山崎努', '449301');
INSERT INTO `tb_film_top250` VALUES ('105', 'https://movie.douban.com/subject/1291999/', '重庆森林 重慶森林', '8.7', '1994', '剧情/爱情', '中国香港', '王家卫', '王家卫', '林青霞/金城武/梁朝伟', '571209');
INSERT INTO `tb_film_top250` VALUES ('106', 'https://movie.douban.com/subject/1297630/', '第六感 The Sixth Sense', '8.9', '1999', '剧情/悬疑/惊悚', '美国', 'M·奈特·沙马兰', 'M·奈特·沙马兰', '布鲁斯·威利斯/海利·乔·奥斯蒙/托妮·科莱特', '389796');
INSERT INTO `tb_film_top250` VALUES ('107', 'https://movie.douban.com/subject/10777687/', '7号房的礼物 7번방의 선물', '8.9', '2013', '剧情/喜剧/家庭', '韩国', '李焕庆', '李焕庆/刘英雅', '柳承龙/朴信惠/郑镇荣', '369560');
INSERT INTO `tb_film_top250` VALUES ('108', 'https://movie.douban.com/subject/21318488/', '消失的爱人 Gone Girl', '8.7', '2014', '剧情/悬疑/惊悚/犯罪', '美国', '大卫·芬奇', '吉莉安·弗琳', '本·阿弗莱克/裴淳华/尼尔·帕特里克·哈里斯', '641328');
INSERT INTO `tb_film_top250` VALUES ('109', 'https://movie.douban.com/subject/1865703/', '红辣椒 パプリカ', '9', '2006', '科幻/动画/悬疑/惊悚', '日本', '今敏', '水上清资/今敏/筒井康隆', '林原惠美/江守彻/堀胜之祐', '276555');
INSERT INTO `tb_film_top250` VALUES ('110', 'https://movie.douban.com/subject/25814707/', '小森林 冬春篇 リトル・フォレスト 冬・春', '9', '2015', '剧情', '日本', '森淳一', '森淳一/五十岚大介', '桥本爱/三浦贵大/松冈茉优', '263547');
INSERT INTO `tb_film_top250` VALUES ('111', 'https://movie.douban.com/subject/1296339/', '爱在黎明破晓前 Before Sunrise', '8.8', '1995', '剧情/爱情', '美国/奥地利/瑞士', '理查德·林克莱特', '理查德·林克莱特/金·克里桑', '伊桑·霍克/朱莉·德尔佩/安德莉亚·埃克特', '423619');
INSERT INTO `tb_film_top250` VALUES ('112', 'https://movie.douban.com/subject/1292434/', '一一', '9', '2000', '剧情/爱情/家庭', '中国台湾/日本', '杨德昌', '杨德昌', '吴念真/李凯莉/金燕玲', '252703');
INSERT INTO `tb_film_top250` VALUES ('113', 'https://movie.douban.com/subject/1297052/', '侧耳倾听 耳をすませば', '8.9', '1995', '剧情/爱情/动画', '日本', '近藤喜文', '宫崎骏/柊葵', '本名阳子/小林桂树/高山南', '326415');
INSERT INTO `tb_film_top250` VALUES ('114', 'https://movie.douban.com/subject/1306249/', '唐伯虎点秋香 唐伯虎點秋香', '8.6', '1993', '喜剧/爱情/古装', '中国香港', '李力持', '李力持/谷德昭/陈文强', '周星驰/巩俐/陈百祥', '725165');
INSERT INTO `tb_film_top250` VALUES ('115', 'https://movie.douban.com/subject/3072124/', '玛丽和马克思 Mary and Max', '8.9', '2009', '剧情/喜剧/动画', '澳大利亚', '亚当·艾略特', '亚当·艾略特', '托妮·科莱特/菲利普·塞默·霍夫曼/巴瑞·哈姆弗莱斯', '331835');
INSERT INTO `tb_film_top250` VALUES ('116', 'https://movie.douban.com/subject/5322596/', '超脱 Detachment', '8.9', '2011', '剧情', '美国', '托尼·凯耶', '卡尔·隆德', '艾德里安·布洛迪/马西娅·盖伊·哈登/詹姆斯·肯恩', '331791');
INSERT INTO `tb_film_top250` VALUES ('117', 'https://movie.douban.com/subject/1297447/', '倩女幽魂', '8.7', '1987', '爱情/奇幻/武侠/古装', '中国香港', '程小东', '阮继志', '张国荣/王祖贤/午马', '513831');
INSERT INTO `tb_film_top250` VALUES ('118', 'https://movie.douban.com/subject/3395373/', '蝙蝠侠：黑暗骑士崛起 The Dark Knight Rises', '8.8', '2012', '剧情/动作/科幻/惊悚/犯罪', '美国/英国', '克里斯托弗·诺兰', '大卫·S·高耶/乔纳森·诺兰/克里斯托弗·诺兰', '克里斯蒂安·贝尔/汤姆·哈迪/安妮·海瑟薇', '510060');
INSERT INTO `tb_film_top250` VALUES ('119', 'https://movie.douban.com/subject/4268598/', '告白', '8.7', '2010', '剧情/惊悚', '日本', '中岛哲也', '中岛哲也/凑佳苗', '松隆子/冈田将生/木村佳乃', '536245');
INSERT INTO `tb_film_top250` VALUES ('120', 'https://movie.douban.com/subject/1291545/', '大鱼 Big Fish', '8.8', '2003', '剧情/家庭/奇幻/冒险', '美国', '蒂姆·波顿', 'Daniel Wallace/约翰·奥古斯特', '伊万·麦克格雷格/阿尔伯特·芬尼/比利·克鲁德普', '421281');
INSERT INTO `tb_film_top250` VALUES ('121', 'https://movie.douban.com/subject/4917726/', '阳光姐妹淘 써니', '8.8', '2011', '剧情/喜剧', '韩国', '姜炯哲', '姜炯哲/李炳宪', '沈恩京/闵孝琳/姜素拉', '456781');
INSERT INTO `tb_film_top250` VALUES ('122', 'https://movie.douban.com/subject/1305164/', '甜蜜蜜', '8.8', '1996', '剧情/爱情', '中国香港', '陈可辛', '岸西', '黎明/张曼玉/杨恭如', '372306');
INSERT INTO `tb_film_top250` VALUES ('123', 'https://movie.douban.com/subject/1316510/', '射雕英雄传之东成西就 射鵰英雄傳之東成西就', '8.7', '1993', '喜剧/奇幻/武侠/古装', '中国香港', '刘镇伟', '刘镇伟', '梁朝伟/林青霞/张国荣', '468620');
INSERT INTO `tb_film_top250` VALUES ('124', 'https://movie.douban.com/subject/5989818/', '萤火之森 蛍火の杜へ', '8.9', '2011', '剧情/爱情/动画/奇幻', '日本', '大森贵弘', '绿川幸', '佐仓绫音/内山昂辉/辻亲八', '352047');
INSERT INTO `tb_film_top250` VALUES ('125', 'https://movie.douban.com/subject/2353023/', '驯龙高手 How to Train Your Dragon', '8.7', '2010', '动画/奇幻/冒险', '美国', '迪恩·德布洛斯/克里斯·桑德斯', '威廉姆·戴维斯/迪恩·德布洛斯/克里斯·桑德斯', '杰伊·巴鲁切尔/杰拉德·巴特勒/克雷格·费格森', '545178');
INSERT INTO `tb_film_top250` VALUES ('126', 'https://movie.douban.com/subject/1292337/', '无人知晓 誰も知らない', '9.1', '2004', '剧情', '日本', '是枝裕和', '是枝裕和', '柳乐优弥/北浦爱/木村飞影', '193238');
INSERT INTO `tb_film_top250` VALUES ('127', 'https://movie.douban.com/subject/11026735/', '超能陆战队 Big Hero 6', '8.7', '2014', '喜剧/动作/科幻/动画/冒险', '美国', '唐·霍尔/克里斯·威廉姆斯', '乔丹·罗伯茨/丹尼尔·吉尔森/罗伯特·L·贝尔德', '斯科特·安第斯/瑞恩·波特/丹尼尔·海尼', '705598');
INSERT INTO `tb_film_top250` VALUES ('128', 'https://movie.douban.com/subject/1292274/', '幸福终点站 The Terminal', '8.8', '2004', '剧情/喜剧/爱情', '美国', '史蒂文·斯皮尔伯格', '安德鲁·尼科尔/萨沙·杰瓦西 /杰夫·内桑森', '汤姆·汉克斯/凯瑟琳·泽塔-琼斯/斯坦利·图齐', '387374');
INSERT INTO `tb_film_top250` VALUES ('129', 'https://movie.douban.com/subject/4202302/', '借东西的小人阿莉埃蒂 借りぐらしのアリエッティ', '8.8', '2010', '动画/奇幻/冒险', '日本', '米林宏昌', '宫崎骏/丹羽圭子/玛丽·诺顿', '志田未来/神木隆之介/树木希林', '385796');
INSERT INTO `tb_film_top250` VALUES ('130', 'https://movie.douban.com/subject/1293359/', '菊次郎的夏天 菊次郎の夏', '8.8', '1999', '剧情/喜剧', '日本', '北野武', '北野武', '北野武/关口雄介/岸本加世子', '365380');
INSERT INTO `tb_film_top250` VALUES ('131', 'https://movie.douban.com/subject/1291990/', '爱在日落黄昏时 Before Sunset', '8.8', '2004', '剧情/爱情', '美国/法国', '理查德·林克莱特', '理查德·林克莱特/朱莉·德尔佩/伊桑·霍克', '伊桑·霍克/朱莉·德尔佩/弗农·多布切夫', '359649');
INSERT INTO `tb_film_top250` VALUES ('132', 'https://movie.douban.com/subject/21360417/', '恐怖直播 더 테러 라이브', '8.8', '2013', '剧情/悬疑/犯罪', '韩国', '金秉祐', '金秉祐', '河正宇/李璟荣/全慧珍', '449795');
INSERT INTO `tb_film_top250` VALUES ('133', 'https://movie.douban.com/subject/1300992/', '完美的世界 A Perfect World', '9.1', '1993', '剧情/犯罪', '美国', '克林特·伊斯特伍德', '约翰·李·汉考克', '凯文·科斯特纳/劳拉·邓恩/克林特·伊斯特伍德', '180744');
INSERT INTO `tb_film_top250` VALUES ('134', 'https://movie.douban.com/subject/3287562/', '神偷奶爸 Despicable Me', '8.6', '2010', '喜剧/动画/冒险', '美国/法国', '皮埃尔·柯芬/克里斯·雷纳德', '肯·道里欧/塞尔希奥·巴勃罗斯/辛科·保罗', '史蒂夫·卡瑞尔/杰森·席格尔/拉塞尔·布兰德', '703633');
INSERT INTO `tb_film_top250` VALUES ('135', 'https://movie.douban.com/subject/1291579/', '怪兽电力公司 Monsters, Inc.', '8.7', '2001', '喜剧/动画/儿童/奇幻/冒险', '美国', '彼特·道格特/大卫·斯沃曼/李·昂克里奇', '安德鲁·斯坦顿/丹尼尔·吉尔森/罗伯特·L·贝尔德', '约翰·古德曼/比利·克里斯托/玛丽·吉布斯', '459928');
INSERT INTO `tb_film_top250` VALUES ('136', 'https://movie.douban.com/subject/1858711/', '玩具总动员3 Toy Story 3', '8.8', '2010', '喜剧/动画/奇幻/冒险', '美国', '李·昂克里奇', '迈克尔·阿恩特/约翰·拉塞特/安德鲁·斯坦顿', '汤姆·汉克斯/蒂姆·艾伦/琼·库萨克', '356812');
INSERT INTO `tb_film_top250` VALUES ('137', 'https://movie.douban.com/subject/1291543/', '功夫', '8.6', '2004', '喜剧/动作/犯罪/奇幻', '中国大陆/中国香港', '周星驰', '曾瑾昌/陈文强/周星驰', '周星驰/元秋/元华', '672558');
INSERT INTO `tb_film_top250` VALUES ('138', 'https://movie.douban.com/subject/26874505/', '人生果实 人生フルーツ', '9.5', '2017', '纪录片', '日本', '伏原健之', '津端修一/津端英子/树木希林', null, '94990');
INSERT INTO `tb_film_top250` VALUES ('139', 'https://movie.douban.com/subject/26325320/', '血战钢锯岭 Hacksaw Ridge', '8.7', '2016', '剧情/传记/历史/战争', '美国/澳大利亚', '梅尔·吉布森', '安德鲁·奈特/罗伯特·申坎', '安德鲁·加菲尔德/萨姆·沃辛顿/文斯·沃恩', '577711');
INSERT INTO `tb_film_top250` VALUES ('140', 'https://movie.douban.com/subject/1418200/', '傲慢与偏见 Pride & Prejudice', '8.6', '2005', '剧情/爱情', '法国/英国/美国', '乔·赖特', '简·奥斯汀/黛博拉·莫盖茨', '凯拉·奈特莉/马修·麦克费登/唐纳德·萨瑟兰', '546158');
INSERT INTO `tb_film_top250` VALUES ('141', 'https://movie.douban.com/subject/1291585/', '风之谷 風の谷のナウシカ', '8.9', '1984', '动画/奇幻/冒险', '日本', '宫崎骏', '宫崎骏', '岛本须美/松田洋治/榊原良子', '280892');
INSERT INTO `tb_film_top250` VALUES ('142', 'https://movie.douban.com/subject/10577869/', '时空恋旅人 About Time', '8.7', '2013', '喜剧/爱情/奇幻', '英国', '理查德·柯蒂斯', '理查德·柯蒂斯', '多姆纳尔·格里森/瑞秋·麦克亚当斯/比尔·奈伊', '393026');
INSERT INTO `tb_film_top250` VALUES ('143', 'https://movie.douban.com/subject/1294240/', '教父3 The Godfather: Part III', '8.9', '1990', '剧情/犯罪', '美国', '弗朗西斯·福特·科波拉', '马里奥·普佐/弗朗西斯·福特·科波拉', '阿尔·帕西诺/黛安·基顿/塔莉娅·夏尔', '246288');
INSERT INTO `tb_film_top250` VALUES ('144', 'https://movie.douban.com/subject/1292208/', '上帝之城 Cidade de Deus', '8.9', '2002', '剧情/犯罪', '巴西/法国', '费尔南多·梅里尔斯/卡迪亚·兰德', '保罗·林斯/布罗里欧·曼托伐尼', '亚历桑德雷·罗德里格斯/莱安德鲁·菲尔米诺/菲利佩·哈根森', '230248');
INSERT INTO `tb_film_top250` VALUES ('145', 'https://movie.douban.com/subject/1428581/', '天书奇谭', '9.2', '1983', '动画/奇幻', '中国大陆', '王树忱/钱运达', '王树忱/包蕾', '丁建华/毕克/苏秀', '146514');
INSERT INTO `tb_film_top250` VALUES ('146', 'https://movie.douban.com/subject/1417598/', '电锯惊魂 Saw', '8.7', '2004', '悬疑/惊悚/恐怖', '美国', '温子仁', '温子仁/雷·沃纳尔', '雷·沃纳尔/加利·艾尔维斯/丹尼·格洛弗', '356628');
INSERT INTO `tb_film_top250` VALUES ('147', 'https://movie.douban.com/subject/1303037/', '喜宴 囍宴', '8.9', '1993', '剧情/喜剧/爱情/同性/家庭', '中国台湾/美国', '李安', '李安/冯光远/詹姆斯·夏慕斯', '赵文瑄/郎雄/归亚蕾', '240203');
INSERT INTO `tb_film_top250` VALUES ('148', 'https://movie.douban.com/subject/1297574/', '英雄本色', '8.7', '1986', '剧情/动作/犯罪', '中国香港', '吴宇森', '陈庆嘉/吴宇森/梁淑华', '周润发/狄龙/张国荣', '358437');
INSERT INTO `tb_film_top250` VALUES ('149', 'https://movie.douban.com/subject/6307447/', '被解救的姜戈 Django Unchained', '8.7', '2012', '剧情/动作/西部/冒险', '美国', '昆汀·塔伦蒂诺', '昆汀·塔伦蒂诺', '杰米·福克斯/莱昂纳多·迪卡普里奥/克里斯托弗·瓦尔兹', '437306');
INSERT INTO `tb_film_top250` VALUES ('150', 'https://movie.douban.com/subject/1578507/', '谍影重重3 The Bourne Ultimatum', '8.8', '2007', '动作/悬疑/惊悚', '美国/德国', '保罗·格林格拉斯', '托尼·吉尔罗伊/乔治·诺非/斯科特·Z·本恩斯', '马特·达蒙/朱丽娅·斯蒂尔斯/大卫·斯特雷泽恩', '308198');
INSERT INTO `tb_film_top250` VALUES ('151', 'https://movie.douban.com/subject/1295399/', '七武士 七人の侍', '9.2', '1954', '剧情/动作/冒险', '日本', '黑泽明', '黑泽明/桥本忍/小国英雄', '三船敏郎/志村乔/津岛惠子', '134118');
INSERT INTO `tb_film_top250` VALUES ('152', 'https://movie.douban.com/subject/3792799/', '岁月神偷 歲月神偷', '8.7', '2010', '剧情/家庭', '中国香港/中国大陆', '罗启锐', '罗启锐/张婉婷', '吴君如/任达华/钟绍图', '458061');
INSERT INTO `tb_film_top250` VALUES ('153', 'https://movie.douban.com/subject/1307315/', '哪吒闹海', '9.1', '1979', '动画/奇幻/冒险', '中国大陆', '严定宪/王树忱/徐景达', '王树忱', '梁正晖/邱岳峰/毕克', '174831');
INSERT INTO `tb_film_top250` VALUES ('154', 'https://movie.douban.com/subject/1306861/', '我是山姆 I Am Sam', '8.9', '2001', '剧情/家庭', '美国', '杰茜·尼尔森', '杰茜·尼尔森/克里斯汀·约翰逊', '西恩·潘/达科塔·范宁/米歇尔·菲佛', '215021');
INSERT INTO `tb_film_top250` VALUES ('155', 'https://movie.douban.com/subject/4920389/', '头号玩家 Ready Player One', '8.7', '2018', '动作/科幻/冒险', '美国', '史蒂文·斯皮尔伯格', '扎克·佩恩/恩斯特·克莱恩', '泰伊·谢里丹/奥利维亚·库克/本·门德尔森', '1013637');
INSERT INTO `tb_film_top250` VALUES ('156', 'https://movie.douban.com/subject/25986180/', '釜山行 부산행', '8.5', '2016', '动作/惊悚/灾难', '韩国', '延尚昊', '延尚昊', '孔侑/郑有美/马东锡', '801867');
INSERT INTO `tb_film_top250` VALUES ('157', 'https://movie.douban.com/subject/1907966/', '疯狂原始人 The Croods', '8.7', '2013', '喜剧/动画/冒险', '美国', '柯克·德·米科/克里斯·桑德斯', '克里斯·桑德斯/柯克·德·米科/约翰·克立斯', '尼古拉斯·凯奇/艾玛·斯通/瑞恩·雷诺兹', '619816');
INSERT INTO `tb_film_top250` VALUES ('158', 'https://movie.douban.com/subject/1295409/', '纵横四海 緃横四海', '8.8', '1991', '剧情/喜剧/动作/犯罪', '中国香港', '吴宇森', '吴宇森/高志森/秦小珍', '周润发/张国荣/钟楚红', '289649');
INSERT INTO `tb_film_top250` VALUES ('159', 'https://movie.douban.com/subject/26611804/', '三块广告牌 Three Billboards Outside Ebbing, Missouri', '8.7', '2017', '剧情/犯罪', '美国/英国', '马丁·麦克唐纳', '马丁·麦克唐纳', '弗兰西斯·麦克多蒙德/伍迪·哈里森/山姆·洛克威尔', '605536');
INSERT INTO `tb_film_top250` VALUES ('160', 'https://movie.douban.com/subject/25917973/', '心迷宫', '8.7', '2014', '剧情/悬疑/犯罪', '中国大陆', '忻钰坤', '忻钰坤/冯元良/鲁妮凡', '霍卫民/王笑天/罗芸', '349061');
INSERT INTO `tb_film_top250` VALUES ('161', 'https://movie.douban.com/subject/1793929/', '达拉斯买家俱乐部 Dallas Buyers Club', '8.8', '2013', '剧情/同性/传记', '美国', '让-马克·瓦雷', '克莱格·鲍登/梅丽莎·沃雷克', '马修·麦康纳/詹妮弗·加纳/杰瑞德·莱托', '323803');
INSERT INTO `tb_film_top250` VALUES ('162', 'https://movie.douban.com/subject/1293318/', '萤火虫之墓 火垂るの墓', '8.7', '1988', '剧情/动画/战争', '日本', '高畑勋', '高畑勋/野坂昭如', '辰己努/白石绫乃/志乃原良子', '320469');
INSERT INTO `tb_film_top250` VALUES ('163', 'https://movie.douban.com/subject/1291544/', '哈利·波特与阿兹卡班的囚徒 Harry Potter and the Prisoner of Azkaban', '8.7', '2004', '奇幻/冒险', '英国/美国', '阿方索·卡隆', '史蒂夫·克洛夫斯/J·K·罗琳', '丹尼尔·雷德克里夫/艾玛·沃森/鲁伯特·格林特', '394718');
INSERT INTO `tb_film_top250` VALUES ('164', 'https://movie.douban.com/subject/1292401/', '真爱至上 Love Actually', '8.6', '2003', '剧情/喜剧/爱情', '英国/美国/法国', '理查德·柯蒂斯', '理查德·柯蒂斯', '休·格兰特/科林·费尔斯/艾玛·汤普森', '523358');
INSERT INTO `tb_film_top250` VALUES ('165', 'https://movie.douban.com/subject/24750126/', '荒蛮故事 Relatos salvajes', '8.8', '2014', '剧情/喜剧/犯罪', '阿根廷/西班牙', '达米安·斯兹弗隆', '达米安·斯兹弗隆', '达里奥·格兰迪内蒂/玛丽娅·玛努尔/莫妮卡·比利亚', '298634');
INSERT INTO `tb_film_top250` VALUES ('166', 'https://movie.douban.com/subject/2209573/', '贫民窟的百万富翁 Slumdog Millionaire', '8.6', '2008', '剧情/爱情', '英国/美国', '丹尼·博伊尔/洛芙琳·坦丹', '西蒙·博福伊/维卡斯·史瓦卢普', '戴夫·帕特尔/沙鲁巴·舒克拉/亚尼·卡普', '572759');
INSERT INTO `tb_film_top250` VALUES ('167', 'https://movie.douban.com/subject/1292328/', '东邪西毒 東邪西毒', '8.6', '1994', '剧情/动作/爱情/武侠/古装', '中国香港/中国台湾', '王家卫', '王家卫/金庸', '张国荣/林青霞/梁朝伟', '435170');
INSERT INTO `tb_film_top250` VALUES ('168', 'https://movie.douban.com/subject/26683290/', '你的名字。 君の名は。', '8.4', '2016', '剧情/爱情/动画', '日本', '新海诚', '新海诚', '神木隆之介/上白石萌音/长泽雅美', '982728');
INSERT INTO `tb_film_top250` VALUES ('169', 'https://movie.douban.com/subject/1304447/', '记忆碎片 Memento', '8.6', '2000', '剧情/悬疑/惊悚/犯罪', '美国', '克里斯托弗·诺兰', '克里斯托弗·诺兰/乔纳森·诺兰', '盖·皮尔斯/凯瑞-安·莫斯/乔·潘托里亚诺', '440307');
INSERT INTO `tb_film_top250` VALUES ('170', 'https://movie.douban.com/subject/1291822/', '卢旺达饭店 Hotel Rwanda', '8.9', '2004', '剧情/历史/战争', '英国/南非/意大利', '特瑞·乔治', '凯尔·皮尔森/特瑞·乔治', '唐·钱德尔/苏菲·奥康内多/华金·菲尼克斯', '209715');
INSERT INTO `tb_film_top250` VALUES ('171', 'https://movie.douban.com/subject/25773932/', '爆裂鼓手 Whiplash', '8.7', '2014', '剧情/音乐', '美国', '达米恩·查泽雷', '达米恩·查泽雷', '迈尔斯·特勒/J·K·西蒙斯/保罗·雷瑟', '397224');
INSERT INTO `tb_film_top250` VALUES ('172', 'https://movie.douban.com/subject/1291557/', '花样年华 花樣年華', '8.6', '2000', '剧情/爱情', '中国香港', '王家卫', '王家卫', '梁朝伟/张曼玉/潘迪华', '406324');
INSERT INTO `tb_film_top250` VALUES ('173', 'https://movie.douban.com/subject/1978709/', '黑天鹅 Black Swan', '8.6', '2010', '剧情/惊悚', '美国', '达伦·阿伦诺夫斯基', '安德雷斯·海因斯/马克·海曼/约翰·J·麦克劳克林', '娜塔莉·波特曼/米拉·库尼斯/文森特·卡索', '633739');
INSERT INTO `tb_film_top250` VALUES ('174', 'https://movie.douban.com/subject/1959195/', '忠犬八公物语 ハチ公物語', '9.2', '1987', '剧情', '日本', '神山征二郎', '新藤兼人', '山本圭/井川比佐志/片桐入', '131858');
INSERT INTO `tb_film_top250` VALUES ('175', 'https://movie.douban.com/subject/1302467/', '黑客帝国3：矩阵革命 The Matrix Revolutions', '8.7', '2003', '动作/科幻', '美国/澳大利亚', '莉莉·沃卓斯基/拉娜·沃卓斯基', '莉莉·沃卓斯基/拉娜·沃卓斯基', '基努·里维斯/劳伦斯·菲什伯恩/凯瑞-安·莫斯', '297708');
INSERT INTO `tb_film_top250` VALUES ('176', 'https://movie.douban.com/subject/10463953/', '模仿游戏 The Imitation Game', '8.7', '2014', '剧情/同性/传记/战争', '英国/美国', '莫滕·泰杜姆', '格拉汉姆·摩尔/安德鲁·霍奇斯', '本尼迪克特·康伯巴奇/凯拉·奈特莉/马修·古迪', '433229');
INSERT INTO `tb_film_top250` VALUES ('177', 'https://movie.douban.com/subject/26628357/', '一个叫欧维的男人决定去死 En man som heter Ove', '8.8', '2015', '剧情', '瑞典', '汉内斯·赫尔姆', '弗雷德里克·巴克曼/汉内斯·赫尔姆', '罗夫·拉斯加德/巴哈·帕斯/托比亚斯·阿姆博瑞', '261729');
INSERT INTO `tb_film_top250` VALUES ('178', 'https://movie.douban.com/subject/10533913/', '头脑特工队 Inside Out', '8.7', '2015', '喜剧/动画/冒险', '美国', '彼特·道格特/罗纳尔多·德尔·卡门', '彼特·道格特/罗纳尔多·德尔·卡门/梅格·勒福夫', '艾米·波勒/菲利丝·史密斯/理查德·坎德', '418115');
INSERT INTO `tb_film_top250` VALUES ('179', 'https://movie.douban.com/subject/1296996/', '哈利·波特与密室 Harry Potter and the Chamber of Secrets', '8.6', '2002', '奇幻/冒险', '美国/英国/德国', '克里斯·哥伦布', '史蒂夫·克洛夫斯/J·K·罗琳', '丹尼尔·雷德克里夫/艾玛·沃森/鲁伯特·格林特', '413675');
INSERT INTO `tb_film_top250` VALUES ('180', 'https://movie.douban.com/subject/4848115/', '你看起来好像很好吃 おまえうまそうだな', '8.9', '2010', '剧情/动画/儿童', '日本', '藤森雅也', '村上修/神野博明/宫西达也', '山口胜平/爱河里花子/加藤清史郎', '247403');
INSERT INTO `tb_film_top250` VALUES ('181', 'https://movie.douban.com/subject/1291870/', '雨人 Rain Man', '8.7', '1988', '剧情', '美国', '巴瑞·莱文森', '罗纳德·巴斯/巴里·莫罗', '达斯汀·霍夫曼/汤姆·克鲁斯/瓦莱丽亚·戈利诺', '308402');
INSERT INTO `tb_film_top250` VALUES ('182', 'https://movie.douban.com/subject/1395091/', '未麻的部屋 Perfect Blue', '8.9', '1997', '动画/惊悚/奇幻', '日本', '今敏', '村井贞之/竹内义和', '岩男润子/松本梨香/辻亲八', '187336');
INSERT INTO `tb_film_top250` VALUES ('183', 'https://movie.douban.com/subject/6534248/', '无敌破坏王 Wreck-It Ralph', '8.7', '2012', '喜剧/动画/奇幻/冒险', '美国', '瑞奇·摩尔', '菲尔·约翰斯顿/珍妮弗·李/瑞奇·摩尔', '约翰·C·赖利/萨拉·西尔弗曼/杰克·麦克布瑞尔', '381137');
INSERT INTO `tb_film_top250` VALUES ('184', 'https://movie.douban.com/subject/10437779/', '新世界 신세계', '8.8', '2013', '剧情/犯罪', '韩国', '朴勋政', '朴勋政', '李政宰/崔岷植/黄政民', '232892');
INSERT INTO `tb_film_top250` VALUES ('185', 'https://movie.douban.com/subject/1291578/', '冰川时代 Ice Age', '8.6', '2002', '喜剧/动画/冒险', '美国', '卡洛斯·沙尔丹哈/克里斯·韦奇', '迈克尔·伯格 /迈克尔·J·威尔森/彼得·阿克曼', '雷·罗马诺/约翰·雷吉扎莫/丹尼斯·利瑞', '456996');
INSERT INTO `tb_film_top250` VALUES ('186', 'https://movie.douban.com/subject/1309163/', '恋恋笔记本 The Notebook', '8.5', '2004', '剧情/爱情', '美国', '尼克·卡萨维蒂', '扬·萨尔迪/杰里米·莱文/尼古拉斯·斯帕克斯', '瑞恩·高斯林/瑞秋·麦克亚当斯/吉娜·罗兰兹', '474724');
INSERT INTO `tb_film_top250` VALUES ('187', 'https://movie.douban.com/subject/25895901/', '海街日记 海街diary', '8.8', '2015', '剧情/家庭', '日本', '是枝裕和', '是枝裕和/吉田秋生', '绫濑遥/长泽雅美/夏帆', '281457');
INSERT INTO `tb_film_top250` VALUES ('188', 'https://movie.douban.com/subject/26430107/', '二十二', '8.7', '2015', '纪录片', '中国大陆', '郭柯', null, null, '213523');
INSERT INTO `tb_film_top250` VALUES ('189', 'https://movie.douban.com/subject/25980443/', '海边的曼彻斯特 Manchester by the Sea', '8.6', '2016', '剧情/家庭', '美国', '肯尼思·洛纳根', '肯尼思·洛纳根', '卡西·阿弗莱克/卢卡斯·赫奇斯/米歇尔·威廉姆斯', '353578');
INSERT INTO `tb_film_top250` VALUES ('190', 'https://movie.douban.com/subject/1293181/', '惊魂记 Psycho', '9', '1960', '悬疑/惊悚/恐怖', '美国', '阿尔弗雷德·希区柯克', '约瑟夫·斯蒂凡诺/罗伯特·布洛克', '安东尼·博金斯/维拉·迈尔斯/约翰·加文', '165170');
INSERT INTO `tb_film_top250` VALUES ('191', 'https://movie.douban.com/subject/25724855/', '房间 Room', '8.8', '2015', '剧情/家庭', '爱尔兰/加拿大/英国/美国', '伦尼·阿伯拉罕森', '艾玛·多诺霍', '布丽·拉尔森/雅各布·特伦布莱/肖恩·布里吉格斯', '286865');
INSERT INTO `tb_film_top250` VALUES ('192', 'https://movie.douban.com/subject/1296909/', '虎口脱险 La grande vadrouille', '8.9', '1966', '喜剧/战争', '法国/英国', '热拉尔·乌里', '热拉尔·乌里/达妮埃尔·汤普森/马塞尔·朱利安', '路易·德·菲奈斯/布尔维尔/克劳迪奥·布鲁克', '170031');
INSERT INTO `tb_film_top250` VALUES ('193', 'https://movie.douban.com/subject/3011051/', '恐怖游轮 Triangle', '8.5', '2009', '剧情/悬疑/惊悚', '英国/澳大利亚', '克里斯托弗·史密斯', '克里斯托弗·史密斯', '梅利莎·乔治/利亚姆·海姆斯沃斯/迈克尔·多曼', '566473');
INSERT INTO `tb_film_top250` VALUES ('194', 'https://movie.douban.com/subject/26787574/', '奇迹男孩 Wonder', '8.6', '2017', '剧情/家庭/儿童', '美国/中国香港', '斯蒂芬·卓博斯基', '斯蒂芬·卓博斯基/斯蒂夫·康拉德/杰克·索恩', '雅各布·特伦布莱/朱莉娅·罗伯茨/伊扎贝拉·维多维奇', '415477');
INSERT INTO `tb_film_top250` VALUES ('195', 'https://movie.douban.com/subject/1307811/', '魔女宅急便 魔女の宅急便', '8.6', '1989', '动画/奇幻/冒险', '日本', '宫崎骏', '宫崎骏/角野荣子', '高山南/佐久间玲/户田惠子', '335549');
INSERT INTO `tb_film_top250` VALUES ('196', 'https://movie.douban.com/subject/1302827/', '人工智能 Artificial Intelligence: AI', '8.6', '2001', '剧情/科幻', '美国', '史蒂文·斯皮尔伯格', '布莱恩·奥尔迪斯/史蒂文·斯皮尔伯格/Ian Watson', '海利·乔·奥斯蒙/弗兰西丝·奥康纳/山姆·洛巴兹', '315627');
INSERT INTO `tb_film_top250` VALUES ('197', 'https://movie.douban.com/subject/1293460/', '雨中曲 Singin\' in the Rain', '9', '1952', '喜剧/爱情/歌舞', '美国', '斯坦利·多南/吉恩·凯利', '贝蒂·康登/阿多夫·格林', '吉恩·凯利/唐纳德·奥康纳/黛比·雷诺斯', '147866');
INSERT INTO `tb_film_top250` VALUES ('198', 'https://movie.douban.com/subject/1862151/', '疯狂的石头', '8.5', '2006', '喜剧/犯罪', '中国大陆/中国香港', '宁浩', '张承/宁浩/岳小军', '郭涛/刘桦/连晋', '573498');
INSERT INTO `tb_film_top250` VALUES ('199', 'https://movie.douban.com/subject/27622447/', '小偷家族 万引き家族', '8.7', '2018', '剧情/家庭/犯罪', '日本', '是枝裕和', '是枝裕和', '中川雅也/安藤樱/松冈茉优', '585844');
INSERT INTO `tb_film_top250` VALUES ('200', 'https://movie.douban.com/subject/10808442/', '爱在午夜降临前 Before Midnight', '8.8', '2013', '剧情/爱情', '美国/希腊', '理查德·林克莱特', '理查德·林克莱特/朱莉·德尔佩/伊桑·霍克', '伊桑·霍克/朱莉·德尔佩/肖姆斯·戴维-菲茨帕特里克', '229290');
INSERT INTO `tb_film_top250` VALUES ('201', 'https://movie.douban.com/subject/1300374/', '绿里奇迹 The Green Mile', '8.8', '1999', '剧情/悬疑/犯罪/奇幻', '美国', '弗兰克·德拉邦特', '弗兰克·德拉邦特/斯蒂芬·金', '汤姆·汉克斯/大卫·摩斯/迈克·克拉克·邓肯', '197534');
INSERT INTO `tb_film_top250` VALUES ('202', 'https://movie.douban.com/subject/1291879/', '罗生门 羅生門', '8.8', '1950', '剧情/悬疑/犯罪', '日本', '黑泽明', '黑泽明/桥本忍/芥川龙之介', '三船敏郎/京町子/森雅之', '219123');
INSERT INTO `tb_film_top250` VALUES ('203', 'https://movie.douban.com/subject/1291844/', '终结者2：审判日 Terminator 2: Judgment Day', '8.7', '1991', '动作/科幻', '美国/法国', '詹姆斯·卡梅隆', '詹姆斯·卡梅隆/小威廉·威谢尔', '阿诺·施瓦辛格/琳达·汉密尔顿/爱德华·福隆', '252586');
INSERT INTO `tb_film_top250` VALUES ('204', 'https://movie.douban.com/subject/3443389/', '海洋 Océans', '9.1', '2009', '纪录片', '法国/瑞士/西班牙/美国/阿联酋', '雅克·贝汉/ 雅克·克鲁奥德', '克里斯托夫·谢松/ 雅克·克鲁奥德/洛朗·德巴', '皮尔斯·布鲁斯南/雅克·贝汉/姜文', '130131');
INSERT INTO `tb_film_top250` VALUES ('205', 'https://movie.douban.com/subject/4739952/', '初恋这件小事 สิ่งเล็กเล็กที่เรียกว่า...รัก', '8.4', '2010', '剧情/喜剧/爱情', '泰国', '普特鹏·普罗萨卡·那·萨克那卡林/华森·波克彭', '普特鹏·普罗萨卡·那·萨克那卡林', '平采娜·乐维瑟派布恩/马里奥·毛瑞尔/苏达拉·布查蓬', '762230');
INSERT INTO `tb_film_top250` VALUES ('206', 'https://movie.douban.com/subject/1293964/', '魂断蓝桥 Waterloo Bridge', '8.8', '1940', '剧情/爱情/战争', '美国', '茂文·勒鲁瓦', '塞缪尔·N·贝尔曼/汉斯·拉莫/乔治·弗罗斯切尔', '费雯·丽/罗伯特·泰勒/露塞尔·沃特森', '199646');
INSERT INTO `tb_film_top250` VALUES ('207', 'https://movie.douban.com/subject/1295865/', '燃情岁月 Legends of the Fall', '8.8', '1994', '剧情/爱情/战争/西部', '美国', '爱德华·兹威克', '威廉·D·威特利夫/吉姆·哈里森/苏珊·希利迪', '布拉德·皮特/安东尼·霍普金斯/艾丹·奎因', '214611');
INSERT INTO `tb_film_top250` VALUES ('208', 'https://movie.douban.com/subject/1308857/', '可可西里', '8.8', '2004', '剧情/犯罪', '中国大陆/中国香港', '陆川', '陆川', '多布杰/张正阳/奇道', '209338');
INSERT INTO `tb_film_top250` VALUES ('209', 'https://movie.douban.com/subject/1292226/', '2001太空漫游 2001: A Space Odyssey', '8.8', '1968', '科幻/惊悚/冒险', '英国/美国', '斯坦利·库布里克', '亚瑟·克拉克/斯坦利·库布里克', '凯尔·杜拉/加里·洛克伍德/威廉姆·西尔维斯特', '200499');
INSERT INTO `tb_film_top250` VALUES ('210', 'https://movie.douban.com/subject/1937946/', '穿越时空的少女 時をかける少女', '8.6', '2006', '剧情/爱情/科幻/动画', '日本', '细田守', '奥寺佐渡子/筒井康隆', '仲里依纱/石田卓也/板仓光隆', '295223');
INSERT INTO `tb_film_top250` VALUES ('211', 'https://movie.douban.com/subject/1292329/', '牯岭街少年杀人事件 牯嶺街少年殺人事件', '8.8', '1991', '剧情/犯罪', '中国台湾', '杨德昌', '杨德昌/赖铭堂/杨顺清', '张震/杨静怡/张国柱', '184144');
INSERT INTO `tb_film_top250` VALUES ('212', 'https://movie.douban.com/subject/1293908/', '城市之光 City Lights', '9.3', '1931', '剧情/喜剧/爱情', '美国', '查理·卓别林', '查理·卓别林/Harry Clive/哈里·克罗克', '查理·卓别林/弗吉尼亚·切瑞尔/佛罗伦斯·李', '89211');
INSERT INTO `tb_film_top250` VALUES ('213', 'https://movie.douban.com/subject/26614893/', '完美陌生人 Perfetti sconosciuti', '8.5', '2016', '剧情/喜剧', '意大利', '保罗·杰诺维塞', '保罗·杰诺维塞/菲利波·博洛尼亚/保罗·克斯泰拉', '马可·贾利尼/卡夏·斯穆特尼亚克/爱德华多·莱奥', '402083');
INSERT INTO `tb_film_top250` VALUES ('214', 'https://movie.douban.com/subject/1438652/', '无耻混蛋 Inglourious Basterds', '8.6', '2009', '剧情/犯罪', '德国/美国', '昆汀·塔伦蒂诺', '昆汀·塔伦蒂诺', '布拉德·皮特/梅拉尼·罗兰/克里斯托弗·瓦尔兹', '352446');
INSERT INTO `tb_film_top250` VALUES ('215', 'https://movie.douban.com/subject/1292287/', '新龙门客栈 新龍門客棧', '8.6', '1992', '动作/爱情/武侠/古装', '中国香港/中国大陆', '李惠民', '徐克/张炭/吕晓禾', '张曼玉/林青霞/梁家辉', '317290');
INSERT INTO `tb_film_top250` VALUES ('216', 'https://movie.douban.com/subject/3075287/', '源代码 Source Code', '8.4', '2011', '科幻/悬疑/惊悚', '美国/加拿大', '邓肯·琼斯', '本·雷普利', '杰克·吉伦哈尔/维拉·法米加/米歇尔·莫纳汉', '604955');
INSERT INTO `tb_film_top250` VALUES ('217', 'https://movie.douban.com/subject/1305690/', '阿飞正传 阿飛正傳', '8.5', '1990', '剧情/爱情/犯罪', '中国香港', '王家卫', '王家卫', '张国荣/张曼玉/刘嘉玲', '359449');
INSERT INTO `tb_film_top250` VALUES ('218', 'https://movie.douban.com/subject/1303394/', '青蛇', '8.5', '1993', '剧情/爱情/奇幻/古装', '中国香港/中国大陆', '徐克', '李碧华/徐克', '张曼玉/王祖贤/赵文卓', '367209');
INSERT INTO `tb_film_top250` VALUES ('219', 'https://movie.douban.com/subject/1828115/', '色，戒', '8.5', '2007', '剧情/爱情/情色', '中国台湾/中国大陆/美国/中国香港', '李安', '王蕙玲/詹姆斯·夏慕斯/张爱玲', '梁朝伟/汤唯/陈冲', '483418');
INSERT INTO `tb_film_top250` VALUES ('220', 'https://movie.douban.com/subject/1760622/', '香水 Perfume: The Story of a Murderer', '8.5', '2006', '剧情/犯罪/奇幻', '德国/法国/西班牙/美国', '汤姆·提克威', '安德鲁·伯金/贝尔恩德·艾辛格/汤姆·提克威', '本·卫肖/艾伦·瑞克曼/蕾切儿·哈伍德', '419491');
INSERT INTO `tb_film_top250` VALUES ('221', 'https://movie.douban.com/subject/1308767/', '谍影重重2 The Bourne Supremacy', '8.7', '2004', '动作/悬疑/惊悚', '美国/德国', '保罗·格林格拉斯', '罗伯特·鲁德鲁姆/托尼·吉尔罗伊', '马特·达蒙/弗朗卡·波滕特/布莱恩·考克斯', '260310');
INSERT INTO `tb_film_top250` VALUES ('222', 'https://movie.douban.com/subject/1867345/', '遗愿清单 The Bucket List', '8.6', '2007', '剧情/喜剧/冒险', '美国', '罗伯·莱纳', '贾斯汀·扎克汉姆', '杰克·尼科尔森/摩根·弗里曼/西恩·海耶斯', '265906');
INSERT INTO `tb_film_top250` VALUES ('223', 'https://movie.douban.com/subject/2363506/', '地球上的星星 Taare Zameen Par', '8.9', '2007', '剧情/家庭/儿童', '印度', '阿米尔·汗', '阿莫尔·古普特', '达席尔·萨法瑞/阿米尔·汗/塔奈·切赫达', '150021');
INSERT INTO `tb_film_top250` VALUES ('224', 'https://movie.douban.com/subject/1428175/', '血钻 Blood Diamond', '8.7', '2006', '剧情/惊悚/冒险', '美国/德国', '爱德华·兹威克', '查尔斯·里维特', '莱昂纳多·迪卡普里奥/杰曼·翰苏/詹妮弗·康纳利', '254255');
INSERT INTO `tb_film_top250` VALUES ('225', 'https://movie.douban.com/subject/1419936/', '战争之王 Lord of War', '8.6', '2005', '剧情/犯罪', '美国/法国', '安德鲁·尼科尔', '安德鲁·尼科尔', '尼古拉斯·凯奇/布丽姬·穆娜/杰瑞德·莱托', '261358');
INSERT INTO `tb_film_top250` VALUES ('226', 'https://movie.douban.com/subject/1304102/', '谍影重重 The Bourne Identity', '8.6', '2002', '动作/悬疑/惊悚', '美国/德国/捷克', '道格·里曼', '托尼·吉尔罗伊/罗伯特·鲁德鲁姆/W·布莱克·赫伦', '马特·达蒙/弗朗卡·波滕特/克里斯·库珀', '311026');
INSERT INTO `tb_film_top250` VALUES ('227', 'https://movie.douban.com/subject/27059130/', '大佛普拉斯', '8.7', '2017', '剧情/喜剧/犯罪', '中国台湾', '黄信尧', '黄信尧', '庄益增/陈竹昇/戴立忍', '273428');
INSERT INTO `tb_film_top250` VALUES ('228', 'https://movie.douban.com/subject/1292528/', '猜火车 Trainspotting', '8.5', '1996', '剧情/犯罪', '英国', '丹尼·博伊尔', '埃文·威尔什/约翰·霍奇', '伊万·麦克格雷格/艾文·布莱纳/约翰尼·李·米勒', '339131');
INSERT INTO `tb_film_top250` VALUES ('229', 'https://movie.douban.com/subject/3592854/', '疯狂的麦克斯4：狂暴之路 Mad Max: Fury Road', '8.6', '2015', '动作/科幻/冒险', '澳大利亚/美国', '乔治·米勒', '乔治·米勒/布伦丹·麦卡锡/尼克·拉图里', '汤姆·哈迪/查理兹·塞隆/尼古拉斯·霍尔特', '368312');
INSERT INTO `tb_film_top250` VALUES ('230', 'https://movie.douban.com/subject/25807345/', '彗星来的那一夜 Coherence', '8.5', '2013', '科幻/悬疑/惊悚', '美国/英国', '詹姆斯·沃德·布柯特', '詹姆斯·沃德·布柯特/亚历克斯·马努吉安', '艾米丽·芭尔多尼/莫瑞·史特林/尼古拉斯·布兰登', '360532');
INSERT INTO `tb_film_top250` VALUES ('231', 'https://movie.douban.com/subject/2222996/', '步履不停 歩いても 歩いても', '8.8', '2008', '剧情/家庭', '日本', '是枝裕和', '是枝裕和', '阿部宽/夏川结衣/江原由希子', '181156');
INSERT INTO `tb_film_top250` VALUES ('232', 'https://movie.douban.com/subject/2213597/', '朗读者 The Reader', '8.6', '2008', '剧情/爱情', '美国/德国', '史蒂芬·戴德利', '戴维·黑尔/本哈德·施林克', '凯特·温丝莱特/大卫·克劳斯/拉尔夫·费因斯', '370202');
INSERT INTO `tb_film_top250` VALUES ('233', 'https://movie.douban.com/subject/2297265/', '浪潮 Die Welle', '8.7', '2008', '剧情/惊悚', '德国', '丹尼斯·甘塞尔', '丹尼斯·甘塞尔/彼得·图万斯/约翰尼·道金斯', '于尔根·福格尔/弗雷德里克·劳/马克思·雷迈特', '203654');
INSERT INTO `tb_film_top250` VALUES ('234', 'https://movie.douban.com/subject/26393561/', '小萝莉的猴神大叔 Bajrangi Bhaijaan', '8.4', '2015', '剧情/喜剧/动作', '印度', '卡比尔·汗', '卡比尔·汗/维杰耶德拉·普拉萨德', '萨尔曼·汗/哈莎莉·马洛特拉/卡琳娜·卡普尔', '355472');
INSERT INTO `tb_film_top250` VALUES ('235', 'https://movie.douban.com/subject/6874403/', '再次出发之纽约遇见你 Begin Again', '8.5', '2013', '喜剧/爱情/音乐', '美国', '约翰·卡尼', '约翰·卡尼', '凯拉·奈特莉/马克·鲁弗洛/亚当·莱文', '303511');
INSERT INTO `tb_film_top250` VALUES ('236', 'https://movie.douban.com/subject/1297518/', '九品芝麻官', '8.5', '1994', '喜剧/古装', '中国香港', '王晶', '王晶', '周星驰/吴孟达/张敏', '381439');
INSERT INTO `tb_film_top250` VALUES ('237', 'https://movie.douban.com/subject/25921812/', '驴得水', '8.3', '2016', '剧情/喜剧', '中国大陆', '周申/刘露', '周申/刘露', '任素汐/大力/刘帅良', '662268');
INSERT INTO `tb_film_top250` VALUES ('238', 'https://movie.douban.com/subject/1291568/', '东京物语 東京物語', '9.2', '1953', '剧情/家庭', '日本', '小津安二郎', '野田高梧/小津安二郎', '笠智众/原节子/杉村春子', '91342');
INSERT INTO `tb_film_top250` VALUES ('239', 'https://movie.douban.com/subject/25954475/', '聚焦 Spotlight', '8.8', '2015', '剧情/传记', '美国', '汤姆·麦卡锡', '乔希·辛格/汤姆·麦卡锡', '马克·鲁弗洛/迈克尔·基顿/瑞秋·麦克亚当斯', '208902');
INSERT INTO `tb_film_top250` VALUES ('240', 'https://movie.douban.com/subject/1309055/', '哈利·波特与火焰杯 Harry Potter and the Goblet of Fire', '8.5', '2005', '奇幻/冒险', '英国/美国', '迈克·内威尔', '史蒂夫·克洛夫斯/J·K·罗琳', '丹尼尔·雷德克里夫/艾玛·沃森/鲁伯特·格林特', '350824');
INSERT INTO `tb_film_top250` VALUES ('241', 'https://movie.douban.com/subject/1397546/', '追随 Following', '8.9', '1998', '悬疑/惊悚/犯罪', '英国', '克里斯托弗·诺兰', '克里斯托弗·诺兰', '杰里米·西奥伯德/亚历克斯·霍/露西·拉塞尔', '131981');
INSERT INTO `tb_film_top250` VALUES ('242', 'https://movie.douban.com/subject/5964718/', '一次别离 جدایی نادر از سیمین', '8.7', '2011', '剧情/家庭', '伊朗/法国', '阿斯哈·法哈蒂', '阿斯哈·法哈蒂', '佩曼·莫阿迪/蕾拉·哈塔米/萨瑞·巴亚特', '196381');
INSERT INTO `tb_film_top250` VALUES ('243', 'https://movie.douban.com/subject/1300117/', '千钧一发 Gattaca', '8.8', '1997', '剧情/科幻/惊悚', '美国', '安德鲁·尼科尔', '安德鲁·尼科尔', '伊桑·霍克/乌玛·瑟曼/裘德·洛', '174248');
INSERT INTO `tb_film_top250` VALUES ('244', 'https://movie.douban.com/subject/5908478/', '我爱你 그대를 사랑합니다', '9', '2011', '剧情/爱情', '韩国', '秋昌旼', '姜草/秋昌旼', '宋在浩/李顺载/尹秀晶', '110225');
INSERT INTO `tb_film_top250` VALUES ('245', 'https://movie.douban.com/subject/1291824/', '黑鹰坠落 Black Hawk Down', '8.7', '2001', '动作/历史/战争', '美国', '雷德利·斯科特', '肯·诺兰/马克·鲍登', '乔什·哈奈特/伊万·麦克格雷格/汤姆·塞兹摩尔', '209690');
INSERT INTO `tb_film_top250` VALUES ('246', 'https://movie.douban.com/subject/5300054/', '波西米亚狂想曲 Bohemian Rhapsody', '8.7', '2018', '剧情/同性/音乐/传记', '英国/美国', '布莱恩·辛格', '安东尼·麦卡滕/皮特·摩根', '拉米·马雷克/本·哈迪/约瑟夫·梅泽罗', '408613');
INSERT INTO `tb_film_top250` VALUES ('247', 'https://movie.douban.com/subject/27615441/', '网络谜踪 Searching', '8.6', '2018', '剧情/悬疑/惊悚/犯罪', '美国/俄罗斯', '阿尼什·查甘蒂', '阿尼什·查甘蒂/赛弗·奥哈尼安', '约翰·赵/米切尔·拉/黛博拉·梅辛', '381809');
INSERT INTO `tb_film_top250` VALUES ('248', 'https://movie.douban.com/subject/27191492/', '四个春天', '8.9', '2017', '纪录片/家庭', '中国大陆', '陆庆屹', '陆运坤/李桂贤/陆庆伟', null, '118470');
INSERT INTO `tb_film_top250` VALUES ('249', 'https://movie.douban.com/subject/1292233/', '发条橙 A Clockwork Orange', '8.6', '1971', '剧情/科幻/犯罪', '英国/美国', '斯坦利·库布里克', '斯坦利·库布里克/安东尼·伯吉斯', '马尔科姆·麦克道威尔/帕特里克·马基/迈克尔·贝茨', '280402');
INSERT INTO `tb_film_top250` VALUES ('250', 'https://movie.douban.com/subject/1294638/', 'E.T. 外星人 E.T.: The Extra-Terrestrial', '8.6', '1982', '剧情/科幻', '美国', '史蒂文·斯皮尔伯格', '梅丽莎·马西森', '亨利·托马斯/迪·沃伦斯/罗伯特·麦克纳夫顿', '259458');
