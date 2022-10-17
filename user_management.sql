create database user_management;
use user_management;
create table persons(
	id int,
	lastname varchar(255) not null,
	firstname varchar(255) not null,
	address varchar(255) not null,
	city varchar(255) not null
);

drop table persons;

insert into persons(id, lastname,firstname, address, city) values
(1, 'Lâm ', 'Quốc Thuận', '21K NVT','HCM'),
(2, 'Phan ', 'Trọng Tín', 'Q8','HCM'),
(3, 'Tăng ', 'Hiếu', 'Cần Giuộc','Long An')
;