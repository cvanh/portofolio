-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 16, 2021 at 12:25 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `tumbnail` mediumtext NOT NULL,
  `title` mediumtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
