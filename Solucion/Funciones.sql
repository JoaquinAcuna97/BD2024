/*
Mediante una función que reciba un nombre de servicio, devolver un booleano indicando si 
este año el servicio fue contratado más veces que el año pasado
*/

CREATE FUNCTION SeContratoMasQueElAnoPasado (
    @Nombre VARCHAR(50)
)
RETURNS BIT  -- Use BIT instead of BOOLEAN
AS
BEGIN
    DECLARE @Pasado INT;
    DECLARE @Este INT;
    
    -- Count de reservas este año 
    SELECT @Este = COUNT(*) 
	FROM Reserva_Servicio rs 
	JOIN Reserva r ON r.reservaID = rs.reservaID
	WHERE rs.servicioNombre = @Nombre
	AND YEAR(r.reservaFechaInicio) = YEAR(GETDATE())


    -- Count de reservas año pasado
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