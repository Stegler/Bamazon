DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(40) NULL,
  department_name VARCHAR(40) NULL,
  price DECIMAL(10,2) NULL,
  stock_quanitity INT(10) NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("bananas", "food", "2.00", "100"); 

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("tissue paper", "home", "3.75", "50"); 

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("refridgerator", "applicances", "1200.00", "5");

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("glass tupperware", "home", "15.00", "1000"); 

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("xbox one", "gaming", "250.50", "200"); 

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("coffee table", "furniture", "450.00", "15"); 

INSERT INTO products (product_name, department_name, price, stock_quanitity)
VALUES ("grapes", "food", "3.50", "100"); 