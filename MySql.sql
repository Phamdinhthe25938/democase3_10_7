use casemodul3;

create table account(
     id int primary key AUTO_INCREMENT,
     userName varchar(50)not null,
     birthdayUser  Date  not null,
     numberUser int (50) not null unique,
     mailUser varchar(50) not null,
     passwordUser varchar(50) not null,
     addressUser varchar(50) not  null,
     statusUser int default 1
);
drop table account;
create table Phim(
     idPhim int primary key,
     tenPhim varchar(255),
     thoiGian varchar(255),
     loaiPhim varchar(255),
     daoDien varchar(255),
     quocGia varchar(255),
     dienVien varchar(255),
     nhaSX varchar(255),
	 ngayKhoiChieu date,
	 moTa longtext,
     trailer varchar(255),
     img varchar(255)
);
drop table phim;

Create table cart(
    idAccount int ,
	idPhim int,
    amount int not null,
    primary key(idAccount,idPhim),
    foreign key  (idAccount) references account(id),
    foreign key  ( idPhim) references Phim(idPhim)
);
drop table cart;
create table ghe(
    idGhe int primary key,
    tenGhe varchar(255)
);
drop table ghe;
create table ve(
    idVe int primary key AUTO_INCREMENT,
    idPhim int,
    idGhe int,
    idAccount int,
    foreign key  (idPhim) references Phim(idPhim),
    foreign key(idGhe) references ghe(idGhe),
    foreign key(idAccount) references account(id)
);
drop table ve;
-- DELIMITER //
-- drop trigger if exists soluongve //
-- CREATE TRIGGER  soluongve after insert
-- ON ve
-- FOR EACH ROW
-- BEGIN
--  	update Phong 
--     set soGhe = soGhe-1
--     where idPhong=(select ghe.idPhong from ve join ghe on ve.idGhe=ghe.idGhe); 
-- END//
-- DELIMITER ;
