-- List the employee number, last name, first name, sex, and salary of each employee

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees As e
JOIN salaries AS s ON e.emp_no = s.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986

SELECT e.first_name, e.last_name, e.hire_date
FROM employees As e
WHERE hire_date BETWEEN '01/01/86' AND '12/31/86';

--List the manager of each department along with their department number, department name, employee number, last name, and first name

SELECT dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager As dm
JOIN employees As e ON e.emp_no = dm.emp_no
JOIN departments As d ON dm.dept_no = d.dept_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments As d
JOIN dept_emp As de ON de.dept_no = d.dept_no
JOIN employees As e ON de.emp_no = e.emp_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT e.first_name, e.last_name, e.sex
FROM employees As e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments As d
JOIN dept_emp As de ON de.dept_no = d.dept_no
JOIN employees As e ON de.emp_no = e.emp_no
WHERE d.dept_name = 'Sales'

