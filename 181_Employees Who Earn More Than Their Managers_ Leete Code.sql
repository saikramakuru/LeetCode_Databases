/* 181.Employees who earn more than their managers*/ 

Select a.Name as Employee
From Employee a
		INNER JOIN Employee b
		ON(a.ManagerId = b.Id)
Where a.Salary> b.Salary 