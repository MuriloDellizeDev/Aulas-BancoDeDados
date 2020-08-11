/*

		DDL - Data Definition Language

*/

-- Criar o Banco de dados
CREATE DATABASE	Optus;


-- Usar efetivamente o banco
USE Optus;


/*

		Criamos a tabela tipo de pets, dono e clinicas
		IDENTITY - Gera os id's automaticamente, incrementando-os

*/

/*Criamos uma tabela usuario e estilo*/

CREATE TABLE Usuario(

	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Permissão VARCHAR (100),
	Senha VARCHAR(100),
	Email VARCHAR (100),
	
);



CREATE TABLE Estilo(
	
	IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100),

);

/*Criamos uma tabela artistas e albuns*/

CREATE TABLE Artista(
	
	IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100),

	-- FK CHAVE ESTRANGEIRA

	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo) 

);



CREATE TABLE Album(
	
	IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100),
	DataDeLancamento DATE,
	Localizacao VARCHAR(100),
	QtdMinutos TIME,
	Ativo VARCHAR(100),

	-- FK CHAVE ESTRANGEIRA

	IdArtista INT FOREIGN KEY REFERENCES Artista(IdArtista) ,

	

);

/*Criamos uma tabela Estilo do album*/

CREATE TABLE EstiloAlbum(
	
	IdEstiloAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	
	-- FK CHAVE ESTRANGEIRA

	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo),

);


	ALTER TABLE Album ALTER COLUMN Ativo VARCHAR(100);