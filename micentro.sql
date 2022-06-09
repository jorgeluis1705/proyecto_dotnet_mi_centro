--drop database MICENTRO_PFINAL

create database MICENTRO_PFINAL
use MICENTRO_PFINAL

--1
create table Tienda
(
id_producto int identity (1,1) NOT NULL,
nom_producto nvarchar (50),
precio int,
cantidad int,
primary key (id_producto),
unique (id_producto, nom_producto)
)

insert into Tienda values('Cafe',25,50)
insert into Tienda values('Refresco',15,20)
insert into Tienda values('San peregrino',20,30)
insert into Tienda values('Botella de agua',10,40)
insert into Tienda values('Jugo verde',25,15)
insert into Tienda values('Ensalada pasta c/atun',60,10)
insert into Tienda values('Quiche lorraine c/ensalada y aderezo',50,10)
insert into Tienda values('Quiche 3 quesos c/ensalada y aderezo',50,10)
insert into Tienda values('Lasagña c/ensalada y aderezo',50,10)
insert into Tienda values('Pizza',20,15)
insert into Tienda values('Molletes',25,15)
insert into Tienda values('Sandwich de pollo o jamon c/ensalada',35,20)
insert into Tienda values('Pizza',20,15)
insert into Tienda values('Flan napolitano',20,10)
insert into Tienda values('Cheesecake',25,5)
insert into Tienda values('Panque de elote',20,5)
insert into Tienda values('Croissant',17,10)
insert into Tienda values('Danesa',23,10)
insert into Tienda values('Wafle con fruta',30,15)
insert into Tienda values('Dona',15,10)
insert into Tienda values('Dona rellena',17,10)
insert into Tienda values('Asi te extraño, asi estas conmigo',700,3)
insert into Tienda values('Asi me siento, asi lo registro',900,3)
insert into Tienda values('Asi mi problema, asi lo resuelvo',1100,3)
insert into Tienda values('Asi somos, asi estamos',1100,3)
insert into Tienda values('Huachipaki, asi me siento, asi me expreso',1300,3)
insert into Tienda values('Asi mis pesadillas, asi mis sueños',1400,3)
insert into Tienda values('Asi me enojo, asi me calmo',1400,3)
insert into Tienda values('Juego memoria de emociones',90,3)
insert into Tienda values('Frases para papá',110,3)
insert into Tienda values('Libreta del artista chica',350,3)
insert into Tienda values('Libreta del artista mediana',445,3)
insert into Tienda values('Libreta del artista grande',585,3)
insert into Tienda values('Turbante',220,3)
insert into Tienda values('Crayon rocks 8pz',155,3)
insert into Tienda values('Crayon rocks 16pz',255,3)
insert into Tienda values('Crayon rocks 32pz',355,3)
insert into Tienda values('Crayon rocks 64pz',655,3)
insert into Tienda values('Bolsa de exploracion',400,3)
insert into Tienda values('Mandil niño',150,10)
insert into Tienda values('Mandil adulto',180,10)
insert into Tienda values('Guardian de los dientes',110,5)
insert into Tienda values('Loris',1100,3)
insert into Tienda values('Cobijitas',150,15)
insert into Tienda values('Juego de cartas para multiplicar',200,10)
insert into Tienda values('Imapad mini',550,8)
insert into Tienda values('Imapad grande',850,10)
insert into Tienda values('Imanix 32',999,5)
insert into Tienda values('Imanix 60',1599,8)
insert into Tienda values('Imanix 100',2399,5)
insert into Tienda values('Cuento mi lugar favorito',150,10)
insert into Tienda values('Cuento simon y el sauce lloron',210,10)
insert into Tienda values('Lamina gigante',300,8)
insert into Tienda values('Cuadernillo mamá y papá ya no viven juntos',250,10)
insert into Tienda values('Libro mamá y papá ya no viven juntos',300,10)

--2
create table Alumno
(
id_alumno int identity (1,1) NOT NULL, 
nom_alumno nvarchar(50),
id_taller int,
taller nvarchar(50),
primary key (id_alumno),
unique (id_alumno, nom_alumno),
foreign key(id_taller) references Taller
)

insert into Alumno values('Valentina Gonzalez',2,'Musica vespertino')
insert into Alumno values('Jose Enrique Gonzalez',2,'Musica vespertino')
insert into Alumno values('Santiago',2,'Musica vespertino')
insert into Alumno values('Ricardo',2,'Musica vespertino')
insert into Alumno values('Mateo',3,'Pensamiento matematico')
insert into Alumno values('Camilo',4,'Experimentacion artistica lunes')
insert into Alumno values('Ricardo H',4,'Experimentacion artistica lunes')
insert into Alumno values('Sara',5,'Experimentacion artistica miercoles')
insert into Alumno values('Jimena',5,'Experimentacion artistica miercoles')
insert into Alumno values('Sebastian Gomez',6,'Tinkering')
insert into Alumno values('Emi',6,'Tinkering')
insert into Alumno values('Luis Eduardo',6,'Tinkering')
insert into Alumno values('Carolina Machuca',6,'Tinkering')
insert into Alumno values('Balam',9,'Escultura 1')
insert into Alumno values('Emiliano',10,'Escultura 2')
insert into Alumno values('Pablo Lira',10,'Escultura 2')
insert into Alumno values('Pili Fernandez',12,'Escultura 4')
insert into Alumno values('Jose Eduardo Romero',12,'Escultura 4')
insert into Alumno values('Mariana Tejeda',12,'Escultura 4')
insert into Alumno values('Maria Sevilla',14,'Manejo del estres 2')
insert into Alumno values('Elizabeth Altamirano',15,'Danza')
insert into Alumno values('Suri',15,'Danza')
insert into Alumno values('Yareni',17,'Ilustracion lunes zoom')
insert into Alumno values('Isabella Urbano',17,'Ilustracion lunes zoom')
insert into Alumno values('Diego Alvarez',17,'Ilustracion lunes zoom')
insert into Alumno values('Sandra Michelle',17,'Ilustracion lunes zoom')
insert into Alumno values('Sebastian',17,'Ilustracion lunes zoom')
insert into Alumno values('Paulo',18,'Ilustracion lunes')
insert into Alumno values('Carolina Machuca H',18,'Ilustracion lunes')
insert into Alumno values('Camila',22,'Estimulacion viernes')
insert into Alumno values('Emilio Terrazas',22,'Estimulacion viernes')
insert into Alumno values('Nicolar',22,'Estimulacion viernes')
insert into Alumno values('Diego Ortiz Erosa',23,'Estimulacion zoom')
insert into Alumno values('Santiago Ortiz Erosa',23,'Estimulacion zoom')
insert into Alumno values('Patricio',23,'Estimulacion zoom')
insert into Alumno values('Lucca',23,'Estimulacion zoom')
insert into Alumno values('Helena',23,'Estimulacion zoom')
insert into Alumno values('Fatima',23,'Estimulacion zoom')
insert into Alumno values('Paulo H',23,'Estimulacion zoom')

--3
create table Tallerista
(
id_tallerista int NOT NULL,
nom_tallerista nvarchar(50),
unique (id_tallerista, nom_tallerista),
primary key (id_tallerista)
)

insert into Tallerista values(1,'Ignasio Oseguera')
insert into Tallerista values(2,'Veronica Jimenez')
insert into Tallerista values(3,'Mercedes Amor')
insert into Tallerista values(4,'Mercedes Amor')
insert into Tallerista values(5,'Jeri')
insert into Tallerista values(6,'Jimena Granados')
insert into Tallerista values(7,'Alejandra y Veronica Jimenez')
insert into Tallerista values(8,'Mariana Granados')
insert into Tallerista values(9,'Alejandra Jimenez')
insert into Tallerista values(10,'Luis')
insert into Tallerista values(11,'Luis')
insert into Tallerista values(12,'Alejandra y Alicia')

--4
create table Taller
(
id_taller int NOT NULL,
nom_taller nvarchar(30),
hora_taller time,
id_tallerista int,
unique (id_taller, nom_taller),
primary key (id_taller),
foreign key (id_tallerista) references Tallerista
)
select *from Taller
alter table Taller add foreign key (id_tallerista) references Tallerista
alter table Taller alter column hora_taller time
alter table Taller alter column nom_taller nvarchar(50)

insert into Taller values(1,'Musica matutino','12:30',1)
insert into Taller values(2,'Musica vespertino','16:00',1)
insert into Taller values(3,'Pensamiento matematico','16:00',2)
insert into Taller values(4,'Experimentacion artistica lunes','16:00',3)
insert into Taller values(5,'Experimentacion artistica miercoles','16:00',3)
insert into Taller values(6,'Tinkering','17:00',4)
insert into Taller values(7,'Artes plasticas 1','16:00',5)
insert into Taller values(8,'Artes plasticas 2','17:00',5)
insert into Taller values(9,'Escultura 1','16:00',6)
insert into Taller values(10,'Escultura 2','17:00',6)
insert into Taller values(11,'Escultura 3','18:00',6)
insert into Taller values(12,'Escultura 4','19:00',6)
insert into Taller values(13,'Manejo del estres 1','16:00',7)
insert into Taller values(14,'Manejo del estres 2','17:00',7)
insert into Taller values(15,'Danza','09:00',8)
insert into Taller values(16,'Psicomotrocidad, cuentos y emociones','12:30',9)
insert into Taller values(17,'Ilustracion lunes zoom','16:30',10)
insert into Taller values(18,'Ilustracion lunes','16:00',10)
insert into Taller values(19,'Ilustracion lunes 2','17:00',10)
insert into Taller values(20,'Ilustracion lunes 3','18:00',10)
insert into Taller values(21,'Pintura experimental','19:00',11)
insert into Taller values(22,'Estimulacion viernes','10:00',12)
insert into Taller values(23,'Estimulacion zoom','11:00',12)
insert into Taller values(24,'Estimulacion','12:00',12)

--5
create table Colegiatura
(
id_alumno int,
id_taller int,
horario time,
pago_actual date,
pago_proximo date,
foreign key (id_alumno) references Alumno,
foreign key (id_taller) references Taller
)

insert into Colegiatura values(1,2,'16:00','09/11/2021','09/12/2021') 
insert into Colegiatura values(2,2,'16:00','03/11/2021','03/12/2021')
insert into Colegiatura values(3,2,'16:00','06/11/2021','06/12/2021')
insert into Colegiatura values(4,2,'16:00','10/11/2021','10/12/2021')
insert into Colegiatura values(5,3,'16:00','2021/11/5','2021/12/15')
insert into Colegiatura values(6,4,'16:00','04/11/2021','04/12/2021')
insert into Colegiatura values(7,4,'16:00','08/11/2021','08/12/2021')
insert into Colegiatura values(8,5,'16:00','12/11/2021','12/12/2021')
insert into Colegiatura values(9,5,'16:00','2021/11/18','2020/12/18')
insert into Colegiatura values(10,6,'17:00','2021/11/16','2021/12/16')
insert into Colegiatura values(11,6,'17:00','11/11/2021','11/12/2021')
insert into Colegiatura values(12,6,'17:00','07/11/2021','07/12/2021')
insert into Colegiatura values(13,6,'17:00','2021/11/16','2021/11/16')
insert into Colegiatura values(14,9,'16:00','2021/11/14','2021/12/14')
insert into Colegiatura values(15,10,'17:00','09/11/2021','09/12/2021')
insert into Colegiatura values(16,10,'17:00','2021/11/13','2021/12/13')
insert into Colegiatura values(17,12,'19:00','2021/11/16','2021/12/16')
insert into Colegiatura values(18,12,'19:00','2021/11/20','2021/12/20')
insert into Colegiatura values(19,12,'19:00','2021/11/22','2021/12/22')
insert into Colegiatura values(20,14,'17:00','02/11/2021','02/12/2021')
insert into Colegiatura values(21,15,'09:00','03/11/2021','03/12/2021')
insert into Colegiatura values(22,15,'09:00','2021/11/16','2021/12/16')
insert into Colegiatura values(23,17,'16:30','01/11/2021','01/12/2021')
insert into Colegiatura values(24,17,'16:30','02/11/2021','02/12/2021')
insert into Colegiatura values(25,17,'16:30','03/11/2021','03/12/2021')
insert into Colegiatura values(26,17,'16:30','04/11/2021','04/12/2021')
insert into Colegiatura values(27,17,'16:30','05/11/2021','05/12/2021')
insert into Colegiatura values(28,18,'16:00','06/11/2021','06/12/2021')
insert into Colegiatura values(29,18,'16:00','07/11/2021','07/12/2021')
insert into Colegiatura values(30,22,'10:00','08/11/2021','08/12/2021')
insert into Colegiatura values(31,22,'10:00','09/11/2021','09/11/2021')
insert into Colegiatura values(32,22,'10:00','10/11/2021','10/12/2021')
insert into Colegiatura values(33,23,'11:00','11/11/2021','11/12/2021')
insert into Colegiatura values(34,23,'11:00','12/11/2021','12/12/2021')
insert into Colegiatura values(35,23,'11:00','2021/11/13','2021/12/13')
insert into Colegiatura values(36,23,'11:00','2021/11/14','2021/12/14')
insert into Colegiatura values(37,23,'11:00','2021/11/15','2021/12/15')
insert into Colegiatura values(38,23,'11:00','2021/11/16','2021/12/16')
insert into Colegiatura values(39,23,'11:00','2021/11/17','2021/12/17')

--6
create table Asist_Alumno
(
id_alumno int,
dia_asistencia date,
dia_falta date,
foreign key (id_alumno) references Alumno
)

--7
create table Asist_Tallerista
(
id_tallerista int,
dia_asis date,
dia_falt date,
foreign key (id_tallerista) references Tallerista
)

--8
create table Eliminar
(
id_alumno int NOT NULL,
id_taller int
foreign key (id_alumno) references Alumno,
foreign key (id_taller) references Taller
)


--ESTAS SON PRUEBAS QUE REAÑICE, NO LES HAGA CASO, POR ESO LAS DEJO COMO COMENTARIO
--Select *from Taller AS t1 INNER JOIN Tallerista AS t2 on t1.id_tallerista = t2.id_tallerista WHERE t1.id_tallerista= t2.id_tallerista
--select *from Alumno
--select *from Inscripcion
--Select * from Taller
--select *from Alumno Where id_alumno = 1
--select *from Colegiatura where id_alumno=1

--Delete from Colegiatura where id_alumno=1
--Delete from Asist_Alumno where id_alumno=1
--delete from Inscripcion where id_alumno =1
--Delete from Alumno where id_alumno=1

--select *from Asist_Alumno
--Insert into Alumno values (1, 'Valentina Gonzalez', 2, 'Musica vespertino')
--Insert into Colegiatura values (1, 2,'16:00', '2021-11-20', '2021-12-20')
--Insert into Inscripcion values (1,2)

--select *From Alumno where id_alumno = 5
--select *From Alumno where id_alumno = 9
--select *From Alumno where id_alumno = 10
--select *From Alumno where id_alumno = 13
--select *From Alumno where id_alumno = 14
--select *From Alumno where id_alumno = 16
--select *From Alumno where id_alumno = 17
--select *From Alumno where id_alumno = 18
--select *From Alumno where id_alumno = 19
--select *From Alumno where id_alumno = 22
--select *From Alumno where id_alumno = 35
--select *From Alumno where id_alumno = 36
--select *From Alumno where id_alumno = 37
--select *From Alumno where id_alumno = 38
--select *From Alumno where id_alumno = 39

--drop table Colegiatura
--drop table Asist_Alumno
--drop table Eliminar
--drop table Alumno

--select *From Colegiatura where id_alumno = 5