CREATE DATABASE Uni1;
USE Uni1;

CREATE TABLE alumnos
 (
  carnet_alumno VARCHAR(10),
  nombre_alumno VARCHAR(60),
  direccion_alumno VARCHAR(60),
  telefono_alumno VARCHAR(20),
  email_alumno VARCHAR(30),
  estatus_alumno VARCHAR(1),
  PRIMARY KEY (carnet_alumno)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE maestros
(
  codigo_maestro VARCHAR(10),
  nombre_maestro VARCHAR(60),
  direccion_maestro VARCHAR(60),
  telefono_maetro VARCHAR(20),
  email_maestro VARCHAR(30),
  estatus_maestro VARCHAR(1),
  PRIMARY KEY (codigo_maestro)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
 
 CREATE TABLE facultades
(
  codigo_facultad VARCHAR(10),
  nombre_facultad VARCHAR(60),
  estatus_facultad VARCHAR(1),
  PRIMARY KEY (codigo_facultad)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE carreras
(
  codigo_carrera VARCHAR(10),
  nombre_carrera VARCHAR(60),
  codigo_facultad VARCHAR(10),
  estatus_carrera VARCHAR(1),
  PRIMARY KEY (codigo_carrera),
  FOREIGN KEY (codigo_facultad) REFERENCES facultades(codigo_facultad)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE cursos
(
  codigo_curso VARCHAR(10),
  nombre_curso VARCHAR(60),
  estatus_curso VARCHAR(1),
  PRIMARY KEY (codigo_curso)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
 
 CREATE TABLE secciones
(
  codigo_seccion VARCHAR(10),
  nombre_seccion VARCHAR(60),
  estatus_seccion VARCHAR(1),
  PRIMARY KEY (codigo_seccion)
 ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
 
 CREATE TABLE sedes
(
  codigo_sede VARCHAR(10),
  nombre_sede VARCHAR(60),
  estatus_sede VARCHAR(1),
  PRIMARY KEY (codigo_sede)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE aulas
(
  codigo_aula VARCHAR(10),
  nombre_aula VARCHAR(60),
  estatus_aula VARCHAR(1),
  PRIMARY KEY (codigo_aula)
) ENGINE = InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE jornadas
(
	codigo_jornada VARCHAR(10),
    nombre_jornada VARCHAR(60),
    estatus_jornada VARCHAR(1),
    PRIMARY KEY (codigo_jornada)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

CREATE TABLE asignacioncursosalumnos
(
  codigo_carrera VARCHAR(10),
  codigo_sede VARCHAR(10),
  codigo_jornada VARCHAR(10),
  codigo_seccion VARCHAR(10),
  codigo_aula VARCHAR(10),
  codigo_curso VARCHAR(10),
  carnet_alumno VARCHAR(10),
  nota_asignacioncursoalumnos FLOAT(10,2), 
  PRIMARY KEY (codigo_carrera, codigo_sede, codigo_jornada, codigo_seccion, codigo_aula, codigo_curso, carnet_alumno),
  FOREIGN KEY (codigo_carrera) REFERENCES carreras(codigo_carrera),
  FOREIGN KEY (codigo_sede) REFERENCES sedes(codigo_sede),
  FOREIGN KEY (codigo_jornada) REFERENCES jornadas(codigo_jornada),
  FOREIGN KEY (codigo_seccion) REFERENCES secciones(codigo_seccion),
  FOREIGN KEY (codigo_aula) REFERENCES aulas(codigo_aula),
  FOREIGN KEY (codigo_curso) REFERENCES cursos(codigo_curso),
  FOREIGN KEY (carnet_alumno) REFERENCES alumnos(carnet_alumno)
  ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
  
  CREATE TABLE asignacioncursosmastros
(
  codigo_carrera VARCHAR(10),
  codigo_sede VARCHAR(10),
  codigo_jornada VARCHAR(10),
  codigo_seccion VARCHAR(10),
  codigo_aula VARCHAR(10),
  codigo_curso VARCHAR(10),
  codigo_maestro VARCHAR(10),
  PRIMARY KEY (codigo_carrera, codigo_sede, codigo_jornada, codigo_seccion, codigo_aula, codigo_curso),
  FOREIGN KEY (codigo_carrera) REFERENCES carreras(codigo_carrera),
  FOREIGN KEY (codigo_sede) REFERENCES sedes(codigo_sede),
  FOREIGN KEY (codigo_jornada) REFERENCES jornadas(codigo_jornada),
  FOREIGN KEY (codigo_seccion) REFERENCES secciones(codigo_seccion),
  FOREIGN KEY (codigo_aula) REFERENCES aulas(codigo_aula),
  FOREIGN KEY (codigo_curso) REFERENCES cursos(codigo_curso),
  FOREIGN KEY (codigo_maestro) REFERENCES maestros(codigo_maestro)
  ) ENGINE = InnoDB DEFAULT CHARSET=latin1;
  
  USE Uni1;
Select * From alumnos ;