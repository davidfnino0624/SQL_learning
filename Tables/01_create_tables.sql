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

CREATE TABLE `services`.`` (
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
  --`rol` varchar(10) NOT NULL,--
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `id_number_UNIQUE` (`id_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


CREATE TABLE `services`.`` (
  `id_service` INT NOT NULL AUTO_INCREMENT,
  `book_date_time` DATETIME NOT NULL, 
  `cleaner_id` INT NOT NULL,
  `charge` DOUBLE(7, 2) NOT NULL,
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `created` datetime default current_timestamp, 
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC))
  primary key (id_service)
  check (charge>=50000); 


CREATE TABLE `services`.`service` (
  `id_service` INT NOT NULL AUTO_INCREMENT,
  `book_date_time` DATETIME NOT NULL, -- para guardar la fecha y hora de la reserva--
  `cleaner_id` INT NOT NULL,
  `charge` DOUBLE(7, 2) NOT NULL,
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `created` datetime default current_timestamp, -- para agregar una columna que guarde la fecha y hora de creacion de un registro--
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC),
  PRIMARY KEY (id_service),
  check (charge>=50000) -- para agregar una restriccion de que el valor de la columna charge sea mayor o igual a 50000--
  );


  CREATE TABLE `services`.`service` (
  `id_service` INT NOT NULL AUTO_INCREMENT,
  `book_date_time` DATETIME NOT NULL,
  `cleaner_id` INT NOT NULL,
  `charge` FLOAT(10, 2) NOT NULL, -- para cambiar el tipo de dato de la columna charge--
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `created` datetime default current_timestamp,
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC),
  PRIMARY KEY (id_service),
  check (charge>=50000)
  );


  CREATE TABLE `services` (
  `id_service` INT NOT NULL AUTO_INCREMENT,
  `book_date_time` DATETIME NOT NULL,
  `cleaner_id` INT NOT NULL,
  `charge` DECIMAL(10, 2) NOT NULL, -- para cambiar el tipo de dato de la columna charge-- ya no genera advertencia al crear--
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `created` datetime default current_timestamp,
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC),
  PRIMARY KEY (id_service),
  check (charge>=50000)
  );


CREATE TABLE `cleanitapp`.`payment_method` (
  `id_payment_method` INT NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `product_number` INT NOT NULL,
  `bank` VARCHAR(45) NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id_payment_method`),
  UNIQUE INDEX `id_payment_method_UNIQUE` (`id_payment_method` ASC) VISIBLE,
  INDEX `fk_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_pmuser`
    FOREIGN KEY (`user_id`)
    REFERENCES `cleanitapp`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE `services` (
  `id_service` int NOT NULL AUTO_INCREMENT,
  `book_date_time` datetime NOT NULL,
  `cleaner_id` int NOT NULL,
  `charge` decimal(10,2) NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(50) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_payment_method` int NOT NULL,
  PRIMARY KEY (`id_service`),
  UNIQUE KEY `id_service_UNIQUE` (`id_service`),
  KEY `cleaner_id` (`cleaner_id`),
  KEY `user_id` (`user_id`),
  KEY `fk_payment_idx` (`id_payment_method`),
  CONSTRAINT `fk_payment` FOREIGN KEY (`id_payment_method`) REFERENCES `payment_method` (`id_payment_method`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`cleaner_id`) REFERENCES `cleaners` (`cleaner_id`),
  CONSTRAINT `services_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `services_chk_1` CHECK ((`charge` >= 50000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci