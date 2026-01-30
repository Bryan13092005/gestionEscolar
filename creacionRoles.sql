/*
Administracion y Seguridad Punto 5 -- Lubswer
*/
use gestionescolar;

/*ROLES:
Root: Dueño de la institución (Acceso total).
Admin: Técnico de sistemas (Mantenimiento estructural).
Inspector: Gestión administrativa de alumnos.
Profesor: Gestión académica.
Alumno: Consulta de información.
*/

/*
Administrador: Todos los permisos menos necesarios, nombrando uno por uno
para asi respetar el principio de menor privilegio.
El comando Drop es algo subjetivo, ya que si bien me libra de darle permisos 
por jerarquia de niveles y drops exactos. En algunos casos puede afectar negativamente.
En desarollo es necesario para hacer pruebas, pero en produccion es mas riesgoso si ya tengo
montado todo, entonces aun que demore más darle permisos necesarios, tambien hay menos riesgo
*/

create role "administrador";
-- Permisos
grant 
Select, insert, update, delete, execute, show view,
create, alter, references, index, create view, create routine,
alter routine, trigger, create temporary tables, lock tables
on
gestionescolar.*
to "administrador";

flush privileges;

-- Exclusiones: DROP, GRAND OPTION, CREATE USER

/*
Moderador: puede hacer cambio solo en registro pero no en las tablas, 
corrige datos en las tablas
*/

CREATE role "inspector"; -- aplicacion

Grant 
select, delete, update, execute, show view
on
gestionescolar.*
to "inspector";

flush privileges;

/*
Profesor: El maestro debera trabajar sobre algo ya creado entonces el solo deberia poder trabajar
sobre registros.
*/
Create role "profesor";
Grant
select, update
on
gestionescolar.*
to
"profesor";

flush privileges;

/*
Alumno: El alumno solo debe ser capaz de visualizar su informacion sin modificarla
*/
Create role "alumno";
Grant 
select
on
gestionescolar.*
to
"alumno";

flush privileges;

/*
Explicacion aseguracion de  la integridad 
y confidencialidad de los datos.
*/

/*
Creacion de usuarios
*/

CREATE USER 'lubswer'@'localhost' IDENTIFIED BY 'lubswer123';
CREATE USER 'bryan'@'localhost' IDENTIFIED BY 'bryan123';
CREATE USER 'carlos'@'localhost' IDENTIFIED BY 'carlos123';
CREATE USER 'sergio'@'localhost' IDENTIFIED BY 'sergio123'; 

/* ASIGNACIÓN DE ROLES A USUARIOS */
GRANT 'administrador' TO 'sergio'@'localhost';
GRANT 'inspector' TO 'bryan'@'localhost';
GRANT 'profesor' TO 'carlos'@'localhost';
GRANT 'alumno' TO 'lubswer'@'localhost';  

/* ACTIVACIÓN DE ROLES POR DEFECTO */
SET DEFAULT ROLE 'administrador' TO 'sergio'@'localhost';
SET DEFAULT ROLE 'inspector' TO 'bryan'@'localhost';
SET DEFAULT ROLE 'profesor' TO 'carlos'@'localhost';
SET DEFAULT ROLE 'alumno' TO 'lubswer'@'localhost'; 

-- Sincronización final
FLUSH PRIVILEGES;

/*
Para asegurar la integridad y confidencialidad de los datos en GestionEscolar
se implementó un modelo de control de acceso mediantes roles, que en conjunto a 
el principio de menor privilegio asignado al rol(Administrador, Moderador, Profesor
y Alumno) solo los permisos estrictamente necesarios para que cada rol cumpla sus funciones
y restringiendo el acceso a funciones que no tengan que ver con el tipo de usuario.
La integridad se maneja mediante la exclusion de permisos tales cómo: DROP, GRANT OPTION, CREATE USER.
Los cuales pueden ser usados de manera malisiosa, ademas de otros (insert, update, delete) en donde la exclusion del mismo
depende del rol, asegurando que la informacion no sea alterada por personal no autorizado. 

*/

