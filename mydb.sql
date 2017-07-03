-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2017 at 03:21 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `noticias`
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
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `noticia`, `resumo`, `autor`, `data_noticia`, `data_criacao`, `assunto`) VALUES
(1, 'Tiroteio deixa feridos do lado de fora de mesquita em Avignon, na França', 'Segundo o site do jornal “La Provence”, testemunhas afirmam que dois homens encapuzados chegaram em um Renault Clio, e um deles desceu e começou a atirar no meio da rua, por volta das 22h30 (18h30 em Brasília), enquanto as pessoas saíam do templo religioso.', 'Dois homens em um carro dispararam quando pessoas estavam saindo da mesquita. Oito ficaram feridas.', 'Emanuel', '2017-07-02', '2017-07-02 23:11:21', 'Violência'),
(2, 'Fortaleza empata com Confiança dentro de casa', 'Fortaleza joga igual criança e empata com um time fulerage. Bonamigo garotiza nas substituições e deixa o morto do Leandro Cearense jogando os 90 minutos. Torcida vaia com gosto, pra aprenderem a respeitar quem paga ingresso pra ver jogo bosta.', 'A desgraça desse time só faz raiva', 'Emanuel', '2017-07-02', '2017-07-02 23:13:28', 'Esporte'),
(3, 'Gretchen participa de novo clipe de Katy Perry', 'Sabe quem participa do clipe que a rainha americana do pop Katy Perry lança mundialmente amanhã? Gretchen, chamada pela própria Katy de “The brazilian queen of bumbum” (a rainha brasileira do bumbum). O convite para ela participar da gravação de “Swish swish”, parceria da americana com Nicki Minaj, partiu de Katy, que conheceu a brasileira através da internet — a cantora acompanha e se diverte com os “memes” de Gretchen nas redes sociais, chegando a comentar em alguns deles.', 'Konga la konga', 'Levi', '2017-07-01', '2017-07-02 23:15:46', 'Famosos'),
(4, 'Blogueira Alice Salazar ensina tutorial de maquiagem para Festa Junina', 'Junho está acabando, mas quem disse que as comemorações de São João chegaram ao fim? Os arraiás continuam e ainda dá tempo de você aprender a fazer um make BAPHO com a blogueira e maquiadora Alice Salazar.', 'Em pouco tempo você consegue ficar linda para os arraiás', 'Emanuele', '2017-07-03', '2017-07-02 23:18:03', 'Moda'),
(5, 'SG está fora do TI', 'Equipe brasileira de Dota perde a vaga no The International 2017 para a equipe Infamous, do Peru. Stomp de 3x0. Obrigado SG!', 'Equipe brasileira perde a vaga para boludos', 'Levi', '2017-07-01', '2017-07-02 23:19:59', 'E-Sports'),
(6, 'Ceará leva mói de sola do Paraná', 'Kanal vê equipe do Paraná vestindo vermelho, azul e branco e treme as perna, saindo derrotado da partida. #ChupaKanal', 'KKKKKKKKKKKKKK', 'Emanuel', '2017-06-30', '2017-07-02 23:21:45', 'Esporte'),
(7, 'Promoção dos Pacotes de Un’Goro já está disponivel!', 'Anunciada no dia 21 a promoção dos pacotes de Un’Goro já está disponível pra compra. Você tem até o dia 10 de Julho para adquirir esse bônus. Lembrando que a nova mecânica das lendárias repetidas ainda não está ativa, você pode comprar agora e aguardar o patch para abrir os seus pacotes.', 'Bônus na compra de pacotes de Un\'Goro no Hearthstone', 'Levi', '2017-06-29', '2017-07-02 23:33:57', 'E-Sports'),
(8, 'Falsa alteração do nome artístico expõe força do marketing de Claudia', 'Só que Claudia Leitte sabe vender a própria imagem como poucos artistas no Brasil. O que explica a manutenção da artista no mercado. Saber usar o marketing a serviço da própria imagem é qualidade que valoriza artistas que transitam no mainstream. Grandes cantoras norte-americanas sabem da importância do marketing como instrumento quase essencial no desenvolvimento de uma carreira. Claudia Leitte tem essa qualidade – o que não a torna necessariamente importante do ponto de vista musical. Mas tampouco lhe tira o mérito de ser uma cantora conhecida e popular em todo o Brasil pela imagem cuidadosamente tratada por Claudia e pela equipe que administra a carreira da artista.', 'A trajetória vitoriosa de Claudia Leitte', 'Emanuele', '2017-06-28', '2017-07-02 23:25:49', 'Famosos'),
(9, 'Apresentação dos trabalhos de Banco de Dados se iniciam amanhã', 'Os trabalhos serão entregues, com a esperança de ficar de passar em pelo menos uma cadeira esse semestre.', 'Professor Serra ouvirá os alunos mostrarem seus trabalhos', 'Levi', '2017-07-02', '2017-07-02 23:43:05', 'Educação');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
