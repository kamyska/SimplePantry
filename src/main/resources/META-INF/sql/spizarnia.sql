drop database if exists spizarnia;
CREATE DATABASE spizarnia;
USE spizarnia;
CREATE TABLE users
	(
		ID_user int(4) not null auto_increment primary key,
		adres_email VARCHAR(50) not null,
        haslo VARCHAR(50) not null,
        imie VARCHAR(30) not null
	);

CREATE TABLE recipes
    (
		id_recipe int(4) not null auto_increment primary key,
		r_name varchar(50),
        r_description text,
        r_type varchar(50)
	);
    
CREATE TABLE all_ingredients
	(
		id_ingredient int(4) not null auto_increment,
		i_name varchar(50),
        amount varchar(50)
	);
    
CREATE TABLE user_ingredients
    (
		id_ingredient int(4) not null auto_increment,
		i_name varchar(50),
        amount varchar(50)
	);
    
CREATE TABLE ingredients_recipes
    (
		id_recipe int(4) not null,
		id_user_ingredient int(4) not null
	);
    
CREATE TABLE ingredient_count
	(
		id_recipe int(4),
        ingredient_count int(4)
	);
    
INSERT INTO users VALUES (1,'MarekCieplica@gmail.com','Marek', 'Marek');
INSERT INTO users VALUES (2,'MariaDluga@gmail.com','Maria', 'Maria');
INSERT INTO users VALUES (3,'MietekKisel@gmail.com','Mietek', 'Mietek');
INSERT INTO users VALUES (4,'MalgorzataNowak@gmail.com','Malgorzata', 'Malgorzata');

INSERT INTO recipes VALUES (1,'Ciasto orzechowe', 'przepis1', 'deser');
INSERT INTO recipes VALUES (2,'Naleśniki z miodem','przepis2', 'danie glowne');
INSERT INTO recipes VALUES (3,'Karpatka','przepis3', 'deser');

INSERT INTO all_ingredients VALUES (1,'maka','szklanka');
INSERT INTO all_ingredients VALUES (2,'jajko','sztuka');
INSERT INTO all_ingredients VALUES (3,'cukier','szklanka');
INSERT INTO all_ingredients VALUES (4,'mleko','ml');
INSERT INTO all_ingredients VALUES (5,'woda','ml');
INSERT INTO all_ingredients VALUES (6,'miod','lyzka');
INSERT INTO all_ingredients VALUES (7,'proszek do pieczenia','lyzeczka');
INSERT INTO all_ingredients VALUES (8,'orzechy wloskie','opakowanie');
INSERT INTO all_ingredients VALUES (9,'sol','szczypta');
INSERT INTO all_ingredients VALUES (10,'zoltko jaja','sztuka');
INSERT INTO all_ingredients VALUES (11,'Kostka do pieczenia Kasia','sztuka');
INSERT INTO all_ingredients VALUES (12,'Olej','lyzeczka');
INSERT INTO all_ingredients VALUES (13,'Cukier puder','-');
INSERT INTO all_ingredients VALUES (14,'Polewa czekoladowa','opakowanie');

INSERT INTO user_ingredients VALUES (1,'maka','szklanka');
/*
INSERT INTO all_ingredients VALUES (2,'jajko','sztuka');
INSERT INTO all_ingredients VALUES (3,'cukier','szklanka');
INSERT INTO all_ingredients VALUES (4,'mleko','ml');
INSERT INTO all_ingredients VALUES (5,'woda','ml');
INSERT INTO all_ingredients VALUES (6,'maka','200g');
INSERT INTO all_ingredients VALUES (7,'proszek do pieczenia','lyzeczka');
INSERT INTO all_ingredients VALUES (8,'orzechy wloskie','opakowanie');
INSERT INTO all_ingredients VALUES (9,'sol','szczypta');
INSERT INTO all_ingredients VALUES (10,'zoltko jaja','sztuka');
INSERT INTO all_ingredients VALUES (11,'Kostka do pieczenia Kasia','sztuka');
INSERT INTO all_ingredients VALUES (12,'Olej','lyzeczka');
INSERT INTO all_ingredients VALUES (13,'Cukier puder','-');
INSERT INTO all_ingredients VALUES (14,'Polewa czekoladowa','opakowanie');
*/

/*id_recipe, id_user_ingredient)*/
INSERT INTO ingredients_recipes VALUES (1,1);
INSERT INTO ingredients_recipes VALUES (2,1);
INSERT INTO ingredients_recipes VALUES (3,1);

INSERT INTO ingredients_recipes VALUES (1,2);
INSERT INTO ingredients_recipes VALUES (2,2);
INSERT INTO ingredients_recipes VALUES (3,2);

INSERT INTO ingredients_recipes VALUES (1,3);
INSERT INTO ingredients_recipes VALUES (3,3);

INSERT INTO ingredients_recipes VALUES (1,4);
INSERT INTO ingredients_recipes VALUES (2,4);
INSERT INTO ingredients_recipes VALUES (3,4);

INSERT INTO ingredients_recipes VALUES (2,5);
INSERT INTO ingredients_recipes VALUES (3,5);

INSERT INTO ingredients_recipes VALUES (2,6);

INSERT INTO ingredients_recipes VALUES (1,7);
INSERT INTO ingredients_recipes VALUES (3,7);

INSERT INTO ingredients_recipes VALUES (1,8);

INSERT INTO ingredients_recipes VALUES (2,9);
INSERT INTO ingredients_recipes VALUES (3,9);

INSERT INTO ingredients_recipes VALUES (3,10);

INSERT INTO ingredients_recipes VALUES (1,11);
INSERT INTO ingredients_recipes VALUES (3,11);

INSERT INTO ingredients_recipes VALUES (2,12);

INSERT INTO ingredients_recipes VALUES (3,13);

INSERT INTO ingredients_recipes VALUES (1,14);

/*id_recipe, ingredient_count)*/
INSERT INTO ingredient_count VALUES (1,8);
INSERT INTO ingredient_count VALUES (2,7);
INSERT INTO ingredient_count VALUES (3,10);