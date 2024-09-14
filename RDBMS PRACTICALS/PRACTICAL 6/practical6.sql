show databases;
create database poly;
use poly;
Create table mail( date_time datetime, srcuser VARCHAR(8), srchost VARCHAR(20), dstuser VARCHAR(8), dsthost VARCHAR(20), size BIGINT);
desc mail; 
alter table mail change srchost srchost varchar(50);
alter table mail change srcuser srcuser varchar(50);
alter table mail change dstuser dstuser varchar(50);
alter table mail change dsthost dsthost varchar(50);
insert into mail values
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390),
('2024-03-13 08:30:00', 'abhishek', 'abhishek786@gmail.com', 'arpit', 'arpit0707@gmail.com', 54678390);
select *from mail;