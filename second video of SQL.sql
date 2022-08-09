-- Update
CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(50) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) values ('pedro','21','pedro@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla','23','Layla@gmail.com');
INSERT INTO user (name, edad, email) values ('jentx','20','jentx@gmail.com');
INSERT INTO user (name, edad, email) values ('Oscar','22','Oscar@gmail.com');

SELECT * FROM user;
SELECT * FROM user limit 1; -- limit indica el limite a devolver el registro a encontrar
SELECT * FROM user where edad >= 22; -- para buscar registros con usarios mayor a 22 años.
SELECT * FROM user where edad >= 22 and email = 'Layla@gmail.com'; -- para buscar usuarios con mayor a 22 años y buscar el email especifico.
SELECT * FROM user where edad >= 22 or email = 'Layla@gmail.com'; -- es lo mismo que arriba solo que en este caso se utiliza la condicion ´o´ osea es una cosa o la otra.
SELECT * FROM user where email != 'Layla@gmail.com'; -- va a mostrar todos los que sean distintos a Layla@gmail.com.
SELECT * FROM user where edad between 20 and 22; -- mostrar los usuarios entre 20 y 22
SELECT * FROM user where email like '%gmail%'; -- Buca dentro del campo, la cadena donde dice gmail y los porcentajes es para decir que le da lo mismo el inicio y el final. 
SELECT * FROM user where email like 'pedro%';
SELECT * FROM user order by edad asc; -- ordenar de manera ascendente.
SELECT * FROM user order by edad desc; -- lo mismo que el de arriba pero por orden descendente.
SELECT min(edad) as edad_menor from user; -- Buscar la minima edad.
SELECT max(edad) as edad_mayor from user; -- Buscar la maxima edad.\

-- alternativa donde seleccionamos las columnas que solo utilizaremos.

SELECT id, name from user;


-- Utilizaremos un alias.
select id, name as nombre from user;
