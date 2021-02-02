USE SPRINGFIELD;

DROP FUNCTION IF EXISTS personaje_id;

DELIMITER $$

CREATE FUNCTION personaje_id(nombre_personaje VARCHAR(255))
	RETURNS INT
    
    BEGIN
		DECLARE ok VARCHAR(20) DEFAULT FALSE;
        DECLARE personajeID INT DEFAULT 0;
        
        DECLARE c1 CURSOR FOR
			SELECT ID_PERSONAJE
            FROM VW_PERSONAJES
            WHERE DESC_PROFESION='ESTUDIANTE'
            AND DESC_PERSONAJE=nombre_personaje;
            
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET ok=TRUE;
        
        OPEN c1;
        FETCH c1 INTO personajeID;
        CLOSE c1;
        
        RETURN personajeID;
        
	END;$$
    
DELIMITER ;