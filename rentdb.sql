create database if not exists rentdb;

use rentdb;

create table if not exists departments(
	depno smallint(5) primary key auto_increment,
    name varchar(40) not null,
    address varchar(30) not null,
    description varchar(100) not null
);

create table if not exists employee(
	id integer primary key auto_increment,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    salary decimal not null,
    position varchar(15) not null,
    hiredate date not null,
    department_id smallint(5) not null
);

create table if not exists customer(
	cust_id smallint unsigned primary key auto_increment,
    first_name varchar (15) not null,
    last_name varchar (15) not null,
    address varchar (30) not null,
    postal_code varchar (6) not null
);

create table if not exists car (
	reg_number varchar(8) primary key,
    mark varchar (15) not null,
    model varchar (15) not null,
    rate tinyint not null default 1
);

alter table employee add
foreign key (department_id) references departments(depno);

insert into departments (name, address, description)
values ("IT", "Fake str. 123", "Team of strange people");

insert into departments (name, address, description)
values ("Sales", "Fake str. 123", "Team of very strange people");

insert into departments (name, address, description)
values ("HQ", "Fake str. 123", "Gods");

insert into employee (
	first_name, last_name, salary, position, hiredate, department_id
) values
	("John", "Doe", 1000.0, "X", curdate(), 1),
	("Sam", "Doe", 1000.0, "X", curdate(), 1),
	("Dan", "Brown", 1000.0, "Y", curdate(), 2),
	("Donald", "Trump", 1000.0, "X", curdate(), 3);
