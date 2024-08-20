# Bases de de datos 2 SQL server

Semestre 3 Analista tecnologias ort

## Indices 🚀

Pique: _Crear un indice para cada FK._

### Mira ejemplos de indices.

Curso: _codigoCurso._
Alumnos: _cedulaIdentidad._
curso_alumno: _codigoCurso._ | _cedulaIdentidad._

```
create index IndiceCursoAlumno_Curso on curso_alumno (codigoCurso)
```

```
create index IndiceCursoAlumno_Alumno curso_alumno (cedulaIdentidad)
```

