
INSERT INTO onlineShop.Roles (id, role) VALUES (2, 'admin');
INSERT INTO onlineShop.Roles (id, role) VALUES (1, 'user');


INSERT INTO onlineShop.Categories (category) VALUES ('Палатки');
SET @categoryId = LAST_INSERT_ID();


INSERT INTO onlineShop.Products (category_id, promotion_id, name, description, price, status, photo, orders_number)
VALUES (@categoryId, NULL, 'Палатка', 'Арендуйте лучшую палатку в мире класс топ мечта', 100.1, 1, 'https://i2018.otzovik.com/2018/03/05/6152660/img/4109994.jpeg', 0);


INSERT INTO onlineShop.UserInformation (name, surname, patronymic, phone)
VALUES ('Dmitry', 'Ghoncharko', 'Alex', 80447860023);
SET @userInfoId1 = LAST_INSERT_ID();

INSERT INTO onlineShop.UserInformation (name, surname, patronymic, phone)
VALUES ('Test', 'Test', 'Test', 80447860024);
SET @userInfoId2 = LAST_INSERT_ID();


INSERT INTO onlineShop.Users (userInformation_id, role_id, email, password)
VALUES (@userInfoId1, 2, 'dafae722@gmail.com', '77e1964841db1706295a1c8e05c39f9f8da5349e');

INSERT INTO onlineShop.Users (userInformation_id, role_id, email, password)
VALUES (@userInfoId2, 1, 'test@gmail.com', '77e1964841db1706295a1c8e05c39f9f8da5349e');
