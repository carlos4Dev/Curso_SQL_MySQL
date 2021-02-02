USE SPRINGFIELD;

DROP FUNCTION IF EXISTS cuenta_adelante;

DELIMITER $$

CREATE FUNCTION cuenta_adelante(n INT)
	RETURNS int
    
    BEGIN
		DECLARE i INT;
        
        SET i=0;
        
        label1: LOOP
			SET i=i+n;
            IF i<3000 THEN
				ITERATE label1;
			END IF;
            LEAVE label1;
		END LOOP label1;
        
        RETURN i;
	END;$$
    
DELIMITER ;

SELECT cuenta_adelante(357);