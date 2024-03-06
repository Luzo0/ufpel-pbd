SELECT Rota.Origem, Rota.Destino, Aeronave.Modelo
FROM Rota
JOIN Voo ON Rota.IDRota = Voo.IDRota
JOIN Aeronave ON Voo.IDAeronave = Aeronave.IDAeronave
WHERE Aeronave.Status = 'Ativo';