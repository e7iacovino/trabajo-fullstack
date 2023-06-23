CREATE DATABASE TRANSACCION

CREATE TABLE `user` 
(
  `user_id` int NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(2) NOT NULL,
  `ID_CIUDAD` int NOT NULL,
  `FOTO` varchar(45) NOT NULL,
  primary key(user_id),
)

CREATE TABLE `AREAS` 
(
  `ID` int NOT NULL auto_increment,
  `CIUDAD` varchar(45) NOT NULL,
  `DEPARTAMENTO` varchar(45) NOT NULL,
  primary key(ID)
)

CREATE TABLE `HABILIDADES` 
(
  `ID` int NOT NULL auto_increment,
  `NOMBRE` varchar(45) NOT NULL,
  primary key(ID)
)

CREATE TABLE `COINCIDENCIA` 
(
  `ID_COINCIDENCIA` int NOT NULL auto_increment,
  `ID_A` int NOT NULL,
  `ID_B` int NOT NULL,
  `MATCHA` bit,
  `MATCHB` bit,
  primary key(ID_COINCIDENCIA),
  foreign key(ID_A) references user(user_id),
  foreign key(ID_B) references user(user_id)
)

