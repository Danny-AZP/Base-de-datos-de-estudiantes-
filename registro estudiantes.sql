--como crear una base de datos
CREATE DATABASE "Academico"
  WITH OWNER = "Danny"
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Spanish_Ecuador.1252'
       LC_CTYPE = 'Spanish_Ecuador.1252'
       CONNECTION LIMIT = -1;
--como crear una tabla 
CREATE TABLE "estudiante"
(
  idjugador integer NOT NULL,
  "primerNombre" character varying(50) NOT NULL,
  "segundoNombre" character varying(50) NOT NULL,
  "primerApellido" character varying(50) NOT NULL,
  "segundoApellido" character varying(50) NOT NULL,
  cedula character varying(50) NOT NULL,
  "fechaDeNacimiento" date NOT NULL,
  "notaPoo" integer NOT NULL,
  "notaBdd" integer NOT NULL,
  genero character varying(50) NOT NULL,
  CONSTRAINT "estudiante_pkey" PRIMARY KEY (idjugador)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "estudiante" OWNER TO "Danny";
--insertar datos en la tabla
INSERT INTO "Estudiante"(
            idjugador, "primerNombre", "segundoNombre", "primerApellido", 
            "segundoApellido", cedula, "fechaDeNacimiento", "notaPoo", "notaBdd", 
            genero)
    VALUES (1, 'Luis', 'Fernando', 'Montes', 
            'Aguirre', '1728374635', '1999/09/28', 2, 10, 
            'Masculino'),
            (2, 'Maria', 'Emilia', 'Martinez', 
            'Perez', '1726372836', '1999/06/06', 10, 10, 
            'Femenino'),
            (3, 'Pedro', 'Vicente', 'Maldonado', 
            'Soria', '0837123784', '1992/04/14', 8, 7, 
            'Masculino'),
            (4, 'Paula', 'Fernanda', 'Ortega', 
            'Cuesta', '1727263545', '1995/01/31', 5, 8, 
            'femenino'),
            (5, 'Julio', 'Alberto', 'Perez', 
            'Romero', '0192836456', '1996/03/13', 9, 5, 
            'Masculino'),
            (6, 'Laura', 'Paola', 'Montufar', 
            'Leon', '0385243543', '1998/11/23', 5, 3, 
            'Femenino'),
            (7, 'Paul', 'Alberto', 'Spencer', 
            'Villacis', '1934765367', '2000/11/08', 8, 7, 
            'Masculino'),
            (8, 'Alberto', 'Jose', 'Morales', 
            'Arteaga', '1527354645', '1997/12/31', 6, 9, 
            'Masculino'),
            (9, 'Bryan', 'Alexander', 'Cusicagua', 
            'Escobar', '0473856319', '1998/10/01', 3, 8, 
            'Masculino'),
            (10, 'Pedro', 'Julio', 'Pallares', 
            'Pallares', '1723417554', '1999/04/23', 8, 9, 
            'Masculino'),
            (11, 'Elizabeth', 'Alejandra', 'Hernandez', 
            'Cardenas', '1039284756', '1995/12/03', 9, 10, 
            'Femenino'),
            (12, 'Ana', 'Lucia', 'Cajamarca', 
            'Torres', '1767664453', '1994/05/26', 7, 8, 
            'Femenino'),
            (13, 'Angeles', 'Leslie', 'Silva', 
            'Manrique', '0883478263', '2000/04/29', 3, 7, 
            'Femenino'),
            (14, 'Jennifer', 'Lucia', 'Solorzano', 
            'Gonza', '1775343253', '1998/02/18', 9, 9, 
            'Femenino');
            --seleccionar unicamente la cedula los ombres y los apellidos
              select cedula, primerNombre, segundoNombre, primerApellido, segundoApellido from estudiante 




