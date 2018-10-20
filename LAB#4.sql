use HOTEL

INSERT into Categoria (id_Catego, Nom_Catego)
values (1, 'Administrativo')

INSERT into Categoria (id_Catego, Nom_Catego)
values (2, 'Recepción')

INSERT into Categoria (id_Catego, Nom_Catego)
values (3, 'Servicio')

INSERT into Categoria (id_Catego, Nom_Catego)
values (4, 'Mantenimiento')

select * from Categoria

INSERT into Modo_Pago (id_Mp, Tipo_mp)
values (1, 'Efectivo')

INSERT into Modo_Pago (id_Mp, Tipo_mp)
values (2, 'Tarjeta')

Select * from Modo_Pago

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (1, 'Piscina, GYM, Servicio a Habitacion, Desayuno, Planchado', 10000)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (2, 'Piscina, Planchado', 10000)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (3, 'Servicio a Habitacion, Desayuno', 5000)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (4, 'Planchado, Servicio a Habitacion', 2500)

--------10 INSERT

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (5, 'GYM, Piscina', 2000)

UPDATE Paquete set CostoP = '2000' where id_Paquete = '5'

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (6, 'Servicio a habitacion', 1500)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (7, 'Pscina', 700)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (8, 'Planchado', 500)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (9, 'GYM', 2000)

UPDATE Paquete SET CostoP = '1000' WHERE CostoP = '2000';


Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (10, 'Desayuno', 1500)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (11, 'Lavanderia', 700)

Insert into Paquete (id_Paquete, DescPaquete, CostoP)
Values (12, 'Tintoreria', 500)


select * from Paquete

-------18 INSERT-------2 UPDATE

INSERT into Horario (id_Horario, Turno, Hora)
values (1, 'Matutino', '6:00am - 2:00pm')

INSERT into Horario (id_Horario, Turno, Hora)
values (2, 'Vespertino','2:00pm - 10:00pm')

INSERT into Horario (id_Horario, Turno, Hora)
values (3, 'Nocturno', '10:00pm - 06:00am')

alter table Horario add Hora varchar(50);

alter table Horario drop column Hora;

delete from Horario;

select * from Horario


--------21 INSERT---

INSERT into Puesto (id_Puesto, Puesto)
values (1, 'Gerente')

INSERT into Puesto (id_Puesto, Puesto)
values (2, 'Recepcionista')

INSERT into Puesto (id_Puesto, Puesto)
values (3, 'Botones')

INSERT into Puesto (id_Puesto, Puesto)
values (4, 'Limpieza')

INSERT into Puesto (id_Puesto, Puesto)
values (5, 'Mucama')

INSERT into Puesto (id_Puesto, Puesto)
values (6,'Servicio a Cuarto')

INSERT into Puesto (id_Puesto, Puesto)
values (7, 'Chofer')

INSERT into Puesto (id_Puesto, Puesto)
values (8, 'Electricista')

INSERT into Puesto (id_Puesto, Puesto)
values (9, 'Jardinero')

-----------30 INSERT

INSERT into Puesto (id_Puesto, Puesto)
values (10, 'De tintoreria')

INSERT into Puesto (id_Puesto, Puesto)
values (11, 'Lavanderia')

INSERT into Puesto (id_Puesto, Puesto)
values (12, 'Lavador de Pscina')

UPDATE Puesto set Puesto = 'Lavador de Piscina' where Puesto = 'Lavador de Pscina'

INSERT into Puesto (id_Puesto, Puesto)
values (13, 'Medico')

INSERT into Puesto (id_Puesto, Puesto)
values (14, 'Meseros')

INSERT into Puesto (id_Puesto, Puesto)
values (15, 'Cocinero')

INSERT into Puesto (id_Puesto, Puesto)
values (16, 'Camarera')

INSERT into Puesto (id_Puesto, Puesto)
values (17, 'Jefe de alimentos y bebidas')

INSERT into Puesto (id_Puesto, Puesto)
values (18, 'Chef')

INSERT into Puesto (id_Puesto, Puesto)
values (19, 'Auxiliar de Cocina')

--------40 INSERT

INSERT into Puesto (id_Puesto, Puesto)
values (20, 'Jefe de seguridad')

INSERT into Puesto (id_Puesto, Puesto)
values (21, 'Jefe de servicio telefonico')

INSERT into Puesto (id_Puesto, Puesto)
values (22, 'Director de restaurante')

INSERT into Puesto (id_Puesto, Puesto)
values (23, 'Meseros')

UPDATE Puesto set Puesto = 'Bartender' where id_Puesto = '23'

select *from Puesto

INSERT into Puesto (id_Puesto, Puesto)
values (24, 'Jefe de eventos')

INSERT into Puesto (id_Puesto, Puesto)
values (25, 'Director de habitaciones')

INSERT into Puesto (id_Puesto, Puesto)
values (26, 'Director de personal')

INSERT into Puesto (id_Puesto, Puesto)
values (27, 'Director de Contabilidad')

INSERT into Puesto (id_Puesto, Puesto)
values (28, 'Director de marketing')

INSERT into Puesto (id_Puesto, Puesto)
values (29, 'Director de ingenieria')

---------50 INSERT

INSERT into Puesto (id_Puesto, Puesto)
values (30, 'Directorde Compras')

INSERT into Puesto (id_Puesto, Puesto)
values (31, 'Administracion y finanzas')

INSERT into Puesto (id_Puesto, Puesto)
values (32, 'Sistemas')

INSERT into Puesto (id_Puesto, Puesto)
values (33, 'Subgerente')

INSERT into Puesto (id_Puesto, Puesto)
values (34, 'Ama de llaves')

INSERT into Puesto (id_Puesto, Puesto)
values (35, 'Cajero')

INSERT into Puesto (id_Puesto, Puesto)
values (36, 'Auditor nocturno')

INSERT into Puesto (id_Puesto, Puesto)
values (37, 'Auxiliar de lavanderia')

INSERT into Puesto (id_Puesto, Puesto)
values (38, 'Auxiliarde intendencia')

INSERT into Puesto (id_Puesto, Puesto)
values (39, 'Capitan de meseros')

---------60 INSERT

INSERT into Puesto (id_Puesto, Puesto)
values (40, 'Jefe de RH')

UPDATE Puesto set Puesto = 'Jefe de Recursos Humanos' where id_Puesto = '40'

INSERT into Puesto (id_Puesto, Puesto)
values (41, 'Jefe de almacen')

INSERT into Puesto (id_Puesto, Puesto)
values (42, 'Auxiliar de almacen')

INSERT into Puesto (id_Puesto, Puesto)
values (43, 'Auxiliar administrativo')

INSERT into Puesto (id_Puesto, Puesto)
values (44, 'Mensajero')

INSERT into Puesto (id_Puesto, Puesto)
values (45, 'Auxiliar Contable')

INSERT into Puesto (id_Puesto, Puesto)
values (46, 'Gerente de Servicios Generales')

INSERT into Puesto (id_Puesto, Puesto)
values (47, 'Auxiliar de Mantenimiento')

INSERT into Puesto (id_Puesto, Puesto)
values (48, 'Agente de Seguridad')

INSERT into Puesto (id_Puesto, Puesto)
values (49, 'Jefe de jardineria')

--------------70 INSERT

INSERT into ComponentesHabita (id_CompH, Camas_comp, Baños_comp)
values (1, 1,1)

INSERT into ComponentesHabita (id_CompH, Camas_comp, Baños_comp)
values (2, 2,1)
 
 INSERT into TipoUs (id_TUs,TipoUs)
 values (1, 'Gerente')

 INSERT into TipoUs (id_TUs,TipoUs)
 values (2, 'Recepcionista')

 INSERT into Usuarios (id_Us, Username, Email, Pass, FechaRegistro, id_TUs)
 values (1, 'Cesar BR', 'barajas_cesar@outlook.com', Cast('bara98' As varbinary(max)), '2018-10-19', 1) 

 INSERT into Usuarios (id_Us, Username, Email, Pass, FechaRegistro, id_TUs)
 values (2, 'Concepción', 'l.c.h.c@outlook.com', Cast('conchaloca' As varbinary(max)), '2018-10-19', 2) 

 -------76 INSERT

