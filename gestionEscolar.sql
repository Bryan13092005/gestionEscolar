create database gestionEscolar;
use gestionEscolar;
create table estudiante(
id_estudiante int primary key auto_increment,
nombre varchar(100) not null,
fechaNacimiento date not null
);

create table docente(
id_docente int primary key auto_increment,
nombre varchar(100) not null,
telefono varchar(10) not null,
titulo varchar(100) not null
);

create table curso(
id_curso int primary key auto_increment,
nombreCurso varchar(50) not null
);

create table materia(
id_materia int primary key auto_increment,
nombreMateria varchar(70) not null
);

create table cursoMateria(
id_cursoMateria int primary key auto_increment,
id_curso int not null,
id_docente int not null,
id_materia int not null,
constraint FK_CURSO foreign key (id_curso) references curso(id_curso),
constraint FK_MATERIA foreign key (id_materia) references materia(id_materia),
constraint FK_DOCENTE foreign key (id_docente) references docente(id_docente)
);

create table horarioMateria(
id_horarioMateria int primary key auto_increment,
id_cursoMateria int not null,
horaInicio time not null,
horaFin time not null,
dia varchar(9) not null check(length(dia)>=5 and length(dia)<=9),
constraint FK_CURSO_MATERIA foreign key (id_cursoMateria) references cursoMateria(id_cursoMateria)
);

create table matricula(
id_matricula int primary key auto_increment,
id_estudiante int not null,
id_cursoMateria int not null,
constraint FK_CURSO_MATRICULA foreign key (id_cursoMateria) references cursoMateria(id_cursoMateria),
constraint FK_ESTUDIANTE foreign key (id_estudiante) references estudiante(id_estudiante)
);

create table calificaciones(
id_calificacion int primary key auto_increment,
id_matricula int not null,
nota decimal(4,2) not null check(nota>=0 and nota<=10) default 0,
descripcion varchar(50) not null,
constraint FK_MATRICULA foreign key (id_matricula) references matricula(id_matricula)
);