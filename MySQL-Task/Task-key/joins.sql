-- inner join but not inner join

SELECT * FROM client_master,sales_order where client_master.CLIENTNO = sales_order.CLIENTNO;

+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| CLIENTNO | NAME           | ADDRESS1 | ADDRESS2 | CITY      | PINCODE | STATE      | BALDUE | ORDERNO | CLIENTNO | ORDERDATE  | SALESMANNO | DELYTYPE | BILLYN | DELYDATE   | ORDERSTATUS |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19001  | C00001   | 2004-06-12 | S00001     | F        | N      | 2002-07-20 | In Process  |
| C00002   | Mamta Muzumdar | 65       | Nariman  | Madras    |  780001 | Tamil Nadu |      0 | O19002  | C00002   | 2004-06-25 | S00002     | P        | N      | 2002-06-27 | Cancelled   |
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19003  | C00001   | 2004-04-03 | S00001     | F        | Y      | 2002-04-07 | Fulfilled   |
| C00005   | Hansel Colaco  | A/15     | Worli    | Mumbai    |  400060 | Maharastra |   2000 | O19008  | C00005   | 2004-05-24 | S00004     | F        | N      | 2002-07-26 | In Process  |
| C00003   | Chhaya Bankar  | P-7      | Bandra   | Mumbai    |  400057 | Maharastra |   5000 | O46865  | C00003   | 2004-02-18 | S00003     | F        | Y      | 2002-02-20 | Fulfilled   |
| C00004   | Ashwini Joshi  | A/5      | Juhu     | Bangalore |  560001 | Karnataka  |      0 | O46866  | C00004   | 2004-05-20 | S00002     | P        | N      | 2002-05-22 | Cancelled   |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+

-- this inner join also write upper query 
-- 1.
select * from client_master inner join sales_order on client_master.CLIENTNO = sales_order.CLIENTNO;

+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| CLIENTNO | NAME           | ADDRESS1 | ADDRESS2 | CITY      | PINCODE | STATE      | BALDUE | ORDERNO | CLIENTNO | ORDERDATE  | SALESMANNO | DELYTYPE | BILLYN | DELYDATE   | ORDERSTATUS |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19001  | C00001   | 2004-06-12 | S00001     | F        | N      | 2002-07-20 | In Process  |
| C00002   | Mamta Muzumdar | 65       | Nariman  | Madras    |  780001 | Tamil Nadu |      0 | O19002  | C00002   | 2004-06-25 | S00002     | P        | N      | 2002-06-27 | Cancelled   |
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19003  | C00001   | 2004-04-03 | S00001     | F        | Y      | 2002-04-07 | Fulfilled   |
| C00005   | Hansel Colaco  | A/15     | Worli    | Mumbai    |  400060 | Maharastra |   2000 | O19008  | C00005   | 2004-05-24 | S00004     | F        | N      | 2002-07-26 | In Process  |
| C00003   | Chhaya Bankar  | P-7      | Bandra   | Mumbai    |  400057 | Maharastra |   5000 | O46865  | C00003   | 2004-02-18 | S00003     | F        | Y      | 2002-02-20 | Fulfilled   |
| C00004   | Ashwini Joshi  | A/5      | Juhu     | Bangalore |  560001 | Karnataka  |      0 | O46866  | C00004   | 2004-05-20 | S00002     | P        | N      | 2002-05-22 | Cancelled   |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+--

-- 2.
select  client_master.NAME,product_master.description,sales_order.ORDERNO from sales_order_details  inner join sales_order  on sales_order_details.ORDERNO = sales_order.ORDERNO- inner join client_master on sales_order.CLIENTNO =  client_master.CLIENTNO inner join  product_master on sales_order_details.productNo = product_master.productNo;

--  3.innerjoin
 select client_master.name from sales_order inner join client_master on sales_order.CLIENTNO = client_master.CLIENTNO;

 +----------------+
| name           |
+----------------+
| Ivan Bayross   |
| Ivan Bayross   |
| Mamta Muzumdar |
| Chhaya Bankar  |
| Ashwini Joshi  |
| Hansel Colaco  |
+----------------+

-- 4.left join
select  * 
from  client_master
left join  sales_order  on sales_order.CLIENTNO = client_master.CLIENTNO;

+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| CLIENTNO | NAME           | ADDRESS1 | ADDRESS2 | CITY      | PINCODE | STATE      | BALDUE | ORDERNO | CLIENTNO | ORDERDATE  | SALESMANNO | DELYTYPE | BILLYN | DELYDATE   | ORDERSTATUS |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19001  | C00001   | 2004-06-12 | S00001     | F        | N      | 2002-07-20 | In Process  |
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19003  | C00001   | 2004-04-03 | S00001     | F        | Y      | 2002-04-07 | Fulfilled   |
| C00002   | Mamta Muzumdar | 65       | Nariman  | Madras    |  780001 | Tamil Nadu |      0 | O19002  | C00002   | 2004-06-25 | S00002     | P        | N      | 2002-06-27 | Cancelled   |
| C00003   | Chhaya Bankar  | P-7      | Bandra   | Mumbai    |  400057 | Maharastra |   5000 | O46865  | C00003   | 2004-02-18 | S00003     | F        | Y      | 2002-02-20 | Fulfilled   |
| C00004   | Ashwini Joshi  | A/5      | Juhu     | Bangalore |  560001 | Karnataka  |      0 | O46866  | C00004   | 2004-05-20 | S00002     | P        | N      | 2002-05-22 | Cancelled   |
| C00005   | Hansel Colaco  | A/15     | Worli    | Mumbai    |  400060 | Maharastra |   2000 | O19008  | C00005   | 2004-05-24 | S00004     | F        | N      | 2002-07-26 | In Process  |
| C00006   | Deepak Sharma  | 66       | Nariman  | Mangalore |  560050 | Karnataka  |      0 | NULL    | NULL     | NULL       | NULL       | NULL     | NULL   | NULL       | NULL        |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+--

-- 5.right join
select   client_master.name,sales_order.delydate 
from  client_master
right join sales_order  on  client_master.CLIENTNO = sales_order.CLIENTNO where delydate = "2002-07-26" ;

+---------------+------------+
| name          | delydate   |
+---------------+------------+
| Hansel Colaco | 2002-07-26 |
+---------------+------------+

-- 6.full join
select   client_master.*,sales_order.* 
from  client_master
inner join sales_order  on  client_master.CLIENTNO = sales_order.CLIENTNO ;

+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| CLIENTNO | NAME           | ADDRESS1 | ADDRESS2 | CITY      | PINCODE | STATE      | BALDUE | ORDERNO | CLIENTNO | ORDERDATE  | SALESMANNO | DELYTYPE | BILLYN | DELYDATE   | ORDERSTATUS |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19001  | C00001   | 2004-06-12 | S00001     | F        | N      | 2002-07-20 | In Process  |
| C00002   | Mamta Muzumdar | 65       | Nariman  | Madras    |  780001 | Tamil Nadu |      0 | O19002  | C00002   | 2004-06-25 | S00002     | P        | N      | 2002-06-27 | Cancelled   |
| C00001   | Ivan Bayross   | A/14     | Worli    | Mumbai    |  400054 | Maharastra |  15000 | O19003  | C00001   | 2004-04-03 | S00001     | F        | Y      | 2002-04-07 | Fulfilled   |
| C00005   | Hansel Colaco  | A/15     | Worli    | Mumbai    |  400060 | Maharastra |   2000 | O19008  | C00005   | 2004-05-24 | S00004     | F        | N      | 2002-07-26 | In Process  |
| C00003   | Chhaya Bankar  | P-7      | Bandra   | Mumbai    |  400057 | Maharastra |   5000 | O46865  | C00003   | 2004-02-18 | S00003     | F        | Y      | 2002-02-20 | Fulfilled   |
| C00004   | Ashwini Joshi  | A/5      | Juhu     | Bangalore |  560001 | Karnataka  |      0 | O46866  | C00004   | 2004-05-20 | S00002     | P        | N      | 2002-05-22 | Cancelled   |
+----------+----------------+----------+----------+-----------+---------+------------+--------+---------+----------+------------+------------+----------+--------+------------+-------------+

