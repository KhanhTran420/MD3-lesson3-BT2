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

INSERT INTO Customer(customerID, customerName, customerAge) VALUES
(1,'Minh Quan',10),(2,'Ngoc Oanh',20),(3,'Hong Ha',30);
INSERT INTO CustomerOrder(orderID, orderDate, orderTotalPrice, customer_ID) VALUES
(1,3/21/2006,NULL,1),
(2,3/23/2006,NULL,2),
(3,3/16/2006,NULL,1);
INSERT INTO Product(productID, productName, productPrice) VALUES
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);
INSERT INTO OrderDetail(order_ID, product_ID, orderDetailQTY) VALUES
(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);