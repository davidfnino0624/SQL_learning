CREATE TABLE `services` (
  `id_service` INT NOT NULL AUTO_INCREMENT,
  `book_date_time` DATETIME NOT NULL,
  `cleaner_id` INT NOT NULL,
  `charge` DECIMAL(10, 2) NOT NULL,
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `created` datetime default current_timestamp,
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC),
  PRIMARY KEY (id_service),
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  FOREIGN KEY (cleaner_id) REFERENCES users (cleaner_id), -- se remueve la restriccion de que el cleaner_id porque aun no esta creada la tabla--
  check (charge>=50000)
  );


CREATE TABLE `services` (
  `id_service` INT NOT NULL AUTO_INCREMENT,
  `book_date_time` DATETIME NOT NULL,
  `cleaner_id` INT NOT NULL,
  `charge` DECIMAL(10, 2) NOT NULL,
  `user_id` INT NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `created` datetime default current_timestamp,
  UNIQUE INDEX `id_service_UNIQUE` (`id_service` ASC),
  PRIMARY KEY (id_service),
  FOREIGN KEY (user_id) REFERENCES users (user_id), 
  check (charge>=50000)
  );



  CREATE TABLE `services` (
  `id_service` int NOT NULL AUTO_INCREMENT,
  `book_date_time` datetime NOT NULL,
  `cleaner_id` int NOT NULL,
  `charge` decimal(10,2) NOT NULL,
  `user_id` int NOT NULL,
  `address` varchar(50) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_service`),
  UNIQUE KEY `id_service_UNIQUE` (`id_service`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `services_chk_1` CHECK ((`charge` >= 50000))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci --'Tabla para almacenar los servicios solicitados por los usuarios';--