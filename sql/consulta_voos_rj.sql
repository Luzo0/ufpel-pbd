SELECT Voo.IDVoo, Aeronave.Modelo, Rota.Destino
FROM Voo
JOIN Aeronave ON Voo.IDAeronave = Aeronave.IDAeronave
JOIN Rota ON Voo.IDRota = Rota.IDRota
WHERE Rota.Destino = 'Rio de Janeiro';