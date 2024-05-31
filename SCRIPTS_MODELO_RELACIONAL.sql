INSERT INTO "PAIS" (nombre_pais)
VALUES 
    ('Argentina'),
    ('Brasil'),
    ('Estados Unidos'),
    ('Chile'),
    ('Venezuela'),
    ('Canadá'),

INSERT INTO "CIUDAD" (nombre_ciudad, codigo_pais)
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

INSERT INTO "SUCURSAL" (nombre_sucursal, codigo_ciudad)
    SELECT CONCAT('Sucursal ', c.nombre_ciudad), c.codigo_ciudad
    FROM "CIUDAD" c;

