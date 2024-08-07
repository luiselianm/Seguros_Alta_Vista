INSERT INTO "SEGURO_G28052110"."PAIS" (nombre_pais)
VALUES 
    ('Argentina'),
    ('Brasil'),
    ('Estados Unidos'),
    ('Chile'),
    ('Venezuela'),
    ('Canadá');

INSERT INTO "SEGURO_G28052110"."CIUDAD" (nombre_ciudad, codigo_pais)
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

INSERT INTO "SEGURO_G28052110"."SUCURSAL" (nombre_sucursal, codigo_ciudad)
    SELECT CONCAT('Sucursal ', c.nombre_ciudad), c.codigo_ciudad
    FROM "SEGURO_G28052110"."CIUDAD" c;

INSERT INTO "SEGURO_G28052110"."CLIENTE" (codigo_sucursal, cedula_rif, nombre_cliente, telefono, email, sexo, direccion)
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
    (12, 'E-10202320', 'Jamal Murray', '+1416-1010104', 'jamalmurray@gmail.com', 'M', 'Calle 24, Montreal'),
    (1, 'E-12345678', 'Serena Williams', '555-123-4567', 'serena@proplayer.com', 'F', 'Buenos Aires'),
    (1, 'E-23456789', 'Simone Biles', '555-234-5678', 'simone@sporting.com', 'F', 'Buenos Aires'),
    (2, 'E-34567890', 'Alex Morgan', '555-345-6789', 'alex@gmail.com', 'F', 'Calle 5, La plata'),
    (2, 'E-45678901', 'Lindsey Vonn', '555-456-7890', 'lindsey@prosport.com', 'F', 'Calle 5, La plata'),
    (3, 'E-56789012', 'Marta Vieira da Silva', '555-567-8901', 'martaV@gmail.com', 'F', 'Rio de janeiro'),
    (3, 'E-67890123', 'Ronda Rousey', '555-678-9012', 'ronda@ufc.com', 'F', 'Rio de janeiro'),
    (4, 'E-78901234', 'Danica Patrick', '555-789-0123', 'danica@player.com', 'F', 'Brasilia'),
    (4, 'E-89012345', 'Hope Solo', '555-890-1234', 'hopesolo@gmail.com', 'F', 'Brasilia'),
    (5, 'E-90123456', 'Gabby Douglas', '555-901-2345', 'gabby@gmail.com', 'F', 'Miami West Coast'),
    (5, 'E-01234567', 'Venus Williams', '555-012-3456', 'venus@tnnis.com', 'F', 'Miami East Coast'),
    (6, 'E-87654321', 'Maria Sharapova', '555-321-4567', 'maria@tnnis.com', 'F', 'Dallas Buyers Club'),
    (7, 'E-76543210', 'Carli Lloyd', '555-180-5678', 'carli@gmail.com', 'F', 'Pt Bella Vista, Santiago'),
    (8, 'E-34512390', 'Tatiana Calderon', '555-561-8901', 'tatiana@f1.com', 'F', 'Vina del mar'),
    (8, 'E-45612301', 'Mia Hamm', '555-400-7890', 'mia@gmail.com', 'F', 'Valparaiso'),
    (9, 'E-59519012', 'Jessica Hawkins', '555-436-7890', 'jessica@gmail.com', 'F', 'Centro, Caracas'),
    (9, 'V-69510123', 'Deyna Castellanos', '555-781-9012', 'dreyna@gmail.com', 'F', 'Caracas'),
    (10,'E-78901194', 'Ana Paula Vázquez Flores', '555-000-7890', 'ana@gmail.com', 'F', 'La molleja, Maracaibo'),
    (10,'E-89012195', 'Megan Rapinoe', '555-800-1234', 'megan@gmail.com', 'F', 'Pat acon, Maracaibo'),
    (11,'E-90171456', 'Abby Wambach', '555-451-2345', 'abby@gmail.com', 'F', 'Toronto'),
    (11,'E-01271567', 'Christine Sinclair', '555-013-3456', 'christine@gmail.com', 'F', 'Toronto'),
    (12,'E-12371678', 'Birgit Prinz', '555-111-4567', 'birgit@gmail.com', 'F', 'Montreal, Calle 123'),
    (12,'V-23456486', 'Homare Sawa', '555-223-5678', 'homare@egmailcom', 'F', 'Montreal, Ice Avenue'),
    (6, 'V-34567486', 'Michelle Akers', '555-344-6789', 'michelle@gmail.com', 'F', 'Dallas Midtown'),
    (7, 'V-45678486', 'Sun Wen', '555-466-7890', 'sun@gmail.com', 'F', 'San Francisco, Santiago');



INSERT INTO "SEGURO_G28052110"."TIPO_PRODUCTO" (nombre_tipo_producto)
VALUES 
    ('Personal'),
    ('Prestación de Servicios'),
    ('Daños'),
    ('Patrimonial');

INSERT INTO "SEGURO_G28052110"."PRODUCTO" (nombre_producto, descripcion, codigo_tipo_producto, calificacion)
VALUES 
    ('Seguro Menor de edad', 'Seguro de salud para personas menores a 18 años de edad', 1, 5),
    ('Seguro Adulto mayor', 'Seguro de salud para personas mayores a 60 años de edad', 1, 5),
    ('Seguro Adulto', 'Seguro de salud para personas meyores a 18 años y menores a 60 años', 1, 5),

    ('Seguro de defensa juridica','Ofrece coberturas de los gastos relacionados a reclamaciones judiciales y litigios',2,3),
    ('Seguro de asistencia de viaje','Cubre imprevistos durante el viaje: Perdida de equipaje, asistencia sanitaria o regreso anticipado',2,4),
    ('Seguro de decesos','Cubre gastos de sepelio del asegurando según el capital contratado: tanatorio, flores, esquelas, tramites de defunción',2,5),

    ('Seguro de incendios','Cubren los daños producidos si se incendia el objeto asegurado',3,4),
    ('Seguro de robo','Ofrece coberturas de los gastos relacionados al robo o hurto del vehículo asegurado mediando violencia o intimidacion',3,3),
    ('Seguro a valor nuevo','Ofrece el pago de la diferencia existente entre el valor real del bien asegurado en el momento del sinietro vs el valor en estado nuevo',3,4),

    ('Seguro de coche','Ofrece coberturas de los gastos relacionados a siniestros con el vehículo asegurado',4,4),
    ('Seguro de transporte','Ofrece cobertura ante perdida o daños de los bienes asegurados a consecuencia de riesgos de transporte',4,4),
    ('Seguro de responsabilidad civil','Ofrece cobertura contra reclamaciones de indemnizaciones por daños personales o materiales',4,3);


INSERT INTO "SEGURO_G28052110"."EVALUACION_SERVICIO" (descripcion_evaluacion)
VALUES 
    ('1.- Malo'),
    ('2.- Regular'),
    ('3.- Bueno'),
    ('4.- Muy Bueno'),
    ('5.- Excelente');

INSERT INTO "SEGURO_G28052110"."RECOMIENDA" (codigo_cliente, codigo_evaluacion_servicio, codigo_producto, recomienda_amigo)
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

INSERT INTO "SEGURO_G28052110"."CONTRATO" (descripcion_contrato)
VALUES 
    ('Contrato de seguro de salud para personas menores a 18 años de edad'),
    ('Contrato de seguro de salud para personas mayores a 60 años de edad'),
    ('Contrato de seguro de salud para personas meyores a 18 años y menores a 60 años'),
    
    ('Contrato de seguro de defensa juridica con coberturas de los gastos relacionados a reclamaciones judiciales y litigios'),
    ('Contrato de seguro asistencia de viaje con coberturas imprevistos durante el viaje'),
    ('Contrato de seguro contra decesos con coberturas de gastos de sepelio del asegurando según el capital contratado'),
    
    ('Contrato de seguro con coberturas de los daños producidos si se incendia el objeto asegurado'),
    ('Contrato de seguro con coberturas de los gastos relacionados al robo o hurto del vehículo asegurado mediando violencia o intimidacion'),
    ('Contrato de seguro con coberturas de los pagos de la diferencia existente entre el valor real del bien asegurado en el momento del sinietro vs el valor en estado nuevo'),

    ('Contrato de seguro con coberturas de los gastos relacionados a siniestros con el vehículo asegurado'),
    ('Contrato de seguro con cobertura ante perdida o daños de los bienes asegurados a consecuencia de riesgos de transporte'),
    ('Contrato de seguro con cobertura contra reclamaciones de indemnizaciones por daños personales o materiales');

INSERT INTO "SEGURO_G28052110"."REGISTRO_CONTRATOS" (numero_contrato, codigo_cliente, codigo_producto, codigo_sucursal, fecha_inicio, fecha_fin, monto, estado_contrato)
VALUES
    (1, 1, 1, 1,  '2022-01-04', '2023-01-04', 1000.00, 'activo'),
    (2, 2, 2, 2, '2022-02-04', '2023-02-04', 750.00, 'activo'),
    (3, 3, 3, 3, '2022-03-04', '2023-03-04', 1500.00, 'activo'),
    (1, 4, 1, 4, '2022-04-04', '2023-04-04', 3000.00, 'activo'),
    (2, 5, 2, 5, '2022-05-04', '2023-05-04', 6000.00, 'vencido'),
    (3, 6, 3, 6, '2022-06-04', '2023-06-04', 2000.00, 'activo'),
    (1, 7, 1, 7, '2022-07-04', '2023-07-04', 1300.00, 'activo'),
    (2, 8, 2, 8, '2022-08-04', '2023-08-04', 2300.00, 'activo'),
    (3, 9, 3, 9, '2022-09-04', '2023-09-04', 1250.00, 'activo'),
    (1, 10, 1, 10, '2022-10-04', '2023-10-04', 500.00, 'activo'),
    (2, 11, 2, 11, '2022-11-04', '2023-11-04', 100.00, 'vencido'),
    (3, 12, 3, 12, '2022-12-04', '2023-12-04', 1230.00, 'vencido'),
    (1, 13, 1, 1, '2022-01-04', '2023-01-04', 1230.00, 'activo'),
    (2, 14, 2, 2, '2022-02-04', '2023-02-04', 1000.00, 'activo'),
    (3, 15, 3, 3, '2022-03-04', '2023-03-04', 1000.00, 'activo'),
    (1, 16, 1, 4, '2022-04-04', '2023-04-04', 4000.00, 'vencido'),
    (2, 17, 2, 5, '2022-05-04', '2023-05-04', 10000.00, 'vencido'),
    (3, 18, 3, 6, '2022-06-04', '2023-06-04', 1500.00, 'vencido'),
    (1, 19, 1, 7, '2022-07-04', '2023-07-04', 7000.00, 'vencido'),
    (2, 20, 2, 8, '2022-08-04', '2023-08-04', 12000.00, 'vencido'),
    (3, 21, 3, 9, '2022-09-04', '2023-09-04', 1400.00, 'activo'),
    (1, 22, 1, 10, '2022-10-04', '2023-10-04', 1550.00, 'activo'),
    (2, 23, 2, 11, '2022-11-04', '2023-11-04', 1020.00, 'activo'),
    (3, 24, 3, 12, '2022-12-04', '2023-12-04', 1000.00, 'activo'),
    (4, 1, 4, 1,  '2022-01-04', '2023-01-04', 2000.00, 'activo'),
    (5, 2, 5, 2, '2022-02-04', '2023-02-04', 850.00, 'activo'),
    (6, 3, 6, 3, '2022-03-04', '2023-03-04', 2500.00, 'activo'),
    (7, 4, 7, 4, '2022-04-04', '2023-04-04', 1000.00, 'activo'),
    (8, 5, 8, 5, '2022-05-04', '2023-05-04', 4000.00, 'vencido'),
    (9, 6, 9, 6, '2022-06-04', '2023-06-04', 6000.00, 'vencido'),
    (10, 7, 10, 7, '2022-07-04', '2023-07-04', 2300.00, 'activo'),
    (11, 8, 11, 8, '2022-08-04', '2023-08-04', 3300.00, 'vencido'),
    (12, 9, 12, 9, '2022-09-04', '2023-09-04', 4250.00, 'activo'),

    (4, 25, 5, 4,  '2024-01-04', '2025-01-04', 10000.00, 'activo'),
    (6, 26, 6, 5, '2024-02-04', '2025-02-04', 1250.00, 'activo'),
    (3, 27, 3, 6, '2024-03-04', '2025-03-04', 6500.00, 'activo'),
    (1, 28, 1, 7, '2024-04-04', '2025-04-04', 2000.00, 'activo'),
    (7, 29, 7, 8, '2024-05-04', '2025-05-04', 4000.00, 'vencido'),
    (3, 30, 3, 9, '2024-06-04', '2025-06-04', 1000.00, 'activo'),
    (1, 31, 1, 1, '2024-07-04', '2025-07-04', 4300.00, 'activo'),
    (8, 32, 8, 2, '2024-08-04', '2025-08-04', 5300.00, 'activo'),
    (3, 33, 3, 3, '2024-09-04', '2025-09-04', 3250.00, 'activo'),
    (1, 34, 1, 4, '2024-10-04', '2025-10-04', 1500.00, 'activo'),
    (2, 35, 2, 5, '2024-11-04', '2025-11-04', 800.00, 'vencido'),
    (3, 36, 3, 6, '2024-12-04', '2025-12-04', 4230.00, 'vencido'),
    (9, 37, 9, 7, '2024-01-04', '2025-01-04', 6230.00, 'activo'),
    (2, 38, 2, 8, '2024-02-04', '2025-02-04', 5000.00, 'activo'),
    (3, 39, 3, 9, '2024-03-04', '2025-03-04', 4000.00, 'activo'),
    (1, 40, 1, 10, '2024-04-04', '2025-04-04', 6000.00, 'vencido'),
    (2, 41, 2, 11, '2024-05-04', '2025-05-04', 8000.00, 'vencido'),
    (3, 42, 3, 12, '2024-06-04', '2025-06-04', 6500.00, 'vencido'),
    (10, 43, 10, 7, '2024-07-04', '2025-07-04', 5000.00, 'vencido'),
    (2, 44, 2, 1, '2024-08-04', '2025-08-04', 32000.00, 'vencido'),
    (3, 45, 3, 2, '2024-09-04', '2025-09-04', 1400.00, 'activo'),
    (7, 46, 7, 3, '2024-10-04', '2025-10-04', 11550.00, 'activo'),
    (2, 47, 2, 4, '2024-11-04', '2025-11-04', 4020.00, 'activo'),
    (3, 48, 3, 5, '2024-12-04', '2025-12-04', 6000.00, 'activo'),
    (4, 25, 4, 6,  '2024-01-04', '2025-01-04', 8000.00, 'activo'),
    (12, 26, 12, 2, '2024-02-04', '2025-02-04', 1850.00, 'activo'),
    (6, 27, 6, 11, '2024-03-04', '2025-03-04', 3500.00, 'activo'),
    (7, 28, 7, 7, '2024-04-04', '2025-04-04', 5000.00, 'activo'),
    (8, 29, 8, 8, '2024-05-04', '2025-05-04', 6000.00, 'vencido'),
    (9, 30, 9, 9, '2024-06-04', '2025-06-04', 5000.00, 'vencido'),
    (10, 31, 10,10, '2024-07-04', '2025-07-04', 4300.00, 'activo'),
    (11, 32, 11,11, '2024-08-04', '2025-08-04', 8300.00, 'vencido'),
    (12, 33, 12,12, '2024-09-04', '2025-09-04', 1250.00, 'activo'),
    (2, 15, 2, 2, '2024-02-04', '2025-02-04', 750.00, 'activo'),
    (3, 16, 3, 3, '2024-03-04', '2025-03-04', 1500.00, 'activo'),
    (1, 17, 1, 4, '2024-04-04', '2025-04-04', 3000.00, 'activo'),
    (2, 18, 2, 5, '2024-05-04', '2025-05-04', 6000.00, 'vencido'),
    (3, 19, 3, 6, '2024-06-04', '2025-06-04', 2000.00, 'activo'),
    (1, 20, 1, 7, '2024-07-04', '2025-07-04', 1300.00, 'activo'),
    (2, 21, 2, 8, '2024-08-04', '2025-08-04', 2300.00, 'activo'),
    (3, 22, 3, 9, '2024-09-04', '2025-09-04', 1250.00, 'activo'),
    (1, 23, 1, 10, '2024-10-04', '2025-10-04', 500.00, 'activo'),
    (2, 24, 2, 11, '2024-11-04', '2025-11-04', 100.00, 'vencido'),
    (3, 17, 3, 12, '2024-12-04', '2025-12-04', 1230.00, 'vencido'),
    (1, 18, 1, 1, '2024-01-04', '2025-01-04', 1230.00, 'activo'),
    (2, 19, 2, 2, '2024-02-04', '2025-02-04', 1000.00, 'activo'),
    (3, 20, 3, 3, '2024-03-04', '2025-03-04', 1000.00, 'activo'),
    (1, 21, 1, 4, '2024-04-04', '2025-04-04', 4000.00, 'vencido'),
    (2, 22, 2, 5, '2024-05-04', '2025-05-04', 10000.00, 'vencido'),
    (3, 23, 3, 6, '2024-06-04', '2025-06-04', 1500.00, 'vencido'),
    (1, 24, 1, 7, '2024-07-04', '2025-07-04', 7000.00, 'vencido'),
    (2, 1, 2, 8, '2024-08-04', '2025-08-04', 12000.00, 'vencido'),
    (3, 2, 3, 9, '2024-09-04', '2025-09-04', 1400.00, 'activo'),
    (1, 1, 1, 10, '2024-10-04', '2025-10-04', 1550.00, 'activo'),
    (2, 2, 2, 11, '2024-11-04', '2025-11-04', 1020.00, 'activo'),
    (3, 3, 3, 12, '2024-12-04', '2025-12-04', 1000.00, 'activo'),
    (4, 4, 4, 1,  '2024-01-04', '2025-01-04', 2000.00, 'activo'),
    (5, 5, 5, 2, '2024-02-04', '2025-02-04', 850.00, 'activo'),
    (6, 6, 6, 3, '2024-03-04', '2025-03-04', 2500.00, 'activo'),
    (7, 7, 7, 4, '2024-04-04', '2025-04-04', 1000.00, 'activo'),
    (8, 8, 8, 5, '2024-05-04', '2025-05-04', 4000.00, 'vencido'),
    (9, 9, 9, 6, '2024-06-04', '2025-06-04', 6000.00, 'vencido'),
    (10, 10, 10, 7, '2024-07-04', '2025-07-04', 2300.00, 'activo'),
    (11, 11, 11, 8, '2024-08-04', '2025-08-04', 3300.00, 'vencido'),
    (12, 12, 12, 9, '2024-09-04', '2025-09-04', 4250.00, 'activo'),

    (4, 25, 4, 7,  '2023-01-04', '2024-01-04', 10000.00, 'activo'),
    (6, 26, 5, 8, '2023-02-04', '2024-02-04', 1250.00, 'activo'),
    (3, 27, 3, 9, '2023-03-04', '2024-03-04', 6500.00, 'activo'),
    (1, 28, 1, 10, '2023-04-04', '2024-04-04', 2000.00, 'activo'),
    (7, 29, 7, 11, '2023-05-04', '2024-05-04', 4000.00, 'vencido'),
    (3, 30, 3, 3, '2023-06-04', '2024-06-04', 1000.00, 'activo'),
    (1, 31, 1, 4, '2023-07-04', '2024-07-04', 4300.00, 'activo'),
    (8, 32, 8, 5, '2023-08-04', '2024-08-04', 5300.00, 'activo'),
    (3, 33, 3, 6, '2023-09-04', '2024-09-04', 3250.00, 'activo'),
    (1, 34, 1, 7, '2023-10-04', '2024-10-04', 1500.00, 'activo'),
    (2, 35, 2, 8, '2023-11-04', '2024-11-04', 800.00, 'vencido'),
    (3, 36, 3, 9, '2023-12-04', '2024-12-04', 4230.00, 'vencido'),
    (9, 37, 9, 10, '2023-01-04', '2024-01-04', 6230.00, 'activo'),
    (2, 38, 2, 11, '2023-02-04', '2024-02-04', 5000.00, 'activo'),
    (3, 39, 3, 12, '2023-03-04', '2024-03-04', 4000.00, 'activo'),
    (1, 40, 1, 12, '2023-04-04', '2024-04-04', 6000.00, 'vencido'),
    (2, 41, 2, 10, '2023-05-04', '2024-05-04', 8000.00, 'vencido'),
    (3, 42, 3, 11, '2023-06-04', '2024-06-04', 6500.00, 'vencido'),
    (10, 43, 10, 10, '2023-07-04', '2024-07-04', 5000.00, 'vencido'),
    (2, 44, 2, 11, '2023-08-04', '2024-08-04', 32000.00, 'vencido'),
    (3, 45, 3, 12, '2023-09-04', '2024-09-04', 1400.00, 'activo'),
    (7, 46, 7, 7, '2023-10-04', '2024-10-04', 11550.00, 'activo'),
    (2, 47, 2, 8, '2023-11-04', '2024-11-04', 4020.00, 'activo'),
    (3, 48, 3, 9, '2023-12-04', '2024-12-04', 6000.00, 'activo');


INSERT INTO "SEGURO_G28052110"."SINIESTRO" (descripcion_siniestro)
VALUES 
    ('Accidente de tránsito'),
    ('Incendio'),
    ('Robo'),
    ('Hurto'),
    ('Daños materiales'),
    ('Daños personales');

INSERT INTO "SEGURO_G28052110"."REGISTRO_SINIESTRO" (numero_siniestro, numero_contrato, codigo_cliente, codigo_producto, codigo_sucursal, fecha_siniestro, fecha_respuesta, id_rechazo, monto_reconocido, monto_solicitado)
VALUES 
    (1, 1, 1, 1, 1, '2024-06-06', '2024-06-06', 'no', 1000.00, 1000.00),
    (2, 2, 2, 2, 2, '2024-06-07', '2024-06-07', 'no', 1000.00, 1000.00),
    (3, 3, 3, 3, 3, '2024-06-08', '2024-06-08', 'no', 1000.00, 1000.00),
    (4, 1, 4, 1, 4, '2024-06-12', '2024-06-12', 'no', 1000.00, 1000.00),
    (5, 2, 5, 2, 5, '2024-06-14', '2024-06-14', 'no', 1000.00, 1000.00),
    (6, 3, 6, 3, 6, '2024-06-24', '2024-06-24', 'no', 100.00, 1000.00),
    (1, 1, 7, 1, 7, '2024-06-29', '2024-06-29', 'si', 100.00, 1000.00),
    (2, 2, 8, 2, 8, '2024-07-02', '2024-07-02', 'si', 100.00, 1000.00),
    (3, 3, 9, 3, 9, '2024-07-05', '2024-07-05', 'si', 150.00, 1000.00),
    (4, 1, 10, 1, 10, '2024-07-06', '2024-07-06', 'no', 1000.00, 1000.00),
    (5, 2, 11, 2, 11, '2024-07-07', '2024-07-07', 'no', 1000.00, 1000.00),
    (6, 3, 12, 3, 12, '2024-07-08', '2024-07-08', 'no', 1000.00, 1000.00),
    (1, 1, 13, 1, 1, '2024-07-12', '2024-07-12', 'no', 1000.00, 1000.00),
    (2, 2, 14, 2, 2, '2024-07-14', '2024-07-14', 'no', 1000.00, 1000.00),
    (3, 3, 15, 3, 3, '2024-07-24', '2024-07-24', 'no', 1000.00, 1000.00),
    (4, 1, 16, 1, 4, '2024-07-29', '2024-07-29', 'no', 1000.00, 1000.00),
    (5, 2, 17, 2, 5, '2024-08-06', '2024-08-06', 'no', 1000.00, 1000.00),
    (6, 3, 18, 3, 6, '2024-08-07', '2024-08-07', 'no', 1000.00, 1000.00),
    (1, 1, 19, 1, 7, '2024-08-08', '2024-08-08', 'no', 1000.00, 1000.00),
    (2, 2, 20, 2, 8, '2024-08-12', '2024-08-12', 'no', 1000.00, 1000.00),
    (3, 3, 21, 3, 9, '2024-08-14', '2024-08-14', 'no', 1000.00, 1000.00),
    (4, 1, 22, 1, 10, '2024-08-24', '2024-08-24', 'si', 200.00, 1000.00),
    (5, 2, 23, 2, 11, '2024-08-29', '2024-08-29', 'si', 120.00, 1000.00),
    (6, 3, 24, 3, 12, '2024-09-04', '2024-09-04', 'si', 500.00, 1000.00);

INSERT INTO "SEGURO_G28052110"."METAS" (fecha_inicio, fecha_fin, codigo_producto, numero_contrato, meta_ingreso, meta_renovacion, meta_asegurados)
VALUES
    ('2024-01-01', '2025-01-01', 1, 1, 2000.00, 2000.00, 100),
    ('2024-02-01', '2025-02-01', 2, 2, 5000.00, 5000.00, 100),
    ('2024-01-01', '2025-01-01', 3, 3, 1000.00, 1000.00, 100), 
    ('2024-02-01', '2025-02-01', 4, 4, 6000.00, 6000.00, 100),
    ('2024-01-01', '2025-01-01', 5, 5, 8000.00, 8000.00, 100),
    ('2024-02-01', '2025-02-01', 6, 6, 6000.00, 6000.00, 100),
    ('2024-01-01', '2025-01-01', 7, 7, 4000.00, 4000.00, 100),
    ('2024-02-01', '2025-02-01', 8, 8, 5000.00, 5000.00, 100),
    ('2024-01-01', '2025-01-01', 9, 9, 10000.00, 10000.00, 100),
    ('2024-02-01', '2025-02-01', 10, 10, 5000.00, 5000.00, 100),
    ('2024-01-01', '2025-01-01', 11, 11, 6000.00, 6000.00, 100),
    ('2024-02-01', '2025-02-01', 12, 12, 5000.00, 5000.00, 100);