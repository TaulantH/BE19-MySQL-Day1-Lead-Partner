CREATE TABLE set1 (
  id_set INT PRIMARY KEY,
  CatalogNumber INT,
  StartPrice DECIMAL(10, 2),
  HighestBid DECIMAL(10, 2),
  RemainingTime TIME
);

CREATE TABLE Products (
  id_products INT PRIMARY KEY,
  id_set INT,
  intCode INT,
  Name VARCHAR(15),
  Description VARCHAR(100),
  Photo VARCHAR(255),
  FOREIGN KEY (id_set) REFERENCES set1(id_set)
);

CREATE TABLE Customer (
  id_customer INT PRIMARY KEY,
  Username VARCHAR(50),
  Password VARCHAR(50),
  Name VARCHAR(100),
  Email VARCHAR(100)
);
CREATE TABLE Bid (
  id_bid INT PRIMARY KEY,
  id_set INT,
  id_customer INT,
  Amount DECIMAL(10, 2),
  Date DATE,
  Time TIME,
  FOREIGN KEY (id_set) REFERENCES set1(id_set),
  FOREIGN KEY (id_customer) REFERENCES Customer(id_customer)
);

INSERT INTO set1 (id_set, CatalogNumber, StartPrice, HighestBid, RemainingTime)
VALUES
  (1, 1001, 50.00, 0.00, '00:30:00'),
  (2, 1002, 75.00, 0.00, '01:15:00'),
  (3, 1003, 100.00, 50.00, '02:00:00');

INSERT INTO Products (id_products, id_set, intCode, Name, Description, Photo)
VALUES
  (1, 1, 1001, 'Product 1', 'Description for Product 1', 'photo1.jpg'),
  (2, 2, 1002, 'Product 2', 'Description for Product 2', 'photo2.jpg'),
  (3, 3, 1003, 'Product 3', 'Description for Product 3', 'photo3.jpg');

INSERT INTO Customer (id_customer, Username, Password, Name, Email)
VALUES
  (1, 'john123', 'password123', 'John Doe', 'john@example.com'),
  (2, 'jane456', 'password456', 'Jane Smith', 'jane@example.com'),
  (3, 'bob789', 'password789', 'Bob Johnson', 'bob@example.com');

INSERT INTO Bid (id_bid, id_set, id_customer, Amount, Date, Time)
VALUES
  (1, 1, 1, 100.00, '2023-07-11', '10:00:00'),
  (2, 1, 2, 150.00, '2023-07-11', '10:30:00'),
  (3, 2, 3, 200.00, '2023-07-11', '11:00:00');