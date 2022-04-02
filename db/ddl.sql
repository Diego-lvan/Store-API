CREATE DATABASE store;
USE store;
CREATE TABLE product(
    productID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (40) NOT NULL,
    price DOUBLE NOT NULL,
    stock INTEGER(6) NOT NULL,
    brand VARCHAR(25) NOT NULL,
    rating FLOAT(4)
);

CREATE TABLE user(
    userID INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) UNIQUE NOT NULL,
    pwd VARCHAR(80) NOT NULL,
    isAdmin BOOLEAN DEFAULT 0
);

CREATE TABLE sale(
    orderID INT PRIMARY KEY AUTO_INCREMENT,
    checkout VARCHAR(80) NOT NULL,
    productID INT NOT NULL,
    userID INT NOT NULL,
    amount INT NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
    delivered BOOLEAN DEFAULT FALSE,
    succeded BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (productID) REFERENCES product(productID),
    FOREIGN KEY (userID) REFERENCES user(userID)
    );