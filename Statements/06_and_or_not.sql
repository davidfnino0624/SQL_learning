SELECT * FROM bikes_jp.users WHERE not email ="davidnino0624@gmail.com";

SELECT * FROM bikes_jp.users WHERE not email ="%@gmail.com" and age = 24;

SELECT * FROM bikes_jp.users WHERE not email = "tulio789@pgl.com" and age = 21; -- Se debe usar la negacion "not" para indicar que queremos excluir cada criterio.

SELECT * FROM bikes_jp.users WHERE not email = "tulio789@pgl.com" and not age = 21; 

SELECT * FROM bikes_jp.users WHERE not email = "tulio789@pgl.com" or age = 21;

SELECT * FROM bikes_jp.users WHERE not email = "tulio789@pgl.com" or not age = 21; -- Igual funciona el "or" hasta el momento.