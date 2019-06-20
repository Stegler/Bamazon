DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  item_id INT AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(100) NULL,
  department_name VARCHAR(100) NULL,
  price DECIMAL(16,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES
("Tent","Outdoor",40.00,27)
,("Coffee Maker","Home",18.00,44)
,("Wine Glasses","Home",35.00,5)
,("Paddle Board","Outdoor",140.00,9)
,("Hair Dryer","Health and Beauty",20.00,30)
,("Face Wash","Health and Beauty",40.00,2)
,("Boots","Clothing",50.00,11)
,("Hose","Outdoor",19.00,17)
,("Dinner Table","Home",20.00,25)
,("Charlotte's Web","Books",15.00,6);

SELECT * FROM products;