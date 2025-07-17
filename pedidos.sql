DROP DATABASE pedidos;

CREATE DATABASE pedidos;

USE pedidos;

CREATE TABLE IF NOT EXISTS usuario(
    usuario_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS pedido(
    pedido_id INT AUTO_INCREMENT PRIMARY KEY, 
    fecha_pedido DATE,
    total DECIMAL(10,2),
    usuario_id_fk INT,
    FOREIGN KEY (usuario_id_fk) REFERENCES usuario (usuario_id)
);

-- 1.
SELECT * FROM usuario;

-- 2.
SELECT nombre, correo FROM usuario;

-- 3.
SELECT * FROM pedido;

-- 4.
SELECT fecha_pedido, total FROM pedido;

-- 5.
SELECT * FROM usuario WHERE correo = "ana.garcia@gmail.com";

-- 6.
SELECT * FROM pedido WHERE usuario_id_fk = 3;

-- 7.
SELECT * FROM pedido WHERE total > 50.00;

-- 8.
SELECT * FROM usuario WHERE nombre LIKE "C%";

-- 9.
SELECT fecha_pedido FROM pedido WHERE fecha_pedido > "2025-07-10";

-- 10.
SELECT total FROM pedido WHERE total BETWEEN 20.00 AND 40.00;

-- 11.
SELECT nombre FROM usuario WHERE nombre LIKE "%a";

-- 12.
SELECT total FROM pedido WHERE total = 19.99;

-- 13.
SELECT nombre FROM usuario WHERE correo = "pedro.gomez@gmail.com";

-- 14.
SELECT * FROM pedido WHERE usuario_id_fk IN (1, 5);

-- 15.
SELECT fecha_pedido FROM pedido WHERE fecha_pedido = "2025-07-13";

-- 16.
SELECT nombre FROM usuario WHERE nombre LIKE "%ar%";

-- 17.
SELECT total FROM pedido WHERE total = 30.00;

-- 18.
SELECT * FROM usuario WHERE correo LIKE "%@qmail.com";

-- 19. 
SELECT * FROM pedido WHERE usuario_id_fk <=> 2;

-- 20.
SELECT * FROM pedido WHERE total > 100.00 AND fecha_pedido > "2025-07-10";
