
/*
A general query that pulls data from all tables
*/

select c.firstname, c.lastname,s.firstname,s.lastname, o.orderdate, pr.prodname, pr.prodprice, op.quantity
FROM people c JOIN orders o ON (c.person_id=o.customer_id)
JOIN people s ON (s.person_id = o.salesperson_id)
JOIN orders_products op ON (o.order_id=op.order_id)
JOIN products pr ON (op.product_id=pr.product_id);

/*
Be able to find out the total cost of an order
*/


SELECT o.ordernum,SUM(p.prodprice * op.quantity) AS "Order Total"
FROM orders o JOIN orders_products op ON (o.order_id = op.order_id)
JOIN products p ON (p.product_id = op.product_id)
WHERE o.ordernum = 2300234;

/*
Be able to find the total number of items for an order
*/


SELECT o.ordernum,SUM(op.quantity) AS "Order Total"
FROM orders o JOIN orders_products op ON (o.order_id = op.order_id)
JOIN products p ON (p.product_id = op.product_id)
WHERE o.ordernum = 2300234;

/*
Be able to find out the total purchased by a customer
*/

SELECT CONCAT(c.firstname,' ',c.lastname) AS "Customer Name",SUM(pr.prodprice * op.quantity) AS "Customer Lifetime Total"
FROM people c JOIN orders o ON (c.person_id=o.customer_id)
JOIN people s ON (s.person_id = o.salesperson_id)
JOIN orders_products op ON (o.order_id=op.order_id)
JOIN products pr ON (op.product_id=pr.product_id)
WHERE CONCAT(c.firstname,' ',c.lastname) = 'Phillip Waclawski';


/*
Be able to find out the total sold per salesperson
*/

SELECT CONCAT(s.firstname,' ',s.lastname) AS "Saleperson Name",SUM(pr.prodprice * op.quantity) AS "Saleperson Lifetime Total"
FROM people c JOIN orders o ON (c.person_id=o.customer_id)
JOIN people s ON (s.person_id = o.salesperson_id)
JOIN orders_products op ON (o.order_id=op.order_id)
JOIN products pr ON (op.product_id=pr.product_id)
WHERE CONCAT(s.firstname,' ',s.lastname) = 'Sally Struthers';
