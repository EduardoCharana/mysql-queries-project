-- 1. Delete a test user
DELETE FROM users WHERE user_id = 7;

-- 2. Delete a specific order
DELETE FROM orders WHERE order_id = 5;

-- 3. Delete a product
DELETE FROM products WHERE product_id = 10;

-- 4. Delete items from a specific order
DELETE FROM order_items WHERE order_id = 6;

-- 5. Delete users with no orders
DELETE u FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
WHERE o.order_id IS NULL;

-- 6. Delete orders older than 1 year
DELETE FROM orders WHERE order_date < NOW() - INTERVAL 1 YEAR;

-- 7. Delete all items of canceled orders
DELETE oi FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status = 'canceled';

-- 8. Delete products never sold
DELETE p FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- 9. Delete users with a specific email domain
DELETE FROM users WHERE email LIKE '%@olddomain.com';

-- 10. Delete orders with total amount 0
DELETE FROM orders WHERE total_amount = 0;

-- 11. Delete all order items for a specific product
DELETE FROM order_items WHERE product_id = 3;

-- 12. Delete all orders for a specific user
DELETE FROM orders WHERE user_id = 6;

-- 13. Delete multiple products by name pattern
DELETE FROM products WHERE product_name LIKE '%Test%';

-- 14. Delete order items with quantity 0
DELETE FROM order_items WHERE quantity = 0;

-- 15. Delete users created before 2020
DELETE FROM users WHERE created_at < '2020-01-01';
