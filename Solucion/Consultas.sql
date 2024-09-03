USE [CatHotel]
GO
/*3.a 
Mostrar el nombre del gato,
el nombre del propietario,
la habitaci�n
y el monto
de la reserva
m�s reciente
en la(s) habitaci�n
con la capacidad m�s alta

*/

SELECT gato.gatoNombre, pro.propietarioNombre,
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

