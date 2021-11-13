-- Drop Tables if Existing
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles; 

CREATE TABLE "departments" (
"dept_no" VARCHAR NOT NULL,
"dept_name" VARCHAR NOT NULL,
constraint "pk_departments" PRIMARY KEY("dept_no"));

select * from departments;

CREATE TABLE "employees" (
"emp_no" INT NOT NULL,
"empemp_title_id" VARCHAR NOT NULL,
"birth_date" DATE NOT NULL,
"first_name" VARCHAR NOT NULL,
"last_name" VARCHAR NOT NULL,
"sex" VARCHAR NOT NULL,
"hire_date" DATE NOT NULL,
CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);

select * from employees;

CREATE TABLE "dept_emp" (
"emp_no" int NOT NULL,
"dept_no" VARCHAR NOT NULL,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);

select * from dept_emp;

CREATE TABLE "dept_manager" (
"dept_no" VARCHAR NOT NULL,
"emp_no" INT NOT NULL,
FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

select * from dept_manager;

create table "salaries" (
"emp_no" INT NOT NULL,
"salary" INT,
FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

select * from salaries;

CREATE TABLE "titles" (
"title_id" VARCHAR NOT NULL,
"title" VARCHAR NOT NULL
);

select * from titles;

