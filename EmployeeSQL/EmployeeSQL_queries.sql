
-- List the employee number, last name, first name, sex, and salary of each employee

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
from employees e
inner join salaries s 
on e.emp_no = s.emp_no
;

-- List the first name, last name, and hire date for the employees who were hired in 1986

select e.first_name, e.last_name, e.hire_date
from employees e
where e.hire_date between '1986-01-01' and '1986-12-31'
order by e.hire_date
;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_managers dm
inner join departments d 
on dm.dept_no = d.dept_no
inner join employees e 
on dm.emp_no = e.emp_no
;


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name

select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp de
inner join employees e 
on de.emp_no = e.emp_no
inner join departments d 
on d.dept_no = de.dept_no
order by e.emp_no
;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

select e.first_name, e.last_name, e.sex
from employees e 
where e.first_name = 'Hercules'
and 
e.last_name like 'B%'
;

-- List each employee in the Sales department, including their employee number, last name, and first name

select e.emp_no, e.last_name, e.first_name 
from employees e
where e.emp_no in(
	select de.emp_no from dept_emp de 
	where de.dept_no = 'd007'
	)
;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e 
inner join dept_emp de 
on de.emp_no = e.emp_no
inner join departments d 
on de.dept_no = d.dept_no
where d.dept_no = 'd007' OR de.dept_no = 'd005'
;

-- List the frequency counts, in descending order, of all the employee last names

select count(e.emp_no), e.last_name 
from employees e 
group by e.last_name
order by e.last_name desc
;


