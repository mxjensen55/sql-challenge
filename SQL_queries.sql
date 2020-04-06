--Question 1: Employee Details 
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no

--Question 2: Employees Hired in 1986
SELECT * 
FROM employees 
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01'
ORDER BY hire_date

--Question 3: List the manager of each department

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from employees as e
JOIN dept_manager dm ON e.emp_no=dm.emp_no
JOIN departments d ON dm.dept_no=d.dept_no

--Question 4: Departments of Each Employee
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dep_emp de ON e.emp_no=de.emp_no
JOIN departments d on d.dept_no=de.dept_no

--Question 5: All employees with first name "Hercules" and last name starts with 'B'
SELECT * FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%'

--Question 6: List all employees in sales. Include emp#, last name, first name, and dept name

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e 
JOIN dep_emp de ON e.emp_no=de.emp_no
JOIN departments dp ON dp.dept_no=de.dept_no
WHERE dept_name = 'Sales'

--Question 7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees AS e 
JOIN dep_emp de ON e.emp_no=de.emp_no
JOIN departments dp ON dp.dept_no=de.dept_no
WHERE dept_name = 'Sales' OR dept_name= 'Development'

--Question 8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

 SELECT last_name, count(*) 
 FROM employees
 GROUP BY last_name
 ORDER BY count DESC




