DROP DATABASE IF EXISTS video_club;
CREATE DATABASE video_club;
USE video_club;

CREATE TABLE `Types`
(
	type_id INT(10) AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL,
    type_public VARCHAR(50) NOT NULL
)ENGINE = InnoDB CHARSET utf8 COLLATE utf8_general_ci;

CREATE TABLE Movies
(
	movie_title VARCHAR(50) NOT NULL,
    movie_director VARCHAR(100) NOT NULL,
    PRIMARY KEY(movie_title, movie_director),
    movie_duration SMALLINT(3) NOT NULL
);

CREATE TABLE Actors
(
	actor_name VARCHAR(50) NOT NULL,
	actor_firstname VARCHAR(50) NOT NULL,
    actor_birth DATE

);

