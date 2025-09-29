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

