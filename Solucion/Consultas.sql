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


/*3.b 
b. Mostrar los 3 servicios m�s solicitados,
con su nombre, precio y cantidad total solicitada en
el a�o anterior. 
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


/*3.c 
 Listar nombre de gato y
 nombre de habitaci�n 
 para las reservas 
 que tienen asociados
 todos los servicios adicionales disponibles
*/
SELECT G.gatoNombre, R.habitacionNombre
FROM dbo.Reserva as R
JOIN dbo.Gato as G
ON G.gatoID = R.gatoID
WHERE R.reservaID IN (
SELECT RS.reservaID FROM dbo.Reserva_Servicio RS
GROUP BY  RS.reservaID
HAVING COUNT(DISTINCT(RS.servicioNombre)) = 
(SELECT COUNT(DISTINCT(S.servicioNombre)) FROM dbo.Servicio as S)
)


/*3.d
Listar monto total de reserva
por a�o y
por gato (nombre)
para los gatos 
que tienen m�s de
10 a�os de edad,
son de raza "Persa" y
que en el a�o tuvieron montos total de reserva
superior a 500 d�lares.
*/
SELECT G.gatoNombre, SUM(R.reservaMonto) FROM dbo.Reserva R
JOIN dbo.Gato G ON G.gatoID = R.gatoID
WHERE G.gatoEdad > 10 AND G.gatoRaza ='PERSA'
GROUP BY G.gatoNombre
HAVING SUM(R.reservaMonto)>500



/*3.e
Mostrar el ranking de reservas más caras, tomando como monto total de una reserva el monto
  propio de la reserva más los servicios adicionales contratados en la reserv
*/
SELECT sr.reservaID, SUM((s.servicioPrecio*sr.cantidad)+r.reservaMonto) as Total_Servicio
FROM dbo.Reserva_Servicio sr
JOIN dbo.Servicio s ON s.servicioNombre = sr.servicioNombre
JOIN dbo.Reserva r ON r.reservaID = sr.reservaID 
GROUP BY sr.reservaID
ORDER BY Total_Servicio DESC;


/*3. f. Calcular el promedio de duración en días de las reservas realizadas durante el año en curso.
  Deben ser consideradas solo aquellas reservas en las que se contrató el servicio
  "CONTROL_PARASITOS" pero no se contrató el servicio "REVISION_VETERINARIA"
*/
SELECT AVG(DATEDIFF(DAY, R.reservaFechaInicio, R.reservaFechaFin)) AS DateDiff FROM dbo.Reserva r
FULL JOIN dbo.Reserva_Servicio rs ON r.reservaID = rs.reservaID
WHERE year(R.reservaFechaFin) = year(GETDATE()) AND rs.servicioNombre = 'Control Parasitos' AND NOT EXISTS(
SELECT * from Reserva_Servicio rss WHERE rss.servicioNombre = 'Revision Veterinaria' AND rs.reservaID = rss.reservaID
)