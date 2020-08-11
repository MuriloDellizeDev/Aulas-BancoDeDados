/*

	DQL JOINS

*/

USE Optus;

SELECT
	Album.Nome,
	Estilo.Nome
FROM EstiloAlbum
	INNER JOIN Album ON EstiloAlbum.IdAlbum = Album.IdAlbum
	INNER JOIN Estilo ON EstiloAlbum.IdEstilo = Estilo.IdEstilo

ORDER BY EstiloAlbum.IdAlbum DESC
