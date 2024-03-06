SELECT Passageiro.Nome, Voo.IDVoo
FROM Passageiro
JOIN Embarca ON Passageiro.CPF = Embarca.CPF
JOIN Voo ON Embarca.IDVoo = Voo.IDVoo;