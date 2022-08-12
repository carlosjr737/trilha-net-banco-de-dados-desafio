--1 
SELECT 
Nome,
Ano
FROM Filmes

--2 
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
ORDER BY Ano ASC

--3
SELECT
Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano >= 2000

--6
SELECT
Nome,
Ano,
Duracao
FROM Filmes
WHERE Duracao >100 AND Duracao <150
ORDER BY Duracao ASC

--7
SELECT
Ano,
COUNT(*) Quantidade
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC

--8
SELECT 
id,
PrimeiroNome,
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'M'

--9 
SELECT 
id,
PrimeiroNome,
UltimoNome,
Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10

SELECT 
Filmes.Nome,
Generos.Genero
FROM FilmesGenero
INNER JOIN Generos 
ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes 
ON Filmes.Id = FilmesGenero.IdFilme


--11
SELECT
Filmes.Nome,
Generos.Genero
FROM FilmesGenero
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes
ON FIlmes.Id = FilmesGenero.IdFilme
WHERE Generos.Genero = 'Mistério'


--12

SELECT
Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel

FROM ElencoFilme
INNER JOIN Atores
ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes
ON Filmes.Id = ElencoFilme.IdFilme

