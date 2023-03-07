SELECT 
	u.user_name AS pessoa_usuaria,
	COUNT(h.user_id) AS musicas_ouvidas,
	ROUND(SUM(m.duration_seconds / 60), 2) AS total_minutos
FROM users AS u
	INNER JOIN history AS h
		ON u.user_id = h.user_id
	INNER JOIN musics AS m
		ON m.music_id = h.music_id
GROUP BY u.user_name
ORDER BY u.user_name;

