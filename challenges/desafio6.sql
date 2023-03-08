SELECT 
	ROUND(MIN(plan_value), 2) AS faturamento_minimo,
	ROUND(MAX(plan_value), 2) AS faturamento_maximo,
	ROUND(AVG(plan_value), 2) AS faturamento_medio,
	ROUND(SUM(plan_value), 2) AS faturamento_total
FROM plans AS p
INNER JOIN users AS u
ON p.plan_id = u.plan_id;