SELECT m.music_name AS cancao,
COUNT(h.music_id) AS reproducoes
FROM musics AS m
INNER JOIN history AS h
ON h.music_id = m.music_id
GROUP BY m.music_id
ORDER BY reproducoes DESC, m.music_name ASC
LIMIT 2;