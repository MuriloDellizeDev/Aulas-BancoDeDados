USE Optus;
/*

		DML - Data Mnipulation Languege

*/

---	(INSERT - Inserir)
	
	INSERT INTO Usuario (Nome, Permissão, Senha, Email) VALUES 

		('Mathehus', 'Normal', '12334', 'Matheus@gmail.com'),
		('Lucas', 'Normal', '1989', 'Lucas@gmail.com'),
		('Murilo', 'Administrador', '1adm', 'MuriloOptus@gmail.com')


	INSERT INTO Estilo (Nome) VALUES 

		('Indie'),
		('Rock'),
		('Folk')


	INSERT INTO Artista (Nome, IdEstilo) VALUES 
	
		('Arctic Monkeys', 1),
		('Bob Dylan', 3),
		('The Beatles', 2)


	INSERT INTO Album (Nome, DataDeLancamento, Localizacao, QtdMinutos, Ativo, IdArtista) VALUES 

		('AM', '2013-09-09', 'Nova Iorque', '02:30:00', 'SIM', 1 ),
		('Rough and Rowdy Ways', '2020-07-19', 'Nova Iorque', '02:30:00', 'SIM', 2 ),
		('Abbey Road', '1969-09-26', 'Nova Iorque', '02:30:00', 'SIM', 3 )


	INSERT INTO EstiloAlbum (IdAlbum, IdEstilo) VALUES 
		
		(1, 1),
		(2, 3),
		(4, 2)

	
--	(UPDATE - Alterar)

--ALTERAÇÃO NA PERMISSÃO DO IdUsuario 1 DE NORMAL PARA ADIMINISTRADOR

	UPDATE Usuario SET
		Permissão = 'Administrador'
	 WHERE IdUsuario = 1;

--ALTERAÇÃO LOCALIZAÇÃO DA GRAVAÇÃO DO ALBUM 

	UPDATE Album SET
		Localizacao = 'Brazil'
	WHERE IdAlbum = 1;


--	DELETE - Excluir

-- FUNCIONARIOS DEMITIDOS E USUARIOS AUSENTES POR MAIS DE 100 DIAS

	DELETE FROM Usuario WHERE IdUsuario = 1;
	DELETE FROM Usuario WHERE IdUsuario = 2;


/*

	DQL - SELECT

*/

--SELECIONA O ALUNO PARA FAZER ALGUMA ALTERAÇÃO.

SELECT * FROM Usuario;
SELECT * FROM Estilo;
SELECT * FROM Artista;
SELECT * FROM Album;
SELECT * FROM EstiloAlbum;


