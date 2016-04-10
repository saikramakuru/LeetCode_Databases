/* Write your MySQL query statement below
Solution to problem 182. Repeated Emails*/ 

Select distinct(p1.Email) as Email
from 
Person p1, Person p2
Where 
p1.Email = p2.Email 
AND p1.ID != p2.ID