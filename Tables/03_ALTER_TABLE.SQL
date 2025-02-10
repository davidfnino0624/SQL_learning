ALTER TABLE services RENAME TO service;  -- para cambiar el nombre de la tabla--

ALTER TABLE services ADD surname varchar(15); -- para agregar una columna a la tabla--

ALTER TABLE services RENAME COLUMN surname TO last_name; -- para cambiar el nombre de una columna--

ALTER TABLE services modify COLUMN last_name varchar(20); -- para cambiar el tipo de dato de una columna--

ALTER TABLE services DROP COLUMN last_name; -- para eliminar una columna de la tabla--

ALTER TABLE services DROP FOREIGN KEY services_ibfk_1; -- para eliminar una llave foranea de la tabla--

ALTER TABLE services ADD FOREIGN KEY (cleaner_id) REFERENCES cleaners(cleaner_id); -- para agregar una llave foranea a la tabla--

ALTER TABLE services ADD FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE services ADD CONSTRAINT services_chk_1 CHECK (charge >= 50000); -- para agregar una restriccion a una columna--