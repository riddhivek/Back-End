-- \sql

-- \connect root@localhost:3306

-- show databases;

-- create database node_6PM;

-- show databases;

-- use node_6PM;

-- show tables;

create table CLIENT_MASTER(
    CLIENTNO Varchar(6) primary key,
    NAME Varchar(20) not null,
    ADDRESS1 Varchar(30),
    ADDRESS2 Varchar(30),
    CITY Varchar(15),
    PINCODE Int(8),
    STATE Varchar(15),
    BALDUE Int(10)
);

-- describe CLIENT_MASTER;

insert into CLIENT_MASTER (CLIENTNO,NAME,ADDRESS1,ADDRESS2,CITY,PINCODE,STATE,BALDUE) values
   ('C00001','Ivan Bayross','A/14','Worli','Mumbai',400054,'Maharastra',15000),
   ('C00002','Mamta Muzumdar','65','Nariman','Madras',780001,'Tamil Nadu',0),
   ('C00003','Chhaya Bankar','P-7','Bandra','Mumbai',400057,'Maharastra',5000),
   ('C00004','Ashwini Joshi','A/5','Juhu','Bangalore',560001,'Karnataka',0),   
   ('C00005','Hansel Colaco','A/15','Worli','Mumbai',400060,'Maharastra',2000),
   ('C00006','Deepak Sharma','66','Nariman','Mangalore',560050,'Karnataka',0);

   -- select * from CLIENT_MASTER;

+----------+----------------+----------+----------+-----------+---------+------------+--------+
| CLIENTNO | NAME           | ADDRESS1 | ADDRESS2 | CITY      | PINCODE | STATE      | BALDUE |
+----------+----------------+----------+----------+-----------+---------+------------+--------+
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 |
| C00002   | Mamta Muzumdar | 65       | Nariman  | Madras    |  780001 | Tamil Nadu |      0 |
| C00003   | Chhaya Bankar  | P-7      | Bandra   | Mumbai    |  400057 | Maharastra |   5000 |
| C00004   | Ashwini Joshi  | A/5      | Juhu     | Bangalore |  560001 | Karnataka  |      0 |
| C00005   | Hansel Colaco  | A/15     | Worli    | Mumbai    |  400060 | Maharastra |   2000 |
| C00006   | Deepak Sharma  | 66       | Nariman  | Mangalore |  560050 | Karnataka  |      0 |
+----------+----------------+----------+----------+-----------+---------+------------+--------+

-- A. Find out the names of all the clients. 
   select name from CLIENT_MASTER;

-- B. Retrieve the entire contents of the Client_master table.
   select * from CLIENT_MASTER;

-- C. Retrieve the list of names,city,and the state of all the clients.
   select name,city,state from CLIENT_MASTER;

-- D. List all the clients who are located in Mumbai.
   select * from CLIENT_MASTER where city = 'mumbai';

-- E. Change the city of ClientNo 'C00005' to 'Bangalore'.
   update CLIENT_MASTER set CITY = 'Bangalore' where CLIENTNO = 'C00005';

-- F. Change the Baldue of ClientNo 'C00001' to Rs.1000.
   update CLIENT_MASTER set BALDUE = '1000' where CLIENTNO = 'C00001';

-- G. Change the Baldue of ClientNo 'C00001' to Rs.20000 and 'City' to Pune.
   update CLIENT_MASTER set BALDUE = 20000 , CITY = 'Pune' where CLIENTNO = 'C00001';

-- H. Change Name to FullName.
   select name as 'FULLNAME' from CLIENT_MASTER;

-- Delete from CLIENTNO = C00006.
   delete from CLIENT_MASTER where CLIENTNO = 'C00006';

   drop Table CLIENT_MASTER;
   
   drop database node_6PM;


  1. select abs(-4.3) ;
+-----------+
| abs(-4.3) |
+-----------+
|       4.3 |
+-----------+

2.select mod(5,4);
+----------+
| mod(5,4) |
+----------+
|        1 |
+----------+

3.select power(5,4);
+------------+
| power(5,4) |
+------------+
|        625 |
+------------+

4.select round(5,4);
+------------+
| round(5,4) |
+------------+
|          5 |
+------------+

5.

6.select sin(5);
+---------------------+
| sin(5)              |
+---------------------+
| -0.9589242746631385 |
+---------------------+

7.select cos(5);
+---------------------+
| cos(5)              |
+---------------------+
| 0.28366218546322625 |
+---------------------+

8. select tan(5);
+--------------------+
| tan(5)             |
+--------------------+
| -3.380515006246586 |  
+--------------------+

9.select asin(5);
+---------+
| asin(5) |
+---------+
|    NULL |
+---------+

10.select acos(10);
+----------+
| acos(10) |
+----------+
|     NULL |
+----------+

11. select atan(10);
+--------------------+
| atan(10)           |
+--------------------+
| 1.4711276743037347 |
+--------------------+

12.