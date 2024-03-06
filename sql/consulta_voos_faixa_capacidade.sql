SELECT Voo.IDVoo, Aeronave.Modelo, Aeronave.Capacidade
FROM Voo
JOIN Aeronave ON Voo.IDAeronave = Aeronave.IDAeronave
WHERE Aeronave.Capacidade BETWEEN 100 AND 200;
