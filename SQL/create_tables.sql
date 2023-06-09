CREATE DATABASE  Laboratory;

USE Laboratory;

CREATE TABLE Groups
(
    gr_id INT PRIMARY KEY IDENTITY NOT NULL,
    gr_name VARCHAR(124) NOT NULL,
	gr_temp INT,
);

CREATE TABLE Analysis
(
    an_id INT PRIMARY KEY IDENTITY NOT NULL,
    an_name VARCHAR(124) NOT NULL,
	an_cost INT NOT NULL,
	an_price INT NOT NULL,
	an_group INT, 
	CONSTRAINT FK_Group FOREIGN KEY (an_group) REFERENCES Groups (gr_id) 
	ON DELETE SET NULL
	ON UPDATE CASCADE
);

CREATE TABLE Orders
(
    ord_id INT PRIMARY KEY IDENTITY NOT NULL,
    ord_datetime DATETIME NOT NULL,
	ord_an INT NOT NULL,
	CONSTRAINT FK_Analysis FOREIGN KEY (ord_an) REFERENCES Analysis (an_id) 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
