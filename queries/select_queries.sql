-- 1. List all users
SELECT * FROM users;

-- 2. List all products in stock
SELECT product_name, stock_quantity FROM products WHERE stock_quantity > 0;

-- 3. Orders with total amount greater than 500
SELECT * FROM orders WHERE total_amount > 500;

-- 4. Count of orders per user
SELECT u.full_name, COUNT(o.order_id) AS total_orders
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.full_name;

-- 5. List products ordered per order
SELECT o.order_id, p.product_name, oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- 6. List all users registered after a certain date
SELECT * FROM users WHERE created_at > '2025-01-01';

-- 7. List products cheaper than 100
SELECT * FROM products WHERE price < 100;

-- 8. Orders with status 'pending'
SELECT * FROM orders WHERE status = 'pending';

-- 9. Users with no orders
SELECT u.full_name FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;

-- 10. Products with stock less than 5
SELECT product_name, stock_quantity FROM products WHERE stock_quantity < 5;

-- 11. Orders sorted by total amount descending
SELECT * FROM orders ORDER BY total_amount DESC;

-- 12. Products containing 'Laptop' in the name
SELECT * FROM products WHERE product_name LIKE '%Laptop%';

-- 13. Users sorted by registration date
SELECT full_name, created_at FROM users ORDER BY created_at ASC;

-- 14. Orders placed today
SELECT * FROM orders WHERE DATE(order_date) = CURDATE();

-- 15. Top 5 most expensive products
SELECT * FROM products ORDER BY price DESC LIMIT 5;
