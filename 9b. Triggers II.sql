USE SPRINGFIELD;

INSERT INTO TMP_PERSONAJES_ENCRIPTADOS(DESC_PERSONAJE)
SELECT DESC_PERSONAJE
FROM PERSONAJES;

COMMIT;

SELECT * FROM TMP_PERSONAJES_ENCRIPTADOS;