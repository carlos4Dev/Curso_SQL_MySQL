USE SPRINGFIELD;

ALTER TABLE LUGARES MODIFY ID_LUGAR INT(11);

ALTER TABLE PERSONAJES
ADD FOREIGN KEY fk_lug_pers(ID_LUGAR_RESIDENCIA)
REFERENCES LUGARES(ID_LUGAR);

ALTER TABLE PERSONAJES
ADD FOREIGN KEY fk_lugp_pers(ID_LUGAR_PROFESION)
REFERENCES LUGARES(ID_LUGAR);

ALTER TABLE PROFESIONES MODIFY ID_PROFESION INT(11);

ALTER TABLE PERSONAJES
ADD FOREIGN KEY fk_prof_pers(ID_PROFESION)
REFERENCES PROFESIONES(ID_PROFESION);

ALTER TABLE SEXO MODIFY ID_SEXO INT(11);

ALTER TABLE PERSONAJES
ADD FOREIGN KEY fk_sexo_pers(ID_SEXO)
REFERENCES SEXO(ID_SEXO);

ALTER TABLE FAMILIAS MODIFY ID_FAMILIA INT(11);

ALTER TABLE PERSONAJES
ADD FOREIGN KEY fk_fam_pers(ID_FAMILIA)
REFERENCES FAMILIAS(ID_FAMILIA);

ALTER TABLE MASCOTAS MODIFY ID_FAMILIA INT(11);

ALTER TABLE MASCOTAS
ADD FOREIGN KEY fk_masc_fam(ID_FAMILIA)
REFERENCES FAMILIAS(ID_FAMILIA);

ALTER TABLE CIUDADES MODIFY ID_CIUDAD INT(11);

ALTER TABLE LUGARES
ADD FOREIGN KEY fk_ciu_lug(ID_CIUDAD)
REFERENCES CIUDADES(ID_CIUDAD);