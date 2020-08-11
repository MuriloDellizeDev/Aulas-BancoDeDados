/*

	DQL JOINS

*/

USE Veterianario;

SELECT 
	Atendimento.Descricao,
	Atendimento.DataDeAtendimento,
	Pet.Nome,
	ProfissionalVeterinario.Nome
FROM Atendimento
	INNER JOIN Pet ON Atendimento.IdPet = Pet.IdPet
	INNER JOIN ProfissionalVeterinario ON Atendimento.IdProfissionalVeterinario = ProfissionalVeterinario.IdProfissionalVeterinario

ORDER BY ProfissionalVeterinario.Nome ASC