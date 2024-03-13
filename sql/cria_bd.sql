CREATE DATABASE IF NOT EXISTS SistemaReservas;
USE SistemaReservas;

-- Tabela de Aeronaves
CREATE TABLE Aeronave (
    IDAeronave INT AUTO_INCREMENT PRIMARY KEY,
    Modelo VARCHAR(255),
    Capacidade INT CHECK (Capacidade > 0), -- Garante que a capacidade seja positiva
    Status VARCHAR(50) CHECK (Status IN ('Ativo', 'Manutenção', 'Inativo')) -- Valida os possíveis status da aeronave
);

-- Tabela de Rotas
CREATE TABLE Rota (
    IDRota INT AUTO_INCREMENT PRIMARY KEY,
    Origem VARCHAR(255),
    Destino VARCHAR(255),
    Altitude FLOAT CHECK (Altitude > 0) -- Garante que a altitude seja positiva
);

-- Tabela de Voos
CREATE TABLE Voo (
    IDVoo INT AUTO_INCREMENT PRIMARY KEY,
    Horario TIMESTAMP,
    Data DATE,
    Status VARCHAR(50) CHECK (Status IN ('Confirmado', 'Cancelado', 'Concluído', 'Atrasado')), -- Valida os possíveis status do voo
    IDAeronave INT,
    IDRota INT,
    FOREIGN KEY (IDAeronave) REFERENCES Aeronave(IDAeronave) ON DELETE RESTRICT,
    FOREIGN KEY (IDRota) REFERENCES Rota(IDRota) ON DELETE RESTRICT
);

-- Tabela de Tripulação
CREATE TABLE Tripulação (
    IDTripulante INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255),
    Função VARCHAR(100) CHECK (Função IN ('Piloto', 'Copiloto', 'Comissário')) -- Restringe as funções na tripulação
);

-- Tabela de Passageiros
CREATE TABLE Passageiro (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(255),
    Contato VARCHAR(255), -- Pode adicionar restrições de formato com uma expressão regular, se o sistema gerenciar essa validação.
    Email VARCHAR(255), -- Pode adicionar restrições de formato com uma expressão regular, se o sistema gerenciar essa validação.
    DataNascimento DATE
);

-- Tabela de Reservas
CREATE TABLE Reserva (
    IDReserva INT AUTO_INCREMENT PRIMARY KEY,
    Dados VARCHAR(255),
    Status VARCHAR(50) CHECK (Status IN ('Confirmada', 'Cancelada', 'Pendente')), -- Valida os possíveis status da reserva
    IDVoo INT,
    CPF VARCHAR(11),
    FOREIGN KEY (IDVoo) REFERENCES Voo(IDVoo) ON DELETE RESTRICT,
    FOREIGN KEY (CPF) REFERENCES Passageiro(CPF) ON DELETE RESTRICT,
    UNIQUE (IDVoo, CPF) -- Garante que a reserva seja única para cada combinação de voo e passageiro
);

-- Tabela de Embarque
CREATE TABLE Embarca (
    IDVoo INT,
    CPF VARCHAR(11),
    PRIMARY KEY (IDVoo, CPF),
    FOREIGN KEY (IDVoo) REFERENCES Voo(IDVoo) ON DELETE CASCADE,
    FOREIGN KEY (CPF) REFERENCES Passageiro(CPF) ON DELETE CASCADE
);

-- Tabela de Alocação de Tripulação
CREATE TABLE AlocaTripulação (
    IDVoo INT,
    IDTripulante INT,
    PRIMARY KEY (IDVoo, IDTripulante),
    FOREIGN KEY (IDVoo) REFERENCES Voo(IDVoo) ON DELETE CASCADE,
    FOREIGN KEY (IDTripulante) REFERENCES Tripulação(IDTripulante) ON DELETE CASCADE
);
