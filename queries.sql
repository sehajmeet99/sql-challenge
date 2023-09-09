-- 1. List the employee number, last name, first name, sex, and salary of each employee
SELECT employees.emp_no, last_name, first_name, sex, salary FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;

-- 2. List employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date;

-- 3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, 
-- last name, first name, and start and end employment dates.SELECT dept_manager.emp_no, last_name, 
-- first_name, dept_manager.dept_no, dept_name FROM dept_manager
SELECT dm.dept_no, dep.dept_name, emp.emp_no, emp.last_name, emp.first_name
FROM dept_manager AS dm INNER JOIN departments AS dep ON dm.dept_no = dep.dept_no
INNER JOIN employees AS emp ON emp.emp_no = dm.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT dept_emp.dept_no, dept_emp.emp_no, last_name, first_name, dept_name FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
ORDER BY emp_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name
SELECT dept_name, dept_emp.emp_no, last_name, first_name FROM dept_emp
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_emp.dept_no = 'd007'
ORDER BY emp_no;

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM dept_emp AS de INNER JOIN departments AS dep ON de.dept_no = dep.dept_no
INNER JOIN employees AS emp ON emp.emp_no = de.emp_no
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(last_name) AS Frequency FROM employees
GROUP BY last_name ORDER BY Frequency DESC;