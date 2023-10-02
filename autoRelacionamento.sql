CREATE DATABASE sprint2;
USE sprint2;
CREATE TABLE Pessoa(
idPessoa int PRIMARY KEY auto_increment,
nome varchar(40),
cpf char(11), 
dtNas DATE, 
fkMae int
);
ALTER TABLE Pessoa ADD CONSTRAINT fkMae FOREIGN KEY (fkMae) REFERENCES Pessoa (idPessoa);
 
INSERT INTO Pessoa VALUES
(null, 'Mirian', '9068478346', '1975-09-22' , null),
(null, 'Tallyon', '38491020839', '2005-05-03' , 1);

SELECT F.nome AS nomeFilho , M.nome AS nomeMae FROM Pessoa AS F JOIN Pessoa AS M ON F.fkMae = M.idPessoa;