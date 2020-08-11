/*

		DDL - Data Definition Language

*/

-- Criar o Banco de dados
CREATE DATABASE Veterianario;


-- Usar efetivamente o banco
USE Veterianario;

/*

		Criamos a tabela tipo de pets, dono e clinicas
		IDENTITY - Gera os id's automaticamente, incrementando-os

*/

CREATE TABLE TipoDePet(

	IdTipoDePet INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	
);

CREATE TABLE Dono(

	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	
);

CREATE TABLE Clinica(

	IdClinica INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR(100) NOT NULL,
	
);



/*Criamos uma tabela raças e profissional veterinario*/

CREATE TABLE Raca(

	IdRaca INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,

	-- FK CHAVE ESTRANGEIRA

	IdTipoDePet INT FOREIGN KEY REFERENCES TipoDePet(IdTipoDePet),
	

);


CREATE TABLE ProfissionalVeterinario(

	IdProfissionalVeterinario INT IDENTITY PRIMARY KEY NOT NULL,
	Crv VARCHAR(12) NOT NULL,
	Nome VARCHAR(100) NOT NULL,

	-- FK CHAVE ESTRANGEIRA

	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
	

);

/*Criamos uma tabela pet e atendimento*/


CREATE TABLE  Pet(

	IdPet INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataDeNascimento DATETIME,

	-- FK CHAVE ESTRANGEIRA

	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),



);

CREATE TABLE  Atendimento(

	IdAtendimento INT IDENTITY PRIMARY KEY NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	DataDeAtendimento DATETIME,

	-- FK CHAVE ESTRANGEIRA

	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdProfissionalVeterinario INT FOREIGN KEY REFERENCES ProfissionalVeterinario(IdProfissionalVeterinario),



);







