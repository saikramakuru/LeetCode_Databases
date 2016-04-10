Use Practice

Create table Weather(
Id int PRIMARY KEY IDENTITY(1,1),
Date Date,
Temperature Float)

Select * from Weather

Select W1.Id 
From Weather W1, Weather W2 
Where DATEPART(dd, W1.Date) = ( DATEPART (dd, W2.Date) +1)
AND W1.Temperature> W2.Temperature