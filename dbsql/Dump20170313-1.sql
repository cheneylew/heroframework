CREATE DATABASE  IF NOT EXISTS `hero` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hero`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: hero
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `binds`
--

DROP TABLE IF EXISTS `binds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binds` (
  `bind_id` int(11) NOT NULL AUTO_INCREMENT,
  `hook_name` varchar(125) NOT NULL,
  `bind_class` varchar(100) NOT NULL,
  `bind_method` varchar(100) NOT NULL,
  `bind_filename` text NOT NULL,
  `bind_created` datetime NOT NULL,
  PRIMARY KEY (`bind_id`),
  KEY `hook_name` (`hook_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binds`
--

LOCK TABLES `binds` WRITE;
/*!40000 ALTER TABLE `binds` DISABLE KEYS */;
INSERT INTO `binds` VALUES (1,'cron','email_model','mail_queue','app/modules/emails/models/email_model.php','2012-08-20 16:07:26');
/*!40000 ALTER TABLE `binds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `content_id` (`content_id`),
  FULLTEXT KEY `search` (`body`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,39,'<p style=\"margin: 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	新华社北京3月12日电（记者张晓松、罗争光）记者从十二届全国人大五次会议主席团获悉，全国人大法律委员会根据各代表团审议意见以及政协委员和有关方面意见，对民法总则草案作了126处修改，包括将限制民事行为能力人年龄下限修改为八周岁等。</p>\n<p style=\"margin: 23px auto 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	　　在12日上午举行的十二届全国人大五次会议主席团第二次会议上，全国人大法律委员会主任委员乔晓阳作了关于民法总则草案审议结果的报告。</p>\n<p style=\"margin: 23px auto 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	　　乔晓阳说，民法总则草案第二十条规定限制民事行为能力人的年龄下限为六周岁。一些代表提出，六周年的儿童虽然有一定的学习能力，开始接受义务教育，但认知和辨识能力仍然不足，在很大程度上还不具备实施民事法律行为的能力，建议改为八周岁为宜。也有的代表建议维持现行十周岁不变；还有的代表赞成下调为六周岁。法律委员会经研究，按照既积极又稳妥的要求，建议在现阶段将限制民事行为能力人年龄的下限修改为八周岁。</p>\n'),(2,40,'<p style=\"margin: 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	新华社北京3月12日电（记者张晓松、罗争光）记者从十二届全国人大五次会议主席团获悉，全国人大法律委员会根据各代表团审议意见以及政协委员和有关方面意见，对民法总则草案作了126处修改，包括将限制民事行为能力人年龄下限修改为八周岁等。</p>\n<p style=\"margin: 23px auto 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	　　在12日上午举行的十二届全国人大五次会议主席团第二次会议上，全国人大法律委员会主任委员乔晓阳作了关于民法总则草案审议结果的报告。</p>\n<p style=\"margin: 23px auto 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	　　乔晓阳说，民法总则草案第二十条规定限制民事行为能力人的年龄下限为六周岁。一些代表提出，六周年的儿童虽然有一定的学习能力，开始接受义务教育，但认知和辨识能力仍然不足，在很大程度上还不具备实施民事法律行为的能力，建议改为八周岁为宜。也有的代表建议维持现行十周岁不变；还有的代表赞成下调为六周岁。法律委员会经研究，按照既积极又稳妥的要求，建议在现阶段将限制民事行为能力人年龄的下限修改为八周岁。</p>\n'),(3,41,'<p style=\"margin: 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	新华社北京3月12日电（记者张晓松、罗争光）记者从十二届全国人大五次会议主席团获悉，全国人大法律委员会根据各代表团审议意见以及政协委员和有关方面意见，对民法总则草案作了126处修改，包括将限制民事行为能力人年龄下限修改为八周岁等。</p>\n<p style=\"margin: 23px auto 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	　　在12日上午举行的十二届全国人大五次会议主席团第二次会议上，全国人大法律委员会主任委员乔晓阳作了关于民法总则草案审议结果的报告。</p>\n<p style=\"margin: 23px auto 0px; padding: 0px; list-style: none; line-height: 26px; font-family: SimSun; color: rgb(43, 43, 43); overflow: visible !important;\">\n	　　乔晓阳说，民法总则草案第二十条规定限制民事行为能力人的年龄下限为六周岁。一些代表提出，六周年的儿童虽然有一定的学习能力，开始接受义务教育，但认知和辨识能力仍然不足，在很大程度上还不具备实施民事法律行为的能力，建议改为八周岁为宜。也有的代表建议维持现行十周岁不变；还有的代表赞成下调为六周岁。法律委员会经研究，按照既积极又稳妥的要求，建议在现阶段将限制民事行为能力人年龄的下限修改为八周岁。</p>\n'),(4,42,'<center>\n	<span lang=\"EN-US\" style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, Arial; font-size: 16px;\"><img align=\"center\" alt=\"“人民群众是大人物”：总理这句话由何而来？\" border=\"0\" id=\"15788813\" md5=\"\" sourcedescription=\"编辑提供的本地文件\" sourcename=\"本地文件\" src=\"http://china.chinadaily.com.cn/img/attachement/jpg/site1/20170312/d8cb8a1501341a2f7f5311.jpg\" style=\"margin: 0px; padding: 0px; border: none;\" title=\"\" /></span></center>\n<p style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">中国日报3月12日电（记者 张玥）</span><span lang=\"EN-US\">3</span>月<span lang=\"EN-US\">10</span>日傍晚，陕西安康旬阳县的高一学生杨康结束一周住校生活，回到爷爷奶奶家。祖孙三人一边做饭一边聊起新闻。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	杨康告诉爷爷奶奶，北京正在开&ldquo;两会&rdquo;，前一天李克强总理到了咱陕西团。一位来自安康的代表介绍当地脱贫攻坚情况时专门向总理介绍，<span lang=\"EN-US\">3</span>年前他看望的金坡村留守儿童一家已搬入了镇上新房，生活条件有了很大改善。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	这个留守儿童就是杨康。<span lang=\"EN-US\">2014</span>年春节前夕，李克强前往安康市旬阳县小河镇金坡村，看望贫困户和农村留守儿童。当时，杨康家还住着土坯房，逢雨漏水，冬天漏风，连窗户都是爷爷多年前用木头架子做的。她记得，总理坐在小屋的炕头上，关切地问起扶贫搬迁的情况，还鼓励她给远在浙江打工、一年只能回家一次的父亲打个电话。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	攥着电话，杨康又激动又紧张，操着浓浓的陕西口音说： &ldquo;爸，俺家来了大人物（<span lang=\"EN-US\">d</span>ǎ&nbsp;<span lang=\"EN-US\">r</span>ē<span lang=\"EN-US\">n w</span>&ugrave;）！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	她还记得，话音刚落，总理和全屋的人都乐了。后来李克强还从杨康手里接过电话，专门给她父亲拜了个年。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">3</span>月<span lang=\"EN-US\">9</span>日在陕西团，安康代表说起杨康当时告诉父亲这句话，特意用了陕西口音，全场都笑了。李克强高兴地说：&ldquo;我记得，小女孩很可爱。其实，老百姓是天，人民群众是我们心中的大人物。&rdquo;</p>\n<p align=\"center\" style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<center>\n	<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, Arial; font-size: 16px;\"><span lang=\"EN-US\"><img align=\"center\" alt=\"“人民群众是大人物”：总理这句话由何而来？\" border=\"0\" id=\"15788815\" md5=\"\" sourcedescription=\"编辑提供的本地文件\" sourcename=\"本地文件\" src=\"http://china.chinadaily.com.cn/img/attachement/jpg/site1/20170312/d8cb8a1501341a2f7f9012.jpg\" style=\"margin: 0px; padding: 0px; border: none;\" title=\"\" /></span></span></center>\n<p style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	看到这条新闻时，杨康说，总理爷爷亲切的面孔一下子就浮现在自己眼前。千里之外，她别提多兴奋了，&ldquo;呀，总理爷爷还记得我们家！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	&ldquo;总理还是关心咱们呐！那么忙，还记得我们。他真是把我们困难老百姓放在心里！&rdquo;杨康的奶奶、<span lang=\"EN-US\">62</span>岁的刘楚梅感慨道。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	事实上，千千万万像杨康一样生活困难的老百姓，一直是总理挂在心上的&ldquo;大人物&rdquo;，脱贫攻坚一直是本届政府扛在肩上的&ldquo;硬任务&rdquo;。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	连续<span lang=\"EN-US\">4</span>年，李克强都在春节前夕深入偏远穷苦地区看望百姓。今年春节前的最后一次国务院常务会上，他专门部署要求全国各县（市、区）建立健全由政府负责人牵头的困难群众生活保障工作协调机制，一定要把党中央、国务院相关决策部署落实到基层。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	总理在不同场合反复强调，中国现在还是一个发展中国家，仍然存在着许多发展不平衡的地方，&ldquo;做好困难群众生活保障工作绝不是小事，而是我们工作中最突出的&lsquo;短板&rsquo;！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">2016</span>年<span lang=\"EN-US\">11</span>月，国务院通过&ldquo;十三五&rdquo;脱贫攻坚规划，确保农村贫困人口同步进入全面小康。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	今年《政府工作报告》中，李克强给出了过去一年脱贫攻坚的成绩单：农村贫困人口减少<span lang=\"EN-US\">1240</span>万，易地扶贫搬迁人口超过<span lang=\"EN-US\">240</span>万；棚户区住房改造<span lang=\"EN-US\">600</span>多万套，农村危房改造<span lang=\"EN-US\">380</span>多万户。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	对<span lang=\"EN-US\">16</span>岁的杨康来说，这几年，家里和村里的生活&ldquo;变了很多很多&rdquo;。村里那条她从前最害怕走的、坑洼颠簸的石子路修成了水泥路，有汽车可以坐了。过去的荒山上种了大片的枇杷树，给村民增加不少收入。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	现在她和爷爷奶奶通过当地的易地扶贫安置工程，搬入了小河镇上的新房。最让杨康开心的是，在浙江打工的父亲去年当上了轮机长，年收入有<span lang=\"EN-US\">8</span>万多元，一年可以回家两次了。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	去年，杨康考入邻镇的赵湾中学读高一。她最大的心愿是考上大学，可以去城市里，离爸爸近一点。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	&ldquo;考上了大学，也不辜负总理爷爷这么关心我们。&rdquo;她说。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	（编辑：黄硕 严玉洁）</p>\n'),(5,43,'<center>\n	<span lang=\"EN-US\" style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, Arial; font-size: 16px;\"><img align=\"center\" alt=\"“人民群众是大人物”：总理这句话由何而来？\" border=\"0\" id=\"15788813\" md5=\"\" sourcedescription=\"编辑提供的本地文件\" sourcename=\"本地文件\" src=\"http://china.chinadaily.com.cn/img/attachement/jpg/site1/20170312/d8cb8a1501341a2f7f5311.jpg\" style=\"margin: 0px; padding: 0px; border: none;\" title=\"\" /></span></center>\n<p style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">中国日报3月12日电（记者 张玥）</span><span lang=\"EN-US\">3</span>月<span lang=\"EN-US\">10</span>日傍晚，陕西安康旬阳县的高一学生杨康结束一周住校生活，回到爷爷奶奶家。祖孙三人一边做饭一边聊起新闻。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	杨康告诉爷爷奶奶，北京正在开&ldquo;两会&rdquo;，前一天李克强总理到了咱陕西团。一位来自安康的代表介绍当地脱贫攻坚情况时专门向总理介绍，<span lang=\"EN-US\">3</span>年前他看望的金坡村留守儿童一家已搬入了镇上新房，生活条件有了很大改善。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	这个留守儿童就是杨康。<span lang=\"EN-US\">2014</span>年春节前夕，李克强前往安康市旬阳县小河镇金坡村，看望贫困户和农村留守儿童。当时，杨康家还住着土坯房，逢雨漏水，冬天漏风，连窗户都是爷爷多年前用木头架子做的。她记得，总理坐在小屋的炕头上，关切地问起扶贫搬迁的情况，还鼓励她给远在浙江打工、一年只能回家一次的父亲打个电话。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	攥着电话，杨康又激动又紧张，操着浓浓的陕西口音说： &ldquo;爸，俺家来了大人物（<span lang=\"EN-US\">d</span>ǎ&nbsp;<span lang=\"EN-US\">r</span>ē<span lang=\"EN-US\">n w</span>&ugrave;）！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	她还记得，话音刚落，总理和全屋的人都乐了。后来李克强还从杨康手里接过电话，专门给她父亲拜了个年。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">3</span>月<span lang=\"EN-US\">9</span>日在陕西团，安康代表说起杨康当时告诉父亲这句话，特意用了陕西口音，全场都笑了。李克强高兴地说：&ldquo;我记得，小女孩很可爱。其实，老百姓是天，人民群众是我们心中的大人物。&rdquo;</p>\n<p align=\"center\" style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<center>\n	<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, Arial; font-size: 16px;\"><span lang=\"EN-US\"><img align=\"center\" alt=\"“人民群众是大人物”：总理这句话由何而来？\" border=\"0\" id=\"15788815\" md5=\"\" sourcedescription=\"编辑提供的本地文件\" sourcename=\"本地文件\" src=\"http://china.chinadaily.com.cn/img/attachement/jpg/site1/20170312/d8cb8a1501341a2f7f9012.jpg\" style=\"margin: 0px; padding: 0px; border: none;\" title=\"\" /></span></span></center>\n<p style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	看到这条新闻时，杨康说，总理爷爷亲切的面孔一下子就浮现在自己眼前。千里之外，她别提多兴奋了，&ldquo;呀，总理爷爷还记得我们家！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	&ldquo;总理还是关心咱们呐！那么忙，还记得我们。他真是把我们困难老百姓放在心里！&rdquo;杨康的奶奶、<span lang=\"EN-US\">62</span>岁的刘楚梅感慨道。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	事实上，千千万万像杨康一样生活困难的老百姓，一直是总理挂在心上的&ldquo;大人物&rdquo;，脱贫攻坚一直是本届政府扛在肩上的&ldquo;硬任务&rdquo;。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	连续<span lang=\"EN-US\">4</span>年，李克强都在春节前夕深入偏远穷苦地区看望百姓。今年春节前的最后一次国务院常务会上，他专门部署要求全国各县（市、区）建立健全由政府负责人牵头的困难群众生活保障工作协调机制，一定要把党中央、国务院相关决策部署落实到基层。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	总理在不同场合反复强调，中国现在还是一个发展中国家，仍然存在着许多发展不平衡的地方，&ldquo;做好困难群众生活保障工作绝不是小事，而是我们工作中最突出的&lsquo;短板&rsquo;！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">2016</span>年<span lang=\"EN-US\">11</span>月，国务院通过&ldquo;十三五&rdquo;脱贫攻坚规划，确保农村贫困人口同步进入全面小康。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	今年《政府工作报告》中，李克强给出了过去一年脱贫攻坚的成绩单：农村贫困人口减少<span lang=\"EN-US\">1240</span>万，易地扶贫搬迁人口超过<span lang=\"EN-US\">240</span>万；棚户区住房改造<span lang=\"EN-US\">600</span>多万套，农村危房改造<span lang=\"EN-US\">380</span>多万户。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	对<span lang=\"EN-US\">16</span>岁的杨康来说，这几年，家里和村里的生活&ldquo;变了很多很多&rdquo;。村里那条她从前最害怕走的、坑洼颠簸的石子路修成了水泥路，有汽车可以坐了。过去的荒山上种了大片的枇杷树，给村民增加不少收入。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	现在她和爷爷奶奶通过当地的易地扶贫安置工程，搬入了小河镇上的新房。最让杨康开心的是，在浙江打工的父亲去年当上了轮机长，年收入有<span lang=\"EN-US\">8</span>万多元，一年可以回家两次了。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	去年，杨康考入邻镇的赵湾中学读高一。她最大的心愿是考上大学，可以去城市里，离爸爸近一点。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	&ldquo;考上了大学，也不辜负总理爷爷这么关心我们。&rdquo;她说。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	（编辑：黄硕 严玉洁）</p>\n'),(6,44,'<center>\n	<span lang=\"EN-US\" style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, Arial; font-size: 16px;\"><img align=\"center\" alt=\"“人民群众是大人物”：总理这句话由何而来？\" border=\"0\" id=\"15788813\" md5=\"\" sourcedescription=\"编辑提供的本地文件\" sourcename=\"本地文件\" src=\"http://china.chinadaily.com.cn/img/attachement/jpg/site1/20170312/d8cb8a1501341a2f7f5311.jpg\" style=\"margin: 0px; padding: 0px; border: none;\" title=\"\" /></span></center>\n<p style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">中国日报3月12日电（记者 张玥）</span><span lang=\"EN-US\">3</span>月<span lang=\"EN-US\">10</span>日傍晚，陕西安康旬阳县的高一学生杨康结束一周住校生活，回到爷爷奶奶家。祖孙三人一边做饭一边聊起新闻。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	杨康告诉爷爷奶奶，北京正在开&ldquo;两会&rdquo;，前一天李克强总理到了咱陕西团。一位来自安康的代表介绍当地脱贫攻坚情况时专门向总理介绍，<span lang=\"EN-US\">3</span>年前他看望的金坡村留守儿童一家已搬入了镇上新房，生活条件有了很大改善。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	这个留守儿童就是杨康。<span lang=\"EN-US\">2014</span>年春节前夕，李克强前往安康市旬阳县小河镇金坡村，看望贫困户和农村留守儿童。当时，杨康家还住着土坯房，逢雨漏水，冬天漏风，连窗户都是爷爷多年前用木头架子做的。她记得，总理坐在小屋的炕头上，关切地问起扶贫搬迁的情况，还鼓励她给远在浙江打工、一年只能回家一次的父亲打个电话。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	攥着电话，杨康又激动又紧张，操着浓浓的陕西口音说： &ldquo;爸，俺家来了大人物（<span lang=\"EN-US\">d</span>ǎ&nbsp;<span lang=\"EN-US\">r</span>ē<span lang=\"EN-US\">n w</span>&ugrave;）！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	她还记得，话音刚落，总理和全屋的人都乐了。后来李克强还从杨康手里接过电话，专门给她父亲拜了个年。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">3</span>月<span lang=\"EN-US\">9</span>日在陕西团，安康代表说起杨康当时告诉父亲这句话，特意用了陕西口音，全场都笑了。李克强高兴地说：&ldquo;我记得，小女孩很可爱。其实，老百姓是天，人民群众是我们心中的大人物。&rdquo;</p>\n<p align=\"center\" style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<center>\n	<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, Arial; font-size: 16px;\"><span lang=\"EN-US\"><img align=\"center\" alt=\"“人民群众是大人物”：总理这句话由何而来？\" border=\"0\" id=\"15788815\" md5=\"\" sourcedescription=\"编辑提供的本地文件\" sourcename=\"本地文件\" src=\"http://china.chinadaily.com.cn/img/attachement/jpg/site1/20170312/d8cb8a1501341a2f7f9012.jpg\" style=\"margin: 0px; padding: 0px; border: none;\" title=\"\" /></span></span></center>\n<p style=\"margin: 0px 0px 30px; padding: 0px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em;\">\n	&nbsp;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	看到这条新闻时，杨康说，总理爷爷亲切的面孔一下子就浮现在自己眼前。千里之外，她别提多兴奋了，&ldquo;呀，总理爷爷还记得我们家！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	&ldquo;总理还是关心咱们呐！那么忙，还记得我们。他真是把我们困难老百姓放在心里！&rdquo;杨康的奶奶、<span lang=\"EN-US\">62</span>岁的刘楚梅感慨道。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	事实上，千千万万像杨康一样生活困难的老百姓，一直是总理挂在心上的&ldquo;大人物&rdquo;，脱贫攻坚一直是本届政府扛在肩上的&ldquo;硬任务&rdquo;。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	连续<span lang=\"EN-US\">4</span>年，李克强都在春节前夕深入偏远穷苦地区看望百姓。今年春节前的最后一次国务院常务会上，他专门部署要求全国各县（市、区）建立健全由政府负责人牵头的困难群众生活保障工作协调机制，一定要把党中央、国务院相关决策部署落实到基层。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	总理在不同场合反复强调，中国现在还是一个发展中国家，仍然存在着许多发展不平衡的地方，&ldquo;做好困难群众生活保障工作绝不是小事，而是我们工作中最突出的&lsquo;短板&rsquo;！&rdquo;</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	<span lang=\"EN-US\">2016</span>年<span lang=\"EN-US\">11</span>月，国务院通过&ldquo;十三五&rdquo;脱贫攻坚规划，确保农村贫困人口同步进入全面小康。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	今年《政府工作报告》中，李克强给出了过去一年脱贫攻坚的成绩单：农村贫困人口减少<span lang=\"EN-US\">1240</span>万，易地扶贫搬迁人口超过<span lang=\"EN-US\">240</span>万；棚户区住房改造<span lang=\"EN-US\">600</span>多万套，农村危房改造<span lang=\"EN-US\">380</span>多万户。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	对<span lang=\"EN-US\">16</span>岁的杨康来说，这几年，家里和村里的生活&ldquo;变了很多很多&rdquo;。村里那条她从前最害怕走的、坑洼颠簸的石子路修成了水泥路，有汽车可以坐了。过去的荒山上种了大片的枇杷树，给村民增加不少收入。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	现在她和爷爷奶奶通过当地的易地扶贫安置工程，搬入了小河镇上的新房。最让杨康开心的是，在浙江打工的父亲去年当上了轮机长，年收入有<span lang=\"EN-US\">8</span>万多元，一年可以回家两次了。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	去年，杨康考入邻镇的赵湾中学读高一。她最大的心愿是考上大学，可以去城市里，离爸爸近一点。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	&ldquo;考上了大学，也不辜负总理爷爷这么关心我们。&rdquo;她说。</p>\n<p style=\"margin: 0px 0px 30px; padding: 0px; font-size: 16px; color: rgb(51, 51, 51); line-height: 30px; text-indent: 2em; font-family: 微软雅黑, Arial;\">\n	（编辑：黄硕 严玉洁）</p>\n');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `blog_filter_author` varchar(250) NOT NULL,
  `blog_filter_topic` varchar(250) NOT NULL,
  `blog_summary_field` varchar(255) NOT NULL,
  `blog_sort_field` varchar(100) NOT NULL,
  `blog_sort_dir` varchar(5) NOT NULL,
  `blog_auto_trim` tinyint(1) NOT NULL,
  `blog_privileges` varchar(255) NOT NULL,
  `blog_template` varchar(255) NOT NULL,
  `blog_per_page` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,9,1,'Blog Archives','All the latest happenings from our company.','','','body','content_date','DESC',0,'a:0:{}','archives.thtml',25);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(255) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('79df5ba4c3a259c216137242c5e37b03','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489284366,'a:4:{s:6:\"errors\";s:0:\"\";s:8:\"admin_id\";s:4:\"1002\";s:10:\"login_time\";i:1489284258;s:7:\"notices\";s:0:\"\";}'),('59d0c19dd63e6a4c62586dd0a2d85afa','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288689,'a:5:{s:10:\"login_time\";i:1489284511;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:0:\"\";s:8:\"admin_id\";s:4:\"1003\";s:19:\"manage_content_type\";s:1:\"7\";}'),('410d84a628b6932a43a2279e72694951','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288700,'a:4:{s:10:\"login_time\";i:1489288631;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:0:\"\";s:8:\"admin_id\";s:4:\"1003\";}'),('1e62d234fd8ab21e488836411920bbcf','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288692,NULL),('3b200e02ff286762d6b4db61a1c16d7e','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288391,NULL),('c8c6c8077e08fec44699ceb9803ba649','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489285567,NULL),('a9c7ffb129c6aa560419c5c7511f759d','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489284961,NULL),('62379d0f5dace3776fe0edaab5d1dac6','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489285263,NULL),('6b2ea5c1cc83f98ad6e0db5f8bc296a0','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288692,NULL),('37e15f2204a26347b27eda949084c889','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288700,NULL),('80753a5b606fa2b38069e56f5f6d67e6','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489288701,NULL),('818f6188d40de52e2a61fb7e08f2eeb5','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489289026,'a:4:{s:10:\"login_time\";i:1489288806;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:1737:\"a:12:{i:0;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:1;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:2;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:3;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:4;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:5;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:6;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:7;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:8;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:9;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:10;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";i:11;s:131:\"WARNING!  Your cronjob is not running properly.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">Click here for details</a>\";}\";s:8:\"admin_id\";s:4:\"1003\";}'),('a9764ff53cc1c72991ace8dffef16032','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489289046,NULL),('62c506b3c6c339465e63e67a0a708cd2','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489334230,'a:7:{s:8:\"admin_id\";s:4:\"1003\";s:10:\"login_time\";i:1489289057;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:0:\"\";s:14:\"manage_menu_id\";s:1:\"1\";s:26:\"manage_menu_parent_link_id\";s:1:\"0\";s:19:\"manage_content_type\";s:1:\"9\";}'),('b760fc7d0daed9e2159ac3dec8b145b2','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489334325,NULL),('d8e09ccf101a84255b9e5d436f49129f','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36',1489355832,'a:6:{s:8:\"admin_id\";s:4:\"1001\";s:10:\"login_time\";i:1489292169;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:0:\"\";s:14:\"manage_menu_id\";s:1:\"1\";s:26:\"manage_menu_parent_link_id\";s:1:\"0\";}'),('4502524e2abdc6d26e7835476829935a','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:51.0) Gecko/20100101 Firefox/51.0',1489296486,'a:5:{s:6:\"errors\";s:0:\"\";s:8:\"admin_id\";s:4:\"1003\";s:10:\"login_time\";i:1489295766;s:7:\"notices\";s:0:\"\";s:19:\"manage_content_type\";s:1:\"9\";}'),('2f2f741361089a79e3cdf4aaa50bfe58','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489344228,'a:5:{s:8:\"admin_id\";s:4:\"1001\";s:10:\"login_time\";i:1489342251;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:384:\"a:3:{i:0;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:1;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:2;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";}\";s:19:\"manage_content_type\";s:1:\"9\";}'),('e6706ff0edbb122ac47cef6783dd3648','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489344248,NULL),('fd3782c8c46106bf5227b536f5491e00','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489358082,'a:8:{s:8:\"admin_id\";s:4:\"1003\";s:10:\"login_time\";i:1489347375;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:888:\"a:7:{i:0;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:1;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:2;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:3;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:4;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:5;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";i:6;s:113:\"警告!您的cronjob没有运行.  <a href=\"http://localhost/hero/admincp/reports/cronjob\">点击查看详情</a>\";}\";s:14:\"manage_menu_id\";s:1:\"2\";s:26:\"manage_menu_parent_link_id\";s:1:\"0\";s:19:\"manage_content_type\";s:2:\"11\";s:7:\"user_id\";s:4:\"1002\";}'),('63dbcb76bbd3ebe3432722960045d67e','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8',1489359617,'a:5:{s:10:\"login_time\";i:1489358275;s:7:\"notices\";s:0:\"\";s:6:\"errors\";s:0:\"\";s:8:\"admin_id\";s:4:\"1003\";s:19:\"manage_content_type\";s:2:\"11\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `contact_us_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(255) NOT NULL,
  `submission_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `yourname` varchar(250) NOT NULL,
  `tc_name` varchar(250) NOT NULL,
  `repeat_content` text NOT NULL,
  `topic` text NOT NULL,
  `sex` tinyint(1) NOT NULL,
  PRIMARY KEY (`contact_us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `content_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(255) NOT NULL DEFAULT '1',
  `link_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_date` datetime NOT NULL,
  `content_modified` datetime NOT NULL,
  `content_topics` varchar(255) NOT NULL,
  `content_is_standard` tinyint(1) NOT NULL,
  `content_title` varchar(255) DEFAULT NULL,
  `content_privileges` varchar(255) DEFAULT NULL,
  `content_hits` int(11) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `content_type_id` (`content_type_id`),
  KEY `link_id` (`link_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (37,1,38,10,1003,'2017-03-13 13:57:45','2017-03-13 13:57:45','a:1:{i:0;b:0;}',1,'全国政协十二届五次会议闭幕会在人民大会堂举行','',2),(38,2,38,10,1003,'2017-03-13 13:57:47','2017-03-13 13:57:47','a:1:{i:0;b:0;}',1,'全国政协十二届五次会议闭幕会在人民大会堂举行','',4),(39,3,39,11,1003,'2017-03-13 13:59:38','2017-03-13 13:59:38','a:1:{i:0;b:0;}',1,'民法总则草案修改：限制民事行为能力人下限改为8岁','',8),(40,1,39,11,1003,'2017-03-13 14:27:33','2017-03-13 14:27:33','a:1:{i:0;b:0;}',1,'民法总则草案修改：限制民事行为能力人下限改为8岁','',4),(41,2,39,11,1003,'2017-03-13 14:27:36','2017-03-13 14:27:36','a:1:{i:0;b:0;}',1,'民法总则草案修改：限制民事行为能力人下限改为8岁','',5),(42,3,40,11,1003,'2017-03-13 14:28:20','2017-03-13 14:28:20','a:1:{i:0;b:0;}',1,'人民群众是大人物”：总理这句话由何而来？','',3),(43,1,40,11,1003,'2017-03-13 14:29:05','2017-03-13 14:29:05','a:1:{i:0;b:0;}',1,'人民群众是大人物”：总理这句话由何而来？','',2),(44,2,40,11,1003,'2017-03-13 14:29:07','2017-03-13 14:29:07','a:1:{i:0;b:0;}',1,'人民群众是大人物”：总理这句话由何而来？','',1),(36,3,38,10,1003,'2017-03-13 13:52:59','2017-03-13 13:52:59','a:1:{i:0;b:0;}',1,'全国政协十二届五次会议闭幕会在人民大会堂举行','',7);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_types`
--

DROP TABLE IF EXISTS `content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_types` (
  `content_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type_is_module` tinyint(1) NOT NULL,
  `content_type_is_standard` tinyint(1) NOT NULL,
  `content_type_is_privileged` tinyint(1) NOT NULL,
  `custom_field_group_id` int(11) NOT NULL,
  `content_type_friendly_name` varchar(100) NOT NULL,
  `content_type_system_name` varchar(50) NOT NULL,
  `content_type_template` varchar(255) NOT NULL,
  `content_type_base_url` varchar(100) NOT NULL,
  PRIMARY KEY (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_types`
--

LOCK TABLES `content_types` WRITE;
/*!40000 ALTER TABLE `content_types` DISABLE KEYS */;
INSERT INTO `content_types` VALUES (3,0,1,1,4,'Events','events','event.thtml','events/'),(10,0,1,1,22,'News','news','content.thtml',''),(11,0,1,1,23,'Blog','blog','content.thtml','');
/*!40000 ALTER TABLE `content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `iso2` varchar(2) NOT NULL,
  `iso3` varchar(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (4,'AF','AFG','Afghanistan'),(248,'AX','ALA','Aland Islands'),(8,'AL','ALB','Albania'),(12,'DZ','DZA','Algeria'),(16,'AS','ASM','American Samoa'),(20,'AD','AND','Andorra'),(24,'AO','AGO','Angola'),(660,'AI','AIA','Anguilla'),(10,'AQ','ATA','Antarctica'),(28,'AG','ATG','Antigua and Barbuda'),(32,'AR','ARG','Argentina'),(51,'AM','ARM','Armenia'),(533,'AW','ABW','Aruba'),(36,'AU','AUS','Australia'),(40,'AT','AUT','Austria'),(31,'AZ','AZE','Azerbaijan'),(44,'BS','BHS','Bahamas'),(48,'BH','BHR','Bahrain'),(50,'BD','BGD','Bangladesh'),(52,'BB','BRB','Barbados'),(112,'BY','BLR','Belarus'),(56,'BE','BEL','Belgium'),(84,'BZ','BLZ','Belize'),(204,'BJ','BEN','Benin'),(60,'BM','BMU','Bermuda'),(64,'BT','BTN','Bhutan'),(68,'BO','BOL','Bolivia'),(70,'BA','BIH','Bosnia and Herzegovina'),(72,'BW','BWA','Botswana'),(74,'BV','BVT','Bouvet Island'),(76,'BR','BRA','Brazil'),(86,'IO','IOT','British Indian Ocean Territory'),(96,'BN','BRN','Brunei Darussalam'),(100,'BG','BGR','Bulgaria'),(854,'BF','BFA','Burkina Faso'),(108,'BI','BDI','Burundi'),(116,'KH','KHM','Cambodia'),(120,'CM','CMR','Cameroon'),(124,'CA','CAN','Canada'),(132,'CV','CPV','Cape Verde'),(136,'KY','CYM','Cayman Islands'),(140,'CF','CAF','Central African Republic'),(148,'TD','TCD','Chad'),(152,'CL','CHL','Chile'),(156,'CN','CHN','China'),(162,'CX','CXR','Christmas Island'),(166,'CC','CCK','Cocos (Keeling) Islands'),(170,'CO','COL','Colombia'),(174,'KM','COM','Comoros'),(178,'CG','COG','Congo'),(180,'CD','COD','Congo, Democratic Republic of the'),(184,'CK','COK','Cook Islands'),(188,'CR','CRI','Costa Rica'),(384,'CI','CIV','Cote d\'Ivoire'),(191,'HR','HRV','Croatia'),(192,'CU','CUB','Cuba'),(196,'CY','CYP','Cyprus'),(203,'CZ','CZE','Czech Republic'),(208,'DK','DNK','Denmark'),(262,'DJ','DJI','Djibouti'),(212,'DM','DMA','Dominica'),(214,'DO','DOM','Dominican Republic'),(218,'EC','ECU','Ecuador'),(818,'EG','EGY','Egypt'),(222,'SV','SLV','El Salvador'),(226,'GQ','GNQ','Equatorial Guinea'),(232,'ER','ERI','Eritrea'),(233,'EE','EST','Estonia'),(231,'ET','ETH','Ethiopia'),(238,'FK','FLK','Falkland Islands (Malvinas)'),(234,'FO','FRO','Faroe Islands'),(242,'FJ','FJI','Fiji'),(246,'FI','FIN','Finland'),(250,'FR','FRA','France'),(254,'GF','GUF','French Guiana'),(258,'PF','PYF','French Polynesia'),(260,'TF','ATF','French Southern Territories'),(266,'GA','GAB','Gabon'),(270,'GM','GMB','Gambia'),(268,'GE','GEO','Georgia'),(276,'DE','DEU','Germany'),(288,'GH','GHA','Ghana'),(292,'GI','GIB','Gibraltar'),(300,'GR','GRC','Greece'),(304,'GL','GRL','Greenland'),(308,'GD','GRD','Grenada'),(312,'GP','GLP','Guadeloupe'),(316,'GU','GUM','Guam'),(320,'GT','GTM','Guatemala'),(831,'GG','GGY','Guernsey'),(324,'GN','GIN','Guinea'),(624,'GW','GNB','Guinea-Bissau'),(328,'GY','GUY','Guyana'),(332,'HT','HTI','Haiti'),(334,'HM','HMD','Heard Island and McDonald Islands'),(336,'VA','VAT','Holy See (Vatican City State)'),(340,'HN','HND','Honduras'),(344,'HK','HKG','Hong Kong'),(348,'HU','HUN','Hungary'),(352,'IS','ISL','Iceland'),(356,'IN','IND','India'),(360,'ID','IDN','Indonesia'),(364,'IR','IRN','Iran, Islamic Republic of'),(368,'IQ','IRQ','Iraq'),(372,'IE','IRL','Ireland'),(833,'IM','IMN','Isle of Man'),(376,'IL','ISR','Israel'),(380,'IT','ITA','Italy'),(388,'JM','JAM','Jamaica'),(392,'JP','JPN','Japan'),(832,'JE','JEY','Jersey'),(400,'JO','JOR','Jordan'),(398,'KZ','KAZ','Kazakhstan'),(404,'KE','KEN','Kenya'),(296,'KI','KIR','Kiribati'),(408,'KP','PRK','Korea, Democratic People\'s Republic of'),(410,'KR','KOR','Korea, Republic of'),(414,'KW','KWT','Kuwait'),(417,'KG','KGZ','Kyrgyzstan'),(418,'LA','LAO','Lao People\'s Democratic Republic'),(428,'LV','LVA','Latvia'),(422,'LB','LBN','Lebanon'),(426,'LS','LSO','Lesotho'),(430,'LR','LBR','Liberia'),(434,'LY','LBY','Libyan Arab Jamahiriya'),(438,'LI','LIE','Liechtenstein'),(440,'LT','LTU','Lithuania'),(442,'LU','LUX','Luxembourg'),(446,'MO','MAC','Macao'),(807,'MK','MKD','Macedonia, the former Yugoslav Republic of'),(450,'MG','MDG','Madagascar'),(454,'MW','MWI','Malawi'),(458,'MY','MYS','Malaysia'),(462,'MV','MDV','Maldives'),(466,'ML','MLI','Mali'),(470,'MT','MLT','Malta'),(584,'MH','MHL','Marshall Islands'),(474,'MQ','MTQ','Martinique'),(478,'MR','MRT','Mauritania'),(480,'MU','MUS','Mauritius'),(175,'YT','MYT','Mayotte'),(484,'MX','MEX','Mexico'),(583,'FM','FSM','Micronesia, Federated States of'),(498,'MD','MDA','Moldova'),(492,'MC','MCO','Monaco'),(496,'MN','MNG','Mongolia'),(499,'ME','MNE','Montenegro'),(500,'MS','MSR','Montserrat'),(504,'MA','MAR','Morocco'),(508,'MZ','MOZ','Mozambique'),(104,'MM','MMR','Myanmar'),(516,'NA','NAM','Namibia'),(520,'NR','NRU','Nauru'),(524,'NP','NPL','Nepal'),(528,'NL','NLD','Netherlands'),(530,'AN','ANT','Netherlands Antilles'),(540,'NC','NCL','New Caledonia'),(554,'NZ','NZL','New Zealand'),(558,'NI','NIC','Nicaragua'),(562,'NE','NER','Niger'),(566,'NG','NGA','Nigeria'),(570,'NU','NIU','Niue'),(574,'NF','NFK','Norfolk Island'),(580,'MP','MNP','Northern Mariana Islands'),(578,'NO','NOR','Norway'),(512,'OM','OMN','Oman'),(586,'PK','PAK','Pakistan'),(585,'PW','PLW','Palau'),(275,'PS','PSE','Palestinian Territory, Occupied'),(591,'PA','PAN','Panama'),(598,'PG','PNG','Papua New Guinea'),(600,'PY','PRY','Paraguay'),(604,'PE','PER','Peru'),(608,'PH','PHL','Philippines'),(612,'PN','PCN','Pitcairn'),(616,'PL','POL','Poland'),(620,'PT','PRT','Portugal'),(630,'PR','PRI','Puerto Rico'),(634,'QA','QAT','Qatar'),(638,'RE','REU','RŽunion'),(642,'RO','ROU','Romania'),(643,'RU','RUS','Russian Federation'),(646,'RW','RWA','Rwanda'),(652,'BL','BLM','Saint BarthŽlemy'),(654,'SH','SHN','Saint Helena'),(659,'KN','KNA','Saint Kitts and Nevis'),(662,'LC','LCA','Saint Lucia'),(663,'MF','MAF','Saint Martin (French part)'),(666,'PM','SPM','Saint Pierre and Miquelon'),(670,'VC','VCT','Saint Vincent and the Grenadines'),(882,'WS','WSM','Samoa'),(674,'SM','SMR','San Marino'),(678,'ST','STP','Sao Tome and Principe'),(682,'SA','SAU','Saudi Arabia'),(686,'SN','SEN','Senegal'),(688,'RS','SRB','Serbia'),(690,'SC','SYC','Seychelles'),(694,'SL','SLE','Sierra Leone'),(702,'SG','SGP','Singapore'),(703,'SK','SVK','Slovakia'),(705,'SI','SVN','Slovenia'),(90,'SB','SLB','Solomon Islands'),(706,'SO','SOM','Somalia'),(710,'ZA','ZAF','South Africa'),(239,'GS','SGS','South Georgia and the South Sandwich Islands'),(724,'ES','ESP','Spain'),(144,'LK','LKA','Sri Lanka'),(736,'SD','SDN','Sudan'),(740,'SR','SUR','Suriname'),(744,'SJ','SJM','Svalbard and Jan Mayen'),(748,'SZ','SWZ','Swaziland'),(752,'SE','SWE','Sweden'),(756,'CH','CHE','Switzerland'),(760,'SY','SYR','Syrian Arab Republic'),(158,'TW','TWN','Taiwan, Province of China'),(762,'TJ','TJK','Tajikistan'),(834,'TZ','TZA','Tanzania, United Republic of'),(764,'TH','THA','Thailand'),(626,'TL','TLS','Timor-Leste'),(768,'TG','TGO','Togo'),(772,'TK','TKL','Tokelau'),(776,'TO','TON','Tonga'),(780,'TT','TTO','Trinidad and Tobago'),(788,'TN','TUN','Tunisia'),(792,'TR','TUR','Turkey'),(795,'TM','TKM','Turkmenistan'),(796,'TC','TCA','Turks and Caicos Islands'),(798,'TV','TUV','Tuvalu'),(800,'UG','UGA','Uganda'),(804,'UA','UKR','Ukraine'),(784,'AE','ARE','United Arab Emirates'),(826,'GB','GBR','United Kingdom'),(840,'US','USA','United States'),(581,'UM','UMI','United States Minor Outlying Islands'),(858,'UY','URY','Uruguay'),(860,'UZ','UZB','Uzbekistan'),(548,'VU','VUT','Vanuatu'),(862,'VE','VEN','Venezuela'),(704,'VN','VNM','Viet Nam'),(92,'VG','VGB','Virgin Islands, British'),(850,'VI','VIR','Virgin Islands, U.S.'),(876,'WF','WLF','Wallis and Futuna'),(732,'EH','ESH','Western Sahara'),(887,'YE','YEM','Yemen'),(894,'ZM','ZMB','Zambia'),(716,'ZW','ZWE','Zimbabwe'),(895,'CW','CW','Curaçao'),(896,'SX','SX','Sint Maarten');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_groups`
--

DROP TABLE IF EXISTS `custom_field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_groups` (
  `custom_field_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_group_name` varchar(150) NOT NULL,
  PRIMARY KEY (`custom_field_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_groups`
--

LOCK TABLES `custom_field_groups` WRITE;
/*!40000 ALTER TABLE `custom_field_groups` DISABLE KEYS */;
INSERT INTO `custom_field_groups` VALUES (1,'Members'),(24,'Form: Contact_us'),(4,'Content: Events'),(5,'Form: Contact Us'),(22,'Content: News'),(7,'Form: Contact Us'),(9,'Form: Contact_us'),(10,'Form: Contact_us'),(11,'Form: sc_Contact_us'),(12,'Form: sc_Contact_us'),(13,'Form: sc_Contact_us'),(14,'Form: sc'),(15,'Form: sc'),(16,'Form: sc'),(23,'Content: Blog');
/*!40000 ALTER TABLE `custom_field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_group` int(11) NOT NULL,
  `custom_field_name` varchar(50) NOT NULL,
  `custom_field_friendly_name` varchar(255) NOT NULL,
  `custom_field_order` int(11) NOT NULL,
  `custom_field_type` varchar(50) NOT NULL,
  `custom_field_options` text,
  `custom_field_width` varchar(25) DEFAULT NULL,
  `custom_field_default` varchar(200) DEFAULT NULL,
  `custom_field_required` tinyint(1) NOT NULL,
  `custom_field_validators` text,
  `custom_field_help_text` text,
  `custom_field_data` text,
  PRIMARY KEY (`custom_field_id`),
  KEY `custom_field_group` (`custom_field_group`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (4,4,'calendar_month','Calendar Month',1,'select','a:14:{i:0;a:2:{s:4:\"name\";s:7:\"January\";s:5:\"value\";s:7:\"January\";}i:1;a:2:{s:4:\"name\";s:8:\"February\";s:5:\"value\";s:8:\"February\";}i:2;a:2:{s:4:\"name\";s:5:\"March\";s:5:\"value\";s:5:\"March\";}i:3;a:2:{s:4:\"name\";s:5:\"April\";s:5:\"value\";s:5:\"April\";}i:4;a:2:{s:4:\"name\";s:5:\"March\";s:5:\"value\";s:5:\"March\";}i:5;a:2:{s:4:\"name\";s:5:\"April\";s:5:\"value\";s:5:\"April\";}i:6;a:2:{s:4:\"name\";s:3:\"May\";s:5:\"value\";s:3:\"May\";}i:7;a:2:{s:4:\"name\";s:4:\"June\";s:5:\"value\";s:4:\"June\";}i:8;a:2:{s:4:\"name\";s:4:\"July\";s:5:\"value\";s:4:\"July\";}i:9;a:2:{s:4:\"name\";s:6:\"August\";s:5:\"value\";s:6:\"August\";}i:10;a:2:{s:4:\"name\";s:9:\"September\";s:5:\"value\";s:9:\"September\";}i:11;a:2:{s:4:\"name\";s:7:\"October\";s:5:\"value\";s:7:\"October\";}i:12;a:2:{s:4:\"name\";s:8:\"November\";s:5:\"value\";s:8:\"November\";}i:13;a:2:{s:4:\"name\";s:8:\"December\";s:5:\"value\";s:8:\"December\";}}','250px','0',1,'a:0:{}','0',''),(5,4,'calendar_year','Calendar Year',2,'select','a:6:{i:0;a:2:{s:4:\"name\";s:4:\"2011\";s:5:\"value\";s:4:\"2011\";}i:1;a:2:{s:4:\"name\";s:4:\"2012\";s:5:\"value\";s:4:\"2012\";}i:2;a:2:{s:4:\"name\";s:4:\"2013\";s:5:\"value\";s:4:\"2013\";}i:3;a:2:{s:4:\"name\";s:4:\"2014\";s:5:\"value\";s:4:\"2014\";}i:4;a:2:{s:4:\"name\";s:4:\"2015\";s:5:\"value\";s:4:\"2015\";}i:5;a:2:{s:4:\"name\";s:4:\"2016\";s:5:\"value\";s:4:\"2016\";}}','250px','0',1,'a:0:{}','0',''),(6,4,'picture','Picture',3,'file_upload','a:0:{}','0','0',1,'a:0:{}','0',''),(7,4,'description','Description',4,'wysiwyg','a:0:{}','650px','0',1,'a:0:{}','0',''),(8,4,'location','Location',5,'text','a:0:{}','450px','0',1,'a:0:{}','0',''),(9,4,'event_date','Event Date',6,'datetime','a:0:{}','200px','0',1,'a:0:{}','0',''),(10,4,'byob','BYOB',7,'checkbox','a:0:{}','0','0',0,'a:0:{}','0',''),(11,5,'your_name','Your Name',1,'text','a:0:{}','450px','0',1,'a:0:{}','0',''),(12,5,'your_email','Your Email',2,'text','a:0:{}','450px','0',1,'a:1:{i:0;s:5:\"email\";}','0',''),(13,5,'message','Message',3,'textarea','a:0:{}','450px','0',1,'a:0:{}','0',''),(28,9,'your_name','your_name',1,'text','a:0:{}','250px','',0,'a:0:{}','',''),(29,10,'yourname','YourName',1,'text','a:0:{}','250px','',0,'b:0;','',''),(33,9,'repeat_content','Repeat Content',2,'relationship','a:0:{}','0','',0,'a:0:{}','','a:3:{s:14:\"allow_multiple\";b:1;s:10:\"field_name\";s:5:\"title\";s:12:\"content_type\";s:1:\"4\";}'),(35,9,'topic','topic',3,'topic_relationship','a:0:{}','0','a:1:{i:0;s:4:\"1000\";}',0,'a:0:{}','','a:1:{s:14:\"allow_multiple\";b:1;}'),(48,22,'body','Body',1,'wysiwyg','a:0:{}','0','',0,'a:0:{}','','a:1:{s:9:\"use_basic\";b:0;}'),(49,23,'body','Body',1,'wysiwyg','a:0:{}','0','',0,'a:0:{}','','a:1:{s:9:\"use_basic\";b:0;}'),(50,10,'sex','Sex',2,'checkbox','a:0:{}','0','',1,'a:0:{}','','');
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `email_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_template_name` varchar(100) NOT NULL,
  `email_template_subject` text NOT NULL,
  `email_template_body` text NOT NULL,
  `email_template_is_html` tinyint(1) NOT NULL,
  PRIMARY KEY (`email_template_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `hook_name` varchar(125) NOT NULL,
  `email_parameters` text NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `email_subject_template` varchar(255) DEFAULT NULL,
  `email_body_template` varchar(255) NOT NULL,
  `email_recipients` text NOT NULL,
  `email_bccs` text NOT NULL,
  `email_is_html` tinyint(1) NOT NULL,
  `email_deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'member_register','a:0:{}','{$site_name}: Account Details','member_register_1_subject.thtml','member_register_1_body.thtml','a:1:{i:0;s:6:\"member\";}','a:0:{}',1,0),(2,'member_forgot_password','a:0:{}','Your new password','member_forgot_password_2_subject.thtml','member_forgot_password_2_body.thtml','a:1:{i:0;s:6:\"member\";}','a:0:{}',1,0),(3,'member_validate_email','a:0:{}','Please validate your email','member_validate_email_3_subject.thtml','member_validate_email_3_body.thtml','a:1:{i:0;s:6:\"member\";}','a:0:{}',1,0);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `events_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `calendar_month` varchar(150) NOT NULL,
  `calendar_year` varchar(150) NOT NULL,
  `picture` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(250) NOT NULL,
  `event_date` datetime NOT NULL,
  `byob` tinyint(1) NOT NULL,
  PRIMARY KEY (`events_id`),
  KEY `content_id` (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  `form_table_name` varchar(150) NOT NULL,
  `custom_field_group_id` int(11) NOT NULL,
  `form_title` varchar(250) NOT NULL,
  `form_text` text NOT NULL,
  `form_email` varchar(250) NOT NULL,
  `form_button_text` varchar(250) NOT NULL,
  `form_redirect` varchar(250) NOT NULL,
  `form_privileges` varchar(250) NOT NULL,
  `form_template` varchar(100) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (4,1,27,'contact_us',9,'Contact_us','','','提交','contactus.html','','form.thtml'),(5,3,27,'contact_us',10,'Contact_us','','asd@df.com','提交','contactus.html','','form.thtml'),(9,2,27,'contact_us',24,'Contact_us','','asd@df.com','提交','contactus.html','','form.thtml');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_images`
--

DROP TABLE IF EXISTS `gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_images` (
  `gallery_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `gallery_image_filename` varchar(250) NOT NULL,
  `gallery_image_featured` tinyint(1) NOT NULL,
  `gallery_image_order` int(5) NOT NULL,
  `gallery_image_uploaded` datetime DEFAULT NULL,
  `gallery_title` varchar(255) NOT NULL,
  `gallery_caption` text,
  PRIMARY KEY (`gallery_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_images`
--

LOCK TABLES `gallery_images` WRITE;
/*!40000 ALTER TABLE `gallery_images` DISABLE KEYS */;
INSERT INTO `gallery_images` VALUES (1,24,'img1345521300.jpg',0,1,'2012-08-21 11:55:00','',NULL),(2,24,'img1345521304.jpg',1,3,'2012-08-21 11:55:04','',NULL),(3,24,'img1345521308.jpg',0,2,'2012-08-21 11:55:08','',NULL);
/*!40000 ALTER TABLE `gallery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hooks`
--

DROP TABLE IF EXISTS `hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hooks` (
  `hook_id` int(11) NOT NULL AUTO_INCREMENT,
  `hook_name` varchar(125) NOT NULL,
  `hook_email_data` text NOT NULL,
  `hook_other_email_data` text NOT NULL,
  `hook_description` text NOT NULL,
  `hook_created` datetime NOT NULL,
  PRIMARY KEY (`hook_id`),
  KEY `hook_name` (`hook_name`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hooks`
--

LOCK TABLES `hooks` WRITE;
/*!40000 ALTER TABLE `hooks` DISABLE KEYS */;
INSERT INTO `hooks` VALUES (1,'member_register','a:1:{i:0;s:6:\"member\";}','a:1:{i:0;s:8:\"password\";}','A new member account is created.','2012-08-20 16:06:14'),(2,'member_validate_email','a:1:{i:0;s:6:\"member\";}','a:2:{i:0;s:15:\"validation_link\";i:1;s:15:\"validation_code\";}','A member must validate their email address after registration.','2012-08-20 16:06:14'),(3,'member_forgot_password','a:1:{i:0;s:6:\"member\";}','a:1:{i:0;s:12:\"new_password\";}','A member requests a new password via the \"Forgot Password\" feature.','2012-08-20 16:06:14'),(4,'member_suspend','a:1:{i:0;s:6:\"member\";}','','A member account is suspended.','2012-08-20 16:06:14'),(5,'member_unsuspend','a:1:{i:0;s:6:\"member\";}','','A member account is unsuspended.','2012-08-20 16:06:14'),(6,'member_delete','a:1:{i:0;s:6:\"member\";}','','A member account is deleted.','2012-08-20 16:06:14'),(7,'member_login','a:1:{i:0;s:6:\"member\";}','','A member logs in.','2012-08-20 16:06:14'),(8,'member_logout','a:1:{i:0;s:6:\"member\";}','','A member logs out.','2012-08-20 16:06:14'),(9,'member_change_password','a:1:{i:0;s:6:\"member\";}','a:1:{i:0;s:12:\"new_password\";}','A member changes their password.','2012-08-20 16:06:14'),(10,'member_update','a:1:{i:0;s:6:\"member\";}','','A member profile is updated.','2012-08-20 16:06:14'),(11,'cron','','','The daily cronjob for maintenance updates.','2012-08-20 16:07:26'),(12,'mass_email_pre','','','Just before a control panel mass email is sent.','2012-08-20 16:07:26'),(13,'mass_email','','','All emails have been sent in a control panel mass email.','2012-08-20 16:07:26'),(14,'new_topic','','','A topic is published.','2012-08-20 16:07:58'),(15,'update_topic','','','A topic is updated.','2012-08-20 16:07:58'),(16,'new_content','','','A content item is published.','2012-08-20 16:07:58'),(17,'update_content','','','A content item is updated.','2012-08-20 16:07:58'),(18,'delete_topic','','','A topic is deleted.','2012-08-20 16:07:58'),(19,'delete_content','','','A content item is deleted.','2012-08-20 16:07:58');
/*!40000 ALTER TABLE `hooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_topics` varchar(255) DEFAULT NULL,
  `link_url_path` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_module` varchar(250) DEFAULT NULL,
  `link_controller` varchar(250) DEFAULT NULL,
  `link_method` varchar(250) DEFAULT NULL,
  `link_parameter` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (40,'a:1:{i:0;b:0;}','20170313142750/773467','人民群众是大人物”：总理这句话由何而来？','Blog','publish','content','view',''),(9,'','Blog','Blog Archives','Blog/Listing','blogs','blog','view',''),(10,'','blog_rss','Blog Feed','RSS Feed','rss','feed','view',''),(11,'','events','Events Calendar','Template Map','theme','template','view','events.thtml'),(13,'','rdLXv9Q4YwnY029A5VZ2s6mDcpKM','Auto-Protected Link','Protected Link','paywall','protected_link','redirect','a:3:{s:3:\"url\";s:48:\"themes/electric/images/placeholders/download.jpg\";s:6:\"groups\";a:1:{i:0;s:1:\"1\";}s:8:\"filename\";N;}'),(18,'a:1:{i:0;b:0;}','product/bbb','bbb','Product','publish','content','view',''),(19,'a:1:{i:0;b:0;}','product/fff','fff','Product','publish','content','view',''),(22,'a:1:{i:0;b:0;}','product/hjkkyuik','hjkkyuik','Product','publish','content','view',''),(23,'a:1:{i:0;b:0;}','product/hjkkyuik_1','hjkkyuik','Product','publish','content','view',''),(27,'','contact_us','Contact_us','Form','forms','form','view',''),(38,'a:1:{i:0;b:0;}','20170313135223/169395','全国政协十二届五次会议闭幕会在人民大会堂举行','News','publish','content','view',''),(39,'a:1:{i:0;b:0;}','20170313135915/854364','民法总则草案修改：限制民事行为能力人下限改为8岁','Blog','publish','content','view','');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_queue`
--

DROP TABLE IF EXISTS `mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_queue` (
  `mail_queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `to` text NOT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `subject` text NOT NULL,
  `body` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  `wordwrap` tinyint(1) NOT NULL,
  `is_html` tinyint(1) NOT NULL,
  PRIMARY KEY (`mail_queue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_queue`
--

LOCK TABLES `mail_queue` WRITE;
/*!40000 ALTER TABLE `mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(200) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'main_menu'),(2,'footer_menu');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_links`
--

DROP TABLE IF EXISTS `menus_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_links` (
  `menu_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `parent_menu_link_id` int(11) DEFAULT NULL,
  `menu_link_type` varchar(25) NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `menu_link_text` varchar(150) DEFAULT NULL,
  `menu_link_special_type` varchar(50) DEFAULT NULL,
  `menu_link_external_url` varchar(250) DEFAULT NULL,
  `menu_link_class` varchar(50) DEFAULT NULL,
  `menu_link_privileges` varchar(255) DEFAULT NULL,
  `menu_link_order` int(5) DEFAULT NULL,
  PRIMARY KEY (`menu_link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_links`
--

LOCK TABLES `menus_links` WRITE;
/*!40000 ALTER TABLE `menus_links` DISABLE KEYS */;
INSERT INTO `menus_links` VALUES (1,1,0,'special',0,'Home','home','','','',1),(2,1,0,'link',11,'Events Calendar','','','','',2),(3,1,0,'link',4,'About Us','','','','',3),(9,1,0,'link',27,'Contact_us','','','','',6),(6,2,0,'special',0,'Home','home','','','',1),(7,2,0,'link',10,'Blog RSS','','','','',3),(8,2,0,'special',0,'Control Panel','control_panel','','','',4),(10,2,0,'external',0,'user-guide','','http://localhost/hero/user_guide/changelog.html','','',2),(11,1,0,'external',0,'User-Guide','','http://localhost/hero/user_guide/changelog.html','','a:1:{i:0;s:1:\"0\";}',7),(12,1,0,'external',0,'Development','','http://localhost/hero/user_guide/developers/index.html','','',8);
/*!40000 ALTER TABLE `menus_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_version` varchar(25) NOT NULL,
  `module_installed` tinyint(1) DEFAULT NULL,
  `module_ignore` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'users','1.23',1,NULL),(2,'settings','0',NULL,NULL),(3,'emails','1.09',1,NULL),(4,'reports','1.0',1,NULL),(5,'import','1.0',1,NULL),(6,'search','1.0',1,NULL),(7,'paywall','1.0',1,NULL),(8,'custom_fields','1.04',1,NULL),(9,'publish','1.16',1,NULL),(10,'forms','1.0',1,NULL),(11,'menu_manager','1.02',1,NULL),(12,'theme','1.01',1,NULL),(13,'blogs','1.02',1,NULL),(14,'rss','1.04',1,NULL),(15,'googleanalytics','',0,1),(16,'gallery','',0,1);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`news_id`),
  KEY `content_id` (`content_id`),
  FULLTEXT KEY `search` (`body`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,36,'<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	十二届全国人大五次会议12日上午在人民大会堂举行第三次全体会议，听取和审议最高人民法院工作报告和最高人民检察院工作报告。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	习近平、李克强、张德江、俞正声、刘云山、王岐山、张高丽等出席会议。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	会议应出席代表2924人，出席2829人，缺席95人，出席人数符合法定人数。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	最高人民法院院长周强从五个方面报告了最高人民法院2016年依法履职情况：一是认真贯彻总体国家安全观，依法惩罚犯罪、保障人权；二是认真贯彻新发展理念，服务保障经济社会持续健康发展；三是认真贯彻以人民为中心的发展思想，切实保障民生权益；四是坚持从严治院，建设忠诚干净担当的人民法院队伍；五是自觉接受监督，促进司法为民公正司法。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	周强说，2016年是全面深化司法改革、深入推进信息化建设攻坚之年。一是完成巡回法庭总体布局，进一步实现最高审判机关重心下移；二是深化立案登记制改革，进一步解决立案难问题；三是推进多元化纠纷解决机制建设，有效化解矛盾纠纷；四是全面推进司法责任制等基础性改革，让审理者裁判、由裁判者负责；五是积极推进以审判为中心的刑事诉讼制度改革，确保刑事案件质量；六是推进案件繁简分流，进一步提高办案效率；七是推进人民陪审员制度改革，进一步加强司法民主；八是深化司法公开，努力让人民群众感受到公平正义；九是创新司法便民措施，进一步解决群众诉讼不便问题；十是推进执行改革，基本解决执行难问题取得实质进展。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	周强从五个方面报告了2017年工作安排：一是充分发挥审判职能作用，维护稳定、促进发展；二是坚持司法为民，更好地满足人民群众多元司法需求；三是坚定不移推进司法改革，加快建设公正高效权威的社会主义司法制度；四是加快建设智慧法院，努力提供更多优质司法服务；五是坚持从严治院，夯实基层基础，建设过硬队伍。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	最高人民检察院检察长曹建明从八个方面回顾了2016年全国检察机关各项工作：一是积极推进平安中国建设，维护国家安全和社会大局稳定，依法履行批捕、起诉等职能；二是贯彻落实新发展理念，围绕经济平稳健康发展履职尽责，主动适应经济发展新常态，努力服务大局、保障大局；三是坚持有腐必反、有贪必肃，依法查办和预防职务犯罪，&ldquo;打虎&rdquo;&ldquo;拍蝇&rdquo;&ldquo;猎狐&rdquo;一起抓；四是加强对刑事、民事、行政诉讼的法律监督，努力让人民群众在每一个司法案件中都感受到公平正义；五是坚持人民司法为人民，更好保障和改善民生，回应人民关切，维护人民权益；六是深化司法改革，促进司法公正、提高司法公信，以钉钉子精神狠抓党中央关于司法体制改革各项部署的落实；七是牢记打铁还需自身硬，从严从实加强过硬队伍建设，努力建设一支信念坚定、司法为民、敢于担当、清正廉洁的检察队伍；八是自觉接受人民监督，确保检察权依法公正行使，坚持将检察权置于人民监督之下。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	关于2017年检察机关工作安排，曹建明说，一是加强源头性、基础性工作，切实保安全护稳定促和谐；二是充分发挥法治保障作用，促进经济持续健康发展，积极服务保障供给侧结构性改革；三是坚持惩治腐败力度决不减弱、零容忍态度决不改变，在反腐败斗争中继续发挥积极作用；四是大力加强检察监督，更好惩治犯罪、保障人权；五是锲而不舍推进司法改革，促进提高司法质量、效率和公信力；六是坚持严字当头，建设过硬检察队伍，坚决防止&ldquo;灯下黑&rdquo;。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	大会主席团常务主席、执行主席万鄂湘主持会议。大会执行主席马馼、王东明、王国生、王宪魁、尤权、巴音朝鲁、白志健、乔晓阳、杜家毫、李玉妹、李伟、李纪恒、李建华、张轩、陆浩、陈敏尔、罗保铭、姜异康、娄勤俭、骆惠宁、夏宝龙、谭惠珠在主席台执行主席席就座。</p>\n'),(2,37,'<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	十二届全国人大五次会议12日上午在人民大会堂举行第三次全体会议，听取和审议最高人民法院工作报告和最高人民检察院工作报告。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	习近平、李克强、张德江、俞正声、刘云山、王岐山、张高丽等出席会议。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	会议应出席代表2924人，出席2829人，缺席95人，出席人数符合法定人数。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	最高人民法院院长周强从五个方面报告了最高人民法院2016年依法履职情况：一是认真贯彻总体国家安全观，依法惩罚犯罪、保障人权；二是认真贯彻新发展理念，服务保障经济社会持续健康发展；三是认真贯彻以人民为中心的发展思想，切实保障民生权益；四是坚持从严治院，建设忠诚干净担当的人民法院队伍；五是自觉接受监督，促进司法为民公正司法。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	周强说，2016年是全面深化司法改革、深入推进信息化建设攻坚之年。一是完成巡回法庭总体布局，进一步实现最高审判机关重心下移；二是深化立案登记制改革，进一步解决立案难问题；三是推进多元化纠纷解决机制建设，有效化解矛盾纠纷；四是全面推进司法责任制等基础性改革，让审理者裁判、由裁判者负责；五是积极推进以审判为中心的刑事诉讼制度改革，确保刑事案件质量；六是推进案件繁简分流，进一步提高办案效率；七是推进人民陪审员制度改革，进一步加强司法民主；八是深化司法公开，努力让人民群众感受到公平正义；九是创新司法便民措施，进一步解决群众诉讼不便问题；十是推进执行改革，基本解决执行难问题取得实质进展。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	周强从五个方面报告了2017年工作安排：一是充分发挥审判职能作用，维护稳定、促进发展；二是坚持司法为民，更好地满足人民群众多元司法需求；三是坚定不移推进司法改革，加快建设公正高效权威的社会主义司法制度；四是加快建设智慧法院，努力提供更多优质司法服务；五是坚持从严治院，夯实基层基础，建设过硬队伍。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	最高人民检察院检察长曹建明从八个方面回顾了2016年全国检察机关各项工作：一是积极推进平安中国建设，维护国家安全和社会大局稳定，依法履行批捕、起诉等职能；二是贯彻落实新发展理念，围绕经济平稳健康发展履职尽责，主动适应经济发展新常态，努力服务大局、保障大局；三是坚持有腐必反、有贪必肃，依法查办和预防职务犯罪，&ldquo;打虎&rdquo;&ldquo;拍蝇&rdquo;&ldquo;猎狐&rdquo;一起抓；四是加强对刑事、民事、行政诉讼的法律监督，努力让人民群众在每一个司法案件中都感受到公平正义；五是坚持人民司法为人民，更好保障和改善民生，回应人民关切，维护人民权益；六是深化司法改革，促进司法公正、提高司法公信，以钉钉子精神狠抓党中央关于司法体制改革各项部署的落实；七是牢记打铁还需自身硬，从严从实加强过硬队伍建设，努力建设一支信念坚定、司法为民、敢于担当、清正廉洁的检察队伍；八是自觉接受人民监督，确保检察权依法公正行使，坚持将检察权置于人民监督之下。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	关于2017年检察机关工作安排，曹建明说，一是加强源头性、基础性工作，切实保安全护稳定促和谐；二是充分发挥法治保障作用，促进经济持续健康发展，积极服务保障供给侧结构性改革；三是坚持惩治腐败力度决不减弱、零容忍态度决不改变，在反腐败斗争中继续发挥积极作用；四是大力加强检察监督，更好惩治犯罪、保障人权；五是锲而不舍推进司法改革，促进提高司法质量、效率和公信力；六是坚持严字当头，建设过硬检察队伍，坚决防止&ldquo;灯下黑&rdquo;。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	大会主席团常务主席、执行主席万鄂湘主持会议。大会执行主席马馼、王东明、王国生、王宪魁、尤权、巴音朝鲁、白志健、乔晓阳、杜家毫、李玉妹、李伟、李纪恒、李建华、张轩、陆浩、陈敏尔、罗保铭、姜异康、娄勤俭、骆惠宁、夏宝龙、谭惠珠在主席台执行主席席就座。</p>\n'),(3,38,'<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	十二届全国人大五次会议12日上午在人民大会堂举行第三次全体会议，听取和审议最高人民法院工作报告和最高人民检察院工作报告。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	习近平、李克强、张德江、俞正声、刘云山、王岐山、张高丽等出席会议。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	会议应出席代表2924人，出席2829人，缺席95人，出席人数符合法定人数。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	最高人民法院院长周强从五个方面报告了最高人民法院2016年依法履职情况：一是认真贯彻总体国家安全观，依法惩罚犯罪、保障人权；二是认真贯彻新发展理念，服务保障经济社会持续健康发展；三是认真贯彻以人民为中心的发展思想，切实保障民生权益；四是坚持从严治院，建设忠诚干净担当的人民法院队伍；五是自觉接受监督，促进司法为民公正司法。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	周强说，2016年是全面深化司法改革、深入推进信息化建设攻坚之年。一是完成巡回法庭总体布局，进一步实现最高审判机关重心下移；二是深化立案登记制改革，进一步解决立案难问题；三是推进多元化纠纷解决机制建设，有效化解矛盾纠纷；四是全面推进司法责任制等基础性改革，让审理者裁判、由裁判者负责；五是积极推进以审判为中心的刑事诉讼制度改革，确保刑事案件质量；六是推进案件繁简分流，进一步提高办案效率；七是推进人民陪审员制度改革，进一步加强司法民主；八是深化司法公开，努力让人民群众感受到公平正义；九是创新司法便民措施，进一步解决群众诉讼不便问题；十是推进执行改革，基本解决执行难问题取得实质进展。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	周强从五个方面报告了2017年工作安排：一是充分发挥审判职能作用，维护稳定、促进发展；二是坚持司法为民，更好地满足人民群众多元司法需求；三是坚定不移推进司法改革，加快建设公正高效权威的社会主义司法制度；四是加快建设智慧法院，努力提供更多优质司法服务；五是坚持从严治院，夯实基层基础，建设过硬队伍。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	最高人民检察院检察长曹建明从八个方面回顾了2016年全国检察机关各项工作：一是积极推进平安中国建设，维护国家安全和社会大局稳定，依法履行批捕、起诉等职能；二是贯彻落实新发展理念，围绕经济平稳健康发展履职尽责，主动适应经济发展新常态，努力服务大局、保障大局；三是坚持有腐必反、有贪必肃，依法查办和预防职务犯罪，&ldquo;打虎&rdquo;&ldquo;拍蝇&rdquo;&ldquo;猎狐&rdquo;一起抓；四是加强对刑事、民事、行政诉讼的法律监督，努力让人民群众在每一个司法案件中都感受到公平正义；五是坚持人民司法为人民，更好保障和改善民生，回应人民关切，维护人民权益；六是深化司法改革，促进司法公正、提高司法公信，以钉钉子精神狠抓党中央关于司法体制改革各项部署的落实；七是牢记打铁还需自身硬，从严从实加强过硬队伍建设，努力建设一支信念坚定、司法为民、敢于担当、清正廉洁的检察队伍；八是自觉接受人民监督，确保检察权依法公正行使，坚持将检察权置于人民监督之下。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	关于2017年检察机关工作安排，曹建明说，一是加强源头性、基础性工作，切实保安全护稳定促和谐；二是充分发挥法治保障作用，促进经济持续健康发展，积极服务保障供给侧结构性改革；三是坚持惩治腐败力度决不减弱、零容忍态度决不改变，在反腐败斗争中继续发挥积极作用；四是大力加强检察监督，更好惩治犯罪、保障人权；五是锲而不舍推进司法改革，促进提高司法质量、效率和公信力；六是坚持严字当头，建设过硬检察队伍，坚决防止&ldquo;灯下黑&rdquo;。</p>\n<p style=\"margin: 0px 0px 28px; padding: 0px; font-size: 16px; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51);\">\n	大会主席团常务主席、执行主席万鄂湘主持会议。大会执行主席马馼、王东明、王国生、王宪魁、尤权、巴音朝鲁、白志健、乔晓阳、杜家毫、李玉妹、李伟、李纪恒、李建华、张轩、陆浩、陈敏尔、罗保铭、姜异康、娄勤俭、骆惠宁、夏宝龙、谭惠珠在主席台执行主席席就座。</p>\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rss_feeds`
--

DROP TABLE IF EXISTS `rss_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rss_feeds` (
  `rss_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `rss_title` varchar(255) NOT NULL,
  `rss_description` text NOT NULL,
  `rss_filter_author` varchar(250) NOT NULL,
  `rss_filter_topic` varchar(250) NOT NULL,
  `rss_summary_field` varchar(255) NOT NULL,
  `rss_sort_field` varchar(100) NOT NULL,
  `rss_sort_dir` varchar(5) NOT NULL,
  `rss_template` varchar(150) NOT NULL,
  PRIMARY KEY (`rss_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rss_feeds`
--

LOCK TABLES `rss_feeds` WRITE;
/*!40000 ALTER TABLE `rss_feeds` DISABLE KEYS */;
INSERT INTO `rss_feeds` VALUES (1,10,1,'Blog Feed','All the latest happenings from our company.','','','body','content_date','DESC','rss_feed.txml');
/*!40000 ALTER TABLE `rss_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_group` int(11) DEFAULT NULL,
  `setting_name` varchar(250) DEFAULT NULL,
  `setting_value` text,
  `setting_help` text,
  `setting_update_date` datetime DEFAULT NULL,
  `setting_type` varchar(250) DEFAULT NULL,
  `setting_options` text,
  `setting_hidden` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,'site_name','英雄','您网站的名称。','2012-08-20 16:06:14','text','',0),(2,1,'site_email','cheneylew@163.com','所有外出系统电子邮件的回复电子邮件地址。','2012-08-20 16:06:14','text','',0),(3,1,'email_name','Hero','所有传出系统电子邮件的回复名称。','2012-08-20 16:06:14','text','',0),(4,2,'currency_symbol','$','表示网站和电子邮件中的货币。','2012-08-20 16:06:14','text','',0),(5,1,'ssl_certificate','0','如果您已安装域的SSL证书，则此设置将强制通过HTTPS传输敏感信息。','2012-08-20 16:06:14','toggle','a:2:{i:0;s:3:\"Off\";i:1;s:2:\"On\";}',0),(6,2,'default_gateway','0','由ID引用的此付款网关将是网站购买的默认网关。','2012-08-20 16:06:14','text','',0),(7,1,'locale','US','某些付款网关和其他集成需要此2字符的ISO标准国家/地区代码来确定您的区域设置。','2012-08-20 16:06:14','text','',0),(8,1,'email_signature','','如果设置此设置，则会将其附加到每封外发电子邮件','2012-08-20 16:06:14','textarea','',0),(9,1,'use_time_since','1','我们应该将24小时内的日期显示为“X分钟/小时前”吗？','2012-08-20 16:06:14','toggle','a:2:{i:0;s:3:\"Off\";i:1;s:2:\"On\";}',0),(10,1,'date_format','d-M-Y h:ia','系统日期的默认格式（在PHP date（）样式中）。','2012-08-20 16:06:14','text','',0),(11,1,'modules_auto_install','1','当将文件夹放到/ app / modules中时，自动安装模块。','2012-08-20 16:06:14','toggle','a:2:{i:0;s:3:\"Off\";i:1;s:2:\"On\";}',1),(12,3,'require_tos','0','要求注册用户同意您网站的服务条款？','2012-08-20 16:06:14','toggle','a:2:{i:0;s:2:\"No\";i:1;s:3:\"Yes\";}',0),(13,3,'terms_of_service','Enter your terms of service here.','如果“require_tos”为开，用户将在注册前被强制接受这些条款。','2012-08-20 16:06:14','textarea','',0),(14,3,'validate_emails','0','要求注册用户通过点击自动电子邮件中的链接验证其电子邮件','2012-08-20 16:06:14','toggle','a:2:{i:0;s:2:\"No\";i:1;s:3:\"Yes\";}',0),(15,3,'registration_redirect','users/','用户注册后重定向到此地址。可以是绝对或相对URL。','2012-08-20 16:06:14','text','',0),(16,3,'show_subscriptions','1','注册后，我们应该重定向到订阅包（如果存在）？如果未发生此重定向，将使用“registration_redirect”设置。','2012-08-20 16:06:14','toggle','a:2:{i:0;s:2:\"No\";i:1;s:3:\"Yes\";}',0),(17,3,'member_list_configuration','a:5:{i:0;s:8:\"username\";i:1;s:5:\"email\";i:2;s:9:\"full_name\";i:3;s:6:\"groups\";i:4;s:6:\"status\";}','','2012-08-20 16:06:14','text','',1),(18,3,'simultaneous_login_prevention','0','防止两个用户同时使用相同的帐户凭据登录。','2012-08-20 16:06:14','toggle','a:2:{i:0;s:3:\"Off\";i:1;s:2:\"On\";}',0),(19,3,'registration_spam_stopper','0','防止标准注册表单中的垃圾邮件。如果激活，您必须将以下HTML粘贴到您的注册表单中: &lt;span style=\"display: none\"&gt;&ltlabel for=\"email_confirmation_hp\"&gt;Email Confirmation&lt/label&gt;&lt;input type=\"text\" name=\"email_confirmation_hp\" value=\"\" /&gt;&lt;/span&gt;','2012-08-20 16:06:14','toggle','a:2:{i:0;s:3:\"Off\";i:1;s:2:\"On\";}',0),(20,1,'datasets_rows_per_page','50','指定在查看控制面板数据集（例如，发布的内容，成员列表等）时每页显示的行数。','2012-08-20 16:06:14','text','0',0),(21,1,'mail_queue_limit','250','每隔5分钟应该从邮件队列处理多少封电子邮件？','2012-08-20 16:07:26','text','',0),(22,6,'search_content_types','a:3:{i:1;s:4:\"body\";i:2;s:1:\"0\";i:3;s:11:\"description\";}','应该在搜索中包括哪些内容类型？','2012-08-20 16:07:26','text','',1),(23,6,'search_products','1','我们应该在搜索中包括商店产品吗？','2012-08-20 16:07:26','toggle','a:2:{i:0;s:2:\"No\";i:1;s:3:\"Yes\";}',1),(24,6,'search_delay','5','我们应该强制用户在搜索之后等待多长时间才再次搜索？','2012-08-20 16:07:26','text','',1),(25,6,'search_trim','300','如果显示搜索结果的摘要，请修剪到此许多字符。','2012-08-20 16:07:26','text','',1),(26,4,'paywall_auto','1','打开可在用户访问受限访问点时自动将用户重定向到您的付费专区。','2012-08-20 16:07:26','toggle','a:2:{i:0;s:3:\"Off\";i:1;s:2:\"On\";}',1),(27,4,'paywall_template','paywall.thtml','如果使用自动付费墙，应在付费墙上加载什么样的模板文件？','2012-08-20 16:07:26','text','',1),(28,5,'theme','electric','这是/ themes /中要访问模板文件的文件夹的名称。','2012-08-20 16:07:58','text','',0),(29,5,'frontpage_template','frontpage','当有人访问首页时，应加载哪个模板？','2012-08-20 16:07:58','text','',0),(30,4,'blog_summary_length','800','您想要将每个博客帖子摘要修剪多少个字符？注意：词语不会分成两部分 - 我们使用智能内容缩短算法。','2012-08-20 16:07:58','text','',0),(31,4,'feed_items_count','25','您要在RSS Feed中显示多少项？','2012-08-20 16:07:58','text','',0),(32,1,'googleanalytics_id','','','2012-08-20 16:07:58','text','',1),(33,1,'smarty_library','0','','2012-08-20 16:07:58','text','',1),(34,1,'smarty_library','0','','2012-08-20 16:07:59','text','',1),(35,1,'gallery_content_type_id','5','','2012-08-21 11:54:21','text','',1),(36,1,'smarty_library','0','','2017-03-13 13:31:08','text','',1),(37,1,'smarty_library','3.06','','2017-03-13 13:31:15','text','',1);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_groups`
--

DROP TABLE IF EXISTS `settings_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_groups` (
  `setting_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_group_name` varchar(250) DEFAULT NULL,
  `setting_group_help` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`setting_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_groups`
--

LOCK TABLES `settings_groups` WRITE;
/*!40000 ALTER TABLE `settings_groups` DISABLE KEYS */;
INSERT INTO `settings_groups` VALUES (1,'Core','Core system settings.'),(2,'E-commerce','Configurations related to subscriptions, products, and checkout.'),(3,'Members','Related to registration and site members.'),(4,'Publishing','Related to site content and publishing.'),(5,'Design','Configures the look of your site.  Often managed in the Design tab.'),(6,'Search','How should the site searching work?');
/*!40000 ALTER TABLE `settings_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_long` varchar(20) NOT NULL DEFAULT '' COMMENT 'Common Name',
  `name_short` char(2) NOT NULL DEFAULT '' COMMENT 'USPS Abbreviation',
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `name_long` (`name_long`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='US States';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Alabama','AL'),(2,'Alaska','AK'),(3,'Arizona','AZ'),(4,'Arkansas','AR'),(5,'California','CA'),(6,'Colorado','CO'),(7,'Connecticut','CT'),(8,'Delaware','DE'),(9,'Florida','FL'),(10,'Georgia','GA'),(11,'Hawaii','HI'),(12,'Idaho','ID'),(13,'Illinois','IL'),(14,'Indiana','IN'),(15,'Iowa','IA'),(16,'Kansas','KS'),(17,'Kentucky','KY'),(18,'Louisiana','LA'),(19,'Maine','ME'),(20,'Maryland','MD'),(21,'Massachusetts','MA'),(22,'Michigan','MI'),(23,'Minnesota','MN'),(24,'Mississippi','MS'),(25,'Missouri','MO'),(26,'Montana','MT'),(27,'Nebraska','NE'),(28,'Nevada','NV'),(29,'New Hampshire','NH'),(30,'New Jersey','NJ'),(31,'New Mexico','NM'),(32,'New York','NY'),(33,'North Carolina','NC'),(34,'North Dakota','ND'),(35,'Ohio','OH'),(36,'Oklahoma','OK'),(37,'Oregon','OR'),(38,'Pennsylvania','PA'),(39,'Rhode Island','RI'),(40,'South Carolina','SC'),(41,'South Dakota','SD'),(42,'Tennessee','TN'),(43,'Texas','TX'),(44,'Utah','UT'),(45,'Vermont','VT'),(46,'Virginia','VA'),(47,'Washington','WA'),(48,'West Virginia','WV'),(49,'Wisconsin','WI'),(50,'Wyoming','WY'),(51,'Alberta','AB'),(52,'British Columbia','BC'),(53,'Manitoba','MB'),(54,'New Brunswick','NB'),(55,'Newfoundland and Lab','NL'),(56,'Northwest Territorie','NT'),(57,'Nova Scotia','NS'),(58,'Nunavut','NU'),(59,'Ontario','ON'),(60,'Prince Edward Island','PE'),(61,'Quebec','QC'),(62,'Saskatchewan','SK'),(63,'Yukon','YT');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system`
--

DROP TABLE IF EXISTS `system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system` (
  `db_version` varchar(15) NOT NULL,
  PRIMARY KEY (`db_version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system`
--

LOCK TABLES `system` WRITE;
/*!40000 ALTER TABLE `system` DISABLE KEYS */;
INSERT INTO `system` VALUES ('3.76');
/*!40000 ALTER TABLE `system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic_maps`
--

DROP TABLE IF EXISTS `topic_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic_maps` (
  `topic_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  PRIMARY KEY (`topic_map_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic_maps`
--

LOCK TABLES `topic_maps` WRITE;
/*!40000 ALTER TABLE `topic_maps` DISABLE KEYS */;
INSERT INTO `topic_maps` VALUES (1,1002,1),(2,1002,2),(3,1001,2),(4,1002,3);
/*!40000 ALTER TABLE `topic_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_parent_id` int(11) NOT NULL,
  `topic_name` varchar(250) NOT NULL,
  `topic_description` text NOT NULL,
  `topic_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1000,0,'默认话题','<p>\n	默认话题</p>\n',0),(1001,0,'Technical','',1),(1002,0,'Hero','',1),(1003,1001,'keji','',1),(1004,0,'普通铁路','<br />\n<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">\n	&nbsp;</div>\n',1),(1005,0,'高速铁路','<br />\n<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">\n	&nbsp;</div>\n',1),(1006,1004,'总则','<br />\n<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">\n	&nbsp;</div>\n',1),(1007,1004,'第一编 技术设备','<br />\n<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">\n	&nbsp;</div>\n',1),(1008,1004,'第一编 行车组织','<br />\n<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">\n	&nbsp;</div>\n',1),(1009,1004,'第一编 信号显示','<br />\n<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">\n	&nbsp;</div>\n',1),(1010,0,'热点','<p>\n	热点新闻</p>\n',0),(1011,0,'军事','<p>\n	军事新闻</p>\n',0),(1012,0,'政治','<p>\n	政治新闻</p>\n',0);
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_activity` (
  `user_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_activity_date` datetime NOT NULL,
  PRIMARY KEY (`user_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity`
--

LOCK TABLES `user_activity` WRITE;
/*!40000 ALTER TABLE `user_activity` DISABLE KEYS */;
INSERT INTO `user_activity` VALUES (1112,1002,'2017-03-13 11:36:15'),(1110,1001,'2017-03-13 10:10:51'),(1117,1003,'2017-03-13 14:37:55'),(1108,1001,'2017-03-12 20:16:09'),(1116,1004,'2017-03-13 14:37:43'),(1115,1004,'2017-03-13 14:37:31'),(1092,1001,'2016-11-04 09:58:48'),(1091,1001,'2016-11-04 09:06:00'),(1090,1001,'2016-11-03 18:04:32'),(1089,1001,'2016-11-03 17:56:40'),(1088,1001,'2015-06-01 09:49:39'),(1087,1001,'2015-05-23 10:33:53');
/*!40000 ALTER TABLE `user_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_fields`
--

DROP TABLE IF EXISTS `user_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_fields` (
  `user_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `subscription_plans` varchar(150) NOT NULL,
  `products` varchar(150) NOT NULL,
  `user_field_billing_equiv` varchar(250) NOT NULL,
  `user_field_admin_only` tinyint(1) NOT NULL,
  `user_field_registration_form` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_fields`
--

LOCK TABLES `user_fields` WRITE;
/*!40000 ALTER TABLE `user_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_logins`
--

DROP TABLE IF EXISTS `user_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_logins` (
  `user_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_login_date` datetime NOT NULL,
  `user_login_ip` varchar(50) NOT NULL,
  `user_login_browser` varchar(255) NOT NULL,
  PRIMARY KEY (`user_login_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_logins`
--

LOCK TABLES `user_logins` WRITE;
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` VALUES (1000,1001,'2012-08-20 16:07:26','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0'),(1001,1001,'2012-08-20 16:39:34','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1002,1001,'2012-08-20 17:38:33','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:12.0) Gecko/20100101 Firefox/12.0'),(1003,1001,'2012-08-21 01:10:14','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1004,1001,'2012-08-21 02:39:44','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1005,1001,'2012-08-21 02:39:54','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1006,1001,'2012-08-21 02:40:26','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1007,1001,'2012-08-21 02:40:41','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1008,1001,'2012-08-21 02:40:52','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1009,1001,'2012-08-21 02:40:57','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1010,1001,'2012-08-21 02:41:13','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1011,1001,'2012-08-21 02:41:20','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1012,1001,'2012-08-21 02:42:30','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8) AppleWebKit/536.25 (KHTML, like Gecko) Version/6.0 Safari/536.25'),(1013,1001,'2012-08-21 02:42:50','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1014,1001,'2012-08-21 02:43:03','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1015,1001,'2012-08-21 02:43:18','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1016,1001,'2012-08-21 02:43:42','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1017,1001,'2012-08-21 02:44:07','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1018,1001,'2012-08-21 02:44:26','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1019,1001,'2012-08-21 02:44:34','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1020,1001,'2012-08-21 02:44:55','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1021,1001,'2012-08-21 02:44:59','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1022,1001,'2012-08-21 02:45:32','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1023,1001,'2012-08-21 02:45:41','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1024,1001,'2012-08-21 02:46:07','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1025,1001,'2012-08-21 02:46:16','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1026,1001,'2012-08-21 02:46:36','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1027,1001,'2012-08-21 02:46:55','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1028,1001,'2012-08-21 02:47:06','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1029,1001,'2012-08-21 02:47:21','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1030,1001,'2012-08-21 02:47:56','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1031,1002,'2012-08-21 02:49:39','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1032,1002,'2012-08-21 02:49:53','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1033,1002,'2012-08-21 02:50:31','192.168.19.44','Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)'),(1034,1002,'2012-08-21 02:51:54','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1035,1002,'2012-08-21 02:54:14','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1036,1002,'2012-08-21 02:54:20','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1037,1002,'2012-08-21 02:55:18','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1038,1002,'2012-08-21 02:56:26','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1039,1002,'2012-08-21 02:56:58','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1040,1002,'2012-08-21 02:57:16','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1041,1002,'2012-08-21 02:57:53','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1042,1002,'2012-08-21 02:58:41','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1043,1002,'2012-08-21 02:59:25','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1044,1001,'2012-08-21 02:59:55','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1045,1002,'2012-08-21 03:01:46','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1046,1002,'2012-08-21 03:01:47','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1047,1002,'2012-08-21 03:01:48','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1048,1002,'2012-08-21 03:01:49','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1049,1002,'2012-08-21 03:01:56','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1050,1002,'2012-08-21 03:02:08','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1051,1002,'2012-08-21 03:02:13','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1052,1002,'2012-08-21 03:02:23','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1053,1002,'2012-08-21 03:02:34','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1054,1002,'2012-08-21 03:02:36','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1055,1002,'2012-08-21 03:03:13','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1056,1002,'2012-08-21 03:03:22','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1057,1002,'2012-08-21 03:03:23','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1058,1002,'2012-08-21 03:03:24','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1059,1002,'2012-08-21 03:04:00','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1060,1001,'2012-08-21 03:15:08','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1061,1001,'2012-08-21 03:15:11','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1062,1001,'2012-08-21 03:15:17','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1063,1001,'2012-08-21 03:15:31','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1064,1001,'2012-08-21 03:17:50','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:12.0) Gecko/20100101 Firefox/12.0'),(1065,1001,'2012-08-21 03:18:16','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8) AppleWebKit/536.25 (KHTML, like Gecko) Version/6.0 Safari/536.25'),(1066,1001,'2012-08-21 03:19:46','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.79 Safari/537.1'),(1067,1001,'2012-08-21 14:28:44','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1'),(1068,1001,'2012-08-21 14:28:57','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:12.0) Gecko/20100101 Firefox/12.0'),(1069,1001,'2012-08-21 20:47:32','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1'),(1070,1001,'2012-08-22 05:54:10','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1'),(1071,1001,'2012-08-22 05:59:55','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:12.0) Gecko/20100101 Firefox/12.0'),(1072,1001,'2012-08-22 06:08:49','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1073,1002,'2012-08-22 06:08:52','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1074,1001,'2012-08-22 06:08:53','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1075,1001,'2012-08-22 06:08:58','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1076,1001,'2012-08-22 06:10:07','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1077,1001,'2012-08-22 06:10:37','192.168.19.44','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.83 Safari/537.1'),(1078,1001,'2012-08-22 06:51:03','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1'),(1079,1001,'2012-08-22 06:51:13','192.168.19.22','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.82 Safari/537.1'),(1080,1001,'2015-02-11 13:10:06','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0'),(1081,1001,'2015-02-11 13:10:21','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0'),(1082,1001,'2015-02-11 13:10:38','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0'),(1083,1001,'2015-02-11 13:11:52','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0'),(1084,1002,'2015-05-23 10:21:06','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0'),(1085,1002,'2015-05-23 10:29:18','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0'),(1086,1001,'2015-05-23 10:30:10','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0'),(1087,1001,'2015-05-23 10:33:53','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0'),(1088,1001,'2015-06-01 09:49:39','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0'),(1089,1001,'2016-11-03 17:56:40','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:49.0) Gecko/20100101 Firefox/49.0'),(1090,1001,'2016-11-03 18:04:32','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Safari/602.1.50'),(1091,1001,'2016-11-04 09:06:00','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12) AppleWebKit/602.1.50 (KHTML, like Gecko) Version/10.0 Safari/602.1.50'),(1092,1001,'2016-11-04 09:58:48','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36'),(1093,1002,'2017-03-12 18:03:49','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1094,1002,'2017-03-12 18:04:18','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1095,1002,'2017-03-12 18:06:49','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1096,1003,'2017-03-12 18:07:57','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1097,1003,'2017-03-12 18:08:31','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1098,1003,'2017-03-12 18:10:53','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1099,1003,'2017-03-12 18:16:05','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1100,1003,'2017-03-12 18:21:06','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1101,1003,'2017-03-12 18:26:19','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1102,1003,'2017-03-12 19:13:28','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1103,1003,'2017-03-12 19:14:51','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1104,1003,'2017-03-12 19:17:11','127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1105,1003,'2017-03-12 19:18:52','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1106,1003,'2017-03-12 19:20:06','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1107,1003,'2017-03-12 19:24:17','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1108,1001,'2017-03-12 20:16:09','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36'),(1109,1003,'2017-03-12 21:16:06','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:51.0) Gecko/20100101 Firefox/51.0'),(1110,1001,'2017-03-13 10:10:51','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1111,1003,'2017-03-13 10:44:20','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1112,1002,'2017-03-13 11:36:15','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1113,1003,'2017-03-13 14:34:59','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1114,1003,'2017-03-13 14:36:38','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1115,1004,'2017-03-13 14:37:31','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1116,1004,'2017-03-13 14:37:43','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8'),(1117,1003,'2017-03-13 14:37:55','0.0.0.0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/602.4.8 (KHTML, like Gecko) Version/10.0.3 Safari/602.4.8');
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `usergroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup_name` varchar(150) NOT NULL,
  `usergroup_default` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`usergroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
INSERT INTO `usergroups` VALUES (1,'默认',1);
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `user_is_admin` tinyint(4) NOT NULL,
  `user_groups` varchar(255) NOT NULL,
  `user_first_name` varchar(255) NOT NULL,
  `user_last_name` varchar(255) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_salt` varchar(32) DEFAULT NULL,
  `user_referrer` int(11) DEFAULT NULL,
  `user_signup_date` datetime DEFAULT NULL,
  `user_last_login` datetime DEFAULT NULL,
  `user_suspended` int(11) NOT NULL DEFAULT '0',
  `user_deleted` int(11) NOT NULL DEFAULT '0',
  `user_validate_key` varchar(32) DEFAULT NULL,
  `user_remember_key` varchar(32) DEFAULT NULL,
  `user_cart` text,
  `user_pending_charge_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `customer_id` (`customer_id`),
  KEY `user_username` (`user_username`),
  KEY `user_deleted` (`user_deleted`),
  KEY `user_suspended` (`user_suspended`),
  KEY `user_email` (`user_email`),
  KEY `user_remember_key` (`user_remember_key`)
) ENGINE=MyISAM AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1001,0,1,'|1|','Oscar','LEE','admin','oscar@opencreative.com','efa74f70304931a9976591e106c49247','477da67501daeae39a16b3de3ecb5ac5',0,'2012-08-20 16:06:51','2017-03-13 10:10:51',0,0,'','',NULL,NULL),(1002,0,1,'|1|','123456','123456','123456','ser@sef.com','f72d27c5607971d1563127c032fb1a8d','345aed6b902f9fc26aa8624673ad1d5e',0,'2012-08-21 02:49:30','2017-03-13 11:36:15',0,0,'','',NULL,NULL),(1003,0,1,'|1|','cheney','lew','cheneylew','cheneylew@163.com','1a72108af131401727830f5b464dda90','9840b4f87a73fc76ed3523c5a41e8a94',0,'2017-03-12 18:07:46','2017-03-13 14:37:55',0,0,'','',NULL,NULL),(1004,0,0,'|1|','dejun','liu','liudejun','395458203@163.com','1a0f8e98c6d2f1809893bd289aee4db6','f1e3bf5eacec2c3da13bf8efd19515e4',0,'2017-03-13 14:37:21','2017-03-13 14:37:43',0,0,'','',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-13 15:03:25
