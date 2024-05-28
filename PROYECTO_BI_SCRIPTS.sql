CREATE TABLE "PAIS" (
 "codigo_pais" INT PRIMARY KEY,
 "nombre_pais" VARCHAR(255) NOT NULL
);


CREATE TABLE "CIUDAD" (
 "codigo_ciudad" INT PRIMARY KEY,
 "nombre_ciudad" VARCHAR(255) NOT NULL,
 "codigo_pais" INT NOT NULL,
 FOREIGN KEY ("codigo_pais") REFERENCES "PAIS"("codigo_pais")
);


CREATE TABLE "SUCURSAL" (
 "codigo_sucursal" INT PRIMARY KEY,
 "nombre_sucursal" VARCHAR(255) NOT NULL,
 "codigo_ciudad" INT NOT NULL,
 FOREIGN KEY ("codigo_ciudad") REFERENCES "CIUDAD"("codigo_ciudad")
);


CREATE TABLE "CLIENTE" (
 "codigo_cliente" INT PRIMARY KEY,
 "codigo_sucursal" INT NOT NULL,
 "cedula_rif" VARCHAR(255) NOT NULL,
 "nombre_cliente" VARCHAR(255) NOT NULL,
 "telefono" VARCHAR(255) NOT NULL,
 "email" VARCHAR(255) NOT NULL,
 "sexo" CHAR(1) NOT NULL,
 "direccion" VARCHAR(255) NOT NULL,
 FOREIGN KEY ("codigo_sucursal") REFERENCES "SUCURSAL"("codigo_sucursal")
);


CREATE TABLE "TIPO_PRODUCTO" (
 "codigo_tipo_producto" INT PRIMARY KEY,
 "nombre_tipo_producto" VARCHAR(255) NOT NULL
);


CREATE TABLE "PRODUCTO" (
 "codigo_producto" INT PRIMARY KEY,
 "nombre_producto" VARCHAR(255) NOT NULL,
 "descripcion" TEXT,
 "codigo_tipo_producto" INT NOT NULL,
 "calificacion" DECIMAL(3,2) NOT NULL,
 FOREIGN KEY ("codigo_tipo_producto") REFERENCES "TIPO_PRODUCTO"("codigo_tipo_producto")
);


CREATE TABLE "EVALUACION_SERVICIO" (
 "codigo_evaluacion_servicio" INT PRIMARY KEY,
 "descripcion_evaluacion" TEXT NOT NULL
);


CREATE TABLE "RECOMIENDA" (
 "codigo_cliente" INT NOT NULL,
 "codigo_evaluacion_servicio" INT NOT NULL,
 "codigo_producto" INT NOT NULL,
 "recomienda_amigo" BOOLEAN NOT NULL,
 PRIMARY KEY ("codigo_cliente", "codigo_evaluacion_servicio", "codigo_producto")
);


CREATE TABLE "CONTRATO" (
 "numero_contrato" INT PRIMARY KEY,
 "descripcion_contrato" TEXT NOT NULL
);


CREATE TABLE "REGISTRO_CONTRATO" (
 "numero_contrato" INT NOT NULL,
 "codigo_producto" INT NOT NULL,
 "codigo_cliente" INT NOT NULL,
 "fecha_inicio" DATE,
 "fecha_fin" DATE,
 "monto" DECIMAL(10,2),
 "estado_contrato" VARCHAR(255),
 PRIMARY KEY ("numero_contrato", "codigo_producto", "codigo_cliente")
);


CREATE TABLE "SINIESTRO" (
 "numero_siniestro" INT PRIMARY KEY,
 "descripcion_siniestro" TEXT NOT NULL
);


CREATE TABLE "REGISTRO_SINIESTRO" (
 "numero_siniestro" INT NOT NULL,
 "numero_contrato" INT NOT NULL,
 "fecha_siniestro" DATE NOT NULL,
 "fecha_respuesta" DATE NOT NULL,
 "id_rechazo" INT NOT NULL,
 "monto_reconocido" DECIMAL(10,2) NOT NULL,
 "monto_solicitado" DECIMAL(10,2) NOT NULL,
 PRIMARY KEY ("numero_siniestro", "numero_contrato")
);
