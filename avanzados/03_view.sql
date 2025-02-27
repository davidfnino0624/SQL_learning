CREATE VIEW vista_detalles_pedidos AS
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
JOIN items i ON dp.item_id = i.item_id; -- vista de detalles de pedidos

SELECT * FROM vista_detalles_pedido; --consulta a la vista

DROP VIEW vista_detalles_pedido; --eliminación de la vista


CREATE VIEW vista_inventario_bajo AS
SELECT
    item_id,
    nombre,
    unidades_disponibles
FROM items
WHERE unidades_disponibles < 10; -- se Ajusta el umbral según sea necesario

CREATE VIEW vista_clientes_mas_pedidos AS
SELECT
    c.user_id,
    c.nombre,
    COUNT(p.order_id) AS cantidad_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.user_id = p.user_id
GROUP BY c.user_id, c.nombre
ORDER BY cantidad_pedidos DESC; -- vista de clientes con más pedidos