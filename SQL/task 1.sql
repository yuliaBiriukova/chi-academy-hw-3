USE Laboratory;

SELECT an_name, an_price, ord_datetime FROM Orders 
JOIN Analysis ON ord_an = an_id
WHERE ord_datetime BETWEEN '2020-02-05' AND DATEADD(day, 7, '2020-02-05');