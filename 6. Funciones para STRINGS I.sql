USE SPRINGFIELD;

/* CHAR_LENGTH(), CHARACTER_LENGTH(), LENGTH()
Medir la longitud de una cadena.*/

SELECT DESC_PERSONAJE
, CHAR_LENGTH(DESC_PERSONAJE) LONG_PERSONAJE1
, CHARACTER_LENGTH(DESC_PERSONAJE) LONG_PERSONAJE2
, LENGTH(DESC_PERSONAJE) LONG_PERSONAJE3
FROM PERSONAJES
;

/* LCASE() LOWER()
Devolver el nombre de los personajes en minúsculas.*/

SELECT DESC_PERSONAJE
, LCASE(DESC_PERSONAJE) DESC_PERSONAJE2
, LOWER(DESC_PERSONAJE) DESC_PERSONAJE3
FROM PERSONAJES
;

/* UCASE() UPPER()
Devolver la frase en mayúsculas.
*/

SELECT DESC_FRASE
, UCASE(DESC_FRASE) DESC_FRASE2
, UPPER(DESC_FRASE) DESC_FRASE3
FROM FRASES
;

/*Mostrar la cadena buscada x veces. El registro 34 contienen 12 veces la palabra pato.
En la frase2 al indicar pato espacio, el último espacio también lo cuenta y la longitud es 1 caracter más.
En la frase3 al indicar otro espacio por delante, la longitud es 2 caracteres más.
En la frase4 con CONCAT_WS, se unen por whitespace y la longitud sería la misma que en la primera frase.
Lo normal es que no se quieran contar los espacios en blanco de las cadenas.*/

SELECT DESC_FRASE
, REPEAT('pato ', 12) DESC_FRASE2
, CONCAT(' ',REPEAT('pato ',12)) DESC_FRASE3
, CONCAT_WS(' ',REPEAT('pato ',12)) DESC_FRASE4
, LENGTH(DESC_FRASE) LONG_FRASE
, LENGTH(REPEAT('pato ', 12)) LONG_FRASE2
, LENGTH(CONCAT(' ',REPEAT('pato ',12))) LONG_FRASE3
, LENGTH(CONCAT_WS(' ',REPEAT('pato ',12))) LONG_FRASE4 
FROM FRASES
WHERE ID_FRASE=34;

/* Para no contar los espacios se utilizan los comandos
RTRIM() quitar espacios a la derecha
LTRIM() quitar espacios a la izquierda
TRIM() quita los espacios de la derecha y de la izquierda.*/

SELECT DESC_FRASE
, RTRIM(REPEAT('pato ', 12)) DESC_FRASE2
, LTRIM(RTRIM(CONCAT(' ',REPEAT('pato ',12)))) DESC_FRASE3
, LENGTH(DESC_FRASE) LONG_FRASE
, LENGTH(RTRIM(REPEAT('pato ', 12))) LONG_FRASE2
, LENGTH(LTRIM(RTRIM(CONCAT(' ',REPEAT('pato ',12)))) ) LONG_FRASE3
FROM FRASES
WHERE ID_FRASE=34;

/*La tabla DUAL es como una tabla invisible, comodín, (es una tabla vacía, únicamente contiene fecha actual,
para utilizar cuando no se quieren realizar consultas sobre una base de datos.
En MySQL se puede utilizar sin poner DUAL, en otros motores puede ser obligatorio.

SELECT CONCAT_WS(',','Hola','hola','vecinitos!') FROM DUAL; 
SELECT CONCAT_WS(',','Hola','hola','vecinitos!');*/

/* INSTR() LOCATE() POSITION()
Mostrar la posición dónde aparece un determinado carácter.*/

SELECT PER.DESC_PERSONAJE
, INSTR(PER.DESC_PERSONAJE,' ') POS_ESPACIO
, LOCATE(' ', DESC_PERSONAJE) POS_ESPACIO2
, LOCATE(' ', DESC_PERSONAJE, 5) POS_ESPACIO3 /*A partir de la posición indicada. Devuelve posición desde el inicio.*/
, POSITION(' ' IN DESC_PERSONAJE) POS_ESPACIO4
FROM PERSONAJES PER
;
