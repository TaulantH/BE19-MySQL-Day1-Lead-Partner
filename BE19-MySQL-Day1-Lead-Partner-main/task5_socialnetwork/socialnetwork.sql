CREATE TABLE users(
  user_id INT PRIMARY KEY,
  NickName VARCHAR(20),
  Password VARCHAR(255),
  RealName VARCHAR(20),
  Email VARCHAR(20)
);
CREATE TABLE comments (
  comment_id INT PRIMARY KEY,
  user_id INT,
  Text VARCHAR(20),
  PublicationDate VARCHAR(100),
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE photos (
  Photo_id INT PRIMARY KEY,
  User_id INT,
  PhotoName VARCHAR(30),
  Description VARCHAR(200),
  FOREIGN KEY (User_id) REFERENCES users(user_id)
);
CREATE TABLE frames (
  Frame_id INT PRIMARY KEY,
  Photo_id INT,
  XCoordinate DECIMAL(10, 2),
  YCoordinate DECIMAL(10, 2),
  FOREIGN KEY (Photo_id) REFERENCES photos(Photo_id)
);
-- Tabela users
INSERT INTO users (user_id, NickName, Password, RealName, Email)
VALUES (1, 'johnDoe', 'password123', 'John Doe', 'john.doe@example.com');

-- Tabela comments
INSERT INTO comments (comment_id, user_id, Text, PublicationDate)
VALUES (1, 1, 'Nice photo!', '2023-07-11');

-- Tabela photos
INSERT INTO photos (Photo_id, User_id, PhotoName, Description)
VALUES (1, 1, 'beach.jpg', 'Beautiful beach sunset');

-- Tabela frames
INSERT INTO frames (Frame_id, Photo_id, XCoordinate, YCoordinate)
VALUES (1, 1, 0.25, 0.75);
