use arpit;
create table employee( 
EmployeeID int primary key, 
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Position varchar(50),
Salary varchar(50),
HireDate date
);
desc employee;
insert into employee(EmployeeID, FirstName, LastName, Department, Position, Salary, HireDate)
values(1,'Arpit','Rawat','HR','Managaer',90000.00,'2010-05-15'),
(2,'Pradeep','Negi','IT','Developer','70000.00','2015-08-20'),
(3,'Gaurav','Rawat','Finance','Accountant',65000.00,'2018-03-10');
select*from employee;
DELIMITER //
create procedure GetEmployeeDetailsByID (IN Employee_ID int)
Begin
select*from employee where EmployeeID = Employee_ID;
end //
DELIMITER ;
Call GetEmployeeDetailsById(2);