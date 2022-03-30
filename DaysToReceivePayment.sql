SELECT DaystoPaybyInvo.Customer, Avg(DaystoPaybyInvo.[Days To Pay]) AS ADTP
FROM DaystoPaybyInvo
GROUP BY DaystoPaybyInvo.Customer;