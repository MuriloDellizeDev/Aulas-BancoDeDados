/*

		DDL - Data Definition Language

*/

-- Criar o Banco de dados
CREATE DATABASE boletim;
GO


-- Usar efetivamente o banco
USE boletim;
GO

-- Apaga o Banco de dados
-- DROP DATABASE boletim;

/*

		Criamos a tabela aluno
		IDENTITY - Gera os id's automaticamente, incrementando-os
*/


CREATE TABLE Aluno(

	IdAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20) UNIQUE,
	Idade INT NOT NULL,

);


GO

-- Apagammos  a tabala caso necessário
-- DROP TABLE Aluno;

/*Criamos uma tabela materias*/

CREATE TABLE Materia(

	idMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR(50),

);
GO

/*Criamos uma tabela trabalhos*/

CREATE TABLE Trabalho(

	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL(10, 2),

	-- 

	IdMateria INT FOREIGN KEY REFERENCES Materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES Aluno(IdAluno)

);

GO

--  lterar a estrutura da tabela Trabalho, incluindo uma coluna nova

ALTER TABLE Trabalho ADD DataEntrega DATETIME;

-- Alteramos e excluimmmos uma coluna teste

ALTER TABLE Trabalho ADD Teste INT;
--ALTER TABLE Trabalho DROP COLUMN Teste;


