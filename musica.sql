-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 12-Abr-2025 às 17:15
-- Versão do servidor: 8.0.17
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `musica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `albuns`
--

CREATE TABLE `albuns` (
  `albumID` int(11) NOT NULL,
  `albumTitulo` varchar(100) NOT NULL,
  `albumAno` year(4) NOT NULL,
  `bandas_bandaID` int(11) DEFAULT NULL,
  `produtores_produtorID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `albuns`
--

INSERT INTO `albuns` (`albumID`, `albumTitulo`, `albumAno`, `bandas_bandaID`, `produtores_produtorID`) VALUES
(1, 'Concentrado', 2012, 1, 1),
(2, 'Brothers in Arms', 1985, 2, 2),
(3, 'Making Movies', 1980, 2, 2),
(4, 'Reckless 30th Anniversary', 1984, 3, 3),
(5, 'Silence Becomes it', 1998, 4, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `artistas`
--

CREATE TABLE `artistas` (
  `artistasID` int(11) NOT NULL,
  `nomeArtista` varchar(100) NOT NULL,
  `apelidoArtista` varchar(100) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `paisArtista` varchar(45) NOT NULL,
  `papelArtista` varchar(45) DEFAULT NULL,
  `bandas_bandaID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `artistas`
--

INSERT INTO `artistas` (`artistasID`, `nomeArtista`, `apelidoArtista`, `dataNascimento`, `paisArtista`, `papelArtista`, `bandas_bandaID`) VALUES
(1, 'Tóli', 'Machado', '1961-06-08', 'Portugal', 'Guitarrista', 1),
(2, 'Rui', 'Reininho', '1955-02-28', 'Portugal', 'Vocalista', 1),
(3, 'Jorge', 'Romão', '1963-10-09', 'Angola', 'Baixista', 1),
(4, 'Mark', 'Knopfler', '1949-08-12', 'Escócia', 'Vocalista', 2),
(5, 'David', 'Knopfler', '1952-12-27', 'Escócia', 'Guitarrista', 2),
(6, 'John', 'Illsley', '1949-06-24', 'Inglaterra', 'Baixista', 2),
(7, 'Pick', 'Withers', '1948-04-04', 'Inglaterra', 'Baterista', 2),
(8, 'Alan', 'Clark', '1952-03-05', 'Inglaterra', 'Teclista', 2),
(9, 'Hal', 'Lindes', '1953-06-30', 'EUA', 'Guitarrista', 2),
(10, 'Terry', 'Williams', '1948-01-11', 'País de Gales', 'Baterista', 2),
(11, 'Guy', 'Fletcher', '1960-05-24', 'Inglaterra', 'Guitarrista', 2),
(12, 'Jack', 'Sonni', '1954-12-09', 'EUA', 'Guitarrista', 2),
(13, 'Chris', 'White', '1955-07-13', 'Inglaterra', 'Saxofonista', 2),
(14, 'Bryan', 'Adams', '1959-11-05', 'Canadá', 'Vocalista', 3),
(15, 'Keith', 'Scott', '1954-07-20', 'Canadá', 'Guitarrista', 3),
(16, 'Mickey', 'Curry', '1956-06-10', 'EUA', 'Baterista', 3),
(17, 'Gary', 'Breit', '1960-06-18', 'Canadá', 'Teclista', 3),
(18, 'Solomon', 'Walker', '1971-12-06', 'EUA', 'Baixista', 3),
(19, 'David', 'Fonseca', '1973-06-14', 'Portugal', 'Vocalista', 4),
(20, 'Tóli', 'Machado', '1961-06-08', 'Portugal', 'Guitarrista', 1),
(21, 'Rui', 'Reininho', '1955-02-28', 'Portugal', 'Vocalista', 1),
(22, 'Jorge', 'Romão', '1963-10-09', 'Angola', 'Baixista', 1),
(23, 'Mark', 'Knopfler', '1949-08-12', 'Escócia', 'Vocalista', 2),
(24, 'David', 'Knopfler', '1952-12-27', 'Escócia', 'Guitarrista', 2),
(25, 'John', 'Illsley', '1949-06-24', 'Inglaterra', 'Baixista', 2),
(26, 'Pick', 'Withers', '1948-04-04', 'Inglaterra', 'Baterista', 2),
(27, 'Alan', 'Clark', '1952-03-05', 'Inglaterra', 'Teclista', 2),
(28, 'Hal', 'Lindes', '1953-06-30', 'EUA', 'Guitarrista', 2),
(29, 'Terry', 'Williams', '1948-01-11', 'País de Gales', 'Baterista', 2),
(30, 'Guy', 'Fletcher', '1960-05-24', 'Inglaterra', 'Guitarrista', 2),
(31, 'Jack', 'Sonni', '1954-12-09', 'EUA', 'Guitarrista', 2),
(32, 'Chris', 'White', '1955-07-13', 'Inglaterra', 'Saxofonista', 2),
(33, 'Bryan', 'Adams', '1959-11-05', 'Canadá', 'Vocalista', 3),
(34, 'Keith', 'Scott', '1954-07-20', 'Canadá', 'Guitarrista', 3),
(35, 'Mickey', 'Curry', '1956-06-10', 'EUA', 'Baterista', 3),
(36, 'Gary', 'Breit', '1960-06-18', 'Canadá', 'Teclista', 3),
(37, 'Solomon', 'Walker', '1971-12-06', 'EUA', 'Baixista', 3),
(38, 'David', 'Fonseca', '1973-06-14', 'Portugal', 'Vocalista', 4),
(39, 'Sofia', 'Lisboa', NULL, 'Portugal', 'Vocalista', 4),
(40, 'Rui', 'Costa', NULL, 'Portugal', 'Baixista', 4),
(41, 'Tozé', 'Pedrosa', NULL, 'Portugal', 'Baterista', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bandas`
--

CREATE TABLE `bandas` (
  `bandaID` int(11) NOT NULL,
  `bandaNome` varchar(100) NOT NULL,
  `bandaAno` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `bandas`
--

INSERT INTO `bandas` (`bandaID`, `bandaNome`, `bandaAno`) VALUES
(1, 'GNR', 1980),
(2, 'Dire Straits', 1977),
(3, 'Bryan Adams', 1977),
(4, 'Silence 4', 1995);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `generoID` int(11) NOT NULL,
  `generoNome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`generoID`, `generoNome`) VALUES
(3, 'Alternative Rock'),
(8, 'Blues'),
(2, 'Blues Rock'),
(9, 'Classical'),
(7, 'Country'),
(16, 'Disco'),
(14, 'Folk'),
(4, 'Hard Rock'),
(6, 'Hip Hop'),
(5, 'Jazz'),
(11, 'Pop'),
(1, 'Pop Rock'),
(13, 'R&B'),
(12, 'Reggae'),
(10, 'Soul'),
(15, 'Techno');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `musicaID` int(11) NOT NULL,
  `musicaTitulo` varchar(100) NOT NULL,
  `duracao` time NOT NULL,
  `musicaAno` year(4) NOT NULL,
  `letra` text,
  `albuns_albumID` int(11) DEFAULT NULL,
  `generos_generoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`musicaID`, `musicaTitulo`, `duracao`, `musicaAno`, `letra`, `albuns_albumID`, `generos_generoID`) VALUES
(1, 'Sangue oculto', '00:05:13', 1992, NULL, 1, 1),
(2, 'Video maria', '00:04:41', 1988, NULL, 1, 1),
(3, 'Efectivamente', '00:03:17', 1987, NULL, 1, 1),
(4, 'Dunas', '00:03:33', 1996, NULL, 1, 1),
(5, 'Ana Lee', '00:03:19', 1992, NULL, 1, 1),
(6, 'Pronúncia do norte', '00:03:27', 1992, NULL, 1, 1),
(7, 'Morte ao sol', '00:04:44', 1989, NULL, 1, 1),
(8, '+ Vale nunca', '00:05:26', 1994, NULL, 1, 1),
(9, 'Quero Que Vá Tudo Pró Inferno', '00:02:40', 2006, NULL, 1, 1),
(10, 'Asas', '00:03:52', 2000, NULL, 1, 1),
(11, 'Saliva', '00:03:38', 1998, NULL, 1, 1),
(12, 'Hardcore (1º Escalão)', '00:04:23', 1982, NULL, 1, 1),
(13, 'Portugal Na CEE', '00:03:34', 1981, NULL, 1, 1),
(14, 'Pós modernos', '00:04:27', 1986, NULL, 1, 1),
(15, 'Vocês', '00:03:21', 2002, NULL, 1, 1),
(16, 'Cais', '00:04:12', 2011, NULL, 1, 1),
(17, 'Tirana', '00:04:59', 1998, NULL, 1, 1),
(18, 'Las vagas', '00:04:17', 1994, NULL, 1, 1),
(19, 'Sub-16', '00:03:21', 1992, NULL, 1, 1),
(20, 'Sexta-feira (Um seu criado)', '00:03:45', 2002, NULL, 1, 1),
(21, 'So Far Away', '00:05:12', 1985, NULL, 2, 2),
(22, 'Money for Nothing', '00:08:25', 1985, NULL, 2, 2),
(23, 'Walk of Life', '00:04:12', 1985, 'Here comes Johnny singing oldies, goldies\r\n\"Be-Bop-A-Lula,\" \"Baby What I Say\"\r\nHere comes Johnny singing, \"I Gotta Woman\"\r\nDown in the tunnels, trying to make it pay\r\nHe got the action, he got the motion\r\nYeah, the boy can play\r\nDedication, devotion\r\nTurning all the night time into the day\r\nHe do the song about the sweet lovin\' woman\r\nHe do the song about the knife\r\nHe do the walk, do the walk of life\r\nYeah, he do the walk of life\r\nHere comes Johnny, gonna tell you the story\r\nHand me down my walkin\' shoes\r\nHere comes Johnny with the power and the glory\r\nBackbeat the talkin\' blues\r\nHe got the action, he got the motion\r\nYeah, the boy can play\r\nDedication, devotion\r\nTurning all the night time into the day\r\nThe song about the sweet lovin\' woman\r\nHe do the song about the knife\r\nThen he do the walk, he do the walk of life\r\nYeah, he do the walk of life\r\nHere comes Johnny singing oldies, goldies\r\n\"Be-Bop-A-Lula,\" \"Baby What I Say\"\r\nHere comes Johnny singing, \"I Gotta Woman\"\r\nDown in the tunnels, trying to make it pay\r\nHe got the action, he got the motion\r\nYeah, the boy can play\r\nDedication, devotion\r\nTurning all the night time into the day\r\nAnd after all the violence and double talk\r\nThere\'s just a song in all the trouble and the strife\r\nYou do the walk, yeah, you do the walk of life\r\nHmm, you do the walk of life', 2, 2),
(24, 'Your Latest Trick', '00:06:33', 1986, NULL, 2, 2),
(25, 'Why Worry', '00:08:31', 1985, NULL, 2, 2),
(26, 'Ride Across the River', '00:06:58', 1985, NULL, 2, 2),
(27, 'The Man\'s Too Strong', '00:04:40', 1985, NULL, 2, 2),
(28, 'One World', '00:03:40', 1985, NULL, 2, 2),
(29, 'Brothers in Arms', '00:06:59', 1985, NULL, 2, 2),
(30, 'Tunnel of Love', '00:08:11', 1980, NULL, 3, 2),
(31, 'Romeo and Juliet', '00:06:00', 1980, NULL, 3, 2),
(32, 'Skateaway', '00:06:40', 1980, NULL, 3, 2),
(33, 'Expresso Love', '00:05:12', 1980, NULL, 3, 2),
(34, 'Hand in Hand', '00:04:48', 1980, NULL, 3, 2),
(35, 'Solid Rock', '00:03:19', 1980, NULL, 3, 2),
(36, 'Les Boys', '00:04:07', 1980, NULL, 3, 2),
(37, 'One Night Love Affair', '00:04:32', 1984, NULL, 4, 1),
(38, 'She\'s Only Happy When She\'s Dancin\'', '00:03:14', 1984, NULL, 4, 1),
(39, 'Run to You', '00:03:54', 1984, NULL, 4, 1),
(40, 'Heaven', '00:04:03', 1984, NULL, 4, 1),
(41, 'Somebody', '00:04:44', 1984, NULL, 4, 1),
(42, 'Summer of \'69', '00:03:36', 1984, NULL, 4, 1),
(43, 'Kids Wanna Rock', '00:02:36', 1984, NULL, 4, 1),
(44, 'It\'s Only Love', '00:03:15', 1984, NULL, 4, 1),
(45, 'Long Gone', '00:03:57', 1984, NULL, 4, 1),
(46, 'Ain\'t Gonna Cry', '00:04:06', 1984, NULL, 4, 1),
(69, 'Goodbye Tomorrow', '00:05:26', 1998, NULL, 5, 1),
(70, 'Borrow', '00:04:40', 1998, NULL, 5, 1),
(71, 'Dying Young', '00:02:45', 1998, NULL, 5, 1),
(72, 'Old Letters', '00:03:25', 1998, NULL, 5, 1),
(73, 'Angel Song', '00:05:17', 1998, NULL, 5, 1),
(74, 'My Friends', '00:03:59', 1998, NULL, 5, 1),
(75, 'A (Very) Little Respect', '00:02:44', 1998, NULL, 5, 1),
(76, 'Sextos Sentidos', '00:03:56', 1998, NULL, 5, 1),
(77, 'We', '00:03:52', 1998, NULL, 5, 1),
(78, 'Breeders', '00:02:52', 1998, NULL, 5, 1),
(79, 'Eu Não Sei Dizer', '00:04:11', 1998, NULL, 5, 1),
(80, 'Cry', '00:03:31', 1998, NULL, 5, 1),
(81, 'A Little Respect', '00:03:46', 1998, NULL, 5, 1),
(82, 'Teeth Against the Glass', '00:02:54', 1998, NULL, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtores`
--

CREATE TABLE `produtores` (
  `produtorID` int(11) NOT NULL,
  `produtorNome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `produtores`
--

INSERT INTO `produtores` (`produtorID`, `produtorNome`) VALUES
(1, 'Parlophone Music Portugal, Lda'),
(2, 'Mercury Records Limited'),
(3, 'A&M Records'),
(4, 'Universal Music Group N.V.');

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `walkoflifeview`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `walkoflifeview` (
`Banda` varchar(100)
,`Título` varchar(100)
,`Duração` time
,`Ano de Lançamento` year(4)
,`Letra` text
,`Álbum` varchar(100)
,`Género` varchar(45)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `walkoflifeview`
--
DROP TABLE IF EXISTS `walkoflifeview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `walkoflifeview`  AS  select `b`.`bandaNome` AS `Banda`,`m`.`musicaTitulo` AS `Título`,`m`.`duracao` AS `Duração`,`m`.`musicaAno` AS `Ano de Lançamento`,`m`.`letra` AS `Letra`,`a`.`albumTitulo` AS `Álbum`,`g`.`generoNome` AS `Género` from (((`musicas` `m` join `albuns` `a` on((`m`.`albuns_albumID` = `a`.`albumID`))) join `generos` `g` on((`m`.`generos_generoID` = `g`.`generoID`))) join `bandas` `b` on((`a`.`bandas_bandaID` = `b`.`bandaID`))) where (`m`.`musicaTitulo` like 'Walk of Life') ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `albuns`
--
ALTER TABLE `albuns`
  ADD PRIMARY KEY (`albumID`),
  ADD KEY `bandas_bandaID` (`bandas_bandaID`),
  ADD KEY `produtores_produtorID` (`produtores_produtorID`);

--
-- Índices para tabela `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`artistasID`),
  ADD KEY `bandas_bandaID` (`bandas_bandaID`);

--
-- Índices para tabela `bandas`
--
ALTER TABLE `bandas`
  ADD PRIMARY KEY (`bandaID`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`generoID`),
  ADD KEY `idx_generoNome` (`generoNome`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`musicaID`),
  ADD KEY `albuns_albumID` (`albuns_albumID`),
  ADD KEY `generos_generoID` (`generos_generoID`);

--
-- Índices para tabela `produtores`
--
ALTER TABLE `produtores`
  ADD PRIMARY KEY (`produtorID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `albuns`
--
ALTER TABLE `albuns`
  MODIFY `albumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `artistas`
--
ALTER TABLE `artistas`
  MODIFY `artistasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `bandas`
--
ALTER TABLE `bandas`
  MODIFY `bandaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `generoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `musicaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de tabela `produtores`
--
ALTER TABLE `produtores`
  MODIFY `produtorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `albuns`
--
ALTER TABLE `albuns`
  ADD CONSTRAINT `albuns_ibfk_1` FOREIGN KEY (`bandas_bandaID`) REFERENCES `bandas` (`bandaID`),
  ADD CONSTRAINT `albuns_ibfk_2` FOREIGN KEY (`produtores_produtorID`) REFERENCES `produtores` (`produtorID`);

--
-- Limitadores para a tabela `artistas`
--
ALTER TABLE `artistas`
  ADD CONSTRAINT `artistas_ibfk_1` FOREIGN KEY (`bandas_bandaID`) REFERENCES `bandas` (`bandaID`);

--
-- Limitadores para a tabela `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`albuns_albumID`) REFERENCES `albuns` (`albumID`),
  ADD CONSTRAINT `musicas_ibfk_2` FOREIGN KEY (`generos_generoID`) REFERENCES `generos` (`generoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
