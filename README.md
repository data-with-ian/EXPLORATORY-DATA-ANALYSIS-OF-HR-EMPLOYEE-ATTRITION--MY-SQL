# HR EMPLOYEE ATTRITION EXPLORATORY DATA ANALYSIS- MY SQL

### PROJECT OVERVIEW

Employee attrition refers to the process where employees leave a company through various means, such as voluntary resignations, layoffs, failure to return from a leave of absence, illness, or death. In this project, I conducted an exploratory data analysis (EDA) of employee attrition within a company by querying a dataset using SQL. I initiated the project by developing a hypothetical scenario where I assume the role of a data analyst within the company.

### TABLE OF CONTENTS

- [CASE SITUATION](#case-situation)
- [DATA SOURCE](#data-source)
- [TOOLS USED](#tools-used)
- [FINDINGS](#findings)
  
### CASE SITUATION


Imagine you are a data analyst working at a company. The company’s manager provides you with an HR Employee Attrition CSV dataset and assigns several tasks to derive insights from the data. The company pays the employees in dollars.

#### Tasks:
1.	Determine the total number of employees in the dataset.
2.	Calculate the average age of employees.
3.	Identify the number of employees in each department.
4.	Compute the average monthly income for employees by department.
5.	Count the number of employees who have left the company (attrition).
6.	Compare the average years at the company for employees who have left versus those who have stayed.
7.	Analyze the distribution of employees by job role.
8.	Identify the highest and lowest salaries in the dataset.
9.	Count the number of employees with more than 5 years of experience at the company.
10.	Determine the gender distribution of employees in each department.
11.	Calculate the average distance from home for employees who have left the company.
12.	Count the number of employees in the highest performance rating category.
13.	Calculate the average years since the last promotion for employees who have left the company.
14.	Analyze how many employees work overtime and how this correlates with attrition.
15.	Compare the average number of companies worked at by employees who have left versus those who have stayed.
16.	Count the number of employees with a work-life balance rating of 1.
17.	Count the number of employees in each department who have received a promotion in the last 5 years.

### DATA SOURCE

I sourced the dataset from Kaggle as a CSV file and includes 1471 entries with 35 columns. The dataset comprises the following columns:

Age, Attrition, BusinessTravel, DailyRate, Department, DistanceFromHome, Education, EducationField, EmployeeCount, EmployeeNumber, EnvironmentSatisfaction, Gender, HourlyRate, JobInvolvement, JobLevel, JobRole, JobSatisfaction, MaritalStatus, MonthlyIncome, MonthlyRate, NumCompaniesWorked, Over18, OverTime, PercentSalaryHike, PerformanceRating, RelationshipSatisfaction, StandardHours, StockOptionLevel, TotalWorkingYears, TrainingTimesLastYear, WorkLifeBalance, YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, YearsWithCurrManager.

Dataset URL:https://www.kaggle.com/datasets/itssuru/hr-employee-attrition

### TOOLS USED

#### Microsoft Excel:

##### Data Cleaning: 
Adjusted row height and column width, checked for duplicates and blank cells (none found).

##### Data Transformation: 
Inserted a table named employee_attrition.

#### MySQL:
##### Creating a Database: 
Established a database named hr_db to store the employee_attrition table columns.

##### Importing Table Columns: 
Used the Data Import Wizard to import the employee_attrition table columns.

##### Data Transformation: 
Standardized column names.

##### Exploratory Data Analysis: 
Employed SQL commands to derive insights for the assigned tasks.

### FINDINGS

1.	Total Number of Employees:  1470 employees.

2.	Average Age of Employees:  37 years.

3.	Number of Employees by Department: 
o	Sales: 446 
o	Research & Development: 961 
o	Human Resources: 63 

4.	Average Monthly Income by Department:
o	Sales: $6959
o	Research & Development: $6281
o	Human Resources: $6655

5.	Number of Employees Who Have Left the Company: 237 employees.

6.	Average Years at the Company:
o	Employees Who Have Left: 5 years
o	Employees Who Have Stayed: 7 years

7.	Distribution of Employees by Job Role:
o	Sales Executive: 326
o	Research Scientist: 292
o	Laboratory Technician: 259
o	Manufacturing Director: 145
o	Healthcare Representative: 131
o	Manager: 102
o	Sales Representative: 83
o	Research Director: 80
o	Human Resources: 52

8.	Highest and Lowest Salary:
o	Highest Salary: $19999
o	Lowest Salary: $1009

9.	Number of Employees with More Than 5 Years of Experience: 694 employees.

10.	Gender Distribution of Employees in Each Department: 
o	Human Resources: 20 females
o	Human Resources: 43 males
o	Research & Development: 379 females
o	Research & Development: 582 males
o	Sales: 189 females
o	Sales: 257 males

11.	Average Distance from Home for Employees Who Have Left the Company: 11 km.

12.	Number of Employees in the Highest Performance Rating Category: 226 employees.

13.	Average Years Since Last Promotion for Employees Who Have Left the Company: 2 years.

14.	Employees Working Overtime and Correlation with Attrition:
o	Employees Who Work Overtime and Have Left: 127
o	Employees Who Work Overtime and Have Stayed: 289

15.	Average Number of Companies Worked at:
o	Employees Who Have Left: 3
o	Employees Who Have Stayed: 3

16.	Number of Employees with a Work-Life Balance Rating of 1: 80 employees.

17.	Number of Employees Who Received a Promotion in the Last 5 Years by Department:
o	Human Resources: 58 employees.
o	Research & Development: 827 employees.
o	Sales: 370 employees.


