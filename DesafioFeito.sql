SELECT * FROM Filmes

--Buscar o nome e ano dos filmes
SELECT Nome,Ano FROM Filmes;

--Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome,Ano FROM Filmes order by Ano Asc;

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome,Ano,Duracao FROM Filmes WHERE Nome = 'de volta para o futuro';

--Buscar os filmes lançados em 1997
SELECT * FROM Filmes WHERE Ano = 1997;

--Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000;

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao <150 ORDER BY Duracao ASC ;

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO,COUNT(*)QUANTIDADE FROM Filmes GROUP BY Ano ORDER BY QUANTIDADE DESC;

--Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome,UltimoNome FROM Atores WHERE Genero = 'M';

--Buscar o nome do filme e o gênero
SELECT f.Nome,g.Genero FROM Filmes AS f INNER JOIN  FilmesGenero AS fg ON f.Id = fg.IdFilme INNER JOIN  Generos AS g ON fg.IdGenero = g.Id;

--Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome ,g.Genero FROM Filmes AS F INNER JOIN FilmesGenero AS fg on f.Id= fg.IdFilme INNER JOIN  Generos AS g ON fg.IdGenero = g.Id WHERE g.Genero ='Mistério';

--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome,a.PrimeiroNome,a.UltimoNome,ef.Papel FROM Filmes AS f INNER JOIN ElencoFilme AS ef ON f.Id = ef.IdFilme INNER JOIN Atores AS a ON a.Id = ef.IdAtor;