use arpit;
CREATE TABLE Customer (customer_id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100),account_number VARCHAR(20),balance DECIMAL(10, 2) DEFAULT 0); 
INSERT INTO Customer (name, account_number, balance) VALUES('Arpit', 'ACC123456', 50000),('Abhishek', 'ACC789012', 10000),('Ankur', 'ACC345678', 5000);
select*from Customer;
UPDATE Customer SET balance = balance - 2000 WHERE customer_id = 1; 
UPDATE Customer SET balance = balance + 5000 WHERE customer_id = 2;
SELECT customer_id,name, account_number, balance, CASE WHEN balance > 50000 THEN 'PLATINUM' WHEN balance > 10000 THEN 'GOLD' ELSE 'SILVER' END AS customer_level FROM Customer; 
