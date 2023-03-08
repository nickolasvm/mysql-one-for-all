SELECT 
	artist_name AS artista,
    album_name AS album
FROM artists AS at
INNER JOIN albums AS al
ON al.artist_id = at.artist_id
AND artist_name = 'Elis Regina';