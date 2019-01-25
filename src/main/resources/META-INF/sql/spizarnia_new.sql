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
    
INSERT INTO users VALUES (1,'MarekCieplica@gmail.com','Marek', 'Marek');
INSERT INTO users VALUES (2,'MariaDluga@gmail.com','Maria', 'Maria');
INSERT INTO users VALUES (3,'MietekKisel@gmail.com','Mietek', 'Mietek');
INSERT INTO users VALUES (4,'MalgorzataNowak@gmail.com','Malgorzata', 'Malgorzata');

INSERT INTO recipes VALUES (1,'Ciasto orzechowe', 'przepis1', 1);
INSERT INTO recipes VALUES (2,'Naleśniki z miodem','przepis2', 2);
INSERT INTO recipes VALUES (3,'Karpatka','przepis3', 1);

INSERT INTO recipe_type VALUES (1, 'Deser');
INSERT INTO recipe_type VALUES (2, 'Obiad');

INSERT INTO all_ingredients VALUES (1,'maka',5);
INSERT INTO all_ingredients VALUES (2,'jajko',4);
INSERT INTO all_ingredients VALUES (3,'cukier',5);
INSERT INTO all_ingredients VALUES (4,'mleko',5);
INSERT INTO all_ingredients VALUES (5,'woda',5);
INSERT INTO all_ingredients VALUES (6,'miod',3);
INSERT INTO all_ingredients VALUES (7,'proszek do pieczenia',3);
INSERT INTO all_ingredients VALUES (8,'orzechy wloskie',6);
INSERT INTO all_ingredients VALUES (9,'sol',7);
INSERT INTO all_ingredients VALUES (10,'zoltko jaja',4);
INSERT INTO all_ingredients VALUES (11,'Kostka do pieczenia Kasia',4);
INSERT INTO all_ingredients VALUES (12,'Olej',3);
INSERT INTO all_ingredients VALUES (13,'Cukier puder',8);
INSERT INTO all_ingredients VALUES (14,'Polewa czekoladowa',6);

INSERT INTO measurements VALUES (1,'gram');
INSERT INTO measurements VALUES (2,'litr');
INSERT INTO measurements VALUES (3,'łyżka');
INSERT INTO measurements VALUES (4,'sztuka');
INSERT INTO measurements VALUES (5,'ml');
INSERT INTO measurements VALUES (6,'opakowanie');
INSERT INTO measurements VALUES (7,'szczypta');
INSERT INTO measurements VALUES (8,'do smaku');

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

