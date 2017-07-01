-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Jul-2017 às 05:29
-- Versão do servidor: 10.1.24-MariaDB
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `noticia` longtext,
  `resumo` varchar(100) DEFAULT NULL,
  `autor` varchar(30) DEFAULT NULL,
  `data_noticia` date DEFAULT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `assunto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `noticia`, `resumo`, `autor`, `data_noticia`, `data_criacao`, `assunto`) VALUES
(3, 'Teste update com erros', 'extra extra extra', 'eu não sei oq estou fazendo', 'levi', '2017-06-03', '2017-06-30 02:56:09', 'tecnologia'),
(4, 'teste', 'teste', NULL, NULL, '2017-05-01', '2017-06-28 00:25:47', NULL),
(5, 'teste da noticia 5', 'noticia 5 testando', 'resumo da noticia 5', 'manel', '2017-06-01', '2017-06-26 02:05:53', NULL),
(6, 'vai se fuder', 'vai se fuder', NULL, NULL, '2017-06-17', '2017-06-28 00:26:01', NULL),
(7, 'oloco', 'oloco', NULL, NULL, '2017-06-24', '2017-06-28 00:26:09', NULL),
(9, 'testes', '5 e 7 meu', 'tá na hora tá na hora', 'levi', '2017-06-09', '2017-06-26 00:42:41', NULL),
(10, 'dá um pulo vai pra frente', 'asdf asdf hjkl asdf hjkl', 'aprendi em informatica', 'levi', '2017-06-30', '2017-06-26 02:06:13', NULL),
(11, 'de peixinho vai pra trás', 'safddsaffdsa', 'bati a cabeça no teclado', 'joao', '2017-06-01', '2017-06-26 00:43:19', NULL),
(13, 'Teste do Timestamp', 'oloco meu 5 e 7 agora bixo', 'noticia do faustão', 'levi', '2017-06-20', '2017-06-26 00:40:15', NULL),
(14, 'Teste de inclusão de notícia', 'teste total disso', 'Mais um teste de notícia', 'levi', '2017-06-16', '2017-06-30 00:13:25', 'terror'),
(15, 'Teste 5', 'asdasdasdasd', 'asdsadasdsadasdas', 'levi', '2017-02-07', '2017-06-29 01:11:03', 'moda'),
(16, 'teste', 'Eu não sei o que fazer', 'dedeasdasdasdadas', 'levi', '2017-06-09', '2017-06-28 23:47:06', 'moda'),
(18, 'Noticia com todo o sistema funcionando corretamente', 'A notícia é que o trabalho da cadeira de Bd está concluido', 'O teste foi bem sucedido ', 'levi', '2017-07-01', '2017-07-01 03:27:16', 'tecnologia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
