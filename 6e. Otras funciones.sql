USE SPRINGFIELD;

/* BIN() 
Convertir en binario*/

SELECT BIN(2), BIN(5), BIN(99);

/*BINARY()
Devuelve el mismo carácter, pero es útil para las comparativas
para distinguir mayúsculas y minúsculas.*/

SELECT BINARY 2, BINARY 5, BINARY 99;

SELECT BINARY 'LOS SIMPSONS'='Los Simpsons';

/* CASE()
*/

SELECT DESC_PERSONAJE
, ID_SEXO
, CASE WHEN ID_SEXO=1 THEN 'HOMBRE'
       WHEN ID_SEXO=2 THEN 'MUJER'
       ELSE 'DESCONOCIDO'
  END DESC_SEXO
FROM PERSONAJES;

/* CAST()
*/

SELECT CAST('1989-12-17' AS DATE), CONVERT('1989-12-17',DATE)
FROM PERSONAJES;

SELECT CAST('1989-12-17 20:30:05.000001' AS DATETIME), CONVERT('1989-12-17 20:30:05.000001',DATETIME)
FROM PERSONAJES;

SELECT CAST(744 AS CHAR), CONVERT(744, CHAR);

/* COALESCE() 
El primero que no sea nulo.*/

SELECT COALESCE(null, null, null, 'HOMMER', 'MARGE');

/* CONV()
*/

SELECT CONV(5,10,2), CONV(101,2,10), CONV(74,10,16), CONV(-74,10,-16);

/* IF()
*/

SELECT IF(50<100,'MENOR','MAYOR');

/* ISNULL()
*/

SELECT DESC_PERSONAJE
, ID_LUGAR_PROFESION
, ISNULL(ID_LUGAR_PROFESION) FLAG_NULO
FROM PERSONAJES;

/* NULLIF()
Devuelve nulo si dos expresiones son iguales.
No distingue mayúsculas de minúsculas.*/

SELECT NULLIF(5,5), NULLIF(3,5), NULLIF(5,3);

SELECT NULLIF('SIMPSONS','simpsons'), NULLIF('SIMPSONS','SIMPSONS');

/* ENCRYPT() MD5()
Para encriptar debe tener mínimo dos carácteres.*/

SELECT ENCRYPT('Simpsons'), ENCRYPT(null), ENCRYPT('Simpsons','1'), ENCRYPT('Simpsons','12');

SELECT MD5('Simpsons'), MD5(null);