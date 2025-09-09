# mysql-queries-project
Database structure and practice queries in MySQL, including SELECT, UPDATE, DELETE, and JOINs

# Ecommerce MySQL Project

This project contains a sample MySQL database for an ecommerce system. It includes the database structure, sample data, and example queries to demonstrate SQL skills.

## Database

- `schema.sql`: Database structure (tables and relationships)
- `data.sql`: Sample data for users, products, orders, and order_items

## Queries

- `queries/select_queries.sql`: Example SELECT queries
- `queries/update_queries.sql`: Example UPDATE queries
- `queries/delete_queries.sql`: Example DELETE queries

## How to Use

1. Create the database and tables:
   ```bash
   mysql -u your_user -p < schema.sql
Insert sample data:

bash
Copiar código
mysql -u your_user -p < data.sql
Run example queries:

bash
Copiar código
mysql -u your_user -p < queries/select_queries.sql
mysql -u your_user -p < queries/update_queries.sql
mysql -u your_user -p < queries/delete_queries.sql


##Example Queries Description
###select_queries.sql
-List all users
-List all products in stock
-Orders with total amount greater than 500
-Orders per user
-Products ordered per order

###update_queries.sql
-Update product stock
-Change order status

###delete_queries.sql
-Delete a test user
-Delete an order

Notes
Replace your_user with your MySQL username.

You will be prompted for your MySQL password after running each command.

This project is intended for learning and demonstration purposes.
