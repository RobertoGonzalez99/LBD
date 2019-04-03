use Practica4

select *from Cargo
select *from Categoria
select *from Cliente
select *from DetallesOrden
select *from Empleado
select *from Factura
select *from Orden
select *from Producto
select *from Proveedor
select *from Ticket

--1. Articulo mas caro de la orden
select max (Precio) as PrecioMasCaro from DetallesOrden

--2. Articulo mas barato de la orden
select min (Precio) as PrecioMasBarato from DetallesOrden

--3. Fecha de Nacimiento mas Baja 
select min(FechaNac)
as EdadMasBaja from Empleado

--4. Cantidad mas alta de Compra 
select max (Cantidad) as CantidadComprada from DetallesOrden

--5. Cantidad mas baja de compra
select min(Cantidad) as CantidadComprada from DetallesOrden

--6. Ver los Cargos segun el Orden de Empleados
select Descripcion as 'Id del cargo'
from Cargo
inner join Empleado
on Cargo.idCargo = Empleado.idCargo

--7. 
select Empresa as 'Nombre de la Empresa'
from Proveedor
inner join Producto
on Proveedor.idProvedor = Producto.idProvedor 

--8.
select OrdenFecha as '¿Fecha de Compras?'
from Cliente
inner join Orden
on Orden.idCliente = Cliente.idCliente

--9.
select NombreProd, NomCat as 'Nombre y categoria del Producto'
from Producto
inner join Categoria
on Producto.idCategoria = Categoria.idCategoria

--10.
select HoraEntrada, HoraSalida, NombreCompleto as 'Horarios'
from Cargo
inner join Empleado
on Cargo.idCargo = Empleado.idCargo




