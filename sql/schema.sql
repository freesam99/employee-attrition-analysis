-- =====================================================
-- Employee Attrition Analysis
-- Schema Definition
-- Creates the hr_attrition table used for analysis
-- =====================================================

DROP TABLE IF EXISTS hr_attrition;

CREATE TABLE hr_attrition (
    age INTEGER,
    attrition CHARACTER VARYING(5),
    businesstravel CHARACTER VARYING(50),
    dailyrate INTEGER,
    department CHARACTER VARYING(50),
    distancefromhome INTEGER,
    education INTEGER,
    educationfield CHARACTER VARYING(50),
    employeecount INTEGER,
    employeenumber INTEGER PRIMARY KEY,
    environmentsatisfaction INTEGER,
    gender CHARACTER VARYING(10),
    hourlyrate INTEGER,
    jobinvolvement INTEGER,
    joblevel INTEGER,
    jobrole CHARACTER VARYING(50),
    jobsatisfaction INTEGER,
    maritalstatus CHARACTER VARYING(10),
    monthlyincome INTEGER,
    monthlyrate INTEGER,
    numcompaniesworked INTEGER,
    over18 CHARACTER(1),
    overtime CHARACTER VARYING(5),
    percentsalaryhike INTEGER,
    performancerating INTEGER,
    relationshipsatisfaction INTEGER,
    standardhours INTEGER,
    stockoptionlevel INTEGER,
    totalworkingyears INTEGER,
    trainingtimeslastyear INTEGER,
    worklifebalance INTEGER,
    yearsatcompany INTEGER,
    yearsincurrentrole INTEGER,
    yearssincelastpromotion INTEGER,
    yearswithcurrmanager INTEGER
);
