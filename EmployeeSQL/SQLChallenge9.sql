-- Create a department table
CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);

-- Create an department employee table
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(4) NOT NULL
);

-- Create a department manager table
CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no INT NOT NULL
);

-- Create a employee table
CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id VARCHAR(5) NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  sex BOOLEAN DEFAULT false,
  hire_date DATE NOT NULL
);

-- Create a salary table
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL
);

-- Create a titles table
CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(30) NOT NULL
);