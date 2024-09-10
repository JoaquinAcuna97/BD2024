USE [CatHotel]
GO


/*Creamos un indice para cara FK*/

CREATE INDEX GatoPropietario
ON Gato(propietarioDocumento)

CREATE INDEX ReservaGato
ON Reserva(gatoID)

CREATE INDEX ReservaHabitacion
ON Reserva(habitacionNombre)

CREATE INDEX ReservaServicioReserva
ON Reserva_Servicio(reservaID)

CREATE INDEX ReservaServicioServicio
ON Reserva_Servicio(servicioNombre)
