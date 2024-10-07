-- 1
select Nome, Ano from Filmes;

-- 2 
select Nome, Ano, Duracao from Filmes order by Ano asc;

-- 3
select Nome, Ano, Duracao from Filmes where nome like 'De Volta para o Futuro';

-- 4
select * from Filmes where ano = 1997;

-- 5
select * from Filmes where ano >= 2000;

-- 6
select * from Filmes where Duracao between 101 and 149 order by Duracao asc;

-- 7 
select ano, count(*) quantidade from Filmes group by ano order by quantidade desc;

-- 8 
select PrimeiroNome, UltimoNome from Atores where Genero = 'M';

-- 9
select PrimeiroNome,UltimoNome from Atores where Genero = 'F' ORDER BY PrimeiroNome ASC;

-- 10
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG
ON F.Id = FG.IdFilme 
INNER JOIN Generos G
ON FG.IdGenero = G.Id;

-- 11
SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG
ON F.Id = FG.IdFilme 
INNER JOIN Generos G
ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

-- 12
select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from Filmes F
inner join ElencoFilme EF
on F.Id = EF.IdFilme
INNER JOIN Atores A
ON EF.IdAtor = A.Id;
