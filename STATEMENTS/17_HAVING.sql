/*HAVING
Se utiliza para filtrar resultados después de realizar agregaciones.
Filtra grupos de datos formados por una cláusula GROUP BY o resultados que incluyen funciones de agregación.
Permite aplicar condiciones sobre valores agregados.
*/
SELECT departamento, AVG(salario) AS salario_promedio
FROM empleados
GROUP BY departamento
HAVING AVG(salario) > 5000;
/*Explicación:
Primero calcula el salario promedio por departamento (GROUP BY).
Luego, filtra los departamentos donde el promedio de salario (AVG(salario)) es mayor a 5000.
*/

/* Diferencias Clave
Característica	    WHERE	                                        HAVING
Momento de uso	    Antes de las agregaciones (GROUP BY, HAVING).	Después de las agregaciones (GROUP BY).
Actúa sobre	        Filtra filas individuales de la tabla.	        Filtra grupos o resultados agregados.
Uso con agregados	No puede usarse con funciones de agregación.	Puede usarse con funciones de agregación.
Ejemplo válido	    WHERE salario > 3000	                        HAVING COUNT(*) > 10

Ejemplo combinando WHERE y HAVING
Supongamos que quieres saber los departamentos con un salario promedio mayor a 5000, pero sólo para los empleados que ganan más de 3000.
*/
SELECT departamento, AVG(salario) AS salario_promedio
FROM empleados
WHERE salario > 3000  -- Filtra filas antes de agrupar
GROUP BY departamento
HAVING AVG(salario) > 5000;  -- Filtra después de agrupar
/*
Explicación:
WHERE salario > 3000: Excluye empleados cuyo salario es menor o igual a 3000.
GROUP BY departamento: Agrupa los empleados por departamento.
HAVING AVG(salario) > 5000: Muestra sólo los departamentos donde el salario promedio es mayor a 5000.

En resumen:
WHERE filtra filas antes de los cálculos.
HAVING filtra resultados después de los cálculos o agrupaciones.
*/

SELECT COUNT (age)
FROM users
HAVING COUNT(age) > 3; 