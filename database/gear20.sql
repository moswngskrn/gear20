-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 21, 2017 at 01:57 PM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gear20`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `upload_at` date NOT NULL,
  `name_thai` varchar(255) NOT NULL,
  `img_header` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `upload_at`, `name_thai`, `img_header`, `category_id`) VALUES
(18, 'activiries1', '2017-02-08', 'กิจกรรมที่1', '../../header_pic.png', 1001),
(19, 'activiries1', '2017-02-08', 'กิจกรรมที่1', '../../header_pic.png', 1006);

-- --------------------------------------------------------

--
-- Table structure for table `album_category`
--

CREATE TABLE `album_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `album_category`
--

INSERT INTO `album_category` (`id`, `name`, `name_thai`) VALUES
(1001, 'faculty', 'คณะ'),
(1002, 'civil', 'สาขาวิศวกรรมโยธา'),
(1003, 'industrial', 'สาขาวิศวกรรมอุตสาหการ'),
(1004, 'mechanical', 'สาขาเครื่องกล'),
(1005, 'electronic', 'สาขาวิศวกรรมไฟฟ้า'),
(1006, 'computer', 'สาขาวิศวกรรมคอมพิวเตอร์'),
(1007, 'materials', 'สาขาวิศวกรรมวัสดุ'),
(1008, 'evironmental', 'สาขาวิศวกรรมสิ่งแวดล้อม'),
(1009, 'chemical', 'สาขาวิศวกรรมเคมี');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `name_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name_image`, `image`, `album_id`, `url`) VALUES
(27, '2012_05_31_16_24_448.jpg', '2012_05_31_16_24_448.jpg', 18, 'image/activities/Faculty/activiries1/'),
(28, '2012_07_26_18_34_541.jpg', '2012_07_26_18_34_541.jpg', 18, 'image/activities/Faculty/activiries1/'),
(29, '2012_07_26_18_34_5610.jpg', '2012_07_26_18_34_5610.jpg', 18, 'image/activities/Faculty/activiries1/'),
(30, '2012_07_26_18_36_002.jpg', '2012_07_26_18_36_002.jpg', 18, 'image/activities/Faculty/activiries1/'),
(31, '2012_05_31_16_25_583.jpg', '2012_05_31_16_25_583.jpg', 19, 'image/activities/Computer/activiries1/'),
(32, '2012_07_26_18_34_541.jpg', '2012_07_26_18_34_541.jpg', 19, 'image/activities/Computer/activiries1/'),
(33, '2012_08_27_11_20_582.jpg', '2012_08_27_11_20_582.jpg', 19, 'image/activities/Computer/activiries1/'),
(34, '2012_05_31_16_24_448.jpg', '2012_05_31_16_24_448.jpg', 19, 'image/activities/Computer/activiries1/'),
(35, '2012_07_26_18_34_5610.jpg', '2012_07_26_18_34_5610.jpg', 19, 'image/activities/Computer/activiries1/'),
(36, '2012_07_26_18_36_002.jpg', '2012_07_26_18_36_002.jpg', 19, 'image/activities/Computer/activiries1/'),
(37, '2012_08_27_11_26_116.jpg', '2012_08_27_11_26_116.jpg', 19, 'image/activities/Computer/activiries1/'),
(38, 'PC049805.jpg', 'PC049805.jpg', 19, 'image/activities/Computer/activiries1/'),
(39, 'PC049806.jpg', 'PC049806.jpg', 18, 'image/activities/Faculty/activiries1/'),
(40, '564877_457842057602009_1660278674_n.jpg', '564877_457842057602009_1660278674_n.jpg', 19, 'image/activities/Computer/activiries1/'),
(41, '2012_05_31_16_24_448.jpg', '2012_05_31_16_24_448.jpg', 19, 'image/activities/Computer/activiries1/'),
(42, '2012_07_26_18_34_541.jpg', '2012_07_26_18_34_541.jpg', 19, 'image/activities/Computer/activiries1/'),
(43, '2012_07_26_18_47_301.jpg', '2012_07_26_18_47_301.jpg', 19, 'image/activities/Computer/activiries1/'),
(44, '427818_457847577601457_1629525752_n.jpg', '427818_457847577601457_1629525752_n.jpg', 19, 'image/activities/Computer/activiries1/'),
(45, '536248_457856084267273_246608087_n.jpg', '536248_457856084267273_246608087_n.jpg', 19, 'image/activities/Computer/activiries1/'),
(46, '564877_457842057602009_1660278674_n.jpg', '564877_457842057602009_1660278674_n.jpg', 19, 'image/activities/Computer/activiries1/'),
(47, '2012_07_26_18_35_323.jpg', '2012_07_26_18_35_323.jpg', 19, 'image/activities/Computer/activiries1/'),
(48, '2012_05_31_16_24_422.jpg', '2012_05_31_16_24_422.jpg', 19, 'image/activities/Computer/activiries1/'),
(49, 'PC049806.jpg', 'PC049806.jpg', 19, 'image/activities/Computer/activiries1/');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `majorID` int(11) NOT NULL,
  `majorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`majorID`, `majorName`) VALUES
(1, 'civil'),
(2, 'industrial'),
(3, 'mechanical'),
(4, 'electronic'),
(5, 'computer'),
(6, 'materials'),
(7, 'evironmental'),
(8, 'chemical');

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `massage` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `name`, `rank`, `massage`, `image_path`, `class_name`) VALUES
(1, 'รศ.ดร.ศรินทร์ทิพย์ แทนธานี', 'คณบดีคณะวิศวกรรมศาสตร์', 'ในโอกาสที่นิสิตจบการศึกษา ๒๕๕๘ นี้ ครูขอแสดงความยินดีแก่ศิษย์ทุกคนที่กำลังจะบรรลุเป้าหมายในการสำเร็จการศึกษาเป็นบัณฑิตคณะวิศวกรรมศาสตร์ จุดนี้ถือเป็นก้าวแรกในการเป็นผู้ใหญ่ที่มีความรับผิดชอบต่อตนเอง ครอบครัว และสังคม ครูหวังว่าทั้งความรู้และประสบการณ์ที่พวกเราได้รับระหว่างที่ศึกษา ณ คณะวิศวกรรมศาสตร์ มหาวิทยาลัยนเรศวร จะเตรียมความพร้อมให้พวกเราสามารถเอาชนะอุปสรรค ความยากลำบากใดๆที่พวกเราจะเผชิญในภายหน้าได้ นิสิตทุกคนกำลังจะออกจากรั้วมหาวิทยาลัยเพื่อไปเป็นวิศวกรที่ดีและเป็นพลเมืองที่เป็นกำลังสำคัญของประเทศชาติ และต้องออกไปเผชิญกับการเปลี่ยนบริบทจากสังคมไปสู่สังคมอาเซียนที่มีการแข่งขันสูงขึ้น อีกทั้งต้องมีความสามารถไม่เฉพาะทางวิศวกรรมเท่านั้น แต่ต้องมีความรู้ทั้งด้านภาษาและเทคโนโลยีใหม่ๆ เพื่อให้เท่าทันกับโลกที่มีเปลี่ยนแปลงอย่างรวดเร็ว ดังนั้นการเรียนจากมหาวิทยาลัยจึงเป็นเพียงการปูพื้นฐานให้พวกเรามีศักยภาพในการเรียนรู้ มีความสามารถในการปรับตัวต่อสภาวการณ์ต่างๆ ครูอยากให้พวกเราพึงตระหนักถึงความสำคัญในการเรียนรู้ตลอดชีวิต เพื่อพัฒนาตนเองอย่างต่อเนื่อง ให้สามารถรับมือกับการเปลี่ยนแปลงอย่างรวดเร็วของ เทคโนโลยีและสังคม และขอให้พวกเรามีความมุ่งมั่น ขยัน อดทน และ ตั้งอยู่ในความดี สามารถพัฒนาตนให้ประสบความสำเร็จตามที่มุ่งหวังทุกประการ ท้ายที่สุดครูขอให้อำนาจคุณพระศรีรัตนตรัย และ บารมีสมเด็จพระนเรศวรมหาราช จงดลบันดาลให้พวกเราทุกคนประสบความสุข ความเจริญ และมีความสำเร็จในหน้าที่การงาน ตลอดจนเป็นผู้ทีมีประโยชน์ต่อประเทศชาติ', 'image/executive/1.jpg', 'chancellor'),
(2, 'ดร.กำพล ทรัพย์สมบูรณ์', 'รองคณบดีฝ่ายบริหาร', 'ขอแสดงความยินดีกับนิสิตทุกคนที่กำลังจะสำเร็จการศึกษาในปีนี้ คณะฯ รู้สึกยินดีเป็นอย่างยิ่งกับ\r\nความสำเร็จของนิสิตทุกคน ความสำเร็จนี้ย่อมแสดงให้เห็นว่านิสิตทุกคนเป็นคนที่มีความตั้งใจและใส่ใจในการ\r\nเรียนมาตลอดระยะเวลา 4 ปี มีทั้งความสุขความทุกข์ มีความลำบาก ซึ่งก่อนจะถึงวันนี้ นิสิตได้ศึกษาเล่าเรียนมา\r\nด้วยความมานะ และอดทน หลังจากนี้นิสิตบางคนอาจไปศึกษาต่อ บางคนอาจไปประกอบอาชีพ แต่ไม่ว่าใครจะ\r\nไปทำอะไรก็ตามก็ขอให้นิสิตระลึกเสมอว่า ตลอดเวลาที่นิสิตต้องทำงานและอยู่ร่วมกับผู้อื่นในสังคมนั้น การที่\r\nจะอยู่ร่วมกับผู้อื่นในสังคมได้อย่างมีความสุข นิสิตจะต้องรู้จักให้ความสำคัญแก่ผู้อื่นเสมอตน นอกจากนี้นิสิต\r\nควรทำตนให้เป็นผู้มีความซื่อสัตย์ ทั้งต่อตนเอง ต่อหน้าที่การงาน และต่อสังคมด้วย\r\nสุดท้ายนี้ขออำนาจคุณพระศรีรัตนตรัย พระสยามเทวาธิราช สิ่งศักดิ์สิทธิ์ทั้งหลายในสากลโลกองค์พระ\r\nวิษณุกรรม และขออำนาจพระบารมีแห่งองค์สมเด็จพระนเรศวรมหาราชจงดลบัลดาลให้นิสิตประสบแต่สิ่งที่\r\nเป็นมงคลต่อชีวิต แคล้วคลาดจากภยันตรายทั้งปวง ประสบความสำเร็จในชีวิต สร้างเกียรติยศ ชื่อเสียง อันนำมา\r\nซึ่งความภาคภูมิใจทั้งแก่ตนเอง ครอบครัว และมหาวิทยาลัยนเรศวร มีชีวิตที่ดีงามเจริญรุ่งเรือง รวมทั้งเป็นผู้ที่\r\nพร้อมจะสร้างประโยชน์ให้แก่ประเทศชาติสืบไป\r\n', 'image/executive/2.jpg', 'genaral'),
(3, 'ดร.พิสุทธิ์ อภิชยกุล', 'รองคณบดีฝ่ายวิชาการ', 'ขอแสดงความยินดีกับว่าทีบัณฑิต คณะวิศวกรรมศาสตร์ มหาวิทยาลัยนเรศวร โดยความหมายของคำว่า “ บัณฑิต ”\r\nหมายถึง ผู้ทรงความรู้ ผู้มีปัญญา นิสิตที่รำเรียนวิชาทางวิศวกรรมศาสตร์ในรั้วมหาวิทยานั้นผ่านการทดสอบทางวิชาการ\r\nมาอย่างต่อเนื่อง ย่อมเป็นผู้มีความรู้ เป็นผู้มีสติปัญญา ความสามารถที่จะออกไปประกอบวิชาชีพ เพื่อเลี้ยงตนและ\r\nครอบครัว แต่อีกอย่างหนึ่งที่สำคัญไม่น้อยไปกว่าความรู้คือ “คุณธรรม” ผู้ที่จะเจริญก้าวหน้าในชีวิต หน้าที่การงาน และ\r\nครอบครัว ย่อมต้องเป็นผู้มีความรู้ คู่คุณธรรม หวังเป็นอย่างยิ่งว่า ว่าที่บัณฑิตของคณะวิศวกรรมศาสตร์มหาวิทยาลัย\r\nนเรศวร จะเป็นผู้ทรงความรู้ ผู้มีปัญญา ตามความหมายของคำว่าบัณฑิต พร้อมทั้งดำรงอยู่ในศีลธรรมอันดี ช่วยกันพัฒนา\r\nประเทศชาติสืบไป\r\nขอให้ทุกท่านประสบความสำเร็จในชีวิตหน้าที่ การงาน และครอบครัว มีความเจริญสืบเนื่องต่อไป', 'image/executive/3.jpg', 'genaral'),
(4, 'ผศ.ดร.สรัณกร เหมะวิบูลย์', 'รองคณบดีฝ่ายวิจัยและ\r\nประกันคุณภาพ', 'คณะวิศวกรรมศาสตร์ มหาวิทยาลัยนเรศวร ขอแสดงความยินดีกับว่าที่บัณฑิตใหม่ทุกท่าน ในโอกาสที่นิสิตทุกคนที่\r\nกำลังจะสำเร็จการศึกษาในปีนี้ ทางคณะฯรู้สึกยินดีเป็นอย่างยิ่งกับความสำเร็จของนิสิตทุกคน \r\nความสำเร็จนี้ย่อมแสดงให้เห็นว่านิสิตทุกคนเป็นคนที่มีความตั้งใจและใส่ใจในการเรียน มาตลอดระยะเวลา 4 ปี\r\nหลังจากนี้นิสิตบางคนอาจไปศึกษาต่อ บางคนอาจไปประกอบอาชีพ แต่ไม่ว่าใครจะไปทำอะไรก็ตามก็ขอให้นิสิตได้\r\nระลึกเสมอว่า ตลอดเวลาที่นิสิตต้องทำงานและอยู่ร่วมกับผู้อื่นในสังคม และการที่จะอยู่ร่วมกับผู้อื่นในสังคมได้\r\nอย่างมีความสุขนั้น นิสิตจะต้องรู้จักที่จะเป็นทั้งผู้ให้และผู้รับอย่างเหมาะสม รู้จักให้ความสำคัญแก่ตนเอง และใน\r\nขณะเดียวกันก็รู้จักให้ความสำคัญแก่ผู้อื่นเสมอตน นอกจากนี้นิสิตควรทำตนให้เป็นผู้ที่มีความซื่อสัตย์ ทั้งต่อตนเอง\r\nต่อหน้าที่การงาน และต่อสังคม\r\nสุดท้ายนี้ขออำนาจคุณพระศรีรัตนตรัย องค์พระวิษณุกรรมและพระราชบารมีขององค์สมเด็จพระนเรศวร\r\nมหาราชได้ปกปักรักษา คุ้มครองนิสิตทุกคน แคล้วคลาดจากภยันตรายทั้งปวง ประสบความสำเร็จในชีวิต สร้าง\r\nเกียรติยศ ชื่อเสียง อันนำมาซึ่งความภาคภูมิใจทั้งให้แก่ตนเอง ครอบครัวและมหาวิทยาลัยนเรศวรต่อไป', 'image/executive/4.jpg', 'genaral'),
(5, 'ผศ.ศิษฎา สิมารักษ์', 'รองคณบดีฝ่ายกิจการนิสิต', 'ในโอกาสที่นิสิตทุกคนกำลังจะจบการศึกษาในปีนี้ อาจารย์รู้สึกยินดีเป็นอย่างยิ่งกับความสำเร็จของนิสิต\r\nทุกคน ความสำเร็จนี้ย่อมแสดงให้เห็นว่านิสิตทุกคนเป็นคนตั้งใจและใฝ่ใจในการเรียน ความดีดังกล่าวของนิสิตจึง\r\nทำให้อาจารย์ได้รู้สึกชื่นชมในความมานะพยายามที่ปฏิบัติมาตลอดเป็นระยะเวลา ๔ ปี หลังจากนี้นิสิตบางคนอาจ\r\nไปศึกษาต่อ บางคนอาจไปประกอบอาชีพ อาจารย์ขอฝากให้นิสิตได้ระลึกเสมอว่า ตลอดเวลานิสิตต้องอยู่ในสังคม\r\nต้องทำงานร่วมกับผู้อื่น และการที่จะอยู่ร่วมกับผู้อื่นในสังคมได้อย่างมีความสุขนั้น นิสิตจะต้องรู้จักที่จะเป็นทั้งผู้ให้\r\nและผู้รับอย่างเหมาะสมแก่กาลอันควร เมื่อระลึกได้เช่นนี้จะทำให้ใจของเรามีแต่ความยุติธรรม รู้จักให้ความสำคัญ\r\nแก่ตนเอง และในขณะเดียวกันก็รู้จักให้ความสำคัญแก่ผู้อื่นเสมอตน นอกจากนี้ความซื่อสัตย์ ทั้งต่อตนเอง ต่อ\r\nหน้าที่การงาน และต่อสังคม จะเป็นรางวัลเกียรติยศอันยิ่งใหญ่ในชีวิตแก่นิสิตตลอดไป\r\n', 'image/executive/5.jpg', 'genaral'),
(6, 'ผศ.ดร.ดลเดช ตั้งตระการพงษ์', 'รักษาการในตำแหน่ง\r\nหัวหน้าภาควิชา\r\nวิศวกรรมโยธา', '', 'image/executive/6.jpg', 'genaral'),
(7, 'ผศ.ดร.ภาณุ บูรณจารุกร', 'หัวหน้าภาควิชา\r\nวิศวกรรมอุตสาหการ', 'ก่อนอื่นต้องขอแสดงความยินดีกับบัณฑิตทุกท่านที่ใกล้จะสำเร็จการศึกษา ในปี 2558 เรากำลังจะเป็น\r\nวิศวกรที่ดีและเก่งด้วย ขอให้พวกเราเหล่าบัณฑิตได้รำลึกไว้ว่า ณ ถิ่นนี้ เราได้มาร่ำเรียนในดินแดนเมืองสองแคว ที่\r\nมีทั้งสิ่งศักดิ์สิทธิ์ พระพุทธชินราช พระคู่เมืองในจังหวัดพิษณุโลก ซึ่งเป็นสัญลักษณ์ของสมเด็จสัมมาพระพุทธเจ้า ที่\r\nยึดเหนี่ยวทางจิตใจให้กับพวกเราในการดำเนินชีวิตไปในทางที่ถูกและดีต่อไป เราจะมีธรรมะไว้เป็นหลักยึดเหนี่ยว\r\nในการดำเนินชีวิตทั้งในหน้าที่การงานและการปฏิบัติตนเยี่ยงคนดี นอกจากนี้เรามีพระนามของกษัตริย์ที่\r\nยิ่งใหญ่ที่ทรงพระอัจฉริยภาพ นามว่า “สมเด็จพระนเรศวรมหาราช” ซึ่งทรงใช้สติปัญญาความเก่งกล้า และบากบั่น ทรง\r\nกอบกู้เอกราชให้กับสยามประเทศของเรา พวกเราโชคดีได้มาศึกษาในดินแดนแห่งนี้แล้ว ก็เปรียบเสมือนเป็นลูก\r\nพระนเรศวรและพระพุทธชินราช ที่จะต้องประพฤติปฏิบัติตนให้สมกับเกียรติยศชื่อเสียงของทั้งสองสิ่งที่เป็นที่ยึด\r\nเหนี่ยวจิตใจของคนทั้งประเทศ อย่าให้ใครมาดูหมิ่นดูแคลนพวกเราได้...\r\nสุดท้ายนี้ขออำนวยพรให้พวกเราทุกคนมีความสุขสวัสดิ์โชคดี ให้สิ่งศักดิ์สิทธิ์ทั้งหลาย ในดินแดนแห่งนี้\r\nทั้งพลานุภาพของสมเด็จพระนเรศวรมหาราช และธรรมานุภาพของพระพุทธชินราชช่วยดลบันดาลสิ่งดีในชีวิตให้\r\nพวกท่านเจริญรุ่งเรืองในหน้าที่การงานและการดำเนินชีวิตต่อไป', 'image/executive/7.jpg\r\n', 'genaral'),
(8, 'ผศ.ดร.อนันต์ชัย อยู่แก้ว', 'หัวหน้าภาควิชา\r\nวิศวกรรมเครื่องกล', 'ความสำเร็จนี้ย่อมแสดงให้เห็นว่านิสิตทุกคนเป็นคนตั้งใจและใฝ่ใจในการเรียน ความดีดังกล่าวของนิสิตจึงทำให้อาจารย์\r\nรู้สึกชื่นชมในความมานะพยายามที่ปฏิบัติมาตลอดระยะเวลา ๔ ปี หลังจากนี้นิสิตบางคนอาจไปศึกษาต่อ บางคนอาจไป\r\nประกอบอาชีพ อาจารย์ขอฝากให้นิสิตได้ระลึกเสมอว่า ตลอดเวลานิสิตต้องอยู่ในสังคม ต้องทำงานร่วมกับผู้อื่น และการที่\r\nจะอยู่ร่วมกับผู้อื่นในสังคมได้อย่างมีความสุขนั้น นิสิตจะต้องรู้จักที่จะเป็นทั้งผู้ให้และผู้รับอย่างเหมาะสมแก่กาลอันควร \r\nเมื่อระลึกได้เช่นนี้จะทำให้ใจของเรามีแต่ความยุติธรรม รู้จักให้ความสำคัญแก่ตนเอง และในขณะเดียวกันก็รู้จักให้\r\nความสำคัญแก่ผู้อื่นเสมอตน นอกจากนี้ความซื่อสัตย์ ทั้งต่อตนเอง ต่อหน้าที่การงาน และต่อสังคม จะเป็นรางวัล\r\nเกียรติยศอันยิ่งใหญ่ในชีวิตแก่นิสิตตลอดไป\r\n', 'image/executive/8.jpg\r\n', 'genaral'),
(9, 'ผศ.ดร.อัครพันธ์ วงศ์กังแห', 'หัวหน้าภาควิชาวิศวกรรม\r\nไฟฟ้าและคอมพิวเตอร์', 'ขอให้การเริ่มต้นของชีวิตของทุกคน ที่จบการศึกษา ในปีการศึกษา 2557 นี้เป็นไปด้วยดี\r\nมีสวัสดิภาพราบรื่น เรียนรู้ทำงาน ด้วยความ ถ่อมใจ และ ทบทวนการใช้ปัญญา มีใจอดทน มี\r\nทัศนคติความคิดที่สร้างสรรค์ ขอให้ความจริง และปัญญา อยู่กับ ทุกคน \r\n\r\n', 'image/executive/9.jpg\r\n', 'genaral');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `url_image` text NOT NULL,
  `upload_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `detail`, `url_image`, `upload_at`) VALUES
(1, 'ทดสอบ', 'ส่วนขอเนื้อหาข่าว', 'http://xn--12c4bmfplte6kc5ei9v.net/wp-content/uploads/2016/08/%E0%B8%A3%E0%B8%B9%E0%B8%9B%E0%B8%A0%E0%B8%B2%E0%B8%9E%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%95%E0%B8%B9%E0%B8%99%E0%B8%AB%E0%B8%A1%E0%B8%B5%E0%B8%9E%E0%B8%B9%E0%B8%AB%E0%B9%8C-21-284x220.jpg', '2017-02-20'),
(2, 'สัมมนาเชิงปฏิบัติการ Oscilloscopes workshop', ' เนื่องด้วย บริษัท ไออาร์ซี เทคโนโลยีส์ จำกัด จะจัดอบรมและสาธิต การใช้งานของ Oscilloscope ในเบื้องต้น และนำไปใช้ในงานวิจัยและพัฒนาในการเรียนในเชิงปฏิบัติ<br>\r\n \r\nในวันที่ 3 กุมภาพันธ์ 2560  เวลา 09.00 – 15.00 น.<br>\r\nณ ห้อง Lab EE3 อาคารปฏิบัติการวิศวกรรมไฟฟ้า<br>\r\n \r\n      ดังนั้น ภาควิชาฯ จึงขอประชาสัมพันธ์สำหรับท่านผู้สนใจ เพื่อเข้าร่วมการอบรมดังกล่าว ทั้งนี้ สามารถติดต่อสอบถามรายละเอียดหรือโทรศัพท์ยืนยันเข้าร่วมฯ ได้ที่ <br>\r\n \r\nภาควิชาวิศวกรรมไฟฟ้าและคอมพิวเตอร์ คณะวิศวกรรมศาสตร์<br>\r\nหมายเลขโทรศัพท์ 0 5596 4371 (นางสาวสารินทร์  เติมสุทา)<br>\r\nภายในวันที่ 2 กุมภาพันธ์ 2560', 'http://www.ecpe.nu.ac.th/web/user_files/publicimages/osc2017.png', '2017-02-20'),
(3, ' ผู้อพยพแอฟริกา300คนโดดรั้วชายแดนเข้าสเปน', 'ผู้อพยพแอฟริกา บุกโดดรั้วชายแดนเข้าสเปน รอบ 2 เพิ่ม 300 คน บาดเจ็บ 11 ราย  สำนักข่าวต่างประเทศ รายงาน แรงงานอพยพชาวแอฟริกัน กว่า 300 คน กระโดดข้ามรั้ว กั้นเขตแดนเมืองคูต้า ระหว่างประเทศโมร็อคโก และสเปน เช้ชาวันนี้ (20กุมภาพันธ์) เข้าไปยังสเปน ซึ่งเป็นคลื่นอพยพ รอบ 2 นับตั้งแต่มีการอพยพตั้งแต่เมื่อวันศุกร์ที่ผ่านมา ตามที่ หน่วยฉุกเฉินรายงาน มีรายงานระบุว่ามีผู้อพยพ 11 คนบาดเจ็บจากการกระโดดข้ามกำแพง 6 เมตรนี้ ซึ่งรั้วลวดหนามนี้ ติดตั้งปิดล้อมทั่วแอฟริกาเหนือ    ทั้งนี้ เมื่อวันศุกร์ มีผู้อพยพข้ามรั้วเดียวกันนี้ ราว 500 คน ซึ่งเป็นรั้วนี้เป็นจุดที่มักถูกผู้อพยพแอฟริกาใช้บ่อยสำหรับการเข้าสู่ ยุโรปไม่ว่าจะด้วยการไต่หรือ ฝ่ายน้ำ เลียบชายฝั่งเพื่อเข้าไปยังยุโรป   สำหรับพื้นที่ชายแดนที่กั้น ประเทศสเปนและแอฟริกาเหนือ ตรง เขตคูต้า ทางตอนเหนือของโมรอคโกนี้ เป็นช่องแคบ ยิบรอลตาและเมลินา ซึ่ง ห่างไปทางตะวันออกและใกล้กับชายแดนแอลจีเรียที่เป้นเป้าหมายของผู้อพยพ    อย่างไรก็ตามมีผู้อพยพพยายามเข้าสู่ คูต้า ราว 1,100 คน ในเดือนมกราคมที่ผ่านมา', 'http://pe1.isanook.com/ns/0/rp/r/w700h420/ya0xa0m1w0/aHR0cDovL3BlMS5pc2Fub29rLmNvbS9ucy8wL3VkLzQzNC8yMTcxODU4Lzc2NDg4Ny0wMS5qcGc=.jpg', '2017-02-20'),
(4, 'โปรดเกล้าฯแต่งตั้งชัญณรงค์เป็นทูตอียิปต์', 'โปรดเกล้าฯ แต่งตั้ง \'ชัญณรงค์\' ดำรงตำแหน่งเอกอัครราชทูตสาธารณรัฐอาหรับอียิปต์ - \'ภควัต\' เอกอัครราชทูตเนปาล<br>\r\n\r\nเว็บไซต์ราชกิจจา เผยแพร่ประกาศสํานักนายกรัฐมนตรี เรื่อง แต่งตั้งข้าราชการพลเรือน ความว่า มีพระราชโองการโปรดเกล้าโปรดกระหม่อมแต่งตั้งข้าราชการพลเรือนสามัญ สังกัดกระทรวงการต่างประเทศ ให้ดํารงตําแหน่งประเภทบริหารระดับสูง จํานวน 2 ราย ดังนี้<br>\r\n\r\n1. นายชัยณรงค์ กีรติยุตวงศ์ อัครราชทูต สถานเอกอัครราชทูต ณ กรุงย่างกุ้ง สาธารณรัฐแห่งสหภาพเมียนมา ดํารงตําแหน่ง เอกอัครราชทูตวิสามัญผู้มีอํานาจเต็มประจําสาธารณรัฐอาหรับอียิปต์<br>\r\n\r\n2. นายภควัต ตันสกุล อัครราชทูต สถานเอกอัครราชทูต ณ กรุงโตเกียว ญี่ปุ่น ดํารงตําแหน่ง เอกอัครราชทูตวิสามัญผู้มีอํานาจเต็มประจําสหพันธ์สาธารณรัฐประชาธิปไตยเนปาล<br>\r\n\r\n\r\nพระราชสาส์นตราตั้ง ลงวันที่ 15 กุมภาพันธ์ 2560\r\nประกาศ ณ วันที่ 20 กุมภาพันธ์ 2560<br>\r\n\r\n\r\nผู้รับสนองพระราชโองการ<br>\r\nพล.อ.ประยุทธ์ จันทร์โอชา<br>\r\nนายกรัฐมนตรี', 'http://pe1.isanook.com/ns/0/rp/r/w700h420/ya0xa0m1w0/aHR0cDovL3BlMS5pc2Fub29rLmNvbS9ucy8wL3VkLzQzNC8yMTcxODUwLzc2NDg5MC0wMS5qcGc=.jpg', '2017-02-20'),
(5, 'หน.คสช.ใช้ม.44ปฏิรูประบบแต่งตั้งโยกย้ายตร.', 'พล.อ.ประยุทธ์ ใช้ ม.44 ปฏิรูประบบการแต่งตั้งโยกย้ายตำรวจ แก้ครหาซื้อขายตำแหน่ง<br>\r\n\r\nราชกิจจานุเบกษา เผยแพร่ประกาศ "คําสั่งหัวหน้าคณะรักษาความสงบแห่งชาติ ที่ 7/2560 เรื่อง การปรับปรุงระบบการพิจารณาแต่งตั้งข้าราชการตํารวจ" โดยที่การบริหารงานบุคคลของข้าราชการตำรวจซึ่งเป็นเจ้าหน้าที่ผู้รักษากฎหมายและต้นทางของกระบวนการยุติธรรมเป็นเรื่องสำคัญ โดยเฉพาะการแต่งตั้งข้าราชการตำรวจให้ดำรงตำแหน่งต่าง ๆ หากมิได้ดำเนินการให้ถูกต้องเป็นธรรมแล้ว ย่อมกระทบต่อขวัญ กำลังใจ ความเจริญก้าวหน้าในอาชีพ และประสิทธิภาพในการปฏิบัติงาน. โดย อาศัยอำนาจตามความในมาตรา 44 ของรัฐธรรมนูญแห่งราชอาณาจักรไทย (ฉบับชั่วคราว) พุทธศักราช 2557 หัวหน้าคณะรักษาความสงบแห่งชาติโดยความเห็นชอบของคณะรักษาความสงบแห่งชาติจึงมีคำสั่ง ดังต่อไปนี้<br>\r\n\r\n ข้อ 1 ให้ยกเลิกความในมาตรา 54 แห่งพระราชบัญญัติตำรวจแห่งชาติ พ.ศ. 2547 ซึ่งแก้ไขเพิ่มเติมโดยคำสั่งหัวหน้าคณะรักษาความสงบแห่งชาติ ที่ 44/2558 เรื่อง การแก้ไขปัญหาการบริหารงานบุคคลของข้าราชการตำรวจ ลงวันที่ 4 ธันวาคม พุทธศักราช 2558 และให้ใช้ความต่อไปนี้แทน“มาตรา 54 การแต่งตั้งข้าราชการตำรวจให้ดำรงตำแหน่งตั้งแต่มาตรา 44 (7) ลงมา ให้ผู้บัญชาการตำรวจแห่งชาติ หรือผู้ที่ได้รับมอบหมายจากผู้บัญชาการตำรวจแห่งชาติซึ่งดำรงตำแหน่งไม่ต่ำกว่าผู้บัญชาการเป็นผู้สั่งแต่งตั้ง โดยให้เป็นไปตามหลักเกณฑ์ วิธีการ และขั้นตอน ข้อ 2 การแต่งตั้งข้าราชการตำรวจให้ดำรงตำแหน่งตามมาตรา 44 (7) ถึง (10) ในวาระการแต่งตั้งประจำปี พ.ศ. 2559 ให้ดำเนินการตามคำสั่งหัวหน้าคณะรักษาความสงบแห่งชาติ ที่ 21/2559 เรื่อง การปฏิบัติราชการของสำนักงานตำรวจแห่งชาติ ลงวันที่ 26 เมษายน พุทธศักราช 2559 จนกว่าจะแล้วเสร็จ โดยให้นำข้อ 1 มาใช้บังคับโดยอนุโลม ข้อ 4 ให้สำนักงานตำรวจแห่งชาติศึกษาแนวทางการปฏิรูปตำรวจทั้งระบบ โดยอย่างน้อย ให้ครอบคลุมถึงการปรับปรุงการบริหารงานบุคคลของข้าราชการตำรวจ โดยพิจารณาเปรียบเทียบผลดีผลเสียและความเป็นไปได้ของหลักประกันความเป็นธรรมในการแต่งตั้งตามหลักเกณฑ์ต่าง ๆ การมีคณะกรรมการพิทักษ์ระบบคุณธรรม การดำเนินการทางวินัย การจัดระเบียบเกี่ยวกับอำนาจ ในการสอบสวนคดีอาญา การควบคุมและถ่วงดุลการใช้ดุลยพินิจ การกระจายอำนาจ การนำวิทยาการตำรวจสมัยใหม่ เทคโนโลยี และการบริหารราชการแนวใหม่มาใช้ในกิจการตำรวจ การปรับปรุงประสิทธิภาพในการป้องกันและปราบปรามอาชญากรรม การให้บริการที่อำนวยความสะดวกแก่ประชาชน และการจัดระบบสวัสดิการของข้าราชการตำรวจโดยอยู่บนพื้นฐานของหลักนิติธรรม หลักธรรมาภิบาล สิทธิมนุษยชน การรักษาความมั่นคงแห่งชาติ การปฏิรูปประเทศและยุทธศาสตร์ชาติ แล้วรายงานให้นายกรัฐมนตรีทราบภายในหกสิบวันนับแต่วันที่คำสั่งนี้มีผลใช้บังคับ เพื่อเสนอให้คณะกรรมการปฏิรูปกิจการตำรวจที่จะจัดตั้งขึ้นตามมาตรา 260 ของร่างรัฐธรรมนูญแห่งราชอาณาจักรไทย รับไปพิจารณาตามหน้าที่และอำนาจต่อไป ข้อ 5 ในกรณีเห็นสมควรนายกรัฐมนตรีหรือคณะรัฐมนตรีอาจเสนอให้คณะรักษาความสงบแห่งชาติแก้ไข เปลี่ยนแปลงคำสั่งนี้ได้ ข้อ 6 คำสั่งนี้ให้ใช้บังคับตั้งแต่วันประกาศในราชกิจจานุเบกษาเป็นต้นไป <br>\r\n\r\n\r\n\r\n\r\nสั่ง ณ วันที่ 20 กุมภาพันธ์ 2560<br>\r\nพล.อ.ประยุทธ์ จันทร์โอชา<br>\r\nหัวหน้าคณะรักษาความสงบแห่งชาติ', 'http://pe1.isanook.com/ns/0/rp/r/w700h420/ya0xa0m1w0/aHR0cDovL3BlMS5pc2Fub29rLmNvbS9ucy8wL3VkLzQzNC8yMTcxODI2Lzc2NDg2OC0wMS5qcGc=.jpg', '2017-02-20'),
(6, 'โอปอล์ พูดซึ้งถึงอั้ม พัชราภา ในฐานะติ่ง', 'เรียกว่าแค่เปิดตัวละคร “เพลิงพระนาง” ก็เรทติ้งสูงมาก และไม่เฉพาะแฟนๆ แต่ยังมีดารานักแสดงหลายคนที่ติดดูเจ้านางอนัญทิพย์ หรือ อั้ม พัชราภา ซุปตาร์สุดเซ็กซี่ที่มารับบทนี้ และหนึ่งในนั้นก็มีคุณแม่สุดแซ่บ โอปอลล์ ปาณิสรา ที่ออกตัวแรงว่าเป็นติ่งอั้มเหมือนกัน โดยโพสต์ผ่านเฟซบุ๊ก Opal Panisara Official ไว้ว่า \r\n\r\n“พี่อั้มไม่ใช่แค่"ดารา"ที่สวยมาก แต่พี่อั้มเป็น"นักแสดง"ที่เก่งมากกกก พี่อั้มยืนอย่างสง่างามอยู่บนจุดสูงสุดผ่านเวลา ผ่านการขึ้นลงของใครมากมาย โดยที่ไม่มีใครทำอะไรพี่อั้มได้ ไม่ได้เกิดจากโชคช่วย ไม่ได้เกิดจากกระแสหรือจุดขายใดๆทั้งสิ้น ทุกผลงานพิสูจน์แล้วว่าพี่อั้มคือตัวจริง #โอปกราบเจ้านางอนัญทิพย์ #กางร่มยูวีรัวๆ"', 'http://pe1.isanook.com/ns/0/rp/r/w700h420/ya0xa0m1w0/aHR0cDovL3BlMS5pc2Fub29rLmNvbS9ucy8wL3VkLzQzNC8yMTcxNDg2Lzg4ODMuanBnLmpwZw==.jpg', '2017-02-20'),
(7, 'ทรายอ้วนมาก', 'เกิดเหตุกรณ์ทรายอ้วนเกินขนาก', 'https://scontent.fbkk9-1.fna.fbcdn.net/v/t1.0-0/p206x206/15317860_1070894846369483_33769386784657514_n.jpg?oh=4d3f95a44e35c7434cff02e3f0b804cb&oe=5936E23B', '2017-02-21'),
(8, 'กล้วยขี้แตก', 'วันที่ 21 กพ 60 เกิดเหตุการณ์กล้วยขี้แตกขนาดรับประทานอาหารร้านอาหารชื่อดัง 555++', 'https://scontent.fbkk9-1.fna.fbcdn.net/v/t1.0-9/16265264_1263019237125985_4885675418032474079_n.jpg?oh=d80fb7f3e235a5fa9644652642f12b7c&oe=58FD6CAC', '2017-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profileID` int(11) NOT NULL,
  `nname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `brtday` varchar(255) NOT NULL,
  `quote` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `addr` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `faceID` varchar(100) NOT NULL,
  `lineID` varchar(50) NOT NULL,
  `jobPos` varchar(100) NOT NULL,
  `jobOff` text NOT NULL,
  `userID` int(11) NOT NULL,
  `majorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profileID`, `nname`, `fname`, `name`, `lname`, `brtday`, `quote`, `pic`, `addr`, `phone`, `faceID`, `lineID`, `jobPos`, `jobOff`, `userID`, `majorID`) VALUES
(1, 'น้ำอ้อย', 'นางสาว', 'กชกร', 'ชัยเสนา', '26/6/2538', '', 'image/image_profile/elec/56362522.jpg', 'ม.8 ต.หนองกรด อ.บรรพตพิสัย จ.นครสวรรค์ 60180', '085-2699887', 'kochakorn chaisana', 'namooy7777', '', '', 56362522, 3),
(2, 'ตูน', 'นาย', 'กฤษฎา', 'นาต๊ะ', '20/1/2538', '', 'image/image_profile/elec/56362539.jpg', '26 ม.5 ต.มหาวัน อ.แม่สอด จ.ตาก 63110', '092-9489636', 'ExEnine Toon', '', '', '', 56362539, 3),
(3, 'เคน', 'นาย', 'กฤษฎา', 'โพธา', '24/6/2537', '', 'image/image_profile/elec/56362546.jpg', '16/1 ม.1 ต.บางกระทุ่ม อ.บางกระทุ่ม จ.พิษณุโลก 65110', '084-6186609', 'Soukeeper Torturer', '', '', '', 56362546, 3),
(4, 'โก้', 'นาย', 'กัมพล', 'องการ', '7/11/2537', 'เมื่อคุณหยุดพัฒนาตัวเอง คุณก็ได้ทิ้งชีวิตไปแบ้ว', 'image/image_profile/elec/56362560.jpg', '63/2 ม.5 ต.แม่จะเรา อ.แม่ระมาด จ.ตาก 63140', '086-2118178', 'โกโก้ ทำไมถึงเปลี้ยว', 'kokolemon', '', '', 56362560, 3),
(5, 'อาร์ท', 'นาย', 'กุลธร', 'วงค์เครือใจ', '17/7/2537', '', 'image/image_profile/elec/56362584.jpg', '111 ม.3 ต.บ้านเหล่า อ.แม่ใจ จ.พะเยา 56130', '085-5296032', 'ละอ่อน บ้านเหล่า', '56362584', '', '', 56362584, 3),
(6, 'ก้อง', 'นาย', 'เขตขรรค์', 'ขำพุฒ', '29/7/2537', '', 'image/image_profile/elec/56362591.jpg', '5/6 ถ.แสงสวรรค์ ต.ปากน้ำโพ อ.เมือง จ.นครสวรรค์ 60000', '080-5112750', 'Khetkhan Khumput', 'kongcyber', '', '', 56362591, 3),
(7, 'นิวน์', 'นางสาว', 'จงกล', 'แก้วมาลา', '27/6/2537', '', 'image/image_profile/elec/56362614.jpg', '179 ม.2 ต.หาดท่าเสา อ.เมือง จ.ชัยนาท 17000', '091-7124544', 'New Chk Kaewmala', 'New Chk', '', '', 56362614, 3),
(8, 'เจน', 'นางสาว', 'เจนจิรา', 'พุ่มพวง', '15/01/2538', '', 'image/image_profile/elec/56362638.jpg', '61 ม.7 ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก 65000', '084-5968655', 'Ja Ne', 'nongjajaja_love', '', '', 56362638, 3),
(9, 'ไนท์', 'นาย', 'ชนะธิป', 'ศรีสุเทพ', '20/01/2538', '', 'image/image_profile/elec/56362645.jpg', '398/4 ถ.พระพิจิตร ต.ในเมือง อ.เมือง จ.พิจิตร 66000', '091-8430929', 'Chanathip Srisuthep', 'nguide20', '', '', 56362645, 3),
(10, 'เน็ต', 'นาย', 'ชยพล', 'พันใจลือ', '6/3/2538', '', 'image/image_profile/elec/56362652.jpg', '24 ม.5 ต.ศรีดอนชัย อ.เชียงของ จ.เชียงราย 57140', '087-1241655', 'Arsenic Cpn', '', '', '', 56362652, 3),
(11, 'อาร์ม', 'นาย', 'ฑีระพล', 'ศรีกำแหง', '14/12/2537', '', 'image/image_profile/elec/56362690.jpg', '56 ม.4 ต.วังชะโอน อ.บึงสามัคคี จ.กำแพงเพชร 62210', '082-7979681', '', '', '', '', 56362690, 3),
(12, 'เฟิร์ส', 'นาย', 'ตฌานนท์', 'พุ่มดี', '09/04/2538', '', 'image/image_profile/elec/56362720.jpg', '12/1 หมู่1 ต.สมอแข อ.เมือง จ.พิษณุโลก 65000', '088-2808459', 'Tachanon Phumdee', 'First09042538', '', '', 56362720, 3),
(13, 'อ้อ', 'นางสาว', 'ธนัชพร', 'อ้อยลี', '07/04/2538', '', 'image/image_profile/elec/56362782.jpg', '4 ถ.สะแกกรังออก ต.อุทัยใหม่ อ.เมือง จ.อุทัยธานี 61000', '083-5853656', 'A\'ao TncpOl', 'ao.tnchp', '', '', 56362782, 3),
(14, 'เจมส์', 'นาย', 'ธวัชชัย', 'ทับทิมหิน', '28/09/2536', '', 'image/image_profile/elec/56362812.jpg', '4/2 ม.6 ต.นครป่าหมาก อ.บางกระทุ่ม จ.พิษณุโลก 65110', '089-4381194', 'Tawatchai Tubthimhin', '-', '', '', 56362812, 3),
(15, 'โอ๊ก', 'นาย', 'ธีรพล', 'น่าชม', '18/11/2537', '', 'image/image_profile/elec/56362836.jpg', '53 ม.11 ต.ไร่อ้อย อ.พิชัย จ.อุตรดิตถ์ 53120', '099-1014800', 'ด.ช.โอ๊ก น่าชม', 'oakee56', '', '', 56362836, 3),
(16, 'บีม', 'นาย', 'ธีรวุฒิ', 'พงษ์ขัน', '14/11/2537', '', 'image/image_profile/elec/56362843.jpg', '37 ม. 3 ต.เชียงกลาง อ.เชียงกลาง จ.น่าน 55160', '081-6591475', 'Super\'s Beamz', 'Superbeam1412', '', '', 56362843, 3),
(17, 'ฟ่าง', 'นาย', 'นครินทร์', 'นิลกระจ่าง', '18/07/2538', '', 'image/image_profile/elec/56362850.jpg', '254 ม.3 ต.พลายชุมพล อ.เมือง จ.พิษณุโลก', '080-5053522', 'Nakharin Ninkrajang', 'afangfii', '', '', 56362850, 3),
(18, 'นุ๊ก', 'นาย', 'เนติพงศ์', 'มาพริก', '17/12/2538', '', 'image/image_profile/elec/56362874.jpg', '120 ม.7 ต.ดงคู่ อ.ศรีสัชนาลัย จ.สุโขทัย 64130', '098-534-4377', 'Netipong Mapig', 'nook13144', '', '', 56362874, 3),
(19, 'แบงค์', 'นาย', 'บุญญฤทธิ์', 'คำเลิศ', '07/07/2537', '', 'image/image_profile/elec/56362881.jpg', '108 ม.3 ต.ท่ามะเฟือง อ.พิชัย จ.อุตรดิตถ์ 53120', '080-5140753', 'BugBank Bunyarit Khamlerd', 'bankbunyarit398', '', '', 56362881, 3),
(20, 'เก่ง', 'นางสาว', 'บุญพิทักษ์', 'เธียรพันธ์พงศ์', '10/04/2538', '', 'image/image_profile/elec/56362904.jpg', '88/115 ซ.5 ถนนพระราม2 แขวงแสมดำ เขตบางขุนเทียน จ.กทม 10150', '097-1619269', 'Boonpitak Thearpanpong ', '', '', '', 56362904, 3),
(21, 'ปังปอนด์', 'นางสาว', 'เบญจมาพร', 'น้อยสุขขะ', '07/02/2535', '', 'image/image_profile/elec/56362911.jpg', '334/4 ถ.พุทธบูชา ต.ในเมือง อ.เมือง จ.พิษณุโลก 65000', '', '', '', '', '', 56362911, 3),
(22, 'เอิงเอย', 'นางสาว', 'ปฐมา', 'ทองทา', '17/03/2538', 'ดนตรีคือชีวิต', 'image/image_profile/elec/56362928.jpg', '10/1 ม.4 ต.หัวป่า อ.พรหมบุรี จ.สิงห์บุรี 16120', '091-8832894', 'Earng', 'earngnat', '', '', 56362928, 3),
(23, 'ไนท์', 'นาย', 'ปาริชาติ', 'จันทร์แดง', '23/7/2537', '', 'image/image_profile/elec/56362959.jpg', '76 ม.9 ต.หนองปลิง อ.เมือง จ.กำเเพงเชร 62000', '095-5078581', 'Knight', '', '', '', 56362959, 3),
(24, 'เต้', 'นาย', 'พรชัย', 'พันธ์มุง', '03/01/2537', '', 'image/image_profile/elec/56362973.jpg', '99/10 ม.9 ต.ท่าโพธิ์  อ.เมืองพิษณุโลก  จ.พิษณุโลก  65000', '092-2934910', 'Tae pornchai panmung', '-', '', '', 56362973, 3),
(25, 'เจ', 'นาย', 'พีระเดช', 'เล้าสุวรรณกุล', '10/10/2537', '', 'image/image_profile/elec/56363000.jpg', '3/1 ม.1 ต.หนองกระทุ่ม อ.ทัพทัน จ.อุทัยธานี 61120', '091-2825722', 'Peeradech Lausuwanagul', 'nongjay9821', '', '', 56363000, 3),
(26, 'ปิงปอง', 'นาย', 'ภัทรพงษ์', 'ชมเดช', '03/03/2538', '', 'image/image_profile/elec/56363024.jpg', '353/1 ม.2 ต.วังทอง อ.วังทอง จ.พิษณุโลก 65130', '090-0622088', 'Phatarapong Chomdech', 'mewlatino', '', '', 56363024, 3),
(27, 'เช็ง', 'นาย', 'ธนกฤต', 'ส่งทานินทร์', '19/08/2537', '', 'image/image_profile/elec/56363031.jpg', '16 ม.4 ต.คลองยาง อ.สวรรคโลก จ.สุโขทัย 64110', '08-6446-9914', 'cheng song', 'chebengsoteng', '', '', 56363031, 3),
(28, 'บี', 'นาย', 'มนตรี', 'หัวสิ่ว', '13/07/2537', '', 'image/image_profile/elec/56363062.jpg', '56 ม.10 ต.ปากน้ำ อ.สวรรคโลก จ.สุโขทัย 64110', ' 094-9124999', 'Montri Huasiu', 'i.beee', '', '', 56363062, 3),
(29, 'เอฟ', 'นาย', 'มานิตย์', 'ประชะติ', '1/11/2537', '', 'image/image_profile/elec/56363079.jpg', '248/4 ม.15 ต.หนองกรด อ.บรรพตพิสัย จ.นครสวรรค์ 60180', '098-8166304', 'ZEr Manid Prachati (มานิตย์)', '-', '', '', 56363079, 3),
(30, 'ท็อป', 'นาย', 'ยุทธการณ์', 'ศิริกุล', '18/08/2537', 'ไม่ตายก็ดิ้นกันไป เดี่ยววันนี้ก็ผ่านไป วันใหม่ก็เข้ามา', 'image/image_profile/elec/56363086.jpg', '65/2 ม.5 ต.ไผ่ขอดอน อ.เมือง จ.พิษณุโลก 65000', '094-6276262', 'ท็อป ท็อป (นี่คือชื่อจริงของ ท็อป)', 'topclub35', '', '', 56363086, 3),
(31, 'คิว', 'นาย', 'โยธิน', 'ศฤงคาร', '28/12/2537', '', 'image/image_profile/elec/56363093.jpg', '127 ม.1 ต.บ้านปง อ.สูงเม่น จ.แพร่ 54130', '089-9694247', 'Yotin Saringkan', 'nongq00', '', '', 56363093, 3),
(32, 'เจมส์', 'นาย', 'รณชัย', 'วันทอง', '23/08/2536', '', 'image/image_profile/elec/56363109.jpg', '296/2 ม.2 ต.บ้านสวน อ.เมือง จ.สุโขทัย 64220', '089-4364627', 'Paul Ja\'mezz', '-', '', '', 56363109, 3),
(33, 'แอ้ม', 'นางสาว', 'รัตนาภรณ์', 'ยาใจ', '30/06/2537', '', 'image/image_profile/elec/56363116.jpg', '72 ม.7 ต.ศรีดอนไชย อ.เทิง จ.เชียงราย', '093-2158827', 'แอ้มไง จะใครล่ะ', 'AemAem Divergent', '', '', 56363116, 3),
(34, 'เปา', 'นาย', 'วรนาถ', 'กอนโพชน์', '9/7/2537', '', 'image/image_profile/elec/56363147.jpg', '66/9 ถ.พาดวารี ต.ท่าอิฐ อ.เมือง จ.อุตรดิตถ์ 53000', '080-6874696', 'Woranaat kornpoch', 'pao.wk', '', '', 56363147, 3),
(35, 'ฝน', 'นางสาว', 'วิริยภรณ์', 'ศรีภุมมา', '18/8/2537', '', 'image/image_profile/elec/56363161.jpg', '45 ม.8 ต.บ้านมาง อ.เชียงม่วน จ.พะเยา 56160', '095-6407884', 'Wiriyaporn sriphumma', 'fonwiriyaporn', '', '', 56363161, 3),
(36, 'ฮาฟ', 'นาย', 'วิรพล', 'สุพิน', '24/09/2537', '', 'image/image_profile/elec/56363178.jpg', '18 ม.4 ต.หนองกรด อ.บรรพตพิสัย จ.นครสวรรค์ 60180', '088-4388987', 'Zer Weerapon Supin', 'half ครับผม', '', '', 56363178, 3),
(37, 'เสก', 'นาย', 'ศักย์ศรณ์', 'ฉ่ำมณี', '29/07/2537', '', 'image/image_profile/elec/56363208.jpg', '62  หมู่ 1  ตำบลหมอกจำแป่  อำเภอเมือง จังหวัดแม่ฮ่องสอน 58000', '095-3199988', 'Saksorn Chammanee', 'sek.chammanee', '', '', 56363208, 3),
(38, 'โบ', 'นางสาว', 'ศิริลักษณ์', 'ยืนยั่ง', '14/05/2538', '', 'image/image_profile/elec/56363215.jpg', '320/1 ม.1 ต.นิคมทุ่งโพธิ์ทะเล อ.เมือง จ.กำแพงเพชร 62000', '095-6433347', 'littlebo', 'bozzzzz', '', '', 56363215, 3),
(39, 'ฟลุค', 'นางสาว', 'ศุภรัสมิ์', 'กอบสาริกรณ์', '13/5/2538', '', 'image/image_profile/elec/56363239.jpg', '359/1 ม.1 ต.เชียงทอง อ.วังเจ้า จ.ตาก 63000', '093-2688956', 'Suparat Kopsarikorn', 'wawawanna', '', '', 56363239, 3),
(40, 'มิ้ว', 'นางสาว', 'สมปรารถนา', 'บุญเรือน', '02/06/2538', '', 'image/image_profile/elec/56363246.jpg', '11 ม.7 ต.คลองตะเกรา  อ.ท่าตะเกียบ  จ.ฉะเชิงเทรา 24160', '086-1094380', 'Sompattana Milk Boonruaen', 'milkgiihoney', '', '', 56363246, 3),
(41, 'ไอซ์', 'นาย', 'สมพร', 'กันเดช', '26/09/2537', '', 'image/image_profile/elec/56363253.jpg', '10 หมู่ 5 ต.มะตูม อ.พรหมพิราม จ.พิษณุโลก 65150', '087-7347318', 'Ishimaru Kazuma', 'parktaeporw1141', '', '', 56363253, 3),
(42, 'เก่ง', 'นาย', 'สรวิศ', 'โรงคำ', '06/10/2537', '', 'image/image_profile/elec/56363260.jpg', '459/268 ม.7 ต.สมอแข อ.เมือง จ.พิษณุโลก 65000', '086-9355330', 'Sorawi Rongkum', '', '', '', 56363260, 3),
(43, 'บอส', 'นาย', 'สืบสาน', 'ไคร้ศรี', '17/01/2538', '', 'image/image_profile/elec/56363284.jpg', '45 ม.2 ต.ท่าสาย อ.เมือง จ.เชียงราย 57000', '088-1615258', 'สืบสาน ไคร้ศรี', 'boss0881615258', '', '', 56363284, 3),
(44, 'โจ๊คกี้', 'นาย', 'สุนคร', 'แผนสมบูรณ์', '23/07/37', '', 'image/image_profile/elec/56363307.jpg', '123/22743 ม.2 ต.อรัญญิก อ.เมือง จ.พิษณุโลก 65000', '061-2685634', 'Joke Sunakon Pansomboon', 'Jokkii', '', '', 56363307, 3),
(45, 'ปอม', 'นาย', 'สุุพศิน', 'สุขศรี', '05/03/2536', 'นอนให้น้อย กินให้เยอะ', 'image/image_profile/elec/56363314.jpg', '100/84 ถ.บรมไตรโลกนารถ ต.ในเมือง อ.เมือง จ.พิษณุโลก 65000', '090-0599602', 'Suphasin Suksri', 'pomethestar', '', '', 56363314, 3),
(46, 'เฟิร์ส', 'นาย', 'อภิชาติ', 'จันทร์น้อย', '20/08/2537', 'ลืมกระเป๋าตัง ระวังตกรถนะพี่', 'image/image_profile/elec/56363321.jpg', '188 ม.8 ต.แม่สิน อ.ศรีสัชนาลัย จ.สุโขทัย', '088-4383484', 'Apichart Jannoi', 'dr.primozz', '', '', 56363321, 3),
(47, 'กล้วย', 'นาย', 'อภิรักษ์', 'ตาดทิพย์', '23/03/2538', '', 'image/image_profile/elec/56363345.jpg', '3/32  ถ.วังจันทน์  ต.ในเมือง  อ.เมือง  จ.พิษณุโลก  65000', '085-0530904', 'Apirak  Tadthip', 'T.Apirak', '', '', 56363345, 3),
(48, 'ไอซ์', 'นาย', 'อรรถพล', 'ปัญญารุ้ง', '11/07/2537', '', 'image/image_profile/elec/56363352.jpg', '12/2 ม.2 ต.นานกกก อ.ลับแล จ.อุตรดิตถ์ 53130', '', '', '', '', '', 56363352, 3),
(49, 'ตูน', 'นางสาว', 'อัญชิสา', 'บุญมาก', '04/06/2537', 'Wow!!!', 'image/image_profile/elec/56363369.jpg', '156 หมู่ 1 ต.โตนด อ.คีรีมาศ จ.สุโขทัย 64160', '081-6043301', 'Unchisa Boonmak', '', '', '', 56363369, 3),
(50, 'ดรีม', 'นางสาว', 'เสาวลักษณ์', 'เตี้ยไธสงค์', '22/09/2537', '', 'image/image_profile/elec/56365066.jpg', '177 ม.11 ต.ห้วยลาน อ.ดอกคำใต้ จ.พะเยา 56120', '099-2305777', 'ดรีม ม.', 'dreammy_22', '', '', 56365066, 3),
(103, '..', 'นาย', 'ทดสอบ', 'm', '2017-02-21', 'ไม่บอด', 'image/image_profile/computer/Screenshot_20170126-224031.png', '', '', '', '', '', '', 58111111, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `userPass` varchar(100) NOT NULL,
  `userStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `userPass`, `userStatus`) VALUES
(11111111, 'yj3YQU0O', 'user'),
(56362522, '1234', 'user'),
(56362539, '1234', 'user'),
(56362546, '1234', 'user'),
(56362560, '1234', 'user'),
(56362584, '1234', 'user'),
(56362591, '1234', 'user'),
(56362614, '1234', 'user'),
(56362638, '1234', 'user'),
(56362645, '1234', 'user'),
(56362652, '1234', 'user'),
(56362690, '1234', 'user'),
(56362720, '1234', 'user'),
(56362782, '1234', 'user'),
(56362812, '1234', 'user'),
(56362836, '1234', 'user'),
(56362843, '1234', 'user'),
(56362850, '1234', 'user'),
(56362874, '1234', 'user'),
(56362881, '1234', 'user'),
(56362904, '1234', 'user'),
(56362911, '1234', 'user'),
(56362928, '1234', 'user'),
(56362959, '1234', 'user'),
(56362973, '1234', 'user'),
(56363000, '1234', 'user'),
(56363024, '1234', 'user'),
(56363031, '1234', 'user'),
(56363062, '1234', 'user'),
(56363079, '1234', 'user'),
(56363086, '1234', 'user'),
(56363093, '1234', 'user'),
(56363109, '1234', 'user'),
(56363116, '1234', 'user'),
(56363147, '1234', 'user'),
(56363161, '1234', 'user'),
(56363178, '1234', 'user'),
(56363208, '1234', 'user'),
(56363215, '1234', 'user'),
(56363239, '1234', 'user'),
(56363246, '1234', 'user'),
(56363253, '1234', 'user'),
(56363260, '1234', 'user'),
(56363284, '1234', 'user'),
(56363307, '1234', 'user'),
(56363314, '1234', 'user'),
(56363321, '1234', 'user'),
(56363345, '1234', 'user'),
(56363352, '1234', 'user'),
(56363369, '1234', 'user'),
(56365066, '1234', 'user'),
(58111111, '9k9krFpO', 'admin'),
(58364609, '1234', 'super admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `album_category`
--
ALTER TABLE `album_category`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`,`album_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`majorID`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `majorID` (`majorID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `album_category`
--
ALTER TABLE `album_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profileID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `album_category` (`id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;