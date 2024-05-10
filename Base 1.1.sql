create database ProyectoComputadoras;
 
 use ProyectoComputadoras;
 
 create table adultos(
 IDadultos int auto_increment not null,
 Nombre varchar(50) not null,
 apellido varchar(50) not null,
 DNI int (8) unique not null,
 email varchar(80) not null,
 telefono int (10) not null,
 Descripcion varchar(100),
 
 primary key (IDadultos)
 );
 
 create table computadoras(
 IDcomp int auto_increment not null,
 Nro_computadora int unique not null,
 observaciones varchar(100),
 
 primary key (IDcomp)
 );
 
 create table ficha_de_retiro(
 idRetiro int auto_increment not null,
 Profesor int not null,
 Computadora int not null,
 retiro date not null,
 
 primary key (idRetiro),
 foreign key (Profesor) references adultos(IDadultos),
 foreign key (Computadora) references computadoras(IDcomp)
 );