-- List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date = 1986
-- check this

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
    FROM departments AS d
	    JOIN dept_manager AS m ON d.dept_no = m.dept_no
		JOIN employees AS e ON m.emp_no = e.emp_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
    FROM employees AS e
        JOIN dept_emp AS de ON e.emp_no = de.emp_no
		JOIN departments AS d ON de.dept_no = d.dept_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex FROM employees WHERE first_name = 'Hercules' AND last_name[0] = 'B'
-- check this

-- List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT e.emp_no, e.last_name, e.first_name
    FROM employees AS e 
	    JOIN dept_emp AS de ON e.emp_no = de.emp_no
	    JOIN departments AS d ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)