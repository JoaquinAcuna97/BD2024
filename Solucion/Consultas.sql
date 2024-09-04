USE [CatHotel]
GO
/*3.a 
Mostrar el nombre del gato,
el nombre del propietario,
la habitación
y el monto
de la reserva
más reciente
en la(s) habitación
con la capacidad más alta

*/

SELECT TOP 1 gato.gatoNombre, pro.propietarioNombre,
re.habitacionNombre,
re.reservaMonto
FROM dbo.Gato as gato
JOIN dbo.Propietario as pro
ON gato.propietarioDocumento=pro.propietarioDocumento
JOIN dbo.Reserva as re
ON re.gatoID=gato.gatoID
JOIN dbo.Habitacion as h
ON re.habitacionNombre= h.habitacionNombre
WHERE h.habitacionCapacidad IN (SELECT MAX(habitacionCapacidad) FROM dbo.Habitacion) 
ORDER BY re.reservaFechaFin DESC

/*3.a 
b. Mostrar los 3 servicios más solicitados,
con su nombre, precio y cantidad total solicitada en
el año anterior. 
Solo listar el servicio si cumple que tiene una cantidad total solicitada
mayor o igual que 5
*/


SELECT RS.servicioNombre, S.servicioPrecio, SUM(RS.cantidad) 
FROM dbo.Reserva_Servicio as RS
JOIN dbo.Servicio as S 
ON RS.servicioNombre = S.servicioNombre
JOIN dbo.Reserva as R
ON RS.reservaID = R.reservaID
WHERE year(R.reservaFechaFin) = year(GETDATE()) -1
GROUP BY RS.servicioNombre,  S.servicioPrecio
HAVING (SUM(RS.cantidad)>5)


