-- =========================
-- Sample data
-- =========================

-- Users
INSERT INTO users (user_id, full_name, email, password_hash, created_at) VALUES
(1,'John Doe','john@example.com','hashed_password1','2025-09-09 10:15:56'),
(2,'Alice Smith','alice@example.com','hashed_password2','2025-09-09 10:15:56'),
(3,'Bob Johnson','bob@example.com','hashed_password3','2025-09-09 10:15:56'),
(4,'Carol White','carol@example.com','hashed_password4','2025-09-09 10:15:56'),
(5,'David Brown','david@example.com','hashed_password5','2025-09-09 10:15:56'),
(6,'Eva Green','eva@example.com','hashed_password6','2025-09-09 10:15:56'),
(7,'Frank Black','frank@example.com','hashed_password7','2025-09-09 10:15:56');

-- Products
INSERT INTO products (product_id, product_name, description, price, stock_quantity, created_at) VALUES
(1,'Laptop','15-inch display, 16GB RAM, 512GB SSD',1200.00,10,'2025-09-09 10:15:56'),
(2,'Wireless Mouse','Ergonomic design with USB receiver',25.50,50,'2025-09-09 10:15:56'),
(3,'Keyboard','Mechanical keyboard with RGB lights',75.00,20,'2025-09-09 10:15:56'),
(4,'Monitor 24 inch','Full HD monitor',150.00,15,'2025-09-09 10:15:56'),
(5,'External Hard Drive 1TB','USB 3.0',80.00,25,'2025-09-09 10:15:56'),
(6,'USB-C Hub','Multiport adapter',45.00,40,'2025-09-09 10:15:56'),
(7,'Headphones','Noise-cancelling over-ear',120.00,30,'2025-09-09 10:15:56'),
(8,'Webcam','1080p HD webcam',60.00,20,'2025-09-09 10:15:56'),
(9,'Gaming Chair','Ergonomic chair with lumbar support',300.00,10,'2025-09-09 10:15:56'),
(10,'Smartphone','Latest model with 128GB storage',900.00,15,'2025-09-09 10:15:56');

-- Orders
INSERT INTO orders (order_id, user_id, order_date, status, total_amount) VALUES
(1,1,'2025-09-09 10:15:56','pending',1225.50),
(2,2,'2025-09-09 10:15:56','shipped',75.00),
(3,3,'2025-09-09 10:15:56','delivered',1020.00),
(4,4,'2025-09-09 10:15:56','pending',375.00),
(5,5,'2025-09-09 10:15:56','canceled',150.00),
(6,6,'2025-09-09 10:15:56','shipped',1045.00),
(7,7,'2025-09-09 10:15:56','delivered',1200.00);

-- Order Items
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1,1,1,1,1200.00),
(2,1,2,1,25.50),
(3,2,3,1,75.00),
(4,3,4,2,150.00),
(5,3,5,2,80.00),
(6,4,6,5,45.00),
(7,5,4,1,150.00),
(8,6,1,1,1200.00),
(9,6,7,1,120.00),
(10,7,1,1,1200.00);

