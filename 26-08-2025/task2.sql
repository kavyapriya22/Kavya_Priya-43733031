CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2)
);
INSERT INTO Employees (ID, Name, Department, Salary) VALUES
(1, 'Kavya', 'HR', 35000),
(2, 'Priya', 'IT', 50000),
(3, 'Arjun', 'Sales', 42000),
(4, 'Sneha', 'IT', 48000),
(5, 'Ramesh', 'Finance', 39000),
(6, 'Divya', 'HR', 37000);

SELECT Name, Department, Salary
FROM Employees
WHERE Department IN ('HR', 'IT');

SELECT Name, Department, Salary
FROM Employees
WHERE Department NOT IN ('HR', 'IT');

SELECT * FROM employees
where salary BETWEEN 35000 AND 40000;
