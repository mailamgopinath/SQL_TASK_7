/*Views for Security*/

/*You can create a view that exposes only certain columns or filtered rows, and give users permission only on the view, not the underlying tables.*/

/*Suppose you don’t want to expose customer IDs or exact order amounts, only basic details:*/

CREATE VIEW v_public_orders AS
SELECT 
    c.name AS customer_name,
    o.order_date,
    CONCAT('₹', FORMAT(o.total_amount, 2)) AS display_amount
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id;
    
SELECT * FROM v_public_orders;
