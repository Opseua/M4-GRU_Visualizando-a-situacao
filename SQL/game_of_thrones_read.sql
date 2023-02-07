USE game_of_thrones;
	
-- Quais os episódios mais bem avaliados?
SELECT 
	episodio_temporada as 'Temporada', 
	episodio_episodio as 'Episódio', 
	episodio_titulo as 'Título', 
    episodio_avaliacao as 'Nota',
    episodio_votos as 'Votos'
FROM episodios
ORDER BY episodio_avaliacao DESC
LIMIT 10;


-- Quais os episódios mais longos?
SELECT 
	episodio_temporada as 'Temporada', 
	episodio_episodio as 'Episódio', 
	episodio_titulo as 'Título', 
    episodio_duracao_min as 'Duração'
FROM episodios
ORDER BY episodio_duracao_min DESC
LIMIT 10;


-- Quais os episódios com mais audiência nos EUA?
SELECT 
	episodio_temporada as 'Temporada', 
	episodio_episodio as 'Episódio', 
	episodio_titulo as 'Título', 
    episodio_data_lancamento as 'Data de lançamento',
    episodio_espectadores_dos_eua as 'Espectadores nos EUA'
FROM episodios
ORDER BY episodio_espectadores_dos_eua DESC
LIMIT 10;


-- Quais atores participaram de mais episódios?
SELECT
	personagem_ator as 'Ator',
    personagem_aparecimento_episodios as 'Número de episódios',
    personagem_nome as 'Personagem',
    personagem_primeiro_aparecimento as 'Primeiro aparecimento'-- Colocar o nome do episódio
FROM personagens
ORDER BY personagem_aparecimento_episodios DESC
LIMIT 10;


-- Quais são os episódios mais populares? (baseado no número de comentários da crítica + espectadores)
SELECT 
	episodio_episodio as 'Episódio',
    episodio_temporada as 'Temporada',
    episodio_titulo as 'Título',
    (episodio_comentarios_de_usuarios + episodio_comentarios_de_criticos) as 'Total de comentários',
    episodio_data_lancamento as 'Data de lançamento'
FROM episodios
ORDER BY (episodio_comentarios_de_usuarios + episodio_comentarios_de_criticos) DESC
LIMIT 10;

