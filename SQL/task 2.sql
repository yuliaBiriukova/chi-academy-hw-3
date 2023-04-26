USE Laboratory;

SELECT YEAR(ord_datetime) AS 'year', 
MONTH(ord_datetime) AS 'month', an_group, 
(SELECT gr_name FROM Groups WHERE gr_id = an_group) AS gr_name, 
COUNT(ord_an) AS orders
FROM Orders
JOIN Analysis ON ord_an = an_id
JOIN Groups ON an_group = gr_id
GROUP BY YEAR(ord_datetime), MONTH(ord_datetime), an_group
ORDER BY 'year', 'month', an_group;













