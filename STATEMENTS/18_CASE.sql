SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;

SELECT *,
CASE
	WHEN age > 18 THEN true
    ELSE false
END AS agetext
FROM users;

SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 17 THEN 'Le faltaun año para ser mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;