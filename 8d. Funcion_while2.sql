USE SPRINGFIELD;

DROP FUNCTION IF EXISTS cuenta_atras2;

DELIMITER $$

CREATE FUNCTION cuenta_atras2(n INT)
	RETURNS INT
    
    BEGIN
		DECLARE i INT;
        DECLARE cont INT;
        SET i=n;
        SET cont=0;
        label1: WHILE i>0 DO
			SET i=i-1;
            SET cont=cont+1;
		END WHILE label1;
        
        RETURN cont;
	END;$$
    
DELIMITER ;

SELECT cuenta_atras2(30);