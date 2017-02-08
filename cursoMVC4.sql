create database bd_escuela
go

use bd_escuela
go

create table cargo
(
car_cod int not null primary key,
car_des varchar(50) not null
)
go

create table usuario 
(
usu_cod int not null primary key,
usu_nom varchar(50) not null,
car_cod int not null references cargo 
)
go

insert into cargo(car_cod,car_des) values (1,'administrador')
insert into cargo(car_cod,car_des) values (2,'auxiliar')
insert into cargo(car_cod,car_des) values (3,'soporte')

insert into usuario(usu_cod,usu_nom,car_cod) values (1,'Luthien',1)
insert into usuario(usu_cod,usu_nom,car_cod) values (2,'Beren',2)
insert into usuario(usu_cod,usu_nom,car_cod) values (3,'Jorge',3)
select*from cargo