SELECT
	attrition, 
	COUNT(*) AS employees, 
	ROUND(
		COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
		2
	) AS percentage
FROM hr_attrition
GROUP BY attrition
ORDER BY attrition;
