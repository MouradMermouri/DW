/* util1 tous les droits*/

GRANT ALL PRIVILEGES ON gescom_afpa.*
TO 'util1'@'localhost' 
IDENTIFIED BY ''

/*-------------------*/

/* util2 ne peut que sélectionner les informations dans gescom_afpa*/

CREATE USER util2
GRANT select 
ON gescom_afpa.*
TO 'util2'@'localhost' 
IDENTIFIED BY ''

/*-------------------*/

/* util2 ne peut que sélectionner les informations dans gescom_afpa.suppliers*/

CREATE USER util3
GRANT SELECT, INSERT, UPDATE 
ON gescom_afpa.suppliers
TO 'util2'@'localhost' 
IDENTIFIED BY ''

/*-------------------*/
