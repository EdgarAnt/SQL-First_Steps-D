create table products (
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null, -- Columna creada para diferenciar la tabla de usuarios;
    marca varchar(50) not null,
    primary key(id),
    foreign key(created_by) references user(id)  -- created by indica la columna de created by es nuestra llave foranea, y lo que sigue es para indicar que tabla le estamos haciendo referencia.
    
);

rename table products to product; -- renombrar una tabla

-- Ingresaremos todos los datos usando un solo insert.
insert into product(name, created_by,marca)
values
	('ipad',1,'apple'),
    ('iphone',1,'apple'),
    ('watch',2,'apple'),
    ('imac',1,'apple'),
    ('ipad mini',1,'apple');
    
SELECT * FROM product;

-- LEFT JOIN
-- u.id = p.created_by tambien al hacer esto indicamos que los dos id son iguales
-- En este caso estoy consultando la columna id de la tabla usuario.
select u. id, u.email, p. name from user u left join product p on u.id = p.created_by;-- le puse un alias a la columna tan solo poniendolo como espacio u.
 
 -- RIGHT JOIN
select u. id, u.email, p. name from user u right join product p on u.id = p.created_by;

-- INNER JOIN
select u. id, u.email, p. name from user u inner join product p on u.id = p.created_by;

-- CROSS JOIN
select u.id, u.email, p.id, p.name from user u cross join product p;

-- GROUP BY
select count(id), marca from product group by marca;

select count(p.id), u.name from product p left join user u 
on u.id=p.created_by group by p.created_by
-- HAVING
having count(p.id)>=2; -- especifica que registros agrupados son capaces de mostrarse

-- DROP TABLE
drop table product; -- Basicamente eliminamos con exito la tabla.
drop table personas; -- Basicamente eliminamos con exito la tabla.
drop table user; -- Basicamente eliminamos con exito la tabla.


