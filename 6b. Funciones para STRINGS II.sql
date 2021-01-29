USE SPRINGFIELD;

/* LPAD() RPAD() FORMAT()
Transformar un número en cadena.*/

SELECT ID_LUGAR
, LPAD(ID_LUGAR,3,'O') ID_LUGAR2 /*Transforma un número en una cadena con 3 posiciones rellenando con ceros por la izquierda.*/
, RPAD(ID_LUGAR,3,'O') ID_LUGAR3 /*Transforma un número en una cadena con 3 posiciones rellenando con ceros por la derecha.*/
, FORMAT(ID_LUGAR,3) ID_LUGAR4 /*Transforma un número en cadena, añadiendo las cifras decimales que se indiquen.*/
FROM LUGARES
;

SELECT FORMAT(12345.6789, 3) CADENA; /*Transfroma en cadena, mostrando 3 decimales(redondea la última cifra) y el punto de millares.*/

/* SUBSTR() MID()
Extraer una parte determinada de una cadena.*/

SELECT DESC_PERSONAJE
, SUBSTR(DESC_PERSONAJE,5) DESC_PERSONAJE2 /*Muestra desde la posición 5 en adelante.*/
, SUBSTR(DESC_PERSONAJE FROM 5) DESC_PERSONAJE2B
, SUBSTR(DESC_PERSONAJE,1,5) DESC_PERSONAJE3 /*Muestra desde la posición 1 hasta la posición 5.*/
, SUBSTR(DESC_PERSONAJE FROM 1 FOR 5) DESC_PERSONAJE3B
, SUBSTR(DESC_PERSONAJE,-5) DESC_PERSONAJE4 /*Muestra desde la quinta posición contando por el final, hasta el final.*/
, SUBSTR(DESC_PERSONAJE FROM -5) DESC_PERSONAJE4B
FROM PERSONAJES;

SELECT DESC_PERSONAJE
, SUBSTR(DESC_PERSONAJE, -5, 3) DESC_PERSONAJE5 /*Muestra desde la quinta posición contando por el final, 3 caracteres.*/
, SUBSTR(DESC_PERSONAJE FROM -5 FOR 3) DESC_PERSONAJE5B
, MID(DESC_PERSONAJE, -5, 3) DESC_PERSONAJE5C
FROM PERSONAJES;