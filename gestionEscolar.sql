create database if not exists gestionEscolar;
use gestionEscolar;
create table  if not exists estudiante(
                           id_estudiante int primary key auto_increment,
                           nombre varchar(100) not null,
                           fechaNacimiento date not null
);

create table if not exists docente(
                        id_docente int primary key auto_increment,
                        nombre varchar(100) not null,
                        telefono varchar(10) not null,
                        titulo varchar(100) not null
);

create table if not exists curso(
                      id_curso int primary key auto_increment,
                      nombreCurso varchar(50) not null
);

create table if not exists materia(
                        id_materia int primary key auto_increment,
                        nombreMateria varchar(70) not null
);

create table if not exists cursoMateria(
                             id_cursoMateria int primary key auto_increment,
                             id_curso int not null,
                             id_docente int not null,
                             id_materia int not null,
                             constraint FK_CURSO foreign key (id_curso) references curso(id_curso),
                             constraint FK_MATERIA foreign key (id_materia) references materia(id_materia),
                             constraint FK_DOCENTE foreign key (id_docente) references docente(id_docente)
);

create table if not exists horarioMateria(
                               id_horarioMateria int primary key auto_increment,
                               id_cursoMateria int not null,
                               horaInicio time not null,
                               horaFin time not null,
                               dia varchar(9) not null check(length(dia)>=5 and length(dia)<=9),
                               constraint FK_CURSO_MATERIA foreign key (id_cursoMateria) references cursoMateria(id_cursoMateria)
);

create table if not exists matricula(
                          id_matricula int primary key auto_increment,
                          id_estudiante int not null,
                          id_cursoMateria int not null,
                          constraint FK_CURSO_MATRICULA foreign key (id_cursoMateria) references cursoMateria(id_cursoMateria),
                          constraint FK_ESTUDIANTE foreign key (id_estudiante) references estudiante(id_estudiante)
);

create table if not exists calificaciones(
                               id_calificacion int primary key auto_increment,
                               id_matricula int not null,
                               nota decimal(4,2) not null  default 0 check(nota>=0 and nota<=10),
                               descripcion varchar(50) not null,
                               constraint FK_MATRICULA foreign key (id_matricula) references matricula(id_matricula)
);



-- 1. CURSOS
insert into curso (nombreCurso) values
                                    ('Primero A'), ('Primero B'), ('Segundo A'), ('Tercero A');

-- 2. MATERIAS
insert into materia (nombreMateria) values
                                        ('Matematicas'), ('Lengua'), ('Historia'), ('Ciencias'), ('Ingles'), ('Computacion');

-- 3. DOCENTES
insert into docente (nombre, telefono, titulo) values
                                                   ('Ana Rivera', '0987654321', 'Lic. Matematicas'),
                                                   ('Carlos Mendez', '0976543210', 'Lic. Lengua'),
                                                   ('Laura Gomez', '0965432109', 'Lic. Historia'),
                                                   ('Diego Perez', '0954321098', 'Lic. Ciencias'),
                                                   ('Sofia Torres', '0943210987', 'Lic. Ingles');

-- 4. ESTUDIANTES (30 registros en total)
insert into estudiante (nombre, fechaNacimiento) values
                                                     ('Juan Perez', '2008-03-12'), ('Maria Lopez', '2007-11-02'), ('Pedro Santos', '2008-07-21'),
                                                     ('Lucia Vega', '2009-01-15'), ('Carlos Ruiz', '2007-06-05'), ('Ana Morales', '2008-09-30'),
                                                     ('Jose Castillo', '2009-12-08'), ('Elena Herrera', '2007-04-18'), ('Miguel Rojas', '2008-02-27'),
                                                     ('Paula Ortiz', '2009-05-09'), ('Luis Castro', '2008-10-10'), ('Diana Flores', '2007-08-22'),
                                                     ('Roberto Diaz', '2009-03-30'), ('Marta Silva', '2008-05-14'), ('Kevin Leon', '2007-12-01'),
                                                     ('Rosa Mejia', '2009-07-07'), ('Ivan Soto', '2008-11-11'), ('Sara Vera', '2007-02-20'),
                                                     ('Hugo Paz', '2009-06-18'), ('Beatriz Lara', '2008-04-04'), ('Jorge Luna', '2007-09-09'),
                                                     ('Alicia Solis', '2009-01-01'), ('Oscar Polo', '2008-08-08'), ('Felipe Jara', '2007-10-25'),
                                                     ('Gisela Caro', '2009-11-15'), ('Fernando Torres', '2007-05-20'), ('Gabriela Paz', '2007-09-11'),
                                                     ('Sebastian Reinoso', '2008-01-30'), ('Camila Vaca', '2007-12-15'), ('Mateo Salinas', '2008-04-22');

-- 5. CURSOMATERIA (Debe ir antes que matricula y horario)
insert into cursoMateria (id_curso, id_docente, id_materia) values
                                                                (1, 1, 1), (1, 2, 2), (1, 4, 4), -- IDs 1, 2, 3
                                                                (2, 3, 3), (2, 5, 5),           -- IDs 4, 5
                                                                (3, 1, 1), (3, 2, 2),           -- IDs 6, 7
                                                                (4, 4, 4);                     -- ID 8

-- 6. HORARIOMATERIA
insert into horarioMateria (id_cursoMateria, horaInicio, horaFin, dia) values
                                                                           (1, '07:00:00', '08:30:00', 'Lunes'),
                                                                           (2, '08:30:00', '10:00:00', 'Lunes'),
                                                                           (3, '10:30:00', '12:00:00', 'Martes'),
                                                                           (4, '07:00:00', '08:30:00', 'Miercoles'),
                                                                           (5, '08:30:00', '10:00:00', 'Miercoles'),
                                                                           (6, '07:00:00', '08:30:00', 'Jueves'),
                                                                           (7, '08:30:00', '10:00:00', 'Jueves'),
                                                                           (8, '07:00:00', '08:30:00', 'Viernes');

-- 7. MATRICULA (Distribución de los 30 estudiantes)
insert into matricula (id_estudiante, id_cursoMateria) values
                                                           (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,1), (10,2),
                                                           (11,3), (12,4), (13,5), (14,6), (15,7), (16,8), (17,1), (18,2), (19,3), (20,4),
                                                           (21,5), (22,6), (23,7), (24,8), (25,1), (26,8), (27,8), (28,8), (29,8), (30,8);

-- 8. CALIFICACIONES (30 registros correspondientes a las matriculas)
insert into calificaciones (id_matricula, nota, descripcion) values
                                                                 (1, 8.50, 'Parcial 1'), (2, 7.20, 'Parcial 1'), (3, 9.00, 'Parcial 1'),
                                                                 (4, 6.50, 'Parcial 1'), (5, 10.00, 'Parcial 1'), (6, 8.00, 'Parcial 1'),
                                                                 (7, 7.50, 'Parcial 1'), (8, 9.20, 'Parcial 1'), (9, 6.80, 'Parcial 1'),
                                                                 (10, 8.40, 'Parcial 1'), (11, 7.00, 'Parcial 1'), (12, 8.10, 'Parcial 1'),
                                                                 (13, 9.50, 'Parcial 1'), (14, 5.50, 'Parcial 1'), (15, 8.80, 'Parcial 1'),
                                                                 (16, 7.90, 'Parcial 1'), (17, 8.30, 'Parcial 1'), (18, 9.10, 'Parcial 1'),
                                                                 (19, 6.20, 'Parcial 1'), (20, 7.70, 'Parcial 1'), (21, 10.00, 'Parcial 1'),
                                                                 (22, 8.60, 'Parcial 1'), (23, 7.30, 'Parcial 1'), (24, 9.40, 'Parcial 1'),
                                                                 (25, 8.90, 'Parcial 1'), (26, 9.50, 'Parcial 1'), (27, 8.80, 'Parcial 1'),
                                                                 (28, 7.50, 'Parcial 1'), (29, 9.00, 'Parcial 1'), (30, 8.20, 'Parcial 1');

-- Reporte Académico
select
    e.nombre as Estudiante,
    c.nombreCurso as Curso,
    m.nombreMateria as Materia,
    ca.nota as Calificacion,
    ca.descripcion AS Periodo
from estudiante e
         join matricula ma on e.id_estudiante = ma.id_estudiante
         join cursoMateria cm on ma.id_cursoMateria = cm.id_cursoMateria
         join curso c on cm.id_curso = c.id_curso
         join materia m on cm.id_materia = m.id_materia
         join calificaciones ca on ma.id_matricula = ca.id_matricula;

-- Listar todos los estudiantes

select * from  estudiante;

-- listado de profesores y su número de contacto

select nombre, telefono, titulo
from docente
order by nombre asc;

-- Estudiantes que nacieron depués del 2008
select * from estudiante
where fechaNacimiento > '2008-12-31';

-- Notas mayores o iguales a 9
select * from calificaciones
where nota >= 9.00;

-- materias que contienen la materia "ciencias"
select * from materia
where nombreMateria like '%ciencias%';

-- consolidado de tablas
select
    e.nombre as Estudiante,
    c.nombreCurso as Curso,
    m.nombreMateria as Materia,
    d.nombre as Docente,
    ca.nota as Calificacion,
    ca.descripcion as Periodo
from estudiante e
         join matricula ma on e.id_estudiante = ma.id_estudiante
         join cursoMateria cm on ma.id_cursoMateria = cm.id_cursoMateria
         join curso c on cm.id_curso = c.id_curso
         join materia m on cm.id_materia = m.id_materia
         join docente d on cm.id_docente = d.id_docente
         join calificaciones ca on ma.id_matricula = ca.id_matricula
order by c.nombreCurso, e.nombre;

-- Busqueda específica de un alumno
select * from estudiante
where nombre like '%Perez%';

-- alumnos con notas bajas
select id_matricula, nota, descripcion
from calificaciones
where nota < 7.00;

-- Listado de clases por curso
select c.nombreCurso, m.nombreMateria, d.nombre as Docente
from cursoMateria cm
         join curso c on cm.id_curso = c.id_curso
         join materia m on cm.id_materia = m.id_materia
         join docente d on cm.id_docente = d.id_docente;

-- Promedio de notas uniendo materia y docente

select m.nombreMateria, d.nombre as Docente, avg(ca.nota) as PromedioGeneral
from materia m
         join cursoMateria cm on m.id_materia = cm.id_materia
         join docente d on cm.id_docente = d.id_docente
         join matricula ma on cm.id_cursoMateria = ma.id_cursoMateria
         join calificaciones ca on ma.id_matricula = ca.id_matricula
group by m.nombreMateria, d.nombre;

-- Funciones de agregación (SUM, COUNT, AVG)
-- Cuantos estudiantes hay en total
select count(*) as total_estudiantes from estudiante;

-- Cuanto suma la nota de un alumno
select sum(nota) as suma_notas from calificaciones where id_matricula = 3;

-- Promedio de notas del tercero A
select avg(ca.nota) as promedio_curso
from calificaciones ca
         join matricula ma on ca.id_matricula = ma.id_matricula
         join cursoMateria cm on ma.id_cursoMateria = cm.id_cursoMateria
where cm.id_curso = 4;

-- Funciones de Cadena
-- Convertir Nombres de docentes a Mayúsculas
select upper(nombre) as nombre_mayus, lower(titulo) as titulo_minus from docente;

-- Concatenar prof antes del nombre
select concat('Prof. ', nombre, ' - ', titulo) as perfil_docente from docente;

-- reemplazar los primeros digitos del número telefónico de los profes

select nombre,
       concat('+593 9', substring(telefono, 3)) as telefono_internacional
from docente;
-- Subconsultas y vistas

-- Estudiantes con el promedio más alto que el promedio general
select e.nombre, ca.nota
from estudiante e
         join matricula ma on e.id_estudiante = ma.id_estudiante
         join calificaciones ca on ma.id_matricula = ca.id_matricula
where ca.nota > (select avg(nota) from calificaciones);

-- Curso y materias asignadas
select nombreCurso,
       (select count(*) from cursoMateria cm where cm.id_curso = c.id_curso) as total_materias
from curso c;

-- Alumno con la mayor nota
select e.nombre, ca.nota
from estudiante e
         join matricula ma on e.id_estudiante = ma.id_estudiante
         join calificaciones ca on ma.id_matricula = ca.id_matricula
where ca.nota = (select max(nota) from calificaciones);

-- Vistas
-- matriculas por curso
delimiter //
create  view vista_resumen_matricula as
select c.nombreCurso, count(m.id_matricula) as alumnos_inscritos
from curso c
         left join cursoMateria cm on c.id_curso = cm.id_curso
         left join matricula m on cm.id_cursoMateria = m.id_cursoMateria
group by c.nombreCurso //
delimiter ;

select * from vista_resumen_matricula;

-- Directorio de Docentes y sus materias
delimiter //
create  view vista_docentes_materias as
select d.nombre as docente, m.nombreMateria, c.nombreCurso
from docente d
         join cursoMateria cm on d.id_docente = cm.id_docente
         join materia m on cm.id_materia = m.id_materia
         join curso c on cm.id_curso = c.id_curso //
delimiter ;

select * from vista_docentes_materias;

-- alumnos con riesgo de perder la materia
delimiter //
create   view vista_alumnos_reprobados as
select e.nombre as estudiante, ca.nota, ca.descripcion
from estudiante e
         join matricula ma on e.id_estudiante = ma.id_estudiante
         join calificaciones ca on ma.id_matricula = ca.id_matricula
where ca.nota < 7.00 //
                delimiter ;

 select * from vista_alumnos_reprobados;

-- Edad de los estudiantes
delimiter //

create or replace view vista_edad_estudiantes as
select
    nombre,
    timestampdiff(year, fechaNacimiento, curdate()) as edad
from estudiante //

delimiter ;

select * from vista_edad_estudiantes;

-- Inserción, eliminación, actualización de los datos

-- insertar un nuevo estudiante
insert into estudiante (nombre, fechaNacimiento)
values ('Mateo Vizcaíno', '2009-05-14');

-- insertar nueva calificación para una matrícula existente
insert into calificaciones (id_matricula, nota, descripcion)
values (5, 9.50, 'Examen Final');

-- actualizar una nota
update calificaciones
set nota = 8.75
where id_calificacion = 9;

-- actualizar titulo profesor
update docente
set titulo = 'Msc. Ciencias de la Educación'
where id_docente = 3;

-- borrar una nota
delete from calificaciones where id_calificacion = 1;

-- borrar horario
delete from horarioMateria where id_horarioMateria = 1;

select * from horarioMateria;

-- insertar curso
DELIMITER //
CREATE PROCEDURE crearCurso(
    IN nombre VARCHAR(50),
    IN idDocente INT,
    IN idMateria INT,
    IN horaI TIME,
    IN horaF TIME,
    IN diaI VARCHAR(9)
)
BEGIN
    DECLARE idCursoNuevo INT;
    DECLARE idCMNuevo INT;

    -- Insertar curso
    INSERT INTO curso(nombreCurso)
    VALUES (nombre);

    SET idCursoNuevo = LAST_INSERT_ID();

    -- Insertar curso-materia
    INSERT INTO cursoMateria(id_curso, id_docente, id_materia)
    VALUES (idCursoNuevo, idDocente, idMateria);

    SET idCMNuevo = LAST_INSERT_ID();

    -- Insertar horario
    INSERT INTO horariomateria(id_cursoMateria, horaInicio, horaFin, dia)
    VALUES (idCMNuevo, horaI, horaF, diaI);
END //
DELIMITER ;

call crearCurso('Segundo B',1,2,'10:00:00','12:00:00','martes');

select*from curso;
select*from cursoMateria;
select*from horarioMateria;

-- crear alumno
delimiter //
create procedure crearEstudiante(in nombreI varchar(50),in fechaN date)
begin
insert into estudiante(nombre,fechaNacimiento) values(nombreI,fechaN);
end //
delimiter ;

-- matricular
delimiter //
create procedure matricular(in idEstudiante int,in idCM int)
begin
insert into matricula(id_estudiante,id_cursoMateria) values(idEstudiante,idCM);
end //
delimiter ;

-- calificaciones
delimiter //
create procedure insertarCalificacion(in idMatricula int, in notaI decimal, in descripcionI varchar(100))
begin
insert into calificaciones(id_matricula,nota,descripcion) values(idMatricula,notaI,descripcionI);
end//
delimiter ;

-- materia
delimiter //
create procedure crearMateria(in nombreM varchar(50))
begin
insert into materia(nombreMateria) values(nombreM);
end//
delimiter ;


-- crear docente
delimiter //
create procedure agregarDocente(in nombreD varchar(100),in tituloD varchar(50), in telefonoD varchar(10))
begin
insert into docente (nombre, telefono, titulo) values(nombreD,telefonoD,tituloD);
end//
delimiter ;

-- ver alumnos
create view verAlumnos as select *from estudiante;


select*from verAlumnos;

-- ver docentes
create view verDocente as select*from docente;

-- ver calificaciones todos
create view verCalificacionesGenerales as select*from calificaciones;

-- ver cursos
create view verCursos as select*from curso;

-- ver matriculas 
create view verMatriculas as select*from matricula;

-- ver materias
create view verMaterias as select*from materia;


-- TRIGGERS

-- INSERT
-- insertar estudiante
create table auditoriaInsertarEstudainte(
id int primary key auto_increment,
nombre varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger insertarEstudiante before insert on estudiante for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarEstudiante(nombre,usuario) values(new.nombre,usuarioA);
end//
delimiter ;

-- crear docente
create table auditoriaInsertarDocente(
id int primary key auto_increment,
nombre varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger insertarDocente before insert on docente for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarDocente(nombre,usuario) values(new.nombre,usuarioA);
end//
delimiter ;

-- insertar materia
create table auditoriaInsertarMateria(
id int primary key auto_increment,
nombre varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger insertarMateria before insert on materia for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarMateria(nombre,usuario) values(new.nombreMateria,usuarioA);
end//
delimiter ;

-- insertar curso
create table auditoriaInsertarCurso(
id int primary key auto_increment,
nombre varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger insertarCurso before insert on curso for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarCurso(nombre,usuario) values(new.nombreCurso,usuarioA);
end//
delimiter ;


-- calificaciones
create table auditoriaInsertarCalificacion(
id int primary key auto_increment,
idMatricula int,
nota decimal(4,2),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger insertarCalificacion before insert on calificaciones for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarCalificacion(idMatricula,nota,usuario) values(new.id_matricula,new.nota,usuarioA);
end//
delimiter ;

-- matricula
create table auditoriaInsertarMatricula(
id int primary key auto_increment,
estudianteID int,
cursoMateria int,
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger insertarMatricula before insert on matricula for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarMatricula(estudianteID,cursoMateria,usuario) values(new.id_estudiante,new.id_cursoMateria,usuarioA);
end//
delimiter ;

-- UPDATE

-- Actualizar estudiante
create table auditoriaActualizarEstudainte(
id int primary key auto_increment,
nombreAntiguo varchar(100),
nombreNuevo varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger ActualizarEstudiante before update on estudiante for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarEstudiante(nombreAntiguo,nombreNuevo,usuario) values(old.nombre,new.nombre,usuarioA);
end//
delimiter ;

-- Actualizar docente
create table auditoriaActualizarDocente(
id int primary key auto_increment,
nombreAntiguo varchar(100),
nombreNuevo varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger ActualizarDocente before update on docente for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarDocente(nombreAntiguo,nombreNuevo,usuario) values(old.nombre,new.nombre,usuarioA);
end//
delimiter ;

-- Actualizar materia
create table auditoriaActualizarMateria(
id int primary key auto_increment,
nombreAntiguo varchar(100),
nombreNuevo varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger ActualizarMateria before update on materia for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarMateria(nombreAntiguo,nombreNuevo,usuario) values(old.nombreMateria,new.nombreMateria,usuarioA);
end//
delimiter ;

-- Actualizar curso
create table auditoriaActualizarCurso(
id int primary key auto_increment,
nombreAntiguo varchar(100),
nombreNuevo varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger ActualizarCurso before update on curso for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarCurso(nombreAntiguo,nombreNuevo,usuario) values(old.nombreCurso,new.nombreCurso,usuarioA);
end//
delimiter ;


-- calificaciones
create table auditoriaActualizarCalificacion(
id int primary key auto_increment,
idMatriculaAntigua int,
idMatriculaNueva int,
notaAntigua decimal(4,2),
notaNueva decimal(4,2),
descripcionAntigua varchar(100),
descripcionNueva varchar(100),
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger ActualizarCalificacion before update on calificaciones for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaActualizarCalificacion(idMatriculaAntigua,idMatriculaNueva,notaAntigua,notaNueva,descripcionAntigua,descripcionNueva,usuario) values(old.id_matricula,new.id_matricula,old.nota,new.nota,old.descripcion,new.descripcion,usuarioA);
end//
delimiter ;

-- matricula
create table auditoriaActualizarMatricula(
id int primary key auto_increment,
estudianteIDA int,
estudianteIDN int,
cursoMateriaA int,
cursoMateriaN int,
fechaInsersion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger ActualizarMatricula before update on matricula for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaInsertarMatricula(estudianteIDA,estudianteIDN,cursoMateriaA,cursoMateriaN,usuario) values(old.id_estudiante,new.id_estudiante,old.id_cursoMateria,new.id_cursoMateria,usuarioA);
end//
delimiter ;

-- DELETE

-- Eliminar estudiante
create table auditoriaEliminarEstudainte(
id int primary key auto_increment,
nombre varchar(100),
fechaEliminacion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger EliminarEstudiante before delete on estudiante for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarEstudiante(nombre,usuario) values(old.nombre,usuarioA);
end//
delimiter ;

-- Eliminar docente
create table auditoriaEliminarDocente(
id int primary key auto_increment,
nombre varchar(100),
fechaEliminacion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger EliminarDocente before delete on docente for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarDocente(nombre,usuario) values(old.nombre,usuarioA);
end//
delimiter ;

-- Eliminar materia
create table auditoriaEliminarMateria(
id int primary key auto_increment,
nombre varchar(100),
fechaEliminacion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger EliminarMateria before delete on materia for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarMateria(nombre,usuario) values(old.nombreMateria,usuarioA);
end//
delimiter ;

-- Eliminar curso
create table auditoriaEliminarCurso(
id int primary key auto_increment,
nombre varchar(100),
fechaEliminacion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger EliminarCurso before delete on curso for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarCurso(nombre,usuario) values(old.nombreCurso,usuarioA);
end//
delimiter ;


-- calificaciones
create table auditoriaEliminarCalificacion(
id int primary key auto_increment,
idMatricula int,
nota decimal(4,2),
fechaEliminacion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger EliminarCalificacion before delete on calificaciones for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarCalificacion(idMatricula,nota,usuario) values(old.id_matricula,old.nota,usuarioA);
end//
delimiter ;

-- matricula
create table auditoriaEliminarMatricula(
id int primary key auto_increment,
estudianteID int,
cursoMateria int,
fechaEliminacion datetime default current_timestamp,
usuario varchar(100));

delimiter //
create trigger EliminarMatricula before delete on matricula for each row
begin
declare usuarioA varchar(50);
set usuarioA= current_user();
insert into auditoriaEliminarMatricula(estudianteID,cursoMateria,usuario) values(old.id_estudiante,old.id_cursoMateria,usuarioA);
end//
delimiter ;