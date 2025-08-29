use workerdata;

-- List all workers sorted by salary in ascending order

select * from workers order by salary asc;

-- Show all workers in the HR department ordered by salary descending

SELECT * FROM workers WHERE department="HR" ORDER BY salary desc;

-- Find the total salary paid to each department

SELECT department, sum(salary) AS TotalSalary
FROM workers GROUP BY department;

-- Count how many employees are in each department

SELECT department, count(*) AS No_Of_Employees
FROM workers group by department;

-- 1. Count employees not in HR or Admin

SELECT COUNT(*) AS EmployeeCount
FROM Workers
WHERE Department NOT IN ('HR', 'Admin');

-- highest salary in each department

SELECT Department, MAX(Salary) AS HighestSalary
FROM Workers
GROUP BY Department;


SELECT * FROM Workers
ORDER BY workerid
limit 10 offset 5;

SELECT * FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY WORKERID) AS rn
    FROM Workers
) AS temp
WHERE rn > 5;


SELECT * 
FROM Workers
WHERE WorkerID NOT IN (
    SELECT WorkerID 
    FROM (
        SELECT WorkerID 
        FROM Workers
        ORDER BY WorkerID
        LIMIT 5
    ) AS t
);

-- Find departments with average salary > 100000

SELECT department, avg(salary) FROM Workers 
group by department
having avg(salary)>100000;

-- Find departments where max salary is exactly 500000

SELECT department, max(salary) FROM Workers 
group by department
having max(salary)=500000;

-- Find departments with more than 1 employee and total salary > 100000

select department, count(*) as NumEmployees,sum(salary)
 from workers 
 group by department
 having count(*)>1 and sum(salary) >100000;
 
 -- Find departments with avg salary between 50000 and 200000

select department, avg(salary) 
from workers 
group by department
having avg(salary) between 50000 and 200000; 

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Admin'),
(5, 'Sales'),
(6, 'Marketing'),
(7, 'Support');

-- inner join

SELECT W.FirstName, W.Department, D.DeptName
FROM Workers as W
INNER JOIN Departments as D
ON W.Department = D.DeptName;

-- left join

SELECT W.FirstName, W.Department, D.DeptName
FROM Workers W
LEFT JOIN Departments D
ON W.Department = D.DeptName;

--  right join

SELECT D.DeptName, W.FirstName, W.Salary
FROM Workers W
RIGHT JOIN Departments D
ON W.Department = D.DeptName;

-- cross join

SELECT W.FirstName, D.DeptName
FROM Workers W
CROSS JOIN Departments D;





