USE boletim;

/*

		DML - Data Mnipulation Languege

*/



--	(INSERT - Inserir)

	INSERT INTO Aluno (Nome, Ra, Idade ) VALUES 

		('Lucas', '123456', 13),
		('Murilo', '457898', 16),
		('Marcelo', '487512', 21),
		('Rogerio', '333211', 11),
		('Samanta', '787747', 17),
		('Saulo', '74747', 12),
		('Maicon', '', 7);
	
	

	INSERT INTO Materia (Titulo ) VALUES 
	
		('Biologia'),
		('Mathematica'),
		('Inglês'),
		('Lingua Portuguesa'),
		('Historia')



	INSERT INTO Trabalho (Nota, DataEntrega, IdAluno, IdMateria) VALUES 
	
		(9.8, '2020-08-12T10:00:00', 5, 1),
		(6.0, '2020-08-12T10:00:00', 4, 2),
		(8.5, '2020-08-12T10:00:00', 3, 3),
		(10.0, '2020-08-12T10:00:00', 2, 4),
		(0.0, '2020-08-12T10:00:00', 5, 1),
		(9.0, '2020-08-12T10:00:00', 5, 5),
		(NULL, '2020-08-12T10:00:00', 5, 5),
		(NULL, '2020-08-12T10:00:00', 5, 5)


--	(UPDATE - Alterar)

-- ALTERA TODOS OS RA'S DO BANCO DE DADOS CUIDADO!!!!!!

	 UPDATE Aluno SET

		 Ra = '1515'

-- ALTERA O RA DE UM ID ESPECIFICO

	UPDATE Aluno SET

		Ra = '010241'

	WHERE IdAluno = 8;



--	(DELETE - Excluir)

-- DELETA TUDO DE ALUNOS.

	DELETE FROM Aluno;

--  DELETA UM ALUNO DE UM ID ESPECIFICO.

	DELETE FROM Aluno WHERE IdAluno = 8;



/*

	DQL - SELECT

*/

--SELECIONA O ALUNO PARA FAZER ALGUMA ALTERAÇÃO.

	SELECT * FROM Aluno;
	SELECT * FROM Materia;
	SELECT * FROM Trabalho;

-- ALteramos uma coluna mal estruturada

	ALTER TABLE Trabalho ALTER COLUMN Nota DECIMAL (10,1)

