use arpit;
create table stock(item_code int primary key, item_name varchar(100), current_stock int, last_purchase_date date);
desc stock;
INSERT INTO Stock (item_code, item_name, current_stock, last_purchase_date) VALUES
(1, 'Item 1', 10, '2023-04-01'),
(2, 'Item 2', 20, '2024-01-01'),
(3, 'Item 3', 30, '2024-04-01');
select*from stock;
DELIMITER //
CREATE PROCEDURE UpdateorDeleteItem (IN Code INT)
BEGIN
DECLARE last_purchase DATE;
SELECT last_purchase_date into last_purchase FROM stock WHERE item_code=code;
IF DATEDIFF (CURDATE(), last_purchase)>365 THEN DELETE FROM stock WHERE item_code=code;
ELSE
UPDATE stock SET current_stock=current_stock+1 WHERE item_code=code;
END IF;
END // 
DELIMITER ;
call UpdateorDeleteItem(1);
call UpdateorDeleteItem(2);
call UpdateorDeleteItem(3);