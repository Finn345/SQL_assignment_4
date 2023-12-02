create table cars ( 
	car_id SERIAL primary key,
	car_make VARCHAR(150),
	car_model VARCHAR(150),
	car_color VARCHAR(150),
	price integer not null
);

create table product_customer(
	product_id SERIAL primary key,
	pro_cus_first_name VARCHAR(150),
	pro_cus_last_name VARCHAR(150),
	product_name VARCHAR(150),
	product_price Integer,
	UPC Integer
);

create table salesman(
	sales_id SERIAL primary key,
	sales_first_name VARCHAR(150),
	sales_last_name VARCHAR(150),
	revenue_made Integer,
	num_of_sales integer,
	invoice SERIAL,
	car_id SERIAL,
	foreign key(car_id) references car(car_id)
);

create table car_customer(
	car_cust_id SERIAL primary key,
	car_cust_first_name VARCHAR(150),
	car_cust_last_name VARCHAR(150),
	price integer,
	car_id SERIAL,
	foreign key(car_id) references cars(car_id),
	sales_id SERIAL,
	foreign key(sales_id) references salesman(sales_id)
);

create table mechanic(
	mech_id SERIAL primary key,
	mec_first_name VARCHAR(150),
	mec_last_name VARCHAR(150),
	ser_ticket SERIAL,
	num_of_cars_work_on Integer,
	car_cust_id SERIAL,
	foreign key(car_cust_id) references car_customer(car_cust_id),
	car_id SERIAL,
	foreign key(car_id) references cars(car_id)
);

create table car_sales(
	transaction_num SERIAL primary key,
	sales_id SERIAL,
	foreign key(sales_id) references salesman(sales_id)
);
