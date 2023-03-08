SELECT 
	artist_name AS artista,
	CASE
		WHEN COUNT(fm.music_id) > 4 THEN 'A' 
		WHEN COUNT(fm.music_id) > 2 THEN 'B'
        WHEN COUNT(fm.music_id) > 0 THEN 'C'
        ELSE '-'
	END AS ranking
FROM artists AS at
INNER JOIN albums AS al
	ON at.artist_id = al.artist_id
INNER JOIN musics AS m
	ON  al.album_id = m.album_id
LEFT JOIN favorite_musics AS fm
	ON m.music_id = fm.music_id
GROUP BY artist_name
ORDER BY COUNT(fm.music_id) DESC, artista ASC;