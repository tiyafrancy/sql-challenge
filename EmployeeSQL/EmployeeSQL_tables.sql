-- creating tables with provided csv files

create table departments(
dept_no	VARCHAR(10) not null,
dept_name VARCHAR(20),
primary key (dept_no) 					-- setting departments table's primary key
);

create table dept_emp(
emp_no INT not null,
dept_no VARCHAR(10) not null,
primary key (emp_no, dept_no),			-- setting dept_emp table's composite key
foreign key (emp_no) references employees(emp_no),		-- foreign key using employees table's emp_no
foreign key (dept_no) references departments(dept_no)	-- foreign key using departments table's dep_no
);

create table dept_managers(
dept_no	VARCHAR(10) not null,
emp_no INT not null,
primary key (dept_no, emp_no),			-- setting dept_managers table's composite key
foreign key (dept_no) references departments(dept_no),	-- foriegn key using departments table's dept_no
foreign key (emp_no) references employees(emp_no)		-- foreign key using employees table's emp_no
);

create table employees(
emp_no	INT not null,
emp_title_id VARCHAR(10) not null,
birth_date DATE,
first_name VARCHAR(20),
last_name VARCHAR(20),	
sex	VARCHAR(1),
hire_date DATE,
primary key (emp_no),					-- setting employees table's primary key
foreign key (emp_title_id) references titles(title_id)	-- foreign key using titles table's title_id
);


create table salaries(
emp_no INT not null,
salary INT not null,
primary key (emp_no),					-- setting salaries table's primary key
foreign key (emp_no) references employees(emp_no)		-- foreign key using employees table's emp_no
);

create table titles(
title_id VARCHAR(10) not null,
title VARCHAR(20),
primary key (title_id)					-- setting titles table's primary key
);

