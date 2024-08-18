-- -- for creating databse
-- -- create database <db-name>; 
-- create database mlp;
-- show databases

-- -- for creating tablse
-- -- create table <table-name>(<col1-name> <datatype>(size),<col2-name> <datatype>(size)<col3-name> <datatype>(size)..)
-- create table student(id int, name varchar(20),contact numeric(10),address varchar(20),emailid varchar(20));

-- show tables

-- insert records
-- insert into student values(1001,'Raj',9898989898,'surat','raj@gmail.com');

-- for retrive table 
-- select * from <table-name>;
-- select * from student;

create table client_master(client_no int,name varchar(20),city varchar(10),pincode int,sate varchar(10),Baldue int);


create table product_master(pro_no int,Description varchar(10),profit_percent int,unit_measure varchar(10),qty_on_hand int,reorderLv1 int,sell_price int,cost_price int);

create table salesman_master(salesman_no varchar(10),name varchar(10),add1 varchar(15),add2 varchar(15),city varchar(10),pincode int,state varchar(15),salAmt int,TgtToGet int,YtdSales int,Remarks varchar(10));

insert into client_master values(0001,'lvan Byross','Mumbai',400054,'maharashtr',15000);
insert into client_master values(0002,'Mamta Muzumdar','Mumbai',780001,'maharashtr',0);
insert into client_master values(0003,'Chhaya Bankar','Madras',400057,'Tamilnadu',5000);
insert into client_master values(0004,'Ashwini Joshi','Banglore',560001,'Karnataka',0);
insert into client_master values(0005,'Hansel Colaco','Mumbai',400060,'maharashtr',2000);
insert into client_master values(0004,'Deepak Sharma','Manglore',560050,'Karnataka',0);

-- table two
insert into product_master values(0001,'T-shirt',5,'piece',200,50,350,250);
insert into product_master values(0002,'shirt',6,'piece',150,50,500,350);

insert into product_master values(06734,'jeans',5,'piece',100,20,600,450);
insert into product_master values(07865,'jeans',5,'piece',100,20,750,500);
insert into product_master values(07868,'trousers',2,'piece',150,50,850,550);
insert into product_master values(07885,'pullovers',25,'piece',80,30,700,450);
insert into product_master values(07965,'denimshirt',4,'piece',100,40,350,250);

insert into product_master values(07975,'Lycra Tops',5,'piece',70,30,300,175);
insert into product_master values(08865,'Skirts',5,'piece',75,30,450,300);

-- table three
insert into salesman_master values(0001,'Aman','A/14','Worli','Mumbai',400002,'maharashtr',3000,100,50,'Good');
insert into salesman_master values(0002,'omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
insert into salesman_master values(0002,'omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
insert into salesman_master values();
