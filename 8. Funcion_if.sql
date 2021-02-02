USE SPRINGFIELD;

DROP FUNCTION IF EXISTS comparar_numeros;

DELIMITER $$
CREATE FUNCTION comparar_numeros(n INT, m INT)
	RETURNS VARCHAR(20)
    
    BEGIN
		DECLARE s VARCHAR(20);
        
        IF n>m THEN SET s='>';
        ELSEIF n=m THEN SET s='=';
        ELSE SET s='<';
        END IF;
        
        SET s=CONCAT(n,' ',s,' ',m);
        
        RETURN s;   
    
    END;$$
    
DELIMITER ;

SELECT comparar_numeros(2,5);