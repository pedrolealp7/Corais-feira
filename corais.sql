-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/05/2025 às 20:03
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
-- Estrutura para tabela `corais`
--

CREATE TABLE `corais` (
  `CoraisID` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `nome_cientifico` varchar(45) NOT NULL,
  `tipo_coral` varchar(45) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Recifes_RecifeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `corais`
--

INSERT INTO `corais` (`CoraisID`, `nome`, `nome_cientifico`, `tipo_coral`, `Descricao`, `Recifes_RecifeID`) VALUES
(1, 'Coral-cérebro', 'Diploria labyrinthiformis', 'Coral Duro', 'Conhecido como coral-cérebro-labiríntico, tem', 1),
(4, 'Coral-couve-flor', 'Pocillopora damicornis', 'Coral Duro', 'Chamado de coral-couve-flor, tem ramos curtos', 2),
(8, 'Coral-fungo', 'Fungia scutaria', 'Coral Duro', 'Conhecido como coral-fungo, é um coral solitá', 4),
(10, 'Coral-arame', 'Seriatopora hystrix', 'Coral Duro', 'Também chamado de coral-arame, tem ramos fino', 3),
(12, 'Coral-âncora', 'Euphyllia ancora', 'Coral Duro', 'Conhecido como coral-âncora, tem tentáculos q', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `corais`
--
ALTER TABLE `corais`
  ADD PRIMARY KEY (`CoraisID`,`Recifes_RecifeID`),
  ADD KEY `fk_Corais_Recifes_idx` (`Recifes_RecifeID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `corais`
--
ALTER TABLE `corais`
  MODIFY `CoraisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
