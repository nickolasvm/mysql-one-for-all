SELECT 
	album_name AS album,
	COUNT(m.music_id) AS favoritadas
FROM albums AS a
INNER JOIN musics AS m
	ON a.album_id = m.album_id
INNER JOIN favorite_musics AS fm
	ON fm.music_id = m.music_id
GROUP BY album_name
ORDER BY favoritadas DESC
LIMIT 3;