INSERT INTO "PAIS" (nombre_pais)
VALUES 
    ('Argentina'),
    ('Brasil'),
    ('Canadá'),
    ('Estados Unidos'),
    ('Egipto'),
    ('Francia'),
    ('Alemania'),
    ('Chile'),
    ('Venezuela'),
    ('Japón');

INSERT INTO "CIUDAD" (nombre_ciudad, codigo_pais)
VALUES 
    ('Buenos Aires', 1),
    ('La Plata', 1),
    ('Río de Janeiro', 2),
    ('Brasilia', 2),
    ('Toronto', 3),
    ('Montral', 3),
    ('Miami', 4),
    ('Dallas', 4),
    ('El Cairo', 5),
    ('Alejandría', 5),
    ('París', 6),
    ('Lyon', 6),
    ('Berlín', 7),
    ('Munich', 7),
    ('Santiago', 8),
    ('Valparaíso', 8),
    ('Caracas', 9),
    ('Maracaibo', 9),
    ('Tokio', 10),
    ('Kyoto', 10);

    INSERT INTO "SUCURSAL" (nombre_sucursal, codigo_ciudad)
    SELECT CONCAT('Sucursal ', c.nombre_ciudad), c.codigo_ciudad
    FROM "CIUDAD" c;
	
	