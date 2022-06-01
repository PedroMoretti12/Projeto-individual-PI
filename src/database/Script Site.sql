CREATE DATABASE ProjetoIndividual;

USE ProjetoIndividual;

CREATE TABLE Piloto (
idPiloto INT PRIMARY KEY AUTO_INCREMENT,
nomePiloto VARCHAR(50),
equipe VARCHAR(50),
nacionalidade VARCHAR(50)
);

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkPiloto INT,
    FOREIGN KEY (fkPiloto) REFERENCES Piloto(idPiloto)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
); 