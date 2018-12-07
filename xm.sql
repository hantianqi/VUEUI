/*排行榜*/
USE xm;
CREATE TABLE `xm_ui_index`(
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `title` varchar(64) default NULL,
  `details` varchar(128) default NULL,
  `pic` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
);

INSERT INTO `xm_ui_index` VALUES (null, '1', '甜美的咬痕', '锐思+伊凯' , 'http://127.0.0.1:3000/img/index/SiVs37kAE.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '2', '城市王子与土著少女', '天极焉加' , 'http://127.0.0.1:3000/img/index/ywt6c44v6.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '3', '前任战争', 'SASA夏蒂(主笔)＋快看漫画团队（编剧）' , 'http://127.0.0.1:3000/img/index/jOI85yhTX.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '4', '恶魔的耳朵', '瓶瓶君（主笔）+夏希（主笔）+快看漫画团队（编剧）' , 'http://127.0.0.1:3000/img/index/M7DfKeZEY.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '5', '捡到只小狐狸', '通幽/夏天岛+叨叨君/夏天岛' , 'http://127.0.0.1:3000/img/index/C1v4hERS7.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '6', '女巨人也要谈恋爱', '清英' , 'http://127.0.0.1:3000/img/index/tzyixA6Er.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '7', '当校霸爱上学霸', '灿灿/夏天岛' , 'http://127.0.0.1:3000/img/index/v3P0O1bTV.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '8', '我男票是锦衣卫', '虹君' , 'http://127.0.0.1:3000/img/index/rLw4vg3sg.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '9', '贫穷父女', 'Kula' , 'http://127.0.0.1:3000/img/index/8umq3e3mp.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '10', '反转现实', '天极焉加+快看漫画团队' , 'http://127.0.0.1:3000/img/index/iulm17nwf.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '11', '蜜糖陷阱-《感谢你是爱我的》系列4', '路边张三' , 'http://127.0.0.1:3000/img/index/B1DvQqpep.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '12', '教主，注意名声！', '鲸鱼合合' , 'http://127.0.0.1:3000/img/index/apwxn580a.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '13', '大圣和小夭', '妖妖小精' , 'http://127.0.0.1:3000/img/index/fem4et0qb.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '14', '与爱有关', '空枣' , 'http://127.0.0.1:3000/img/index/g13ss38ti.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '15', '别闹！我想静静……', '卞丽君' , 'http://127.0.0.1:3000/img/index/G331Csq3E.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '16', '怦然心动', '※kid岁' , 'http://127.0.0.1:3000/img/index/i2immgnut.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '17', '也许，未来', 'bless' , 'http://127.0.0.1:3000/img/index/5hoe7jv9s.webp-w750.jpg');
INSERT INTO `xm_ui_index` VALUES (null, '18', '论叛逆少女的恋爱方式', '梁赫文' , 'http://127.0.0.1:3000/img/index/5eejs6w95.webp-w750.jpg');

/*主编力荐*/
USE xm;
CREATE TABLE `xm_ui_zb`(
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
);
INSERT INTO `xm_ui_zb` VALUES (null, '恋是樱草色' , 'http://127.0.0.1:3000/img/zb/txoq04r10.webp-w320.w.jpg');
INSERT INTO `xm_ui_zb` VALUES (null, '我的独眼恶魔' , 'http://127.0.0.1:3000/img/zb/lomskhbth.webp-w320.w.jpg');
INSERT INTO `xm_ui_zb` VALUES (null, '蜜糖陷阱-《感谢你是爱我的》系列4' , 'http://127.0.0.1:3000/img/zb/AxWytIq4H.webp-w320.w.jpg');
INSERT INTO `xm_ui_zb` VALUES (null, '妖言惑道' , 'http://127.0.0.1:3000/img/zb/eKHMMmOxH.webp-w320.w.jpg');
INSERT INTO `xm_ui_zb` VALUES (null, '烟雨冢' , 'http://127.0.0.1:3000/img/zb/jpbflrtwn.webp-w320.w.jpg');
INSERT INTO `xm_ui_zb` VALUES (null, '零分偶像' , 'http://127.0.0.1:3000/img/zb/3FwRwx4tT.webp-w320.w.jpg');

/*所有作品*/
USE xm;
CREATE TABLE `xm_ui_sy`(
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
);
INSERT INTO `xm_ui_sy` VALUES (null, '甜美的咬痕' , 'http://127.0.0.1:3000/img/sy/5MTLzw5TQ.webp-w320.w.jpg');
INSERT INTO `xm_ui_sy` VALUES (null, 'DOLO命运胶囊' , 'http://127.0.0.1:3000/img/sy/Md4P9Uo5i.webp-w320.w.jpg');
INSERT INTO `xm_ui_sy` VALUES (null, '渐近的心跳' , 'http://127.0.0.1:3000/img/sy/UKNdShXbt.webp-w320.w.jpg');
INSERT INTO `xm_ui_sy` VALUES (null, '成也萧河' , 'http://127.0.0.1:3000/img/sy/t8n3xu72a.webp-w320.w.jpg');
INSERT INTO `xm_ui_sy` VALUES (null, '怦然心动' , 'http://127.0.0.1:3000/img/sy/mr07xq2sd.webp-w320.w.jpg');
INSERT INTO `xm_ui_sy` VALUES (null, '我男票是锦衣卫' , 'http://127.0.0.1:3000/img/sy/7dKtSXKv8.webp-w320.w.jpg');

/*分类*/
USE xm;
CREATE TABLE `xm_ui_fl`(
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  `details` varchar(128) default NULL,
  `click` varchar(10) default NULL,
  `appraised` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
);
INSERT INTO `xm_ui_fl` VALUES (null,'甜美的咬痕' ,'http://127.0.0.1:3000/img/index/SiVs37kAE.webp-w750.jpg','恋爱 奇幻','1.88亿','618万');
INSERT INTO `xm_ui_fl` VALUES (null,'DOLO命运胶囊' ,'http://127.0.0.1:3000/img/index/j64poq2kc.webp-w750.jpg','校园 奇幻','3092万','102万');
INSERT INTO `xm_ui_fl` VALUES (null,'渐近的心跳' ,'http://127.0.0.1:3000/img/index/jEonvuGhn.webp-w750.jpg','恋爱 校园','352万','11万');
INSERT INTO `xm_ui_fl` VALUES (null,'成也萧河' ,'http://127.0.0.1:3000/img/index/B7NLRo8WV.webp-w750.jpg','恋爱 校园 正能量','705万','26万');
INSERT INTO `xm_ui_fl` VALUES (null,'怦然心动' ,'http://127.0.0.1:3000/img/index/i2immgnut.webp-w750.jpg','剧情 治愈 校园','1.65亿','629万');
INSERT INTO `xm_ui_fl` VALUES (null,'我男票是锦衣卫' ,'http://127.0.0.1:3000/img/index/rLw4vg3sg.webp-w750.jpg','恋爱 古风','1.12亿','231万');
INSERT INTO `xm_ui_fl` VALUES (null,'捡到只小狐狸' ,'http://127.0.0.1:3000/img/index/C1v4hERS7.webp-w750.jpg','恋爱 奇幻','1.19亿','253万');
INSERT INTO `xm_ui_fl` VALUES (null,'女巨人也要谈恋爱' ,'http://127.0.0.1:3000/img/index/tzyixA6Er.webp-w750.jpg','恋爱 剧情 都市','1.27亿','249万');
INSERT INTO `xm_ui_fl` VALUES (null,'当校霸爱上学霸' ,'http://127.0.0.1:3000/img/index/v3P0O1bTV.webp-w750.jpg','恋爱 校园','5440万','90万');
INSERT INTO `xm_ui_fl` VALUES (null,'恶魔的耳朵' ,'http://127.0.0.1:3000/img/index/M7DfKeZEY.webp-w750.jpg','恋爱 剧情 总裁','2913万','49万');
INSERT INTO `xm_ui_fl` VALUES (null,'蜜糖陷阱-《感谢你是爱我的》系列4' ,'http://127.0.0.1:3000/img/index/B1DvQqpep.webp-w750.jpg','恋爱 都市','5221万','99万');
INSERT INTO `xm_ui_fl` VALUES (null,'前任战争' ,'http://127.0.0.1:3000/img/index/jOI85yhTX.webp-w750.jpg','恋爱 奇幻 都市','1358万','37万');
INSERT INTO `xm_ui_fl` VALUES (null,'零分偶像' ,'http://127.0.0.1:3000/img/index/cK2KMIKcq.webp-w750.jpg','恋爱','8912万','297万');
INSERT INTO `xm_ui_fl` VALUES (null,'朝花夕拾' ,'http://127.0.0.1:3000/img/index/03wkn35ez.webp-w750.jpg','恋爱 校园','1.1亿','411万');
INSERT INTO `xm_ui_fl` VALUES (null,'一言不合就吸血' ,'http://127.0.0.1:3000/img/index/a12u4dw2c.webp-w750.jpg','恋爱 奇幻','1784万','30万');
INSERT INTO `xm_ui_fl` VALUES (null,'皇帝的独生女' ,'http://127.0.0.1:3000/img/index/1x30niyh6.webp-w750.jpg','奇幻 爆笑 畅销','786万','11万');
INSERT INTO `xm_ui_fl` VALUES (null,'也许，未来' ,'http://127.0.0.1:3000/img/index/5hoe7jv9s.webp-w750.jpg','恋爱 奇幻 校园','1891万','18万');
INSERT INTO `xm_ui_fl` VALUES (null,'贫穷父女' ,'http://127.0.0.1:3000/img/index/8umq3e3mp.webp-w750.jpg','爆笑 正能量','4407万','75万');
INSERT INTO `xm_ui_fl` VALUES (null,'教主，注意名声！' ,'http://127.0.0.1:3000/img/index/apwxn580a.webp-w750.jpg','日常 古风','3210万','42万');
INSERT INTO `xm_ui_fl` VALUES (null,'妃·夕妍雪' ,'http://127.0.0.1:3000/img/index/sc2vhmbcl.webp-w750.jpg','古风','2641万','41万');

/*热门*/
USE xm;
CREATE TABLE `xm_ui_rm`(
  `id` int(11) NOT NULL auto_increment,
  `classify` varchar(64) default NULL,
  `title` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  `details` varchar(128) default NULL,
  `click` varchar(10) default NULL,
  `appraised` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
);
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','黑夜有所斯','胡桃(主笔+编剧)+VedaCcc(编剧)','http://127.0.0.1:3000/img/list/7wHcTdr3T.webp-w750.jpg','第8话 你是我的人','11万','3316');
INSERT INTO `xm_ui_rm` VALUES (null,'奇幻','魔道祖师','墨香铜臭(原著)+落地成球','http://127.0.0.1:3000/img/list/55o7uuziy.webp-w750.jpg','第49话 “一问三不知”','13万','5397');
INSERT INTO `xm_ui_rm` VALUES (null,'奇幻','哪里来的大宝贝','闻人鸟事多+无限作业+弥尔','http://127.0.0.1:3000/img/list/e1ZYx8BdW.webp-w750.jpg','第19话 爸比厉害了！','62213','1454');
INSERT INTO `xm_ui_rm` VALUES (null,'穿越','女王的手术刀','流人(原著)+mini(主笔)+Kidarient(出品)','http://127.0.0.1:3000/img/list/Bpwt5j2qk.webp-w750.jpg','第49话 我想赎罪','16万','3241');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','零分偶像','青庭','http://127.0.0.1:3000/img/list/cK2KMIKcq.webp-w750.jpg','第138话 结束与开始','59543','1054');
INSERT INTO `xm_ui_rm` VALUES (null,'奇幻','爱上傲娇龙王爷','三鲜伊面(主笔)+秋水长天/野生组(编剧)','http://127.0.0.1:3000/img/list/oVKxs5KCP.webp-w750.jpg','第23话 有点奇怪？','43806','1032');
INSERT INTO `xm_ui_rm` VALUES (null,'奇幻','据说我是王的女儿','图/文:Kim Rek-na:Bi Chu:多蕴文化','http://127.0.0.1:3000/img/list/QqymdbfaU.webp-w750.jpg','第73话 吃我一拳','50686','1008');
INSERT INTO `xm_ui_rm` VALUES (null,'彩虹','妖言惑道','井绳','http://127.0.0.1:3000/img/list/frKr4QFBs.webp-w750.jpg','第76话 坏人的特权','75565','1668');
INSERT INTO `xm_ui_rm` VALUES (null,'青春','薄荷之夏','火禾','http://127.0.0.1:3000/img/list/f14slnokb.webp-w750.jpg','第41话 为了保护她','49710','656');
INSERT INTO `xm_ui_rm` VALUES (null,'古风','美人老矣','HIU(主笔)+落棋砂(编剧)','http://127.0.0.1:3000/img/list/hqo8i2chd.webp-w750.jpg','第43话 发现端倪','32055','1034');
INSERT INTO `xm_ui_rm` VALUES (null,'爆笑','猫爪之下','角年千兆','http://127.0.0.1:3000/img/list/sretqipd1.webp-w750.jpg','第72话 螃蟹大战','35507','532');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','仙草有灵','凉腾(主笔)+快看漫画团队(编剧)','http://127.0.0.1:3000/img/list/1ii30f7c8.webp-w750.jpg','第54话 不及','26875','382');
INSERT INTO `xm_ui_rm` VALUES (null,'治愈','冰花绽放','愚人','http://127.0.0.1:3000/img/list/nFHlHJ0Lk.webp-w750.jpg','序章：花滑少女','3141','108');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','总裁大人非我不可','十七陌(原著)+东东呛(主笔)','http://127.0.0.1:3000/img/list/oNAY2CgHb.webp-w750.jpg','第9话 笼中鸟','26366','513');
INSERT INTO `xm_ui_rm` VALUES (null,'奇幻','哑舍零·秦失其鹿','玄色(原著)+晓泊','http://127.0.0.1:3000/img/list/TTWPhXTJq.webp-w750.jpg','第26话 锡当卢(2)','10074','501');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','停留在这个世纪','莉莉君','http://127.0.0.1:3000/img/list/jb76pt39f.webp-w750.jpg','第48话 逃离与守护','18664','163');
INSERT INTO `xm_ui_rm` VALUES (null,'奇幻','斗罗大陆','风炫动画','http://127.0.0.1:3000/img/list/42ill8dqi.webp-w750.jpg','第59话 天斗皇家学院','17129','204');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','女财神今天也很穷','西风动漫','http://127.0.0.1:3000/img/list/9FWzDGqYu.webp-w750.jpg','第19话 带你摘星星','7829','105');
INSERT INTO `xm_ui_rm` VALUES (null,'彩虹','人面桃花两相宜','百鬼随行','http://127.0.0.1:3000/img/list/vgtoimftw.webp-w750.jpg','第35话 黎安','27856','486');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','别跑，我的白马王子','ine--','http://127.0.0.1:3000/img/list/fKWMJbLmM.webp-w750.jpg','第25话 秘密恋爱的开始','3303','108');
INSERT INTO `xm_ui_rm` VALUES (null,'青春','怦然心动','❀kid岁','http://127.0.0.1:3000/img/list/i2immgnut.webp-w750.jpg','第63话 相处','14万','6109');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','奉旨出征','陆灵君','http://127.0.0.1:3000/img/list/roOhzFryp.webp-w750.jpg','第15话 公主驾到','28200','822');
INSERT INTO `xm_ui_rm` VALUES (null,'青春','泽上寂寞萤火','千本','http://127.0.0.1:3000/img/list/wE8QezA6v.webp-w750.jpg','第17话 暗潮起伏','53381','1794');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','一言不合就吸血','绯小月','http://127.0.0.1:3000/img/list/a12u4dw2c.webp-w750.jpg','第54话 来自哪个女人的阴影','31900','644');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','她与他的平行时空','月色樱草','http://127.0.0.1:3000/img/list/DfwGSZCYF.webp-w750.jpg','序章 穿梭于两个时空的恋爱','9451','183');
INSERT INTO `xm_ui_rm` VALUES (null,'恋爱','山神与小枣','虫虫家家+乌鸦散步','http://127.0.0.1:3000/img/list/gs4n7er3v.webp-w750.jpg','回归更新啦！','23019','1493');
INSERT INTO `xm_ui_rm` VALUES (null,'校园','晨星未落时','葵子','http://127.0.0.1:3000/img/list/ub90jygp9.webp-w750.jpg','第71话 热搜榜','10266','146');
INSERT INTO `xm_ui_rm` VALUES (null,'宫斗','神医嫡女','三福动漫','http://127.0.0.1:3000/img/list/DqbZHHYbK.webp-w750.jpg','第95话 以牙还牙','15961','162');
INSERT INTO `xm_ui_rm` VALUES (null,'校园','渐进的心跳','橘枳','http://127.0.0.1:3000/img/list/jEonvuGhn.webp-w750.jpg','第14话 睡不着的夜晚','20万','4362');
INSERT INTO `xm_ui_rm` VALUES (null,'治愈','捡到只小狐狸','通幽/夏天岛+叨叨君/夏天岛','http://127.0.0.1:3000/img/list/C1v4hERS7.webp-w750.jpg','第57话 药','26万','4264');

/*用户信息*/
USE xm;
CREATE TABLE `xm_user`(
  `uid` int(11) NOT NULL auto_increment,
  `account` varchar(64) default NULL,         #账号
  `password` varchar(64) default NULL,        #密码
  `username` varchar(8) default NULL,         #用户名
  `email` varchar(64) default NULL,           #邮箱
  `phone` varchar(16) default NULL,            #电话
  PRIMARY KEY  (`uid`)
);
INSERT INTO `xm_user` VALUES(null,'z123456','z123456','Tom','123456@qq.com','15736498546');
INSERT INTO `xm_user` VALUES(null,'p123456','p123456','Jerry','jerry@qq.com','13248952348');
INSERT INTO `xm_user` VALUES(null,'u123456','u123456','David','david@tedu.com','15736498546');

/*作品章节*/
USE xm;
CREATE TABLE `xm_news`(
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `pic` varchar(128) default NULL,
  `time` varchar(128) default NULL,
  `click` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
);
INSERT INTO `xm_news` VALUES (null,'序章 逆天魔女的禁忌守护' ,'http://127.0.0.1:3000/img/news/Dt0mMUyXi.webp-w750.jpg','09-30','14万');
INSERT INTO `xm_news` VALUES (null,'第1话 月隐的魔女' ,'http://127.0.0.1:3000/img/cRWdjIYT1.webp-w750.jpg','10-01','39万');
INSERT INTO `xm_news` VALUES (null,'第2话 月色真美' ,'http://127.0.0.1:3000/img/news/60RAPcl32.webp-w750.jpg','10-08','28万');
INSERT INTO `xm_news` VALUES (null,'第3话 魔女的契约' ,'http://127.0.0.1:3000/img/news/32zJUKzDm.webp-w750.jpg','10-15','26万');
INSERT INTO `xm_news` VALUES (null,'第4话 别想动我的人' ,'http://127.0.0.1:3000/img/news/OSNdz2ASz.webp-w750.jpg','10-22','25万');
INSERT INTO `xm_news` VALUES (null,'第5话 猩红领域' ,'http://127.0.0.1:3000/img/news/fyld1vrEM.webp-w750.jpg','10-29','24万');
INSERT INTO `xm_news` VALUES (null,'第6话 同样的月隐' ,'http://127.0.0.1:3000/img/news/JuYrrLr4p.webp-w750.jpg','11-05','24万');
INSERT INTO `xm_news` VALUES (null,'第7话 想要保护这个家' ,'http://127.0.0.1:3000/img/news/OsZDLNVIx.webp-w750.jpg','11-12','20万');
INSERT INTO `xm_news` VALUES (null,'第8话 你是我的人' ,'http://127.0.0.1:3000/img/news/EA6UPuF9W.webp-w750.jpg','11-19','16万');

/*作品详情*/
USE xm;
CREATE TABLE `xm_newslist`(
  `id` int(11) NOT NULL auto_increment,
  `pic` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
);
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/nbMHUqITG.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/eGGwHbKP8.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/GwJE6kgBY.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/6SxINJRQb.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/zY3R0xxAB.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/ndqnSbva8.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/K2DO72fwC.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/A5pZmWgcR.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/jO4sVbSvr.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/wtc16P7RU.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/zXTr8uuFY.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/JXr9msAFa.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/GkJ35oT1u.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/ysr7sCZgZ.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/NDZh9u3Q5.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/7K999CfNN.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/r0O71HG0N.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/PvWq1PIO4.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/mRnAt4EUD.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/4zmzpZRWv.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/c4psbOEbU.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/JbkFZp8hP.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/3oksGlaco.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/WzrIR3Bt7.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/UZ8Ee1QrK.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/N1bwjdGQK.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/znvTSuSju.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/92nIzs8OQ.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/SDSlb0vm1.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/0UYyh9H6V.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/1ETRDWcQ8.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/RSyyoduvy.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/vXDE1hLyp.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/5i6RdC4A0.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/xMl3dApog.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/MuSFE26Au.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/3a1viML39.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/9hMLGjK7w.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/WIFeaQgIC.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/44mzGAMGw.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/l8qgxtOlI.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/jmnM2YIQZ.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/hV19kErpO.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/pKMVaII0J.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/esgmGwIRv.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/Lk5j7MVEV.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/A0qZfNhMx.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/yMhvlhiFv.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/OJTRBvkK0.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/UpCuhL9T8.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/PSUgapBE6.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/ILmLb4sGE.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/SSmvNfVUc.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/N6DaQiFYB.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/J9K0J2uIV.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/w1YEY2qmF.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/fsXnb9og9.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/H5bjX3hu0.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/RBMUDikQD.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/k818MqO1v.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/fWNY1s2iE.webp-w750.jpg');
INSERT INTO `xm_newslist` VALUES (null,'http://127.0.0.1:3000/img/newslist/D4YhwJOfz.webp-w750.jpg');


USE xm;
CREATE TABLE xm_ui_list(
 id    INT PRIMARY KEY AUTO_INCREMENT, 
 title VARCHAR(128),
 ctime DATETIME,
 img_url VARCHAR(255),
 point INT
);
INSERT INTO xm_ui_list VALUES(null,'..1',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..2',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..3',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..4',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..5',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..6',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..7',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..8',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..9',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..10',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..11',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..12',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..13',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..14',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..15',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..16',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..17',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..18',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..19',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..20',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..21',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..22',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..23',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..24',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..25',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..26',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..27',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..28',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);
INSERT INTO xm_ui_list VALUES(null,'..29',now(),"http://127.0.0.1:3000/img/muwu.jpg",0);