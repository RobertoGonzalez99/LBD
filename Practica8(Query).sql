use Practica4

Create Procedure Articulo_Caro
@Precio money,
@idProducto uniqueidentifier
as
select * from 
DetallesOrden
select MAX(Precio)
from DetallesOrden

Create Procedure Articulo_Barato
@Precio money,
@idProducto uniqueidentifier
as
select * from
DetallesOrden
select min(Precio)
from DetallesOrden

Create Procedure Personal_Viejo
@FechaNac date,
@idEmpleado uniqueidentifier
as
select * from
Empleado
select MIN(FechaNac)
as EdadMasBaja from Empleado

Create Procedure Cantidad_Mayor
@Cantidad int
as
select * from
DetallesOrden
select MAX(Cantidad)
as CantidadComprada from DetallesOrden

Create Procedure Cantidad_Menor
@Cantidad int
as
select * from
DetallesOrden
select min(Cantidad)
as CantidadComprada from DetallesOrden

Create Procedure Cargo_Especifico
@Descripcion varchar(MAX),
@idCargo uniqueidentifier
as
select * from
Cargo
inner join Empleado 
on Cargo.idCargo = Empleado.idCargo

Create Procedure Empresa_Producto
@Empresa varchar(50)
as
select *from
Proveedor
inner join Producto
on Proveedor.idProvedor = Producto.idProvedor

Create Procedure Fecha_Compra
@OrdenFecha date
as
select * from
Cliente
inner join Orden
on Orden.idCliente = Cliente.idCliente

Create Procedure Categoria_Prod
@NombreProd varchar(50),
@NomCat varchar(50)
as
select * from
Producto
inner join Categoria
on Producto.idCategoria = Categoria.idCategoria

Create Procedure Horario_1 
@HoraEntrada time(2),
@HoraSalida time(2),
@NombreCompleto varchar(max)
as
select * from
Cargo c
inner join Empleado e
on c.idCargo = e.idCargo

-- 

create function NombreCompleto (@Nombre varchar(50), @Apellidos varchar(50))
returns varchar(100) as begin 
return (@Nombre + ' ' + @Apellidos)
end

--

create trigger Empleado_Insertado
on Empleado for insert
as
insert into Empleado values(NEWID(), NEWID(), 'Roberto', 'Gonzalez','19990420', '20171022', 'Cromo #420 Col. Nueva Las Puentes', '66612', 'Apodaca', '81 + 2535456645655 ') 


create trigger Cliente_Insertado
on Cliente for insert
as
insert into Cliente values(NEWID(), ' ', 'Jordan Vitela', 'MiTienda #1024 Col. Robles', '66612', '8314784795')

-- 

DECLARE @ConsultaSQL NVARCHAR(500)
DECLARE @Tabla NVARCHAR(25)

SET @Tabla = 'Empleado'
SET @ConsultaSQL = 'SELECT * FROM ' + @Tabla

EXEC(@ConsultaSQL)

--






