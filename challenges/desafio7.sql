SELECT 
	artist_name AS artista,
	album_name AS album,
	COUNT(f.artist_id) AS pessoas_seguidoras
FROM artists AS at
INNER JOIN albums AS al
	ON at.artist_id = al.artist_id
INNER JOIN followers AS f
	ON at.artist_id = f.artist_id
GROUP BY artist_name, f.artist_id, album_name
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;
