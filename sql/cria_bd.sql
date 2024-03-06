CREATE DATABASE IF NOT EXISTS SistemaReservas;
USE SistemaReservas;

CREATE TABLE Aeronave (
    IDAeronave INT AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(255),
    Capacidade INT,
    Status VARCHAR(50)
);

CREATE TABLE Rota (
    IDRota INT AUTO_INCREMENT PRIMARY KEY,
    Origem VARCHAR(255),
    Destino VARCHAR(255),
    Altitude FLOAT
);

CREATE TABLE Voo (
    IDVoo INT AUTO_INCREMENT PRIMARY KEY,
    Horario TIMESTAMP,
    Data DATE,
    Status VARCHAR(50),
    IDAeronave INT,
    IDRota INT,
    FOREIGN KEY (IDAeronave) REFERENCES Aeronave(IDAeronave),
    FOREIGN KEY (IDRota) REFERENCES Rota(IDRota)
);

CREATE TABLE Tripulação (
    IDTripulante INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Função VARCHAR(100)
);

CREATE TABLE Passageiro (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(255),
    Contato VARCHAR(255),
    Email VARCHAR(255),
    DataNascimento DATE
);

CREATE TABLE Reserva (
    IDReserva INT AUTO_INCREMENT PRIMARY KEY,
    Dados VARCHAR(255),
    Status VARCHAR(50),
    IDVoo INT,
    CPF VARCHAR(11),
    FOREIGN KEY (IDVoo) REFERENCES Voo(IDVoo),
    FOREIGN KEY (CPF) REFERENCES Passageiro(CPF)
);

CREATE TABLE Embarca (
    IDVoo INT,
    CPF VARCHAR(11),
    PRIMARY KEY (IDVoo, CPF),
    FOREIGN KEY (IDVoo) REFERENCES Voo(IDVoo),
    FOREIGN KEY (CPF) REFERENCES Passageiro(CPF)
);

CREATE TABLE AlocaTripulação (
    IDVoo INT,
    IDTripulante INT,
    PRIMARY KEY (IDVoo, IDTripulante),
    FOREIGN KEY (IDVoo) REFERENCES Voo(IDVoo),
    FOREIGN KEY (IDTripulante) REFERENCES Tripulação(IDTripulante)
);
