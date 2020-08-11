USE Veterianario;
/*

		DML - Data Mnipulation Languege

*/

--	(INSERT - Inserir)
	
	INSERT INTO  TipoDePet (Descricao) VALUES 

		('Gato'),
		('Cachorro')


	INSERT INTO Dono (Nome) VALUES 

		('Murilo'),
		('Lucas'),
		('Matheus'),
		('Marcelo')


	INSERT INTO Clinica (Nome, Endereco) VALUES 

		('Vet 01', 'Av. Dr. José Maciel , 351'),
		('Vet 02', 'Al. Cauaxi, 431'),
		('Vet 03', 'Av.Marcial Lourenço Seródio, 761'),
		('Vet 04', 'Rua Bernardo Morelli, 83')


	INSERT INTO Raca (Descricao, IdTipoDePet) VALUES 
		('Beagle', 1),
		('Husky', 1),
		('Labrador', 1),
		('Persa', 2)


	 INSERT INTO ProfissionalVeterinario (Crv, Nome, IdClinica) VALUES 

		('245257  ', 'Alisson', 4),
		('275272  ', 'Rosi', 2),
		('637837  ', 'Maria', 1),
		('387000 ', 'Alan', 3)


	INSERT INTO Pet (Nome, DataDeNascimento, IdRaca, IdDono) VALUES 

		('Billy', '2015-06-21 23:59:59.000', 1, 1),
		('Bob', '2016-12-02 23:59:59.000', 1, 4),
		('Duke', '2016-12-01 23:59:59.000', 2, 3),
		('Zeca', '2010-08-29 23:59:59.000', 1, 2)


	INSERT INTO Atendimento(Descricao, DataDeAtendimento, IdPet, IdProfissionalVeterinario) VALUES 

		('', '2020-08-06T12:30:00.000', 6, 2),
		('Cinomose Canina', '2020-08-06T16:40:00.000', 4, 3),
		('Toxoplasma Gondii', '2020-08-06T17:10:00', 5, 1),
		('Gripe Canina', '2020-08-06T17:10:00', 1, 4)
		


--	(UPDATE - Alterar)

--ALTERAÇÃO DE HORARIO IdAtendimento 2 PASSOU DAS 2020-08-06 17:10:00.00 PARA AS 2020-08-07 20:30:00.000

	UPDATE Atendimento SET
		DataDeAtendimento = '2020-08-06T20:30:00.000'
	WHERE IdAtendimento = 2;

--ALTERAÇÃO NA DESCRICÃO DO IdAtendimento Dê NULL PARA DEPATITE CANINA

	UPDATE ATendimento SET
		Descricao = 'Raiva Canina'
	WHERE IdAtendimento = 1;


--	(DELETE - Excluir)
-- ATENDIMENTO JÁ REALIZADO CO SUCESSO E EXCLUIDO DO BANCO DE DADOS

	DELETE FROM Atendimento WHERE IdAtendimento = 6

/*

	DQL - SELECT

*/

--SELECIONA O ALUNO PARA FAZER ALGUMA ALTERAÇÃO.

SELECT * FROM TipoDePet;
SELECT * FROM Dono;
SELECT * FROM Clinica;
SELECT * FROM Raca;
SELECT * FROM ProfissionalVeterinario;
SELECT * FROM Pet;
SELECT * FROM Atendimento;
