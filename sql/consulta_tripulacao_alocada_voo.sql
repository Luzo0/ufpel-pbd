SELECT Tripulação.Nome, Tripulação.Função, Voo.IDVoo
FROM Tripulação
JOIN AlocaTripulação ON Tripulação.IDTripulante = AlocaTripulação.IDTripulante
JOIN Voo ON AlocaTripulação.IDVoo = Voo.IDVoo
WHERE Voo.IDVoo = 1;
