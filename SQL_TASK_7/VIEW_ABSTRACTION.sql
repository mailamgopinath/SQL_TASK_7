/*Views for Abstraction*/

/*Abstract Customer Order Summary*/

/*A view can hide complex SQL logic so end users don’t need to know how the data is joined or calculated.
They just query the view like a table.*/

CREATE VIEW v_customer_summary AS
SELECT 
    c.customer_id,
    c.name AS customer_name,
    c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM Customers c
LEFT JOIN Orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name, c.city;

SELECT * FROM v_customer_summary;

