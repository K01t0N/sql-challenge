titles
-
title_id varchar PK
title

employees
-
emp_no integer PK
emp_title_id varchar FK >- titles.title_id
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salaries
-
emp_no integer PK FK - employees.emp_no
salary integer

departments
-
dept_no varchar PK
dept_name varchar

dept_emp
-
id serial PK
emp_no integer FK >- employees.emp_no
dept_no var_char FK >- departments.dept_no

dept_manager
-
id serial PK
dept_no varchar FK >- departments.dept_no
emp_no integer FK >- employees.emp_no