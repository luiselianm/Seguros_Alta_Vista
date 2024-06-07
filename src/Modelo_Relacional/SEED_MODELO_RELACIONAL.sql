INSERT INTO "Modelo_Relacional"."PAIS" (nombre_pais)
VALUES 
    ('Argentina'),
    ('Brasil'),
    ('Estados Unidos'),
    ('Chile'),
    ('Venezuela'),
    ('Canadá');

INSERT INTO "Modelo_Relacional"."CIUDAD" (nombre_ciudad, codigo_pais)
VALUES 
    ('Buenos Aires', 1),
    ('La Plata', 1),
    ('Río de Janeiro', 2),
    ('Brasilia', 2),
    ('Miami', 3),
    ('Dallas', 3),
    ('Santiago', 4),
    ('Valparaíso', 4),
    ('Caracas', 5),
    ('Maracaibo',5),
    ('Toronto', 6),
    ('Montreal', 6);

INSERT INTO "Modelo_Relacional"."SUCURSAL" (nombre_sucursal, codigo_ciudad)
    SELECT CONCAT('Sucursal ', c.nombre_ciudad), c.codigo_ciudad
    FROM "Modelo_Relacional"."CIUDAD" c;

INSERT INTO "Modelo_Relacional"."CLIENTE" (codigo_sucursal, cedula_rif, nombre_cliente, telefono, email, sexo, direccion)
VALUES 
    (1, 'E-10202297', 'Lionel Messi', '+54414-1010101', 'messi@gmail.com', 'M', 'Calle 1, Buenos Aires'),
    (1, 'E-10202298', 'Diego Maradona', '+54414-1010102', 'maradona@gmail.com', 'M', 'Calle 2, Buenos Aires'),
    (2, 'E-10202299', 'Carlos Tevez', '+54414-1010103', 'tevez@gmail.com', 'M', 'Calle 3, La Plata'),
    (2, 'E-10202300', 'Juan Román Riquelme', '+54414-1010104', 'riquelme@gmail.com', 'M', 'Calle 4, La Plata'),
    (3, 'E-10202301', 'Pelé', '+55421-1010101', 'pele@gmail.com', 'M', 'Calle 5, Río de Janeiro'),
    (3, 'E-10202302', 'Ronaldinho', '+55421-1010102', 'ronaldinho@gmail.com', 'M', 'Calle 6, Río de Janeiro'),
    (4, 'E-10202303', 'Ronaldo', '+55421-1010103', 'elbichocr7@gmail.com', 'M', 'Calle 7, Brasilia'),
    (4, 'E-10202304', 'Romario', '+55421-1010104', 'romarinho@gmail.com', 'M', 'Calle 8, Brasilia'),
    (5, 'E-10202305', 'Michael Jordan', '+1305-1010101', 'jordan23@gmail.com', 'M', 'Calle 9, Miami'),
    (5, 'E-10202306', 'LeBron James', '+1305-1010102', 'lebronjames@gmail.com', 'M', 'Calle 10, Miami'),
    (6, 'E-10202307', 'Kobe Bryant', '+1305-1010103', 'helicopterbryant@gmail.com', 'M', 'Calle 11, Dallas'),
    (6, 'E-10202308', 'Shaquille O''Neal', '+1305-1010104', 'sahq@gmail.com', 'M', 'Calle 12, Dallas'),
    (7, 'E-10202309', 'Alexis Sánchez', '+562-1010101', 'alexisanchez@gmail.com', 'M', 'Calle 13, Santiago'),
    (7, 'E-10202310', 'Arturo Vidal', '+562-1010102', 'reyarturo@gmail.com', 'M', 'Calle 14, Santiago'),
    (8, 'E-10202311', 'Gary Medel', '+562-1010103', 'garymedel@gmail.com', 'M', 'Calle 15, Valparaíso'),
    (8, 'E-10202312', 'Claudio Bravo', '+562-1010104', 'claudiobravo@gmail.com', 'M', 'Calle 16, Valparaíso'),
    (9, 'V-10202313', 'Félix Hernández', '+58212-1010101', 'kingfelix@gmail.com', 'M', 'Calle 17, Caracas'),
    (9, 'V-10202314', 'Miguel Cabrera', '+58212-1010102', 'miggycabrera@gmail.com', 'M', 'Calle 18, Caracas'),
    (10, 'V-10202315', 'Freddy García', '+58212-1010103', 'freddygg@gmail.com', 'M', 'Calle 19, Maracaibo'),
    (10, 'V-10202316', 'Carlos González', '+58212-1010104', 'carlitosgonzales@gmail.com', 'M', 'Calle 20, Maracaibo'),
    (11, 'E-10202317', 'Steve Nash', '+1416-1010101', 'nashhh@gmail.com', 'M', 'Calle 21, Toronto'),
    (11, 'E-10202318', 'Andrew Wiggins', '+1416-1010102', 'andrewwiggins@gmail.com', 'M', 'Calle 22, Toronto'),
    (12, 'E-10202319', 'Pascal Siakam', '+1416-1010103', 'pascalsiakam@gmail.com', 'M', 'Calle 23, Montreal'),
    (12, 'E-10202320', 'Jamal Murray', '+1416-1010104', 'jamalmurray@gmail.com', 'M', 'Calle 24, Montreal');

INSERT INTO "Modelo_Relacional"."TIPO_PRODUCTO" (nombre_tipo_producto)
VALUES 
    ('Personal'),
    ('Prestación de Servicios'),
    ('Daños'),
    ('Patrimonial');

INSERT INTO "Modelo_Relacional"."PRODUCTO" (nombre_producto, descripcion, codigo_tipo_producto, calificacion)
VALUES 
    ('Seguro Menor de edad', 'Seguro de salud para personas menores a 18 años de edad', 1, 5),
    ('Seguro Adulto mayor', 'Seguro de salud para personas mayores a 60 años de edad', 1, 5),
    ('Seguro Adulto', 'Seguro de salud para personas meyores a 18 años y menores a 60 años', 1, 5);

INSERT INTO "Modelo_Relacional"."EVALUACION_SERVICIO" (descripcion_evaluacion)
VALUES 
    ('1.- Malo'),
    ('2.- Regular'),
    ('3.- Bueno'),
    ('4.- Muy Bueno'),
    ('5.- Excelente');

INSERT INTO "Modelo_Relacional"."RECOMIENDA" (codigo_cliente, codigo_evaluacion_servicio, codigo_producto, recomienda_amigo)
VALUES
    (1, 4, 1, true),
    (2, 5, 2, true),
    (3, 3, 3, false),
    (4, 3, 1, false),
    (5, 5, 2, true),
    (6, 5, 3, true),
    (7, 5, 1, true),
    (8, 5, 2, true),
    (9, 5, 3, true),
    (10, 5, 1, true),
    (11, 5, 2, true),
    (12, 5, 3, true),
    (13, 5, 1, true),
    (14, 5, 2, true),
    (15, 3, 3, false),
    (16, 3, 1, false),
    (17, 5, 2, true),
    (18, 5, 3, true),
    (19, 3, 1, false),
    (20, 5, 2, true),
    (21, 3, 3, false),
    (22, 5, 1, true),
    (23, 5, 2, true),
    (24, 5, 3, true);

INSERT INTO "Modelo_Relacional"."CONTRATO" (descripcion_contrato)
VALUES 
    ('Contrato de seguro de salud para personas menores a 18 años de edad'),
    ('Contrato de seguro de salud para personas mayores a 60 años de edad'),
    ('Contrato de seguro de salud para personas meyores a 18 años y menores a 60 años');

INSERT INTO "Modelo_Relacional"."REGISTRO_CONTRATO" (numero_contrato, codigo_cliente, codigo_producto, fecha_inicio, fecha_fin, monto, estado_contrato)
VALUES
    (1, 1, 1, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (2, 2, 2, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (3, 3, 3, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (1, 4, 1, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (2, 5, 2, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (3, 6, 3, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (1, 7, 1, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (2, 8, 2, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (3, 9, 3, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (1, 10, 1, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (2, 11, 2, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (3, 12, 3, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (1, 13, 1, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (2, 14, 2, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (3, 15, 3, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (1, 16, 1, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (2, 17, 2, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (3, 18, 3, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (1, 19, 1, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (2, 20, 2, '2024-06-04', '2025-06-04', 1000.00, 'vencido'),
    (3, 21, 3, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (1, 22, 1, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (2, 23, 2, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (3, 24, 3, '2024-06-04', '2025-06-04', 1000.00, 'activo');

INSERT INTO "Modelo_Relacional"."SINIESTRO" (descripcion_siniestro)
VALUES 
    ('Accidente de tránsito'),
    ('Incendio'),
    ('Robo'),
    ('Hurto'),
    ('Daños materiales'),
    ('Daños personales');

INSERT INTO "Modelo_Relacional"."REGISTRO_SINIESTRO" (numero_siniestro, numero_contrato, fecha_siniestro, fecha_respuesta, id_rechazo, monto_reconocido, monto_solicitado)
VALUES 
    (1, 1, '2024-06-06', '2024-06-06', 'no', 1000.00, 1000.00),
    (2, 2, '2024-06-07', '2024-06-07', 'no', 1000.00, 1000.00),
    (3, 3, '2024-06-08', '2024-06-08', 'no', 1000.00, 1000.00),
    (4, 1, '2024-06-12', '2024-06-12', 'no', 1000.00, 1000.00),
    (5, 2, '2024-06-14', '2024-06-14', 'no', 1000.00, 1000.00),
    (6, 3, '2024-06-24', '2024-06-24', 'no', 100.00, 1000.00),
    (1, 1, '2024-06-29', '2024-06-29', 'si', 100.00, 1000.00),
    (2, 2, '2024-07-02', '2024-07-02', 'si', 100.00, 1000.00),
    (3, 3, '2024-07-05', '2024-07-05', 'si', 150.00, 1000.00),
    (4, 1, '2024-07-06', '2024-07-06', 'no', 1000.00, 1000.00),
    (5, 2, '2024-07-07', '2024-07-07', 'no', 1000.00, 1000.00),
    (6, 3, '2024-07-08', '2024-07-08', 'no', 1000.00, 1000.00),
    (1, 1, '2024-07-12', '2024-07-12', 'no', 1000.00, 1000.00),
    (2, 2, '2024-07-14', '2024-07-14', 'no', 1000.00, 1000.00),
    (3, 3, '2024-07-24', '2024-07-24', 'no', 1000.00, 1000.00),
    (4, 1, '2024-07-29', '2024-07-29', 'no', 1000.00, 1000.00),
    (5, 2, '2024-08-06', '2024-08-06', 'no', 1000.00, 1000.00),
    (6, 3, '2024-08-07', '2024-08-07', 'no', 1000.00, 1000.00),
    (1, 1, '2024-08-08', '2024-08-08', 'no', 1000.00, 1000.00),
    (2, 2, '2024-08-12', '2024-08-12', 'no', 1000.00, 1000.00),
    (3, 3, '2024-08-14', '2024-08-14', 'no', 1000.00, 1000.00),
    (4, 1, '2024-08-24', '2024-08-24', 'si', 200.00, 1000.00),
    (5, 2, '2024-08-29', '2024-08-29', 'si', 120.00, 1000.00),
    (6, 3, '2024-09-04', '2024-09-04', 'si', 500.00, 1000.00);