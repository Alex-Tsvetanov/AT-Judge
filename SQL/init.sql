-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2017 at 03:54 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `judge`
--

-- --------------------------------------------------------

--
-- Table structure for table `Certificates`
--

CREATE TABLE `Certificates` (
  `ID` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Course` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Score` int(11) NOT NULL,
  `Date` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Certificates`
--

INSERT INTO `Certificates` (`ID`, `Name`, `Course`, `Score`, `Date`) VALUES
('1', 'TTS', 'C++', 1000, '12.01.2018');

-- --------------------------------------------------------

--
-- Table structure for table `Checker`
--

CREATE TABLE `Checker` (
  `ID` text NOT NULL,
  `CheckLink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Checker`
--

INSERT INTO `Checker` (`ID`, `CheckLink`) VALUES
('diff', 'localhost:49152');

-- --------------------------------------------------------

--
-- Table structure for table `Contests`
--

CREATE TABLE `Contests` (
  `ID` text NOT NULL,
  `Name` text NOT NULL,
  `Link` text NOT NULL,
  `Tasks` text NOT NULL,
  `Langs` text NOT NULL,
  `MaxPoints` text NOT NULL,
  `Certify` tinyint(2) NOT NULL DEFAULT '0',
  `Homework` tinyint(1) NOT NULL DEFAULT '0',
  `Password` text NOT NULL,
  `Author` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Contests`
--

INSERT INTO `Contests` (`ID`, `Name`, `Link`, `Tasks`, `Langs`, `MaxPoints`, `Certify`, `Homework`, `Password`, `Author`) VALUES
('1', 'I/O Stream :: C++', '/contests/1', '{\"Hello, C++\": 1}', '{\"cpp\": \"C++\", \"py\": \"Python\"}', '100', 0, 1, '', 'alex_ts'),
('3', 'Zimen', '/contests/3', '{\"Suma\":\"2\",\"Cross\":\"3\",\"Parallelogram\":\"4\"}', '{\"c\":\"C\",\"cpp\":\"C++\"}', '300', 0, 0, '', 'alex_ts'),
('2', 'First Certificate :: C++', '/contests/2', '{\"Hello, C++\":\"1\"}', '{\"cpp\":\"C++\"}', '100', 0, 0, 'C++Masters2017', 'alex_ts'),
('4f9d2f6adedfbe3699cdfd3adbd92668', 'Yambol', '/contests/4f9d2f6adedfbe3699cdfd3adbd92668', '{\"Poly\":\"8\",\"Perm\":\"10\",\"Mirrors\":\"15\",\"Mss\":\"17\",\"Fence\":\"20\"}', '{\"c\":\"C\",\"cpp\":\"C++\"}', '500', 0, 0, '', 'alex_ts'),
('6b72925241b2220253204adfde3556af', 'First steps in programming', '/contests/6b72925241b2220253204adfde3556af', '{\"Hello, World!\":\"22\",\"Expression\":\"24\",\"From 1 to 20\":\"26\",\"Triangle of 55 stars\":\"28\",\"Surface of rectangle\":\"30\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":\"Node.JS\"}', '500', 0, 1, '', 'alex_ts');

-- --------------------------------------------------------

--
-- Table structure for table `Quizes`
--

CREATE TABLE `Quizes` (
  `ID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tasks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Quizes`
--

INSERT INTO `Quizes` (`ID`, `Link`, `Tasks`, `Name`) VALUES
('1', '/quiz/1', '1', 'Quiz for TechEdu++');

-- --------------------------------------------------------

--
-- Table structure for table `QuizResults`
--

CREATE TABLE `QuizResults` (
  `UserID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `QuizID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Result` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `QuizResults`
--

INSERT INTO `QuizResults` (`UserID`, `QuizID`, `Result`) VALUES
('alex@techedu.cf', '1', '1'),
('commision@admin.vt', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `QuizTasks`
--

CREATE TABLE `QuizTasks` (
  `ID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Points` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `QuizTasks`
--

INSERT INTO `QuizTasks` (`ID`, `Question`, `Options`, `Answer`, `Hint`, `Points`) VALUES
('1', 'What\'s TechEdu++ founder\'s name?', '{\"1\":\"Alex\",\"2\":\"Dimo\",\"3\":\"Marin\"}', '1', 'There is one correct answer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Submissions`
--

CREATE TABLE `Submissions` (
  `ID` text NOT NULL,
  `ContestID` text NOT NULL,
  `TaskID` text NOT NULL,
  `UserID` text NOT NULL,
  `Code` longtext NOT NULL,
  `Lang` tinytext NOT NULL,
  `Points` float DEFAULT NULL,
  `Log` text NOT NULL,
  `CompileLog` text NOT NULL,
  `IsEvaluating` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Submissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `Tasks`
--

CREATE TABLE `Tasks` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `DescriptionLink` text NOT NULL,
  `TestsLink` text NOT NULL,
  `Input` text NOT NULL,
  `Output` text NOT NULL,
  `Checker` text NOT NULL,
  `StarNotation` text NOT NULL,
  `MaxPoints` text NOT NULL,
  `TL` text NOT NULL,
  `ML` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Tasks`
--

INSERT INTO `Tasks` (`ID`, `Name`, `DescriptionLink`, `TestsLink`, `Input`, `Output`, `Checker`, `StarNotation`, `MaxPoints`, `TL`, `ML`) VALUES
(1, 'Hello, C++', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/C%2B%2B/IO%20Stream/Hello_C%2B%2B/README.md', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/C%2B%2B/IO%20Stream/Hello_C%2B%2B/tests/', 'hello.*.in', 'hello.*.sol', 'diff', '01', '100', '0.1s', '256M'),
(2, 'Suma', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/C%2B%2B/2017-02-28-tests%26authors-C/1-suma/author/suma.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/C%2B%2B/2017-02-28-tests%26authors-C/1-suma/tests/', 'suma.*.in', 'suma.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20', '100', '1s', '256M'),
(3, 'Cross', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/C%2B%2B/2017-02-28-tests%26authors-C/2-cross/author/cross-bg.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/C%2B%2B/2017-02-28-tests%26authors-C/2-cross/tests/', 'cross.*.in', 'cross.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25', '100', '1s', '256M'),
(4, 'Parallelogram', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/C%2B%2B/2017-02-28-tests%26authors-C/3-parallelogram/author/parallelogram-bg.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/C%2B%2B/2017-02-28-tests%26authors-C/3-parallelogram/tests/', 'parallelogram.*.in', 'parallelogram.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20', '100', '1s', '256M'),
(6, '', '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', '', ''),
(8, 'Poly', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/day2/zad_Yambol_C2/2_poly/tests/', 'poly.*.in', 'poly.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17', '100', '0.1s', '256M'),
(9, '', '', '', '', '', '', '', '', '', ''),
(10, 'Perm', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/day2/zad_Yambol_C2/3_perm/tests/', 'perm.*.in', 'perm.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46', '100', '0.6s', '256M'),
(11, '', '', '', '', '', '', '', '', '', ''),
(12, 'Mirrors', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/day1/1_mirrors/tests/', 'mirrors.*.in', 'mirrors.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25', '100', '1s', '256M'),
(13, '', '', '', '', '', '', '', '', '', ''),
(14, '', '', '', '', '', '', '', '', '', ''),
(15, 'Mirrors', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/day1/1_mirrors/tests/', 'mirrors.*.in', 'mirrors.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25', '100', '1s', '256M'),
(16, '', '', '', '', '', '', '', '', '', ''),
(17, 'Mss', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/day1/2_mss/tests/', 'mss.*.in', 'mss.*.sol', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19', '100', '1s', '256M'),
(18, 'Fence', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/fence/', 'test.0*.in.txt', 'test.0*.out.txt', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12', '100', '0.3s', '16M'),
(19, '', '', '', '', '', '', '', '', '', ''),
(20, 'Fence', '#', 'file:///home/alex/github/Alex-Tsvetanov/Informatics/codes/Alex/Национални състезание по информатика (България)/Yambol/Share/fence/', 'test.0*.in.txt', 'test.0*.out.txt', 'diff', '01,02,03,04,05,06,07,08,09,10,11,12', '100', '1.3s', '16M'),
(21, '', '', '', '', '', '', '', '', '', ''),
(22, 'Hello, World!', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/Hello%2C%20World!/README.md', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/Hello,%20World%21/', 'test.*.in.txt', 'test.*.out.txt', 'diff', '001', '100', '0.1s', '16M'),
(23, '', '', '', '', '', '', '', '', '', ''),
(24, 'Expression', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/Expression/README.md', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/Expression/', 'test.*.in.txt', 'test.*.out.txt', 'diff', '001', '100', '0.1s', '16M'),
(25, '', '', '', '', '', '', '', '', '', ''),
(26, 'From 1 to 20', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/%D0%A7%D0%B8%D1%81%D0%BB%D0%B0%D1%82%D0%B0%20%D0%BE%D1%82%201%20%D0%B4%D0%BE%2020/README.md', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/%D0%A7%D0%B8%D1%81%D0%BB%D0%B0%D1%82%D0%B0%20%D0%BE%D1%82%201%20%D0%B4%D0%BE%2020/', 'test.*.in.txt', 'test.*.out.txt', 'diff', '001', '100', '0.1s', '16M'),
(27, '', '', '', '', '', '', '', '', '', ''),
(28, 'Triangle of 55 stars', 'https://github.com/TechEducationPlusPlus/Tasks/blob/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/%D0%A2%D1%80%D0%B8%D1%8A%D0%B3%D1%8A%D0%BB%D0%BD%D0%B8%D0%BA%20%D0%BE%D1%82%2055%20%D0%B7%D0%B2%D0%B5%D0%B7%D0%B4%D0%B8%D1%87%D0%BA%D0%B8/README.md', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/%D0%A2%D1%80%D0%B8%D1%8A%D0%B3%D1%8A%D0%BB%D0%BD%D0%B8%D0%BA%20%D0%BE%D1%82%2055%20%D0%B7%D0%B2%D0%B5%D0%B7%D0%B4%D0%B8%D1%87%D0%BA%D0%B8/', 'test.*.in.txt', 'test.*.sol.txt', 'diff', '001', '100', '0.1s', '16M'),
(29, '', '', '', '', '', '', '', '', '', ''),
(30, 'Surface of rectangle', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/%D0%9B%D0%B8%D1%86%D0%B5%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%8A%D0%B3%D1%8A%D0%BB%D0%BD%D0%B8%D0%BA/README.md', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20%D0%9F%D1%8A%D1%80%D0%B2%D0%B8%20%D1%81%D1%82%D1%8A%D0%BF%D0%BA%D0%B8%20%D0%B2%20%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%B8%D1%80%D0%B0%D0%BD%D0%B5%D1%82%D0%BE/%D0%9B%D0%B8%D1%86%D0%B5%20%D0%BD%D0%B0%20%D0%BF%D1%80%D0%B0%D0%B2%D0%BE%D1%8A%D0%B3%D1%8A%D0%BB%D0%BD%D0%B8%D0%BA/', 'test.*.in.txt', 'test.*.out.txt', 'diff', '001,002,003,004,005', '100', '0.1s', '16M');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` text NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `Name` text NOT NULL,
  `Teacher` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `Username`, `Password`, `Email`, `Name`, `Teacher`) VALUES
('0', 'alex_ts', 'a204d95d18da65e6150c2b549aadc3e5', 'alex@tsalex.tk', 'Alex Tsvetanov', 2),
('', 'alex', 'a204d95d18da65e6150c2b549aadc3e5', 'alex@tsalex.tk', 'Alex Tsvetanov', 0),
('2', 'SneakySquid', '29ee56b3aae5a6916e58f64c087a77fd', 'kworks125@gmail.com', 'Konstantin', 0),
('3', 'rumen_m', '28d5d918d3de1f88a95005adc0af8687', 'rumenmmihov@abv.bg', 'Rumen', 0),
('4', 'martin', 'd0affa059c79acaf194817dc0bc560f8', 'marty_marinov@abv.bg', 'Martin', 0),
('5', 'Sorting', '645eba77fef3734953b64d03bbc8a083', 'victor.kojuharov@hotmail.com', 'Victor Kojuharov', 0),
('6', 'martiin', '925d7518fc597af0e43f5606f9a51512', 'martin@abv.bg', 'Martin Kopchev', 0),
('7', 'Kopchev', 'fd4b450b78f00e93f1fb0d8396d7cab9', 'martinkopchev@abv.bg', 'Martin', 0),
('8', 'random', '6a3bdda0bbfa82176e9771c65aa81072', 'random@abv.bg', 'random', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Certificates`
--
ALTER TABLE `Certificates`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `Quizes`
--
ALTER TABLE `Quizes`
  ADD UNIQUE KEY `Link` (`Link`);

--
-- Indexes for table `Tasks`
--
ALTER TABLE `Tasks`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Tasks`
--
ALTER TABLE `Tasks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

