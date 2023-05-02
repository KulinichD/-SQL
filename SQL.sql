CREATE TABLE `test_shop`.`categories` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR (45) NOT NULL,
PRIMARY KEY (`id`)); -- Создание таблицы "categories" со столбцами "id" (числовой формат, не пустой, значение проставляется автоматически) и "name" (текстовый формат, не пустой, не более 45 символов). Внешним ключом является значение в столбце "id"

SELECT * FROM products;	-- Отображение всех строк в таблице "products"

SELECT * FROM products WHERE manufacturer_id < 3; -- Отображение строк в таблице "products"  с id производителя меньше 3

DROP TABLE categories; -- Удаление таблицы "categories"

INSERT INTO categories (`id`, `name`) VALUES (1, "Телевизоры и мониторы"); -- Добавление в таблицу "categories" строки со следующими значениями в столбцах: id категории - 1, название категории - Телевизоры и мониторы

UPDATE categories SET name = "Холодильники и морозильные камеры"
WHERE id = 2; -- Изменение в таблице "categories" названия категории с id = 2 (предварительно была создана строка с соответствующим id и повторяющимся названием)

SELECT * FROM test_shop.products
ORDER BY category_id; -- Отображение всех строк в таблице "products", с сортировкой по id категории.

SELECT * FROM test_shop.products
LIMIT 3; -- Отображение только 3 строк из таблицы "products"

DELETE FROM test_shop.categories WHERE id = 2; -- Удаление из таблицы "categories" строки с id категории 2

SELECT * FROM test_shop.products 
WHERE manufacturer_id = 2 OR category_id = 2
ORDER BY id DESC; -- Отображение строк из таблицы "products", где либо id производителя  равно 2, либо id категории равно 2 , с сортировкой по id товара по убыванию.

SELECT name FROM test_shop.products 
WHERE manufacturer_id >= 2
LIMIT 3; -- Отображение только 3 строк в колонке с названиями товаров из таблицы "products", где id производителя больше или равно 2