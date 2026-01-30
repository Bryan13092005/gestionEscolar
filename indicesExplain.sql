/*
Indices
*/
-- Los indicen hacen que las busquedas se hagan por campos indexados haciendo las consultas más rapidas
use gestionEscolar;
-- Búsquedas por fecha de nacimiento
CREATE INDEX idx_estudiante_fechaNacimiento
ON estudiante(fechaNacimiento);
-- Búsquedas por nombre 
CREATE INDEX idx_estudiante_nombre
ON estudiante(nombre);
-- ORDER BY con el nombre del docente, cada que selecciono los nombre del docente el indice ya tendrá esa info indexada
CREATE INDEX idx_docente_nombre
ON docente(nombre);
-- Igual que el docente pero con el nombre de la materia
CREATE INDEX idx_materia_nombre
ON materia(nombreMateria);
-- Por si buscamos por id entonces hice estos, para los joins con esta tabla de cursoMateria
CREATE INDEX idx_cursoMateria_id_curso
ON cursoMateria(id_curso);

CREATE INDEX idx_cursoMateria_id_docente
ON cursoMateria(id_docente);

CREATE INDEX idx_cursoMateria_id_materia
ON cursoMateria(id_materia);
-- Tambien para usuarlos si se consulta con joins 
CREATE INDEX idx_matricula_id_estudiante
ON matricula(id_estudiante);

CREATE INDEX idx_matricula_id_cursoMateria
ON matricula(id_cursoMateria);
-- Tabla calificaciones
CREATE INDEX idx_calificaciones_nota
ON calificaciones(nota);

-- para joins que usen materiaID
CREATE INDEX idx_calificaciones_id_matricula
ON calificaciones(id_matricula);

-- Tabla horarioMateria
CREATE INDEX idx_horarioMateria_id_cursoMateria
ON horarioMateria(id_cursoMateria);
-- Con el explain para ver cómo MySQL va a ejecutar una consulta.
/*
EXPLAIN
SELECT *
FROM estudiante
WHERE fechaNacimiento > '2008-12-31';
*/



