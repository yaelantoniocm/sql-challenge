---List the employee number, last name, first name, sex, and salary of each employee.
SELECT
    Employees.Emp_no,
    Employees.Last_name,
    Employees.First_name,
    Employees.Sex,
    Salaries.Salary
FROM
    Employees
JOIN
    Salaries ON Employees.Emp_no = Salaries.Emp_no;


---List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
    First_name,
    Last_name,
    Hire_date
FROM
    Employees
WHERE
    EXTRACT(YEAR FROM Hire_date) = 1986;

---List the manager of each department along with their department number, 
---department name, employee number, last name, and first name.
SELECT
    Departments.Depto_no AS Department_Number,
    Departments.Dept_name AS Department_Name,
    Dept_Manager.Emp_no AS Manager_Employee_Number,
    Employees.Last_name AS Manager_Last_Name,
    Employees.First_name AS Manager_First_Name
FROM
    Departments
JOIN
    Dept_Manager ON Departments.Depto_no = Dept_Manager.Depto_no
JOIN
    Employees ON Dept_Manager.Emp_no = Employees.Emp_no;


---List the department number for each employee along with that employee’s employee number,
---last name, first name, and department name.
SELECT
    E.Emp_no AS Employee_Number,
    E.Last_name AS Employee_Last_Name,
    E.First_name AS Employee_First_Name,
    E.Depto_no AS Employee_Department_Number,
    D.Dept_name AS Employee_Department_Name
FROM
    Employees E
JOIN
    Departments D ON E.Depto_no = D.Depto_no;


---List first name, last name, 
---and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
    First_name AS Employee_First_Name,
    Last_name AS Employee_Last_Name,
    Sex AS Employee_Sex
FROM
    Employees
WHERE
    First_name = 'Hércules' AND Last_name LIKE 'B%';



---List each employee in the Sales department, including their employee number, last name, and first name.
SELECT
    Employees.Emp_no AS Employee_Number,
    Employees.Last_name AS Employee_Last_Name,
    Employees.First_name AS Employee_First_Name
FROM
    Employees
JOIN
    Departments ON Employees.Depto_no = Departments.Depto_no
WHERE
    Departments.Dept_name = 'Sales';


---List each employee in the Sales and Development departments, including their employee number,
---last name, first name, and department name.
SELECT
    E.Emp_no AS Employee_Number,
    E.Last_name AS Employee_Last_Name,
    E.First_name AS Employee_First_Name,
    D.Dept_name AS Department_Name
FROM
    Employees E
JOIN
    Departments D ON E.Depto_no = D.Depto_no
WHERE
    D.Dept_name IN ('Sales', 'Development');



---List the frequency counts, in descending order,
---of all the employee last names (that is, how many employees share each last name).
SELECT
    Last_name AS Employee_Last_Name,
    COUNT(*) AS Frequency
FROM
    Employees
GROUP BY
    Last_name
ORDER BY
    Frequency DESC;


