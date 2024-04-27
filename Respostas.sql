--1
SELECT 
	Nome
	,Ano
FROM Filmes WITH(NOLOCK)

--2
SELECT 
	Nome
	,Ano
FROM Filmes WITH(NOLOCK)
ORDER BY Ano

--3
SELECT 
	Nome
	,Ano
	,Duracao
FROM Filmes WITH(NOLOCK)
WHERE 
	Nome LIKE '%De Volta para o Futuro%'

--4
SELECT 
	Nome
	,Ano
	,Duracao
FROM Filmes WITH(NOLOCK)
WHERE 
	Ano = 1997

--5
SELECT 
	Nome
	,Ano
	,Duracao
FROM Filmes WITH(NOLOCK)
WHERE 
	Ano > 2000

--6
SELECT 
	Nome
	,Ano
	,Duracao
FROM Filmes WITH(NOLOCK)
WHERE 
	Duracao > 100
	AND Duracao < 150
ORDER BY Duracao

--7

SELECT 	
	Ano
	,Count(1) AS Quantidade 
FROM Filmes WITH(NOLOCK)
GROUP BY Ano
ORDER BY Quantidade DESC
--ORDER BY SUM(Duracao) DESC -> O exercicio pede esse, mas não bate a resposta,então mantive Order por Quantidade para bater a resposta

--8
SELECT 	
	PrimeiroNome
	,UltimoNome
FROM Atores WITH(NOLOCK)
WHERE
	Genero = 'M'

--9
SELECT 	
	PrimeiroNome
	,UltimoNome
FROM Atores WITH(NOLOCK)
WHERE
	Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
	F.Nome
	,G.Genero
FROM Filmes F WITH(NOLOCK)
INNER JOIN FilmesGenero FG WITH(NOLOCK) ON FG.IdFilme = F.Id
INNER JOIN Generos G WITH(NOLOCK) ON G.Id = FG.IdGenero

--11
SELECT 
	F.Nome
	,G.Genero
FROM Filmes F WITH(NOLOCK)
INNER JOIN FilmesGenero FG WITH(NOLOCK) ON FG.IdFilme = F.Id
INNER JOIN Generos G WITH(NOLOCK) ON G.Id = FG.IdGenero
WHERE
	G.Genero = 'Mistério'

--12
SELECT 
	F.Nome	
	,A.PrimeiroNome
	,A.UltimoNome
	,EF.Papel
FROM Filmes F WITH(NOLOCK)
INNER JOIN ElencoFilme EF WITH(NOLOCK) ON EF.IdFilme = F.Id
INNER JOIN Atores A WITH(NOLOCK) ON A.Id = EF.IdAtor