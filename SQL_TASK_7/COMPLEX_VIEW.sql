/*Use CREATE VIEW with complex SELECT*/

/*
We want a view showing:

Customer name & city

Total number of orders placed

Total amount spent

Average order value

Date of last order

Only include customers who spent more than ₹5000 in total
*/

CREATE VIEW CustomerOrderSummary AS
SELECT 
    c.customer_id,
    c.name AS customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent,
    ROUND(AVG(o.total_amount), 2) AS avg_order_value,
    MAX(o.order_date) AS last_order_date
FROM Customers c
JOIN Orders o 
    ON c.customer_id = o.customer_id
WHERE o.total_amount > 0
GROUP BY c.customer_id, c.name, c.city
HAVING SUM(o.total_amount) > 5000
ORDER BY total_spent DESC;

SELECT * FROM CustomerOrderSummary;
