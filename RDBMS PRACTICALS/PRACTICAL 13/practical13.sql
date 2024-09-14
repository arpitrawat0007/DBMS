use arpit;
create table salaryDetail(employee_number int primary key,employee_name varchar(50),net_salary decimal(10,2));
desc SalaryDetails;
insert into SalaryDetails values
(1, 'Employee 1', 50000.00),
(2, 'Employee 2', 60000.00),
(3, 'Employee 3', 70000.00);
select*from SalaryDetails;
DELIMITER //
create procedure UpdateEmployeeDetails()
Begin
Declare done int default false;
Declare emp_number int;
Declare emp_name varchar(100);
Declare net_salary decimal(10,2);
Declare cur cursor for select employee_number, employee_name,net_salary from SalaryDetails;
Declare continue handler for not found set done = true;
open cur;
read_loop: loop
fetch cur into emp_number,emp_name,net_salary;
if done then 
leave read_loop;
end if;
update SalaryDetail set net_salary=@new_net_salary where employee_number =@emp_number;
end loop;
close cur;
end
//
DELIMITER ;
update SalaryDetails set net_salary=55000.00 where employee_number=2;
select*from salaryDetails;