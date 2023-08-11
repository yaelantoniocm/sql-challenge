CREATE TABLE Titles (
    Title_id VARCHAR(50) PRIMARY KEY,
    Title VARCHAR(255)
);

CREATE TABLE Employees (
    Emp_no INT PRIMARY KEY,
    Title_id VARCHAR(50) , 
    Birth_date DATE,
    First_name VARCHAR(255),
    Last_name VARCHAR(255),
    Sex VARCHAR(1),
    Hire_date DATE,
	FOREIGN KEY (Title_id) REFERENCES Titles(Title_id)
);

CREATE TABLE Departments (
	Depto_no VARCHAR(255) PRIMARY KEY,
	Dept_name VARCHAR(255)
);


CREATE TABLE Dept_Manager (
	Depto_no VARCHAR(255),
	Emp_no INT,
    FOREIGN KEY (Depto_no) REFERENCES Departments(Depto_no),
    FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no)
);


CREATE TABLE Dept_Emp (
    Emp_no INT,
	Depto_no VARCHAR(255),
    FOREIGN KEY (Depto_no) REFERENCES Departments(Depto_no),
    FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no)
);

CREATE TABLE Salaries (
    Emp_no INT,
	Salary INT,
    FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no)
);