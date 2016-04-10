/*184. Department Highest Salary*/

Select Salary as Salary, E1.Name as Employee, D.Name as Department
From Employee E1
INNER JOIN Department D
ON (E1.DepartmentId = D.Id)
Where Salary IN (Select max(Salary) as Salary
	From Employee E
	Group By DepartmentId)
