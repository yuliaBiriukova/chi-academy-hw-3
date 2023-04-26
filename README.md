# CHI Academy. Homework 2

### Working with MS SQL Server. Executing SQL-queries (CREATE, INSERT, SELECT)

#### Assignment date: 25.04.2023

Database:

There is a table of analyses Analysis:
  - an_id - analysis ID;
  - an_name - name of the analysis;
  - an_cost - cost price of the analysis;
  - an_price - retail price of the analysis;
  - an_group - analysis group.


There is a table of analysis groups Groups:

● gr_id - group ID;

● gr_name - group name;

● gr_temp - storage temperature.


There is a table of orders Orders:

● ord_id - order ID;

● ord_datetime - date and time of the order;

● ord_an - analysis ID.

Tasks:

1. Output the name and price for all analyses that were sold on Feb. 5 2020 and all of the following week.

2. Calculate how the number of tests in each month of each year by group.


#### Solution description

Created database Laboratory with tables Groups, Analysis and Orders (create_tables.sql)

Filled the tables with values (insert_into_tables.sql)

Task 1 executed in task1.sql

Task 2 executed in task2.sql



