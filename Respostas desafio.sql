-- 1
SELECT  
		nome,
		ano

FROM filmes

--2
SELECT * FROM filmes
ORDER BY Ano ASC;

--3
SELECT nome, ano, duracao FROM Filmes
WHERE nome LIKE 'De Volta para o Futuro'

--4
SELECT nome, ano, duracao FROM Filmes
WHERE ano LIKE '1997'

--5 
SELECT * FROM filmes
WHERE ano > 2000

--6
SELECT * FROM filmes 
WHERE duracao > 100 and duracao < 150
ORDER BY Duracao ASC

--7
SELECT
     ano,
	 COUNT(*) as Quantidade
	 FROM filmes
	 GROUP BY ano
	 ORDER BY Quantidade DESC

select * from atores

--8
SELECT * FROM atores
WHERE genero like 'M'

--9
SELECT * FROM atores
WHERE genero like 'F'
ORDER BY PrimeiroNome

--10
SELECT
	 filmes.nome,
	 generos.genero
	
FROM 
	filmesgenero

INNER JOIN Filmes ON filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON generos.Id = FilmesGenero.IdGenero

--11
SELECT
	 filmes.nome,
	 generos.genero	
FROM 
	filmesgenero

INNER JOIN Filmes ON filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON generos.Id = FilmesGenero.IdGenero
WHERE genero LIKE 'Mistério'

--12
SELECT
	  filmes.nome,	 
	  atores.PrimeiroNome,
	  atores.UltimoNome,
	  ElencoFilme.papel
FROM 
	
	elencofilme

INNER JOIN Filmes ON filmes.Id = elencofilme.IdFilme
INNER JOIN Atores ON atores.Id = elencofilme.IdAtor