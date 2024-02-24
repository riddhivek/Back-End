-- a.find out products,which have been sold to "ivan bayross"
select  client_master.NAME,product_master.description,sales_order.ORDERNO 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO 
inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO
 inner join  product_master on sales_order_details.productNo = product_master.productNo where = "ivan bayross";

-- b.find out the products and their quantites that will have to be deliverd in the current month.
select  sales_order.DELYDATE,product_master.description,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO 
inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO
 inner join  product_master on sales_order_details.productNo = product_master.productNo where delydate = "2002-06-27" ;

 +------------+-------------+------------+
| DELYDATE   | description | qtyordered |
+------------+-------------+------------+
| 2002-06-27 | T-Shirts    |         10 |
+------------+-------------+------------+
 
--c.list the productno and description of constantly sold (i.e. rapidly moving);
select  distinct product_master.productno,description  
from sales_order_details 
inner join  product_master on sales_order_details.productNo = product_master.productNo ;

+-----------+--------------+
| productno | description  |
+-----------+--------------+
| P00001    | T-Shirts     |
| P0345     | Shirts       |
| P06734    | Cotton Jeans |
| P07868    | Trousers     |
| P07885    | Pull Overs   |
| P07965    | Denim Shirts |
| P07975    | Lycra Tops   |
+-----------+--------------+

--d.find the names of clients who have purchased trousers
select client_master.name , product_master.description 
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO 
inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO
inner join  product_master on sales_order_details.productNo = product_master.productNo where description = "trousers";

+---------------+-------------+
| name          | description |
+---------------+-------------+
| Chhaya Bankar | Trousers    |
+---------------+-------------+

-- e.list of the products and orders from customers who have ordered less than 5 units of "pull overs"
select client_master.name , product_master.description ,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO 
inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO
inner join  product_master on sales_order_details.productNo = product_master.productNo where qtyordered < 5 and description ="pull overs";


+---------------+-------------+------------+
| name          | description | qtyordered |
+---------------+-------------+------------+
| Ivan Bayross  | Pull Overs  |          2 |
| Chhaya Bankar | Pull Overs  |          3 |
+---------------+-------------+------------+

-- f.find the products and their quantities for ther orders placed by "ivan byross" and "mamta muzumdar"
select client_master.name , product_master.description ,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO 
inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO
inner join  product_master on sales_order_details.productNo = product_master.productNo where name  in ("Ivan bayross" ,"mamta muzumdar");

+----------------+--------------+------------+
| name           | description  | qtyordered |
+----------------+--------------+------------+
| Ivan Bayross   | T-Shirts     |          4 |
| Ivan Bayross   | Denim Shirts |          2 |
| Ivan Bayross   | Pull Overs   |          2 |
| Ivan Bayross   | Shirts       |          2 |
| Ivan Bayross   | Cotton Jeans |          1 |
| Mamta Muzumdar | T-Shirts     |         10 |
+----------------+--------------+------------+

-- g.find the products and their quantites for the orders placed by clientno "c00001" and "c00002"
select client_master.CLIENTN0 , product_master.description ,sales_order_details.qtyordered
from sales_order_details 
inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO 
inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO
inner join  product_master on sales_order_details.productNo = product_master.productNo where client_master.clientnO in ("c00001" ,"c00002");
