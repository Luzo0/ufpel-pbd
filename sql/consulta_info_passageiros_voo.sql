SELECT Reserva.IDReserva, Passageiro.*, Voo.IDVoo
FROM Reserva
JOIN Passageiro ON Reserva.CPF = Passageiro.CPF
JOIN Voo ON Reserva.IDVoo = Voo.IDVoo
WHERE Voo.IDVoo = 2;
