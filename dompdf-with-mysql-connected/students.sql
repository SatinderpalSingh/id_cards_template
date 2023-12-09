-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2023 at 04:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_minor_id_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `class` varchar(16) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `admission_no` int(11) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `f_name`, `m_name`, `class`, `phone`, `admission_no`, `dob`, `address`) VALUES
(1, 'Briana Stove', 'Briana Biddiss', 'Briana', '8', '903-381-3380', 1504, '15/02/2005', 'Apt 725'),
(2, 'Lira McMahon', 'Lira Marklin', 'Lira', '11', '251-469-4511', 752, '16/02/1996', 'PO Box 22877'),
(3, 'Angel Gauthorpp', 'Angel Brierly', 'Angel', '6', '224-635-5460', 1601, '13/11/2002', 'Apt 1718'),
(4, 'Kyle Holtum', 'Kyle Alywen', 'Kyle', '5', '381-592-2547', 2356, '10/04/2004', 'Apt 650'),
(5, 'Emiline McReath', 'Emiline Guesford', 'Emiline', '1', '666-214-8438', 1514, '30/09/1999', 'PO Box 79875'),
(6, 'Rochette Briztman', 'Rochette Kingswood', 'Rochette', '4', '298-362-9034', 1564, '26/03/2001', '2nd Floor'),
(7, 'Cecilla Eilhermann', 'Cecilla Yardy', 'Cecilla', '1', '109-809-6662', 1700, '24/03/2005', '11th Floor'),
(8, 'Fanechka Crathorne', 'Fanechka Tansey', 'Fanechka', '4', '859-591-1211', 1892, '23/04/2002', 'PO Box 72092'),
(9, 'Emlynne Ayshford', 'Emlynne Conklin', 'Emlynne', '12', '984-774-7529', 2011, '26/07/2001', 'Room 1517'),
(10, 'Jolene Gynne', 'Jolene Kubista', 'Jolene', '11', '292-557-4088', 1881, '04/10/1996', 'Apt 152'),
(11, 'Chicky Corryer', 'Chicky Pache', 'Chicky', '12', '793-838-8048', 1443, '09/10/2005', 'PO Box 56523'),
(12, 'Lisbeth Yushkov', 'Lisbeth Windibank', 'Lisbeth', '5', '617-757-0899', 2036, '18/02/1998', '15th Floor'),
(13, 'Kai O\'Dyvoie', 'Kai Yateman', 'Kai', '6', '560-755-1133', 2643, '15/08/1998', 'PO Box 35660'),
(14, 'Tobe Vokins', 'Tobe McRobert', 'Tobe', '9', '451-389-7389', 778, '16/07/1996', 'PO Box 14517'),
(15, 'Verene Bielfelt', 'Verene Soames', 'Verene', '1', '863-834-6674', 2174, '29/11/1997', '7th Floor');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
