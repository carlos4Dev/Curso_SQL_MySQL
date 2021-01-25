USE SPRINGFIELD;

/*Mostrar (LIMIT) 10 primeros registros, útil para tablas muy grandes, en este ejemplo no es muy útil.*/

SELECT * 
FROM PERSONAJES
LIMIT 10;

/*Creo dos tablas temporales para insertar los personajes que son hombres y los que son mujeres.*/

CREATE TABLE TMP_PERSONAJES_HOMBRES AS
SELECT *
FROM PERSONAJES
WHERE ID_SEXO=1;

CREATE TABLE TMP_PERSONAJES_MUJERES AS
SELECT *
FROM PERSONAJES
WHERE ID_SEXO=2;

/*Unir las dos tablas (UNION ALL, disconjuntas, no se repiten los registros) en una nueva tabla temporal.*/

CREATE TABLE TMP_PERSONAJES
SELECT *
FROM TMP_PERSONAJES_HOMBRES
UNION ALL
SELECT *
FROM TMP_PERSONAJES_MUJERES;