-- 1. Update product stock by reducing 1
UPDATE products SET stock_quantity = stock_quantity - 1 WHERE product_id = 1;

-- 2. Change order status to 'shipped'
UPDATE orders SET status = 'shipped' WHERE order_id = 1;

-- 3. Update user email
UPDATE users SET email = 'new_email@example.com' WHERE user_id = 2;

-- 4. Update product price
UPDATE products SET price = 99.99 WHERE product_id = 3;

-- 5. Increase stock for a product
UPDATE products SET stock_quantity = stock_quantity + 10 WHERE product_id = 4;

-- 6. Update user full name
UPDATE users SET full_name = 'Alice Johnson' WHERE user_id = 2;

-- 7. Change order status to 'delivered'
UPDATE orders SET status = 'delivered' WHERE order_id = 2;

-- 8. Update multiple product prices
UPDATE products SET price = price * 1.10 WHERE stock_quantity > 20;

-- 9. Set all pending orders to 'canceled' older than 30 days
UPDATE orders SET status = 'canceled' WHERE status = 'pending' AND order_date < NOW() - INTERVAL 30 DAY;

-- 10. Update total amount of an order
UPDATE orders SET total_amount = 500.00 WHERE order_id = 3;

-- 11. Update multiple users email domain
UPDATE users SET email = REPLACE(email, '@example.com', '@newdomain.com');

-- 12. Reset stock quantity to 0 for discontinued products
UPDATE products SET stock_quantity = 0 WHERE product_name LIKE '%Old Model%';

-- 13. Update unit price in order_items
UPDATE order_items SET unit_price = 49.99 WHERE order_item_id = 5;

-- 14. Change order status to 'shipped' for a specific user
UPDATE orders SET status = 'shipped' WHERE user_id = 4 AND status = 'pending';

-- 15. Increase stock by 5 for products with less than 5 in stock
UPDATE products SET stock_quantity = stock_quantity + 5 WHERE stock_quantity < 5;
