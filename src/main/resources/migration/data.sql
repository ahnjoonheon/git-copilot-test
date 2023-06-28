use logistics_db;

-- created by chatGPT
-- InsertTestData.sql

-- Logistics_Center
INSERT IGNORE INTO Logistics_Center (center_id, center_name, address, phone_number)
VALUES (1, 'Logistics Center A', 'Address A', '123-4567');
INSERT IGNORE INTO Logistics_Center (center_id, center_name, address, phone_number)
VALUES (2, 'Logistics Center B', 'Address B', '234-5678');

-- Warehouse
INSERT IGNORE INTO Warehouse (warehouse_id, warehouse_name, location, center_id)
VALUES (1, 'Warehouse A', 'Location A', 1);
INSERT IGNORE INTO Warehouse (warehouse_id, warehouse_name, location, center_id)
VALUES (2, 'Warehouse B', 'Location B', 1);
INSERT IGNORE INTO Warehouse (warehouse_id, warehouse_name, location, center_id)
VALUES (3, 'Warehouse C', 'Location C', 2);

-- Supplier
INSERT IGNORE INTO Supplier (supplier_id, supplier_name, address, phone_number)
VALUES (1, 'Supplier A', 'Address A', '111-1111');
INSERT IGNORE INTO Supplier (supplier_id, supplier_name, address, phone_number)
VALUES (2, 'Supplier B', 'Address B', '222-2222');

-- Product
INSERT IGNORE INTO Product (product_id, product_name, category, unit_price)
VALUES (1, 'Product A', 'Category A', 10.99);
INSERT IGNORE INTO Product (product_id, product_name, category, unit_price)
VALUES (2, 'Product B', 'Category B', 20.99);

-- Customer
INSERT IGNORE INTO Customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '111-1111', 'Address A');
INSERT IGNORE INTO Customer (customer_id, first_name, last_name, email, phone_number, address)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '222-2222', 'Address B');

-- Warehouse_Staff
INSERT IGNORE INTO Warehouse_Staff (staff_id, staff_name, warehouse_id)
VALUES (1, 'Staff A', 1);
INSERT IGNORE INTO Warehouse_Staff (staff_id, staff_name, warehouse_id)
VALUES (2, 'Staff B', 2);

-- User
INSERT IGNORE INTO User (user_id, first_name, last_name, email, phone_number, warehouse_id)
VALUES (1, 'User A', 'Last A', 'user.a@example.com', '111-1111', 1);
INSERT IGNORE INTO User (user_id, first_name, last_name, email, phone_number, warehouse_id)
VALUES (2, 'User B', 'Last B', 'user.b@example.com', '222-2222', 2);

-- Inventory
INSERT IGNORE INTO Inventory (inventory_id, warehouse_id, product_id, quantity)
VALUES (1, 1, 1, 100);
INSERT IGNORE INTO Inventory (inventory_id, warehouse_id, product_id, quantity)
VALUES (2, 1, 2, 200);

-- StockMovement
INSERT IGNORE INTO StockMovement (movement_id, warehouse_id, product_id, quantity, movement_type, movement_date)
VALUES (1, 1, 1, 50, 'IN', '2023-01-01');
INSERT IGNORE INTO StockMovement (movement_id, warehouse_id, product_id, quantity, movement_type, movement_date)
VALUES (2, 2, 2, 100, 'OUT', '2023-01-02');

-- PurchaseOrder
INSERT IGNORE INTO PurchaseOrder (order_id, supplier_id, product_id, order_quantity, order_date)
VALUES (1, 1, 1, 10, '2023-01-01');
INSERT IGNORE INTO PurchaseOrder (order_id, supplier_id, product_id, order_quantity, order_date)
VALUES (2, 2, 2, 20, '2023-01-02');

-- SalesOrder
INSERT IGNORE INTO SalesOrder (order_id, customer_id, product_id, order_quantity, order_date)
VALUES (1, 1, 1, 5, '2023-01-01');
INSERT IGNORE INTO SalesOrder (order_id, customer_id, product_id, order_quantity, order_date)
VALUES (2, 2, 2, 8, '2023-01-02');

-- Shipment
INSERT IGNORE INTO Shipment (shipment_id, warehouse_id, customer_id, shipment_date)
VALUES (1, 1, 1, '2023-01-01');
INSERT IGNORE INTO Shipment (shipment_id, warehouse_id, customer_id, shipment_date)
VALUES (2, 2, 2, '2023-01-02');
