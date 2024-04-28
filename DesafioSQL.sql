--1 - Buscar o nome e ano dos filmes
--SELECT Nome, Ano from Filmes;

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
--SELECT Nome, Ano from Filmes
--ORDER BY Ano ASC;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
--SELECT Nome, Ano,Duracao from Filmes
--WHERE Nome = 'De Volta para o Futuro';

--4 - Buscar os filmes lançados em 1997
--SELECT * from Filmes
--WHERE Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000
--SELECT * FROM Filmes
--WHERE Ano LIKE '2%';

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
--SELECT * FROM Filmes
--WHERE Duracao BETWEEN 101 AND 150;

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
--SELECT Ano, COUNT(Ano) as Quantidade FROM Filmes
--GROUP BY Ano
--ORDER BY Quantidade DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
--SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
--WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
--SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
--WHERE Genero = 'F'
--ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o gênero
--SELECT f.Nome, g.Genero FROM Filmes AS f
--INNER JOIN FilmesGenero ON f.Id = FilmesGenero.IdFilme 
--INNER JOIN Generos AS g ON g.Id = FilmesGenero.IdGenero;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
--SELECT f.Nome, g.Genero FROM Filmes AS f
--INNER JOIN FilmesGenero ON f.Id = FilmesGenero.IdFilme 
--INNER JOIN Generos AS g ON g.Id = FilmesGenero.IdGenero
--WHERE g.Genero = 'Mistério';

--12 -Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
--ELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel FROM Filmes as f
--INNER JOIN ElencoFilme as e ON e.IdFilme = f.Id
--INNER JOIN Atores as a ON e.IdAtor = a.Id;
