SELECT name, singin_date as 'fecha de registro' FROM bikes_jp.users WHERE age between 14 and 28;

SELECT concat (name, ' ' ,last_name) FROM bikes_jp.users; -- Variacion para agregar un espacio en blanco en medio de los 2 datos

SELECT concat ('Full name: ', name, ' ', last_name) FROM bikes_jp.users;

SELECT concat ('Full name: ', name, ' ', last_name) as 'Full Name' FROM bikes_jp.users; -- Se usa en as para cambiar el nombre le la coluna resultante para que sea Full Name