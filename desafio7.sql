SELECT art.nome AS artista,
	alb.titulo AS album,
    (SELECT COUNT(usuario_id)
	FROM SpotifyClone.seguidores
    WHERE seguidores.artista_id = art.artista_id) AS seguidores 
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
ORDER BY seguidores DESC, art.nome, alb.titulo;