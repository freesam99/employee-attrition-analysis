-- =====================================================
-- Import Employee Attrition Dataset
-- =====================================================

COPY hr_attrition
FROM '/path/to/employee_attrition.csv'
DELIMITER ','
CSV HEADER;

-- Replace the file path above with the location
-- of employee_attrition.csv on your computer.
