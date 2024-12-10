SELECT * FROM users WHERE email IS NULL;
SELECT * FROM users WHERE email IS NOT NULL;
SELECT * FROM users WHERE email IS NOT NULL AND age >= 30;

SELECT name, surname, IFNULL(email, 'No tiene email') AS emailtext 
FROM users;