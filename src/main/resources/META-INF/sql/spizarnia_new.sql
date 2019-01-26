drop database if exists spizarnia_new;
CREATE DATABASE spizarnia_new CHARACTER SET utf8
	COLLATE utf8_general_ci;
USE spizarnia_new;
CREATE TABLE users
	(
		id int(4) not null auto_increment primary key,
	email VARCHAR(50) not null,
       password VARCHAR(50) not null,
        name VARCHAR(30) not null
	);

CREATE TABLE recipes
    (
		id_recipe int(4) not null auto_increment primary key,
		r_name varchar(50),
        r_description text,
        r_type int(4)
	);
    
CREATE TABLE recipe_type
	(
		id_type int(4),
        type_name varchar(50)
	);
    
CREATE TABLE all_ingredients
	(
		id_ingredient int(4) not null auto_increment primary key,
		i_name varchar(50),
        id_measurement int(4)
	);
    
CREATE TABLE ingredients_recipes
    (
		id_recipe int(4) not null,
		id_user_ingredient int(4) not null,
	primary key (`id_recipe`,`id_user_ingredient`),
	FOREIGN KEY (`id_recipe`) REFERENCES `recipes` (`id_recipe`),
	FOREIGN KEY (`id_user_ingredient`) REFERENCES `all_ingredients` (`id_ingredient`)
	);
    
CREATE TABLE measurements
    (
		id_measurement int(4) not null auto_increment primary key,
		m_name varchar(50)
	);





