USE SPRINGFIELD;

SELECT PER.ID_PERSONAJE
, PER.DESC_PERSONAJE
, PER.ID_FAMILIA
, IFNULL(FAM.DESC_FAMILIA,'DESCONOCIDO') DESC_FAMILIA
, PER.ID_SEXO
, SEXO.DESC_SEXO
, PER.ID_MATRIMONIO
, MAT.DESC_MATRIMONIO
, PER.ID_LUGAR_RESIDENCIA
, PER.ID_PROFESION
, PER.ID_LUGAR_PROFESION
FROM PERSONAJES PER
INNER JOIN SEXO SEXO ON PER.ID_SEXO=SEXO.ID_SEXO
LEFT OUTER JOIN FAMILIAS FAM ON PER.ID_FAMILIA=FAM.ID_FAMILIA
INNER JOIN MATRIMONIOS MAT ON PER.ID_MATRIMONIO=MAT.ID_MATRIMONIO
;


SELECT ID_MATRIMONIO, COUNT(*) TOTAL
FROM PERSONAJES
WHERE ID_MATRIMONIO IS NOT NULL
GROUP BY ID_MATRIMONIO;

SELECT *
FROM PERSONAJES
WHERE ID_MATRIMONIO=4
;

/*Se ha encontrado un error en la entrada de registros de la base de datos en dos matrimonios,
hay que corregirlo.
Con la codinción LIKE se busca cualquier caracter antes y después del % y con guión bajo _ cualquier caracter.*/

SELECT *
FROM MATRIMONIOS
WHERE DESC_MATRIMONIO LIKE '%PRINCE%'
ORDER BY ID_MATRIMONIO
;

/*Corregimos el error.*/

UPDATE MATRIMONIOS SET DESC_MATRIMONIO='MARTIN & MARTHA PRINCE' WHERE ID_MATRIMONIO=10;

SELECT *
FROM MATRIMONIOS
ORDER BY ID_MATRIMONIO;

/*Corregimos en las dos tablas*/

UDPDATE PERSONAJES SET ID_MATRIMONIO=10 WHERE ID_PERSONAJE IN(42,44);
COMMIT;

SELECT *
FROM PERSONAJES
WHERE ID_MATRIMONIO=4;

/*Hacemos LEFT OUTER JOIN de MATRIMONOS, LUGAR_RESIDENCIA, PROFESION y LUGAR_PROFESION*/

SELECT PER.ID_PERSONAJE
, PER.DESC_PERSONAJE
, PER.ID_FAMILIA
, IFNULL(FAM.DESC_FAMILIA,'DESCONOCIDO') DESC_FAMILIA
, PER.ID_SEXO
, SEXO.DESC_SEXO
, PER.ID_MATRIMONIO
, MAT.DESC_MATRIMONIO
, PER.ID_LUGAR_RESIDENCIA
, LUG1.DESC_LUGAR DESC_LUGAR_RESIDENCIA
, PER.ID_PROFESION
, PROF.DESC_PROFESION
, PER.ID_LUGAR_PROFESION
, LUG2.DESC_LUGAR DESC_LUGAR_PROFESION
FROM PERSONAJES PER
INNER JOIN SEXO SEXO ON PER.ID_SEXO=SEXO.ID_SEXO
LEFT OUTER JOIN FAMILIAS FAM ON PER.ID_FAMILIA=FAM.ID_FAMILIA
LEFT OUTER JOIN MATRIMONIOS MAT ON PER.ID_MATRIMONIO=MAT.ID_MATRIMONIO
LEFT OUTER JOIN LUGARES LUG1 ON PER.ID_LUGAR_RESIDENCIA=LUG1.ID_LUGAR
LEFT OUTER JOIN PROFESIONES PROF ON PER.ID_PROFESION=PROF.ID_PROFESION
LEFT OUTER JOIN LUGARES LUG2 ON PER.ID_LUGAR_PROFESION=LUG2.ID_LUGAR
;

/*Creamos una vista (normalmente se crean empezando por VW_ de view)*/

CREATE VIEW VW_PERSONAJES AS
SELECT PER.ID_PERSONAJE
, PER.DESC_PERSONAJE
, PER.ID_FAMILIA
, IFNULL(FAM.DESC_FAMILIA,'DESCONOCIDO') DESC_FAMILIA
, PER.ID_SEXO
, SEXO.DESC_SEXO
, PER.ID_MATRIMONIO
, MAT.DESC_MATRIMONIO
, PER.ID_LUGAR_RESIDENCIA
, LUG1.DESC_LUGAR DESC_LUGAR_RESIDENCIA
, PER.ID_PROFESION
, PROF.DESC_PROFESION
, PER.ID_LUGAR_PROFESION
, LUG2.DESC_LUGAR DESC_LUGAR_PROFESION
FROM PERSONAJES PER
INNER JOIN SEXO SEXO ON PER.ID_SEXO=SEXO.ID_SEXO
LEFT OUTER JOIN FAMILIAS FAM ON PER.ID_FAMILIA=FAM.ID_FAMILIA
LEFT OUTER JOIN MATRIMONIOS MAT ON PER.ID_MATRIMONIO=MAT.ID_MATRIMONIO
LEFT OUTER JOIN LUGARES LUG1 ON PER.ID_LUGAR_RESIDENCIA=LUG1.ID_LUGAR
LEFT OUTER JOIN PROFESIONES PROF ON PER.ID_PROFESION=PROF.ID_PROFESION
LEFT OUTER JOIN LUGARES LUG2 ON PER.ID_LUGAR_PROFESION=LUG2.ID_LUGAR
;