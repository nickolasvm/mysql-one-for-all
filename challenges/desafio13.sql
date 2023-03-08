SELECT 
	CASE
		WHEN user_age > 60 THEN 'Maior de 60 anos' 
		WHEN user_age > 30 THEN 'Entre 31 e 60 anos' 
        ELSE 'Até 30 anos'
	END AS faixa_etaria,	
    COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
    COUNT(music_id) AS total_favoritadas
FROM users AS u
LEFT JOIN favorite_musics AS fm
	ON u.user_id = fm.user_id
GROUP BY faixa_etaria;

