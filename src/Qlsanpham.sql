CREATE DATABASE QuanLiSanPham;
USE QuanLiSanPham;

CREATE TABLE Customer(
    customerID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    customerName VARCHAR(25) NOT NULL ,
    customerAge TINYINT NOT NULL
);
CREATE TABLE CustomerOrder(
    orderID INT PRIMARY KEY ,
    orderDate DATETIME  ,
    orderTotalPrice INT  ,
    customer_ID INT NOT NULL ,
    FOREIGN KEY (customer_ID ) REFERENCES Customer(customerID)
);
CREATE TABLE Product(
    productID INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    productName VARCHAR(25),
    productPrice INT NOT NULL
);
CREATE TABLE OrderDetail(
    order_ID INT NOT NULL,
    product_ID INT NOT NULL ,
    orderDetailQTY INT NOT NULL,
    PRIMARY KEY (order_ID,product_ID),
    FOREIGN KEY (order_ID) REFERENCES CustomerOrder(orderID),
    FOREIGN KEY (product_ID) REFERENCES Product(productID)
);