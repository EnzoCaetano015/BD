-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE sistemaproducao;

USE sistemaproducao;

CREATE TABLE Departamento (
CodDepart int PRIMARY KEY AUTO_INCREMENT,
CodEmpr int
);

CREATE TABLE Empregado (
CodEmpr int PRIMARY KEY AUTO_INCREMENT,
Nome varchar(255),
Email varchar(255),
Rua varchar(255),
Complemento varchar(255),
CarteiradeTrabalho int,
Bairro varchar(255),
CEP int,
DataNasc int,
CodProdut int
);

CREATE TABLE Produto (
CodProdut int PRIMARY KEY AUTO_INCREMENT,
Preço float,
Peso float,
Tipo Texto(1)
);

CREATE TABLE Estoque (
CodEstoque int PRIMARY KEY AUTO_INCREMENT,
QuantidadedeProduto int,
Produto varchar(255),
CodProdut int,
FOREIGN KEY(CodProdut) REFERENCES Produto (CodProdut)
);

ALTER TABLE Departamento ADD FOREIGN KEY(CodEmpr) REFERENCES Empregado (CodEmpr);
ALTER TABLE Empregado ADD FOREIGN KEY(CodProdut) REFERENCES Produto (CodProdut);
