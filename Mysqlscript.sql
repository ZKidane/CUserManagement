Create database MyDB;

USE MyDB;

Create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName  varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName  varchar(50),
Cust_Age  int,
Cust_Gender Char not null,
Cust_Country varchar(255)  not null,
Cust_Salary   double not null,
Primary key (Cust_ID));

ALTER table customers
add bonus int not null;

ALTER table customers
Modify column Cust_Age int not null;

ALTER Table customers
Drop column Cust_NickName;

ALTER Table customers
Drop column bonus;

RENAME Table customers to Customer;

Drop table Customer;

Drop schema mydb;

Create Schema MyDB;

USE MyDB;

Create table customers(
Cust_ID int auto_increment not null,
Cust_FirstName  varchar(255) not null,
Cust_LastName varchar(255) not null,
Cust_NickName  varchar(50),
Cust_Age  int,
Cust_Gender Char not null,
Cust_Country varchar(255)  not null,
Cust_Salary   double not null,
Primary key (Cust_ID));

ALTER Table customers
Drop column Cust_NickName;


INSERT INTO customers
(
Cust_ID, 
Cust_FirstName, 
Cust_LastName,
Cust_Age, 
 Cust_Gender,	
 Cust_Country, 
 Cust_Salary
 )
 VALUES
 (111,	'Nick',	'Jones', null, 'M', 'USA',20000000),
 (222,	'Antony', 'Martial',null, 'M', 'France', 10000000), 
 (333,	'Nebiha', 'Amir', null,	'F', 'Uzbekistan',	36000000),
(444,	'Soresa', 'Hailu', null, 'M', 'Ethiopia',	34000000),
(555,	'Beka',	'Haile', null, 'M', 'kazakhstan', 400000),
(666,	'Nick',	'Jones', null, 'M', 'USA', 20000000),     
(777,	'Poul',	'Pogba', null, 'M', 'France',	20000000),
(888,	'Betty', 'Goje', null, 'F', 'Ethiopia', 70000000
);


UPDATE customers
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 333;

UPDATE customers
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 444;

UPDATE customers
SET Cust_Country = 'Ethiopia'
WHERE Cust_ID = 555;

DELETE FROM customers
Cust_Name
WHERE Cust_ID= 666;




CREATE TABLE Employee(  
      Emp_Id int not null,  
      First_name VARCHAR(30),  
      Last_name VARCHAR(30),  
      Salary Double,  
      City VARCHAR(30),  
      PRIMARY KEY (Emp_Id));  

Drop table employee_details;

ALTER TABLE Employee   
ADD Position VARCHAR(18);  

ALTER TABLE Employee   
Modify column Emp_Id int auto_increment not null;

CREATE DATABASE Company; 

DROP DATABASE Company;  

INSERT INTO employee  
(   
Emp_Id,   
First_name,  
Last_name,  
Salary,  
City,
Position
)  
VALUES   
(101,   
'Akhil',  
'Sharma',  
40000,  
'Bangalore',
'Director' 
);  

INSERT INTO employee  
( Emp_Id, First_name, Last_name, Salary, City, Position )  
VALUES (null, 'Amit', 'Gupta', 50000, 'Mumbai', 'Secretary'), (null, 'John', 'Aggarwal', 45000, 'Calcutta', 'Expert'), (null, 'Sidhu', 'Arora', 55000, 'Mumbai', 'Accountant');

INSERT INTO employee  
( Emp_Id, First_name, Last_name, Salary, City, Position )  
VALUES (null, 'Ahmed', 'Yasin', 50000, 'Asmara', 'Technician');

DESCRIBE Employee;

TRUNCATE TABLE Employee;

SELECT DISTINCT City, Salary  
FROM Employee;


DELETE FROM Employee  
WHERE salary = 55000;
COMMIT;

DELETE FROM Employee  
WHERE City = Mumbai;  
ROLLBACK;

CREATE INDEX idx_First_Name  
ON employee (First_Name);

-- Write a query which display all Records from the table?
SELECT * FROM customers;

-- Write a query which display all columns from the table where  there Citizenship is Ethiopian?

SELECT *
FROM customers
 Where Cust_Country = 'Ethiopia';
 
 -- Write a query which display all columns from the table where  there Salary greater than 5million?

SELECT *
FROM customers
 Where Cust_Salary > 5000000;
 
 -- Write a query which display all Male Customers FirstName, LastName and Country?
 
 SELECT *
FROM customers
 Where Cust_Gender = 'M';
 
-- Write a query which display only distinct Country?

SELECT DISTINCT Cust_Country 
FROM customers;

-- Write a query which display all Female Customers FirstName, LastName and Country in  descending?

SELECT * FROM customers
ORDER BY Cust_Gender = 'F', Cust_FirstName, Cust_LastName, Cust_Country desc;

-- Write a query that display all records from the table where Gender female, Here salary is greater than 2million and also Here Citizenship is Ethiopian?

SELECT * 
FROM customers
Where Cust_Gender = 'F';

SELECT * 
FROM customers
Where Cust_Salary > 2000000;

SELECT * 
FROM customers
Where Cust_Country ='Ethiopia';

SELECT * FROM customers
Where Cust_Gender = 'F' and Cust_Salary > 2000000 and Cust_Country ='Ethiopia';

-- Write a query that display all records from the table where there Citizenship is Ethiopian or uzbekistan?

Select *
From customers
where Cust_Country = 'Uzbekistan';

-- Write a query that display Minimum Salary from the table?

SELECT MIN(Cust_Salary) AS SmallestSalary;

-- Write a query that display Maximum Fees from the table?

SELECT MAX(Cust_Salary) AS MaximumSalary
FROM customers;

-- Write a query that display Number of Customer We have in the table?

SELECT COUNT(Cust_ID)
FROM customers;

-- Write a query that display Average Salary from the record?

SELECT AVG(Cust_Salary)
FROM customers;

-- Write a query that display The sum of all customers Fees?

SELECT SUM(Cust_Salary)
FROM customers;

-- Write a query that display all the record where there salary is between 2million and 8million?

Select *
from customers
where Cust_Salary between 2000000 and 8000000;

-- Write a query that display all the record where there firstName start with 'S'?

SELECT * FROM customers
WHERE Cust_FirstName LIKE 'S%';

-- Write a query that display all the record where there firstName have 'e' in the second position and His/er lastName have end with 'e'?

SELECT * FROM customers
WHERE Cust_FirstName LIKE '_e%' and Cust_LastName LIKE '%e';

-- Write a query that display all the record where there LastName that start with 'p' and ends with 'a'?

SELECT * FROM customers
WHERE Cust_LastName LIKE 'p%a';

-- Write a query that display all the customers from Ethiopia, USA and France?

Select * From customers
Where Cust_Country in ('Ethiopia', 'USA', 'France');










Create Schema Company;

USE Company;

Describe Company; 

CREATE DATABASE Student;  

SHOW DATABASES;
USE Student;

CREATE TABLE STUDENTS (  
ID INT                           NOT NULL,  
NAME VARCHAR (20) NOT NULL,  
AGE INT                         NOT NULL,  
ADDRESS CHAR (25),  
PRIMARY KEY (ID)  
);  

DESC STUDENTS;