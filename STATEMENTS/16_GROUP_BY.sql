SELECT MAX(age)
FROM users
GROUP BY age; -- Agrupa la maxima de cada edad en la tabla, para el ejemplo
--37
--34
--41
--69 muestra un solo registro,pero hay 2 personas con 69 años

SELECT COUNT(age)
FROM users
GROUP BY age; -- Cuenta cuantas personas tienen la misma edad
-- 1
-- 1
-- 1
-- 2 hay 2 personas con 69 años

SELECT COUNT(age), age
FROM users
GROUP BY age; -- Para ver la columa edad y la columna cuenta cuantas personas tienen la misma edad
-- 1  37
-- 1  34
-- 1  41
-- 2  69

SELECT COUNT(age), age
FROM users
GROUP BY age
ORDER BY age DESC ;
-- 2  69
-- 1  41
-- 1  37
-- 1  34

SELECT COUNT(age), age
FROM users
WHERE age > 30
GROUP BY age
ORDER BY age DESC ;