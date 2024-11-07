SELECT age, MAX(AGE) FROM bikes_jp.users GROUP BY age;

SELECT age, count(AGE) FROM bikes_jp.users GROUP BY age;

SELECT age, MAX(AGE) FROM bikes_jp.users GROUP BY age ORDER BY age DESC;

SELECT age, count(AGE) FROM bikes_jp.users GROUP BY age ORDER BY age DESC;

SELECT age, count(AGE) FROM bikes_jp.users WHERE age > 18 GROUP BY age ORDER BY age DESC;