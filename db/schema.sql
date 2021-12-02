-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL NOT NULL,
    -- default 10, validate numeric
    stock INT NOT NULL,
    -- default 10, validate numeric
    category_id INT, 
    FOREIGN KEY (category_id)
    REFERENCES Category(id)
);

CREATE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    tag_name VARCHAR(50)
);

CREATE TABLE ProductTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    FOREIGN KEY (product_id)
    REFERENCES Product(id),
    tag_id INT,
    FOREIGN KEY (tag_id)
    REFERENCES Tag(id)
)