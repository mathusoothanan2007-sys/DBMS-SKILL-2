CREATE DATABASE product_category_db;
USE product_category_db;
CREATE TABLE category(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);
CREATE TABLE product(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES category(category_id)
);
INSERT INTO category(category_name) VALUES
('Furniture'),
('Food'),
('Stationery'),
('Kitchen Items');
INSERT INTO product(product_name,price,category_id) VALUES
('Dining Table',15000,1),
('Office Chair',5000,1),
('Sofa',25000,1),
('Bookshelf',8000,1),
('Bed',30000,1),
('Study Table',7000,1),
('Coffee Table',6000,1),
('Pizza',450,2),
('Burger',250,2),
('Biryani',300,2),
('Pasta',280,2),

('Notebook',100,3),
('Pen Set',150,3),
('Pencil Box',250,3),

('Mixer Grinder',4500,4),
('Electric Kettle',2000,4),
('Frying Pan',1200,4);
SELECT * FROM category;

SELECT * FROM product;


SELECT p.product_id,p.product_name,p.price,c.category_name
FROM product p
JOIN category c
ON p.category_id=c.category_id;

SELECT c.category_name,COUNT(p.product_id) AS product_count
FROM category c
LEFT JOIN product p
ON c.category_id=p.category_id
GROUP BY c.category_id,c.category_name;


SELECT c.category_name,p.product_name,p.price
FROM category c
JOIN product p
ON c.category_id=p.category_id
WHERE p.price=(
    SELECT MAX(p2.price)
    FROM product p2
    WHERE p2.category_id=p.category_id
);


SELECT c.category_name,COUNT(p.product_id) AS product_count
FROM category c
JOIN product p
ON c.category_id=p.category_id
GROUP BY c.category_id,c.category_name
HAVING COUNT(p.product_id)>5;


SELECT c.category_name,AVG(p.price) AS average_price
FROM category c
JOIN product p
ON c.category_id=p.category_id
GROUP BY c.category_id,c.category_name;


INSERT INTO product(product_name,price,category_id)
VALUES('Dining Chair',3000,1);


SELECT * FROM product
WHERE product_id=18;


UPDATE product
SET price=3500
WHERE product_id=18;


SELECT * FROM product
WHERE product_id=18;


DELETE FROM product
WHERE product_id=18;


SELECT * FROM product;