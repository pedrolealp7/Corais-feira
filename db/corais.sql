-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/05/2025 às 16:52
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
  `CoraisID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `NomeCientifico` varchar(100) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Recifes_RecifeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `corais`
--

INSERT INTO `corais` (`CoraisID`, `Nome`, `NomeCientifico`, `Descricao`, `Tipo`, `Recifes_RecifeID`) VALUES
(1, 'Coral-cerebro', 'Diploria labyrinthiformis', 'Sulcos profundos como labirinto', 'Coral duro', 1),
(2, 'Coral-couve-flor', 'Pocillopora damicornis', 'Ramos curtos e grossos, comum no Indo-Pacífico', 'Coral duro', 2),
(3, 'Coral-fungo', 'Fungia scutaria', 'Coral solitário, achatado, formato de disco', 'Coral duro', 3),
(4, 'Coral-arame', 'Seriatopora hystrix', 'Ramos finos e pontiagudos, delicado', 'Coral duro', 4),
(5, 'Coral-ancora', 'Euphyllia ancora', 'Tentáculos em forma de âncora, muito usado em aquários', 'Coral duro', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `recifes`
--

CREATE TABLE `recifes` (
  `RecifeID` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Localizacao` varchar(100) NOT NULL,
  `Ameacas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `recifes`
--

INSERT INTO `recifes` (`RecifeID`, `Nome`, `Descricao`, `Localizacao`, `Ameacas`) VALUES
(1, 'Recife de franja', 'Forma-se junto à costa', 'Caribe, Mar Vermelho, Pacífico Sul', 'Poluição, urbanização, turismo, pesca, clima'),
(2, 'Recife de barreira', 'Separado da costa por lagoa', 'Austrália, Belize, Nova Caledônia', 'Aquecimento, acidificação, ciclones, turismo, petróleo'),
(3, 'Atol', 'Recife circular em volta da lagoa', 'Maldivas, Ilhas Marshall, Kiribati, Polinésia Francesa', 'Elevação do mar, erosão, branqueamento'),


--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `corais`
--
ALTER TABLE `corais`
  ADD PRIMARY KEY (`CoraisID`),
  ADD KEY `fk_Corais_Recifes_idx` (`Recifes_RecifeID`);

--
-- Índices de tabela `recifes`
--
ALTER TABLE `recifes`
  ADD PRIMARY KEY (`RecifeID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `corais`
--
ALTER TABLE `corais`
  MODIFY `CoraisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `recifes`
--
ALTER TABLE `recifes`
  MODIFY `RecifeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
