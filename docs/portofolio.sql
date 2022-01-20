-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2022 at 09:29 AM
-- Server version: 10.5.12-MariaDB-0+deb11u1
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `tumbnail` mediumtext NOT NULL,
  `title` mediumtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `date`, `tumbnail`, `title`, `body`) VALUES
(1, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(2, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(3, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(4, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(5, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(6, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(7, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(8, '2021-12-08', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'kaas', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n'),
(9, '2021-12-01', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQkoDMIF3ZqLqmiHikbE0OtI_CDdHgC89Qbp6l133knwDkcClT9', 'aps', 'Shrek is een Amerikaanse komische computeranimatiefilm, geproduceerd door de firma DreamWorks. De film is gebaseerd op het gelijknamige boek van William Steig. De regie was in handen van Andrew Adamson en Vicky Jenson. De stemmen worden ingesproken door Mike Myers, Eddie Murphy, Cameron Diaz, en John Lithgow.\r\n\r\nDe hoofdrolspeler is Shrek, een groene oger. In 2001 werd het eerste deel uitgebracht. De film was een groot succes en vestigde Dreamworks’ naam als producer van computeranimatiefilms. De film kreeg drie vervolgen plus ook nog een behoorlijk aantal spin-offs. Zo is er een kerstmis- en halloweenspecial en ook een aparte film verschenen voor de gelaarsde kat (personage dat werd geïntroduceerd tijdens de 2de film).\r\n\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;