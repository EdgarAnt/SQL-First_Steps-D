create database helloWorld; 
show databases;
use helloWorld;
-- CREATE TABLE personas(
	-- id int,
    -- genero varchar(255),
	-- estado varchar(255),
    -- PRIMARY KEY (id)
    
-- );


SHOW CREATE TABLE personas;

CREATE TABLE personas (
  id int NOT NULL AUTO_INCREMENT,
  genero varchar(255) DEFAULT NULL,
  estado varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO personas(genero,estado) VALUES ('Chanchito','feli');
INSERT INTO personas(genero,estado) VALUES ('Pedro','feli');
INSERT INTO personas(genero,estado) VALUES ('Jentx','feli');
INSERT INTO personas(genero,estado) VALUES ('Juan','feli');

SELECT * FROM personas;
SELECT * FROM personas WHERE id=4;
SELECT * FROM personas WHERE estado="feli";
SELECT * FROM personas WHERE genero="Pedro" AND id = 2;

UPDATE personas SET estado="neutro" WHERE id=3;

SELECT *FROM personas;
-- DELETE from personas where estado ='feli'; esta linea de codigo esta mal es necesario usar el id.

-- Error Code: 1175. You are using safe update mode and you tried to update 
-- a table without a WHERE that uses a KEY column.  To disable safe mode, 
-- toggle the option in Preferences -> SQL Editor and reconnect.

DELETE from personas where id=3;
SELECT *FROM personas;

-- UPDATE personas set estado="feli" where genero="pedro"; arroja error 1175 por lo mismo del error anterior necesita el id