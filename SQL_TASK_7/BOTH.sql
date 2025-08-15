/*Combining Both — Complex Security View*/

/*We can filter data so only recent orders above ₹5000 are visible:*/

CREATE VIEW v_high_value_recent_orders AS
SELECT 
    c.name AS customer_name,
    c.city,
    o.order_date,
    o.total_amount
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
WHERE o.total_amount > 5000
  AND o.order_date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);
  
  SELECT * FROM  v_high_value_recent_orders;
