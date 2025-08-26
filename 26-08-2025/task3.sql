CREATE DATABASE WorkerData;
USE WorkerData;
CREATE TABLE Workers (
    WorkerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Workers (WorkerID, FirstName, Department, Salary) VALUES
(1, 'Kavya', 'HR', 90000),
(2, 'Priya', 'IT', 250000),
(3, 'Varun', 'Finance', 210000),
(4, 'Vikas', 'Admin', 180000),
(5, 'Sneha', 'Sales', 85000),
(6, 'Ramesh', 'IT', 120000),
(7, 'Vivek', 'Marketing', 300000),
(8, 'Divya', 'Admin', 95000),
(9, 'Vinod', 'Finance', 220000),
(10, 'Arjun', 'HR', 150000);

-- Find workers not in HR or Admin with salary between 70000 and 300000

SELECT FirstName, Department, Salary
FROM Workers
WHERE Department NOT IN ('HR', 'Admin') AND Salary BETWEEN 70000 AND 300000;

-- Find workers with first name starting with 'V' and salary greater than or equal to 200000

SELECT FirstName, Department, Salary
FROM Workers
WHERE FirstName LIKE 'V%'
  AND Salary >= 200000;
  
-- Find workers not in Admin with salary < 100000.

SELECT FirstName, Department, Salary
FROM Workers
WHERE Department NOT IN ("Admin")
  AND Salary < 100000;

SELECT MIN(Salary) AS Min_Salary
FROM Workers;

SELECT MAX(Salary) AS Max_Salary
FROM Workers;

SELECT SUM(Salary) AS Total_Salary
FROM Workers;

SELECT COUNT(workerid) AS Total_Workers
FROM Workers;

SELECT MIN(Salary) AS Min_Salary_Above_1L
FROM Workers
WHERE Salary > 100000;

SELECT MIN(Salary) 
FROM Workers 
WHERE Department = 'HR';

-- Find the average salary in the Admin department.

SELECT AVG(Salary) AS Avg_Admin_Salary
FROM Workers
WHERE Department = 'Admin';

-- Total salary for HR and Admin departments combined.

SELECT SUM(Salary) AS Total_HR_Admin_Salary
FROM Workers
WHERE Department IN ('HR', 'Admin');

-- Count employees whose first name starts with 'V'.

SELECT COUNT(*) AS Count_V_Names
FROM Workers
WHERE FirstName LIKE 'V%';

-- Total salary of employees with salary between 50000 and 200000.

SELECT SUM(Salary) AS Total_Salary_50K_to_2L
FROM Workers
WHERE Salary BETWEEN 50000 AND 200000;



