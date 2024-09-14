use arpit;
create table author(author_id int,author_name varchar(50),address varchar(50),mobile int,book_title varchar(50),pages int, published_on date);
insert into author values(1,'John A.Writer','Fictional Street',1234,'Echoes to Imagination',300,'2023-05-15'),
(2,'Jane Booklover','Imaginary Avenue',98760,'Whispers in the Wind',250,'2022-09-28'),
(3,'Alex Novelist','Make-Believe Lane',534567,'Dreams Unbound',400,'2024-02-12'),
(4,'Emily Prose','Fantasy Boulevard',77888,'Serenade of Shadows',320,'2023-11-03'),
(5,'Oliver Storyteller','Fiction Junction',11333,'Eternal Echoes',280,'2022-06-19'),
(6,'Grace Wordsmith','Literary Circle',48901,'Silent Symphony',350,'2024-01-07'),
(7,'Liam Narrator','Tale Terrace',94321,'Dance of the Pen',280,'2023-08-14'),
(8,'Ava Penster','Storyland Square',32321,'Inkspell Legacy',320,'2022-12-30'),
(9,'Benjamin Scribe','Quill Quarters',28901,'Whispers of the Allegory',360,'2024-03-02'),
(10,'Zoe Allegorist','Verse Vista',18769,'Shadows of Symbolism',250,'2023-04-17');
select*from author;