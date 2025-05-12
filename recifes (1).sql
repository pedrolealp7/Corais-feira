-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12/05/2025 às 20:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `_especies`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `recifes`
--

CREATE TABLE `recifes` (
  `RecifeID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Descriçao` varchar(45) NOT NULL,
  `ameacas` varchar(45) NOT NULL,
  `Localizaçao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `recifes`
--

INSERT INTO `recifes` (`RecifeID`, `Nome`, `Descriçao`, `ameacas`, `Localizaçao`) VALUES
(1, '[Recife de franja ]', '[Desenvolve-se diretamente ao longo da costa,', '[ Poluição costeira (esgoto, sedimentos, resí', '[ Caribe, Mar Vermelho, Pacífico Sul (próximo'),
(2, '[Recife de barreira]', '[Fica separado da costa por uma lagoa rasa; o', '[Branqueamento causado por aquecimento global', '[ Nordeste da Austrália, Belize, Nova Caledôn'),
(3, '[Atol]', '[É um recife circular ou oval que circunda um', '[ Elevação do nível do mar, erosão, tempestad', '[ceano Pacífico (Maldivas, Ilhas Marshall, Ki'),
(4, '[plataforma]', '[Forma-se em áreas rasas afastadas da costa, ', '[Exploração de petróleo e gás, pesca industri', '[Golfo do México, Mar do Sul da China, Mar de'),
(5, '[Recifes bancais]', '[São grandes formações planas ou elevadas no ', '[Pesca de arrasto, mineração marinha]', '[Mar do Caribe, Bahamas, Plataforma Brasileir');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `recifes`
--
ALTER TABLE `recifes`
  ADD PRIMARY KEY (`RecifeID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `recifes`
--
ALTER TABLE `recifes`
  MODIFY `RecifeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
