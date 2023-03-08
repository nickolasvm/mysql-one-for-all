SELECT COUNT(h.user_id) AS musicas_no_historico
FROM history AS h
INNER JOIN users AS u
ON u.user_id = h.user_id
AND user_name = 'Barbara Liskov';