USE [CatHotel]
GO

INSERT INTO [dbo].[Propietario]
           ([propietarioDocumento]
           ,[propietarioNombre]
           ,[propietarioTelefono]
           ,[propietarioEmail])
     VALUES
        ('12321412412','Washington Joaquin Acuna Romero', '091312312', 'Washington@mail.com'),
        ('12321412421','Sergio Andrns Altesor Casas', '091312312', 'Sergio@mail.com'),
        ('123221412241','Camila Ayuto Menezes', '091312312', 'Camila@mail.com'),
        ('123231412241','Williams Richard Barros Cabrera', '091312312', 'Williams@mail.com'),
        ('12321421241','Martina Cuello Maqueira', '091312312', 'Martina@mail.com'),
        ('12321241241','Florencia De Coster Canzani', '091312312', 'Florencia@mail.com'),
        ('123223141241','Tania Pilar Denucci Vila', '091312312', 'Tania@mail.com'),
        ('123222141241','Rodrigo Fernandez Quezada', '091312312', 'Rodrigo@mail.com'),
        ('12232141241','Nahuel Hector Fuentes Guzman', '091312312', 'Nahuel@mail.com'),
        ('142232141241','Micaella Galli Iglesias', '091312312', 'Micaella@mail.com'),
        ('12432141241','Emilia Garca Zeballos', '091312312', 'Emilia@mail.com'),
        ('12342141241','Ignacio Gervasini', '091312312', 'Ignacio@mail.com'),
        ('12324141241','Mariana Guerra Ceriani', '091312312', 'Mariana@mail.com'),
        ('123214431241','Francisco Wladimir Havranek Diaz Arnesto', '091312312', 'Francisco@mail.com'),
        ('123213441241','Florencia Lopez Pinheiro', '091312312', '@Florenciamail.com'),	
        ('123231414241','Diego Magarian Conde', '091312312', 'Diego@mail.com'),
        ('1233231412441','Juan Andrs Martnez Devita', '091312312', 'Juan@mail.com'),
        ('1233221412441','Lorenzo Mendoza Miller', '091312312', 'Lorenzo@mail.com'),
        ('132321412441','Pablo Nicols Mesa Alonzo', '091312312', 'Pablo@mail.com'),
        ('312321412413','Filippo Muro Presa', '091312312', 'Filippo@mail.com')
GO

INSERT INTO [dbo].[Gato]
           ([gatoNombre]
           ,[gatoRaza]
           ,[gatoEdad]
           ,[gatoPeso]
           ,[propietarioDocumento])
     VALUES
        ('Tiger', 'turco', 3, 2, '12321412412'),
        ('Snow', 'abisnio', 3, 2, '12321412421'),
        ('Oreo', 'turco', 3, 2, '123221412241'),
        ('Silver', 'Persa', 13, 2, '123231412241'),
        ('Teddy', 'Persa', 13, 2, '12321421241'),
        ('Tom', 'Persa', 13, 2, '12321241241'),
        ('Garfield', 'Persa', 13, 2, '123223141241'),
        ('Simba', 'Persa', 13, 2, '123222141241'),
        ('Charlie', 'Persa', 13, 2, '12232141241'),
        ('Boots', 'abisnio', 3, 2, '142232141241'),
        ('Piccolo', 'turco', 3, 2, '12432141241'),
        ('Apollo', 'Persa', 14, 2, '12342141241'),
        ('Bruno', 'turco', 3, 2, '12324141241'),
        ('Notte', 'birmano', 3, 2, '123214431241'),
        ('Pascal', 'turco', 3, 2, '123213441241'),
        ('Gaston', 'ruso', 3, 2, '123231414241'),
        ('Monet', 'abisnio', 3, 2, '1233231412441'),
        ('Jules', 'bobtail', 3, 2, '1233221412441'),
        ('Eiki', 'birmano', 3, 2, '132321412441'),
        ('Reiko', 'abisnio', 3, 2, '312321412413'),
        ('Akiro', 'bobtail', 3, 2, '312321412413'),
        ('Hikaru', 'abisnio', 3, 2, '312321412413'),
        ('Taki', 'bobtail', 3, 2, '312321412413'),
        ('Kenzo', 'birmano', 3, 2, '1233221412441'),
        ('Kichiro', 'bobtail', 3, 2, '1233221412441')
GO

INSERT INTO [dbo].[Habitacion]
           ([habitacionNombre]
           ,[habitacionCapacidad]
           ,[habitacionPrecio]
           ,[habitacionEstado])
     VALUES
        ('Habitacion individual', 1, 1000, 'DISPONIBLE'),
        ('Habitacion Doble', 2, 2000, 'DISPONIBLE'),
        ('Habitacion triple', 3, 3000, 'DISPONIBLE'),
        ('Habitacion Cuadruple', 4, 4000, 'DISPONIBLE')
GO

INSERT [dbo].[Reserva] ([gatoID], [habitacionNombre], [reservaFechaInicio], [reservaFechaFin], [reservaMonto]) VALUES 
    (1, N'Habitacion individual', CAST(N'2023-03-03' AS Date), CAST(N'2023-04-03' AS Date), CAST(1000.00 AS Decimal(7, 2))),
    (1, N'Habitacion individual', CAST(N'2023-03-04' AS Date), CAST(N'2023-03-05' AS Date), CAST(1000.00 AS Decimal(7, 2))),
    (2, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(3, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(2, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(3, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(2, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(3, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(3, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(3, N'Habitacion Doble', CAST(N'2023-03-03' AS Date), CAST(N'2023-03-04' AS Date), CAST(2000.00 AS Decimal(7, 2))),
	(1, N'Habitacion triple', CAST(N'2023-03-04' AS Date), CAST(N'2023-03-05' AS Date), CAST(3000.00 AS Decimal(7, 2))),
	(2, N'Habitacion triple', CAST(N'2023-03-04' AS Date), CAST(N'2023-03-05' AS Date), CAST(3000.00 AS Decimal(7, 2))),
	(3, N'Habitacion triple', CAST(N'2023-03-04' AS Date), CAST(N'2023-03-05' AS Date), CAST(3000.00 AS Decimal(7, 2))),
	(4, N'Habitacion triple', CAST(N'2023-03-04' AS Date), CAST(N'2023-03-05' AS Date), CAST(3000.00 AS Decimal(7, 2))),
	(4, N'Habitacion Cuadruple', CAST(N'2024-03-04' AS Date), CAST(N'2024-04-07' AS Date), CAST(4000.00 AS Decimal(7, 2))),
	(4, N'Habitacion Cuadruple', CAST(N'2024-03-04' AS Date), CAST(N'2024-05-07' AS Date), CAST(4000.00 AS Decimal(7, 2))),
	(4, N'Habitacion Cuadruple', CAST(N'2024-03-04' AS Date), CAST(N'2024-06-07' AS Date), CAST(4000.00 AS Decimal(7, 2))),
	(5, N'Habitacion Cuadruple', CAST(N'2024-03-03' AS Date), CAST(N'2024-04-04' AS Date), CAST(4000.00 AS Decimal(7, 2))),
    (6, N'Habitacion Cuadruple', CAST(N'2024-03-03' AS Date), CAST(N'2024-04-04' AS Date), CAST(4000.00 AS Decimal(7, 2))),
    (7, N'Habitacion Cuadruple', CAST(N'2024-03-03' AS Date), CAST(N'2024-04-04' AS Date), CAST(4000.00 AS Decimal(7, 2))),
    (8, N'Habitacion Cuadruple', CAST(N'2024-03-03' AS Date), CAST(N'2024-04-04' AS Date), CAST(4000.00 AS Decimal(7, 2))),
    (9, N'Habitacion Cuadruple', CAST(N'2024-03-03' AS Date), CAST(N'2024-05-04' AS Date), CAST(4000.00 AS Decimal(7, 2)))
GO


INSERT [dbo].[Servicio] ([servicioNombre], [servicioPrecio]) VALUES 
    (N'Bano', CAST(500.00 AS Decimal(7, 2))),
    (N'Bano antipulgas', CAST(700.00 AS Decimal(7, 2))),
    (N'Castracion', CAST(2000.00 AS Decimal(7, 2))),
    (N'Corte de garras', CAST(400.00 AS Decimal(7, 2))),
    (N'Desparasitado interno', CAST(700.00 AS Decimal(7, 2))),
    (N'Esquilado', CAST(600.00 AS Decimal(7, 2))),
	(N'Control Parasitos', CAST(200.00 AS Decimal(7, 2))),
	(N'Revision Veterinaria', CAST(100.00 AS Decimal(7, 2)))
GO

INSERT [dbo].[Reserva_Servicio] ([reservaID], [servicioNombre], [cantidad]) VALUES 
    (2, N'Bano', 1),
	(3, N'Bano', 1),
	(4, N'Bano', 1),
    (5, N'Bano antipulgas', 1),
	(6, N'Bano antipulgas', 1),
	(7, N'Bano antipulgas', 1),
	(8, N'Bano antipulgas', 1),
	(9, N'Bano antipulgas', 1),
	(10, N'Bano antipulgas', 1),
	(11, N'Bano antipulgas', 1),
	(12, N'Bano antipulgas', 1),
	(13, N'Bano antipulgas', 1),
    (14, N'Bano antipulgas', 1),
	(15, N'Esquilado', 1),
	(16, N'Esquilado', 1),
	(17, N'Esquilado', 1),
	(18, N'Castracion', 6),
    (1, N'Bano', 1),
    (1, N'Bano antipulgas', 1),
    (1, N'Castracion', 1),
    (1, N'Corte de garras', 1),
    (1, N'Desparasitado interno', 1),
    (1, N'Esquilado', 1),
	(15, N'Control Parasitos', 1),
	(16, N'Control Parasitos', 1),
	(17, N'Control Parasitos', 1),
	(18, N'Control Parasitos', 1),
	(19, N'Control Parasitos', 1),
	(20, N'Control Parasitos', 1),
	(21, N'Control Parasitos', 1),
	(22, N'Control Parasitos', 1),
    (22, N'Revision Veterinaria', 1)
GO
