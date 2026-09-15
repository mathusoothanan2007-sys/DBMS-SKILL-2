# Product and Category Management System

##  Project Description

A MySQL-based database management system for storing and managing product categories and their products. The project demonstrates table creation, relationships, CRUD operations, JOIN queries, aggregate functions, and subqueries.

##  Database

**Database Name:** `product_category_db`
##  Tables

### 1. Category Table
Stores the different product categories available in the system.

- `category_id` – Primary Key, Auto Increment
- `category_name` – Product category name

### 2. Product Table
Stores product information and connects each product with a category.

- `product_id` – Primary Key, Auto Increment
- `product_name` – Name of the product
- `price` – Price of the product
- `category_id` – Foreign Key referencing the Category table

One category can contain multiple products.

##  Categories

- Furniture
- Food
- Stationery
- Kitchen Items

##  SQL Operations Covered

- Database and table creation
- Primary Key and Foreign Key
- Data insertion
- SELECT queries
- INNER JOIN
- LEFT JOIN
- GROUP BY
- HAVING
- Aggregate functions such as `COUNT()` and `AVG()`
- Subqueries using `MAX()`
- INSERT operation
- UPDATE operation
- DELETE operation

##  Technologies Used

- MySQL
- SQL

##  Project Files

- `Product and Category Database Management.sql` – SQL database, tables, sample data, and queries
- `Product_Category_Table_Structure.docx` – Table structure and relationship documentation

##  Objective

To understand and implement database management concepts using a product-category system and practice SQL queries for managing and retrieving data.

##  Author

**Mathusoothanan**


