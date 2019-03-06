CREATE OR REPLACE FUNCTION from get_default_owner() RETURN void AS $$
    IF (select count(*) from "user" where username = 'Default Owner' == 0) THEN
        INSERT INTO "user"
        VALUES (nextval('id_generator'), 'Default Owner', SYSDATE)
    ENDIF
$$ LANGUAGE SQL;