-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/05/2025 às 14:53
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
-- Banco de dados: `corais`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `corais`
--

CREATE TABLE `corais` (
  `CoralID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Nome_Cientifico` varchar(45) NOT NULL,
  `Recifes_RecifeID` int(11) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Descriçao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `recifes`
--

CREATE TABLE `recifes` (
  `RecifeID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Tipo_recife` varchar(45) NOT NULL,
  `ameaças` varchar(45) NOT NULL,
  `Localizaçao` varchar(45) NOT NULL,
  `Especies_EspeciesID` int(11) NOT NULL,
  `Descriçao` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `corais`
--
ALTER TABLE `corais`
  ADD PRIMARY KEY (`CoralID`),
  ADD KEY `fk_Corais_Recifes_idx` (`Recifes_RecifeID`);

--
-- Índices de tabela `recifes`
--
ALTER TABLE `recifes`
  ADD PRIMARY KEY (`RecifeID`,`Especies_EspeciesID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `recifes`
--
ALTER TABLE `recifes`
  MODIFY `RecifeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `corais`
--
ALTER TABLE `corais`
  ADD CONSTRAINT `fk_Corais_Recifes` FOREIGN KEY (`Recifes_RecifeID`) REFERENCES `recifes` (`RecifeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
