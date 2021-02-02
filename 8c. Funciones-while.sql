USE SPRINGFIELD;

DROP FUNCTION IF EXISTS cuenta_atras;

DELIMITER $$

CREATE FUNCTION cuenta_atras(n INT)
	RETURNS INT
    
    BEGIN
		DECLARE i INT;
        SET i=n;
        label1: WHILE i>0 DO
			SET i=i-1;
		END WHILE label1;
        
        RETURN i;
	END;$$
    
DELIMITER ;

SELECT cuenta_atras(10);