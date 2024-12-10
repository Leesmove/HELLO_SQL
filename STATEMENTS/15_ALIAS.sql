SELECT name, init_date AS "Inicio de clases" FROM users WHERE age BETWEEN 30 AND 50; -- Tambien se puede usar comillas simples
SELECT name, init_date AS 'Inicio de clases' FROM users WHERE name = "Sofia";

SELECT CONCAT('Nombre: ', name, ' ', 'Apellido: ', surname)
FROM users;

SELECT CONCAT('Nombre: ', name, ' ', 'Apellido: ', surname) AS 'Nombre y apellido'
FROM users;
