-- 1. List all orders with user details
SELECT o.order_id, u.full_name, u.email, o.status, o.total_amount
FROM orders o
JOIN users u ON o.user_id = u.user_id;

-- 2. List all order items with product details
SELECT o.order_id, p.product_name, oi.quantity, oi.unit_price
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN products p ON oi.product_id = p.product_id;

-- 3. Total spent by each user
SELECT u.full_name, SUM(o.total_amount) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.full_name;

-- 4. Each order with product names and quantities
SELECT o.order_id, u.full_name, p.product_name, oi.quantity
FROM orders o
JOIN users u ON o.user_id = u.user_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- 5. Products never sold
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- 6. Users and their last order date
SELECT u.full_name, MAX(o.order_date) AS last_order
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.full_name;

-- 7. Orders with product details
SELECT o.order_id, o.status, p.product_name, oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- 8. Users with more than 1 order
SELECT u.full_name, COUNT(o.order_id) AS order_count
FROM users u
JOIN orders o ON u.user_id = o.user_id
GROUP BY u.full_name
HAVING order_count > 1;

-- 9. Total quantity sold per product
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- 10. Orders with total amount per user
SELECT u.full_name, o.order_id, o.total_amount
FROM orders o
JOIN users u ON o.user_id = u.user_id;

-- 11. Users and the number of distinct products ordered
SELECT u.full_name, COUNT(DISTINCT oi.product_id) AS distinct_products
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY u.full_name;

-- 12. Orders and products where quantity > 2
SELECT o.order_id, p.product_name, oi.quantity
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE oi.quantity > 2;

-- 13. Products with stock less than sold quantity
SELECT p.product_name, p.stock_quantity, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name, p.stock_quantity
HAVING total_sold > stock_quantity;

-- 14. Users without any orders (LEFT JOIN)
SELECT u.full_name
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;

-- 15. Orders with multiple products
SELECT o.order_id, COUNT(oi.product_id) AS products_count
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
HAVING products_count > 1;
