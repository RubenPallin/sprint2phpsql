create database restaurante_ruben;
use restaurante_ruben;

create table Restaurante(
    nombre_restaurante varchar(40) not null,
    descripcion varchar(300) not null,
    direccion varchar(70)
);

create table Usuario(
    nombre_usuario varchar(40) not null,
    email varchar(50) not null,
    contraseña varchar(100) not null
);

insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Pizzeria Hanover", "Si quieres comer las mejores pizzas de la ciudad este no es tu lugar.", "Monte Alto");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Zamburiñas Ferrol", "Lo único malo es que está en Ferrol.", "Calle ferrolería");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Mariscos Recio", "El mar al mejor precio.", "Calle Ave de Paraíso Nº7");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Percebesa", "Mayor galardonada con el bogabante de oro.", "La talaya del Arcipreste");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Corme Calidade", "Bien situado, en Corme solo hay un puerto y una iglesia", "Corme cidade");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Enzzo's", "Promoción de ONCE pizzas.", "Howkings");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Marisquería Cavaret", "Buena marisquería", "Calle Ave de Paraíso Nº7");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Max & Henry", "Los leones de Montepinar", "Plaza Mayor");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("El bar l", "Buena marisquería", "Calle Segovia");
insert into Restaurante(nombre_restaurante, descripcion, direccion) VALUES ("Conchería Paki", "Paki le sabe", "Callao");

insert into Usuario(nombre_usuario, email, contraseña) VALUES ("Billy Daniel", "bdanielh@fpcoruna.afundacion.org", "pepellin");
insert into Usuario(nombre_usuario, email, contraseña) VALUES ("Pablo Motos", "elhormiguero@gmail.com", "trancasybarrancas");
insert into Usuario(nombre_usuario, email, contraseña) VALUES ("Alberto Chicote", "pesadillaenlacocina@gmail.com", "cristinapedroche");