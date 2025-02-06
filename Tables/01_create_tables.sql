create table services (
	id_service,
    date_time,
    cleaner,
    charge,
    user_id,
    address
);  -- cuando se crea una tabla, se debe especificar el tipo de dato de cada columna


create table services (
	id_service int,
    date_time DATETIME,
    cleaner_id int,
    charge double(7, 2),
    user_id int,
    address varchar(50)
); --ALTER TABLE services RENAME TO service;  -- para cambiar el nombre de la tabla--

-- DROP TABLE service; -- Para borrar la tabla que no permitia agregar informacion debido al error de syntax--

CREATE TABLE `services`.`service_copy` (
  `id_service` INT NOT NULL,
  `data_time` DATETIME NOT NULL,
  `cleaner_id` INT NOT NULL,
  `charge` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC));

  --ALTER TABLE service_copy RENAME TO service;  -- para cambiar el nombre de la tabla--