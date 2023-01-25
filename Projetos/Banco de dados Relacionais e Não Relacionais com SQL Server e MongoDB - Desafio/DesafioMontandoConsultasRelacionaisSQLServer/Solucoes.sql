-- Questão 1
SELECT Nome, Ano 
FROM Filmes

-- Questão 2
-- De acordo com o escrito
SELECT Nome, Ano 
FROM Filmes
ORDER BY Ano
--De acordo com a imagem
SELECT * 
FROM Filmes
ORDER BY Ano

-- Questão 3
SELECT * 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Questão 4
SELECT * 
FROM Filmes
WHERE Ano = 1997

-- Questão 5
SELECT * 
FROM Filmes
WHERE Ano > 2000

-- Questão 6
SELECT * 
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Questão 7 (Mal escrita)
SELECT Ano, COUNT(*) as Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Questão 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- Questão 9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Questão 10
SELECT Nome, Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- Questão 11
SELECT Nome, Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- Questão 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id