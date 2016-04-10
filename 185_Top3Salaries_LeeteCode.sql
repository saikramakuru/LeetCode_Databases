Use Practice

Create table Department (
Id int PRIMARY KEY,
Name varchar(40)
); 


Create table Employee
( Id int primary key,
	Name varchar(20),
	Salary float,
	DepartmentId int,
	Foreign Key(DepartmentId) references Department(Id)

);

Select * from Employee

Select * from Department

/* Leete Code 185 Write a SQL query to find employees who earn the top three salaries in each of the department.*/

 Select D.Name as Department
, E.Name as Employee
, E.Salary as Salary 
From Employee E 
		Inner Join Department D
		on( E.DepartmentID = D.Id)
Where (Select Count(Distinct(E2.Salary))
				FROM Employee E2
				Where E2.DepartmentId = E. DepartmentId
				AND E2.Salary > E.Salary)<3				
Order By E.DepartmentId, E.Salary DESC
