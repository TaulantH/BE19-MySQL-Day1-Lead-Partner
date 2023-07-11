CREATE TABLE flights (
  flight_id INT PRIMARY KEY,
  airport_id INT,
  registration_number INT,
  destination VARCHAR(100),
  origin VARCHAR(100),
  FOREIGN KEY (airport_id) REFERENCES airports(airport_id),
  FOREIGN KEY (registration_number) REFERENCES plane(registration_number)
);
CREATE TABLE plane (
  registrationNumber INT PRIMARY KEY,
  model VARCHAR(100),
  capacity INT,
  flightRange DOUBLE
);
CREATE TABLE airports (
  airport_id INT PRIMARY KEY,
  city VARCHAR(100),
  country VARCHAR(100)
);
-- Table airports
INSERT INTO airports (airport_id, city, country)
VALUES (1, 'New York', 'United States'),
       (2, 'London', 'United Kingdom'),
       (3, 'Tokyo', 'Japan');

-- Table plane
INSERT INTO plane (registrationNumber, model, capacity, flightRange)
VALUES (1001, 'Boeing 737', 180, 2500.50),
       (1002, 'Airbus A320', 150, 2000.75),
       (1003, 'Embraer E175', 88, 1800.25);

-- Table flights
INSERT INTO flights (flight_id, airport_id, registration_number, destination, origin)
VALUES (1, 1, 1001, 'Los Angeles', 'New York'),
       (2, 2, 1002, 'Paris', 'London'),
       (3, 3, 1003, 'Osaka', 'Tokyo');

