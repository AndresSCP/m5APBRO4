/*CREAR DATABASE M5_ABPRO_4;*/
DROP DATABASE IF EXISTS M5_ABPRO_4;
CREATE DATABASE M5_ABPRO_4;

/*USAR TABLA M5_ABPRO_4*/
USE M5_ABPRO_4;

CREATE TABLE Cliente(
		rutcliente INT NOT NULL,
        clinombres VARCHAR(30) NOT NULL,
		cliapellidos VARCHAR(50) NOT NULL,
        clitelefono VARCHAR(20) NOT NULL,
        cliafp	VARCHAR(30) NULL,
        clisistemasalud INT NULL,
        clidireccion VARCHAR(100) NOT NULL,
		clicomuna VARCHAR(50) NOT NULL,
        cliedad INT NOT NULL
);

ALTER TABLE Cliente
ADD CONSTRAINT Cliente_PK PRIMARY KEY(rutcliente);

CREATE TABLE Capacitacion(
  `idcapacitacion` int NOT NULL,
  `capfecha` varchar(25) NOT NULL,
  `caphora` time DEFAULT NULL,
  `caplugar` varchar(100) NOT NULL,
  `capduracion` int DEFAULT NULL,
  `Cliente_rutcliente` int NOT NULL,
  `capNombre` varchar(100) DEFAULT NULL,
  `capAsistentes` int DEFAULT NULL,
  PRIMARY KEY (`idcapacitacion`)
);

ALTER TABLE `Capacitacion` MODIFY `idcapacitacion` int NOT NULL AUTO_INCREMENT;

/*ALTER TABLE Capacitacion 
ADD CONSTRAINT Capacitacion_PK PRIMARY KEY (idcapacitacion);*/

CREATE TABLE Asistentes(
		idasistente INT NOT NULL,
        asistnombrecompleto VARCHAR(100) NOT NULL,
        asistedad INT NOT NULL,
        asistcorreo VARCHAR(70) NULL,
        asisttelefono VARCHAR(20) NULL,
        Capacitacion_idcapacitacion INT NOT NULL
);

ALTER TABLE Asistentes
ADD CONSTRAINT Asistentes_PK PRIMARY KEY (idasistente);

ALTER TABLE `Asistentes` MODIFY `idasistente` int NOT NULL AUTO_INCREMENT;

CREATE TABLE Accidente(
		idaccidente INT NOT NULL,
        accifecha DATE NOT NULL,
        accihora TIME NOT NULL,
		accilugar VARCHAR(150) NOT NULL,
        acciorigen VARCHAR(100) NOT NULL,
        acciconsecuencias VARCHAR(100) NULL,
        Cliente_rutcliente INT NOT NULL
);


ALTER TABLE Accidente
ADD CONSTRAINT Accidente_PK PRIMARY KEY (idaccidente);

ALTER TABLE `Accidente` MODIFY `idaccidente` int NOT NULL AUTO_INCREMENT;

CREATE TABLE Visita(
		idvisita INT NOT NULL,
        visfecha DATE NOT NULL,
        vishora TIME NULL,
        vislugar VARCHAR(50) NOT NULL,
        viscomentarios VARCHAR(250) NOT NULL,
        Cliente_rutcliente INT NOT NULL
);

ALTER TABLE Visita
ADD CONSTRAINT Visita_PK PRIMARY KEY (idvisita);

ALTER TABLE `Visita` MODIFY `idvisita` int NOT NULL AUTO_INCREMENT;

/*LLAVE FORANEA*/

/*ALTER TABLE Capacitacion
ADD CONSTRAINT Capacitacion_clientes_fk FOREIGN KEY (Cliente_rutcliente)
REFERENCES Cliente (rutcliente);

ALTER TABLE Accidente
ADD CONSTRAINT Accidente_Capacitacion_fk FOREIGN KEY (Cliente_rutcliente)
REFERENCES Cliente (rutcliente);

ALTER TABLE Asistentes
ADD CONSTRAINT Asistentes_Capacitacion_fk FOREIGN KEY (Capacitacion_idcapacitacion)
REFERENCES Capacitacion (idcapacitacion);

ALTER TABLE Visita
ADD CONSTRAINT Visita_Cliente_FK FOREIGN KEY (Cliente_rutcliente)
REFERENCES Cliente (rutcliente);*/

/*Tablas ABRPO_8*/

/*TABLA CHEQUEOS*/

CREATE TABLE chequeos(
	id INT NOT NULL,
    nombre VARCHAR(50) NULL
);

ALTER TABLE chequeos
ADD CONSTRAINT chequeos_PK PRIMARY KEY (id),
MODIFY id INT NOT NULL AUTO_INCREMENT;

/*MODIFICACION TABLA VISTAS*/

ALTER TABLE Visita
ADD COLUMN idChequeo INT NOT NULL;

/*ALTER TABLE Visita
ADD CONSTRAINT visita_checkeo_FK
FOREIGN KEY (idChequeo) REFERENCES chequeos(id);*/

/* CREACION TABLA RESULTADOCHEQUEOS*/

CREATE TABLE resultadochequeos(
	chequeos_id INT NOT NULL,
    resultadochequeos ENUM("CUMPLE","C/OBSERVACIONES","NO CUMPLE") NOT NULL
);

/*ALTER TABLE resultadochequeos
ADD CONSTRAINT chequeos_resultadochequeos_FK
FOREIGN KEY (chequeos_id) REFERENCES chequeos(id);*/

/*CREACION TABLA USUARIOS*/

CREATE TABLE usuarios(
	id INT NOT NULL PRIMARY KEY,
    run INT NOT NULL,
	nombre VARCHAR(20) NULL,
    apellidos VARCHAR(20) NULL,
    fechaNac DATE NOT NULL
);

ALTER TABLE usuarios
ADD COLUMN idUsuario INT NULL;

ALTER TABLE `usuarios` MODIFY `id` int NOT NULL AUTO_INCREMENT;
/*
ALTER TABLE usuarios
ADD CONSTRAINT usuario_cliente_FK
FOREIGN KEY (idUsuario) REFERENCES Cliente(rutCliente);*/

/*CREACION TABLA ADMINISTRATIVOS*/

CREATE TABLE administrativos(
	run INT NOT NULL PRIMARY KEY,
    nombres VARCHAR(45) NULL,
    apellidos VARCHAR(45) NULL,
    email VARCHAR(25) NULL,
    area VARCHAR(25) NULL,
    idUsuario INT NOT NULL
);

/*ALTER TABLE administrativos
ADD CONSTRAINT administrativos_usuario_FK
FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario);*/

/*CREACION TABLA PROFESIONALES*/

CREATE TABLE profesionales(
	rut INT NOT NULL PRIMARY KEY,
    nombres VARCHAR(45) NULL,
    apellidos VARCHAR(45) NULL,
    telefono INT NULL,
    tituloProfesional VARCHAR(30) NULL,
    proyecto VARCHAR(45) NULL,
    idUsuario INT NOT NULL
);

/*ALTER TABLE profesionales
ADD CONSTRAINT profesionales_usuario_FK
FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario);*/

/*TABLA PAGOS*/

CREATE TABLE pagos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pagofecha DATE NOT NULL,
    pagomonto INT NOT NULL,
	pagomes VARCHAR(50) NULL,
    pagoaño VARCHAR(50) NULL
);

ALTER TABLE pagos
ADD COLUMN cliente_rutcliente INT NOT NULL;
/*ADD CONSTRAINT pagos_cliente_FK
FOREIGN KEY (cliente_rutcliente) REFERENCES cliente(rutcliente);*/

/*TABLA ASESORIAS REALIZADAS*/

CREATE TABLE asesoriasRealizadas(
idAsesoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
codigoAsesoria VARCHAR(20) NOT NULL UNIQUE,
fechaRealizacion DATETIME NOT NULL,
motivoAsesoria VARCHAR(45) NOT NULL,
cliente_rutcliente INT NOT NULL,
profesionales_rut INT NOT NULL);

/*ALTER TABLE asesoriasRealizadas
ADD FOREIGN KEY (profesionales_rut) REFERENCES profesionales(rut),
ADD FOREIGN KEY (cliente_rutcliente) REFERENCES cliente(rutcliente);*/

/*TABLA ASESORIAS REALIZADAS*/

CREATE TABLE actividades(
	idactividad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL,
    descripcion VARCHAR(100) NULL,
    duracion INT NOT NULL
    
);

ALTER TABLE actividades
ADD COLUMN asesorias_idAsesoria INT NOT NULL;

/*ALTER TABLE actividades
ADD COLUMN asesorias_idAsesoria INT NOT NULL
ADD CONSTRAINT actividades_idAsesoria_FK
FOREIGN KEY (asesorias_idAsesoria) REFERENCES asesoriasRealizadas(idAsesoria);*/

/*consultas de inserción de registros*/

INSERT INTO cliente VALUES 
(1234,'gonzalo','ordonez','9876','prolife',1,'cabildo #99','valparaiso',20),
(2345,'ariel','levo','8765','model',2,'la morga #666','curacavi',24), 
(3456,'mamaro','gomez','7654','white cross',1,'ash ketchum #33','penalolen',48);

INSERT INTO Capacitacion VALUES
(1,'2023-1-09','10:10:00','valparaiso',90,1234,'Full Stack Java 2.0',20),
(2,'2023-1-10', '10:10:00','curacavi',80, 2345,'Desarrollador DevOps',12),
(3, '2023-1-11','10:10:00', 'penalolen',70, 3456,'Full Stack Front-End',3);

INSERT Asistentes VALUES
(1,'gonzalo ordonez',20,'gonzalordonez@yihu.cl','9876',1),
(2, 'ariel levo', 24, 'arielevo@jmeil.cl', '8765',2),
(3,'mamaro gomez',48, 'mamarogomez@jomil.cl', '7654',2);

INSERT INTO Accidente VALUES 
(1,'2023-6-13','10:10:00','valparaiso','valparaisoo','fractura',1234),
(2,'2023-6-13','10:10:00','curacavi','curacavii','luxacion',2345),
(3,'2023-6-13','10:10:00','santiago','santiagoo','desgarro',3456);

INSERT INTO chequeos (nombre) VALUES
('gonzalo ordonez'),
('ariel levo'),
('mamaro gomez');

INSERT INTO Visita VALUES
(1,'2023-6-16','10:10:00','hospital valparaiso', 'buena visita',1234,1),
(2,'2023-6-16','10:10:00','hospital curacavi', 'visita mediocre',2345,2),
(3,'2023-6-16','10:10:00','hospital santiago', 'visita',3456,3);

INSERT INTO resultadochequeos VALUES
(1, "CUMPLE"),
(2,"C/OBSERVACIONES"),
(3, "NO CUMPLE");

INSERT INTO usuarios VALUES 
(1, 1234,'gonzalo','ordonez','1990-01-01',1234),
(2, 2345,'ariel', 'levo', '1990-10-10',2345),
(3, 1234, 'admin', 'Administrador', '1970-05-05',3456);

INSERT INTO administrativos VALUES 
(1234,'gonzalo', 'ordonez','gonzalo.ordonez@yihu.cl', 'lumbar',1234),
(2345, 'ariel', 'levo', 'arielevo@jmeil.cl', 'dermatologica', 2345),
(3456, 'mamaro', 'gomez', 'mamarogomez@jomil.cl', 'cervical',3456);

INSERT INTO profesionales VALUE 
(1234,'gonzalo','ordonez',9876,'obstetra','bom',1234),
(2345,'ariel', 'levo',8765,'cirujano','bom',2345),
(3456,'mamaro','gomez',7654,'dermatologo','BAM',3456);

INSERT INTO pagos (pagofecha, pagomonto, pagomes, pagoaño, cliente_rutcliente) VALUES
('2023-10-10', 200000, 'noviembre','2022',1234),
('2023-07-07', 300000, 'octubre','2022',2345),
('2023-05-05', 400000, 'diciembre','2022',3456);

INSERT INTO asesoriasRealizadas (codigoAsesoria, fechaRealizacion, motivoAsesoria, cliente_rutcliente, profesionales_rut) VALUES
('A0', '2023-01-01', 'mala sesion',1234,1234),
('B1','2023-01-01','dudas',2345,2345),
('C2','2023-01-02','consultas',3456,3456);

INSERT INTO actividades (titulo, descripcion, duracion,asesorias_idAsesoria)  VALUES
('induccion','inducir', 90,1),
('desarrollo','desarrollar',120,2),
('conclusion','concluir',90,3);


select * from capacitacion;










