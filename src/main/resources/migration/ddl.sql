# 스키마 생성
create database if not exists logistics_db;
use logistics_db;

-- created by chatGPT
-- Logistics_Center.sql

-- Logistics_Center.sql

-- Create Logistics_Center table
CREATE TABLE Logistics_Center
(
    center_id    INT PRIMARY KEY,
    center_name  VARCHAR(100) NOT NULL,
    address      VARCHAR(200) NOT NULL,
    phone_number VARCHAR(20)  NOT NULL
);

-- Warehouse.sql

-- Create Warehouse table
CREATE TABLE Warehouse
(
    warehouse_id   INT PRIMARY KEY,
    warehouse_name VARCHAR(100) NOT NULL,
    location       VARCHAR(200) NOT NULL,
    center_id      INT,
    FOREIGN KEY (center_id) REFERENCES Logistics_Center (center_id)
);

-- User.sql

-- Create User table
CREATE TABLE User
(
    user_id      INT PRIMARY KEY,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    email        VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20)  NOT NULL,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse (warehouse_id)
);

-- Warehouse_Staff.sql

-- Create Warehouse_Staff table
CREATE TABLE Warehouse_Staff
(
    staff_id     INT PRIMARY KEY,
    staff_name   VARCHAR(100) NOT NULL,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse (warehouse_id)
);

-- Supplier.sql

-- Create Supplier table
CREATE TABLE Supplier
(
    supplier_id   INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    address       VARCHAR(200) NOT NULL,
    phone_number  VARCHAR(20)  NOT NULL
);

-- Product.sql

-- Create Product table
CREATE TABLE Product
(
    product_id   INT PRIMARY KEY,
    product_name VARCHAR(100)   NOT NULL,
    category     VARCHAR(50)    NOT NULL,
    unit_price   DECIMAL(10, 2) NOT NULL
);

-- Inventory.sql

-- Create Inventory table
CREATE TABLE Inventory
(
    inventory_id INT PRIMARY KEY,
    warehouse_id INT,
    product_id   INT,
    quantity     INT,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse (warehouse_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
);

-- StockMovement.sql

-- Create StockMovement table
CREATE TABLE StockMovement
(
    movement_id   INT PRIMARY KEY,
    warehouse_id  INT,
    product_id    INT,
    quantity      INT,
    movement_type VARCHAR(20) NOT NULL,
    movement_date DATE        NOT NULL,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse (warehouse_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
);

-- PurchaseOrder.sql

-- Create PurchaseOrder table
CREATE TABLE PurchaseOrder
(
    order_id       INT PRIMARY KEY,
    supplier_id    INT,
    product_id     INT,
    order_quantity INT,
    order_date     DATE NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
);

-- Customer.sql

-- Create Customer table
CREATE TABLE Customer
(
    customer_id  INT PRIMARY KEY,
    first_name   VARCHAR(50)  NOT NULL,
    last_name    VARCHAR(50)  NOT NULL,
    email        VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20)  NOT NULL,
    address      VARCHAR(200) NOT NULL
);

-- SalesOrder.sql

-- Create SalesOrder table
CREATE TABLE SalesOrder
(
    order_id       INT PRIMARY KEY,
    customer_id    INT  NOT NULL,
    product_id     INT  NOT NULL,
    order_quantity INT  NOT NULL,
    order_date     DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
    FOREIGN KEY (product_id) REFERENCES Product (product_id)
);



-- Shipment.sql

-- Create Shipment table
CREATE TABLE Shipment
(
    shipment_id   INT PRIMARY KEY,
    warehouse_id  INT,
    customer_id   INT,
    shipment_date DATE NOT NULL,
    FOREIGN KEY (warehouse_id) REFERENCES Warehouse (warehouse_id),
    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);
