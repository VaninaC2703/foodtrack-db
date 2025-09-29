CREATE TABLE foodtruck(
    foodtruck_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    cuisine_type VARCHAR(255),
    city VARCHAR(255) NOT NULL
);

CREATE TABLE locations(
    location_id INT PRIMARY KEY,
    foodtruck INT,
    location_date DATE,
    zone VARCHAR(255),
    FOREIGN KEY(foodtruck) REFERENCES foodtruck(foodtruck_id)
);

CREATE TABLE orders_items(
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    foodtruck INT,
    order_date DATE,
    status VARCHAR(255) NOT NULL,
    total DECIMAL(18,2) NOT NULL
);

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    foodtruck_id INT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(18,2) NOT NULL,
    stock INT
);

ALTER TABLE products ADD suppliers INT;

ALTER TABLE products
ADD CONSTRAINT fk_products_foodtruck
FOREIGN KEY(foodtruck_id) REFERENCES foodtruck(foodtruck_id);

alter table locations
rename column foodtruck to foodtruck_id;
