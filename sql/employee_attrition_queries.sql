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


-- Query 3: 
-- Question: Which job roles have the highest attrition rate? 

SELECT 
	jobrole,
	COUNT(*) AS total_employees, 
	SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
	ROUND(
		SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
		2
		) AS attrition_rate
FROM hr_attrition
GROUP BY jobrole
ORDER BY attrition_rate DESC;


-- Query 4: 
-- Question: Does overtime contribute to employee turnover? 

SELECT
    overtime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM hr_attrition
GROUP BY overtime
ORDER BY attrition_rate DESC;


-- Query 5: 
-- Question: Is employee compensation associated to attrition? 

SELECT
    CASE
        WHEN monthlyincome < 3000 THEN 'Under $3,000'
        WHEN monthlyincome BETWEEN 3000 AND 5999 THEN '$3,000 - $5,999'
        WHEN monthlyincome BETWEEN 6000 AND 9999 THEN '$6,000 - $9,999'
        ELSE '$10,000+'
    END AS income_group,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate
FROM hr_attrition
GROUP BY income_group
ORDER BY attrition_rate DESC;


-- Query 6: 
-- Question: Does job satisfaction influence employee attrition 

SELECT
    CASE
        WHEN jobsatisfaction = 1 THEN 'Low'
        WHEN jobsatisfaction = 2 THEN 'Medium'
        WHEN jobsatisfaction = 3 THEN 'High'
        WHEN jobsatisfaction = 4 THEN 'Very High'
    END AS job_satisfaction,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS attrition_rate
FROM hr_attrition
GROUP BY jobsatisfaction
ORDER BY jobsatisfaction;


-- Query 7: 
-- Question: Does work life balance affect employee turnover? 

SELECT
    CASE
        WHEN worklifebalance = 1 THEN 'Bad'
        WHEN worklifebalance = 2 THEN 'Good'
        WHEN worklifebalance = 3 THEN 'Better'
        WHEN worklifebalance = 4 THEN 'Best'
    END AS work_life_balance,
    COUNT(*) AS total_employees,
    SUM(
        CASE
            WHEN attrition = 'Yes' THEN 1
            ELSE 0
        END
    ) AS employees_left,
    ROUND(
        SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM hr_attrition
GROUP BY worklifebalance
ORDER BY worklifebalance;
