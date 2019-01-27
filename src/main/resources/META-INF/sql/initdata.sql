

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

INSERT INTO recipes VALUES (1, 'Ciasto orzechowe', 'Składniki
CIASTO:
25 dag cukru pudru
0,5 kg mąki
20 dag margaryny
2 jaja
2 łyżki miodu rozpuszczonego w 2 łyżkach ciepłego mleka
1 łyżeczka sody
MASA:
20 dag orzechów grubo pokrojonych
10 dag cukru
12 dag masła
2 łyżki miodu
MASA BUDYNIOWA:
0,75 l mleka
3 łyżki mąki ziemniaczane
3 łyżki mąki pszennej
15 dag cukru
kostka masła
! dodatkowo powidła śliwkowe
																									 Przygotowanie masy:
                                                  Masło, cukier i miód rozpuścić na patelni, dodać orzechy i podsmażyć.
                                                  Ciasto:
                                                  Mąkę i margarynę posiekać, dodać ciepłe mleko i resztę. Podzielić na 3 części, 2 placki upiec, a na trzeci surowy wylać gorącą masę i dopiero upiec. Każdy placek piec około 15 minut, w nagrzanym piekarniku, w temp. 180 st. C.
                                                  Masa budyniowa:
                                                  Ugotować budyń. Zimny utrzeć z masłem.
                                                  Przełożenie:
                                                  placek, powidła, masa, placek, powidła, masa, placek z orzechami.', 1);
INSERT INTO recipes VALUES (2, 'Naleśniki z miodem', 'Ciasto na naleśniki
3 szklanki mąki
2,5 szklanki mleka
3 jaja
1 łyżka cukru
1 szczypta soli
Miód

ulubiony rodzaj miodu, może być skrystalizowany, ten również zachowuje cenne właściwości Wykonanie
Przygotowanie naleśników rozpoczynamy od wyrobienia ciasta. Będzie potrzebne naczynie, najlepiej misa. Wybijamy jajka i dodajemy kolejno pozostałe składniki a całość dobrze ubijamy, najlepiej mikserem ale trzepaczka również będzie dobra. Gdy ciasto będzie równej konsystencji i bez grudek rozlewamy je na rozgrzanej patelni z odrobiną tłuszczu, tutaj świetnie sprawdza się patelnia teflonowa. Naleśniki smażymy po obu stronach na złoto. Podajemy polane miodem, ale uwaga, należy zaczekać aż przestygną, wysoka temperatura jest szkodliwa dla miodu i niszczy jego dobroczynne składniki. ', 2);
INSERT INTO recipes VALUES (3, 'Karpatka', 'https://www.kwestiasmaku.com/przepis/karpatka', 1);

INSERT INTO recipe_type VALUES (1, 'Deser');
INSERT INTO recipe_type VALUES (2, 'Obiad');
INSERT INTO recipe_type VALUES (3, 'śniadanie');
INSERT INTO recipe_type VALUES (4, 'Przekąski');


INSERT INTO all_ingredients VALUES (1, 'Mąka', 5);
INSERT INTO all_ingredients VALUES (2, 'Jajko', 4);
INSERT INTO all_ingredients VALUES (3, 'Cukier', 5);
INSERT INTO all_ingredients VALUES (4, 'Mleko', 5);
INSERT INTO all_ingredients VALUES (5, 'Woda', 5);
INSERT INTO all_ingredients VALUES (6, 'Miod', 3);
INSERT INTO all_ingredients VALUES (7, 'Proszek do pieczenia', 3);
INSERT INTO all_ingredients VALUES (8, 'Orzechy wloskie', 6);
INSERT INTO all_ingredients VALUES (9, 'Sól', 7);
INSERT INTO all_ingredients VALUES (10, 'Żółtko jaja', 4);
INSERT INTO all_ingredients VALUES (11, 'Margaryna', 4);
INSERT INTO all_ingredients VALUES (12, 'Olej', 3);
INSERT INTO all_ingredients VALUES (13, 'Cukier puder', 8);
INSERT INTO all_ingredients VALUES (14, 'Polewa czekoladowa', 6);
INSERT INTO all_ingredients VALUES (15, 'Makaron', 1);
INSERT INTO all_ingredients VALUES (16, 'Kasza', 1);
INSERT INTO all_ingredients VALUES (17, 'Pomidor', 1);
INSERT INTO all_ingredients VALUES (18, 'Ziemniak', 1);
INSERT INTO all_ingredients VALUES (19, 'Kurczak', 1);
INSERT INTO all_ingredients VALUES (20, 'Schab', 1);
INSERT INTO all_ingredients VALUES (21, 'Ser żółty', 1);
INSERT INTO all_ingredients VALUES (22, 'Twaróg', 1);
INSERT INTO all_ingredients VALUES (23, 'Pieczarka', 1);
INSERT INTO all_ingredients VALUES (24, 'Banan', 1);

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
