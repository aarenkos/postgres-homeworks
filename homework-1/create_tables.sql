-- SQL-команды для создания таблиц

CREATE TABLE customers
(
	customer_id varchar(10) PRIMARY KEY,
	company_name varchar(100) NOT NUll,
	contact_name varchar(100) NOT NUll
);

CREATE TABLE employees
(
	employee_id smallserial PRIMARY KEY,
	first_name varchar(100),
	last_name varchar(100),
	title varchar(100),
	birth_date date,
	notes text
);

CREATE TABLE orders
(
	order_id smallserial PRIMARY KEY,
	customer_id varchar(10) REFERENCES customers(customer_id),
	employee_id smallserial REFERENCES employees(employee_id),
	order_date date,
	ship_city varchar(100)
);
