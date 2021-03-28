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
    hiredate date not null
);

