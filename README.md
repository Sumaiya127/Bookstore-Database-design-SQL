# Bookstore-Database-design-SQL
A Sample SQL Project for Bookstore Database Design and Queries.
# 📚 Bookstore SQL Assignment

This project is a beginner-friendly SQL assignment that demonstrates how to create and query a small bookstore database. It includes database creation, table relationships, data insertion, and common SQL queries.

---

## 🗂️ Database Structure

### 📘 Books
- `BookID` (Primary Key)
- `Title`
- `Author`
- `Price`

### 👤 Customers
- `CustomerID` (Primary Key)
- `Name`
- `Email`
- `Phone`

### 📦 Orders
- `OrderID` (Primary Key)
- `CustomerID` (Foreign Key)
- `BookID` (Foreign Key)
- `Quantity`
- `Order_Date`

---

## 🧾 SQL Features Used

- Table creation with primary and foreign keys
- `INSERT`, `SELECT`, `UPDATE`
- JOIN and aggregation
- Basic filtering with `WHERE` and sorting with `ORDER BY`

---

## 🧪 Sample Queries

```sql
-- Books priced above $50
SELECT * FROM books WHERE Price > 50;

-- Total quantity ordered by each customer
SELECT Name, SUM(Quantity) AS Total_quantity_ordered
FROM Orders, Customers
WHERE Orders.CustomerID = Customers.CustomerID
GROUP BY Name;

-- Update book price
UPDATE books
SET Price = 29.99
WHERE BookID = 1001;
