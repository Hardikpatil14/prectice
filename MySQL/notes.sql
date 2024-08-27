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


create table product_master(PRODUCT_NO varchar(7),Description varchar(10),profit_percent varchar(8),unit_measure varchar(10),qty_on_hand number(8),reorderLv1 number(8),SELLPRICE number(8),COST_PRICE number(8),CHECK(PRODUCT_NO like 'C%'),CHECK(SELLPRICE>0),CHECK(COST_PRICE>0));

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

insert into salesman_master values('S00002','omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
insert into salesman_master values('S00003','Raj','p-7','Bandra','Mumbai',400032,'maharashtr',3000,200,100,'Good');
insert into salesman_master values('S00004','Ashish','A/5','juhu','Mumbai',400044,'maharashtr',3500,200,150,'Good');




-- SUNDAY WORK ON CLASS

Microsoft Windows [Version 10.0.22631.3958]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Hardik>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use mlp;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_mlp   |
+-----------------+
| client_master   |
| product_master  |
| salesman_master |
| student         |
+-----------------+
4 rows in set (0.01 sec)

mysql> insert into salesman_master values(0001,'Aman','A/14','Worli','Mumbai',400002,'maharashtr',3000,100,50,'Good');
ERROR 1366 (HY000): Incorrect integer value: 'Good' for column 'Remarks' at row 1
mysql> drop salesman_master;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'salesman_master' at line 1
mysql> drop  table salesman_master;
Query OK, 0 rows affected (0.02 sec)

mysql> create table salesman_master(salesman_no varchar(10),name varchar(10),add1 varchar(15),add2 varchar(15),city varchar(10),pincode int,state varchar(15),salAmt int,TgtToGet int,YtdSales int,Remarks varchar(10));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into salesman_master values(0001,'Aman','A/14','Worli','Mumbai',400002,'maharashtr',3000,100,50,'Good');
Query OK, 1 row affected (0.01 sec)

mysql> insert into salesman_master values(0002,'omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
Query OK, 1 row affected (0.01 sec)

mysql> select * from salesman_master;
+-------------+-------+------+---------+--------+---------+------------+--------+----------+----------+---------+
| salesman_no | name  | add1 | add2    | city   | pincode | state      | salAmt | TgtToGet | YtdSales | Remarks |
+-------------+-------+------+---------+--------+---------+------------+--------+----------+----------+---------+
| 1           | Aman  | A/14 | Worli   | Mumbai |  400002 | maharashtr |   3000 |      100 |       50 | Good    |
| 2           | omkar | 65   | Nariman | Mumbai |  400001 | maharashtr |   3000 |      200 |      100 | Good    |
+-------------+-------+------+---------+--------+---------+------------+--------+----------+----------+---------+
2 rows in set (0.00 sec)

mysql> select * from client_master;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         4 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> select * from product_master;
+--------+-------------+----------------+--------------+-------------+------------+------------+------------+
| pro_no | Description | profit_percent | unit_measure | qty_on_hand | reorderLv1 | sell_price | cost_price |
+--------+-------------+----------------+--------------+-------------+------------+------------+------------+
|      1 | T-shirt     |              5 | piece        |         200 |         50 |        350 |        250 |
|      2 | shirt       |              6 | piece        |         150 |         50 |        500 |        350 |
|   6734 | jeans       |              5 | piece        |         100 |         20 |        600 |        450 |
|   7865 | jeans       |              5 | piece        |         100 |         20 |        750 |        500 |
|   7868 | trousers    |              2 | piece        |         150 |         50 |        850 |        550 |
|   7885 | pullovers   |             25 | piece        |          80 |         30 |        700 |        450 |
|   7965 | denimshirt  |              4 | piece        |         100 |         40 |        350 |        250 |
|   7975 | Lycra Tops  |              5 | piece        |          70 |         30 |        300 |        175 |
|   8865 | Skirts      |              5 | piece        |          75 |         30 |        450 |        300 |
+--------+-------------+----------------+--------------+-------------+------------+------------+------------+
9 rows in set (0.00 sec)

mysql> select name and Baldue from client_master;
+-----------------+
| name and Baldue |
+-----------------+
|               0 |
|               0 |
|               0 |
|               0 |
|               0 |
|               0 |
+-----------------+
6 rows in set, 6 warnings (0.00 sec)

mysql> select name,Baldue from client_master;
+----------------+--------+
| name           | Baldue |
+----------------+--------+
| lvan Byross    |  15000 |
| Mamta Muzumdar |      0 |
| Chhaya Bankar  |   5000 |
| Ashwini Joshi  |      0 |
| Hansel Colaco  |   2000 |
| Deepak Sharma  |      0 |
+----------------+--------+
6 rows in set (0.00 sec)

mysql> select name,Baldue,city from client_master;
+----------------+--------+----------+
| name           | Baldue | city     |
+----------------+--------+----------+
| lvan Byross    |  15000 | Mumbai   |
| Mamta Muzumdar |      0 | Mumbai   |
| Chhaya Bankar  |   5000 | Madras   |
| Ashwini Joshi  |      0 | Banglore |
| Hansel Colaco  |   2000 | Mumbai   |
| Deepak Sharma  |      0 | Manglore |
+----------------+--------+----------+
6 rows in set (0.00 sec)

mysql> select * from client_master where Baldue=0;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
|         4 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
3 rows in set (0.00 sec)

mysql> select * from client_master where Baldue>1000;
+-----------+---------------+--------+---------+------------+--------+
| client_no | name          | city   | pincode | sate       | Baldue |
+-----------+---------------+--------+---------+------------+--------+
|         1 | lvan Byross   | Mumbai |  400054 | maharashtr |  15000 |
|         3 | Chhaya Bankar | Madras |  400057 | Tamilnadu  |   5000 |
|         5 | Hansel Colaco | Mumbai |  400060 | maharashtr |   2000 |
+-----------+---------------+--------+---------+------------+--------+
3 rows in set (0.00 sec)

mysql> select name from client_master where Baldue>1000;
+---------------+
| name          |
+---------------+
| lvan Byross   |
| Chhaya Bankar |
| Hansel Colaco |
+---------------+
3 rows in set (0.00 sec)

mysql> select * from client_master orderby name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name' at line 1
mysql> select * from client_master order by name;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> select * from client_master dsc order by name;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> select * from client_master order by name desc;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         4 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> update set client_no=6 where pincode=560050 from client_master;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'set client_no=6 where pincode=560050 from client_master' at line 1
mysql> update  client_master set client_no=6 where pincode=560050 ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from client_master order by name desc;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> select * from client_master where name like '%c';
Empty set (0.00 sec)

mysql> select * from client_master where name like '%C';
Empty set (0.00 sec)

mysql> select * from client_master where name like '%A';
+-----------+---------------+----------+---------+-----------+--------+
| client_no | name          | city     | pincode | sate      | Baldue |
+-----------+---------------+----------+---------+-----------+--------+
|         6 | Deepak Sharma | Manglore |  560050 | Karnataka |      0 |
+-----------+---------------+----------+---------+-----------+--------+
1 row in set (0.00 sec)

mysql> select * from client_master where name like '%H';
Empty set (0.00 sec)

mysql> select * from client_master where name like '%M';
Empty set (0.00 sec)

mysql> select * from client_master where name like '_M';
Empty set (0.00 sec)

mysql> select * from client_master where name like 'M%';
+-----------+----------------+--------+---------+------------+--------+
| client_no | name           | city   | pincode | sate       | Baldue |
+-----------+----------------+--------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai |  780001 | maharashtr |      0 |
+-----------+----------------+--------+---------+------------+--------+
1 row in set (0.00 sec)

mysql> select * from client_master where name like 'C%';
+-----------+---------------+--------+---------+-----------+--------+
| client_no | name          | city   | pincode | sate      | Baldue |
+-----------+---------------+--------+---------+-----------+--------+
|         3 | Chhaya Bankar | Madras |  400057 | Tamilnadu |   5000 |
+-----------+---------------+--------+---------+-----------+--------+
1 row in set (0.00 sec)

mysql> select * from client_master where name like '_C%';
Empty set (0.00 sec)

mysql> select * from client_master where name like '_A%';
+-----------+----------------+--------+---------+------------+--------+
| client_no | name           | city   | pincode | sate       | Baldue |
+-----------+----------------+--------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai |  780001 | maharashtr |      0 |
|         5 | Hansel Colaco  | Mumbai |  400060 | maharashtr |   2000 |
+-----------+----------------+--------+---------+------------+--------+
2 rows in set (0.00 sec)

mysql> select * from client_master where name like '%A%';
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> select * from client_master where name like '_A%';
+-----------+----------------+--------+---------+------------+--------+
| client_no | name           | city   | pincode | sate       | Baldue |
+-----------+----------------+--------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai |  780001 | maharashtr |      0 |
|         5 | Hansel Colaco  | Mumbai |  400060 | maharashtr |   2000 |
+-----------+----------------+--------+---------+------------+--------+
2 rows in set (0.00 sec)

mysql> select * from client_master where name like '%A_';
+-----------+----------------+--------+---------+------------+--------+
| client_no | name           | city   | pincode | sate       | Baldue |
+-----------+----------------+--------+---------+------------+--------+
|         2 | Mamta Muzumdar | Mumbai |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | Madras |  400057 | Tamilnadu  |   5000 |
+-----------+----------------+--------+---------+------------+--------+
2 rows in set (0.00 sec)

mysql> select * from client_master where name like '%A';
+-----------+---------------+----------+---------+-----------+--------+
| client_no | name          | city     | pincode | sate      | Baldue |
+-----------+---------------+----------+---------+-----------+--------+
|         6 | Deepak Sharma | Manglore |  560050 | Karnataka |      0 |
+-----------+---------------+----------+---------+-----------+--------+
1 row in set (0.00 sec)

mysql> select city from client_master ;
+----------+
| city     |
+----------+
| Mumbai   |
| Mumbai   |
| Madras   |
| Banglore |
| Mumbai   |
| Manglore |
+----------+
6 rows in set (0.00 sec)

mysql> select distict(city) from client_master;
ERROR 1305 (42000): FUNCTION mlp.distict does not exist
mysql> select distict city from client_master;
ERROR 1054 (42S22): Unknown column 'distict' in 'field list'
mysql> select distinct city from client_master;
+----------+
| city     |
+----------+
| Mumbai   |
| Madras   |
| Banglore |
| Manglore |
+----------+
4 rows in set (0.00 sec)

mysql> select 5*5;
+-----+
| 5*5 |
+-----+
|  25 |
+-----+
1 row in set (0.00 sec)

mysql> select 5*5 'Mul';
+-----+
| Mul |
+-----+
|  25 |
+-----+
1 row in set (0.00 sec)

mysql> select 5+5 'Add';
+-----+
| Add |
+-----+
|  10 |
+-----+
1 row in set (0.00 sec)

mysql> select 5-5 'sub';
+-----+
| sub |
+-----+
|   0 |
+-----+
1 row in set (0.00 sec)

mysql> select * from client_master;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         4 | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
6 rows in set (0.00 sec)

mysql> select count(*) from client_master;
+----------+
| count(*) |
+----------+
|        6 |
+----------+
1 row in set (0.01 sec)

mysql> select count(*) "total client" from client_master;
+--------------+
| total client |
+--------------+
|            6 |
+--------------+
1 row in set (0.00 sec)

mysql> select 5*5*5/10;
+----------+
| 5*5*5/10 |
+----------+
|  12.5000 |
+----------+
1 row in set (0.00 sec)

mysql> select 5*5*5/10+1000-500;
+-------------------+
| 5*5*5/10+1000-500 |
+-------------------+
|          512.5000 |
+-------------------+
1 row in set (0.00 sec)

mysql> select max(Baldue) "total Bal" from client_master;
+-----------+
| total Bal |
+-----------+
|     15000 |
+-----------+
1 row in set (0.00 sec)

mysql> select max(Baldue) "max Bal" from client_master;
+---------+
| max Bal |
+---------+
|   15000 |
+---------+
1 row in set (0.00 sec)

mysql> select min(Baldue) "min Bal" from client_master;
+---------+
| min Bal |
+---------+
|       0 |
+---------+
1 row in set (0.00 sec)

mysql> select sum(Baldue) "sum Bal" from client_master;
+---------+
| sum Bal |
+---------+
|   22000 |
+---------+
1 row in set (0.00 sec)

mysql> select avg(Baldue) "avg Bal" from client_master;
+-----------+
| avg Bal   |
+-----------+
| 3666.6667 |
+-----------+
1 row in set (0.00 sec)

mysql> select floor(3.1);
+------------+
| floor(3.1) |
+------------+
|          3 |
+------------+
1 row in set (0.00 sec)

mysql> select floor(3.0001);
+---------------+
| floor(3.0001) |
+---------------+
|             3 |
+---------------+
1 row in set (0.00 sec)

mysql> select floor(3.9999);
+---------------+
| floor(3.9999) |
+---------------+
|             3 |
+---------------+
1 row in set (0.00 sec)

mysql> select ceil(3.9999);
+--------------+
| ceil(3.9999) |
+--------------+
|            4 |
+--------------+
1 row in set (0.00 sec)

mysql> select ceil(3.001);
+-------------+
| ceil(3.001) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql> select round(3.001);
+--------------+
| round(3.001) |
+--------------+
|            3 |
+--------------+
1 row in set (0.00 sec)

mysql> select round(3.99);
+-------------+
| round(3.99) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql> select round(3.49);
+-------------+
| round(3.49) |
+-------------+
|           3 |
+-------------+
1 row in set (0.00 sec)

mysql> select round(3.5);
+------------+
| round(3.5) |
+------------+
|          4 |
+------------+
1 row in set (0.00 sec)

mysql> delete from client_master where client_no=4;
Query OK, 1 row affected (0.01 sec)

mysql> select*from client-master;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-master' at line 1
mysql> select*from client_master;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         1 | lvan Byross    | Mumbai   |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | Mumbai   |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | Madras   |  400057 | Tamilnadu  |   5000 |
|         5 | Hansel Colaco  | Mumbai   |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
5 rows in set (0.00 sec)

mysql> update client_master set city='surat';
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select*from client_master;
+-----------+----------------+-------+---------+------------+--------+
| client_no | name           | city  | pincode | sate       | Baldue |
+-----------+----------------+-------+---------+------------+--------+
|         1 | lvan Byross    | surat |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | surat |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | surat |  400057 | Tamilnadu  |   5000 |
|         5 | Hansel Colaco  | surat |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | surat |  560050 | Karnataka  |      0 |
+-----------+----------------+-------+---------+------------+--------+
5 rows in set (0.00 sec)

mysql> update client_master set city='mumbai' where name='Chhaya Bankar';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from client_master;
+-----------+----------------+--------+---------+------------+--------+
| client_no | name           | city   | pincode | sate       | Baldue |
+-----------+----------------+--------+---------+------------+--------+
|         1 | lvan Byross    | surat  |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | surat  |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | mumbai |  400057 | Tamilnadu  |   5000 |
|         5 | Hansel Colaco  | surat  |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | surat  |  560050 | Karnataka  |      0 |
+-----------+----------------+--------+---------+------------+--------+
5 rows in set (0.00 sec)



-- 24/8/24 class work 

mysql> selct * from client_master;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selct * from client_master' at line 1
mysql> select * from client_master;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         1 | lvan Byross    | surat    |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | surat    |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | mumbai   |  400057 | Tamilnadu  |   5000 |
|         5 | Hansel Colaco  | madras   |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | Banglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
5 rows in set (0.04 sec)

mysql> select name from client_master;
+----------------+
| name           |
+----------------+
| lvan Byross    |
| Mamta Muzumdar |
| Chhaya Bankar  |
| Hansel Colaco  |
| Deepak Sharma  |
+----------------+
5 rows in set (0.00 sec)

mysql> select * from client_master;
+-----------+----------------+----------+---------+------------+--------+
| client_no | name           | city     | pincode | sate       | Baldue |
+-----------+----------------+----------+---------+------------+--------+
|         1 | lvan Byross    | surat    |  400054 | maharashtr |  15000 |
|         2 | Mamta Muzumdar | surat    |  780001 | maharashtr |      0 |
|         3 | Chhaya Bankar  | mumbai   |  400057 | Tamilnadu  |   5000 |
|         5 | Hansel Colaco  | madras   |  400060 | maharashtr |   2000 |
|         6 | Deepak Sharma  | Banglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
5 rows in set (0.00 sec)

mysql> select name,city,sate from client_master;
+----------------+----------+------------+
| name           | city     | sate       |
+----------------+----------+------------+
| lvan Byross    | surat    | maharashtr |
| Mamta Muzumdar | surat    | maharashtr |
| Chhaya Bankar  | mumbai   | Tamilnadu  |
| Hansel Colaco  | madras   | maharashtr |
| Deepak Sharma  | Banglore | Karnataka  |
+----------------+----------+------------+
5 rows in set (0.00 sec)

mysql> select * from product_master;
+--------+-------------+----------------+--------------+-------------+------------+------------+------------+
| pro_no | Description | profit_percent | unit_measure | qty_on_hand | reorderLv1 | sell_price | cost_price |
+--------+-------------+----------------+--------------+-------------+------------+------------+------------+
|      1 | T-shirt     |              5 | piece        |         200 |         50 |        350 |        250 |
|      2 | shirt       |              6 | piece        |         150 |         50 |        500 |        350 |
|   6734 | jeans       |              5 | piece        |         100 |         20 |        600 |        450 |
|   7865 | jeans       |              5 | piece        |         100 |         20 |        750 |        500 |
|   7868 | trousers    |              2 | piece        |         150 |         50 |        850 |        550 |
|   7885 | pullovers   |             25 | piece        |          80 |         30 |        700 |        450 |
|   7965 | denimshirt  |              4 | piece        |         100 |         40 |        350 |        250 |
|   7975 | Lycra Tops  |              5 | piece        |          70 |         30 |        300 |        175 |
|   8865 | Skirts      |              5 | piece        |          75 |         30 |        450 |        300 |
+--------+-------------+----------------+--------------+-------------+------------+------------+------------+
9 rows in set (0.01 sec)

mysql> select Description from product_master;
+-------------+
| Description |
+-------------+
| T-shirt     |
| shirt       |
| jeans       |
| jeans       |
| trousers    |
| pullovers   |
| denimshirt  |
| Lycra Tops  |
| Skirts      |
+-------------+
9 rows in set (0.00 sec)

mysql> select name from client_master where city=mumbai;
ERROR 1054 (42S22): Unknown column 'mumbai' in 'where clause'
mysql> select name from client_master where city = mumbai;
ERROR 1054 (42S22): Unknown column 'mumbai' in 'where clause'
mysql> select name from client_master where city = mumbai;
ERROR 1054 (42S22): Unknown column 'mumbai' in 'where clause'
mysql> select name from client_master where city = 'mumbai';
+---------------+
| name          |
+---------------+
| Chhaya Bankar |
+---------------+
1 row in set (0.01 sec)

mysql> insert into client_master values(0004,'Ashwini Joshi','Banglore',560001,'Karnataka',0);
Query OK, 1 row affected (0.01 sec)

mysql> select name from client_master where city = 'mumbai';
+---------------+
| name          |
+---------------+
| Chhaya Bankar |
+---------------+
1 row in set (0.00 sec)

mysql> insert into client_master values(0007,'Ashwini Joshi','mumbai',560001,'maharastr',0);
Query OK, 1 row affected (0.01 sec)

mysql> select name from client_master where city = 'mumbai';
+---------------+
| name          |
+---------------+
| Chhaya Bankar |
| Ashwini Joshi |
+---------------+
2 rows in set (0.00 sec)

mysql> update client_master set city='banglore' where  client_no=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update client_master set Baldue=1000 where  client_no=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update product_master set cost_price=950 where  pro_no=7868;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from salesman_master;
+-------------+-------+------+---------+--------+---------+------------+--------+----------+----------+---------+
| salesman_no | name  | add1 | add2    | city   | pincode | state      | salAmt | TgtToGet | YtdSales | Remarks |
+-------------+-------+------+---------+--------+---------+------------+--------+----------+----------+---------+
| 1           | Aman  | A/14 | Worli   | Mumbai |  400002 | maharashtr |   3000 |      100 |       50 | Good    |
| 2           | omkar | 65   | Nariman | Mumbai |  400001 | maharashtr |   3000 |      200 |      100 | Good    |
+-------------+-------+------+---------+--------+---------+------------+--------+----------+----------+---------+
2 rows in set (0.02 sec)

mysql> update salesman_master set city='pune';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from salesman_master;
+-------------+-------+------+---------+------+---------+------------+--------+----------+----------+---------+
| salesman_no | name  | add1 | add2    | city | pincode | state      | salAmt | TgtToGet | YtdSales | Remarks |
+-------------+-------+------+---------+------+---------+------------+--------+----------+----------+---------+
| 1           | Aman  | A/14 | Worli   | pune |  400002 | maharashtr |   3000 |      100 |       50 | Good    |
| 2           | omkar | 65   | Nariman | pune |  400001 | maharashtr |   3000 |      200 |      100 | Good    |
+-------------+-------+------+---------+------+---------+------------+--------+----------+----------+---------+
2 rows in set (0.00 sec)

mysql> update salesman_master set salesman_no='s00001' where salesman_no=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update salesman_master set salesman_no='s00002' where salesman_no=2;
ERROR 1292 (22007): Truncated incorrect DOUBLE value: 's00001'
mysql> select * from salesman_master;
+-------------+-------+------+---------+------+---------+------------+--------+----------+----------+---------+
| salesman_no | name  | add1 | add2    | city | pincode | state      | salAmt | TgtToGet | YtdSales | Remarks |
+-------------+-------+------+---------+------+---------+------------+--------+----------+----------+---------+
| s00001      | Aman  | A/14 | Worli   | pune |  400002 | maharashtr |   3000 |      100 |       50 | Good    |
| 2           | omkar | 65   | Nariman | pune |  400001 | maharashtr |   3000 |      200 |      100 | Good    |
+-------------+-------+------+---------+------+---------+------------+--------+----------+----------+---------+
2 rows in set (0.00 sec)

mysql> update salesman_master set salesman_no='S00002' where salesman_no=2;
ERROR 1292 (22007): Truncated incorrect DOUBLE value: 's00001'
mysql> delete from salesman_master where pincode=400001;
Query OK, 1 row affected (0.01 sec)

mysql> select * from salesman_master;
+-------------+------+------+-------+------+---------+------------+--------+----------+----------+---------+
| salesman_no | name | add1 | add2  | city | pincode | state      | salAmt | TgtToGet | YtdSales | Remarks |
+-------------+------+------+-------+------+---------+------------+--------+----------+----------+---------+
| s00001      | Aman | A/14 | Worli | pune |  400002 | maharashtr |   3000 |      100 |       50 | Good    |
+-------------+------+------+-------+------+---------+------------+--------+----------+----------+---------+
1 row in set (0.00 sec)

mysql> insert into salesman_master values(S00002,'omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
ERROR 1054 (42S22): Unknown column 'S00002' in 'field list'
mysql> insert into salesman_master values(S00003,'Raj','p-7','Bandra','Mumbai',400032,'maharashtr',3000,200,100,'Good');
ERROR 1054 (42S22): Unknown column 'S00003' in 'field list'
mysql> insert into salesman_master values(S00004,'Ashish','A/5','juhu','Mumbai',400044,'maharashtr',3500,200,150,'Good');
ERROR 1054 (42S22): Unknown column 'S00004' in 'field list'
mysql> insert into salesman_master values(S00002,'omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
ERROR 1054 (42S22): Unknown column 'S00002' in 'field list'
mysql> insert into salesman_master values('S00002','omkar','65','Nariman','Mumbai',400001,'maharashtr',3000,200,100,'Good');
Query OK, 1 row affected (0.01 sec)

mysql> insert into salesman_master values('S00003','Raj','p-7','Bandra','Mumbai',400032,'maharashtr',3000,200,100,'Good');
Query OK, 1 row affected (0.00 sec)

mysql> insert into salesman_master values('S00004','Ashish','A/5','juhu','Mumbai',400044,'maharashtr',3500,200,150,'Good');
Query OK, 1 row affected (0.01 sec)

mysql> select * from salesman_master;
+-------------+--------+------+---------+--------+---------+------------+--------+----------+----------+---------+
| salesman_no | name   | add1 | add2    | city   | pincode | state      | salAmt | TgtToGet | YtdSales | Remarks |
+-------------+--------+------+---------+--------+---------+------------+--------+----------+----------+---------+
| s00001      | Aman   | A/14 | Worli   | pune   |  400002 | maharashtr |   3000 |      100 |       50 | Good    |
| S00002      | omkar  | 65   | Nariman | Mumbai |  400001 | maharashtr |   3000 |      200 |      100 | Good    |
| S00003      | Raj    | p-7  | Bandra  | Mumbai |  400032 | maharashtr |   3000 |      200 |      100 | Good    |
| S00004      | Ashish | A/5  | juhu    | Mumbai |  400044 | maharashtr |   3500 |      200 |      150 | Good    |
+-------------+--------+------+---------+--------+---------+------------+--------+----------+----------+---------+
4 rows in set (0.00 sec)

mysql> delete from salesman_master where salAmt=3500;
Query OK, 1 row affected (0.01 sec)

mysql> delete from product_master where qty_on_hand=100;
Query OK, 3 rows affected (0.01 sec)

mysql> delete from client_master where sat=Tamilnadu;
ERROR 1054 (42S22): Unknown column 'sat' in 'where clause'
mysql> delete from client_master where sate=Tamilnadu;
ERROR 1054 (42S22): Unknown column 'Tamilnadu' in 'where clause'
mysql> delete from client_master where sate='Tamilnadu';
Query OK, 1 row affected (0.01 sec)



create table student7(
    id int,
    name varchar(10),
    contectNO numeric(10),
    course_id int,
    constraint pk_stud_id primary key(id),
    constraint fk_stud_course_id foreign key(course_id) references course(course_id));

    -- 25/8/24 CLASS WOEK
    mysql> insert into course values(101,'PHP',3000,'3years');
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(102,'JS',2000,'1y');
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(103,'.NET',2500,'2y');
Query OK, 1 row affected (0.00 sec)

mysql> insert into course values(104,'PYTHON',3500,'2y');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student7 values(1,'HARDIK',3658957510,101);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student7 values(2,'DHIRAJ',36589510,102);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student7 values(3,'HARSHAL',36589510,104);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student7 values(4,'ANKIT',36589510,103);
Query OK, 1 row affected (0.01 sec)


mysql> select*from course;
+----------+------------+------+-----------+
| cours_id | course_des | fees | dueration |
+----------+------------+------+-----------+
|      101 | PHP        | 3000 | 3years    |
|      102 | JS         | 2000 | 1y        |
|      103 | .NET       | 2500 | 2y        |
|      104 | PYTHON     | 3500 | 2y        |
+----------+------------+------+-----------+
4 rows in set (0.00 sec)

mysql> select*from student7;
+----+---------+------------+----------+
| id | name    | contectNO  | cours_id |
+----+---------+------------+----------+
|  1 | HARDIK  | 3658957510 |      101 |
|  2 | DHIRAJ  |   36589510 |      102 |
|  3 | HARSHAL |   36589510 |      104 |
|  4 | ANKIT   |   36589510 |      103 |
+----+---------+------------+----------+
4 rows in set (0.00 sec)






-- JOIN QUERY SUNDAY 




select * from student7,course
where student7.course_id = course.course_id;

select student7.name,course.course_des,course.fees from student7,course
where student7.course_id = course.course_id;

select st.name,cs.course_des,cs.fees from student7 st,course cs
where st.course_id = cs.course_id;

 select student7.name,course.course_des,course.fees from student7,course
    -> where student7.course_id = course.course_id;

    
+--------+------------+------+
| name   | course_des | fees |
+--------+------------+------+
| HARDIK | PHP        | 3000 |
| CXV    | JS         | 2000 |
| DGDG   | .NET       | 2000 |
| TRTR   | .NET       | 2000 |
| RRR    | PYTHON     | 1000 |
+--------+------------+------+
5 rows in set (0.00 sec)

mysql>
mysql> select st.name,cs.course_des,cs.fees from student7 st,course cs
    -> where st.course_id = cs.course_id;
+--------+------------+------+
| name   | course_des | fees |
+--------+------------+------+
| HARDIK | PHP        | 3000 |
| CXV    | JS         | 2000 |
| DGDG   | .NET       | 2000 |
| TRTR   | .NET       | 2000 |
| RRR    | PYTHON     | 1000 |
+--------+------------+------+
5 rows in set (0.00 sec)



-- SUNDAY HOME WORK MULTIPLE TABLES

-- TABLE CLIENT MASTER 
create table client_master(CLIENTNO varchar(7) primary key,NAME varchar(15),Address1 varchar(20),Address2 varchar(20),CITY varchar(15),PINCODE varchar(8),STATE varchar(15),BALDUE varchar(10),CHECK(CLIENTNO like 'C%'));
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| CLIENTNO | varchar(7)  | NO   | PRI | NULL    |       |
| NAME     | varchar(15) | YES  |     | NULL    |       |
| Address1 | varchar(20) | YES  |     | NULL    |       |
| Address2 | varchar(20) | YES  |     | NULL    |       |
| CITY     | varchar(15) | YES  |     | NULL    |       |
| PINCODE  | varchar(8)  | YES  |     | NULL    |       |
| STATE    | varchar(15) | YES  |     | NULL    |       |
| BALDUE   | varchar(10) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
insert into client_master values('C00001','lvan Byross','-','-','Mumbai','400054','maharashtra','15000');
insert into client_master values('C00002','Mamta Muzumdar','-','-','Mumbai','780001','maharashtra','0');
insert into client_master values('C00003','Chhaya Bankar','-','-','Madras','400057','Tamilnadu','5000');
insert into client_master values('C00004','Ashwini Joshi','-','-','Banglore','560001','Karnataka','0');
insert into client_master values('C00005','Hansel Colaco','-','-','Mumbai','400060','maharashtr','2000');
insert into client_master values('C00006','Deepak Sharma','-','-','Manglore','560050','Karnataka','0');



-- TABLE PRODUCT MASTER 
 create table product_master(PRODUCT_NO varchar(7),                       
    -> DESCRIPTION varchar(17),
    -> PROFIT_PRE varchar(5),
    -> UNIT_MEASURE varchar(12),
    -> QTY_ONHAND numeric(8),
    -> RECORDLVL numeric(8),
    -> SELLPRICE varchar(8),
    -> COSTPRICE varchar(8),
    -> constraint pk_product_no primary key(PRODUCT_NO),
    -> CHECK(SELLPRICE>0),
    -> CHECK(COSTPRICE>0),
    -> CHECK(PRODUCT_NO LIKE 'P%'));

insert into product_master values('P00001','T-shirt','5','piece',200,50,'350','250');
insert into product_master values('P0345','shirt','6','piece',150,50,'500','350');
insert into product_master values('P06734','jeans','5','piece',100,20,'600','450');
insert into product_master values('P07865','jeans','5','piece',100,20,'750','500');
insert into product_master values('P07868','trousers','2','piece',150,50,'850','550');
insert into product_master values('P07885','pullovers','2.5','piece',80,30,'700','450');
insert into product_master values('P07965','denimshirt','4','piece',100,40,'350','250');
insert into product_master values('P07975','Lycra Tops','5','piece',70,30,'300','175');
insert into product_master values('P08865','Skirts','5','piece',75,30,'450','300');


-- TABLE SALESMAN MASTER
 create table salesman_master(SALESMANNO varchar(7) primary key,
    -> NAME varchar(15),
    -> ADDRESS1 varchar(20),
    -> ADDRESS2 varchar(20),
    -> CITY varchar(15),
    -> PINCODE numeric(8),
    -> STATE varchar(15),
    -> SALAMT varchar(8),
    -> TGTTOGET varchar(8),
    -> YTDSALES varchar(8),
    -> REMARKS varchar(10),
    -> CHECK(SALESMANNO LIKE 'S%'),
    -> CHECK(SALAMT>0),
    -> CHECK(TGTTOGET>0));

insert into salesman_master values('S00001','Aman','A/14','Waroli','Mumbai',400002,'maharashtra','3000','100','50','Good');
insert into salesman_master values('S00002','omkar','65','Nariman','Mumbai',400001,'maharashtra','3000','200','100','Good');
insert into salesman_master values('S00003','Raj','p-7','Bandra','Mumbai',400032,'maharashtra','3000','200','100','Good');
insert into salesman_master values('S00004','Ashish','A/5','juhu','Mumbai',400044,'maharashtra','3500','200','150','Good');


-- TABLE SALES OREDR 
create table sales_order(ORDERNO varchar(7) primary key,
          CLIENTNO varchar(7),
          ORDERDATE Date,
          DELYADDR varchar(25),
          SALESMANNO varchar(7),
          DELYTYPE varchar(5),
          BILLYN char,
          DELYDATE Date,
          ORDERSTATUS varchar(10),
          CHECK(ORDERNO LIKE 'O%'),
          constraint fk_sale_client_id foreign key(CLIENTNO)
          references client_master(CLIENTNO),
          constraint fk_sale_sales_id foreign key(SALESMANNO)
          references salesman_master(SALESMANNO),
          CHECK(DELYTYPE IN("P","F")),
          CHECK(ORDERSTATUS IN("in process","Fulfilled","BackOrder","Cancelled")));

    mysql> desc sales_order;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| ORDERNO     | varchar(7)  | NO   | PRI | NULL    |       |
| CLIENTNO    | varchar(7)  | YES  | MUL | NULL    |       |
| ORDERDATE   | date        | YES  |     | NULL    |       |
| DELYADDR    | varchar(25) | YES  |     | NULL    |       |
| SALESMANNO  | varchar(7)  | YES  | MUL | NULL    |       |
| DELYTYPE    | varchar(5)  | YES  |     | NULL    |       |
| BILLYN      | char(1)     | YES  |     | NULL    |       |
| DELYDATE    | date        | YES  |     | NULL    |       |
| ORDERSTATUS | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

insert into sales_order values('O19001','C00001','04-06-12','','S00001','F','N','02-July-20','in process');
insert into sales_order values('O19002','C00002','04-06-25','','S00002','P','N','02-06-27','Cancelled');
insert into sales_order values('O46865','C00003','04-02-18','','S00003','F','Y','02-02-20','Fulfilled');
insert into sales_order values('O19003','C00001','04-04-03','','S00001','F','Y','02-04-07','Fulfilled');
insert into sales_order values('O46866','C00004','04-05-20','','S00002','P','N','02-05-22','Cancelled');
insert into sales_order values('O19008','C00005','04-05-24','','S00004','F','N','02-07-26','in process');



-- TABLE SALES ODER DETAILS
 create table sales_order_details(ORDERNO varchar(7),
     PRODUCT_NO varchar(7),
     QTYORDERED numeric(8),
     QTYDISP numeric(8),
     PRODUCTRATE varchar(10),
     constraint fk_sale_order_no foreign key(ORDERNO)
     references sales_order(ORDERNO),
     constraint fk_sale_prod_no foreign key(PRODUCT_NO)
     references product_master(PRODUCT_NO));
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| ORDERNO     | varchar(7)   | YES  | MUL | NULL    |       |
| PRODUCT_NO  | varchar(7)   | YES  | MUL | NULL    |       |
| QTYORDERED  | decimal(8,0) | YES  |     | NULL    |       |
| QTYDISP     | decimal(8,0) | YES  |     | NULL    |       |
| PRODUCTRATE | varchar(10)  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

insert into sales_order_details values('O19001','P00001', 4,4,'525');
insert into sales_order_details values('O19001','P07965', 2,1,'8400');
insert into sales_order_details values('O19001','P07885', 2,1,'5250');
insert into sales_order_details values('O19002','P00001', 10,0,'525');
insert into sales_order_details values('O46865','P07868', 3,3 ,'3150');
insert into sales_order_details values('O46865','P07885', 3,1 ,'5250');
insert into sales_order_details values('O46865','P00001', 10,10 ,'525');
insert into sales_order_details values('O46865','P0345', 4,4 ,'1050');
insert into sales_order_details values('O19003','P0345', 2,2 ,'1050');
insert into sales_order_details values('O19003','P06734',1 ,1 ,'12000');
insert into sales_order_details values('O46866','P07965',1 ,0 ,'8400');
insert into sales_order_details values('O46866','P07975',1 ,0 ,'1050');
insert into sales_order_details values('O19008','P00001',10 ,5 ,'525');
insert into sales_order_details values('O19008','P07975', 5,3 ,'1050');




