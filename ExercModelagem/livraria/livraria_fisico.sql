-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE livraria;

USE livraria;

CREATE TABLE Livro (
Id int PRIMARY KEY AUTO_INCREMENT,
dataPubli int,L
numeroPag int,
categoria varchar(255),
nome varchar(255),
autor varchar(255)
);

CREATE TABLE Editora (
Id int PRIMARY KEY AUTO_INCREMENT,
numeroTel int,
Preços float,
email varchar(255),
Livros varchar(255),
UF varchar(255),
bairro varchar(255),
Cidade varchar(255),
rua int,
CEP int,
autores varchar(255),
numero int,
pedidos int,
-- Erro: nome do campo duplicado nesta tabela!
Id int,
FOREIGN KEY(Id) REFERENCES Livro (Id)
);

CREATE TABLE Cliente (
Id int PRIMARY KEY AUTO_INCREMENT,
UF varchar(255),
Rua varchar(255),
cidade varchar(255),
numTel int,
DataNasc int,
nome varchar(255),
email varchar(255),
Cep int,
Bairro varchar(255),
numero Texto(1),
-- Erro: nome do campo duplicado nesta tabela!
Id int
);

CREATE TABLE Pedido (
DataEntrega int,
Id int PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Autor (
Id int PRIMARY KEY AUTO_INCREMENT,
email varchar(255),
rua varchar(255),
UF varchar(255),
cidade varchar(255),
numero int,
numeroTel int,
nome varchar(255),
Bairro varchar(255),
-- Erro: nome do campo duplicado nesta tabela!
Id int,
FOREIGN KEY(Id) REFERENCES Livro (Id)
);

CREATE TABLE Recebe (
Id int,
-- Erro: nome do campo duplicado nesta tabela!
Id int,
FOREIGN KEY(Id) REFERENCES Editora (Id),
FOREIGN KEY(Id) REFERENCES Pedido (Id)
);

ALTER TABLE Cliente ADD FOREIGN KEY(Id) REFERENCES Pedido (Id);
