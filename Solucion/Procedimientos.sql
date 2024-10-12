/*
Escribir un procedimiento almacenado para reservar una habitación. 
Se debe actualizar el estado de DISPONIBLE a LLENA si se alcanzó la capacidad de la 
habitación con la reserva en cuestión 
No permitir realizar la reserva si el estado de la habitación es LLENA o LIMPIANDO. 
Se debe retornar el número de reserva asignado (cero sino se logró reservar) 
*/

CREATE PROCEDURE ReservarHabitacion3
    @GatoID INT,
    @HabitacionNombre VARCHAR(50),
    @Inicio DATE,
    @Fin DATE,
    @Monto DECIMAL(7,2)
AS
BEGIN
    DECLARE @Estado VARCHAR(50);
    
    SELECT @Estado = h.habitacionEstado 
    FROM Habitacion h 
    WHERE h.habitacionNombre = @HabitacionNombre;

    IF @Estado NOT IN ('LIMPIANDO', 'LLENA')
    BEGIN
        PRINT 'Habitacion Libre, reservando';
        
        -- Corrected UPDATE statement
        UPDATE Habitacion 
        SET habitacionEstado = 'LLENA' 
        WHERE habitacionNombre = @HabitacionNombre;

        -- Corrected INSERT statement
        INSERT INTO Reserva (gatoID, habitacionNombre, reservaFechaInicio, reservaFechaFin, reservaMonto) 
        VALUES (@GatoID, @HabitacionNombre, @Inicio, @Fin, @Monto);
        
        RETURN 1;  -- Optional: Indicate success
    END
    ELSE 
    BEGIN 
		PRINT 'Habitacion Ocupada, no se puede reservar';
        RETURN 0;  -- Indicates the room was not available
    END
END;



EXEC ReservarHabitacion3
    @GatoID = 1, 
    @HabitacionNombre = 'Habitacion Cuadruple', 
    @Inicio = '2024-10-12', 
    @Fin = '2024-10-15', 
    @Monto = 100.00;