/*

	DQL JOINS

*/

USE Boletim;

SELECT 
	Aluno.Nome,
	Materia.Titulo,
	Trabalho.Nota
FROM Trabalho
-- Unir tabelas a partir de suas FK's
	INNER JOIN Aluno ON	Trabalho.IdAluno = Aluno.IdAluno
	INNER JOIN Materia ON Trabalho.IdMateria = Materia.IdMateria

WHERE Trabalho.Nota > 7 -- < 7 OU IS NULL

ORDER BY Trabalho.Nota DESC


