CREATE OR REPLACE FUNCTION InsertCars(_car_make VARCHAR(150), _car_model VARCHAR(150), _car_color VARCHAR(150), _price INTEGER)
 RETURNS VOID AS
 $BODY$
 BEGIN
   INSERT INTO cars(car_make, car_model, car_color, price)
   VALUES (_car_make, _car_model, _car_color, _price);
 END;
 $BODY$
 LANGUAGE 'plpgsql' VOLATILE
 COST 100;
 
select InsertCars('Ford', 'Escape', 'White', 12000);
select InsertCars('Chevy', 'Taurus', 'Blue', 25000);
select InsertCars ('Jeep', 'Cherokee', 'Red', 45000);

select * from cars;

CREATE OR REPLACE FUNCTION InsertProductCustomer(_pro_cus_first_name VARCHAR(150), _pro_cus_last_name VARCHAR(150), _product_name VARCHAR(150), _product_price numeric, _UPC bigint)
 RETURNS VOID AS
 $BODY$
 BEGIN
   INSERT INTO product_customer(pro_cus_first_name, pro_cus_last_name, product_name, product_price, UPC)
   VALUES (_pro_cus_first_name, _pro_cus_last_name, _product_name, _product_price, _UPC);
 END;
 $BODY$
 LANGUAGE 'plpgsql' VOLATILE
 COST 100;

select InsertProductCustomer('James', 'Sunderland', 'Map Book', 15.99, 118451188154);
select InsertProductCustomer('John', 'Marsh', 'Socket Set', 159.99, 049325039423);

insert into salesman values (12432, 'Don', 'Draper', 150000, 23, 1);
insert into salesman values (13533, 'James', 'Johnson', 234000, 13, 3);

insert into mechanic values (25432, 'Vino', 'Hernandez', 489651, 15, 0, 0000);
insert into mechanic values (13253, 'Mario', 'digiornio', 869301, 12, 2)

insert into car_customer values(58632, 'John', 'Smith', 12000, 1, 12432,);
insert into car_customer values(45138, 'Harper', 'Johnson', 45000, 3, 13533);

insert into car_sales values(451515, 12432);
insert into car_sales values(451516, 13533);