SELECT clientes.nombre AS nombre_cliente, pedidos.id_pedido, pedidos.fecha
FROM clientes
FULL JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;