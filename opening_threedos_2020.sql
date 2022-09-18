-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 08:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opening_threedos_2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendee`
--

CREATE TABLE `attendee` (
  `ID` int(3) NOT NULL,
  `code` varchar(8) DEFAULT NULL,
  `name` varchar(36) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `council` varchar(20) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `money` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendee`
--

INSERT INTO `attendee` (`ID`, `code`, `name`, `phone`, `council`, `status`, `money`) VALUES
(1, '3DOS-A1', 'mahinour ahmed', '0111 317 0358', 'web development', b'1', b'1'),
(2, '3DOS-M1', 'marina magdy fawzy', '120 671 7236', 'marketing', b'0', b'1'),
(3, '3DOS-M2', 'nouran hesham mohamed', '111 174 8732', 'ceo', b'0', b'1'),
(4, '3DOS-M3', 'filopateer tamer', '120 810 8031', 'ceo', b'0', b'1'),
(5, '3DOS-M4', 'madonna maged', '120 814 7141', 'ceo', b'0', b'1'),
(6, '3DOS-M5', 'lobna abdelaziz ahmed', '1159754257', 'stock market', b'0', b'1'),
(7, '3DOS-M6', 'beshoy emil shawky', '1285522268', 'ceo', b'0', b'1'),
(8, '3DOS-M7', 'omnia mohamed', '0 102 405 3134', 'cyber security', b'0', b'1'),
(9, '3DOS-M8', 'donia mohamed abdelsalam', '1154800486', 'cyber security', b'0', b'1'),
(10, '3DOS-M9', 'rana mahmod watany', '1128942149', 'cyber security', b'0', b'1'),
(11, '3DOS-M10', 'ahmad farid farag', '1013996079', 'cyber security', b'0', b'1'),
(12, '3DOS-O2', 'Mai Mohamed Mostafa', '1127573176', NULL, b'0', b'1'),
(13, '3DOS-O4', 'Merna Maher Abdelmoniem', '1150222562', NULL, b'0', b'1'),
(14, '3DOS-O5', 'Yousef Ahmed Mohamed', '1554044963', 'CEO', b'0', b'1'),
(15, '3DOS-O6', 'Marina Magdi Girgis', '1225686270', 'BIS', b'0', b'1'),
(16, '3DOS-O7', 'Nouran Ehab Salah', '1144577175', 'Marketing', b'0', b'1'),
(17, '3DOS-O8', 'Nouran AlHussieny', '+20 115 492 6959', 'Marketing', b'0', b'1'),
(18, '3DOS-O9', 'Yara Mustafa', '1140114347', 'Stockmarket', b'0', b'1'),
(19, '3DOS-O10', 'Souliman Baba Said Yehia', '1113099122', NULL, b'0', b'1'),
(20, '3DOS-SF1', 'Nour Abou Gabal', '1227860569', 'Stock Market', b'0', b'1'),
(21, '3DOS-SF3', 'abdelrahman mostafa', '0 109 331 6933', 'Marketing course', b'1', b'1'),
(22, '3DOS-SF4', 'youssef mohassen', '1064692733', 'outcomer', b'0', b'1'),
(23, '3DOS-Y1', 'Ahmed abd el wadod', '1125797101', 'marketing', b'0', b'1'),
(24, '3DOS-Y2', 'Yousef usama fathy', '1112011212', 'web dev', b'0', b'1'),
(25, '3DOS-Y3', 'ibrahem mostafa', '1100687473', 'web design', b'0', b'1'),
(26, '3DOS-Y4', 'Ahmed hussein mohamed', '1060786236', 'web dev', b'0', b'1'),
(27, '3DOS-Y5', 'reem mosta', '1110914250', 'web design', b'0', b'1'),
(28, '3DOS-Y6', 'Mohamed wael', '1142214484', 'cyber security', b'0', b'1'),
(29, '3DOS-Y7', 'shahad atef', '1201797736', 'web design', b'0', b'1'),
(30, '3DOS-Y8', 'sara said l', '1028878727', 'web design', b'0', b'1'),
(31, '3DOS-Y9', 'salama khaled', '1204150115', 'CEO', b'0', b'1'),
(32, '3DOS-Y10', 'shimaa foaad', '1112243086', 'web design', b'0', b'1'),
(33, '3DOS-Y11', 'nada abd hakim', '1026502698', 'web design', b'0', b'1'),
(34, '3DOS-Y12', 'yara hanfi', '1091657120', 'CEO', b'0', b'1'),
(35, '3DOS-H1', 'Salma Mohamed', '01151093104', 'web design', b'0', b'1'),
(36, '3DOS-H2', 'Haidy Mohsen', '01118476702', 'Marketing', b'0', b'1'),
(37, '3DOS-H3', 'Doaa Ewis', '01122516203', 'web design', b'0', b'1'),
(38, '3DOS-H4', 'Lamiaa Tarek', '01120267888', 'Stock Market', b'0', b'1'),
(39, '3DOS-H5', 'Abdelrahman Said', '01095538300', 'CEO', b'0', b'1'),
(40, '3DOS-H6', 'Norhan Ashraf', '01211246409', 'CEO', b'0', b'1'),
(41, '3DOS-H7', 'Mohamed Said Saad', '01127883167', 'web design', b'0', b'1'),
(42, '3DOS-H8', 'May Mohamed', '01205335861', 'Marketing', b'0', b'1'),
(43, '3DOS-H9', 'Mahmoud ehab Mohamed', '011112933641', 'CEO', b'0', b'1'),
(44, '3DOS-H10', 'Dalia Ashraf Mohamed', '01126044988', 'CEO', b'0', b'1'),
(45, '3DOS-H11', 'Reem Maged Ibrahim', '01152026187', 'CEO', b'0', b'1'),
(46, '3DOS-H12', 'Mayar Abdelmonem', '01019458722', 'web design', b'0', b'1'),
(47, '3DOS-H13', 'Mariam Adel', '01113929830', 'web development', b'0', b'1'),
(48, '3DOS-H14', 'Nourseen Ashraf', '01013942014', 'stock Market', b'0', b'1'),
(49, '3DOS-H15', 'Aliaa Saeed Hussien', '01017321209', 'stock Market', b'0', b'1'),
(50, '3DOS-H16', 'Ola Said Abdelrahman', '01128937773', 'Stock Market', b'0', b'1'),
(51, '3DOS-H17', 'Maryam Elyamani', '01099269702', 'web design', b'0', b'1'),
(52, '3DOS-H18', 'May Mohamed', '01010683538', 'Marketing', b'0', b'1'),
(53, '3DOS-H19', 'Abdelrahman Mansour', '01147542249', 'web development', b'1', b'1'),
(54, '3DOS-H20', 'Filopateer Tamer', '01208108031', 'CEO', b'0', b'1'),
(55, '3DOS-H21', 'Youmna Abdelfattah', '01143782728', 'web development', b'0', b'1'),
(56, '3DOS-H22', 'Ganna Seif', '01149274575', 'web development', b'0', b'1'),
(57, '3DOS-H23', 'Radwa Mohamoud', '01112554051', 'Marketing', b'0', b'1'),
(58, '3DOS-ME1', 'Salma Abdelsalam Mohamed Allam', '+20 115 282 1728', 'Marketing', b'0', b'1'),
(59, '3DOS-R1', 'Maria Fouad', '1278384764', 'Marketing', b'0', b'1'),
(60, '3DOS-R2', 'sebrena hisham', '1021058880', 'Stock market', b'0', b'1'),
(61, '3DOS-R4', 'Hala Ahmed', '1008808207', 'CEO', b'0', b'1'),
(62, '3DOS-ME1', 'Abdelrahman tawfik', '1094076235', 'web development', b'1', b'1'),
(63, '3DOS-ME2', 'Mohamed Ahmed Mostafa', '1006390047', 'marketing', b'0', b'1'),
(64, '3DOS-ME3', 'bassant hesham', '1023128155', 'ceo', b'0', b'1'),
(65, '3DOS-ME4', 'aya reda mosaad', '1009647272', 'web development', b'1', b'1'),
(66, '3DOS-ME5', 'Alaa Ahmed Ragab', '1115246932', 'marketing', b'0', b'1'),
(67, '3DOS-U1', 'Mahmoud islam', '1024949307', 'marketing council', b'0', b'0'),
(68, '3DOS-U2', 'Abdallah Hassan Samman', '1020055272', 'Cybersecurity', b'1', b'1'),
(69, '3DOS-U3', 'Hassan Mohamed', '1095817721', 'Marketing', b'0', b'0'),
(70, '3DOS-U4', 'Salma mohamed Emam', '1158586333', 'stock market', b'0', b'0'),
(71, '3DOS-U5', 'Halla Embaby', '1018518480', 'stock market', b'0', b'0'),
(72, '3DOS-U6', 'Seif Ahmed Elmasry', '1126402080', 'Marketing', b'0', b'0'),
(73, '3DOS-U7', 'donia haney', '1289477271', 'CEO', b'0', b'0'),
(74, '3DOS-U8', 'Ali Mohamed Sayed', '1099007936', 'Web development', b'1', b'1'),
(75, '3DOS-U9', 'Ahmed shobk', '1007874065', 'marketing council', b'0', b'0'),
(76, '3DOS-U10', 'evraim botros', '1272333867', 'CEO', b'0', b'0'),
(77, '3DOS-U11', 'nader sameer', '1110265773', 'stock market', b'0', b'0'),
(78, '3DOS-U12', 'reham mohamed', '1129454969', 'CEO', b'0', b'0'),
(79, '3DOS-U13', 'youstina shoukry', '1208574886', 'Stockmarket', b'0', b'0'),
(80, '3DOS-U14', 'ahmed ebrahim ahmed ebrahim', '1098813106', 'stock', b'0', b'0'),
(81, '3DOS-U15', 'Hagar Mohamed Ahmed', '1150690099', 'Ceo', b'0', b'0'),
(82, '3DOS-U16', 'Aya Maged', '1060794829', 'CEO', b'0', b'0'),
(83, '3DOS-U17', 'Fady Aly', '1003355228', 'CEO', b'0', b'0'),
(84, '3DOS-U18', 'Amina mostafa mohamed', '1098856219', 'Stock market', b'0', b'0'),
(85, '3DOS-U19', 'Khaled zaghloul Mohamed', '+20 102 464 4084', 'My cousin only', b'0', b'0'),
(86, '3DOS-U20', 'Amina mostafa mohamed', '1098856219', 'Stock market', b'0', b'0'),
(87, '3DOS-U21', 'nadia Reda faried', '1223386104', 'marketing council', b'0', b'0'),
(88, '3DOS-U22', 'Mariam Medhat Mohamed', '+20 106 030 1969', 'marketing', b'0', b'0'),
(89, '3DOS-U23', 'Aya Hamdy Saeed', '1029019710', 'Marketing', b'0', b'0'),
(90, '3DOS-U24', 'Toqa salah Eldien', '1550371970', 'Web design', b'0', b'0'),
(91, '3DOS-U25', 'alyaa eihab', '1156688512', 'stock market', b'0', b'0'),
(92, '3DOS-U26', 'Adham mahmoud hassan', '+20 111 099 1246', 'CEO', b'0', b'0'),
(93, '3DOS-U27', 'maya yasser fmi level one', '+20 111 666 2853', 'CEO', b'0', b'0'),
(94, '3DOS-U28', 'Rokaya Ahmed Yassen Mahany 0', '1115262581', 'Cyper security', b'0', b'0'),
(95, '3DOS-U29', 'manar moahmed samy', '1151093103', 'out comer', b'0', b'0'),
(96, '3DOS-U30', 'Khaled zaghloul Mohamed', '+20 102 464 4084', 'Out comer', b'0', b'0'),
(97, '3DOS-U31', 'Monica ashraf hanna', '1229292882', 'Out comer', b'0', b'0'),
(98, '3DOS-U32', 'Martin Medhat', '1270759514', 'Out comer', b'0', b'0'),
(99, '3DOS-U33', 'Mario Medhat', '1272961087', 'cyper security', b'0', b'0'),
(100, '3DOS-U34', 'manar Ibrahim abdullah', '0 115 721 1420', 'marketing', b'0', b'0'),
(101, '3DOS-U35', 'Rana Mahmoud watany', '1128942149', 'Cyber security', b'0', b'0'),
(102, '3DOS-U36', 'Abdelwahab ali abdelwahab', '1016756357', 'Out comer', b'0', b'0'),
(103, '3DOS-U37', 'Sara adel rasmy', '1151949607', 'Out comer', b'0', b'0'),
(104, '3DOS-U38', 'Ali adel', '1001930751', 'Out comer', b'0', b'0'),
(105, '3DOS-U39', 'Mustafa Hesham', '1146560241', 'CEO', b'0', b'0'),
(106, '3DOS-U40', 'hanem ahmed Nabil Hassan Nour Eldien', '1029415412', 'stock market', b'0', b'0'),
(107, '3DOS-U41', 'Yousap yousry', '+20 120 441 9125', 'Out comer', b'0', b'0'),
(108, '3DOS-U42', 'Kiro Karam', '+20 155 423 0054', 'Out comer', b'0', b'0'),
(109, '3DOS-U43', 'Ahmed El Sayed Mahmoud', '1015633131', 'Stock Market', b'0', b'0'),
(110, '3DOS-U44', 'esraa ahmed ahmed', '1121802759', 'Stock market council', b'0', b'0'),
(111, '3DOS-U45', 'basmala ahmed ahmed', '1129294824', 'cyber security', b'0', b'0'),
(112, '3DOS-U46', 'rokaya mother', '1286540889', 'Out comer', b'0', b'0'),
(113, '3DOS-U47', 'salma hatem', '1117265627', 'Out comer', b'0', b'0'),
(114, '3DOS-U48', 'Toqa Mostafa Ismail', '1144828861', 'cuber security', b'1', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendee`
--
ALTER TABLE `attendee`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendee`
--
ALTER TABLE `attendee`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
