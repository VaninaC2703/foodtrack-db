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


alter table locations 
add constraint fk_locations_foodtruck
foreign key(foodtruck_id) references foodtruck(foodtruck_id)
on delete set null 
on update set null;


insert into foodtruck 
	values(1,'Taco Loco','Mexicana','Ciudad de México'),
		  (2,'Burguer Bros','Americana','Buenos Aires'),
		  (3,'Macdonald','Americana','Buenos Aires'),
		  (4,'Mostaza','Americana','Buenos Aires'); ---cada paréntesis hace referencia a una fila----
		  
insert into foodtruck(foodtruck_id,name,city) values(6,'Mariscos al paso','Riode Janeiro');
		  
insert into foodtruck values(5,'Parrilla al Paso', null,'Córdoba');


select * from foodtruck;

update foodtruck
	set cuisine_type = 'Comida chatarra'
		where city = 'Buenos Aires'



select * from foodtruck order by foodtruck_id asc;

update foodtruck
	set cuisine_type = 'Argentina'
		where cuisine_type is null;


select * from foodtruck

delete from foodtruck 
	where city = 'Riode Janeiro'
	