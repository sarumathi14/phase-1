CREATE TABLE Orders_1NF (
    order_id INT,
    order_date DATE,
    customer_id VARCHAR(10),
    customer_name VARCHAR(50),
    customer_address VARCHAR(100)
);
INSERT INTO Orders_1NF VALUES
(101, '2023-01-01', 'C1', 'Alice', '123 Main St'),
(102, '2023-01-02', 'C2', 'Bob', '456 Oak Ave');
CREATE TABLE Customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_address VARCHAR(100)
);
INSERT INTO Customers VALUES 
('C1', 'Alice', '123 Main St'),
('C2', 'Bob', '456 Oak Ave');
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR(10),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Orders VALUES 
(101, '2023-01-01', 'C1'),
(102, '2023-01-02', 'C2');
SELECT * FROM Customers;
SELECT * FROM Orders;
describe customers;
describe orders;













