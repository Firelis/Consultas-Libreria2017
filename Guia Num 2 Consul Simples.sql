--Guia Ejercicios Numero 2
Use LIBRERIA
--1
Select cod_articulo as 'Codigo de Articulo' , descripcion as 'Descripcion', stock_minimo 'Stock minimo',
pre_unitario 'Precio Unitario'
from Articulos
order by pre_unitario, Descripcion
--2
select nom_cliente+' '+ape_cliente as 'Nombre y Apellido', nro_tel as 'Telefono'
from clientes
where nro_tel not like 'Null'
order by nom_cliente+' '+ape_cliente
--3
Select distinct cod_articulo 'Codigo', cantidad*pre_unitario as 'Subtotal'
from detalle_facturas
order by cod_articulo asc, Subtotal desc
--4
Select cod_cliente, nom_cliente+' '+Upper(ape_cliente) as 'Nombre', calle+' '+Cast(altura as CHAR) as 'Direccion' 
from clientes
where nom_cliente like 'c%' and ape_cliente like '%z'
--5
--Select cod_cliente, nom_cliente as 'Nom', ape_cliente as 'Ape', calle+''+Cast(altura as CHAR) as 'Direccion' 
--from clientes
--where nom_cliente not like '[a-g]%' and ape_cliente like '[d-l]%'  
--6
Select *
From articulos
where pre_unitario<40 and observaciones is null
order by descripcion desc, pre_unitario desc
--7
select*
from vendedores
where nom_vendedor not like '%z%' and fec_nac>'1/1/1970'
--8
Select fecha, cod_vendedor
From facturas
where fecha between '1/1/2007' and '1/5/2009'
and cod_vendedor In(1,3,4)
or fecha between '1/1/2010' and '1/5/2011' 
and cod_vendedor In(2,4)
--9
Select*
from detalle_facturas
where( pre_unitario>=10
and nro_factura between 50 and 100)
or(cod_articulo not in(2,5,6,8,10))
--10
Select *
from articulos
where descripcion not like '[d-l]%'
and stock_minimo > 10
or pre_unitario < 20
--11
select nom_vendedor as'Nombre',ape_vendedor as 'apellido',day(fec_nac)as 'dia',MONTH(fec_nac)as 'mes',YEAR(fec_nac)as'año'
from vendedores
--12
select*
from facturas
where year(fecha) = YEAR(GETDATE())

select*
from facturas
where year(fecha) = YEAR(GETDATE())-1

--13
select*
from vendedores
where Month(fec_nac) in (2,4,5)

--14
Select Upper(ape_cliente)+SPACE(5)+nom_cliente As 'Nombre de Cliente'
from clientes
