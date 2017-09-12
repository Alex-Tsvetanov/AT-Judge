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
('ProgrammingBasics1', '01. Първи стъпки в програмирането', '/contests/ProgrammingBasics1', '{\"Hello, Python!\":\"1\",\"Expression\":\"2\",\"Числата от 1 до 20\":\"3\",\"Триъгълник от 55 звездички\":\"4\",\"Лице на правоъгълник\":\"5\",\"Квадрат от звездички\":\"6\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '600', 0, 1, '', 'techedu'),
('ProgrammingBasics2', '02. Прости пресмятания', '/contests/ProgrammingBasics2', '{\"Пресмятане на лице на квадрат\":\"7\",\"Поздрав по име\":\"8\",\"От инчове към сантиметри\":\"9\",\"Съединяване на текст и числа\":\"10\",\"Лице на трапец\":\"11\",\"Периметър и лице на кръг\":\"12\",\"Лице на правоъгълник в равнината\":\"13\",\"Лице на триъгълник\":\"14\",\"Конзолен конвертор: от градуси °C към градуси °F\":\"15\",\"Конзолен конвертор: от радиани в градуси\":\"16\",\"Конзолен конвертор: USD към BGN\":\"17\",\"Конзолен междувалутен конвертор\":\"18\",\"Пресмятане с дати: 1000 дни на Земята\":\"19\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '1300', 0, 1, '', 'techedu'),
('ProgrammingBasics3', '03. Логически проверки', '/contests/ProgrammingBasics3', '{\"Проверка за отлична оценка\":\"20\",\"Отлична оценка или не\":\"21\",\"Четно или нечетно\":\"22\",\"Намиране на по-голямото число\":\"23\",\"Изписване на число до 10 с думи\":\"24\",\"Бонус точки\":\"25\",\"Сумиране на секунди\":\"26\",\"Конвертор за мерни единици\":\"27\",\"Познай паролата\":\"28\",\"Число от 100 до 200\":\"29\",\"Еднакви думи\":\"30\",\"Информация за скоростта\":\"31\",\"Лица на фигури\":\"32\",\"Време + 15 минути\":\"33\",\"Еднакви 3 числа\":\"34\",\"Изписване на число до 100 с думи\":\"35\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '1600', 0, 1, '', 'techedu'),
('ProgrammingBasics4', '04. По-сложни логически проверки', '/contests/ProgrammingBasics4', '{\"Обръщение според възраст и пол\":\"36\",\"Квартално магазинче\":\"37\",\"Точка в правоъгълник\":\"38\",\"Плод или зеленчук?\":\"39\",\"Невалидно число\":\"40\",\"Точка върху страната на правоъгълник\":\"41\",\"Магазин за плодове\":\"42\",\"Търговски комисионни\":\"43\",\"Day of Week\":\"44\",\"Animal Type\":\"45\",\"Кино\":\"46\",\"Волейбол\":\"47\",\"Точка във фигурата\":\"48\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '1300', 0, 1, '', 'techedu'),
('ProgrammingBasics5', '05. Повторения (цикли)', '/contests/ProgrammingBasics5', '{\"Числа от 1 до 100\":\"49\",\"Числа до 1000, завършващи на 7\":\"50\",\"Всички латински букви\":\"51\",\"Сумиране на числа\":\"52\",\"Най-голямо число\":\"53\",\"Най-малко число\":\"54\",\"Лява и дясна сума\":\"55\",\"Четна / нечетна сума\":\"56\",\"Сумиране на гласните букви\":\"57\",\"Елемент, равен на сумата на останалите\":\"58\",\"Четни / нечетни позиции\":\"59\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '1100', 0, 1, '', 'techedu'),
('ProgrammingBasics6', '06. Чертане на фигурки с цикли', '/contests/ProgrammingBasics6', '{\"Правоъгълник от 10 x 10 звездички\":\"60\",\"Правоъгълник от N x N звездички\":\"61\",\"Квадрат от звездички\":\"62\",\"Триъгълник от долари\":\"63\",\"Квадратна рамка\":\"64\",\"Ромбче от звездички\":\"65\",\"Коледна елха\":\"66\",\"Слънчеви очила\":\"67\",\"Къщичка\":\"68\",\"Диамант\":\"69\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '1000', 0, 1, '', 'techedu'),
('ProgrammingBasics7', '07. Вложени цикли - задачи', '/contests/ProgrammingBasics7', '{\"Числата от 1 до N през 3\":\"70\",\"Числата от N до 1 в обратен ред\":\"71\",\"Числа от 2^0 до 2^n\":\"72\",\"Четни степени на 2\":\"73\",\"Редица числа 2k+1\":\"74\",\"Число в диапазона [1…100]\":\"75\",\"Най-голям общ делител (НОД)\":\"76\",\"Факториел\":\"77\",\"Сумиране на цифрите на число\":\"78\",\"Проверка за просто число\":\"79\",\"Въвеждане на четно число\":\"80\",\"Числа на Фибоначи\":\"81\",\"Пирамида от числа\":\"82\"}', '{\"c\":\"C\",\"cpp\":\"C++\",\"py\":\"Python\",\"js\":"Node.JS\"}', '1300', 0, 1, '', 'techedu');

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
(1, 'Hello, Python!', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/1.First-Steps-In-Coding-Exercises%2F01-Hello.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20Първи%20стъпки%20в%20програмирането%2FHello,%20Python%21%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(2, 'Expression', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/1.First-Steps-In-Coding-Exercises%2F02-Expression.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20Първи%20стъпки%20в%20програмирането%2FExpression%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(3, 'Числата от 1 до 20', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/1.First-Steps-In-Coding-Exercises%2F03-Nums-From-1-To-20.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20Първи%20стъпки%20в%20програмирането%2FЧислата%20от%201%20до%2020%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(4, 'Триъгълник от 55 звездички', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/1.First-Steps-In-Coding-Exercises%2F04-Triangle-Of-55-Stars.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20Първи%20стъпки%20в%20програмирането%2FТриъгълник%20от%2055%20звездички%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(5, 'Лице на правоъгълник', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/1.First-Steps-In-Coding-Exercises%2F05-Rectangle-Area.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20Първи%20стъпки%20в%20програмирането%2FЛице%20на%20правоъгълник%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(6, 'Квадрат от звездички', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/1.First-Steps-In-Coding-Exercises%2F06-Square-From-Stars.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/01.%20Първи%20стъпки%20в%20програмирането%2FКвадрат%20от%20звездички%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(7, 'Пресмятане на лице на квадрат', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F01-Square-Area.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FПресмятане%20на%20лице%20на%20квадрат%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(8, 'Поздрав по име', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F02-Inches-to-Centimeters.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FПоздрав%20по%20име%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(9, 'От инчове към сантиметри', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F03-Greeting.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FОт%20инчове%20към%20сантиметри%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(10, 'Съединяване на текст и числа', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F04-Concatenate-Data.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FСъединяване%20на%20текст%20и%20числа%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(11, 'Лице на трапец', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F05-Trapezoid-Area.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FЛице%20на%20трапец%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(12, 'Периметър и лице на кръг', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F06-Perimeter-And-Area-Of-Circle.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FПериметър%20и%20лице%20на%20кръг%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(13, 'Лице на правоъгълник в равнината', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F07-Area-Of-Rectangle.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FЛице%20на%20правоъгълник%20в%20равнината%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(14, 'Лице на триъгълник', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F08-Area-Of-Triangle.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FЛице%20на%20триъгълник%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(15, 'Конзолен конвертор: от градуси °C към градуси °F', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F09-Console-Convertor-From-Degrees-To-Farenhait.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FКонзолен%20конвертор%3A%20от%20градуси%20°C%20към%20градуси%20°F%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(16, 'Конзолен конвертор: от радиани в градуси', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F10-Console-Convertor-From-Radians-To-Degrees.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FКонзолен%20конвертор%3A%20от%20радиани%20в%20градуси%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004', '100', '0.1s', '256M'),
(17, 'Конзолен конвертор: USD към BGN', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F11-Console-Convertor-From-USD-To-BGN.odt
2.Simple-Calculations%2F11-Console-Convertor-From-USD-To-BGN.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FКонзолен%20конвертор%3A%20USD%20към%20BGN%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004', '100', '0.1s', '256M'),
(18, 'Конзолен междувалутен конвертор', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/2.Simple-Calculations%2F12-Console-Interleaved-Convertor.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FКонзолен%20междувалутен%20конвертор%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(19, 'Пресмятане с дати: 1000 дни на Земята', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/02.%20Прости%20пресмятания%2FПресмятане%20с%20дати%3A%201000%20дни%20на%20Земята%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(20, 'Проверка за отлична оценка', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F01-Excellent-Result.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FПроверка%20за%20отлична%20оценка%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(21, 'Отлична оценка или не', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F02-Excellent-or-Not.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FОтлична%20оценка%20или%20не%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(22, 'Четно или нечетно', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F03-Grade.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FЧетно%20или%20нечетно%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(23, 'Намиране на по-голямото число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F04-Even-Or-Odd.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FНамиране%20на%20по-голямото%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(24, 'Изписване на число до 10 с думи', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F05-Greater-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FИзписване%20на%20число%20до%2010%20с%20думи%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(25, 'Бонус точки', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F06-Numbers-From-1-To-10-To-Text.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FБонус%20точки%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(26, 'Сумиране на секунди', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F07-Bonus-Points.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FСумиране%20на%20секунди%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(27, 'Конвертор за мерни единици', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F08-Summing-Seconds.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FКонвертор%20за%20мерни%20единици%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(28, 'Познай паролата', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F09-Metric-Convertor.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FПознай%20паролата%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(29, 'Число от 100 до 200', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F10-Guess-The-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FЧисло%20от%20100%20до%20200%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(30, 'Еднакви думи', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F11-Numbers-From-100-To-200.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FЕднакви%20думи%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.000.005,test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(31, 'Информация за скоростта', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F12-Equal-Words.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FИнформация%20за%20скоростта%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.000.005,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(32, 'Лица на фигури', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F13-Speed-Information.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FЛица%20на%20фигури%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004', '100', '0.1s', '256M'),
(33, 'Време + 15 минути', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F14-Figures-Area.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FВреме%20+%2015%20минути%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.000.005,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017', '100', '0.1s', '256M'),
(34, 'Еднакви 3 числа', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F15-Time-Plus-15-Minutes.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FЕднакви%203%20числа%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.000.005,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(35, 'Изписване на число до 100 с думи', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/3.Simple-Conditions-Exercises%2F16-Three-Equal-Numbers.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/03.%20Логически%20проверки%2FИзписване%20на%20число%20до%20100%20с%20думи%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(36, 'Обръщение според възраст и пол', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F01-Personal-Titles.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FОбръщение%20според%20възраст%20и%20пол%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(37, 'Квартално магазинче', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F02-Small-Shop.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FКвартално%20магазинче%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(38, 'Точка в правоъгълник', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F03-Point-In-Rectangle.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FТочка%20в%20правоъгълник%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(39, 'Плод или зеленчук?', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F04-Fruit-Or-Vegetable.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FПлод%20или%20зеленчук%3F%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(40, 'Невалидно число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F05-Friends.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FНевалидно%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(41, 'Точка върху страната на правоъгълник', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F06-Invalid-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FТочка%20върху%20страната%20на%20правоъгълник%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(42, 'Магазин за плодове', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F07-Point-On-Rectangle-Border.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FМагазин%20за%20плодове%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(43, 'Търговски комисионни', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F08-Fruit-Shop.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FТърговски%20комисионни%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(44, 'Day of Week', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F09-Commercial-Commissions.odt
4.Complex-Conditions-Exercises%2F09-Commercial-Commissions.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FDay%20of%20Week%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025', '100', '0.1s', '256M'),
(45, 'Animal Type', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F10-Day-Of-Week.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FAnimal%20Type%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005', '100', '0.1s', '256M'),
(46, 'Кино', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F11-Animal-Type.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FКино%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020', '100', '0.1s', '256M'),
(47, 'Волейбол', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F12-Cinema.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FВолейбол%2F', '*.in.txt', '*.out.txt', 'diff', 'test.000.001,test.000.002,test.000.003,test.000.004,test.000.005,test.000.006,test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(48, 'Точка във фигурата', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/4.Complex-Conditions-Exercises%2F13-Volleyball.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/04.%20По-сложни%20логически%20проверки%2FТочка%20във%20фигурата%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(49, 'Числа от 1 до 100', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F01-Numbers-From-1-To-100.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FЧисла%20от%201%20до%20100%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(50, 'Числа до 1000, завършващи на 7', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F02-Numbers-To-1000-Ending-On-7.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FЧисла%20до%201000,%20завършващи%20на%207%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(51, 'Всички латински букви', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F03-Latin-Letters.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FВсички%20латински%20букви%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(52, 'Сумиране на числа', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F04-Summing-Numbers.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FСумиране%20на%20числа%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(53, 'Най-голямо число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F05-Greatest-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FНай-голямо%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(54, 'Най-малко число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F06-Smalletst-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FНай-малко%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(55, 'Лява и дясна сума', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F07-Left-And-Right-Sum.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FЛява%20и%20дясна%20сума%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(56, 'Четна / нечетна сума', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F08-Even-Or-Odd-Sum.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FЧетна%20%2F%20нечетна%20сума%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(57, 'Сумиране на гласните букви', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F09-Summing-Vowel-Letters.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FСумиране%20на%20гласните%20букви%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017,test.018,test.019,test.020,test.021,test.022,test.023,test.024,test.025,test.026,test.027,test.028,test.029,test.030,test.031,test.032,test.033,test.034,test.035,test.036,test.037,test.038,test.039,test.040,test.041,test.042,test.043,test.044,test.045,test.046,test.047,test.048,test.049,test.050,test.051,test.052,test.053,test.054,test.055,test.056,test.057,test.058,test.059,test.060,test.061,test.062,test.063,test.064,test.065,test.066,test.067,test.068,test.069,test.070,test.071,test.072,test.073,test.074,test.075,test.076,test.077,test.078,test.079,test.080,test.081,test.082,test.083,test.084,test.085', '100', '0.1s', '256M'),
(58, 'Елемент, равен на сумата на останалите', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F10-Element-Equal-To-Sum-Of-The-Others.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FЕлемент,%20равен%20на%20сумата%20на%20останалите%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015', '100', '0.1s', '256M'),
(59, 'Четни / нечетни позиции', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/5.Loops-Exercises%2F11-Even-And-Odd-Positions.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/05.%20Повторения%20(цикли)%2FЧетни%20%2F%20нечетни%20позиции%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(60, 'Правоъгълник от 10 x 10 звездички', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F01-Rectangle-10x10.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FПравоъгълник%20от%2010%20x%2010%20звездички%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(61, 'Правоъгълник от N x N звездички', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F02-Rectangle-NxN.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FПравоъгълник%20от%20N%20x%20N%20звездички%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(62, 'Квадрат от звездички', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F03-Square-Of-Stars.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FКвадрат%20от%20звездички%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(63, 'Триъгълник от долари', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F04-Triangle-Of-Dollars.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FТриъгълник%20от%20долари%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(64, 'Квадратна рамка', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F05-Square-Frame.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FКвадратна%20рамка%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(65, 'Ромбче от звездички', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F06-Rhomb-Of-Stars.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FРомбче%20от%20звездички%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(66, 'Коледна елха', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F07-Christmas-Tree.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FКоледна%20елха%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(67, 'Слънчеви очила', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F08-Sunglasses.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FСлънчеви%20очила%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(68, 'Къщичка', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F09-House.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FКъщичка%2F', '*.in.txt', '*.out.txt', 'diff', '', '100', '0.1s', '256M'),
(69, 'Диамант', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/6.Drawing-With-Loops-Exercises%2F10-Diamond.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/06.%20Чертане%20на%20фигурки%20с%20цикли%2FДиамант%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(70, 'Числата от 1 до N през 3', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F01-Numbers-From-1-To-N-Trought-3.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FЧислата%20от%201%20до%20N%20през%203%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(71, 'Числата от N до 1 в обратен ред', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F02-Nums-N-1-Reverse.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FЧислата%20от%20N%20до%201%20в%20обратен%20ред%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(72, 'Числа от 2^0 до 2^n', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F03-Numbers-2-To-2%5En.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FЧисла%20от%202%5E0%20до%202%5En%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(73, 'Четни степени на 2', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F04-Even-Degrees-Of-2.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FЧетни%20степени%20на%202%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(74, 'Редица числа 2k+1', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F05-Row-2k+1.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FРедица%20числа%202k+1%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(75, 'Число в диапазона [1…100]', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F06-Numbers-In-Range-1-100.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FЧисло%20в%20диапазона%20%5B1…100%5D%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(76, 'Най-голям общ делител (НОД)', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F07-Greatest-Common-Divisor.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FНай-голям%20общ%20делител%20(НОД)%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(77, 'Факториел', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F08-Factorial.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FФакториел%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(78, 'Сумиране на цифрите на число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F09-Summing-DigitsOf-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FСумиране%20на%20цифрите%20на%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010', '100', '0.1s', '256M'),
(79, 'Проверка за просто число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F10-Checking-For-Prime-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FПроверка%20за%20просто%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011,test.012,test.013,test.014,test.015,test.016,test.017', '100', '0.1s', '256M'),
(80, 'Въвеждане на четно число', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F11-Entering-Even-Number.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FВъвеждане%20на%20четно%20число%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007', '100', '0.1s', '256M'),
(81, 'Числа на Фибоначи', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F12-Fibonacci-Numbers.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FЧисла%20на%20Фибоначи%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008,test.009,test.010,test.011', '100', '0.1s', '256M'),
(82, 'Пирамида от числа', 'https://github.com/TechEducationPlusPlus/Tasks/tree/master/Programming%20Basics/7.Advanced-Loops-Exercises%2F13-Pyramid-Of-Numbers.pdf', 'https://raw.githubusercontent.com/TechEducationPlusPlus/Tasks/master/Programming%20Basics/07.%20Вложени%20цикли%20-%20задачи%2FПирамида%20от%20числа%2F', '*.in.txt', '*.out.txt', 'diff', 'test.001,test.002,test.003,test.004,test.005,test.006,test.007,test.008', '100', '0.1s', '256M');

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
('1', 'techedu', 'a204d95d18da65e6150c2b549aadc3e5', 'admin@techedu.bg', 'TechEdu++', 2),
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

