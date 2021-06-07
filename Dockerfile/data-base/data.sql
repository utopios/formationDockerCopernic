CREATE DATABASE test;
use test;
-- pour postgresql
-- CREATE SEQUENCE users_increment;
-- CREATE TABLE users (id integer NOT NULL DEFAULT nextval('users_increment'), first_name varchar(255), last_name varchar(255));

-- pour mysql
CREATE TABLE users (id int(11) PRIMARY KEY auto_increment, first_name varchar(255), last_name varchar(255));


INSERT INTO users (first_name, last_name) values('toto','tata'), ('minet','titi');
