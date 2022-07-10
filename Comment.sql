use casemodul3;

create table comment(
idcomment int primary key auto_increment,
account varchar(255),
content varchar(255),
tenphim varchar(255),
sao int,
thoigian datetime default current_timestamp,
idphim int
);

create table reply(
idreply int primary key auto_increment,
idcomment int,
conntentreply varchar(255),
thoigianreply datetime default current_timestamp,

foreign key (idcomment) references comment (idcomment)
);


DELIMITER $$
CREATE TRIGGER tgSetstar
 after insert on comment
 for each row
 BEGIN
 SET SQL_SAFE_UPDATES=0;
	update phim 
    set star =  (select cast( avg(sao) as decimal(5,1))  from comment where idphim = new.idphim  group by comment.idphim  ) where idPhim = new.idPhim ;
SET SQL_SAFE_UPDATES=1;
End;
$$
