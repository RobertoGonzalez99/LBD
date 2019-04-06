use Practica4

--Vistas
CREATE VIEW ArticuloCaro AS
select max (Precio) as PrecioMasCaro from DetallesOrden

CREATE VIEW ArticuloBarato AS
select min (Precio) as PrecioMasBarato from DetallesOrden

CREATE VIEW PersonalMasViejo AS
select min(FechaNac)
as EdadMasBaja from Empleado

CREATE VIEW CantidadMayor AS
select max (Cantidad) as CantidadComprada from DetallesOrden

CREATE VIEW CantidadMenor AS
select min(Cantidad) as CantidadComprada from DetallesOrden

CREATE VIEW CargoEspecifico AS
select Descripcion as 'Id del cargo'
from Cargo
inner join Empleado
on Cargo.idCargo = Empleado.idCargo

CREATE VIEW EMPRESAPRODUCTO AS
select Empresa as 'Nombre de la Empresa'
from Proveedor
inner join Producto
on Proveedor.idProvedor = Producto.idProvedor

CREATE VIEW FechaCompra AS
select OrdenFecha as '¿Fecha de Compras?'
from Cliente
inner join Orden
on Orden.idCliente = Cliente.idCliente

CREATE VIEW NombreCatProd AS
select NombreProd, NomCat as 'Nombre y categoria del Producto'
from Producto
inner join Categoria
on Producto.idCategoria = Categoria.idCategoria

CREATE VIEW Horario AS
select HoraEntrada, HoraSalida, NombreCompleto as 'Horarios'
from Cargo c
inner join Empleado e
on c.idCargo = e.idCargo

--Subconsulta
SELECT idEmpleado 'ID', NombreCompleto
from Empleado
where Nombre = (SELECT Nombre from Empleado
		where UPPER(Nombre)='Erika');











