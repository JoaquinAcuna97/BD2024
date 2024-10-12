# Bases de de datos 2 SQL server

Semestre 3 Analista tecnologias ort

## Indices 🚀

Pique: _Crear un indice para cada FK._

### Mira ejemplos de indices.

Curso: _codigoCurso._

Alumnos: _cedulaIdentidad._

curso*alumno: \_codigoCurso.* | _cedulaIdentidad._

```
create index IndiceCursoAlumno_Curso on curso_alumno (codigoCurso)
```

```
create index IndiceCursoAlumno_Alumno curso_alumno (cedulaIdentidad)
```

### Carga de datos

1. Creación de índices que considere puedan ser útiles para optimizar las consultas (según criterio
   establecido en el curso). :heavy_check_mark:

2. Ingreso de un juego completo de datos de prueba (será más valorada la calidad de los datos que la
   cantidad). :heavy_check_mark:

3. Utilizando SQL implementar las siguientes consultas:

- a. Mostrar el nombre del gato, el nombre del propietario, la habitación y el monto de la reserva
  más reciente en la(s) habitación con la capacidad más alta :heavy_check_mark:

- b. Mostrar los 3 servicios más solicitados, con su nombre, precio y cantidad total solicitada en
  el año anterior. Solo listar el servicio si cumple que tiene una cantidad total solicitada mayor
  o igual que 5 :heavy_check_mark:

- c. Listar nombre de gato y nombre de habitación para las reservas que tienen asociados todos
  los servicios adicionales disponibles :heavy_check_mark:

- d. Listar monto total de reserva por año y por gato (nombre) para los gatos que tienen más de
  10 años de edad, son de raza "Persa" y que en el año tuvieron montos total de reserva
  superior a 500 dólares. :heavy_check_mark:

- e. Mostrar el ranking de reservas más caras, tomando como monto total de una reserva el monto
  propio de la reserva más los servicios adicionales contratados en la reserva :heavy_check_mark:

- f. Calcular el promedio de duración en días de las reservas realizadas durante el año en curso.
  Deben ser consideradas solo aquellas reservas en las que se contrató el servicio
  "CONTROL_PARASITOS" pero no se contrató el servicio "REVISION_VETERINARIA" :heavy_check_mark:

- g. Para cada habitación, listar su nombre, la cantidad de días que ha estado ocupada y la
  cantidad de días transcurridos desde la fecha de inicio de la primera reserva en el hotel.
  Además, incluir una columna adicional que indique la categoría de rentabilidad, asignando
  el valor "REDITUABLE" si la habitación estuvo ocupada más del 60% de los días, "MAGRO"
  si estuvo ocupada entre el 40% y el 60%, y "NOESNEGOCIO" si estuvo ocupada menos del
  40%. :heavy_check_mark:
