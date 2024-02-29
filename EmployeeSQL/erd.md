departments
-
dept_no varchar PK
dept_name varchar

dept_emp
-
emp_no integer PK FK >- employees.emp_no
dept_no varchar FK >- departments.dept_no

dept_manager
-
dept_no varchar FK >- departments.dept_no
emp_no integer PK FK >- employees.emp_no

employees
-
emp_no integer PK
emp_title_id varchar FK >- titles.title_id
birth_date
first_name varchar
last_name varchar
sex varchar
hire_date

salaries
-
emp_no integer PK FK >- employees.emp_no
salary integer

titles
-
title_id varchar PK
title varchar