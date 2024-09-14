use arpit;
CREATE TABLE Library (book_id INT AUTO_INCREMENT PRIMARY KEY,title VARCHAR(255) NOT NULL,author VARCHAR(100),genre VARCHAR(100),publication_year INT,isbn VARCHAR(20)); 
CREATE TABLE Library1 LIKE Library; 
INSERT INTO Library1 SELECT * FROM Library; 
select * from library1;