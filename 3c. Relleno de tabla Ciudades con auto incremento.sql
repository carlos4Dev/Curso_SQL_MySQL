USE SPRINGFIELD;

/*Usando el auto incremento para ID_CIUDAD al hacer el INSERT omitimos el campo C*/

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("SPRINGFIELD",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("SHELBYVILLE",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("CAPITAL CITY",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("CYPRESS CREEK",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("BRONSON, MISSOURI",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("HUMBLETON, PENNSYLVANIA",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("BROCKWAY",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("OGDENVILLE",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("BARNACLE BAY",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("NORTH HAVENBROOK",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("TERROR LAKE",NOW(),NOW());
COMMIT;

INSERT INTO CIUDADES (DESC_CIUDAD, FECHA_INSERT,FECHA_MODIFICACION) VALUES ("DETROIT",NOW(),NOW());
COMMIT;

SELECT * FROM CIUDADES