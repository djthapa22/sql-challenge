Drop Table if exists titles,employees,departments,dept_manager,dept_emp,salaries cascade;

Create Table titles(
	title_id Varchar(30) Not Null,
	title Varchar(30) Not Null,
	Primary Key (title_id)
);

Create Table employees(
	emp_no INT NOT NULL, 
	title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(30),
	hire_date  DATE,
	Primary Key (emp_no),
	Foreign Key (title_id) REFERENCES titles(title_id)
);

Create table departments(
	dept_no VARCHAR (30), 
	dept_name VARCHAR(30),
	Primary Key (dept_no)
);

Create table dept_manager(
	dept_no VARCHAR,
	emp_no INT,
	Foreign Key (dept_no) REFERENCES departments(dept_no),
	Foreign Key (emp_no) REFERENCES employees(emp_no),
	Primary Key (dept_no,emp_no)
);

Create Table dept_emp (
	emp_no INT,
	dept_no Varchar,
	Foreign Key (dept_no) REFERENCES departments(dept_no),
	Foreign Key (emp_no) REFERENCES employees(emp_no),
	Primary Key (dept_no,emp_no)
);

Create Table salaries(
	emp_no INT,
	salary INT NOT NULL,
	Foreign Key (emp_no) REFERENCES employees(emp_no),
	Primary Key (emp_no)
);

--Testing table data
select * from departments;
select * from dept_emp;
