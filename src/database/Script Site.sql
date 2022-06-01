CREATE DATABASE ProjetoIndividual;

USE ProjetoIndividual;

CREATE TABLE Piloto (
idPiloto INT PRIMARY KEY AUTO_INCREMENT,
nomePiloto VARCHAR(50)
);

INSERT INTO Piloto VALUES (null, 'Senna'),
                          (null, 'Hamilton'),
                          (null, 'Schumacher'),
                          (null, 'Proust'),
                          (null, 'Fangio');

SELECT * FROM Piloto;

CREATE TABLE Votacao (
idVotacao INT PRIMARY KEY AUTO_INCREMENT,
fkPiloto INT,
FOREIGN KEY(fkPiloto) REFERENCES Piloto(idPiloto)
);

SELECT * FROM Votacao;
INSERT INTO Votacao VALUES (null, 1),
                           (null, 2),
                           (null, 2),
                           (null, 3),
                           (null, 3);
                           

SELECT count(fkPiloto) FROM Votacao WHERE fkPiloto = 4;
CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);


SELECT * FROM usuario;