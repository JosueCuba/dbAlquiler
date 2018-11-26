/*listar dases de datos del servidor*/
SHOW DATABASES;

/* ELIMINAR LA BASE DE DATOS BDALQUILER*/
DROP DATABASE dbalquiler;
/*crear nuestra base de datos alquiler teniendo en cuenbtra la configuracion*/
CREATE DATABASE dbAlquiler
DEFAULT CHARACTER
SET utf8;

/*Poner en uso la base de datos*/
USE dbAlquiler;
/*Verificar la bas e dedatos este en uso*/
SELECT DATABASES();

 /*Mostrar tablas*/
 SHOW TABLE;

/*Crear la tabla persona*/
CREATE TABLE PERSONA
(
    CODPER INT,
    NOMPER VARCHAR(100),
    APEPATPER VARCHAR(100),
    APEMATPER VARCHAR (100),
    DNIPER VARCHAR(8),
    DIRPER VARCHAR (100),
    UBIGEO_CODUBI CHAR (6),
    TELF1PER CHAR (9),
    TELF2PER CHAR (9),
    SEXOPER CHAR (1),
    TIPOPER CHAR(1),
    USUPER VARCHAR (50),
    PASSPER VARCHAR (50),
    CONSTRAINT CODPER_PK PRIMARY KEY (CODPER)
);

/*Verificar si se a craedo la tabla persona*/
SHOW TABLES;

 /* verificar estuctura de la tabla persona*/
 SHOW COLUMNS IN PERSONA;
 DESCRIBE PERSONA;

/*crear la tabla ubigeo*/
CREATE TABLE UBIGEO
(
    CODUBI CHAR (6),
    DESTUBI VARCHAR (100),
    PROVUBI VARCHAR (100),
    DPTOUBI VARCHAR (100),
    CONSTRAINT CODUBI_PK PRIMARY KEY (CODUBI)
);

/*Verificar que se haya creado la tabla ubigeo*/
SHOW TABLES;

 /* verificar estuctura de la tabla persona*/
 SHOW COLUMNS IN UBIGEO;
 DESCRIBE UBIGEO;

/*crear la tabla VIVENDA*/
CREATE TABLE VIVIENDA
(
    CODVIV INT ,
    DESCVIV VARCHAR (300),
    DIRVIV VARCHAR (150),
    UBIGEO_CODUBI CHAR (6),
    ESTADOVIVIENDA_CODESTVIV INT,
    TIPOVIVIENDA_CODTIPVIV INT,
    CONSTRAINT CODVIV_PK PRIMARY KEY (CODVIV)
);

/*Verificar que se haya creado la tabla ubigeo*/
SHOW TABLES;

 /* verificar estuctura de la tabla persona*/
 SHOW COLUMNS IN VIVIENDA;
 DESCRIBE VIVIENDA;

/*crear la tabla ESTADO_VIVIENDA*/
CREATE TABLE ESTADO_VIVIENDA
(
    CODESTVIV INT,
    DESCESTVIV VARCHAR(50),
    CONSTRAINT CODESTVIV_PK PRIMARY KEY (CODESTVIV)
);

/*crear la tabla TIPO_VIVIENDA*/

CREATE TABLE TIPO_VIVIENDA
(
    CODTIPVIV INT,
    DESCTIPVIV VARCHAR (50),
    CONSTRAINT CODTIPVIV_PK PRIMARY KEY (CODTIPVIV)
);
/*Verificar que se haya creado la tablas*/
SHOW TABLES;

 /* verificar estuctura de la tablaS/
 SHOW COLUMNS IN TIPO_VIVIENDA;
 DESCRIBE TIPO_VIVIENDA;


/*crear la tabla ALQUILER*/
CREATE TABLE ALQUILER(
    CODALQ INT,
    FECINCALQ DATE,
    PERSONA_PROP INT,
    PERSONA_INQ INT,
    CONSTRAINT CODALQ_PK PRIMARY KEY (CODALQ)
);

/*CREAR LA TABLA DETALLE_ALQUILER*/
CREATE TABLE DETALLE_ALQUILER(
    CODDETALQ INT,
    VIVIENDA_CODVIV INT,
    FECINDETALQ DATE,
    COSTDETALQ DECIMAL(8,2),
    ALQUILER_CODALQ INT,
    CONSTRAINT CODDETALQ_PK PRIMARY KEY (CODDETALQ)
);

/*Verificar que se haya creado la tablas*/
SHOW TABLES;

 /* verificar estuctura de la tabla persona*/
 SHOW COLUMNS IN TIPO_VIVIENDA;
 DESCRIBE TIPO_VIVIENDA;


/*relacion entre la tabla persona y la tabla uboigeo*/
ALTER TABLE PERSONA
    ADD CONSTRAINT UBIGEO_PK FOREIGN KEY (UBIGEO_CODUBI)
    REFERENCES UBIGEO (CODUBI);