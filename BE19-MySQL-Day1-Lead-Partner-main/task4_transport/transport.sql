CREATE TABLE Route (
  code_id INT PRIMARY KEY,
  distance INT,
  source INT,
  destination VARCHAR(55)
);

CREATE TABLE Bus (
  bus_id INT PRIMARY KEY,
  code_id INT,
  fk_busstation_id int,
  licensePlate VARCHAR(20),
  model VARCHAR(50),
  driverName VARCHAR(100),
  FOREIGN KEY (code_id) REFERENCES Route(code_id),
  FOREIGN KEY (fk_busstation_id) REFERENCES BusStation(busstaion_id)
);

CREATE TABLE BusStation (
  busstation_id INT PRIMARY KEY,
  stationName VARCHAR(100),
  city VARCHAR(50),
  address VARCHAR(100),
  phoneNumber INT
);

CREATE TABLE BusStop (
  busstop_id INT PRIMARY KEY,
  code_id INT,
  orderNumber INT,
  city VARCHAR(50),
  address VARCHAR(100),
  phoneNumber VARCHAR(20),
  FOREIGN KEY (code_id) REFERENCES Route(code_id)
);

INSERT INTO BusStop (busstop_id, code_id, orderNumber, city, address, phoneNumber)
VALUES
  (1, 1, 1, 'City 1', 'Address 1', '123-456-7890'),
  (2, 1, 2, 'City 2', 'Address 2', '234-567-8901'),
  (3, 2, 1, 'City 3', 'Address 3', '345-678-9012');

INSERT INTO BusStation (busstation_id, stationName, city, address, phoneNumber)
VALUES
  (1, 'Station 1', 'City 1', 'Address 1', 1234567890),
  (2, 'Station 2', 'City 2', 'Address 2', 2345678901),
  (3, 'Station 3', 'City 3', 'Address 3', 3456789012);

INSERT INTO Bus (bus_id, code_id, licensePlate, model, driverName)
VALUES
  (1, 1, 'ABC123', 'Model 1', 'John Doe'),
  (2, 2, 'DEF456', 'Model 2', 'Jane Smith'),
  (3, 3, 'GHI789', 'Model 3', 'Bob Johnson');

INSERT INTO Route (code_id, distance, source, destination)
VALUES
  (1, 100, 1, 'Destination 1'),
  (2, 200, 2, 'Destination 2'),
  (3, 150, 3, 'Destination 3');