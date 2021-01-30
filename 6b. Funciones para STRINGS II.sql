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

/* INSTR(), SUBSTR(), SUBSTRING_INDEX()
Mostrar el contenido, a partir de un carácter indicado.*/

SELECT DESC_PERSONAJE
, INSTR(DESC_PERSONAJE, ' ') POS_ESPACIO
, SUBSTR(DESC_PERSONAJE, INSTR(DESC_PERSONAJE, ' ')) DESC_PERSONAJE2 /*A partir del espacio incluido.*/
, SUBSTR(DESC_PERSONAJE, INSTR(DESC_PERSONAJE, ' ')+1) DESC_PERSONAJE3 /*Al poner +1 no se muestra el espacio.*/
, SUBSTRING_INDEX(DESC_PERSONAJE,' ',1)DESC_PERSONAJE4 /*Función propia MySQL,contenido hasta la primera aparición de lo indicado (Nombre).*/
, SUBSTRING_INDEX(DESC_PERSONAJE,' ',-1)DESC_PERSONAJE5 /*Desde el final hasta la primera aparecición (Apellido)*/
FROM PERSONAJES
;

SELECT DESC_FRASE
, SUBSTRING_INDEX(DESC_FRASE,'...',1) DESC_FRASE2
, SUBSTRING_INDEX(DESC_FRASE,'...',2) DESC_FRASE3
FROM FRASES
WHERE ID_FRASE=2;

SELECT DESC_PERSONAJE
, LEFT(DESC_PERSONAJE, 1) DESC_PERSONAJE2
, LEFT(DESC_PERSONAJE, 10) DESC_PERSONAJE2B
, LEFT(DESC_PERSONAJE, 100) DESC_PERSONAJE2C
, LENGTH(LEFT(DESC_PERSONAJE, 100)) LON_PESONAJE2C
, RIGHT(DESC_PERSONAJE, 1) DESC_PERSONAJE2
, RIGHT(DESC_PERSONAJE, 10) DESC_PERSONAJE2B
, RIGHT(DESC_PERSONAJE, 100) DESC_PERSONAJE2C
, LENGTH(RIGHT(DESC_PERSONAJE, 100)) LON_PESONAJE2C
FROM PERSONAJES
;

/* INSERT()
Sustituir determinados valores de una cadena por otro valor.*/

SELECT INSERT('SPRINGFIELD',1,6,'SUMMER') CADENA;

SELECT INSERT('SPRINGFIELD',1,6,'KC') CADENA;

SELECT INSERT('SPRINGFIELD',5,6,'KC') CADENA;

/* STRCMP
Comparar dos cadenas*/

SELECT STRCMP('SPRINGFIELD','SPRINGFIELD') COMPARACION1 /*Devuelve 0 si son iguales.*/
, STRCMP('SPRINGFIELD','SIMPSON') COMPARACION2 /*Devuelve 1 si la primera es más larga que la segudna.*/
, STRCMP('SIMPSON','SPRINGFIELD') COMPARACION3 /*Devuelve -1 si la segunda es más larga que la primera.*/
;

/* ASCII()
Mostrar código ASCII.*/

SELECT ASCII('S') ASCII_S
, ASCII('s') ASCII_s
, ASCII('SPRINGFIELD') ASCII_SPRINGFIELD
, ASCII('S3') ASCII_S3
;

/* FIELD() FIND_IN_SET()
Devolver la posición de una cadena dentro de una subcadena.*/

SELECT FIELD('HOMER','BART','MAGGIE','LISA','HOMER','MARGE') BUS1 /*Devuelve 4, la posición de la cadena HOMER*/
, FIELD('Homer','BART','MAGGIE','LISA','HOMER','MARGE') BUS2
, FIELD('HOMER','BART','MAGGIE','LISA','MARGE') BUS3
, FIELD('HOMER', null) BUS4 (Devuelve 0)
;

SELECT FIND_IN_SET('HOMER','BART,MAGGIE,LISA,HOMER,MARGE') BUS1 /*Devuelve 4, la posición de la cadena HOMER*/
, FIND_IN_SET('Homer','BART,MAGGIE,LISA,HOMER,MARGE') BUS2
, FIND_IN_SET('HOMER','BART,MAGGIE,LISA,MARGE') BUS3
, FIND_IN_SET('HOMER', null) BUS4 (Devuelve cadena vacía)
;