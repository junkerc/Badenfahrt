# Skriptname insert_roles.sql 
#
# Ausgabe der Stati für automatisches laden mit:
#   mysql < insert_roles.sql  
# 
# Autor: Egger, Junker, Vogelbacher
# 
#START insert_roles.sql

SELECT '-- Starte mit Script --' AS ' ';

SELECT '-- Falls keine Datengefüllt werden, bitte prüfen ob es Datenbank gibt' AS ' ';

#Zeige ob es Datenbank gibt
SELECT IF(EXISTS (SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'badenfahrt'), 
	'OK: Datenbank existiert!',
	'FEHLER: Datenbank Existiert nicht!') AS ' '; 

#Wähle Datenbank
USE badenfahrt;

SELECT '-- Leere Rollen --' AS ' ';

DELETE FROM role;

SELECT '-- Schreibe Rollen --' AS ' ';

INSERT INTO role 
    (id, parent_id, role_id) 
VALUES
    (1, NULL, 'guest'),
    (2, NULL, 'registered'),
    (3, NULL, 'user'),
    (4, 3, 'administrator');

SHOW WARNINGS;

#Daten speichern
COMMIT;

SELECT '-- Fertig mit Script --' AS ' ';

#END insert_roles.sql
