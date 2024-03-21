-- DROP SCHEMA areabimbi_web;
CREATE SCHEMA areabimbi_web;
USE areabimbi_web;

CREATE TABLE persona (
	id INT PRIMARY KEY AUTO_INCREMENT,
    codice CHAR(16) UNIQUE NOT NULL,
    nome VARCHAR(45) NOT NULL,
    cognome VARCHAR(45) NOT NULL,
    eta INT NOT NULL,
    genitore VARCHAR(45) NOT NULL,
    numero INT NOT NULL,
    nota VARCHAR(200) NOT NULL
);

CREATE TABLE utente (
	id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(45) UNIQUE NOT NULL,
    motdepasse VARCHAR(45) NOT NULL
);