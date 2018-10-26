use Hotel

----------5 Select basicos

----Usando Alias, Cambiar nombre a columnas, Usar Funciones

select NombreE as 'Empleado', Salario
from Empleados
where Salario >= 2000

select APaterno as 'Apellido',NombreC as 'Cliente'
From Cliente
where APaterno like 'G%'
order by APaterno asc

select APaterno as 'Apellido', AMaterno as 'Apellido Materno', NombreC,datediff(YEAR, FechaNacimientoC, GETDATE()) as Edad
from Cliente
order by Edad asc

select APaterno 'Apellido', AMaterno as 'Apellido Materno', FechaNacimientoC as 'Fecha de Nacimiento'
from Cliente
where FechaNacimientoC <= '1990-01-01'



select * from Cliente

----------5 select con where, 1 con order by

select * from Empleados
where NombreE like 'C%' 

Select * from Servicio
where CostoServicio='150'

Select NombreE, id_Puesto, Salario
from Empleados
Where Salario >= 2000;

Select e.NombreE as Empleado, p.Puesto
From Empleados e, Puesto p
where e.id_Empleado = p.id_Puesto

Select APaternoE,AMaterno, NombreE, Telefono,Email from Empleados
where APaternoE like 'C%'
order by APaternoE asc

-----------5 select con funciones de agregación (min,max,arg,count)

-----------2 Sin group by
select min(Salario) as SalarioMinimo
from Empleados 

select Salario --------Comprobación de MIN
from Empleados
order by Salario 

select max(Puesto) as Apellido
from Puesto

select Puesto ---------Comprobación de MAX
from Puesto
order by Puesto desc

-----------------------3 con Group by

select avg(Salario) as 'Promedio de Salario' 
from Empleados
where Salario > 1000

Select id_Catego as 'Categoria' , COUNT (id_Catego) as 'Numero de Empleados'
from Empleados
group by id_Catego

select id_Puesto, COUNT (id_Puesto) as 'Numero de Empleados'
from Empleados
group by id_Puesto

select count(Username) 'Numero de Usuarios Registrados', FechaRegistro
from Usuarios
group by FechaRegistro


-----1 having 

select id_Servicio, Sum(CostoServicio) as 'Precio'
from Servicio
group by id_Servicio
having Sum(CostoServicio) > 200 
order by id_Servicio asc

-----1 select into con drop table y reinsertar filas
select * into EmpleadosdeSistemas
from Empleados
where id_Puesto = '32'

select * from EmpleadosdeSistemas

Drop table EmpleadosdeSistemas

------------------------4 SELECT JOIN

---------CROSS

select NombreE, APaternoE, Puesto
from Empleados
Cross Join Puesto p
where p.id_Puesto < '10'

---------INNER

select * from Cliente
inner join Empleados 
on Cliente.APaterno = Empleados.APaternoE

---------LEFT

select Puesto.Puesto, Empleados.id_Empleado
from Puesto
left join Empleados on Puesto.id_Puesto = Empleados.id_Puesto
Order by Puesto.Puesto

---------RIGHT

select TipoUs.TipoUs, Usuarios.Username
from TipoUs
Right join Usuarios on TipoUs.id_TUs = Usuarios.id_TUs
Order by TipoUs.id_TUs;

-------------------------------------------------------------
select * from Empleados
select * from TipoUs
select * from Usuarios
select * from Puesto
select * from Categoria
select * from DatosUsuarios
select * from Servicio
select * from Cliente
select * from Paquete
select * from ComponenteReserva
select * from ComponentesHabita
select * from HABITACIONES
select * from Horario
select * from Modo_Pago






select * from ComponenteReserva
insert into ComponenteReserva values (1,1,1,null)
insert into ComponenteReserva values (2,1,2, null)
insert into ComponenteReserva values (3,1,3, null)
insert into ComponenteReserva values (4,1,4, null)
insert into ComponenteReserva values (5,1,5, null)






INSERT into HABITACIONES VALUES (1, null, 'Responde a tus necesidades, tendras el espaciosuficiente que necesites para descansar' ,'Habitacion sencilla', 1, 700 )
Insert into Habitaciones values (2, null, 'Es grande con capacidad superior, dispuestas para dos personas, camas independientes o una matrimonial.', 'Habitacion doble', 2, 800)
Insert into HABITACIONES values (3, null, 'Esta preparada para hospedar a na pareja o matrimonio', 'Habitacion Matrimonial', 1, 900)
insert into HABITACIONES values (4, null, 'Para todos aquellos que planeen sus vacaciones con toda la familia.', 'Habitaciones Familiares',3, 950)
insert into HABITACIONES values (5, null, 'Cuenta con caracteristicas exclusivas como oficinas, sala de reuniones, jacuzzi, gym, etc.','suite', 1, 1200)
insert into HABITACIONES values (6, null, 'Cuenta con cama matrimonial para disfrutar de una luna de miel especial', 'suite doble', 1,1500)
insert into HABITACIONES values (7, null, 'Especial para ejecutivos y empresarios que necesitan mayor espacio para conferencias.', 'Junior suite',1, 1700)


update HABITACIONES 
set Tipo = 'Junior Suite'
where id_Habita = 7


insert into Cliente values (1, 'Victoria', 'Almazan', 'Correa', 'Esperanza', 675, 'Fresnos', '1998-12-01', 5243532, 'Victoria_almazan@outlook.com')

insert into Cliente values (2, 'Alejandro', 'Tamez', 'Olvera', 'Pablo Livas', 1232, 'Vicente Guerrero','1996-11-11', 175432245, 'tamez_cranck@hotmail.com')

insert into Cliente values (3, 'Fernando', 'Guevara', 'Rodriguez', 'Noche Buena', 12352, 'Monteverde', '1997-12-14', 1234523414, 'fer_guevara@gmail.com')

insert into Cliente values (4, 'Lizbeth', 'Garcia', 'Mireles', 'tabachines', 4234, 'Malvinas', '1995-01-25', 123574746, 'liz_gar@gmail.com')

insert into Cliente values (5, 'Jesica', 'Sanchez','Gutierrez', 'Acueducto', 6543, 'Lomas', '1990-09-30', 655443322, 'jess_sanchez@outlook.com')

insert into Cliente values (6, 'Marcos', 'Gutierrez', 'Valdez', 'Mina' ,3345 ,'Puertas Mitras', '1991-08-25', 876544445, 'gutierrez_marcos@gmail.com')

insert into Cliente values (7, 'Diego', 'Perez', 'Hernandez', 'Ruiz Cortinez', 65443, 'La Fama', '1989-09-27', 75543325, 'diegoher98@hotmail.com')

insert into Cliente values (8, 'Rodrigo', 'Bentancour', 'Solis', 'Colon', 1222, 'Privadas de Sauces', '1992-10-11', 14342342, 'bentancour@gmail.com')

insert into Cliente values (9, 'Miguel', 'Villa', 'Ruiz', 'Padre Mier', 43332, 'Fernando Amilpa', '1997-11-25',65443333, 'miguel_villa@outlook.com')

insert into Cliente values (10, 'Martha', 'Davalos', 'Luna', 'Rosa', 1233,'Ebanos', '1994-06-09', 132435543, 'martha_lu@outlook.com')

insert into Cliente values (11, 'Elthon', 'Martinez', 'Duque', 'Cristal', 6544, 'Fresnos', '1998-07-25', 823413452, 'elthon_duque@gmail.com')

insert into Cliente values (12, 'Fabiola', 'Ovalle', 'Loera', 'San Mateo', 4333, 'Azteca', '1995-10-30', 812333445, 'faby_loera@gmail.com')

insert into Cliente values (13, 'Angel', 'Machorro', 'Ojeda', 'San Lucas', 2333, 'San Patricio', '1992-06-21', 811235234, 'machorro_ojeda@hotmail.com')

insert into Cliente values (14, 'Gabriel', 'Loera', 'Cedillo', 'Girasol', 6544, 'Real del valle', '1989-09-30', 811243421, 'gabo_loera@gmail.com')

insert into Cliente values (15, 'Gabriela', 'De Leon', 'Macias', 'Jeraneos', 2233, 'Las Adas', '1994-10-29', 81199922, 'gaby_macias@outlook.com')


