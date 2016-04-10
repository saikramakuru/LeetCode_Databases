/* 183. Customers Who Never Order*/



Select Name as Customers 
from
Customers LEFT JOIN Orders 
On Customers.Id = Orders.CustomerId
WHERE
Orders.CustomerId IS NULL






