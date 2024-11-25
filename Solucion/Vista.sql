/*
Crear una vista que liste el monto total a facturar por propietario por las reservas y servicios del 
mes pasado. Se debe listar el nombre del propietario, el monto total de sus reservas, el monto total 
de servicios adicionales que contrató y la suma de ambos montos (monto a facturar)  
*/
USE [CatHotel]
GO

CREATE VIEW AFacturar AS
SELECT  P.propietarioNombre,
SUM(R.reservaMonto) as Reservas,
SUM(precio_Servicios.Servicios) as Servicios,
(SUM(R.reservaMonto) + SUM(precio_Servicios.Servicios)) as MontoTotal FROM
dbo.Reserva AS R 
JOIN dbo.Gato AS G ON R.gatoID = G.gatoID
JOIN dbo.Propietario AS P ON G.propietarioDocumento = P.propietarioDocumento
JOIN (SELECT RS.reservaID, SUM(RS.cantidad * S.servicioPrecio) as Servicios FROM 
dbo.Reserva_Servicio AS RS JOIN dbo.Servicio AS S ON RS.servicioNombre = S.servicioNombre
GROUP BY RS.reservaID) as precio_Servicios on R.reservaID = precio_Servicios.reservaID
WHERE 
    MONTH(R.reservaFechaInicio) = MONTH(GETDATE()) - 1
GROUP BY P.propietarioNombre





