--Display PRODUCTID, CATEGORYID, 
--SUM UNITPRICE by Categoryid of the Products
SELECT productid,categoryid, sum(unitprice) 
FROM products GROUP BY productid,categoryid;
--Display orderid,min quantity by orderid whose min quantity is greater than 30
SELECT orderid,min(quantity) 
FROM order_details GROUP BY orderid 
HAVING min(quantity)>30
ORDER BY min(quantity);
--Display productid,orderid,max of quantity by orderid
-- of the orderdetails
SELECT productid, orderid, max(quantity) 
FROM order_details GROUP BY orderid,productid
--Create a view as served_cities to display employeeid,orderid and city
CREATE VIEW served_cities  AS
SELECT employeeid,orderid,shipcity FROM orders;


