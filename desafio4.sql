SELECT u.nome AS usuario,
  IF(MAX(YEAR(hr.data_reproducao)) >= 2021 , 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS hr ON hr.usuario_id = u.usuario_id
GROUP BY usuario
ORDER BY usuario;