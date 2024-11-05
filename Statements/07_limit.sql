SELECT * FROM bikes_jp.users limit 4; -- Limita la cantidad de rows que retorna la tabla en funcion del numero de va precedido por la keyword "limit".

SELECT * FROM bikes_jp.users order by user_id desc limit 2;

SELECT * FROM bikes_jp.users order by user_id asc limit 2;

SELECT * FROM bikes_jp.users order by age asc limit 2;

SELECT * FROM bikes_jp.users order by age desc limit 2;