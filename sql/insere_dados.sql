-- Inserção de dados na tabela Aeronave
INSERT INTO Aeronave (Modelo, Capacidade, Status) VALUES 
('Boeing 777', 396, 'Ativo'),
('Airbus A320', 160, 'Ativo'),
('Embraer E195', 120, 'Manutenção');

-- Inserção de dados na tabela Rota
INSERT INTO Rota (Origem, Destino, Altitude) VALUES 
('São Paulo', 'Rio de Janeiro', 30000),
('São Paulo', 'Belo Horizonte', 28000),
('Curitiba', 'Porto Alegre', 29000);

-- Inserção de dados na tabela Voo
INSERT INTO Voo (Horario, Data, Status, IDAeronave, IDRota) VALUES 
('2023-03-15 08:00:00', '2023-03-15', 'Confirmado', 1, 1),
('2023-03-16 09:30:00', '2023-03-16', 'Confirmado', 2, 2),
('2023-03-17 14:00:00', '2023-03-17', 'Atrasado', 3, 3);

-- Inserção de dados na tabela Tripulação
INSERT INTO Tripulação (Nome, Função) VALUES 
('João Silva', 'Piloto'),
('Maria Oliveira', 'Copiloto'),
('Carlos Souza', 'Comissário');

-- Inserção de dados na tabela Passageiro
INSERT INTO Passageiro (CPF, Nome, Contato, Email, DataNascimento) VALUES 
('12345678901', 'Luiz Alves', '11999887766', 'luiz.alves@example.com', '1985-04-12'),
('98765432109', 'Ana Maria', '21987654321', 'ana.maria@example.com', '1992-07-25');

-- Inserção de dados na tabela Reserva
INSERT INTO Reserva (Dados, Status, IDVoo, CPF) VALUES 
('Assento 21B', 'Confirmada', 1, '12345678901'),
('Assento 30A', 'Confirmada', 2, '98765432109');

-- Inserção de dados na tabela Embarca
INSERT INTO Embarca (IDVoo, CPF) VALUES 
(1, '12345678901'),
(2, '98765432109');

-- Inserção de dados na tabela AlocaTripulação
INSERT INTO AlocaTripulação (IDVoo, IDTripulante) VALUES 
(1, 1),
(2, 2);