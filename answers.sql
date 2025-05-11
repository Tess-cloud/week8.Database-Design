-- Create the 'Products' table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Product ID
    name VARCHAR(255) NOT NULL UNIQUE,          -- Product name, must be unique
    category VARCHAR(100) NOT NULL,             -- Product category
    price DECIMAL(10, 2) NOT NULL,              -- Price of the product
    quantity_in_stock INT NOT NULL             -- Quantity of the product in stock
);

-- Create the 'Suppliers' table
CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Supplier ID
    name VARCHAR(255) NOT NULL,                  -- Supplier name
    contact_number VARCHAR(15),                  -- Supplier contact number
    email VARCHAR(255)                           -- Supplier email
);

-- Create the 'Orders' table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Order ID
    order_date DATE NOT NULL,                  -- Date of the order
    supplier_id INT,                           -- Foreign Key referencing Suppliers
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Create the 'Order_Items' table (Many-to-Many relationship between Orders and Products)
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary Key for Order Item ID
    order_id INT,                                 -- Foreign Key referencing Orders
    product_id INT,                               -- Foreign Key referencing Products
    quantity INT NOT NULL,                        -- Quantity of the product in the order
    price_at_time_of_order DECIMAL(10, 2) NOT NULL, -- Price of the product at the time of the order
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create the 'Stock' table (Tracks stock quantity)
CREATE TABLE Stock (
    stock_id INT AUTO_INCREMENT PRIMARY KEY,    -- Primary Key for Stock ID
    product_id INT,                             -- Foreign Key referencing Products
    quantity_received INT NOT NULL,             -- Quantity of product received
    date_received DATE NOT NULL,                -- Date when the stock was received
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
