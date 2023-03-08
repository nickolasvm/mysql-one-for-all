SELECT u.user_name AS pessoa_usuaria,
IF(MAX(YEAR(h.reproduction_date)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria 
FROM users AS u
INNER JOIN history AS h
ON u.user_id = h.user_id 
GROUP BY u.user_name
ORDER BY u.user_name;
