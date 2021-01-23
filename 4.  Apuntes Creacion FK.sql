USE SPRINGFIELD;

/*Cambiar la longitud de ID_MATRIMONIO en la tabla MATRIMONIOS 
para que tenga la  misma longitud que ID_MATRIMONIO en la tabla PERSONAJES,
por defecto se creo con int(10) en el primer caso y con int(11) en el segundo.*/

ALTER TABLE MATRIMONIOS MODIFY ID_MATRIMONIO INT(11);

/*Añadir Foreign Key en la tabla PERSONAJES*/

ALTER TABLE PERSONAJES
ADD FOREIGN KEY fk_mat_pers(ID_MATRIMONIO)
REFERENCES MATRIMONIOS(ID_MATRIMONIO);