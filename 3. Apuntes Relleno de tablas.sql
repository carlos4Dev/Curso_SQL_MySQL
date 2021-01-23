USE SPRINGFIELD;

INSERT INTO FAMILIAS VALUES (1, 'SIMPSONS', NOW(), NOW());

/*La diferencia entre usar NOW() y SYSDATE() es de milisegundos.*/

INSERT INTO FAMILIAS VALUES (2, 'BOUVIER', SYSDATE(), SYSDATE());

/*Indicando los campos de la tabla.*/

INSERT INTO FAMILIAS (ID_FAMILIA, DESC_FAMILIA, FECHA_INSERT, FECHA_MODIFICACION) VALUES (3, 'FLANDERS', NOW(), NOW());

/*Se puede omitir cualquier campo que no sea obligatorio, en el siguiente INSERT omitimos el campo FECHA_MODIFICACION.*/

INSERT INTO FAMILIAS (ID_FAMILIA, DESC_FAMILIA, FECHA_INSERT) VALUES (4, 'WIGGUM', NOW());

/*Borrar el registro con ID_FAMILIA=4*/

DELETE FROM FAMILIAS WHERE ID_FAMILIA=4;

/*Borrar todos los registros de una tabla, manteniendo la estructura de la tabla.*/

TRUNCATE TABLE FAMILIAS;

COMMIT;

SELECT * FROM FAMILIAS;







