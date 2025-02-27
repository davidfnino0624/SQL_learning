DELIMITER //
CREATE TRIGGER actualizar_total_pedido
AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    UPDATE pedidos
    SET total = (SELECT SUM(cantidad * precio_unitario) FROM detalles_pedido WHERE order_id = NEW.order_id)
    WHERE order_id = NEW.order_id;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER reducir_inventario
AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    UPDATE items
    SET unidades_disponibles = unidades_disponibles - NEW.cantidad
    WHERE item_id = NEW.item_id;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER registrar_cambio_estado_pedido
AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
    IF NEW.estado <> OLD.estado THEN
        INSERT INTO auditoria_estado_pedido (order_id, estado_anterior, estado_nuevo, fecha_cambio)
        VALUES (NEW.order_id, OLD.estado, NEW.estado, NOW());
    END IF;
END;
//
DELIMITER ;