# employee-attrition-analysis
# Employee Attrition Analysis Using PostgreSQL 

## Project Overview 

Employee turnover can be costly for organizations due to recruiting expenses, training costs, and stalled productivity. The goal of this project is to analyze employee attrition data and identify factors associated with employees leaving the company. 

Using the IBM HR Analystics Employee Attrition & Performance dataset, I performed exploratory data analysis and SQL-based investigations to uncover patterns related to attritiion. 

---

## Business Questions 

This project explores the following questions: 

- What is the overall employee attrition rate? 
- Which departments experience the highest turnover?
- Which job roles have the highest attrition rates?
- Does overtime contribute to employee turnover?
- Is compensation associated with attrition?
- Does job satisfaction impact retention? 
- Does work-life balance affect employee turnover? 
- Which employee groups appear to be at the highest risk of attrition? 

---

## Dataset 

**Source:** IBM HR Analysitics Employee Attrition & Performance Dataset 

For a complete description of all variables, see the [Data Dictionary](documentation/data_dictionary.md).

**Dataset Size:** 
- 1,470 employee records 
- 35 employee related attritbutes

### Variables used Throughout the Project

- Age
- Attrition
- BusinessTravel
- DailyRate
- Department
- EnvironmentSatisfaction
- JobRole
- JobSatisfaction
- MaritalStatus
- MonthlyIncome
- OverTime
- RelationshipSatisfaction
- WorkLifeBalance
- YearsAtCompany

--- 

## Software/Technology Used 

- PostgreSQL
- pgAdmin 4
- SQL
- Tableau
- Git
- Github

---

# Repository Structure 

```
employee-attrition-analysis/
│
├── README.md
├── data/
│   └── employee_attrition.csv
│
├── sql/
│   ├── schema.sql
│   ├── import_data.sql
│   └── analysis_queries.sql
│
├── documentation/
│   ├── data_dictionary.md
│   └── analysis_summary.md
│
├── visualizations/
│
└── dashboard/
    └── employee_attrition_dashboard.twb
```

---

## Repository Contents

| File/Folder | Description |
|-------------|-------------|
| `README.md` | Project overview, business questions, repository structure, and documentation. |
| `data/employee_attrition.csv` | Original IBM HR Analytics Employee Attrition & Performance dataset used for the analysis. |
| `sql/schema.sql` | Creates the PostgreSQL table and defines the database schema. |
| `sql/import_data.sql` | Imports the employee attrition dataset into PostgreSQL. |
| `sql/analysis_queries.sql` | SQL queries used to answer each business question and perform the employee attrition analysis. |
| `documentation/data_dictionary.md` | Describes each variable in the dataset, including definitions and possible values. |
| `documentation/analysis_summary.md` | Summarizes the key findings and business insights from the SQL analysis. |
| `visualizations/` | Charts and graphs created from the SQL query results for easier interpretation. |
| `dashboard/employee_attrition_dashboard.twb` | Tableau workbook containing an interactive employee attrition dashboard. |
