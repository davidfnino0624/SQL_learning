SELECT *,
CASE
	WHEN age > 18 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS 'agetext'
FROM users;


SELECT *,
CASE
	WHEN age > 18 THEN True
    ELSE False
END AS 'agetext'
FROM users;