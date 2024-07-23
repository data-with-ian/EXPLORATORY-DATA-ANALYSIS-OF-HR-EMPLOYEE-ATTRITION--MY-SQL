# Create a database to store the table columns.

CREATE DATABASE hr_db;

# Use the database.

USE hr_db;

# Import the columns
# I right clicked tables in the hr_db created then selected  data import wizard option to import the columns.

# Check the columns.

DESCRIBE employee_attrition;

# Create a stored procedure to check columns.

DELIMITER $$
CREATE PROCEDURE check_columns() 
BEGIN
 DESCRIBE employee_attrition;
END $$
DELIMITER $$;

# Invoke the stored procedure for checking columns.

CALL check_columns();

# Standardize the column names by renaming them.

ALTER TABLE employee_attrition
CHANGE `Age` `age` INT,
CHANGE `Attrition` `attrition` VARCHAR(50),
CHANGE `BusinessTravel` `business_travel` VARCHAR(50),
CHANGE `DailyRate` `daily_rate` INT,
CHANGE `Department` `department` VARCHAR(50),
CHANGE `DistanceFromHome`  `distance_from_home` INT, 
CHANGE `Education` `education` INT, 
CHANGE `EducationField` `education_field` VARCHAR(50),
CHANGE `EmployeeCount` `employee_count` INT,
CHANGE `EmployeeNumber` `employee_number` INT, 
CHANGE `EnvironmentSatisfaction` `environment_satisfaction`  INT, 
CHANGE `Gender`  `gender` VARCHAR(50),
CHANGE `HourlyRate` `hourly_rate` INT,
CHANGE `JobInvolvement` `job_involvement` INT,
CHANGE `JobLevel` `job_level`  INT,  
CHANGE `JobRole`  `job_role` VARCHAR(50),
CHANGE `JobSatisfaction` `job_satisfaction` INT, 
CHANGE `MaritalStatus` `marital_status`  VARCHAR(50),
CHANGE `MonthlyIncome` `monthly_income` INT,
CHANGE `MonthlyRate` `monthly_rate` INT,
CHANGE `NumCompaniesWorked` `num_companies_worked` INT, 
CHANGE `Over18`  `over_18`  VARCHAR(50), 
CHANGE `OverTime` `over_time`  VARCHAR(50),
CHANGE `PercentSalaryHike` `percent_salary_hike` INT, 
CHANGE `PerformanceRating` `performance_rating` INT,
CHANGE `RelationshipSatisfaction` `relationship_satisfaction` INT, 
CHANGE `StandardHours`  `standard_hours` INT,
CHANGE `StockOptionLevel`  `stock_option_level` INT, 
CHANGE `TotalWorkingYears` `total_working_years` INT, 
CHANGE `TrainingTimesLastYear` `training_times_last_year` INT,
CHANGE `WorkLifeBalance` `work_life_balance` INT, 
CHANGE `YearsAtCompany` `years_at_company` INT,
CHANGE `YearsInCurrentRole` `years_in_current_role` INT, 
CHANGE `YearsSinceLastPromotion` `years_since_last_promotion` INT,
CHANGE `YearsWithCurrManager` `years_with_curr_manager` INT
;

# Confirm the rows.

SELECT * FROM employee_attrition;

# Create a stored procedure for checking the rows.

DELIMITER $$
CREATE PROCEDURE check_rows()
BEGIN
 SELECT * FROM  employee_attrition;
END $$
DELIMITER $$;

# Invoke the stored procedure for checking rows.
CALL check_rows();

# What is the total number of employees in the dataset?

SELECT COUNT(employee_number)
FROM employee_attrition;

# What is the average age of employees?

SELECT AVG(age)
FROM employee_attrition;

# How many employees belong to each department?

SELECT DISTINCT COUNT(department),department
FROM employee_attrition
GROUP BY department;

#What is the average monthly income for employees by department?

SELECT department, AVG(monthly_income)
FROM employee_attrition
GROUP BY department;

#How many employees have left the company/attrition?

SELECT COUNT(attrition)
FROM employee_attrition
WHERE attrition='Yes';

#What is the average years at the company for employees who have left versus those who have stayed?

SELECT AVG(years_at_company)
FROM employee_attrition
WHERE attrition='Yes';

SELECT AVG(years_at_company)
FROM employee_attrition
WHERE attrition='No';

#What is the distribution of employees by job role?

SELECT COUNT(job_role),job_role
FROM employee_attrition
GROUP BY job_role;

#What is the highest and lowest salary in the dataset?

SELECT MAX(monthly_income),MIN(monthly_income)
FROM employee_attrition;

# How many employees have more than 5 years of experience at the company?

SELECT COUNT(years_at_company)
FROM employee_attrition
WHERE years_at_company>5 ;

# What is the gender distribution of employees in each department?

SELECT department,gender,COUNT(*) AS no_of_employees
FROM employee_attrition
GROUP BY department,gender
ORDER BY department,gender;

# What is the average distance from home for employees who have left the company?

SELECT AVG(distance_from_home)
FROM employee_attrition
WHERE attrition='Yes';

# How many employees are in the highest performance rating category?

SELECT COUNT(performance_rating)AS highest_performance_rating_category 
FROM employee_attrition
WHERE performance_rating=4 ;

# What is the average years since last promotion for employees who have left the company

SELECT AVG(years_since_last_promotion)
FROM employee_attrition
WHERE attrition='Yes';

# How many employees work overtime, and how does this correlate with attrition?

SELECT COUNT(over_time)
FROM employee_attrition
WHERE over_time='Yes' AND attrition='Yes';

SELECT COUNT(over_time)
FROM employee_attrition
WHERE over_time='Yes' AND attrition='No';

# What is the average number of companies worked at by employees who have left versus those who have stayed?

SELECT AVG(num_companies_worked)
FROM employee_attrition
WHERE attrition='Yes';

SELECT AVG(num_companies_worked)
FROM employee_attrition
WHERE attrition='No';

# How many employees have a work-life balance rating of 1?

SELECT COUNT(work_life_balance)
FROM employee_attrition
WHERE work_life_balance = 1;

# How many employees in each department have received a promotion in the last 5 years?

SELECT department,COUNT(*) AS no_of_employees_promoted
FROM employee_attrition
WHERE years_since_last_promotion <= 5
GROUP BY department
ORDER BY department;
