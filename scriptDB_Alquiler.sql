/*listar dases de datos del servidor*/
SHOW DATABASES;

/* ELIMINAR LA BASE DE DATOS BDALQUILER*/
DROP DATABASE dbalquiler;
/*crear nuestra base de datos alquiler teniendo en cuenbtra la configuracion*/
CREATE DATABASE dbAlquiler
DEFAULT CHARACTER SET utf8;

/*Poner en uso la base de datos*/
USE dbAlquiler;
/*Verificar la bas e dedatos este en uso*/
SELECT DATABASE();

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