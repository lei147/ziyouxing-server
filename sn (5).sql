-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-04 06:05:49
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sn`
--
CREATE DATABASE IF NOT EXISTS `sn` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sn`;

-- --------------------------------------------------------

--
-- 表的结构 `sn_accom`
--

DROP TABLE IF EXISTS `sn_accom`;
CREATE TABLE `sn_accom` (
  `accom_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `staty_time` datetime DEFAULT NULL,
  `accom_phone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sn_andmin`
--

DROP TABLE IF EXISTS `sn_andmin`;
CREATE TABLE `sn_andmin` (
  `andmin` varchar(100) NOT NULL,
  `upwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_andmin`
--

INSERT INTO `sn_andmin` (`andmin`, `upwd`) VALUES
('guanliyuan', '9773b705e67c053da8f44769ecaaf2a3');

-- --------------------------------------------------------

--
-- 表的结构 `sn_ask`
--

DROP TABLE IF EXISTS `sn_ask`;
CREATE TABLE `sn_ask` (
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `ask` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_ask`
--

INSERT INTO `sn_ask` (`uid`, `aid`, `title`, `subtitle`, `ask`) VALUES
(12, 4, '从来没有一个人旅行过，想知道大家在独自旅行中，有哪些难忘的经历呢？国内外都可以哈，或者有什么特别的感悟和收获？ ', '郑州', '你在旅行中，最难忘的经历是什么？'),
(11, 5, '“超有创意”这个要求看起来好高啊哈哈哈，但是如果是拍出“有那么一点点小创意”，有别于“随手拍”，我结合之前自己旅行时拍的一些照片给大家分享一些小经验，虽然也不见得有什么创意，但起码在思考怎么拍怎么构图', '全球', '旅行中如何拍出一些超有创意的照片？'),
(28, 6, '在线等，，急\n', '郑州', '空腹能吃饭吗？？？？？？？'),
(23, 7, '或者走四步跳一下，在线等，挺急的', '', '被五步蛇咬了，可以跳着到医院吗？');

-- --------------------------------------------------------

--
-- 表的结构 `sn_banner`
--

DROP TABLE IF EXISTS `sn_banner`;
CREATE TABLE `sn_banner` (
  `mid` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `banner` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_banner`
--

INSERT INTO `sn_banner` (`mid`, `tid`, `banner`) VALUES
(1, NULL, ''),
(2, NULL, ''),
(3, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `sn_com`
--

DROP TABLE IF EXISTS `sn_com`;
CREATE TABLE `sn_com` (
  `gid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sn_comment`
--

DROP TABLE IF EXISTS `sn_comment`;
CREATE TABLE `sn_comment` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_comment`
--

INSERT INTO `sn_comment` (`tid`, `pid`, `uid`, `comment`) VALUES
(9, 0, 1, '45654546435'),
(29, 0, 2, 'spc吧\n'),
(29, 0, 15, '你是个狠人'),
(32, 0, 17, '颠三倒四多规范苟富贵'),
(0, 11, 23, 'asf sdfdf'),
(0, 11, 23, 'asf sdfdf'),
(0, 11, 23, 'asf sdfdf'),
(0, 11, 23, '富洋王子，你来了'),
(0, 12, 29, '66666'),
(0, 12, 29, '66666'),
(0, 12, 29, '66666'),
(0, 6, 27, '青青草原值得你拥有'),
(0, 6, 27, '青青草原值得你拥有'),
(32, 0, 23, '狗富贵，勿相忘'),
(32, 0, 14, '勿相忘，泪两行'),
(32, 0, 23, '狗富贵，互相汪'),
(0, 0, 23, '小GV丰东股份第三个');

-- --------------------------------------------------------

--
-- 表的结构 `sn_hotel`
--

DROP TABLE IF EXISTS `sn_hotel`;
CREATE TABLE `sn_hotel` (
  `hotel_id` int(11) NOT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  `hotel_level` varchar(16) DEFAULT NULL,
  `hotel_name` varchar(16) DEFAULT NULL,
  `hotel_receiver` varchar(16) DEFAULT NULL,
  `hotel_phone` varchar(16) DEFAULT NULL,
  `hotel_add` varchar(32) DEFAULT NULL,
  `scope` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_hotel`
--

INSERT INTO `sn_hotel` (`hotel_id`, `scenic_id`, `hotel_level`, `hotel_name`, `hotel_receiver`, `hotel_phone`, `hotel_add`, `scope`) VALUES
(1, NULL, '五星级豪华大酒店', '日月梦', '李雷', '16547766653', '河南商丘境内', '大学城周边'),
(2, NULL, '四星级豪华大酒店', '啪啪', '韩梅梅', '15798766653', '河南商丘境内', '大学城周边'),
(3, NULL, '三星级豪华大酒店', '8天', '李杰', '15798766653', '河南商丘境内', '大学城周边');

-- --------------------------------------------------------

--
-- 表的结构 `sn_miss`
--

DROP TABLE IF EXISTS `sn_miss`;
CREATE TABLE `sn_miss` (
  `aid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_miss`
--

INSERT INTO `sn_miss` (`aid`, `uid`, `title`, `subtitle`) VALUES
(5, 17, NULL, '冰封的北方飒飒'),
(6, 35, NULL, '不能  因为胃现在是空的 吃饭影响肠胃'),
(7, 10, NULL, '你可以抓住咬你的五步蛇，每走四步就让那条蛇再咬你一口，这样你就又多了五步，循环往复一直到医院，加油！或者找个阴凉的地方躺下也好，这样尸体臭的慢');

-- --------------------------------------------------------

--
-- 表的结构 `sn_pinglun`
--

DROP TABLE IF EXISTS `sn_pinglun`;
CREATE TABLE `sn_pinglun` (
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sn_psp`
--

DROP TABLE IF EXISTS `sn_psp`;
CREATE TABLE `sn_psp` (
  `pid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `himg` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `site` varchar(50) DEFAULT NULL,
  `content` mediumtext,
  `subhead` varchar(500) NOT NULL,
  `zan` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_psp`
--

INSERT INTO `sn_psp` (`pid`, `uid`, `himg`, `title`, `date`, `site`, `content`, `subhead`, `zan`) VALUES
(6, 10, 'uimg/timg/1572594920531.jpeg', '托娃带狗|国庆假期哪里好，辽通草原人真少', '2019-11-01', '通辽', '<p style=\"margin-bottom: 10px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;\">北京确实是很多人都向往的地方。我觉得人一定要去一次北京，才能让余生不留遗憾。<br></p><p style=\"margin-bottom: 10px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;\"></p><p style=\"margin-bottom: 10px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;\">说到去北京，我可以给你一些建议。去北京玩，不管是自驾游还是跟团游，都要提前做好规划，最好是找一个当地靠谱的导游玩，才是最好的。去之前可以先了解下那边的天气，提前预备充足。</p><p style=\"margin-bottom: 10px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;\">我前几天刚带着父母从北京旅游回来，是朋友推荐的当地特别靠谱的<span class=\"sp_xingming \" style=\"cursor: pointer;\">珍珍</span>，非常不错的一个可人儿，可以根据你的疑问给到你解决方案和建议，这是非常好的一点。而且在你出发的前一天，会告诉好你去的一些注意事项，特别贴心。再就是<span class=\"sp_ta\">她</span>们倡导的是高端品质游，游玩非常轻松，没有任何强制性消费，很实在，专业的人做专业的事，省心。</p><p style=\"margin-bottom: 10px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, 微软雅黑, Tahoma, Arial, sans-serif;\">我们一家人是在北京玩了5天，花费才1千多，非常的实惠。多亏了<span class=\"sp_xingming \" style=\"cursor: pointer;\">珍珍</span>。</p>', '国庆假期哪好玩，回答这个问题之前', 0),
(11, 2, 'uimg/timg/1572598127751.jpg', '旅行中拍照，到底该带手机还是单反？', '2019-11-01', '浪漫的小屋', '一、选择有耐心的“人肉快门” 我觉得这才是拍出好照片的关键，不会拍照的朋友大部分对摄影是没有兴趣或者极少接触。在旅途中要当人肉快门并不容易，尤其是大太阳或者是冰天雪地的地方，很需要耐心的，遇到一个拍一次就不耐烦的同伴，想要美照的朋友只能移步“如何在旅途中自拍”这个问题了。我个人觉得选择“人肉快门”女生会比男生好一些，因为女生大多数喜欢自拍，对构图什么的有一定的认识，而且女生一般喜欢被拍，如果你给她拍出了美美的照片，她也不好意思对你弃而不顾。<img src=\"http://172.242.18.31:5050/uimg/timg/1572598237042.jpg\"><div>&nbsp;二、提前教学 利用抵达目的地之前的时间，先给对方讲解一些基本知识，旅途中的时间是有限的，等到了取景的地方，再来讲解很花时间。对于完全不会拍照，不会使用相机的朋友，我会先告诉他们如下一些内容： 1、先熟悉相机，主要是快门在哪里，半按快门对焦是怎么一回事，如果画面太黑，如何提高曝光度。当然大部分参数是我在取景的时候就设置好的。我觉得对焦是新手拍照一个很重要的点，一张照片构图不好可以后期剪裁，人胖人矮都可以后期处理，但是失焦的照片，能用的机率就比较小了。 2、构图，讲解一些基本的构图知识，类似于黄金分割线、地平线端平，蹲下拍出大长腿，不要头顶树枝，不要砍掉脚踝之类的<img src=\"http://172.242.18.31:5050/uimg/timg/1572598366596.jpg\"></div>', '经常有朋友看了我的游记，感叹“有摄影师跟着真是太幸福了”或者是“有个会拍照的男票真好“。实际上跟我一起旅行的大部分是不懂摄影的朋友，如何让他们拍出漂亮的照片，我说一说这么多年积累的旅拍经验', 0),
(12, 3, 'uimg/timg/1572598687555.jpg', '北海道的雪会记得——记蜜月旅行', '2019-11-01', '北海道', '<p style=\"border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; overflow-wrap: break-word; color: rgb(102, 102, 102); line-height: 28px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;;\">作为一个北方人，我见到雪的机率比南方人要大很多，但是大家也知道，全球气候变暖，能在冬天看到雪也是一件难事了。最近几年冬天下雪的的次数越来越少，我忘了是哪一年，一整个冬天都没有下雪，只是降温和刮风。得感冒的人也很多，大街上的人们带着口罩，嘴里也会碎碎的说为什么天不下雪。</p><p style=\"border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; overflow-wrap: break-word; color: rgb(102, 102, 102); line-height: 28px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;;\"><img src=\"http://172.242.18.31:5050/uimg/timg/1572598988911.jpg\"><br></p><p style=\"border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; overflow-wrap: break-word; color: rgb(102, 102, 102); line-height: 28px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;;\">小时候的记忆，一到冬天就会下雪，最开心的就是每次下雪，左邻右舍的小姐姐，小哥哥都会在一起玩，打雪仗、堆雪人，狗拉雪橇什么的多种玩法。现在已经出现的太少了。长大了，觉得雪也没什么了…但是每次见到雪心情的阴霾也能被瞬间扫的一干二净，就是满心欢喜！雪下不大，在地面上积的不厚，没关系！有雪就已经很好啦！只能体现我下雪心情的动物，莫过于没见过雪的滚滚们！滚滚都是一般生活在南方，没见过雪的滚滚，真的是萌到让我流鼻血的程度。</p><p style=\"border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; overflow-wrap: break-word; color: rgb(102, 102, 102); line-height: 28px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;;\"><img src=\"http://172.242.18.31:5050/uimg/timg/1572599087346.jpg\"><br></p><p style=\"border: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style: none; overflow-wrap: break-word; color: rgb(102, 102, 102); line-height: 28px; text-align: justify; font-family: &quot;Microsoft YaHei&quot;;\">2019的冬天也来了，可我还在期待，最后一场雪的到来！快下雪！快下雪！</p>', '我猜 你没有见过冬天的雪, 不曾在穿过漫长又漆黑的隧道后  猝不及防的与它相见', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_recreation`
--

DROP TABLE IF EXISTS `sn_recreation`;
CREATE TABLE `sn_recreation` (
  `active_id` int(11) NOT NULL,
  `scenic_id` int(11) DEFAULT NULL,
  `active_name` varchar(32) DEFAULT NULL,
  `active_intro` varchar(32) DEFAULT NULL,
  `active_time` datetime DEFAULT NULL,
  `active_add` varchar(32) DEFAULT NULL,
  `active_img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sn_research`
--

DROP TABLE IF EXISTS `sn_research`;
CREATE TABLE `sn_research` (
  `scenic_id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `research_name` varchar(16) DEFAULT NULL,
  `intro` varchar(32) DEFAULT NULL,
  `research_add` varchar(32) DEFAULT NULL,
  `research_receiver` varchar(16) DEFAULT NULL,
  `research_phone` varchar(16) DEFAULT NULL,
  `ticket_type` varchar(16) DEFAULT NULL,
  `charges` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_research`
--

INSERT INTO `sn_research` (`scenic_id`, `uid`, `research_name`, `intro`, `research_add`, `research_receiver`, `research_phone`, `ticket_type`, `charges`) VALUES
(1, NULL, '五朵山', '高山耸立', '河南南阳境内', '李雷', '15798766653', '组团游', '500'),
(2, NULL, '七峰山', '高山耸立', '河南南阳境内', '韩梅梅', '15736725653', '双人游', '100'),
(3, NULL, '开封府', '包青天的办案府', '河南开封境内', ';李杰', '15798752153', '个人游', '50');

-- --------------------------------------------------------

--
-- 表的结构 `sn_sign`
--

DROP TABLE IF EXISTS `sn_sign`;
CREATE TABLE `sn_sign` (
  `fid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` varchar(300) NOT NULL,
  `ph` int(11) NOT NULL,
  `qq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_sign`
--

INSERT INTO `sn_sign` (`fid`, `uid`, `text`, `ph`, `qq`) VALUES
(2, 13, '上的安抚水电费 进口量圣诞节莱克斯顿弗兰克的说法加开了房莱克斯顿圣诞快乐开始懂了上课代理费SDK路飞上课代理费SDK路飞上岛咖啡圣诞快乐上岛咖啡', 1537486845, 2147483647),
(2, 14, '能滚床单吗', 2147483647, 9564123),
(0, 15, '和大家一起玩呀', 2147483647, 1501757585),
(2, 15, '期待和小姐姐一块玩耍呀', 2147483647, 1501757585),
(3, 13, 'sxzas', 2147483647, 2147483647),
(2, 17, '留党察看数量大城市', 2147483647, 454532323),
(2, 3, '我也想去 一块去玩 结伴一块去', 2147483647, 1344178011),
(3, 3, '', 0, 0),
(0, 27, '', 0, 0),
(0, 27, '', 0, 0),
(2, 23, 'qwer', 0, 0),
(0, 23, '', 0, 0),
(0, 23, '', 0, 0),
(0, 27, '跟团', 0, 0),
(5, 29, '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sn_snow`
--

DROP TABLE IF EXISTS `sn_snow`;
CREATE TABLE `sn_snow` (
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `text` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sn_speak`
--

DROP TABLE IF EXISTS `sn_speak`;
CREATE TABLE `sn_speak` (
  `fid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `text` varchar(35) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_speak`
--

INSERT INTO `sn_speak` (`fid`, `uid`, `text`, `time`) VALUES
(2, 17, '风动旛动', NULL),
(3, 17, '温热若', NULL),
(2, 22, 'haoahoahoa', NULL),
(3, 23, '这不能追加评论吗？', NULL),
(3, 27, '抱团', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sn_travels`
--

DROP TABLE IF EXISTS `sn_travels`;
CREATE TABLE `sn_travels` (
  `tid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `himg` varchar(100) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `subhead` varchar(500) NOT NULL,
  `date` date DEFAULT NULL,
  `site` varchar(16) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_travels`
--

INSERT INTO `sn_travels` (`tid`, `uid`, `himg`, `title`, `subhead`, `date`, `site`, `content`) VALUES
(26, 10, 'uimg/timg/1572596638422.jpeg', '捷克（布拉格CK）奥地利（湖区）布达佩斯实用手册', '', '2019-11-01', '布拉格', '<div>1、由于同伴都有美签，所以我出发前办理了 意大利 的 申根 签证（方便2次出入 黑山 ，其他三国都是免签），材料还比较简单，签证费用是635元+淘宝代理费。6个工作日出签。</div><div>2、国内兑换好欧元????，我总共兑换了800欧，用于各国的货币兑换。信用卡????，银联的大部分不能用</div><div>3、????租车：一开始在Avis订好了一辆福特福克斯，租车费是18天/399欧。可惜在机场取车的时候同伴被刁难了，因为她只有驾照翻译件，没有国际驾照。所以只能在机场另外的租车公司，租了一辆较小的车。（一定要租辆好的车，因为山路特别难走！！）另外，有些车不能去往其他国家，这个要向租车公司问清楚。</div><div>4、????住宿：全程民宿（ Airbnb ），好处就是价格比酒店更合算，房间多，一般都有厨房，洗衣机、洗浴用品等，住民宿很方便自己做早餐或者洗衣服。</div><div>5、欧标的转换器（淘宝可买）、充电宝、 欧洲 通用流量卡、雨伞☂️太阳眼镜????️防晒霜、较滋润的护肤品（ 欧洲 天气真的很干燥）、泡面（泡面强烈建议“ 中国 胃”带，真的很方便，加上吃太多西餐，总会腻，相信我）</div><div>6、????衣着：我去的时候是秋季，昼夜温差很大，中午可穿吊带，晚上需开暖炉。所以厚一点的外套很有必要。</div><div>7、常用的APP：谷歌翻译app，谷歌地图、????苹果地图、TripAdvisor猫途鹰(美食软件，用它找美食基本不踩雷）</div><div><img src=\"http://172.242.18.31:5050/uimg/timg/1572596953487.jpg\"><br></div><div><div>从 塞尔维亚 过境 波黑 ，就像过境港澳这么简单（拿着护照就可以）</div><div>开了半天的车，加上山路较多，速度30-40/h，比较难开，我们大概晚上7点才到了民宿。在住的地方附近换好 波黑 货币——马克KM。1欧约=2马克，第一天完。<img src=\"http://172.242.18.31:5050/uimg/timg/1572597096692.jpg\"></div></div>'),
(27, 11, 'uimg/timg/1572596410398.jpeg', '奥地利-自然和人文的完美融合，全境自驾深度行摄之旅，外挂天鹅堡，', '', '2019-11-01', '奥地利', '<a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;的游记较多，暂不做详述，这里</span><br style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">总结一下几个&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;全景俯瞰位给大家，祝大家旅途愉快</span><br style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">????1.城堡：城堡入口有个星巴克平台，去的时候没开店，很多人在里面拍照；城堡逛完后从黄金巷出来有个小观景平台。</span><img src=\"http://b3-q.mafengwo.net/s15/M00/B3/80/CoUBGV2yXeWADdzEABeWizmJBXg334.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><div><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">????2.莱特那公园：可以同时看到&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;最中心四条桥的最佳观景点。</span><br></div><div><img src=\"http://n4-q.mafengwo.net/s15/M00/B4/67/CoUBGV2yXjGAE17IAA2gVt39oVE383.JPG?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\"><br></span></div><div><img src=\"http://n2-q.mafengwo.net/s15/M00/B3/DF/CoUBGV2yXgaAKLJDABU-T1CTmuU33.jpeg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><br></div><div><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">????3.瞭望塔：电梯登塔需要费用，塔不算太高，年轻人建议爬上去，边爬有不同高度的风景且没有玻璃阻隔，更易拍照。</span><br></div><div><img src=\"http://b1-q.mafengwo.net/s15/M00/B7/82/CoUBGV2yXzGANXw7ABXNUiOzNrw259.JPG?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\"><br></span></div><div><img src=\"http://p1-q.mafengwo.net/s15/M00/B7/8D/CoUBGV2yXzWAQLkWABFTABA0dEI295.JPG?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><br></div><div><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">????4.查理大桥：查理大桥东侧桥塔登上去，是需要钱的，但是我们在晚上六点左右上去，由于差不多关门了就没有收费，在楼梯间拍了几张。</span><br></div><div><img src=\"http://p1-q.mafengwo.net/s15/M00/B7/B6/CoUBGV2yX0KAPJ30AAdpvi2RXUU168.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><br></div><div><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">????5.&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;广场老城市政厅塔楼：250克朗一人，略贵，但是能俯瞰整个&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;广场以及老城，非常值得。</span><br style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">远眺的&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;全是统一的红顶小屋，当你走在其中又会被他的精致惊艳，每一个房子的设计都各不相同却又各有各的美，这种震感只有你到了&nbsp;</span><a href=\"http://www.mafengwo.cn/travel-scenic-spot/mafengwo/10761.html\" class=\"link _j_keyword_mdd\" data-kw=\"布拉格\" target=\"_blank\" style=\"color: rgb(77, 77, 77); cursor: pointer; background-color: transparent; outline: 0px; border-bottom: 1px solid rgb(148, 142, 142); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">布拉格</a><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\">&nbsp;，走在每一条小道上才能细细感受。</span><br></div><div><img src=\"http://b2-q.mafengwo.net/s15/M00/B8/46/CoUBGV2yX2qAXfDOAAj8ceMFXRs657.jpg?imageView2%2F2%2Fw%2F680%2Fq%2F90%7CimageMogr2%2Fstrip%2Fquality%2F90\"><span style=\"color: rgb(68, 68, 68); font-family: Arial, &quot;Lucida Grande&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, SimSun, &quot;PingFang SC&quot;, STHeiti; font-size: 15px; text-align: justify;\"><br></span></div>');

-- --------------------------------------------------------

--
-- 表的结构 `sn_user`
--

DROP TABLE IF EXISTS `sn_user`;
CREATE TABLE `sn_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_user`
--

INSERT INTO `sn_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `user_name`, `gender`, `icon`) VALUES
(1, 'tom', '123', '', '15798766653', '李雷', 1, 'uimg/timg/1572509780388.jpeg'),
(2, 'jerry', '123', '', '15736725653', '韩梅梅', 0, 'uimg/timg/1572179066406.jpeg'),
(3, 'dd', '123', '', '15798752153', '李杰', 1, 'uimg/himg/31223.jpeg'),
(10, 'yingnan', '521', NULL, NULL, NULL, NULL, 'uimg/timg/1572594793696.png'),
(11, 'ty123', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572594890997.jpg'),
(12, 'syh', '147', NULL, NULL, NULL, NULL, 'uimg/timg/1572595085288.jpg'),
(13, 'lei', '1998', NULL, NULL, NULL, NULL, 'uimg/timg/1572597316761.jpeg'),
(14, 'wenwen', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572598029760.jpg'),
(15, 'xiaoyu', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572598525854.png'),
(16, 'xiyang', '1234', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(17, 'link', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572599673522.png'),
(18, '11111', '11111', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(22, 'aaa', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(23, 'qwer', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572600382680.gif'),
(25, 'meak', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(26, 'vue', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572600720886.png'),
(27, 'huihui', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572600252278.jpeg'),
(28, 'dengfuyang', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572600497683.png'),
(29, 'ppp', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572600912623.jpg'),
(31, '152123345865', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(34, 'toma', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(35, 'tom12', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(36, 'php', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572601184107.png'),
(37, 'pno', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(38, 'cart', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(39, 'pid', '123456', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png'),
(40, 'laonvren', '123', NULL, NULL, NULL, NULL, 'uimg/timg/1572572325001.png');

-- --------------------------------------------------------

--
-- 表的结构 `sn_wenda`
--

DROP TABLE IF EXISTS `sn_wenda`;
CREATE TABLE `sn_wenda` (
  `wid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(16) NOT NULL,
  `userImg` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(500) NOT NULL,
  `views` int(11) NOT NULL,
  `htime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `sn_withfriend`
--

DROP TABLE IF EXISTS `sn_withfriend`;
CREATE TABLE `sn_withfriend` (
  `fid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `loca` varchar(15) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sn_withfriend`
--

INSERT INTO `sn_withfriend` (`fid`, `uid`, `title`, `loca`, `time`, `text`, `day`, `phone`) VALUES
(2, 11, '去杭州', '杭州西湖', '2019-11-2', '求一名小姐姐能够一起组团', 7, '15716623122'),
(3, 17, '查收', '明年吧', '2019-11-1', '地区的武器的东西', 0, '带我去多无'),
(4, 23, '窈窕淑女', '孟恩', '2019/11/1', '这也太强了', 3, '134646488');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sn_accom`
--
ALTER TABLE `sn_accom`
  ADD PRIMARY KEY (`accom_id`);

--
-- Indexes for table `sn_ask`
--
ALTER TABLE `sn_ask`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `sn_banner`
--
ALTER TABLE `sn_banner`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `sn_com`
--
ALTER TABLE `sn_com`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `sn_hotel`
--
ALTER TABLE `sn_hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `sn_miss`
--
ALTER TABLE `sn_miss`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `sn_psp`
--
ALTER TABLE `sn_psp`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sn_recreation`
--
ALTER TABLE `sn_recreation`
  ADD PRIMARY KEY (`active_id`);

--
-- Indexes for table `sn_research`
--
ALTER TABLE `sn_research`
  ADD PRIMARY KEY (`scenic_id`);

--
-- Indexes for table `sn_travels`
--
ALTER TABLE `sn_travels`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `sn_user`
--
ALTER TABLE `sn_user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `sn_wenda`
--
ALTER TABLE `sn_wenda`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `sn_withfriend`
--
ALTER TABLE `sn_withfriend`
  ADD PRIMARY KEY (`fid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `sn_accom`
--
ALTER TABLE `sn_accom`
  MODIFY `accom_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sn_ask`
--
ALTER TABLE `sn_ask`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sn_banner`
--
ALTER TABLE `sn_banner`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sn_com`
--
ALTER TABLE `sn_com`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sn_hotel`
--
ALTER TABLE `sn_hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sn_miss`
--
ALTER TABLE `sn_miss`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `sn_psp`
--
ALTER TABLE `sn_psp`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `sn_recreation`
--
ALTER TABLE `sn_recreation`
  MODIFY `active_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `sn_research`
--
ALTER TABLE `sn_research`
  MODIFY `scenic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `sn_travels`
--
ALTER TABLE `sn_travels`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `sn_user`
--
ALTER TABLE `sn_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `sn_withfriend`
--
ALTER TABLE `sn_withfriend`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
