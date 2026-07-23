-- Query 1: 
-- Question: What is the overall employee attrition rate? 
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

-- Query 2: 
-- Question: Which departments have the highest turnover? 

SELECT
	department,
	COUNT(*) AS total_employees, 
	SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
	ROUND(
		SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
		2
		) AS attrition_rate
		FROM hr_attrition
		GROUP BY department
		Order BY attrition_rate DESC;
