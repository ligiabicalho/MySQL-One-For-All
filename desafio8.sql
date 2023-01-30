SELECT art.nome AS artista,
	alb.titulo AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
WHERE art.nome = 'Elis Regina'
ORDER BY alb.titulo;