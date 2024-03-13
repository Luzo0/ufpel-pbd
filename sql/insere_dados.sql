-- Inserção de dados na tabela Aeronave
INSERT INTO Aeronave (Modelo, Capacidade, Status) VALUES 
('Boeing 777', 396, 'Ativo'),
('Airbus A320', 160, 'Ativo'),
('Embraer E195', 120, 'Manutenção'),
('Boeing 787', 242, 'Ativo'),
('Airbus A380', 853, 'Ativo'),
('Boeing 737', 188, 'Manutenção');

-- Inserção de dados na tabela Rota
INSERT INTO Rota (Origem, Destino, Altitude) VALUES 
('São Paulo', 'Rio de Janeiro', 30000),
('São Paulo', 'Belo Horizonte', 28000),
('Curitiba', 'Porto Alegre', 29000),
('Rio de Janeiro', 'São Paulo', 31000),
('Brasília', 'Salvador', 35000),
('Porto Alegre', 'Florianópolis', 25000);

-- Inserção de dados na tabela Voo
INSERT INTO Voo (Horario, Data, Status, IDAeronave, IDRota) VALUES 
('2023-03-15 08:00:00', '2023-03-15', 'Confirmado', 1, 1),
('2023-03-16 09:30:00', '2023-03-16', 'Confirmado', 2, 2),
('2023-03-17 14:00:00', '2023-03-17', 'Atrasado', 3, 3),
('2023-03-18 07:30:00', '2023-03-18', 'Confirmado', 4, 4),
('2023-03-19 10:45:00', '2023-03-19', 'Confirmado', 5, 5),
('2023-03-20 16:15:00', '2023-03-20', 'Cancelado', 6, 6);

-- Inserção de dados na tabela Tripulação
INSERT INTO Tripulação (Nome, Função) VALUES 
('João Silva', 'Piloto'),
('Maria Oliveira', 'Copiloto'),
('Carlos Souza', 'Comissário'),
('Roberto Nunes', 'Piloto'),
('Fernanda Lima', 'Copiloto'),
('Lucas Andrade', 'Comissário'),
('Ana Beatriz', 'Comissário'),
('Rafael Martins', 'Comissário'),
('Sofia Gonçalves', 'Piloto'),
('Luciano Rocha', 'Copiloto');

-- Inserção de dados na tabela Passageiro
INSERT INTO Passageiro (CPF, Nome, Contato, Email, DataNascimento) VALUES 
('12345678901', 'Luiz Alves', '11999887766', 'luiz.alves@example.com', '1985-04-12'),
('98765432109', 'Ricardo Silva', '21987654321', 'ricardo.silva@example.com', '1992-07-25'),
('55566677788', 'Mariana Costa', '21987654321', 'mariana.costa@example.com', '1995-08-20'),
('11122233344', 'Pedro Alves', '11987654321', 'pedro.alves@example.com', '1998-12-15'),
('44455566677', 'Juliana Moraes', '21987654323', 'juliana.moraes@example.com', '1996-03-05'),
('66677788899', 'Fernanda Lima', '21987654324', 'fernanda.lima@example.com', '1989-05-21'),
('77788899900', 'Gabriel Souza', '11987654324', 'gabriel.souza@example.com', '1991-02-11'),
('88899900011', 'Beatriz Gonçalves', '21987654325', 'beatriz.goncalves@example.com', '1993-08-30'),
('99900011122', 'Carlos Eduardo', '11987654325', 'carlos.eduardo@example.com', '1986-11-16');

-- Inserção de dados na tabela Reserva
INSERT INTO Reserva (Dados, Status, IDVoo, CPF) VALUES 
('Assento 21B', 'Confirmada', 1, '12345678901'),
('Assento 30A', 'Confirmada', 2, '98765432109'),
('Assento 14C', 'Confirmada', 4, '55566677788'),
('Assento 22D', 'Confirmada', 5, '11122233344'),
('Assento 3A', 'Confirmada', 1, '44455566677'),
('Assento 5C', 'Confirmada', 2, '66677788899'),
('Assento 6D', 'Confirmada', 2, '77788899900'),
('Assento 7E', 'Confirmada', 3, '88899900011'),
('Assento 8F', 'Confirmada', 3, '99900011122'),
('Assento 9G', 'Confirmada', 4, '44455566677'),
('Assento 11I', 'Confirmada', 5, '66677788899'),
('Assento 12J', 'Confirmada', 5, '77788899900'),
('Assento 13K', 'Confirmada', 6, '88899900011'),
('Assento 14L', 'Confirmada', 6, '99900011122');

-- Inserção de dados na tabela Embarca
INSERT INTO Embarca (IDVoo, CPF) VALUES 
(1, '12345678901'),
(2, '98765432109'),
(4, '55566677788'),
(5, '11122233344'),
(1, '44455566677'),
(2, '66677788899'),
(2, '77788899900'),
(3, '88899900011'),
(3, '99900011122'),
(4, '44455566677'),
(5, '66677788899'),
(5, '77788899900'),
(6, '88899900011'),
(6, '99900011122');

-- Inserção de dados na tabela AlocaTripulação
INSERT INTO AlocaTripulação (IDVoo, IDTripulante) VALUES 
(1, 1),
(2, 2),
(4, 4),
(5, 5),
(1, 7), 
(1, 8), 
(2, 7), 
(2, 8), 
(3, 5), 
(3, 6), 
(4, 5), 
(4, 6), 
(5, 7), 
(5, 8);
