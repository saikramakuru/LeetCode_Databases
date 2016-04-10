/* SQL SERVER FUNTION OF DATEPART IS USED */

/* Create table Weather */

Create table Weather(
Id int PRIMARY KEY IDENTITY(1,1),
Date Date,
Temperature Float)

/*197. RISING TEMPERATURES SQL QUERY */


Select W1.Id 
From Weather W1, Weather W2 
Where DATEPART(dd, W1.Date) = ( DATEPART (dd, W2.Date) +1)
AND W1.Temperature> W2.Temperature

/* If you are using MySQL, use TO_Days Funtion */

select w2.Id
from Weather w1, Weather w2 
Where
w1.Temperature < w2.Temperature
AND TO_DAYS(w2.Date)-TO_DAYS(w1.Date) = 1;
