CREATE DATABASE pantry CHARACTER SET utf8
	COLLATE utf8_general_ci;

DELETE FROM users;
DELETE FROM recipes;
DELETE FROM recipe_type;
DELETE FROM all_ingredients;
DELETE FROM measurements;
DELETE FROM ingredients_recipes;

INSERT INTO users VALUES (1, 'MarekCieplica@gmail.com', 'Marek', 'Marek');
INSERT INTO users VALUES (2, 'MariaDluga@gmail.com', 'Maria', 'Maria');
INSERT INTO users VALUES (3, 'MietekKisel@gmail.com', 'Mietek', 'Mietek');
INSERT INTO users VALUES (4, 'MalgorzataNowak@gmail.com', 'Malgorzata', 'Malgorzata');

INSERT INTO recipes VALUES (1, 'Ciasto orzechowe', '<a href=https://www.mojegotowanie.pl/przepis/ciasto-orzechowe>Przepis na ciasto orzechowe</a>', 1);
INSERT INTO recipes VALUES (2, 'Naleśniki z miodem', '<a href=https://www.nalesniki.eu/nalesniki-z-miodem/>Przepis na naleśniki z miodem</a>', 2);
INSERT INTO recipes VALUES (3, 'Karpatka', '<a href=https://www.kwestiasmaku.com/przepis/karpatka>Przepis na karpatkę</a>', 1);
INSERT INTO recipes VALUES (4, 'Makaron z kurczakiem i pomidorami', '<a href=https://www.kwestiasmaku.com/przepis/makaron-z-kurczakiem-i-pomidorami>Przepis na makaron z kurczakiem i pomidorami</a>', 2);
INSERT INTO recipes VALUES (5, 'Pizza margherita', '<a href=https://www.kwestiasmaku.com/kuchnia_wloska/pizza/pizza_margherita/przepis.html>Przepis na pizzę margheritę</a>', 2);
INSERT INTO recipes VALUES (6, 'Łosoś ze szpinakiem', '<a href=https://www.kwestiasmaku.com/przepis/losos-ze-szpinakiem>Przepis na łososia ze szpinakiem</a>', 2);
INSERT INTO recipes VALUES (7, 'Zupa z kurczakiem, pieczarkami i makaronem', '<a href=https://www.kwestiasmaku.com/przepis/zupa-z-kurczakiem-pieczarkami-i-makaronem>Przepis na zupę</a>', 2);
INSERT INTO recipes VALUES (8, 'Placki ziemniaczane', '<a href=https://www.kwestiasmaku.com/przepis/placki-ziemniaczane>Przepis na placki ziemniaczane</a>', 2);
INSERT INTO recipes VALUES (9, 'Chlebek bananowy', '<a href=https://www.kwestiasmaku.com/przepis/chlebek-bananowy>Przepis na chlebek bananowy</a>', 1);
INSERT INTO recipes VALUES (10, 'Ciasteczka pełnoziarniste', '<a href=https://www.kwestiasmaku.com/przepis/ciasteczka-pelnoziarniste>Przepis na ciasteczka pełnoziarniste</a>', 2);

INSERT INTO recipe_type VALUES (1, 'deser');
INSERT INTO recipe_type VALUES (2, 'obiad');
INSERT INTO recipe_type VALUES (3, 'śniadanie');
INSERT INTO recipe_type VALUES (4, 'przekąski');


INSERT INTO all_ingredients VALUES (1, 'mąka', 5);
INSERT INTO all_ingredients VALUES (2, 'jajko', 4);
INSERT INTO all_ingredients VALUES (3, 'cukier', 5);
INSERT INTO all_ingredients VALUES (4, 'mleko', 5);
INSERT INTO all_ingredients VALUES (5, 'woda', 5);
INSERT INTO all_ingredients VALUES (6, 'miod', 3);
INSERT INTO all_ingredients VALUES (7, 'proszek do pieczenia', 3);
INSERT INTO all_ingredients VALUES (8, 'orzechy wloskie', 6);
INSERT INTO all_ingredients VALUES (9, 'sól', 7);
INSERT INTO all_ingredients VALUES (10, 'żółtko jaja', 4);
INSERT INTO all_ingredients VALUES (11, 'margaryna', 4);
INSERT INTO all_ingredients VALUES (12, 'olej', 3);
INSERT INTO all_ingredients VALUES (13, 'cukier puder', 8);
INSERT INTO all_ingredients VALUES (14, 'polewa czekoladowa', 6);
INSERT INTO all_ingredients VALUES (15, 'makaron', 1);
INSERT INTO all_ingredients VALUES (16, 'kasza', 1);
INSERT INTO all_ingredients VALUES (17, 'pomidor', 1);
INSERT INTO all_ingredients VALUES (18, 'ziemniak', 1);
INSERT INTO all_ingredients VALUES (19, 'kurczak', 1);
INSERT INTO all_ingredients VALUES (20, 'schab', 1);
INSERT INTO all_ingredients VALUES (21, 'ser żółty', 1);
INSERT INTO all_ingredients VALUES (22, 'twaróg', 1);
INSERT INTO all_ingredients VALUES (23, 'pieczarka', 1);
INSERT INTO all_ingredients VALUES (24, 'banan', 4);
INSERT INTO all_ingredients VALUES (25, 'cebula', 4);
INSERT INTO all_ingredients VALUES (26, 'czosnek', 4);
INSERT INTO all_ingredients VALUES (27, 'mozzarella', 1);
INSERT INTO all_ingredients VALUES (28, 'drożdże', 4);
INSERT INTO all_ingredients VALUES (29, 'łosoś', 1);
INSERT INTO all_ingredients VALUES (30, 'szpinak', 1);
INSERT INTO all_ingredients VALUES (31, 'śmietana', 1);
INSERT INTO all_ingredients VALUES (32, 'cytryna', 4);
INSERT INTO all_ingredients VALUES (33, 'papryka', 4);
INSERT INTO all_ingredients VALUES (34, 'kukurydza', 4);
INSERT INTO all_ingredients VALUES (35, 'bulion', 5);
INSERT INTO all_ingredients VALUES (36, 'masło', 5);

INSERT INTO measurements VALUES (1, 'gram');
INSERT INTO measurements VALUES (2, 'litr');
INSERT INTO measurements VALUES (3, 'łyżka');
INSERT INTO measurements VALUES (4, 'sztuka');
INSERT INTO measurements VALUES (5, 'ml');
INSERT INTO measurements VALUES (6, 'opakowanie');
INSERT INTO measurements VALUES (7, 'szczypta');
INSERT INTO measurements VALUES (8, 'do smaku');

/*id_recipe, id_user_ingredient)*/
INSERT INTO ingredients_recipes VALUES (1, 1);
INSERT INTO ingredients_recipes VALUES (2, 1);
INSERT INTO ingredients_recipes VALUES (3, 1);

INSERT INTO ingredients_recipes VALUES (1, 2);
INSERT INTO ingredients_recipes VALUES (2, 2);
INSERT INTO ingredients_recipes VALUES (3, 2);

INSERT INTO ingredients_recipes VALUES (1, 3);
INSERT INTO ingredients_recipes VALUES (3, 3);

INSERT INTO ingredients_recipes VALUES (1, 4);
INSERT INTO ingredients_recipes VALUES (2, 4);
INSERT INTO ingredients_recipes VALUES (3, 4);

INSERT INTO ingredients_recipes VALUES (2, 5);
INSERT INTO ingredients_recipes VALUES (3, 5);

INSERT INTO ingredients_recipes VALUES (2, 6);

INSERT INTO ingredients_recipes VALUES (1, 7);
INSERT INTO ingredients_recipes VALUES (3, 7);

INSERT INTO ingredients_recipes VALUES (1, 8);

INSERT INTO ingredients_recipes VALUES (2, 9);
INSERT INTO ingredients_recipes VALUES (3, 9);

INSERT INTO ingredients_recipes VALUES (3, 10);

INSERT INTO ingredients_recipes VALUES (1, 11);
INSERT INTO ingredients_recipes VALUES (3, 11);

INSERT INTO ingredients_recipes VALUES (2, 12);

INSERT INTO ingredients_recipes VALUES (3, 13);

INSERT INTO ingredients_recipes VALUES (1, 14);



INSERT INTO ingredients_recipes VALUES (4, 15);
INSERT INTO ingredients_recipes VALUES (4, 19);
INSERT INTO ingredients_recipes VALUES (4, 17);
INSERT INTO ingredients_recipes VALUES (4, 25);
INSERT INTO ingredients_recipes VALUES (4, 9);
INSERT INTO ingredients_recipes VALUES (4, 5);
INSERT INTO ingredients_recipes VALUES (4, 12);


INSERT INTO ingredients_recipes VALUES (5, 12);
INSERT INTO ingredients_recipes VALUES (5, 1);
INSERT INTO ingredients_recipes VALUES (5, 3);
INSERT INTO ingredients_recipes VALUES (5, 5);
INSERT INTO ingredients_recipes VALUES (5, 17);
INSERT INTO ingredients_recipes VALUES (5, 28);
INSERT INTO ingredients_recipes VALUES (5, 9);


INSERT INTO ingredients_recipes VALUES (6, 29);
INSERT INTO ingredients_recipes VALUES (6, 30);
INSERT INTO ingredients_recipes VALUES (6, 31);
INSERT INTO ingredients_recipes VALUES (6, 9);
INSERT INTO ingredients_recipes VALUES (6, 26);
INSERT INTO ingredients_recipes VALUES (6, 32);



INSERT INTO ingredients_recipes VALUES (7, 19);
INSERT INTO ingredients_recipes VALUES (7, 25);
INSERT INTO ingredients_recipes VALUES (7, 23);
INSERT INTO ingredients_recipes VALUES (7, 33);
INSERT INTO ingredients_recipes VALUES (7, 34);
INSERT INTO ingredients_recipes VALUES (7, 15);
INSERT INTO ingredients_recipes VALUES (7, 31);
INSERT INTO ingredients_recipes VALUES (7, 35);


INSERT INTO ingredients_recipes VALUES (8, 1);
INSERT INTO ingredients_recipes VALUES (8, 2);
INSERT INTO ingredients_recipes VALUES (8, 9);
INSERT INTO ingredients_recipes VALUES (8, 18);
INSERT INTO ingredients_recipes VALUES (8, 25);
INSERT INTO ingredients_recipes VALUES (8, 12);


INSERT INTO ingredients_recipes VALUES (9, 1);
INSERT INTO ingredients_recipes VALUES (9, 2);
INSERT INTO ingredients_recipes VALUES (9, 3);
INSERT INTO ingredients_recipes VALUES (9, 24);
INSERT INTO ingredients_recipes VALUES (9, 36);
INSERT INTO ingredients_recipes VALUES (9, 7);
INSERT INTO ingredients_recipes VALUES (9, 9);
INSERT INTO ingredients_recipes VALUES (9, 8);


INSERT INTO ingredients_recipes VALUES (10, 1);
INSERT INTO ingredients_recipes VALUES (10, 36);
INSERT INTO ingredients_recipes VALUES (10, 6);
INSERT INTO ingredients_recipes VALUES (10, 13);
INSERT INTO ingredients_recipes VALUES (10, 7);










