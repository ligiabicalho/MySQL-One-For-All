SELECT u.nome AS usuario,
	COUNT(*) AS qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_seg / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS u  
INNER JOIN SpotifyClone.historico_reproducoes AS hr ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hr.cancao_id
GROUP BY usuario
ORDER BY usuario;