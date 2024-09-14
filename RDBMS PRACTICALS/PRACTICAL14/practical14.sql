use arpit;
create table stock(item_code int primary key, item_name varchar(100), current_stock int, last_purchase_date date);
insert into stock values
(1, 'Item 1', 10, '2023-04-01'),
(2, 'Item 2', 20, '2024-04-01'),
(3, 'Item 3', 30, '2024-04-01');
select*from stock;
DELIMITER //
create procedure updateorDeleteItem(in code int)
begin
declare last_purchase date; 
select last_purcahse_date into last_purchase from stock where item_code = code;
if datediff (curdate(),last_purchase)>365 then delete from stock where item_code=code;
else
update stock set current_stock=current_stock+1 where item_code=code;
end if;
End //
DELIMITER ;
call updateorDeleteItem(1);
call updateorDeleteItem(2);
call updateorDeleteItem(3);
select*from stock;