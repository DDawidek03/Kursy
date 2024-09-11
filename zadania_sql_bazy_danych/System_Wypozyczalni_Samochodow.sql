-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Czas generowania: 05 Wrz 2024, 14:22
-- Wersja serwera: 5.7.39
-- Wersja PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `System Wypożyczalni Samochodów`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Faktury`
--

CREATE TABLE `Faktury` (
  `id_faktury` int(11) NOT NULL,
  `id_wypozyczenia` int(11) DEFAULT NULL,
  `data_faktury` date NOT NULL,
  `kwota_calosci` decimal(10,2) NOT NULL,
  `zaplacono` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Faktury`
--

INSERT INTO `Faktury` (`id_faktury`, `id_wypozyczenia`, `data_faktury`, `kwota_calosci`, `zaplacono`) VALUES
(1, 1, '2021-08-10', '1500.00', 1),
(2, 2, '2023-09-10', '300.00', 0),
(6, 8, '2021-07-22', '25120.00', 1),
(7, 10, '2023-06-17', '400.00', 1),
(8, 9, '2023-09-05', '700.00', 0),
(14, 1, '2021-05-05', '450.00', 1),
(15, 2, '2023-07-20', '65120.00', 1),
(16, 8, '2022-06-15', '400.00', 0),
(17, 9, '2023-08-25', '5550.00', 0),
(18, 10, '2023-09-12', '750.00', 1),
(19, 1, '2023-05-05', '45120.00', 1),
(20, 2, '2019-07-20', '2650.00', 1),
(21, 8, '2023-06-15', '4000.00', 0),
(22, 9, '2023-08-25', '550.00', 0),
(23, 10, '2019-09-12', '750.00', 1),
(24, 1, '2023-05-05', '450.00', 1),
(25, 2, '2022-07-20', '6500.00', 1),
(26, 8, '2023-06-15', '400.00', 0),
(27, 9, '2023-08-25', '550.00', 0),
(28, 10, '2019-09-12', '750.00', 1),
(29, 1, '2023-05-05', '4510.00', 1),
(30, 2, '2023-07-20', '65120.00', 1),
(31, 8, '2022-06-15', '400.00', 0),
(32, 9, '2023-08-25', '510.00', 0),
(33, 10, '2019-09-12', '750.00', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Klienci`
--

CREATE TABLE `Klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numer_telefonu` varchar(20) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `data_rejestracji` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Klienci`
--

INSERT INTO `Klienci` (`id_klienta`, `imie`, `nazwisko`, `email`, `numer_telefonu`, `adres`, `data_rejestracji`) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', '500600700', 'Warszawa, ul. Kwiatowa 5', '2022-01-10'),
(2, 'Anna', 'Nowak', 'anna.nowak@example.com', '511711811', 'Kraków, ul. Słoneczna 12', '2021-03-15'),
(3, 'Paweł', 'Zieliński', 'pawel.zielinski@example.com', '522822922', 'Gdańsk, ul. Morska 3', '2020-06-22'),
(4, 'Karolina', 'Malinowska', 'karolina.malinowska@example.com', '533933033', 'Wrocław, ul. Zielona 8', '2023-02-14'),
(5, 'Mateusz', 'Pawlak', 'mateusz.pawlak@example.com', '544044144', 'Poznań, ul. Dębowa 18', '2019-11-07'),
(6, 'Marcin', 'Wojciechowski', 'marcin.wojciechowski@example.com', '601101201', 'Poznań, ul. Zielona 14', '2022-04-12'),
(7, 'Katarzyna', 'Lis', 'katarzyna.lis@example.com', '602202303', 'Wrocław, ul. Lipowa 25', '2021-05-10'),
(8, 'Piotr', 'Górski', 'piotr.gorski@example.com', '603303404', 'Lublin, ul. Krótka 11', '2023-02-20'),
(9, 'Monika', 'Sikorska', 'monika.sikorska@example.com', '604404505', 'Łódź, ul. Długa 8', '2020-10-15'),
(10, 'Tomasz', 'Jankowski', 'tomasz.jankowski@example.com', '605505606', 'Gdynia, ul. Wodna 7', '2022-09-07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Opinie`
--

CREATE TABLE `Opinie` (
  `id_opinii` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_samochodu` int(11) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL,
  `komentarz` text,
  `data_opinii` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Opinie`
--

INSERT INTO `Opinie` (`id_opinii`, `id_klienta`, `id_samochodu`, `ocena`, `komentarz`, `data_opinii`) VALUES
(1, 1, 1, 5, 'Bardzo polecam, super auto!', '2023-08-12'),
(2, 2, 3, 4, 'Dobre auto, ale serwis mógłby być szybszy.', '2023-09-15'),
(3, 1, 1, 5, 'Świetny samochód, bardzo wygodny.', '2023-05-07'),
(4, 2, 3, 4, 'Samochód w porządku, ale spalanie mogłoby być niższe.', '2023-08-22'),
(5, 3, 5, 5, 'Super auto, polecam każdemu!', '2023-09-01'),
(6, 4, 2, 3, 'Trochę za głośny, ale ogólnie OK.', '2023-07-20'),
(7, 5, 4, 5, 'Najlepsze auto, jakie wynajmowałem!', '2023-09-13');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Platnosci`
--

CREATE TABLE `Platnosci` (
  `id_platnosci` int(11) NOT NULL,
  `id_faktury` int(11) DEFAULT NULL,
  `data_platnosci` date NOT NULL,
  `kwota` decimal(10,2) NOT NULL,
  `metoda_platnosci` enum('karta','przelew','gotówka') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Platnosci`
--

INSERT INTO `Platnosci` (`id_platnosci`, `id_faktury`, `data_platnosci`, `kwota`, `metoda_platnosci`) VALUES
(1, 1, '2023-08-11', '500.00', 'karta'),
(11, 1, '2023-05-06', '450.00', 'przelew'),
(12, 2, '2023-07-21', '650.00', 'karta'),
(13, 7, '2023-09-13', '750.00', 'gotówka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Pracownicy`
--

CREATE TABLE `Pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `stanowisko` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `data_zatrudnienia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Pracownicy`
--

INSERT INTO `Pracownicy` (`id_pracownika`, `imie`, `nazwisko`, `stanowisko`, `email`, `telefon`, `data_zatrudnienia`) VALUES
(1, 'Marek', 'Wiśniewski', 'Kierownik', 'marek.wisniewski@example.com', '500100100', '2019-02-20'),
(2, 'Joanna', 'Lewandowska', 'Konsultant', 'joanna.lewandowska@example.com', '510110120', '2020-04-18'),
(3, 'Tomasz', 'Kamiński', 'Mechanik', 'tomasz.kaminski@example.com', '520120130', '2018-08-12'),
(4, 'Katarzyna', 'Dąbrowska', 'Specjalista ds. marketingu', 'katarzyna.dabrowska@example.com', '530130140', '2021-01-05'),
(5, 'Piotr', 'Zawadzki', 'Konsultant', 'piotr.zawadzki@example.com', '540140150', '2022-03-14'),
(6, 'Adam', 'Kamiński', 'Specjalista ds. wypożyczeń', 'adam.kaminski@example.com', '607707808', '2021-01-10'),
(7, 'Michał', 'Dąbrowski', 'Kierownik Serwisu', 'michal.dabrowski@example.com', '608808909', '2018-12-05'),
(8, 'Magdalena', 'Zawadzka', 'Konsultant', 'magdalena.zawadzka@example.com', '609909101', '2022-11-15'),
(9, 'Tomasz', 'Błaszczyk', 'Menedżer', 'tomasz.blaszczyk@example.com', '610101202', '2020-03-25'),
(10, 'Karolina', 'Kowalczyk', 'Specjalista ds. Obsługi Klienta', 'karolina.kowalczyk@example.com', '611212313', '2019-09-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Samochody`
--

CREATE TABLE `Samochody` (
  `id_samochodu` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `rok_produkcji` year(4) NOT NULL,
  `numer_rejestracyjny` varchar(10) NOT NULL,
  `kolor` varchar(30) DEFAULT NULL,
  `status` enum('dostępny','wypożyczony','serwis') DEFAULT 'dostępny'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Samochody`
--

INSERT INTO `Samochody` (`id_samochodu`, `marka`, `model`, `rok_produkcji`, `numer_rejestracyjny`, `kolor`, `status`) VALUES
(1, 'Toyota', 'Corolla', 2019, 'WY1234A', 'czerwony', 'dostępny'),
(2, 'BMW', 'X5', 2021, 'KR5678B', 'czarny', 'wypożyczony'),
(3, 'Ford', 'Focus', 2018, 'GD4321C', 'niebieski', 'dostępny'),
(4, 'Audi', 'A4', 2020, 'PO8765D', 'biały', 'serwis'),
(5, 'Mercedes', 'C200', 2017, 'WA6789E', 'srebrny', 'dostępny'),
(6, 'Volkswagen', 'Passat', 2022, 'GD1234F', 'szary', 'wypożyczony'),
(7, 'Honda', 'Civic', 2020, 'PO1234D', 'biały', 'dostępny'),
(8, 'Audi', 'A4', 2017, 'WR5678E', 'czarny', 'wypożyczony'),
(9, 'Volkswagen', 'Golf', 2019, 'LU4321F', 'srebrny', 'dostępny'),
(10, 'Mercedes', 'C-Class', 2022, 'GD8765G', 'niebieski', 'serwis'),
(11, 'Peugeot', '308', 2018, 'LD1234H', 'szary', 'dostępny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Serwisy`
--

CREATE TABLE `Serwisy` (
  `id_serwisu` int(11) NOT NULL,
  `id_samochodu` int(11) DEFAULT NULL,
  `opis` varchar(255) NOT NULL,
  `data_serwisu` date NOT NULL,
  `koszt` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Serwisy`
--

INSERT INTO `Serwisy` (`id_serwisu`, `id_samochodu`, `opis`, `data_serwisu`, `koszt`) VALUES
(1, 1, 'Wymiana oleju', '2023-01-15', '200.00'),
(2, 3, 'Naprawa skrzyni biegów', '2023-05-20', '1200.00'),
(3, 4, 'Wymiana klocków hamulcowych', '2023-07-25', '300.00'),
(4, 5, 'Naprawa silnika', '2022-12-10', '1500.00'),
(5, 3, 'Wymiana opon', '2023-08-30', '400.00'),
(6, 1, 'Wymiana klocków hamulcowych', '2023-03-10', '350.00'),
(7, 4, 'Przegląd techniczny', '2023-05-22', '500.00'),
(8, 2, 'Wymiana filtrów', '2023-06-15', '250.00'),
(9, 5, 'Naprawa układu wydechowego', '2023-07-18', '700.00'),
(10, 3, 'Wymiana akumulatora', '2023-08-05', '300.00'),
(11, 1, 'Wymiana klocków hamulcowych', '2023-03-10', '350.00'),
(12, 4, 'Przegląd techniczny', '2023-05-22', '500.00'),
(13, 2, 'Wymiana filtrów', '2023-06-15', '250.00'),
(14, 5, 'Naprawa układu wydechowego', '2023-07-18', '700.00'),
(15, 3, 'Wymiana akumulatora', '2023-08-05', '300.00'),
(16, 1, 'Wymiana klocków hamulcowych', '2023-03-10', '350.00'),
(17, 4, 'Przegląd techniczny', '2023-05-22', '500.00'),
(18, 2, 'Wymiana filtrów', '2023-06-15', '250.00'),
(19, 5, 'Naprawa układu wydechowego', '2023-07-18', '700.00'),
(20, 3, 'Wymiana akumulatora', '2023-08-05', '300.00'),
(21, 1, 'Wymiana klocków hamulcowych', '2023-03-10', '350.00'),
(22, 4, 'Przegląd techniczny', '2023-05-22', '500.00'),
(23, 2, 'Wymiana filtrów', '2023-06-15', '250.00'),
(24, 5, 'Naprawa układu wydechowego', '2023-07-18', '700.00'),
(25, 3, 'Wymiana akumulatora', '2023-08-05', '300.00'),
(26, 1, 'Wymiana klocków hamulcowych', '2023-03-10', '350.00'),
(27, 4, 'Przegląd techniczny', '2023-05-22', '500.00'),
(28, 2, 'Wymiana filtrów', '2023-06-15', '250.00'),
(29, 5, 'Naprawa układu wydechowego', '2023-07-18', '700.00'),
(30, 3, 'Wymiana akumulatora', '2023-08-05', '300.00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Wypozyczenia`
--

CREATE TABLE `Wypozyczenia` (
  `id_wypozyczenia` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_samochodu` int(11) DEFAULT NULL,
  `data_wypozyczenia` date NOT NULL,
  `data_zwrotu` date DEFAULT NULL,
  `kwota` decimal(10,2) DEFAULT NULL,
  `status` enum('wypożyczony','zwrócony') DEFAULT 'wypożyczony'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `Wypozyczenia`
--

INSERT INTO `Wypozyczenia` (`id_wypozyczenia`, `id_klienta`, `id_samochodu`, `data_wypozyczenia`, `data_zwrotu`, `kwota`, `status`) VALUES
(1, 1, 2, '2022-08-01', '2023-08-10', '500.00', 'zwrócony'),
(2, 2, 3, '2023-09-05', NULL, '300.00', 'wypożyczony'),
(8, 1, 2, '2021-08-01', '2023-08-10', '500.00', 'zwrócony'),
(9, 3, 1, '2023-07-15', NULL, '250.00', 'zwrócony'),
(10, 4, 4, '2020-06-10', '2023-06-17', '400.00', 'zwrócony'),
(11, 5, 5, '2023-09-01', NULL, '700.00', 'wypożyczony'),
(12, 2, 1, '2019-05-01', '2025-05-05', '450.00', 'zwrócony'),
(13, 3, 5, '2023-07-12', '2026-07-20', '650.00', 'zwrócony'),
(14, 4, 3, '2023-06-15', NULL, '400.00', 'wypożyczony'),
(15, 5, 2, '2015-08-25', NULL, '550.00', 'wypożyczony'),
(16, 1, 4, '2023-09-05', '2024-09-12', '750.00', 'zwrócony');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Faktury`
--
ALTER TABLE `Faktury`
  ADD PRIMARY KEY (`id_faktury`),
  ADD KEY `id_wypozyczenia` (`id_wypozyczenia`);

--
-- Indeksy dla tabeli `Klienci`
--
ALTER TABLE `Klienci`
  ADD PRIMARY KEY (`id_klienta`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `Opinie`
--
ALTER TABLE `Opinie`
  ADD PRIMARY KEY (`id_opinii`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_samochodu` (`id_samochodu`);

--
-- Indeksy dla tabeli `Platnosci`
--
ALTER TABLE `Platnosci`
  ADD PRIMARY KEY (`id_platnosci`),
  ADD KEY `id_faktury` (`id_faktury`);

--
-- Indeksy dla tabeli `Pracownicy`
--
ALTER TABLE `Pracownicy`
  ADD PRIMARY KEY (`id_pracownika`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `Samochody`
--
ALTER TABLE `Samochody`
  ADD PRIMARY KEY (`id_samochodu`),
  ADD UNIQUE KEY `numer_rejestracyjny` (`numer_rejestracyjny`);

--
-- Indeksy dla tabeli `Serwisy`
--
ALTER TABLE `Serwisy`
  ADD PRIMARY KEY (`id_serwisu`),
  ADD KEY `id_samochodu` (`id_samochodu`);

--
-- Indeksy dla tabeli `Wypozyczenia`
--
ALTER TABLE `Wypozyczenia`
  ADD PRIMARY KEY (`id_wypozyczenia`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_samochodu` (`id_samochodu`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `Faktury`
--
ALTER TABLE `Faktury`
  MODIFY `id_faktury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `Klienci`
--
ALTER TABLE `Klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `Opinie`
--
ALTER TABLE `Opinie`
  MODIFY `id_opinii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `Platnosci`
--
ALTER TABLE `Platnosci`
  MODIFY `id_platnosci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT dla tabeli `Pracownicy`
--
ALTER TABLE `Pracownicy`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `Samochody`
--
ALTER TABLE `Samochody`
  MODIFY `id_samochodu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `Serwisy`
--
ALTER TABLE `Serwisy`
  MODIFY `id_serwisu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `Wypozyczenia`
--
ALTER TABLE `Wypozyczenia`
  MODIFY `id_wypozyczenia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `Faktury`
--
ALTER TABLE `Faktury`
  ADD CONSTRAINT `faktury_ibfk_1` FOREIGN KEY (`id_wypozyczenia`) REFERENCES `Wypozyczenia` (`id_wypozyczenia`);

--
-- Ograniczenia dla tabeli `Opinie`
--
ALTER TABLE `Opinie`
  ADD CONSTRAINT `opinie_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `Klienci` (`id_klienta`),
  ADD CONSTRAINT `opinie_ibfk_2` FOREIGN KEY (`id_samochodu`) REFERENCES `Samochody` (`id_samochodu`);

--
-- Ograniczenia dla tabeli `Platnosci`
--
ALTER TABLE `Platnosci`
  ADD CONSTRAINT `platnosci_ibfk_1` FOREIGN KEY (`id_faktury`) REFERENCES `Faktury` (`id_faktury`);

--
-- Ograniczenia dla tabeli `Serwisy`
--
ALTER TABLE `Serwisy`
  ADD CONSTRAINT `serwisy_ibfk_1` FOREIGN KEY (`id_samochodu`) REFERENCES `Samochody` (`id_samochodu`);

--
-- Ograniczenia dla tabeli `Wypozyczenia`
--
ALTER TABLE `Wypozyczenia`
  ADD CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `Klienci` (`id_klienta`),
  ADD CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`id_samochodu`) REFERENCES `Samochody` (`id_samochodu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
