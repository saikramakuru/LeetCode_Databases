/*184. Department Highest Salary*/

Select Con.Salary as Salary, Dept.Name as Department, Emp.Name as Employee 
From Employee Emp

INNER JOIN
 (Select DepartmentId, Max(Salary) as Salary 
		 From Employee 
		 Group by (DepartmentId)) AS Con
ON(Con.DepartmentId = Emp.DepartmentId AND Con.Salary = Emp.Salary)

INNER JOIN 
Department Dept
ON (Emp.DepartmentId = Dept.Id)
