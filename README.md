# sql-challenge
In this repository, there is a schema and ERD for a database that includes the provided data for employees of a company. 
A folder of the 6 .csv files used for this project.
A .png image of the Entity Relationship Diagram relating each of the 6 aforementioned files to each other.
An employee_schema.sql file used to build the tables on a local Relational Database Management System (RDBMS).
An employee_analysis.sql file used to manipulate the imported tables and answer questions about the data.
The employee_schema.sql file used to build the tables on a local Relational Database Management System (RDBMS) first designs the tables to hold data in the CSVs, 
then imports the CSVs into a SQL database, and answers questions about the data. 
Data Modeling

Data Engineering
Imports each CSV file into the corresponding SQL table.

Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee (2 points)
2. List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
3. List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
6. List each employee in the Sales department, including their employee number, last name, and first name (2 points)
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
