DELIMITER //
CREATE PROCEDURE obtener_detalles_pedido(IN order_id_param INT)
BEGIN
    SELECT
        p.order_id,
        p.user_id,
        c.nombre AS nombre_cliente,
        p.fecha_pedido,
        p.direccion_envio,
        p.estado,
        p.total,
        dp.item_id,
        i.nombre AS nombre_item,
        dp.cantidad,
        dp.precio_unitario
    FROM pedidos p
    JOIN clientes c ON p.user_id = c.user_id
    JOIN detalles_pedido dp ON p.order_id = dp.order_id
    JOIN items i ON dp.item_id = i.item_id
    WHERE p.order_id = order_id_param;
END;
//
DELIMITER ;

CALL obtener_detalles_pedido(1);


DELIMITER //
CREATE PROCEDURE actualizar_estado_pedido(IN order_id_param INT, IN estado_param VARCHAR(50))
BEGIN
    UPDATE pedidos
    SET estado = estado_param
    WHERE order_id = order_id_param;
END;
//
DELIMITER ;

DELIMITER //
CREATE PROCEDURE obtener_productos_categoria(IN categoria_param VARCHAR(100))
BEGIN
    SELECT *
    FROM items
    WHERE categoria = categoria_param;
END;
//
DELIMITER ;

CALL actualizar_estado_pedido(1, 'Enviado');
