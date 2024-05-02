-- Geração de Modelo físico
-- SQL ANSI 2003 - brModelo.

CREATE DATABASE banco;

USE banco;

CREATE TABLE Agencia (
    CodAgencia INT PRIMARY KEY AUTO_INCREMENT,
    Complemento VARCHAR(255),
    Bairro VARCHAR(255),
    UF VARCHAR(255),
    Telefone INT,
    Rua VARCHAR(255)
);

CREATE TABLE ContaCorrente (
    CodCorrente INT AUTO_INCREMENT,
    CodCliente INT,
    Rua INT,
    Bairro VARCHAR(255),
    UF VARCHAR(255),
    Complemento VARCHAR(255),
    RG VARCHAR(255),
    Profissao VARCHAR(255),
    Renda FLOAT,
    Email VARCHAR(255),
    Telefone INT,
    Nome VARCHAR(255),
    CPF INT,
    CodAgencia INT,
    PRIMARY KEY (CodCorrente),
    FOREIGN KEY (CodAgencia) REFERENCES Agencia(CodAgencia)
);

CREATE TABLE ContaPoupanca (
    CodPoupanca INT AUTO_INCREMENT,
    CodCliente INT,
    Rua INT,
    Bairro VARCHAR(255),
    UF VARCHAR(255),
    Complemento VARCHAR(255),
    RG VARCHAR(255),
    Profissao VARCHAR(255),
    Renda FLOAT,
    Email VARCHAR(255),
    Telefone INT,
    Nome VARCHAR(255),
    CPF INT,
    CodAgencia INT,
    PRIMARY KEY (CodPoupanca),
    FOREIGN KEY (CodAgencia) REFERENCES Agencia(CodAgencia)
);
