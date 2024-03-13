SELECT
  Voo.IDVoo,
  Voo.Data,
  Voo.Horario,
  Aeronave.Modelo AS ModeloAeronave,
  Rota.Origem,
  Rota.Destino,
  COUNT(DISTINCT Reserva.CPF) AS NumeroPassageiros,
  GROUP_CONCAT(DISTINCT Passageiro.Nome SEPARATOR ', ') AS NomePassageiros,
  GROUP_CONCAT(DISTINCT Tripulação.Nome SEPARATOR ', ') AS NomeTripulantes,
  GROUP_CONCAT(DISTINCT Tripulação.Função SEPARATOR ', ') AS FuncaoTripulantes
FROM
  Voo
JOIN Aeronave ON Voo.IDAeronave = Aeronave.IDAeronave
JOIN Rota ON Voo.IDRota = Rota.IDRota
LEFT JOIN Reserva ON Voo.IDVoo = Reserva.IDVoo
LEFT JOIN Embarca ON Voo.IDVoo = Embarca.IDVoo
LEFT JOIN Passageiro ON Embarca.CPF = Passageiro.CPF
LEFT JOIN AlocaTripulação ON Voo.IDVoo = AlocaTripulação.IDVoo
LEFT JOIN Tripulação ON AlocaTripulação.IDTripulante = Tripulação.IDTripulante
WHERE Voo.Status = 'Confirmado' AND Rota.Destino = 'Rio de Janeiro' AND Voo.Data >= '2023-03-15'
GROUP BY Voo.IDVoo
ORDER BY Voo.Data, Voo.Horario;
