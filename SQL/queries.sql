--Data Analysis
--1) List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp.emp_no "Employee Number",emp.last_name "Last Name", emp.first_name "First Name", emp.sex "Sex", sal.salary "Salary"
from employees emp
left join salaries sal on emp.emp_no = sal.emp_no;

--2) List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date between date '1986-01-01' and date '1986-12-31';

--3) List the manager of each department with the following information: department number, department name,
--the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from departments d
left join dept_manager m on d.dept_no = m.dept_no
left join employees e on m.emp_no = e.emp_no;

--4) List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
select emp.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp emp
left join employees e on emp.emp_no = e.emp_no
left join departments d on emp.dept_no = d.dept_no;

--5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees e
left join dept_emp de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees e
left join dept_emp de on e.emp_no = de.emp_no
left join departments d on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

--8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*) "frequency_of_last_names"
from employees
group by last_name
order by "frequency_of_last_names" desc;

