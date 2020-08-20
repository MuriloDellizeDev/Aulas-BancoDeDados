CREATE DATABASE ProjetoNyous

USE ProjetoNyous

CREATE TABLE Acesso(
	
	--PK
	IdAcesso INT PRIMARY KEY IDENTITY NOT NULL,

	Tipo VARCHAR(50) NOT NULL,

);

CREATE TABLE Categoria(
	
	--PK
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,

	Titulo VARCHAR(50),

);

CREATE TABLE Localizacao(
	
	--PK
	IdLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,

	Logradouro VARCHAR(100) NOT NULL,
	Numero VARCHAR(50) ,
	Complemento VARCHAR(50) ,
	Bairro VARCHAR(50) NOT NULL,
	Cidade VARCHAR(50) NOT NULL,
	UF CHAR(2) NOT NULL,
	CEP VARCHAR(10) NOT NULL,

); 

CREATE TABLE Usuario(
	
	--PK
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,

	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(80) NOT NULL,
	Senha VARCHAR(150) NOT NULL, -- Ser� usado criptografia
	DataNascimento DATETIME,

	--FK's
	IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso),

);



CREATE TABLE Evento(
	
	--PK
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL,

	DataDoEvento DATETIME NOT NULL,
	AcessoRestrito BINARY DEFAULT 0 NOT NULL, -- 0 = false, 1 = true --
	Capacidade INT NOT NULL,
	Descricao VARCHAR(255)	,

	--FK's
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao(IdLocalizacao),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria),

);



CREATE TABLE Presenca(
	
	--PK
	IdPresenca INT PRIMARY KEY IDENTITY NOT NULL,

	Confirmado BIT NOT NULL,

	--FK's
	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	

);

CREATE TABLE Convite(

	IdConvite INT PRIMARY KEY IDENTITY NOT NULL,

	Confirmado BIT DEFAULT NULL,

	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario(IdUsuario),

);


