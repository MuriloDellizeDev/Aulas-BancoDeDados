USE ProjetoNyous;

INSERT INTO Acesso (Tipo) VALUES 

	('Administrador'), 
	('Padrao')


INSERT INTO Categoria (Titulo) VALUES 

	('Meetup'), 
	('Workshop'),
	('Hackathon'),
	('Live'),
	('Palestra');


INSERT INTO Localizacao (Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP) VALUES 

	('Alameda Bar�o de Limeira', 539, NULL, 'Santa Cecilia', 'S�o Paulo', 'SP', '01202-001'); 
	



INSERT INTO Usuario (Nome, Email, Senha, DataNascimento, IdAcesso) VALUES 

	('Murilo Dellize', 'Murilo@gmail.com', '123456789', '2004-06-11T09:35:00', 1); 



INSERT INTO Evento (DataDoEvento, Capacidade, AcessoRestrito, IdCategoria, IdLocalizacao) VALUES 

	('2020-10-15T22:00:00', 100, 0, 3, 1); 
