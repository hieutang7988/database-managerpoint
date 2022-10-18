drop database quanlybanhang;
create database  QuanLyBanHang;
use  QuanLyBanHang;
create table Customer (
	cID int not null auto_increment primary key, 
	cName varchar(255),
	cAge int);
    
    insert into Customer ( cName, cAge) values
    ( 'Hiếu',33),
    ( 'Tín', 35),
    ( 'Thuận', 34)
    ;
    -- orderscustomerdrop table Customers;
    
    create table Orders (
		oID int not null auto_increment  primary key,
		cID int, 
        foreign key(cID) references  Customer(cID),
        oDate Date ,
        oTotalPrice double
		);
        
        create table Product (
        pID INT NOT NULL auto_increment auto_increment primary KEY,
        pName varchar(25) not null,
        pPrice int not null);
        
        create table OrderDetail (
        oID int,
        pID int,
        primary key (oID,pID),
        foreign key(oID) references orders(oID),
        foreign key(pID) references Product(pID),
        odQTY INT NOT NULL);