use arpit;
CREATE TABLE users (user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,password VARCHAR(128),username VARCHAR(60),email VARCHAR(255)); 
desc users;
CREATE TABLE users_profiles ( 
user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(60),
last_name VARCHAR(60),
mobile VARCHAR(15),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);
desc users_profiles;
INSERT INTO users (username, password, email) VALUES
('arpit', '1234', 'arpitrawat0707@gmail.com'),
('anshu', '45678', 'anshu0007@gmail.com');
select*from users;
INSERT INTO users_profiles (user_id, first_name, last_name, mobile) VALUES(1, 'adesh', 'kumar', '8445616666');
select*from users_profiles;
SELECT users.*, users_profiles.first_name, users_profiles.last_name, users_profiles.mobile 
FROM users INNER JOIN users_profiles ON users.user_id = users_profiles.user_id;
SELECT users.*FROM users LEFT JOIN users_profiles ON users.user_id = users_profiles.user_id
WHERE users_profiles.user_id IS NULL;
