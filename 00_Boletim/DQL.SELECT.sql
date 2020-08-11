USE boletim;

/*

	DQL - Data Query Language

*/

--Seleciona tudo de uma entidade
SELECT * FROM Aluno;
SELECT * FROM Materia;
SELECT * FROM Trabalho;

--Seleciona um atributo especifico de uma entidade a partir do seu id
SELECT * FROM Aluno WHERE IdAluno = 5 OR
	IdAluno = 1;

--Seleciona um atributo especifico de uma entidade a partir da sua idade
SELECT * FROM Aluno WHERE Idade = 21;

--Seleciona um atributo especifico de uma entidade a partir do seu nome
SELECT * FROM Aluno WHERE Nome = 'Rogerio';

--Seleciona um atributo especifico de uma entidade de apartir do começo Nome do Aluno servindo como uma busca'
SELECT * FROM Aluno WHERE Nome LIKE '%Sa%';

--Seleciona um atributo especifico de uma entidade de apartir de um caracter especifico %Sa% = Nome Samanta  ,  %1% = Idade 17  ou de um numero de uma idade especifica
SELECT * FROM Aluno WHERE 
	Nome LIKE '%Sa%' AND --&&
	Idade LIKE '%1%'

--Seleciona um atributo especifico de uma entidade em um intervalo de id's
SELECT * FROM Aluno WHERE IdAluno <  5 AND IdAluno > 2;

--Seleciona uma entidade em ordem crescente de idade
SELECT * FROM Aluno ORDER BY Idade;

--Seleciona uma entidade em ordem crescente de idade
SELECT * FROM Aluno ORDER BY Idade ASC;

--Seleciona uma entidade em ordem decrescente de idade
SELECT * FROM Aluno ORDER BY Idade DESC;

--Seleciona uma atributo especifico de uma entidade a partir de 2 atributos
SELECT * FROM Trabalho WHERE
	DataEntrega BETWEEN '2020-08-12T10:00:00' AND '2020-08-15T10:00:00'