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
  `charge` DOUBLE(7, 2) NOT NULL,
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC));

  --ALTER TABLE service_copy RENAME TO service;  -- para cambiar el nombre de la tabla--

ALTER TABLE `services`.`service` 
CHANGE COLUMN `charge` `charge` DOUBLE NOT NULL ; -- para cambiar el tipo de dato de una columna--

CREATE TABLE `users` ( -- Creacion de la tabla de usuarios--
  `user_id` int NOT NULL AUTO_INCREMENT,
  `id_number` varchar(45) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(16) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `dob` date NOT NULL,
  `rol` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `id_number_UNIQUE` (`id_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci