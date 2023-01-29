SELECT c.nome AS cancao,
	count(*) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS hr
ON hr.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;