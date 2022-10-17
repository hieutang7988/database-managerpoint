create database  QuanLyBanHang;
use  QuanLyBanHang;
create table Customer (
	cID int not null auto_increment primary key, 
	cName varchar(255),
	cAge int);
    
    insert into Customer (cID, cName, cAge) values
    (1, 'Hiếu',33),
    (2, 'Tín', 35),
    (3, 'Thuận', 34)
    ;
    drop table Customers;
    
    create table Orders (
		oID int not null auto_increment  primary key,
		cID int, 
        foreign key(cID) references  Customer(cID),
        oDate Date ,
        oTotalPrice double
		);