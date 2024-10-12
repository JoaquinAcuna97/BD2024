/*
Mediante una funci�n que reciba un nombre de servicio, devolver un booleano indicando si 
este a�o el servicio fue contratado m�s veces que el a�o pasado
*/

CREATE FUNCTION SeContratoMasQueElAnoPasado (
    @Nombre VARCHAR(50)
)
RETURNS BIT  -- Use BIT instead of BOOLEAN
AS
BEGIN
    DECLARE @Pasado INT;
    DECLARE @Este INT;
    
    -- Count de reservas este a�o 
    SELECT @Este = COUNT(*) 
	FROM Reserva_Servicio rs 
	JOIN Reserva r ON r.reservaID = rs.reservaID
	WHERE rs.servicioNombre = @Nombre
	AND YEAR(r.reservaFechaInicio) = YEAR(GETDATE())


    -- Count de reservas a�o pasado
	SELECT @Pasado = COUNT(*) 
	FROM Reserva_Servicio rs 
	JOIN Reserva r ON r.reservaID = rs.reservaID
	WHERE rs.servicioNombre = @Nombre
	AND YEAR(r.reservaFechaInicio) = YEAR(GETDATE()) - 1;

    RETURN CASE 
        WHEN @Este > @Pasado THEN 1
        ELSE 0
    END;
END;