/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : cAuth

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-06-18 17:43:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `alt` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `summary` varchar(1000) NOT NULL,
  `price` varchar(100) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('20', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '1');
INSERT INTO `books` VALUES ('21', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '5');
INSERT INTO `books` VALUES ('22', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('23', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '2');
INSERT INTO `books` VALUES ('24', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('25', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '1');
INSERT INTO `books` VALUES ('26', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('27', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('28', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '1');
INSERT INTO `books` VALUES ('29', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('30', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '1');
INSERT INTO `books` VALUES ('31', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('32', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '0');
INSERT INTO `books` VALUES ('33', '9787111376613', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript权威指南(第6版)', 'https://img3.doubanio.com/view/subject/m/public/s8958854.jpg', 'https://book.douban.com/subject/10549733/', '机械工业出版社华章公司', '本书是程序员学习核心JavaScript语言和由Web浏览器定义的JavaScript API的指南和综合参考手册。\n第6版涵盖HTML 5和ECMAScript 5。很多章节完全重写，以便与时俱进，紧跟当今的最佳Web开发实践。本书新增章节描述了jQuery和服务器端JavaScript。\n本书适合那些希望学习Web编程语言的初、中级程序员和希望精通JavaScript的JavaScript程序员阅读。', '139.00元', '8.8', 'JavaScript 826,Web前端开发 280,犀牛书 254,前端 187,编程 125,前端开发 125,Web开发 116,计算机 114', 'David Flanagan', '1');
INSERT INTO `books` VALUES ('34', '9787115437303', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '深入React技术栈', 'https://img3.doubanio.com/view/subject/m/public/s29162154.jpg', 'https://book.douban.com/subject/26918038/', '人民邮电出版社', '全面讲述React技术栈的第一本原创图书，pure render专栏主创倾力打造\n覆盖React、Flux、Redux及可视化，帮助开发者在实践中深入理解技术和源码\n前端组件化主流解决方案，一本书玩转React“全家桶”\n本书讲解了非常多的内容，不仅介绍了面向普通用户的API、应用架构和周边工具，还深入介绍了底层实现。此外，本书非常重视实战，每一节都有实际的例子，细节丰富。我从这本书里学到了很多东西，强烈推荐！\n——阮一峰，蚂蚁金服技术专家，国内技术圈知名博主，《ES 6标准入门（第2版）》作者\nReact从诞生起就颠覆了诸多传统前端开发的“铁律”，这种破旧立新开启了前端开发全新的时代。它的用法和理念，代表了现在和未来几年前端技术的潮流风向。如果不想落伍，最好进行系统学习。实践出真知，从牛人的实践中收获自己的真知，恐怕是最好的捷径。这是我看到的第一本React中文原创著作，读来倍感亲切。\n——张克军，豆瓣前端专家，国内技术圈知名博主，前端布道师\n本书内容翔实，一扫“文档说明书”之风，有大量作者的实战经验。由浅入深，无论你是 React 初学者，还是进阶人士，本书都值得一读！\n——寸志，陆金所前端架构师，《前端外刊评论》发起人\n本书从几个维度去介绍 React。一是作为 View 库，它怎么实现组件化，以及它背后的实现原理。二是扩展到 Flux 应用架构及重要的衍生品 Redux，它们怎么与 React 结合做应用开发。三是对 React 与 server 的碰撞产生的一些思考。四是讲述它在可视化方面的优势与劣势。\n本书适合有一定经验的前端开发人员阅读。\n陈屹\n前端架构师，就职于阿里巴巴。热衷开源事业，长年专注于前端架构、数据可视化、Node.js等领域，知乎专栏pure render的创办人。', 'CNY 79.00', '8.2', 'React 117,Web前端 61,JavaScript 52,前端 24,Web开发 20,前端开发 19,编程 17,技术 14', '陈屹', '3');
INSERT INTO `books` VALUES ('35', '9787121331565', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'Vue移动开发实战技巧', 'https://img3.doubanio.com/view/subject/m/public/s29662615.jpg', 'https://book.douban.com/subject/27662351/', '电子工业出版社', '内容简介\nVue.js是一个渐进式的JavaScript 框架，与其他重量级框架不同的是，Vue 采用自底向上增量开发的设计。Vue 的核心库只关注视图层，它不仅易于上手，还便于与第三方库或既有项目整合。作为2016年社区最火的前端框架，越来越多的公司都在尝试用Vue来开发自己的项目。本书主要以项目维度，站在实战的角度，从项目的搭建，项目开发，到项目的优化，结合实际，多维度介绍了Vue.js。本书从实战场景出发，结合各种实用demo，结合开发环境构建，从无到有，剖析原理，全面介绍Vue2.0的实用技巧。后面几章重点讲解Vue内部实现机制，针对各种业务形态的支持以及网站调优方等等，是Vue技术体系追随者不可多得的实战宝典。', '58', '0', '移动 3,开发 3,前端 3,Vue 3,互联网 1', '李利德', '4');
INSERT INTO `books` VALUES ('36', '9787508665849', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '区块链技术驱动金融', 'https://img1.doubanio.com/view/subject/m/public/s29487148.jpg', 'https://book.douban.com/subject/26860970/', '中信出版社,中信出版集团', '从数字货币及智能合约技术层面，解读了区块链技术在金融领域的运用。“如果你正在寻找一本在技术层面解释比特币是如何运作的，并且你有一定计算机科学和编程的基本知识，这本书应该很适合你。”\n《区块链：技术驱动金融》回答了一系列关于比特币如何运用区块链技术运作的问题，并且着重讲述了各种技术功能，以及未来会形成的网络。比特币是如何运作的？它因何而与众不同？你的比特币安全吗？比特币用户如何匿名？区块链如何帮助比特币实现没有身份的共识？我们可以在比特币这一平台上创建什么应用程序？加密数字货币可以被监管吗？创建一种新的数字货币将会带来什么样的变化？未来将会如何发展？\n读完这本书，你会了解到所有比特币和其他数字货币相关的知识，对区块链技术具备基础性认识，能够区别那些完全虚构的故事。你将会对于需要什么样的安全软件，如何与比特币网络进行交互有了基础概念，也可以将区块链的概念整合应用于自己的项目中。你，将会成为时代的引领者！', 'CNY 79.00', '8.3', '区块链 789,金融科技 321,比特币 280,金融 262,互联网 220,计算机 175,技术 145,新经济 132', '阿尔文德·纳拉亚南,约什·贝努,爱德华·费尔顿,安德鲁·米勒,史蒂文·戈德费德', '1');
INSERT INTO `books` VALUES ('37', '9787115351531', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '图解HTTP', 'https://img3.doubanio.com/view/subject/m/public/s27283822.jpg', 'https://book.douban.com/subject/25863515/', '人民邮电出版社', '本书对互联网基盘——HTTP协议进行了全面系统的介绍。作者由HTTP协议的发展历史娓娓道来，严谨细致地剖析了HTTP协议的结构，列举诸多常见通信场景及实战案例，最后延伸到Web安全、最新技术动向等方面。本书的特色为在讲解的同时，辅以大量生动形象的通信图例，更好地帮助读者深刻理解HTTP通信过程中客户端与服务器之间的交互情况。读者可通过本书快速了解并掌握HTTP协议的基础，前端工程师分析抓包数据，后端工程师实现REST API、实现自己的HTTP服务器等过程中所需的HTTP相关知识点本书均有介绍。\n本书适合Web开发工程师，以及对HTTP协议感兴趣的各层次读者。', '49.00元', '8.1', 'HTTP 1040,网络 500,计算机 448,协议 298,互联网 278,web 185,Web 174,网络编程 149', '【日】上野宣', '11');
INSERT INTO `books` VALUES ('38', '9787536692930', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '三体', 'https://img1.doubanio.com/view/subject/m/public/s2768378.jpg', 'https://book.douban.com/subject/2567698/', '重庆出版社', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\n人类的末日悄然来临。', '23.00', '8.8', '科幻 47086,刘慈欣 37150,三体 25522,科幻小说 19861,中国 15868,小说 14391,中国科幻 13285,硬科幻 13139', '刘慈欣', '2');
INSERT INTO `books` VALUES ('39', '9787010009230', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '毛泽东选集 第二卷', 'https://img1.doubanio.com/view/subject/m/public/s23005817.jpg', 'https://book.douban.com/subject/1125026/', '人民出版社', '这部选集，包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错讹，有些重要的著作又没有收进去。现在的这部选集，是按照中国共产党成立后所经历的各个历史时期并且按照著作年月次序而编辑的。这部选集尽可能地搜集了一些为各地方过去印行的集子还没有包括在内的重要著作。选集中的各篇著人，都经著者校阅过，其中有些地方著者曾作了一些文字上的修正，也有个别的文章曾作了一些内容上的补充和修改。', '23.00元', '9.1', '毛泽东 330,政治 194,毛泽东选集 190,哲学 142,革命 81,马克思主义 72,历史 71,政经战略 66', '毛泽东', '10');
INSERT INTO `books` VALUES ('40', '9787115275790', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'JavaScript高级程序设计（第3版）', 'https://img3.doubanio.com/view/subject/m/public/s8958650.jpg', 'https://book.douban.com/subject/10546125/', '人民邮电出版社', '本书是JavaScript 超级畅销书的最新版。ECMAScript 5 和HTML5 在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript 增添了很多适应未来发展的新特性。本书这一版除增加5 章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript 语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax 与Comet 服务器端通信，HTML5 表单、媒体、Canvas（包括WebGL）及Web Workers、地理定位、跨文档传递消息、客户端存储（包括IndexedDB）等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。本书附录展望了未来的API 和ECMAScript Harmony 规范。\n本书适合有一定编程经验的Web 应用开发人员阅读，也可作为高校及社会实用技术培训相关专业课程的教材。', '99.00元', '9.3', 'JavaScript 2123,Web前端开发 956,前端开发 587,前端 448,javascript 444,编程 391,Web开发 356,计算机 350', '[美] Nicholas C. Zakas', '1');
INSERT INTO `books` VALUES ('41', '9787115282828', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '数学之美', 'https://img3.doubanio.com/view/subject/m/public/s9114855.jpg', 'https://book.douban.com/subject/10750155/', '人民邮电出版社', '几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，得到读者高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔可夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣。\n今年，作者吴军博士几乎把所有文章都重写了一遍，为的是把高深的数学原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。读者通过具体的例子学到的是思考问题的方式 —— 如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。', '45.00元', '8.7', '数学 11323,计算机 4759,科普 3903,吴军 2939,计算机科学 2088,互联网 1868,科学 1233,Programming 727', '吴军', '7');
INSERT INTO `books` VALUES ('42', '9787508051000', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '非暴力沟通', 'https://img1.doubanio.com/view/subject/m/public/s9346487.jpg', 'https://book.douban.com/subject/3533221/', '华夏出版社', '作为一个遵纪守法的好人，也许我们从来没有想过和“暴力”扯上关系。不过如果稍微留意一下现实生活中的谈话方式，并且用心体会各种谈话方式给我们的不同感受，我们一定会发现，有些话的确伤人！言语上的职责、嘲讽、否定、说教以及任意打断、拒不回应、随意出口的评价和结论给我们带来的情感和精神上的创伤，甚至比肉体的伤害更加令人痛苦。这些无心或有意的语言暴力让人与人变得冷漠、隔阂、敌视', '29.00元', '8.5', '心理学 4834,沟通 4359,人际沟通 3060,非暴力沟通 2590,心理 1838,沟通术 1364,情感 1192,人际关系 1018', '[美] 马歇尔·卢森堡', '1');
INSERT INTO `books` VALUES ('43', '9787229030933', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '三体Ⅲ', 'https://img3.doubanio.com/view/subject/m/public/s26012674.jpg', 'https://book.douban.com/subject/5363767/', '重庆出版社', '与三体文明的战争使人类第一次看到了宇宙黑暗的真相，地球文明像一个恐惧的孩子，熄灭了寻友的篝火，在暗夜中发抖。自以为历经沧桑，其实刚刚蹒跚学步；自以为悟出了生存竞争的秘密，其实还远没有竞争的资格。\n使两个文明命悬一线的黑暗森林打击，不过是宇宙战场上一个微不足道的插曲。真正的星际战争没人见过，也不可能见到，因为战争的方式和武器已经远远超出人类的想象，目睹战场之日，即是灭亡之时。\n宇宙的田园时代已经远去，昙花一现的终极之美最终变成任何智慧体都无法做出的梦，变成游吟诗人缥缈的残歌；宇宙的物竞天择已到了最惨烈的时刻，在亿万光年暗无天日的战场上，深渊最底层的毁灭力量被唤醒，太空变成了死神广阔的披风。\n太阳系中的人们永远不会知道这一切，最后直面真相的，只有两双眼睛。', '38.00元', '9.2', '科幻 23651,刘慈欣 20609,三体 13091,小说 8087,中国科幻 7344,科幻小说 6635,中国 6024,硬科幻 5639', '刘慈欣', '3');
INSERT INTO `books` VALUES ('44', '9787536693968', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '三体Ⅱ', 'https://img3.doubanio.com/view/subject/m/public/s3078482.jpg', 'https://book.douban.com/subject/3066477/', '重庆出版社', '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。\n面对前所未有的危局，经历过无数磨难的地球人组建起同样庞大的太空舰队，同时，利用三体人思维透明的致命缺陷，制订了神秘莫测的“面壁计划”，精选出四位“面壁者”。秘密展开对三体人的反击。\n三体人自身虽然无法识破人类的诡谲计谋，却依靠由地球人中的背叛者挑选出的“破壁人”，与“面壁者”展开智慧博弈……\n“面壁计划”究竟能否成功？地球人究竟能否在这场你死我活的文明生存竞争中战而胜之？神秘的\n“黑暗森林”究竟意味着什么？', '32.00', '9.3', '科幻 23104,刘慈欣 19694,三体 11796,小说 7898,科幻小说 7313,中国 6716,黑暗森林 5667,中国科幻 4634', '刘慈欣', '15');
INSERT INTO `books` VALUES ('45', '9787115293800', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '算法（第4版）', 'https://img3.doubanio.com/view/subject/m/public/s28322244.jpg', 'https://book.douban.com/subject/19952400/', '人民邮电出版社', '本书全面讲述算法和数据结构的必备知识，具有以下几大特色。\n     算法领域的经典参考书\nSedgewick畅销著作的最新版，反映了经过几十年演化而成的算法核心知识体系\n 内容全面\n全面论述排序、搜索、图处理和字符串处理的算法和数据结构，涵盖每位程序员应知应会的50种算法\n 全新修订的代码\n全新的Java实现代码，采用模块化的编程风格，所有代码均可供读者使用\n 与实际应用相结合\n在重要的科学、工程和商业应用环境下探讨算法，给出了算法的实际代码，而非同类著作常用的伪代码\n 富于智力趣味性\n简明扼要的内容，用丰富的视觉元素展示的示例，精心设计的代码，详尽的历史和科学背景知识，各种难度的练习，这一切都将使读者手不释卷\n       科学的方法\n用合适的数学模型精确地讨论算法性能，这些模型是在真实环境中得到验证的\n 与网络相结合\n配套网站algs4.cs.princeton.edu提供了本书内容的摘要及相关的代码、测试数据、编程练习、教学课件等资源', '99.00元', '9.4', '算法 1858,计算机 753,编程 664,计算机科学 374,Algorithms 350,计算机-算法 340,经典 226,Java 196', '塞奇威克 (Robert Sedgewick),韦恩 (Kevin Wayne)', '50');
INSERT INTO `books` VALUES ('46', '9787121139512', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '浪潮之巅', 'https://img3.doubanio.com/view/subject/m/public/s6807265.jpg', 'https://book.douban.com/subject/6709783/', '电子工业出版社', '近一百多年来，总有一些公司很幸运地、有意识或无意识地站在技术革命的浪尖之上。在这十几年间，它们代表着科技的浪潮，直到下一波浪潮的来临。\n从一百年前算起，AT&T 公司、IBM 公司、苹果公司、英特尔公司、微软公司、思科公司、雅虎公司和Google公司都先后被幸运地推到了浪尖。虽然，它们来自不同的领域，中间有些已经衰落或正在衰落，但是它们都极度辉煌过。本书系统地介绍了这些公司成功的本质原因及科技工业一百多年的发展。\n在极度商业化的今天，科技的进步和商机是分不开的。因此，本书也系统地介绍了影响到科技浪潮的风险投资公司，诸如 KPCB 和红杉资本，以及百年来为科技捧场的投资银行，例如高盛公司，等等。\n在这些公司兴衰的背后，有着它必然的规律。本书不仅讲述科技工业的历史，更重在揭示它的规律性。', '55.00元', '9.1', '互联网 11929,IT 8837,商业 6196,浪潮之巅 4427,计算机 4417,历史 3577,管理 1727,投资 1416', '吴军', '77');
INSERT INTO `books` VALUES ('47', '9787115352460', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', 'Node.js实战', 'https://img3.doubanio.com/view/subject/m/public/s27264241.jpg', 'https://book.douban.com/subject/25870705/', '人民邮电出版社', '服务器端JavaScript？没错。Node.js是一个JavaScript服务器，支持可伸缩的高性能Web应用。借助异步I/O，这个服务器可以同时做很多事情，能满足聊天、游戏和实时统计等应用的需求。并且既然是JavaScript，那你就可以全栈使用一种语言。\n本书向读者展示了如何构建产品级应用，对关键概念的介绍清晰明了，贴近实际的例子，涵盖从安装到部署的各个环节，是一部讲解与实践并重的优秀著作。通过学习本书，读者将深入异步编程、数据存储、输出模板、读写文件系统，掌握创建TCP/IP服务器和命令行工具等非HTTP程序的技术。本书同样非常适合熟悉Rails、Django或PHP开发的读者阅读学习。\n本书主要内容：\nNode.js及其扩展的安装配置；\n全面理解异步编程和事件循环；\n学会开发微博、聊天和游戏等热门应用。', '69.00元', '8.3', 'Node.js 108,JavaScript 51,nodejs 43,web开发 37,node.js 37,前端开发 29,编程 27,node 16', '', '173');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL,
  `bookid` varchar(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', '1233132', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('2', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', '12312321321', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('3', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', 'wrwrwe', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('4', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', '334324', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('5', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '46', '243243', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('6', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '44', '1111111111111', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('7', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '41', '666666666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('8', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '37', '6666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('9', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '37', '66666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('10', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '37', '666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('11', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '37', '666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('12', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '37', '6666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('13', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '34', '666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('14', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '34', '666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('15', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '34', '666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('16', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '34', '6666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('17', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '35', '666666666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('18', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '39', '666666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('19', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '41', '66666666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('20', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '45', '66666666666', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('21', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', '213232', '', '');
INSERT INTO `comments` VALUES ('22', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', '1111111111111111', '', '');
INSERT INTO `comments` VALUES ('23', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '47', '111111111111', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('24', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '43', '1111', 'iPhone 6', '洛阳市');
INSERT INTO `comments` VALUES ('25', 'oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '40', '1111', 'iPhone 6', '洛阳市');

-- ----------------------------
-- Table structure for cSessionInfo
-- ----------------------------
DROP TABLE IF EXISTS `cSessionInfo`;
CREATE TABLE `cSessionInfo` (
  `open_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skey` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `session_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_info` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`open_id`),
  KEY `openid` (`open_id`) USING BTREE,
  KEY `skey` (`skey`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会话管理用户信息';

-- ----------------------------
-- Records of cSessionInfo
-- ----------------------------
INSERT INTO `cSessionInfo` VALUES ('oVE3y0KxkwqKIJpGwCCOV-ZDxElA', '8785596c-baf0-4128-bc11-d31197cf60a3', '65a0e063ab056be1dcc5b0a60b186c61622f4f92', '2018-06-07 10:59:04', '2018-06-18 16:22:49', 'kJy17yZMsGAtD2FjDxgTQw==', '{\"openId\":\"oVE3y0KxkwqKIJpGwCCOV-ZDxElA\",\"nickName\":\"mac\",\"gender\":1,\"language\":\"zh_CN\",\"city\":\"Luoyang\",\"province\":\"Henan\",\"country\":\"China\",\"avatarUrl\":\"https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqiaQibMicevib1UQ22T8Rwqe5ACnzobgn85rPRjqsXm9TrreMuEH9r7cRKkvtegRKWeUg1X2DuGlZgGQ/132\",\"unionId\":\"oqgle1go68Wwep6SvUTub0-GCa48\",\"watermark\":{\"timestamp\":1529310169,\"appid\":\"wx1cf3c33d21786f00\"}}');
