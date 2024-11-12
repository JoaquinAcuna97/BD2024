use base_de_datos_cat_hotel


db.propietarios.insertMany([
    { "_id": "12321412412", "nombre": "Washington Joaquin Acuna Romero", "telefono": "091312312", "email": "Washington@mail.com" },
    { "_id": "12321412421", "nombre": "Sergio Andrns Altesor Casas", "telefono": "091312312", "email": "Sergio@mail.com" },
    { "_id": "123221412241", "nombre": "Camila Ayuto Menezes", "telefono": "091312312", "email": "Camila@mail.com" },
    { "_id": "123231412241", "nombre": "Williams Richard Barros Cabrera", "telefono": "091312312", "email": "Williams@mail.com" },
    { "_id": "12321421241", "nombre": "Martina Cuello Maqueira", "telefono": "091312312", "email": "Martina@mail.com" },
    { "_id": "12321241241", "nombre": "Florencia De Coster Canzani", "telefono": "091312312", "email": "Florencia@mail.com" },
    { "_id": "123223141241", "nombre": "Tania Pilar Denucci Vila", "telefono": "091312312", "email": "Tania@mail.com" },
    { "_id": "123222141241", "nombre": "Rodrigo Fernandez Quezada", "telefono": "091312312", "email": "Rodrigo@mail.com" },
    { "_id": "12232141241", "nombre": "Nahuel Hector Fuentes Guzman", "telefono": "091312312", "email": "Nahuel@mail.com" },
    { "_id": "142232141241", "nombre": "Micaella Galli Iglesias", "telefono": "091312312", "email": "Micaella@mail.com" },
    { "_id": "12432141241", "nombre": "Emilia Garca Zeballos", "telefono": "091312312", "email": "Emilia@mail.com" },
    { "_id": "12342141241", "nombre": "Ignacio Gervasini", "telefono": "091312312", "email": "Ignacio@mail.com" },
    { "_id": "12324141241", "nombre": "Mariana Guerra Ceriani", "telefono": "091312312", "email": "Mariana@mail.com" },
    { "_id": "123214431241", "nombre": "Francisco Wladimir Havranek Diaz Arnesto", "telefono": "091312312", "email": "Francisco@mail.com" },
    { "_id": "123213441241", "nombre": "Florencia Lopez Pinheiro", "telefono": "091312312", "email": "@Florenciamail.com" },
    { "_id": "123231414241", "nombre": "Diego Magarian Conde", "telefono": "091312312", "email": "Diego@mail.com" },
    { "_id": "1233231412441", "nombre": "Juan Andrs Martnez Devita", "telefono": "091312312", "email": "Juan@mail.com" },
    { "_id": "1233221412441", "nombre": "Lorenzo Mendoza Miller", "telefono": "091312312", "email": "Lorenzo@mail.com" },
    { "_id": "132321412441", "nombre": "Pablo Nicols Mesa Alonzo", "telefono": "091312312", "email": "Pablo@mail.com" },
    { "_id": "312321412413", "nombre": "Filippo Muro Presa", "telefono": "091312312", "email": "Filippo@mail.com" }
  ]);
  

db.gatos.insertMany([
    { "_id": 1, "nombre": "Tiger", "raza": "turco", "edad": 3, "peso": 2, "propietarioDocumento": "12321412412" },
    { "_id": 2, "nombre": "Snow", "raza": "abisnio", "edad": 3, "peso": 2, "propietarioDocumento": "12321412421" },
    { "_id": 3, "nombre": "Oreo", "raza": "turco", "edad": 3, "peso": 2, "propietarioDocumento": "123221412241" },
    { "_id": 4, "nombre": "Silver", "raza": "Persa", "edad": 13, "peso": 2, "propietarioDocumento": "123231412241" },
    { "_id": 5, "nombre": "Teddy", "raza": "Persa", "edad": 13, "peso": 2, "propietarioDocumento": "12321421241" },
    { "_id": 6, "nombre": "Tom", "raza": "Persa", "edad": 13, "peso": 2, "propietarioDocumento": "12321241241" },
    { "_id": 7, "nombre": "Garfield", "raza": "Persa", "edad": 13, "peso": 2, "propietarioDocumento": "123223141241" },
    { "_id": 8, "nombre": "Simba", "raza": "Persa", "edad": 13, "peso": 2, "propietarioDocumento": "123222141241" },
    { "_id": 9, "nombre": "Charlie", "raza": "Persa", "edad": 13, "peso": 2, "propietarioDocumento": "12232141241" },
    { "_id": 10, "nombre": "Boots", "raza": "abisnio", "edad": 3, "peso": 2, "propietarioDocumento": "142232141241" },
    { "_id": 11, "nombre": "Piccolo", "raza": "turco", "edad": 3, "peso": 2, "propietarioDocumento": "12432141241" },
    { "_id": 12, "nombre": "Apollo", "raza": "Persa", "edad": 14, "peso": 2, "propietarioDocumento": "12342141241" },
    { "_id": 13, "nombre": "Bruno", "raza": "turco", "edad": 3, "peso": 2, "propietarioDocumento": "12324141241" },
    { "_id": 14, "nombre": "Notte", "raza": "birmano", "edad": 3, "peso": 2, "propietarioDocumento": "123214431241" },
    { "_id": 15, "nombre": "Pascal", "raza": "turco", "edad": 3, "peso": 2, "propietarioDocumento": "123213441241" },
    { "_id": 16, "nombre": "Gaston", "raza": "ruso", "edad": 3, "peso": 2, "propietarioDocumento": "123231414241" },
    { "_id": 17, "nombre": "Monet", "raza": "abisnio", "edad": 3, "peso": 2, "propietarioDocumento": "1233231412441" },
    { "_id": 18, "nombre": "Jules", "raza": "bobtail", "edad": 3, "peso": 2, "propietarioDocumento": "1233221412441" },
    { "_id": 19, "nombre": "Eiki", "raza": "birmano", "edad": 3, "peso": 2, "propietarioDocumento": "132321412441" },
    { "_id": 20, "nombre": "Reiko", "raza": "abisnio", "edad": 3, "peso": 2, "propietarioDocumento": "312321412413" },
    { "_id": 21, "nombre": "Akiro", "raza": "bobtail", "edad": 3, "peso": 2, "propietarioDocumento": "312321412413" },
    { "_id": 22, "nombre": "Hikaru", "raza": "abisnio", "edad": 3, "peso": 2, "propietarioDocumento": "312321412413" },
    ]);

db.habitaciones.insertMany([
    { "nombre": "Habitacion individual", "capacidad": 1, "precio": 1000, "estado": "DISPONIBLE" },
    { "nombre": "Habitacion Doble", "capacidad": 2, "precio": 2000, "estado": "DISPONIBLE" },
    { "nombre": "Habitacion triple", "capacidad": 3, "precio": 3000, "estado": "DISPONIBLE" },
    { "nombre": "Habitacion Cuadruple", "capacidad": 4, "precio": 4000, "estado": "DISPONIBLE" }
]);
db.reservas.insertMany([
    { "gatoID": 1, "habitacionNombre": "Habitacion individual", "fechaInicio": "2024-07-07", "fechaFin": "2023-04-03", "monto": 1000 },
    { "gatoID": 1, "habitacionNombre": "Habitacion individual", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-05", "monto": 1000 },
    { "gatoID": 2, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 3, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 2, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 3, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 2, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 3, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2024-07-07", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 3, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2023-03-03", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 3, "habitacionNombre": "Habitacion Doble", "fechaInicio": "2023-03-03", "fechaFin": "2023-03-04", "monto": 2000 },
    { "gatoID": 1, "habitacionNombre": "Habitacion triple", "fechaInicio": "2023-03-04", "fechaFin": "2023-03-05", "monto": 3000 },
    // Agregar más reservas aquí...
  ]);
  db.servicios.insertMany([
    { "nombre": "Bano", "precio": 500 },
    { "nombre": "Bano antipulgas", "precio": 700 },
    { "nombre": "Castracion", "precio": 2000 },
    { "nombre": "Corte de garras", "precio": 400 },
    { "nombre": "Desparasitado interno", "precio": 700 },
    { "nombre": "Peluqueria", "precio": 600 },
    { "nombre": "Control Parasitos", "precio": 200 },
    { "nombre": "Revision Veterinaria", "precio": 100 }
  ]);
  db.reserva_servicio.insertMany([
    { "reservaID": 2, "servicioNombre": "Bano", "cantidad": 1 },
    { "reservaID": 3, "servicioNombre": "Bano", "cantidad": 1 },
    { "reservaID": 4, "servicioNombre": "Bano", "cantidad": 1 },
    { "reservaID": 5, "servicioNombre": "Bano antipulgas", "cantidad": 1 },
    { "reservaID": 6, "servicioNombre": "Peluqueria", "cantidad": 1 },
    { "reservaID": 7, "servicioNombre": "Peluqueria", "cantidad": 1 },
    { "reservaID": 8, "servicioNombre": "Bano antipulgas", "cantidad": 1 },
    { "reservaID": 9, "servicioNombre": "Bano antipulgas", "cantidad": 1 },
    { "reservaID": 10, "servicioNombre": "Bano antipulgas", "cantidad": 1 },
    // Agregar más servicios aquí...
  ]);


  //Listar reservas del propietario con documento "12321412412"
  db.gatos.aggregate([
    {
      $match: { propietarioDocumento: "12321412412" }
    },
    {

      $lookup: {
        from: "reservas",               // Nombre de la colección de reservas
        localField: "_id",               // Campo de gato que coincide con _id de reserva
        foreignField: "gatoID",          // Campo de reserva que tiene el ID del gato
        as: "reservas"                  // Alias para el array de reservas encontradas
      }
    }
  ]);


//Listar las reservas que incluyen el servicio "Peluqueria"
db.reserva_servicio.aggregate([
{
    $match: { servicioNombre: "Peluqueria" }
},
{
    $lookup: {
    from: "reservas", // Nombre de la colección "reservas"
    localField: "reservaID", // Campo de reservaID en la colección reserva_servicio
    foreignField: "reservaID", // Campo de reservaID en la colección reservas
    as: "detallesReserva" // El alias para almacenar los resultados combinados
    }
}
]);



//Actualizar el estado de la habitación "Suite1" asegurándose que está en estado "DISPONIBLE"
// y pasándolo a estado "LLENA" 
db.habitaciones.updateOne(
{ nombre: "Habitacion individual", estado: "DISPONIBLE" }, // Filtro: habitación con nombre "Suite1" y estado "DISPONIBLE"
{ $set: { estado: "LLENA" } } // Actualización: cambiar el estado a "LLENA"
);

//Listar nombre de propietario y cantidad de reservas con fecha de inicio en julio 2024, para los
// propietarios que tengan más de una reserva en ese mes
db.reservas.aggregate([
    // Filtrar las reservas que tienen la fecha de inicio en julio de 2024
    {
      $match: {
        reservafechaInicio: {
          $gte: ISODate("2024-07-01T00:00:00Z"),  // A partir del 1 de julio de 2024
          $lt: ISODate("2024-08-01T00:00:00Z")   // Antes del 1 de agosto de 2024
        }
      }
    },
    // Agrupar por propietarioDocumento para contar la cantidad de reservas
    {
      $group: {
        _id: "$gatoID", // Agrupar por gatoID, asumiendo que el gatoID está relacionado con el propietario
        cantidadReservas: { $sum: 1 }  // Contar cuántas reservas tiene cada propietario
      }
    },
    // Filtrar los propietarios que tengan más de una reserva
    {
      $match: {
        cantidadReservas: { $gt: 1 } // Solo propietarios con más de una reserva
      }
    },
    // Unir con la colección "gatos" para obtener el nombre del propietario
    {
      $lookup: {
        from: "gatos",   // Nombre de la colección de gatos
        localField: "_id",  // gatoID (campo de agrupamiento)
        foreignField: "gatoID", // campo en gatos
        as: "gatoDetalles"
      }
    },
    // Unwind para acceder a la información de gatoDetalles
    {
      $unwind: "$gatoDetalles"
    },
    // Unir con la colección "propietarios" para obtener el nombre del propietario
    {
      $lookup: {
        from: "propietarios",   // Nombre de la colección de propietarios
        localField: "gatoDetalles.propietarioDocumento",  // Documento del propietario en gatos
        foreignField: "propietarioDocumento", // Campo en propietarios
        as: "propietarioDetalles"
      }
    },
    // Unwind para acceder a la información del propietario
    {
      $unwind: "$propietarioDetalles"
    },
    // Proyección para mostrar solo el nombre del propietario y la cantidad de reservas
    {
      $project: {
        _id: 0,
        propietarioNombre: "$propietarioDetalles.propietarioNombre",
        cantidadReservas: 1
      }
    }
  ]);
  