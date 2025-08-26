CREATE DATABASE StudentData;
USE StudentData;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Marks INT,
    City VARCHAR(50)
);

INSERT INTO Students (StudentID, Name, Age, Marks, City) VALUES
(1, 'kavya', 19, 88, 'Chennai'),
(2, 'sathh', 20, 69, 'Mumbai'),
(3, 'gali', 18, 55, 'Delhi'),
(4, 'thomas', 21, 90, 'Chennai'),
(5, 'rose', 19, 70, 'Bangalore');

 -- RELATIONAL OPERATORS

SELECT * FROM Students WHERE City = "Mumbai";

SELECT * FROM Students WHERE Marks != 69;

SELECT * FROM Students WHERE Marks > 70;

SELECT * FROM Students WHERE Marks < 70;

SELECT * FROM Students WHERE Age >= 19;

SELECT * FROM Students WHERE Age <= 18;

-- LOGICAL OPERATORS

SELECT * FROM Students WHERE Age > 18 AND Marks > 70;

SELECT * FROM Students WHERE City = 'Chennai' OR Marks > 90;

SELECT * FROM Students WHERE NOT City = 'Delhi';