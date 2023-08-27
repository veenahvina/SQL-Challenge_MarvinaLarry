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