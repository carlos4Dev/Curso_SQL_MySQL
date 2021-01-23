USE SPRINGFIELD;

/*Creamos tabla auxiliar para añadir profesiones, otra forma de rellenar campos.*/

CREATE TABLE AUX_PROFESIONES (DESCRIPCION VARCHAR(255));

INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('EMPRESARIO');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('INSPECTOR DE SEGURIDAD');
INSERT INTO AUX_PROFESIONES VALUES ('FUNCIONARIO DE TRAFICO');
INSERT INTO AUX_PROFESIONES VALUES ('FUNCIONARIO DE TRAFICO');
INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('EMPRESARIO');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('JEFE DE POLICIA');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('EMPRESARIO');
INSERT INTO AUX_PROFESIONES VALUES ('ENCARGADO');
INSERT INTO AUX_PROFESIONES VALUES ('ADMINISTRATIVO');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('EMPRESARIO');
INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('ENCARGADO');
INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('STRIPPER');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('ESPECTÁCULO DE CIRCO');
INSERT INTO AUX_PROFESIONES VALUES ('DIRECTOR');
INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('SARGENTO');
INSERT INTO AUX_PROFESIONES VALUES ('SOLDADO');
INSERT INTO AUX_PROFESIONES VALUES ('REVERENDO');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('SAXOFONISTA');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('MEDICO');
INSERT INTO AUX_PROFESIONES VALUES ('CORREDOR DE ACCIONES');
INSERT INTO AUX_PROFESIONES VALUES ('ESTUDIANTE');
INSERT INTO AUX_PROFESIONES VALUES ('AMA DE CASA');
INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('PROFESOR');
INSERT INTO AUX_PROFESIONES VALUES ('EMPRESARIO');
INSERT INTO AUX_PROFESIONES VALUES ('CAPO DE LA MAFIA');
INSERT INTO AUX_PROFESIONES VALUES ('PRESENTADOR DE TV');
INSERT INTO AUX_PROFESIONES VALUES ('ASISTENTE PERSONAL');
INSERT INTO AUX_PROFESIONES VALUES ('PILOTO DE HELICOPTEROS');
INSERT INTO AUX_PROFESIONES VALUES ('POLICIA');
INSERT INTO AUX_PROFESIONES VALUES ('POLICIA');
INSERT INTO AUX_PROFESIONES VALUES ('INSPECTOR DE SEGURIDAD');
INSERT INTO AUX_PROFESIONES VALUES ('SUPERVISOR DE INSPECTORES DE SEGURIDAD');
INSERT INTO AUX_PROFESIONES VALUES ('INGENIERA');
INSERT INTO AUX_PROFESIONES VALUES ('ACTOR SECUNDARIO');
INSERT INTO AUX_PROFESIONES VALUES ('LADRON');
INSERT INTO AUX_PROFESIONES VALUES ('LIMPIADOR');
INSERT INTO AUX_PROFESIONES VALUES ('BAILARIN');
INSERT INTO AUX_PROFESIONES VALUES ('ACTOR');
INSERT INTO AUX_PROFESIONES VALUES ('MASCOTA OFICIAL');
INSERT INTO AUX_PROFESIONES VALUES ('ACTOR SECUNDARIO');
INSERT INTO AUX_PROFESIONES VALUES ('ENCARGADO');
INSERT INTO AUX_PROFESIONES VALUES ('ABOGADO');
INSERT INTO AUX_PROFESIONES VALUES ('PRESENTADOR');
INSERT INTO AUX_PROFESIONES VALUES ('CHICA DEL TIEMPO');
INSERT INTO AUX_PROFESIONES VALUES ('ACTOR');
INSERT INTO AUX_PROFESIONES VALUES ('PSIQUIATRA');
INSERT INTO AUX_PROFESIONES VALUES ('JUBILADO');
INSERT INTO AUX_PROFESIONES VALUES ('ALCALDE');


COMMIT;

SELECT * FROM AUX_PROFESIONES;

Para contar el total de registros y el total diferentes.

SELECT COUNT(*) TOTAL, COUNT(DISTINCT DESCRIPCION) TOTAL_DIFERENTES FROM AUX_PROFESIONES;

Insertamos en la tabla PROFESIONES las distintas profesiones de la tabla auxiliar.

INSERT INTO PROFESIONES (DESC_PROFESION, FECHA_INSERT, FECHA_MODIFICACION)
SELECT DISTINCT DESCRIPCION, NOW(), NOW() FROM AUX_PROFESIONES;

COMMIT;

SELECT * FROM PROFESIONES;

/*Después de añadir los registros a PROFESIONES buena práctica eliminar tabla auxiliar.*/

DROP TABLE AUX_PROFESIONES;










