create database if not exists my_gaming_project;

Use my_gaming_project;
CREATE TABLE GameList
(
title_id INT PRIMARY KEY,
game_name VARCHAR(200) NOT NULL UNIQUE,
genre_id int REFERENCES genres (genre_id),
genre varchar(100) NOT NULL,
publisher varchar(100),
developer varchar(100),
release_date varchar(50)
);

CREATE TABLE TitleList
(
index_id INT PRIMARY KEY,
game_name VARCHAR(200) NOT NULL UNIQUE,
title_id int references GameList (title_id)
);

Create Table Reviews
(
review_id int primary key auto_increment,
title_id int references GameList (title_id),
game_name VARCHAR(200) NOT NULL,
genre_id int REFERENCES genres (genre_id),
genre varchar(100) NOT NULL,
publisher varchar(100),
developer varchar(100),
platform varchar(50),
critic_score decimal(9,2),
total_sales decimal(9,2),
na_sales decimal(9,2),
jp_sales decimal(9,2),
pal_sales decimal(9,2),
other_sales decimal(9,2),
release_date varchar(50)
);

Create table genres
(
genre_id int primary key,
genre varchar(100) NOT NULL unique
);

create table platforms
(
platform_id int primary key auto_increment,
title_id int references GameList (title_id),
game_name VARCHAR(200) NOT NULL,
console VARCHAR(50),
publisher varchar(100),
developer varchar(100)
);

Select review_id, r.game_name, critic_score
from reviews r
join titlelist tl on r.title_id = tl.title_id
where r.title_id = 1;





