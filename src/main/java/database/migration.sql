CREATE DATABASE IF NOT EXISTS adlister_db;

CREATE USER 'adtest'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON adlister_db.* TO 'adtest'@'localhost';

USE adlister_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;

CREATE TABLE users (
                       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
                       username VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL UNIQUE,
                       password VARCHAR(20) NOT NULL
);

CREATE TABLE ads (
                     id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(100) NOT NULL,
                     description TEXT,
                     FOREIGN KEY (user_id) REFERENCES users(id)
);

# foreign key (user id ) reference users table (id)

