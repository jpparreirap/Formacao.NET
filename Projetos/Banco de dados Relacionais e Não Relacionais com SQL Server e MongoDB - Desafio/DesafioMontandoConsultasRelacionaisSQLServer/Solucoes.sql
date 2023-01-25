-- Quest�o 1
SELECT Nome, Ano 
FROM Filmes

-- Quest�o 2
-- De acordo com o escrito
SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano
--De acordo com a imagem
SELECT * 
FROM Filmes
ORDER BY Ano

-- Quest�o 3
SELECT * 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Quest�o 4
SELECT * 
FROM Filmes
WHERE Ano = 1997

-- Quest�o 5
SELECT * 
FROM Filmes
WHERE Ano > 2000

-- Quest�o 6
SELECT * 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Quest�o 7 (Mal escrita)
SELECT Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Quest�o 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- Quest�o 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Quest�o 10
SELECT Nome, Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- Quest�o 11
SELECT Nome, Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mist�rio'

-- Quest�o 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id