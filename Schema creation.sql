use analysis;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    JoinDate DATE
);

INSERT INTO Customers (CustomerID, Name, Email, City, JoinDate) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 'New York', '2022-01-15'),
(2, 'Bob Smith', 'bob.smith@example.com', 'Los Angeles', '2023-03-22'),
(3, 'Charlie Brown', 'charlie.brown@example.com', 'Chicago', '2022-08-30'),
(4, 'Diana Prince', 'diana.prince@example.com', 'Houston', '2024-01-12');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Smartphone', 'Electronics', 699.99),
(2, 'Laptop', 'Electronics', 1199.99),
(3, 'Office Chair', 'Furniture', 149.99),
(4, 'Coffee Maker', 'Appliances', 89.99),
(5, 'Blender', 'Appliances', 59.99);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Sales (SaleID, CustomerID, ProductID, Quantity, SaleDate, TotalAmount) VALUES
(1, 1, 1, 2, '2024-02-15', 1399.98),
(2, 2, 2, 1, '2024-03-01', 1199.99),
(3, 3, 3, 1, '2024-03-15', 149.99),
(4, 1, 4, 1, '2024-03-20', 89.99),
(5, 4, 5, 3, '2024-04-05', 179.97);

select * from Customers;

select * from Products;

select * from Sales;