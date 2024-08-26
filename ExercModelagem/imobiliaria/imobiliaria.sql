-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2024 às 17:00
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--
CREATE DATABASE IF NOT EXISTS `imobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `imobiliaria`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE `aluguel` (
  `codaluguel` int(11) NOT NULL,
  `datafim` date NOT NULL,
  `datainicio` date NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` float(7,2) NOT NULL,
  `vencimento` date NOT NULL,
  `idinquilino` int(11) DEFAULT NULL,
  `idcorretor` int(11) DEFAULT NULL,
  `idimovel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluguel`
--

INSERT INTO `aluguel` (`codaluguel`, `datafim`, `datainicio`, `descricao`, `valor`, `vencimento`, `idinquilino`, `idcorretor`, `idimovel`) VALUES
(1, '2024-12-31', '2024-01-01', 'Aluguel mensal de apartamento', 1200.00, '2024-05-05', 26, 6, 1),
(2, '2024-08-31', '2024-02-01', 'Aluguel de casa com piscina', 2500.00, '2024-10-10', 27, 7, 2),
(3, '2024-12-31', '2024-03-01', 'Aluguel de kitnet', 800.00, '0000-00-00', 28, 8, 3),
(4, '2024-07-14', '2024-01-15', 'Cobertura com vista para o mar', 3500.00, '0000-00-00', 29, 9, 4),
(5, '2025-03-31', '2024-04-01', 'Aluguel de chácara com amplo espaço', 3000.00, '0000-00-00', 30, 10, 5),
(6, '2024-11-30', '2024-05-01', 'Studio moderno e compacto', 950.00, '2024-10-10', 31, 11, 6),
(7, '2025-05-31', '2024-06-01', 'Sobrado com 7 cômodos', 4000.00, '2024-05-05', 32, 12, 7),
(8, '2024-12-31', '2024-07-01', 'Casa com 5 cômodos', 2000.00, '0000-00-00', 33, 13, 8),
(9, '2024-12-31', '2024-08-01', 'Apartamento compacto', 1100.00, '0000-00-00', 34, 14, 9),
(10, '2025-08-31', '2024-09-01', 'Flat com todos os serviços inclusos', 1800.00, '0000-00-00', 35, 15, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE `corretor` (
  `idcorretor` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `corretor`
--

INSERT INTO `corretor` (`idcorretor`, `email`, `telefone`, `nome`) VALUES
(6, 'jorge.souza@example.com', '11 98765-4321', 'Jorge Souza'),
(7, 'ana.santos@example.com', '21 99876-5432', 'Ana Santos'),
(8, 'carlos.pereira@example.com', '31 97654-3210', 'Carlos Pereira'),
(9, 'lucas.silva@example.com', '41 96543-2109', 'Lucas Silva'),
(10, 'maria.oliveira@example.com', '51 95432-1098', 'Maria Oliveira'),
(11, 'pedro.almeida@example.com', '61 94321-0987', 'Pedro Almeida'),
(12, 'beatriz.costa@example.com', '71 93210-9876', 'Beatriz Costa'),
(13, 'roberto.lima@example.com', '81 92109-8765', 'Roberto Lima'),
(14, 'fernanda.rocha@example.com', '91 91098-7654', 'Fernanda Rocha'),
(15, 'juliana.martins@example.com', '11 89987-6543', 'Juliana Martins');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `cep` varchar(255) NOT NULL,
  `numero` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idendereco`, `cidade`, `cep`, `numero`, `rua`, `bairro`, `complemento`, `estado`) VALUES
(16, 'São Paulo', '01000-000', 123, 'Rua A', 'Centro', 'Apto 101', 'SP'),
(17, 'Rio de Janeiro', '20000-000', 456, 'Avenida B', 'Copacabana', 'Sala 202', 'RJ'),
(18, 'Belo Horizonte', '30100-000', 789, 'Rua C', 'Savassi', 'Andar 3', 'MG'),
(19, 'Curitiba', '80000-000', 321, 'Rua D', 'Batel', 'Cobertura 4', 'PR'),
(20, 'Porto Alegre', '90000-000', 654, 'Avenida E', 'Moinhos de Vento', 'Loja 5', 'RS'),
(21, 'Salvador', '40000-000', 987, 'Rua F', 'Barra', 'Térreo', 'BA'),
(22, 'Fortaleza', '60000-000', 135, 'Avenida G', 'Aldeota', 'Apto 7', 'CE'),
(23, 'Recife', '50000-000', 246, 'Rua H', 'Boa Viagem', 'Conjunto 8', 'PE'),
(24, 'Brasília', '70000-000', 357, 'Avenida I', 'Asa Sul', 'Bloco B', 'DF'),
(25, 'Manaus', '69000-000', 468, 'Rua J', 'Centro', 'Sala 10', 'AM');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fiador`
--

CREATE TABLE `fiador` (
  `idfiador` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `idendereco` int(11) DEFAULT NULL,
  `idinquilino` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fiador`
--

INSERT INTO `fiador` (`idfiador`, `email`, `telefone`, `rg`, `cpf`, `nome`, `idendereco`, `idinquilino`) VALUES
(76, 'joao.silva@example.com', '11 98765-4321', '123456789', '123.456.789-05', 'João Silva', 16, 26),
(77, 'maria.oliveira@example.com', '21 99876-5432', '987654321', '987.654.321-05', 'Maria Oliveira', 17, 27),
(78, 'pedro.almeida@example.com', '31 97654-3210', '112233445', '321.654.987-05', 'Pedro Almeida', 18, 28),
(79, 'ana.santos@example.com', '41 96543-2109', '556677889', '654.321.987-05', 'Ana Santos', 19, 29),
(80, 'carlos.pereira@example.com', '51 95432-1098', '667788990', '987.321.654-05', 'Carlos Pereira', 20, 30),
(81, 'julia.martins@example.com', '61 94321-0987', '778899001', '321.987.654-09', 'Júlia Martins', 21, 31),
(82, 'beatriz.costa@example.com', '71 93210-9876', '889900112', '654.987.321-06', 'Beatriz Costa', 22, 32),
(83, 'ricardo.lima@example.com', '81 92109-8765', '990011223', '987.654.321-07', 'Ricardo Lima', 23, 33),
(84, 'mariana.rocha@example.com', '91 91098-7654', '100112233', '321.654.987-09', 'Mariana Rocha', 24, 34),
(85, 'tiago.fernandes@example.com', '11 89987-6543', '211223344', '654.987.321-09', 'Tiago Fernandes', 25, 35);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `idimovel` int(11) NOT NULL,
  `disponivel` bit(1) NOT NULL,
  `area` varchar(255) NOT NULL,
  `suite` bit(1) NOT NULL,
  `nbanheiros` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `garagem` bit(1) NOT NULL,
  `lavanderia` bit(1) NOT NULL,
  `piscina` bit(1) NOT NULL,
  `comodos` int(1) NOT NULL,
  `idmidida` int(11) DEFAULT NULL,
  `idproprietario` int(11) DEFAULT NULL,
  `idendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`idimovel`, `disponivel`, `area`, `suite`, `nbanheiros`, `tipo`, `garagem`, `lavanderia`, `piscina`, `comodos`, `idmidida`, `idproprietario`, `idendereco`) VALUES
(1, b'0', '1', b'1', 2, 'Apartamento', b'1', b'1', b'0', 4, 6, 26, 16),
(2, b'0', '1', b'1', 3, 'Casa', b'1', b'1', b'1', 6, 7, 27, 17),
(3, b'0', '1', b'0', 1, 'Kitnet', b'0', b'1', b'0', 2, 8, 28, 18),
(4, b'0', '1', b'1', 2, 'Cobertura', b'1', b'1', b'1', 4, 9, 29, 19),
(5, b'0', '1', b'1', 3, 'Chácara', b'1', b'1', b'1', 8, 10, 30, 20),
(6, b'0', '1', b'0', 1, 'Studio', b'0', b'0', b'0', 1, 11, 31, 21),
(7, b'0', '1', b'1', 4, 'Sobrado', b'1', b'1', b'1', 7, 12, 32, 22),
(8, b'0', '1', b'1', 3, 'Casa', b'1', b'1', b'0', 5, 13, 33, 23),
(9, b'0', '1', b'0', 2, 'Apartamento', b'1', b'1', b'0', 3, 14, 34, 24),
(10, b'0', '1', b'1', 2, 'Flat', b'1', b'1', b'1', 4, 15, 35, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE `inquilino` (
  `idinquilino` int(11) NOT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inquilino`
--

INSERT INTO `inquilino` (`idinquilino`, `rg`, `telefone`, `nome`, `email`, `cpf`) VALUES
(26, '123456789', '11 98765-4321', 'Maria Oliveira', 'maria.oliveira@example.com', '123.456.789-09'),
(27, '987654321', '21 99876-5432', 'Carlos Pereira', 'carlos.pereira@example.com', '987.654.321-05'),
(28, '112233445', '31 97654-3210', 'Fernanda Costa', 'fernanda.costa@example.com', '321.654.987-05'),
(29, '556677889', '41 96543-2109', 'Roberto Lima', 'roberto.lima@example.com', '654.321.987-05'),
(30, '667788990', '51 95432-1098', 'Beatriz Silva', 'beatriz.silva@example.com', '987.321.654-05'),
(31, '778899001', '61 94321-0987', 'Felipe Almeida', 'felipe.almeida@example.com', '321.987.654-05'),
(32, '889900112', '71 93210-9876', 'Juliana Santos', 'juliana.santos@example.com', '654.987.321-04'),
(33, '990011223', '81 92109-8765', 'Daniel Costa', 'daniel.costa@example.com', '987.654.321-00'),
(34, '100112233', '91 91098-7654', 'Isabela Silva', 'isabela.silva@example.com', '321.654.987-09'),
(35, '211223344', '11 89987-6543', 'Gabriel Santos', 'gabriel.santos@example.com', '654.987.321-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `midias`
--

CREATE TABLE `midias` (
  `idmidida` int(11) NOT NULL,
  `midia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `midias`
--

INSERT INTO `midias` (`idmidida`, `midia`) VALUES
(6, 'Livro'),
(7, 'Revista'),
(8, 'Jornal'),
(9, 'DVD'),
(10, 'CD'),
(11, 'Blu-ray'),
(12, 'Cassete'),
(13, 'Vinil'),
(14, 'E-book'),
(15, 'Podcast');

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE `proprietario` (
  `idproprietario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `pix` varchar(255) DEFAULT NULL,
  `banco` varchar(255) DEFAULT NULL,
  `agencia` varchar(255) NOT NULL,
  `idendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `proprietario`
--

INSERT INTO `proprietario` (`idproprietario`, `email`, `telefone`, `nome`, `pix`, `banco`, `agencia`, `idendereco`) VALUES
(26, 'joao.silva@example.com', '11 98765-4321', 'João Silva', 'pixjoao123', 'Banco do Brasil', '1234', 16),
(27, 'maria.oliveira@example.com', '21 99876-5432', 'Maria Oliveira', 'pixmaria456', 'Itaú', '5678', 17),
(28, 'pedro.almeida@example.com', '31 97654-3210', 'Pedro Almeida', 'pixpedro789', 'Santander', '9101', 18),
(29, 'ana.santos@example.com', '41 96543-2109', 'Ana Santos', 'pixana234', 'Caixa Econômica', '1122', 19),
(30, 'carlos.pereira@example.com', '51 95432-1098', 'Carlos Pereira', 'pixcarlos567', 'Bradesco', '3344', 20),
(31, 'julia.martins@example.com', '61 94321-0987', 'Júlia Martins', 'pixjulia678', 'HSBC', '5566', 21),
(32, 'beatriz.costa@example.com', '71 93210-9876', 'Beatriz Costa', 'pixbeatriz789', 'Banrisul', '7788', 22),
(33, 'ricardo.lima@example.com', '81 92109-8765', 'Ricardo Lima', 'pixricardo890', 'Sicredi', '9900', 23),
(34, 'mariana.rocha@example.com', '91 91098-7654', 'Mariana Rocha', 'pixmariana901', 'Banco do Nordeste', '1234', 24),
(35, 'tiago.fernandes@example.com', '11 89987-6543', 'Tiago Fernandes', 'pixtiago012', 'Banco da Amazônia', '5678', 25);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD PRIMARY KEY (`codaluguel`),
  ADD KEY `idinquilino` (`idinquilino`),
  ADD KEY `idcorretor` (`idcorretor`),
  ADD KEY `idimovel` (`idimovel`);

--
-- Índices para tabela `corretor`
--
ALTER TABLE `corretor`
  ADD PRIMARY KEY (`idcorretor`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco`),
  ADD UNIQUE KEY `cep` (`cep`);

--
-- Índices para tabela `fiador`
--
ALTER TABLE `fiador`
  ADD PRIMARY KEY (`idfiador`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`),
  ADD KEY `idendereco` (`idendereco`),
  ADD KEY `idinquilino` (`idinquilino`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`idimovel`),
  ADD KEY `idproprietario` (`idproprietario`),
  ADD KEY `idendereco` (`idendereco`),
  ADD KEY `idmidida` (`idmidida`);

--
-- Índices para tabela `inquilino`
--
ALTER TABLE `inquilino`
  ADD PRIMARY KEY (`idinquilino`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `rg` (`rg`);

--
-- Índices para tabela `midias`
--
ALTER TABLE `midias`
  ADD PRIMARY KEY (`idmidida`);

--
-- Índices para tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD PRIMARY KEY (`idproprietario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `pix` (`pix`),
  ADD KEY `idendereco` (`idendereco`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluguel`
--
ALTER TABLE `aluguel`
  MODIFY `codaluguel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `corretor`
--
ALTER TABLE `corretor`
  MODIFY `idcorretor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `fiador`
--
ALTER TABLE `fiador`
  MODIFY `idfiador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `imovel`
--
ALTER TABLE `imovel`
  MODIFY `idimovel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `inquilino`
--
ALTER TABLE `inquilino`
  MODIFY `idinquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `midias`
--
ALTER TABLE `midias`
  MODIFY `idmidida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `proprietario`
--
ALTER TABLE `proprietario`
  MODIFY `idproprietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `aluguel_ibfk_1` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`),
  ADD CONSTRAINT `aluguel_ibfk_2` FOREIGN KEY (`idcorretor`) REFERENCES `corretor` (`idcorretor`),
  ADD CONSTRAINT `aluguel_ibfk_3` FOREIGN KEY (`idimovel`) REFERENCES `imovel` (`idimovel`);

--
-- Limitadores para a tabela `fiador`
--
ALTER TABLE `fiador`
  ADD CONSTRAINT `fiador_ibfk_1` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`idendereco`),
  ADD CONSTRAINT `fiador_ibfk_2` FOREIGN KEY (`idinquilino`) REFERENCES `inquilino` (`idinquilino`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `imovel_ibfk_1` FOREIGN KEY (`idproprietario`) REFERENCES `proprietario` (`idproprietario`),
  ADD CONSTRAINT `imovel_ibfk_2` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`idendereco`),
  ADD CONSTRAINT `imovel_ibfk_3` FOREIGN KEY (`idmidida`) REFERENCES `midias` (`idmidida`);

--
-- Limitadores para a tabela `proprietario`
--
ALTER TABLE `proprietario`
  ADD CONSTRAINT `proprietario_ibfk_1` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`idendereco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
