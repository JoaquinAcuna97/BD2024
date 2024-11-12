/*
Cada vez que se crea una nueva reserva se debe crear un registro de auditoria con todos
los datos ingresados en una tabla ReservaLog (definir su estructura libremente). Y
adicionalmente cada vez que se modifica el campo monto de una reserva: debe registrar
monto previo y nuevo monto en la tabla ReservaLog.
En todos los casos se debe grabar fecha-hora de registro, usuario(login), nombre de equipo
*/

CREATE TABLE ReservaLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    reservaID INT,
    accion VARCHAR(50),
    reservaFechaInicio DATE,
    reservaFechaFin DATE,
    reservaMonto DECIMAL(7,2),
    montoPrevio DECIMAL(7,2) NULL,
    montoNuevo DECIMAL(7,2) NULL,
    fechaRegistro DATETIME DEFAULT GETDATE(),
    usuario VARCHAR(100) DEFAULT SYSTEM_USER,
    nombreEquipo VARCHAR(100) DEFAULT HOST_NAME()
);

CREATE TRIGGER trg_AuditoriaReserva_Insert
ON Reserva
AFTER INSERT
AS
BEGIN
    DECLARE @reservaID INT,
            @reservaFechaInicio DATE,
            @reservaFechaFin DATE,
            @reservaMonto DECIMAL(7,2);

    -- Obtener los valores de la nueva reserva insertada
    SELECT @reservaID = reservaID,
           @reservaFechaInicio = reservaFechaInicio,
           @reservaFechaFin = reservaFechaFin,
           @reservaMonto = reservaMonto
    FROM INSERTED;

    -- Insertar registro en ReservaLog para la creación de la reserva
    INSERT INTO ReservaLog (reservaID, accion, reservaFechaInicio, reservaFechaFin, reservaMonto)
    VALUES (@reservaID, 'CREACION', @reservaFechaInicio, @reservaFechaFin, @reservaMonto);
END;

CREATE TRIGGER trg_AuditoriaReserva_UpdateMonto
ON Reserva
AFTER UPDATE
AS
BEGIN
    DECLARE @reservaID INT,
            @montoPrevio DECIMAL(7,2),
            @montoNuevo DECIMAL(7,2);

    -- Comprobar si el campo monto fue modificado
    IF UPDATE(reservaMonto)
    BEGIN
        -- Obtener los valores previos y nuevos
        SELECT @reservaID = reservaID,
               @montoPrevio = DELETED.reservaMonto,
               @montoNuevo = INSERTED.reservaMonto
        FROM INSERTED
        INNER JOIN DELETED ON INSERTED.reservaID = DELETED.reservaID;

        -- Insertar el registro de auditoría en ReservaLog
        INSERT INTO ReservaLog (reservaID, accion, montoPrevio, montoNuevo)
        VALUES (@reservaID, 'MODIFICACION', @montoPrevio, @montoNuevo);
    END;
END;

/*
Antes de insertar una nueva reserva, se debe controlar posibles solapamientos de reservas
(un gato no podría estar alojado simultáneamente 2 veces en el hotel).
Se debe dar de alta las reservas válidas y simplemente ignorar las reservas solapadas 
*/
CREATE TRIGGER trg_ControlarSolapamientoReserva
ON Reserva
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @gatoID INT,
            @reservaFechaInicio DATE,
            @reservaFechaFin DATE;

    -- Obtener los valores de la nueva reserva
    SELECT @gatoID = gatoID,
           @reservaFechaInicio = reservaFechaInicio,
           @reservaFechaFin = reservaFechaFin
    FROM INSERTED;

    -- Verificar si ya existe una reserva para el mismo gato que se solape con la nueva
    IF EXISTS (
        SELECT 1
        FROM Reserva
        WHERE gatoID = @gatoID
          AND (
              -- Solapamiento de fechas
              (@reservaFechaInicio BETWEEN reservaFechaInicio AND reservaFechaFin)
              OR (@reservaFechaFin BETWEEN reservaFechaInicio AND reservaFechaFin)
              OR (@reservaFechaInicio <= reservaFechaInicio AND @reservaFechaFin >= reservaFechaFin)
          )
    )
    BEGIN
        -- Si hay solapamiento, no insertar la nueva reserva
        PRINT 'La reserva no se puede realizar, ya existe una reserva para este gato en las fechas solicitadas.';
    END
    ELSE
    BEGIN
        -- Si no hay solapamiento, permitir la inserción
        INSERT INTO Reserva (gatoID, habitacionNombre, reservaFechaInicio, reservaFechaFin, reservaMonto)
        SELECT gatoID, habitacionNombre, reservaFechaInicio, reservaFechaFin, reservaMonto
        FROM INSERTED;
    END
END;
