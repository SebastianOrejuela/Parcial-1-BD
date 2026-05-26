CREATE TABLE Usuario (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    tipo_usuario VARCHAR(30) NOT NULL,
    condiciones VARCHAR(100),
    ciudad_id INT,
    codigo_postal VARCHAR(10)
);


CREATE TABLE Turno (
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT,
    servicio_id INT,
    empleado_id INT,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME,
    estado VARCHAR(20) NOT NULL,
    nombre_servicio VARCHAR(50)
);



INSERT INTO Usuario (nombre, apellido, tipo_usuario, condiciones, ciudad_id, codigo_postal) VALUES
('Carlos', 'Ramirez', 'Cliente', 'Ninguna', 1, '760001'),
('Maria', 'Gomez', 'Cliente', 'Embarazo', 1, '760002'),
('Luis', 'Fernandez', 'Proveedor', 'Ninguna', 2, '110010'),
('Ana', 'Martinez', 'Cliente', 'Requiere silla de ruedas', 1, '760003'),
('Jorge', 'Perez', 'Empleado', 'Ninguna', 3, '050001'),
('Lucia', 'Diaz', 'Cliente', 'Adulto mayor', 1, '760004'),
('Pedro', 'Lopez', 'Proveedor', 'Ninguna', 2, '110011'),
('Marta', 'Sanchez', 'Cliente', 'Ninguna', 1, '760005'),
('Andres', 'Castro', 'Cliente', 'Discapacidad visual', 4, '080001'),
('Sofia', 'Rios', 'Empleado', 'Ninguna', 1, '760006');


INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado, nombre_servicio) VALUES
(1, 101, 5, '2026-05-26', '08:00:00', '08:30:00', 'Completado', 'Despacho artículos'),
(2, 102, 10, '2026-05-26', '08:30:00', '09:00:00', 'En progreso', 'Atención al cliente'),
(3, 103, 5, '2026-05-26', '09:00:00', '09:45:00', 'Pendiente', 'Recepción artículos'),
(4, 102, 10, '2026-05-26', '09:45:00', '10:15:00', 'Pendiente', 'Atención al cliente'),
(6, 104, 5, '2026-05-27', '10:00:00', '11:00:00', 'Programado', 'Consultoría'),
(7, 103, 10, '2026-05-27', '11:00:00', '11:30:00', 'Programado', 'Recepción artículos'),
(8, 101, 5, '2026-05-27', '11:30:00', '12:00:00', 'Programado', 'Despacho artículos'),
(9, 102, 10, '2026-05-28', '08:00:00', '08:30:00', 'Programado', 'Atención al cliente'),
(1, 104, 5, '2026-05-28', '08:30:00', '09:30:00', 'Programado', 'Consultoría'),
(2, 101, 10, '2026-05-28', '09:30:00', '10:00:00', 'Programado', 'Despacho artículos');
