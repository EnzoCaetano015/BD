-- Geração de Modelo físico
-- SQL ANSI 2003 - brModelo.

CREATE DATABASE vet;

USE vet;

CREATE TABLE Animal (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Raca VARCHAR(255),
    Vacinas VARCHAR(255),
    Doencas VARCHAR(255),
    DataNasc DATE,
    Tipo VARCHAR(255),
    Nome VARCHAR(255)
);

CREATE TABLE Consulta (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Data DATE,
    Especialista VARCHAR(255),
    Motivo VARCHAR(255),
    AnimalID INT,
    FOREIGN KEY(AnimalID) REFERENCES Animal(ID)
);

CREATE TABLE Dono (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Rua VARCHAR(255),
    Email VARCHAR(255),
    Complemento VARCHAR(255),
    Telefone INT,
    Numero INT,
    Nome VARCHAR(255),
    Bairro VARCHAR(255),
    DataNasc DATE,
    CEP INT
);

CREATE TABLE Veterinario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Numero INT,
    Bairro VARCHAR(255),
    Rua VARCHAR(255),
    Email VARCHAR(255),
    Complemento VARCHAR(255),
    Nome VARCHAR(255),
    CEP INT,
    Telefone INT,
    DataNasc DATE
);

ALTER TABLE Consulta ADD FOREIGN KEY(AnimalID) REFERENCES Animal(ID);
