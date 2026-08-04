# employee-attrition-analysis
# Employee Attrition Analysis Using PostgreSQL 

## Project Overview 

Employee turnover can be costly for organizations due to recruiting expenses, training costs, and stalled productivity. The goal of this project is to analyze employee attrition data and identify factors associated with employees leaving the company. 

Using the IBM HR Analytics Employee Attrition & Performance dataset, I performed exploratory data analysis and SQL-based investigations to uncover patterns related to attrition. 

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
## Key Findings

Throughout this analysis, several important patterns emerged regarding employee attrition:

- **Overall Attrition:** The overall employee attrition rate was **16.12%**, with **237** of **1,470** employees leaving the company.
- **Department:** The **Sales** department experienced the highest departmental attrition rate at **20.63%**.
- **Job Role:** **Sales Representatives** had the highest job role attrition rate at **39.76%**, indicating significant retention challenges within this position.
- **Overtime:** Employees working **overtime** experienced an attrition rate of **30.53%**, nearly **three times** higher than employees who did not work overtime (**10.44%**).
- **Monthly Income:** Employees earning **under $3,000 per month** had the highest attrition rate (**28.61%**), while employees earning **$10,000 or more** had the lowest (**8.90%**).
- **Job Satisfaction:** Employees reporting **low job satisfaction** experienced higher turnover than employees with **very high** job satisfaction.
- **Work-Life Balance:** Employees reporting **bad** work-life balance had the highest attrition rate (**31.25%**) among all work-life balance groups.
- **High-Risk Groups:** Combining department, job role, and overtime revealed that the **highest-risk employee groups consistently involved employees working overtime**, reinforcing overtime as one of the strongest factors associated with employee attrition in this dataset.

---
## Dataset 

**Source:** [IBM HR Analytics Employee Attrition & Performance Dataset](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset) 

> **Note:** This dataset is a fictional HR dataset created by IBM data scientists for educational and analytical purposes. It does not contain real employee information.

For a complete description of all variables, see the [Data Dictionary](documentation/data_dictionary.md).

**Dataset Size:** 
- 1,470 employee records 
- 35 employee related attributes

### Variables used Throughout the Project

- Attrition
- Department
- JobRole
- OverTime
- MonthlyIncome
- JobSatisfaction
- WorkLifeBalance

--- 

## Software/Technology Used 

- PostgreSQL
- pgAdmin 4
- SQL
- Tableau
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
│   └── employee_attrition_queries.sql
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
| `sql/employee_attrition_queries.sql` | SQL queries used to answer each business question and perform the employee attrition analysis. |
| `documentation/data_dictionary.md` | Describes each variable in the dataset, including definitions and possible values. |
| `documentation/analysis_summary.md` | Summarizes the key findings and business insights from the SQL analysis. |
| `visualizations/` | Charts and graphs created from the SQL query results for easier interpretation. |
| `dashboard/employee_attrition_dashboard.twb` | Tableau workbook containing an interactive employee attrition dashboard. |
