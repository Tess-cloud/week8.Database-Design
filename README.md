# Inventory Tracking System

## Description:
The Inventory Tracking System helps businesses manage and track products in their inventory. It includes features for managing products, suppliers, orders, and stock levels. This project is implemented in MySQL, with a relational database structure that ensures data integrity through primary keys, foreign keys, and other constraints.

## Features:
- Manage products with unique identifiers, categories, and prices.
- Track supplier details and link them to orders.
- Handle orders and order items with many-to-many relationships.
- Keep track of stock received, and link it to specific products.

## How to Run/Setup the Project:
1. Install MySQL on your system if you haven’t already.
2. Open MySQL Workbench, phpMyAdmin, or any MySQL client.
3. Create a new database:

   ```sql
   CREATE DATABASE inventory_tracking;
   USE inventory_tracking;
