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
    ('Seguro Personal'),
    ('Seguro Familiar'),
    ('Seguro Vehicular'),
    ('Seguro de Vivienda'),
    ('Seguro Viajero'),
    ('Seguro Empresarial');

INSERT INTO "Modelo_Relacional"."PRODUCTO" (nombre_producto, descripcion, codigo_tipo_producto, calificacion)
VALUES 
    ('Seguro Menor de edad', 'Seguro de salud para personas menores a 18 años de edad', 1, 5),
    ('Seguro Adulto mayor', 'Seguro de salud para personas mayores a 60 años de edad', 1, 5),
    ('Seguro Adulto', 'Seguro de salud para personas meyores a 18 años y menores a 60 años', 1, 5),
    ('Seguro Familia pequeña', 'Seguro de salud para familias de 3 integrantes o menos', 2, 5),
    ('Seguro Familia grande', 'Seguro de salud para familias de más de 3 integrantes', 2, 5),
    ('Seguro de auto sedan', 'Seguro de vehículo para automoviles de tipo sedan', 3, 5),
    ('Seguro de auto hatchback', 'Seguro de vehículo para autos tipo hatchback', 3, 5),
    ('Seguro de auto suv', 'Seguro de vehículo para autos tipo suv', 3, 5),
    ('Seguro de auto todoterrenos', 'Seguro de vehículo para autos tipo todoterrenos', 3, 5),
    ('Seguro de motocicletas', 'Seguro de vehículo para motocicletas', 3, 5),
    ('Seguro de estudio', 'Seguro de vivienda de tipo estudio', 4, 5),
    ('Seguro de apartamento', 'Seguro de vivienda para apartamentos de 1 piso y no más de 4 hábitaciones', 4, 5),
    ('Seguro de penthouse', 'Seguro de vivienda para apartamentos de 2 pisos y hasta 6 hábitaciones', 4, 5),
    ('Seguro de casa', 'Seguro de vivienda para casas de no más de 180 métros cuadrados', 4, 5),
    ('Seguro de quinta', 'Seguro de vivienda para casas de entre 180 y 300 métros cuadrados', 4, 5),
    ('Seguro de mansión', 'Seguro de vivienda para casas de más de 300 métros cuadrados', 4, 5),
    ('Seguro viaje Europa', 'Seguro de viaje para personas que viajen a Europa', 5, 5),
    ('Seguro viaje Asia', 'Seguro de viaje para personas que viajen a Asia', 5, 5),
    ('Seguro viaje América del Norte', 'Seguro de viaje para personas que viajen a América', 5, 5),
    ('Seguro viaje América del Sur', 'Seguro de viaje para personas que viajen a América', 5, 5),
    ('Seguro viaje Centro América', 'Seguro de viaje para personas que viajen a Centro América', 5, 5),
    ('Seguro viaje África', 'Seguro de viaje para personas que viajen a África', 5, 5),
    ('Seguro viaje Oceanía', 'Seguro de viaje para personas que viajen a Oceanía', 5, 5),
    ('Seguro startup', 'Seguro para empresas de hasta 15 empleados', 6, 5),
    ('Seguro pyme', 'Seguro para empresas de hasta 50 empleados', 6, 5),
    ('Seguro corporativo', 'Seguro para empresas de más de 50 empleados', 6, 5);

