CREATE TABLE "Modelo_Relacional"."PAIS" (
    "codigo_pais" SERIAL PRIMARY KEY,
    "nombre_pais" VARCHAR(255) NOT NULL UNIQUE
);


CREATE TABLE "Modelo_Relacional"."CIUDAD" (
    "codigo_ciudad" SERIAL PRIMARY KEY,
    "nombre_ciudad" VARCHAR(255) NOT NULL,
    "codigo_pais" INT NOT NULL,
    FOREIGN KEY ("codigo_pais") REFERENCES "Modelo_Relacional"."PAIS"("codigo_pais")
);


CREATE TABLE "Modelo_Relacional"."SUCURSAL" (
    "codigo_sucursal" SERIAL PRIMARY KEY,
    "nombre_sucursal" VARCHAR(255) NOT NULL UNIQUE,
    "codigo_ciudad" INT NOT NULL,
    FOREIGN KEY ("codigo_ciudad") REFERENCES "Modelo_Relacional"."CIUDAD"("codigo_ciudad")
);


CREATE TABLE "Modelo_Relacional"."CLIENTE" (
    "codigo_cliente" SERIAL PRIMARY KEY,
    "codigo_sucursal" INT NOT NULL,
    "cedula_rif" VARCHAR(255) NOT NULL UNIQUE,
    "nombre_cliente" VARCHAR(255) NOT NULL,
    "telefono" VARCHAR(255) NOT NULL UNIQUE,
    "email" VARCHAR(255) NOT NULL UNIQUE,
    "sexo" CHAR(10) NOT NULL,
    "direccion" VARCHAR(255) NOT NULL,
    FOREIGN KEY ("codigo_sucursal") REFERENCES "Modelo_Relacional"."SUCURSAL"("codigo_sucursal")
);


CREATE TABLE "Modelo_Relacional"."TIPO_PRODUCTO" (
    "codigo_tipo_producto" SERIAL PRIMARY KEY,
    "nombre_tipo_producto" VARCHAR(255) NOT NULL
);


CREATE TABLE "Modelo_Relacional"."PRODUCTO" (
    "codigo_producto" SERIAL PRIMARY KEY,
    "nombre_producto" VARCHAR(255) NOT NULL,
    "descripcion" TEXT,
    "codigo_tipo_producto" INT NOT NULL,
    "calificacion" INT NOT NULL,
    FOREIGN KEY ("codigo_tipo_producto") REFERENCES "Modelo_Relacional"."TIPO_PRODUCTO"("codigo_tipo_producto")
);


CREATE TABLE "Modelo_Relacional"."EVALUACION_SERVICIO" (
    "codigo_evaluacion_servicio" SERIAL PRIMARY KEY,
    "descripcion_evaluacion" VARCHAR(15) NOT NULL,
    CONSTRAINT "descripcion_evaluacion" CHECK ("descripcion_evaluacion" IN ('1.- Malo', '2.- Regular', '3.- Bueno', '4.- Muy Bueno', '5.- Excelente'))
);


CREATE TABLE "Modelo_Relacional"."RECOMIENDA" (
    "codigo_cliente" INT NOT NULL REFERENCES "Modelo_Relacional"."CLIENTE"("codigo_cliente"),
    "codigo_evaluacion_servicio" INT NOT NULL REFERENCES "Modelo_Relacional"."EVALUACION_SERVICIO"("codigo_evaluacion_servicio"),
    "codigo_producto" INT NOT NULL REFERENCES "Modelo_Relacional"."PRODUCTO"("codigo_producto"),
    "recomienda_amigo" BOOLEAN NOT NULL,
    PRIMARY KEY ("codigo_cliente", "codigo_evaluacion_servicio", "codigo_producto")
);


CREATE TABLE "Modelo_Relacional"."CONTRATO" (
    "numero_contrato" SERIAL PRIMARY KEY,
    "descripcion_contrato" TEXT NOT NULL,
);


CREATE TABLE "Modelo_Relacional"."REGISTRO_CONTRATO" (
    "numero_contrato" INT NOT NULL REFERENCES "Modelo_Relacional"."CONTRATO"("numero_contrato"),
    "codigo_producto" INT NOT NULL REFERENCES "Modelo_Relacional"."PRODUCTO"("codigo_producto"),
    "codigo_cliente" INT NOT NULL REFERENCES "Modelo_Relacional"."CLIENTE"("codigo_cliente"),
    "fecha_inicio" DATE NOT NULL,
    "fecha_fin" DATE,
    "monto" DECIMAL(10,2) NOT NULL,
    "estado_contrato" VARCHAR(255),
    CONSTRAINT "estado_contrato" CHECK ("estado_contrato" IN ('activo', 'vencido', 'suspendido')),
    PRIMARY KEY ("numero_contrato", "codigo_producto", "codigo_cliente")
);


CREATE TABLE "Modelo_Relacional"."SINIESTRO" (
    "numero_siniestro" SERIAL PRIMARY KEY,
    "descripcion_siniestro" TEXT NOT NULL
);


CREATE TABLE "Modelo_Relacional"."REGISTRO_SINIESTRO" (
    "numero_siniestro" INT NOT NULL REFERENCES "Modelo_Relacional"."SINIESTRO"("numero_siniestro"),
    "numero_contrato" INT NOT NULL REFERENCES "Modelo_Relacional"."CONTRATO"("numero_contrato"),
    "fecha_siniestro" DATE NOT NULL,
    "fecha_respuesta" DATE NOT NULL,
    "id_rechazo" CHAR(2) NOT NULL,
    "monto_reconocido" DECIMAL(10,2) NOT NULL,
    "monto_solicitado" DECIMAL(10,2) NOT NULL,
    CONSTRAINT "id_rechazo" CHECK ("id_rechazo" IN ('si', 'no')),
    PRIMARY KEY ("numero_siniestro", "numero_contrato", "fecha_siniestro")
);
