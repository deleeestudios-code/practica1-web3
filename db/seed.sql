-- 1. Insertar 3 Categorías
INSERT INTO categorias (nombre) VALUES 
('Electrónica'), 
('Ropa'), 
('Hogar');

-- 2. Insertar 12 Productos (asociados a sus respectivas categorias_id)
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES
('Laptop', 1, 800.00, 10),
('Mouse', 1, 20.00, 3),
('Teclado', 1, 45.00, 2),
('Audífonos', 1, 50.00, 15),
('Polera', 2, 15.00, 20),
('Pantalón', 2, 35.00, 4),
('Chaqueta', 2, 60.00, 8),
('Zapatillas', 2, 70.00, 1),
('Lámpara', 3, 25.00, 12),
('Silla', 3, 85.00, 5),
('Mesa', 3, 120.00, 2),
('Espejo', 3, 30.00, 6);

-- 3. Insertar 6 Clientes (con emails únicos)
INSERT INTO clientes (nombre, telefono, email) VALUES
('Carlos Perez', '71234567', 'carlos@mail.com'),
('Ana Gomez', '72345678', 'ana@mail.com'),
('Luis Torrez', '73456789', 'luis@mail.com'),
('Maria Lopez', '74567890', 'maria@mail.com'),
('Jorge Rios', '75678901', 'jorge@mail.com'),
('Elena Mamani', '76789012', 'elena@mail.com');

-- 4. Insertar 10 Pedidos (asociados a un cliente_id)
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES
(1, '2026-10-01', 'Entregado'),
(1, '2026-10-02', 'Procesando'),
(1, '2026-10-03', 'Pendiente'),
(2, '2026-10-04', 'Entregado'),
(2, '2026-10-05', 'Entregado'),
(3, '2026-10-06', 'Pendiente'),
(3, '2026-10-07', 'Enviado'),
(4, '2026-10-08', 'Entregado'),
(4, '2026-10-09', 'Procesando'),
(5, '2026-10-10', 'Pendiente');

-- 5. Insertar 25 líneas de detalle de pedido (relacionando pedidos con productos)
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 800.00), (1, 2, 2, 20.00), (1, 4, 1, 50.00),
(2, 3, 1, 45.00), (2, 5, 3, 15.00),
(3, 6, 1, 35.00), (3, 7, 1, 60.00),
(4, 8, 2, 70.00), (4, 9, 1, 25.00), (4, 10, 1, 85.00),
(5, 11, 1, 120.00), (5, 12, 2, 30.00),
(6, 1, 1, 800.00), (6, 4, 2, 50.00),
(7, 2, 1, 20.00), (7, 5, 2, 15.00),
(8, 6, 2, 35.00), (8, 9, 1, 25.00), (8, 10, 2, 85.00),
(9, 3, 1, 45.00), (9, 7, 1, 60.00),
(10, 12, 1, 30.00), (10, 8, 1, 70.00), (10, 5, 1, 15.00), (10, 2, 1, 20.00);