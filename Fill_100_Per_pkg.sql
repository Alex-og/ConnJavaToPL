CREATE OR REPLACE PACKAGE FOR_TEST AS

  /* TODO enter package declarations (types, exceptions, methods etc) here */
  PROCEDURE FILL_100_PERSONS;
 
END FOR_TEST;

/


CREATE OR REPLACE PACKAGE BODY FOR_TEST AS



PROCEDURE FILL_100_PERSONS  AS

p_id firsttable.id% TYPE;
p_name firsttable.name%type;
p_adress firsttable.adress%type;

BEGIN
p_id := 1;
p_name := 'name';
p_adress := 'adress';

FOR conter IN 1..100 LOOP  

INSERT INTO firsttable
(
id, name, adress
)VALUES
(
p_id, p_name||p_id, p_adress||p_id
);
p_id := p_id + 1;
COMMIT;
END LOOP;
COMMIT;
END FILL_100_PERSONS;

END FOR_TEST;

/
