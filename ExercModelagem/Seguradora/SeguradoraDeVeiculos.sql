-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/06/2024 às 03:16
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `seguradoradeveiculos`
--
CREATE DATABASE IF NOT EXISTS `seguradoradeveiculos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `seguradoradeveiculos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `carro`
--

CREATE TABLE `carro` (
  `codCarro` int(11) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `chassi` varchar(10) DEFAULT NULL,
  `placa` varchar(10) NOT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `porte` varchar(20) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `carro`
--

INSERT INTO `carro` (`codCarro`, `marca`, `modelo`, `chassi`, `placa`, `cor`, `porte`, `codCliente`) VALUES
(2, 'Audi', 'A4', NULL, '421XY02', 'branca', NULL, 2),
(3, 'Mercedes', 'C300', NULL, '330XY03', 'cinza', NULL, 3),
(4, 'Toyota', 'Corolla', NULL, '112XY04', 'azul', NULL, 4),
(5, 'Honda', 'Civic', NULL, '554XY05', 'vermelha', NULL, 5),
(6, 'Ford', 'Mustang', NULL, '775XY06', 'amarela', NULL, 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codCliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dataNasc` date NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `rg` varchar(15) NOT NULL,
  `rua` varchar(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `compl` varchar(30) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codCliente`, `nome`, `dataNasc`, `telefone`, `email`, `cpf`, `rg`, `rua`, `num`, `compl`, `estado`, `bairro`, `cidade`, `cep`) VALUES
(2, 'Laura Martins', '2008-05-17', '54322-4322', 'lauramartins@email', '469.067.584-66', '64.244.864-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Gabriel Lima', '2006-03-12', '54323-4323', 'gabriellima@email', '469.067.584-67', '64.244.864-6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Isabella Souza', '2007-07-28', '54324-4324', 'isabellasouza@email', '469.067.584-68', '64.244.864-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Mateus Rocha', '2006-09-04', '54325-4325', 'mateusrocha@email', '469.067.584-69', '64.244.864-8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Sophia Almeida', '2008-01-19', '54326-4326', 'sophiaalmeida@email', '469.067.584-70', '64.244.864-9', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE `ocorrencia` (
  `codOcorrencia` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `codTipo` varchar(10) DEFAULT NULL,
  `descricao` varchar(225) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `codCarro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ocorrencia`
--

INSERT INTO `ocorrencia` (`codOcorrencia`, `data`, `hora`, `codTipo`, `descricao`, `bairro`, `rua`, `cidade`, `codCarro`) VALUES
(59, '2020-01-15', '09:30:00', 'A456', 'Colisão grave em cruzamento', 'Centro', 'Av. Paulista', 'São Paulo', 2),
(60, '2021-03-22', '14:45:00', 'C789', 'Colisão frontal em alta velocidade', 'Jardim das Flores', 'Rua das Acácias', 'Rio de Janeiro', 3),
(61, '2022-06-10', '08:20:00', 'D012', 'Capotamento em curva acentuada', 'Alphaville', 'Alameda Rio Negro', 'Barueri', 4),
(62, '2018-11-05', '18:15:00', 'E345', 'Atropelamento de pedestre na faixa', 'Bela Vista', 'Rua Augusta', 'São Paulo', 5),
(63, '2019-12-27', '12:00:00', 'F678', 'Engavetamento envolvendo três veículos', 'Vila Mariana', 'Rua Vergueiro', 'São Paulo', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo`
--

CREATE TABLE `tipo` (
  `codTipo` varchar(10) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipo`
--

INSERT INTO `tipo` (`codTipo`, `tipo`) VALUES
('A456', 'Batida Grave'),
('C789', 'Colisão Frontal'),
('D012', 'Capotamento'),
('E345', 'Atropelamento'),
('F678', 'Engavetamento');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codCarro`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD KEY `codCliente` (`codCliente`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codCliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- Índices de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD PRIMARY KEY (`codOcorrencia`),
  ADD KEY `codCarro` (`codCarro`),
  ADD KEY `codTipo` (`codTipo`);

--
-- Índices de tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`codTipo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codCarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `ocorrencia`
--
ALTER TABLE `ocorrencia`
  MODIFY `codOcorrencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`codCliente`);

--
-- Restrições para tabelas `ocorrencia`
--
ALTER TABLE `ocorrencia`
  ADD CONSTRAINT `ocorrencia_ibfk_1` FOREIGN KEY (`codCarro`) REFERENCES `carro` (`codCarro`),
  ADD CONSTRAINT `ocorrencia_ibfk_2` FOREIGN KEY (`codTipo`) REFERENCES `tipo` (`codTipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
