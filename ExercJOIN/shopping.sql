-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Set-2024 às 14:03
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `andar`
--

CREATE TABLE `andar` (
  `codLugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `andar`
--

INSERT INTO `andar` (`codLugar`, `capacidade`, `andar`) VALUES
(1, 25, '1'),
(2, 30, '2'),
(3, 15, '3'),
(4, 22, '4'),
(5, 40, '1'),
(6, 10, '2'),
(7, 35, '3'),
(8, 20, '4'),
(9, 28, '1'),
(10, 45, '2'),
(11, 18, '3'),
(12, 25, '4'),
(13, 32, '1'),
(14, 12, '2'),
(15, 50, '3'),
(16, 17, '4'),
(17, 23, '1'),
(18, 39, '2'),
(19, 14, '3'),
(20, 27, '4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` varchar(15) NOT NULL,
  `nasc` date DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nasc`, `nome`) VALUES
('012.345.678-11', '1991-08-20', 'Gustavo Martins'),
('012.345.678-90', '1993-10-05', 'Thiago Fernandes'),
('123.456.789-01', '1985-03-12', 'Ana Silva'),
('123.456.789-10', '1984-01-18', 'Vanessa Rodrigues'),
('123.456.789-22', '1997-10-02', 'Heloísa Costa'),
('234.567.890-12', '1990-07-22', 'Carlos Oliveira'),
('234.567.890-21', '1996-05-29', 'Wagner Costa'),
('345.678.901-23', '1982-11-30', 'Fernanda Costa'),
('345.678.901-32', '1981-07-14', 'Yara Oliveira'),
('456.789.012-34', '1978-09-15', 'João Santos'),
('456.789.012-43', '1999-03-07', 'Zé Paulo Silva'),
('567.890.123-45', '1995-02-05', 'Juliana Pereira'),
('567.890.123-54', '1986-11-21', 'André Rodrigues'),
('678.901.234-56', '1988-12-17', 'Lucas Almeida'),
('678.901.234-65', '1989-04-17', 'Beatriz Almeida'),
('789.012.345-67', '1992-06-28', 'Mariana Lima'),
('789.012.345-76', '1994-12-01', 'Cláudia Santos'),
('890.123.456-78', '1975-08-10', 'Pedro Martins'),
('890.123.456-87', '1983-09-09', 'Eduardo Pereira'),
('901.234.567-89', '1987-04-23', 'Roberta Souza'),
('901.234.567-98', '1980-06-26', 'Fabiola Lima');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `cod` int(11) NOT NULL,
  `horSaida` time DEFAULT NULL,
  `dtEntrada` date DEFAULT NULL,
  `horEntrada` time DEFAULT NULL,
  `dtSaida` date DEFAULT NULL,
  `placa` int(11) DEFAULT NULL,
  `codLugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codModelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codModelo`, `modelo`) VALUES
(1, 'Fusca Classic'),
(2, 'Civic EX'),
(3, 'Corolla XEI'),
(4, 'Onix LT'),
(5, 'Fiesta Titanium'),
(6, 'Renegade Sport'),
(7, 'S10 LTZ'),
(8, 'A3 Sedan'),
(9, 'Jetta GLI'),
(10, 'Kicks SV'),
(11, 'HR-V EX'),
(12, 'Strada Freedom'),
(13, 'Compass Limited'),
(14, 'Taurus SEL'),
(15, 'CR-V LX'),
(16, 'Hilux SRX'),
(17, 'Pálio Sporting'),
(18, 'Cherokee Trailhawk'),
(19, 'EcoSport Titanium'),
(20, 'C4 Cactus Feel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` int(11) NOT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `codModelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `cor`, `cpf`, `codModelo`) VALUES
(1, 'Preto', '123.456.789-01', 1),
(2, 'Branco', '234.567.890-12', 2),
(3, 'Prata', '345.678.901-23', 3),
(4, 'Azul', '456.789.012-34', 4),
(5, 'Vermelho', '567.890.123-45', 5),
(6, 'Cinza', '678.901.234-56', 6),
(7, 'Verde', '789.012.345-67', 7),
(8, 'Amarelo', '890.123.456-78', 8),
(9, 'Laranja', '901.234.567-89', 9),
(10, 'Roxo', '012.345.678-90', 10),
(11, 'Bege', '123.456.789-10', 11),
(12, 'Marrom', '234.567.890-21', 12),
(13, 'Rosa', '345.678.901-32', 13),
(14, 'Prata', '456.789.012-43', 14),
(15, 'Preto', '567.890.123-54', 15),
(16, 'Branco', '678.901.234-65', 16),
(17, 'Azul', '789.012.345-76', 17),
(18, 'Vermelho', '890.123.456-87', 18),
(19, 'Cinza', '901.234.567-98', 19),
(20, 'Verde', '012.345.678-11', 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codLugar`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`);

--
-- Índices para tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `placa` (`placa`),
  ADD KEY `codAlugar` (`codLugar`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codModelo`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`),
  ADD KEY `codModelo` (`codModelo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `placa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codLugar`) REFERENCES `andar` (`codLugar`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codModelo`) REFERENCES `modelo` (`codModelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
