DROP PROCEDURE IF EXISTS cuenta_adelante2;

DELIMITER $$

CREATE PROCEDURE cuenta_adelante2(n INT)
	BEGIN
		SET @i=0;
        REPEAT
			SET @i=@i+1;
		UNTIL @i>n END REPEAT;
	END;$$
    
DELIMITER ;