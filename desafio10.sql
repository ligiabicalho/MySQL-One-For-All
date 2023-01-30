SELECT 
	c.nome AS nome,
	COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS hr
	ON hr.cancao_id = c.cancao_id 
    AND hr.usuario_id IN (SELECT usuario_id
		FROM SpotifyClone.usuarios
		WHERE plano_id IN (1, 3))
GROUP BY c.nome
ORDER BY c.nome;