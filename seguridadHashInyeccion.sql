/*
Seguridad
*/
-- hash
-- El has por lo general se hace en la parte de la aplicacion con librerias como Bcrypt
-- Se puede hacer desde el gestor pero con limitaciones
-- Por ejemplo si tenemos la tabla 

/*
CREATE TABLE usuario_sistema (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    rol VARCHAR(30) NOT NULL,
    password_hash CHAR(64) NOT NULL
);
*/

-- Podemos crear un insert:

/*
INSERT INTO usuario_sistema (nombre_usuario, rol, password_hash)
VALUES (
  'admin',
  'administrador',
  SHA2('clave123', 256)
);
*/


/*Prevención de inyección SQL*/
-- Se utilizan procedimientos para de esta manera obligar al usuario utilizar el mismo
-- Con eso nos aseguramos que los
-- insertar curso con eso nos aseguramos que el parámetro queda encapsulado por el tipo de dato
-- (por ejemplo, si esperas un INT y te mandan un TEXT con código, el gestor da error inmediatamente).
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



-- crear docente
delimiter //
create procedure agregarDocente(in nombreD varchar(100),in tituloD varchar(50), in telefonoD varchar(10))
begin
insert into docente (nombre, telefono, titulo) values(nombreD,telefonoD,tituloD);
end//
delimiter ;

