CREATE TABLE clientes (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pedidos (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    direccion_envio VARCHAR(100),
    estado VARCHAR(50) DEFAULT 'Pendiente',
    total DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES clientes(user_id)
);

CREATE TABLE items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    costo DECIMAL(10, 2) NOT NULL,
    unidades_disponibles INT NOT NULL,
    imagen VARCHAR(255),
    categoria VARCHAR(100)
);

CREATE TABLE detalles_pedido (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES pedidos(order_id),
    FOREIGN KEY (item_id) REFERENCES items(item_id)
);
