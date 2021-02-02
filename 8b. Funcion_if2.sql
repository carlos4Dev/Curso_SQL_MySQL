USE SPRINGFIELD;

DROP FUNCTION IF EXISTS comparar_numeros2;

DELIMITER $$

CREATE FUNCTION comparar_numeros2(n INT, m INT)
	RETURNS VARCHAR(50)
    
    BEGIN
		DECLARE s VARCHAR(50);
        
        IF n=m THEN SET s='iguales';
        ELSE
			IF n>m THEN SET s='mayor que';
            ELSE SET s='menor que';
            END IF;
            
            SET s=CONCAT('es ',s);
		END IF;
	
        SET s=CONCAT(n, ' ', s, ' ',m);
        
        RETURN s;
	END;$$

DELIMITER ;

SELECT comparar_numeros2(4,2);
        
        
        
        
        