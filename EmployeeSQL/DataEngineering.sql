--Create new table
CREATE TABLE employees (
 emp_no INT PRIMARY KEY,
 emp_title_id VARCHAR(10) NOT NULL,
 birth_date DATE NOT NULL,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 sex CHAR(1) NOT NULL,
 hire_date DATE NOT NULL
);

-- View the table datas
SELECT *
FROM employees;

--Create new table
CREATE TABLE departments (
 dept_no VARCHAR(10) PRIMARY KEY,
 dept_name VARCHAR(50) NOT NULL
);

-- View the table datas
SELECT *
FROM departments;

--Create new tables
CREATE TABLE dept_emp (
 emp_no INT,
 dept_no VARCHAR(10),
 PRIMARY KEY (emp_no, dept_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
 dept_no VARCHAR(10),
 emp_no INT,
 PRIMARY KEY (dept_no, emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
emp_no INT PRIMARY KEY,
salary INT NOT NULL
);

CREATE TABLE titles (
title_id VARCHAR(10) PRIMARY KEY,
title VARCHAR(255)
);

-- View the table datas
SELECT *
FROM dept_manager;

SELECT *
FROM dept_emp;

SELECT *
FROM salaries;

SELECT *
FROM titles;