create database checkpoint1;
use checkpoint1;


create table Customer(
customer_ID int not null primary key auto_increment,
customer_Name varchar (255) not null,
customer_Phone varchar(255) not null
);

create table Product(
product_ID int auto_increment primary key,
product_Name varchar (255) not null,
price int not null
);

create table Orders(
customer_ID int not null,
product_ID int not null,
quantity int not null ,
total int not null,
amount int ,
foreign key (product_ID) references Product (product_ID),
foreign key (customer_ID) references Customer(customer_ID)
);

alter table Product 
add column Catagory varchar(20);

alter table Orders
add column orderDate date ;


