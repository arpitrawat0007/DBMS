use arpit;
create table Authors (author_id int primary key, name varchar(60), titles_count int);
desc Authors;
create table Titles (title_id int primary key auto_increment, author_id int, name varchar(512), foreign key(author_id) references Authors(author_id));
desc Titles;
create table log (log_id int primary key auto_increment, author_id int, title_name varchar(512), status varchar(25));
desc log;
delimiter //
create trigger update_titles_count after insert on titles for each row
begin
    update authors
    set titles_count = titles_count + 1
    where author_id = new.author_id;
end;
//
delimiter ;
show triggers;