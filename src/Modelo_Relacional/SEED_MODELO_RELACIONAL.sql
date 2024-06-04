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
    (9, 'E-10202313', 'Félix Hernández', '+58212-1010101', 'kingfelix@gmail.com', 'M', 'Calle 17, Caracas'),
    (9, 'V-10202314', 'Miguel Cabrera', '+58212-1010102', 'miggycabrera@gmail.com', 'M', 'Calle 18, Caracas'),
    (10, 'V-10202315', 'Freddy García', '+58212-1010103', 'freddygg@gmail.com', 'M', 'Calle 19, Maracaibo'),
    (10, 'E-10202316', 'Carlos González', '+58212-1010104', 'carlitosgonzales@gmail.com', 'M', 'Calle 20, Maracaibo'),
    (11, 'E-10202317', 'Steve Nash', '+1416-1010101', 'nashhh@gmail.com', 'M', 'Calle 21, Toronto'),
    (11, 'E-10202318', 'Andrew Wiggins', '+1416-1010102', 'andrewwiggins@gmail.com', 'M', 'Calle 22, Toronto'),
    (12, 'E-10202319', 'Pascal Siakam', '+1416-1010103', 'pascalsiakam@gmail.com', 'M', 'Calle 23, Montreal'),
    (12, 'E-10202320', 'Jamal Murray', '+1416-1010104', 'jamalmurray@gmail.com', 'M', 'Calle 24, Montreal');

