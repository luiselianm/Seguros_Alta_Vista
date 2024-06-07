CREATE TABLE "Modelo_Dimensional"."DIM_TIEMPO" (
    "SK_DIM_TIEMPO" SERIAL PRIMARY KEY,
    "COD_ANNIO" INT NOT NULL,
    "COD_MES" INT NOT NULL,
    "COD_DIA_ANNIO" INT NOT NULL,
    "COD_DIA_MES" INT NOT NULL,
    "COD_SEMANA" INT NOT NULL,
    "DESC_DIA_SEMANA" VARCHAR(10) NOT NULL,
    "DESC_DIA_SEMANA_CORTA" VARCHAR(5) NOT NULL,
    "DESC_MES" VARCHAR(20) NOT NULL,
    "DESC_MES_CORTO" VARCHAR(3) NOT NULL,
    "DESC_TRIMESTRE" INT NOT NULL,
    "DESC_SEMESTRE" INT NOT NULL,
    "FECHA_COMPLETA" DATE NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_CLIENTE" (
    "SK_DIM_CLIENTE" SERIAL PRIMARY KEY,
    "COD_CLIENTE" INT NOT NULL,
    "NOMBRE_CLIENTE" VARCHAR(25) NOT NULL,
    "CI_RIF" VARCHAR(45) NOT NULL,
    "TELEFONO" VARCHAR(45) NOT NULL,
    "DIRECCION" VARCHAR(45) NOT NULL,
    "SEXO" VARCHAR(45) NOT NULL,
    "EMAIL" VARCHAR(45) NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_PRODUCTO"( 
    "SK_DIM_PRODUCTO" SERIAL PRIMARY KEY,
    "COD_PRODUCTO" INT NOT NULL,
    "NOMBRE_PRODUCTO" VARCHAR(25) NOT NULL,
    "DESCRIPCION_PRODUCTO" VARCHAR(100) NOT NULL,
    "COD_TIPO_PRODUCTO" VARCHAR(25) NOT NULL,
    "NOMBRE_TIPO_PRODUCTO" VARCHAR(25) NOT NULL,
    "CALIFICACION" REAL NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_CONTRATO" (
    "SK_DIM_CONTRATO" SERIAL PRIMARY KEY,
    "NUMERO_CONTRATO" INT NOT NULL,
    "DESCRIPCION_CONTRATO" VARCHAR(25) NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_ESTADO_CONTRATO" (
    "SK_DIM_ESTADO_CONTRATO" SERIAL PRIMARY KEY,
    "COD_ESTADO_CONTRATO" INT NOT NULL,
    "DESCRIPCION_ESTADO_CONTRATO" VARCHAR(25) NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_EVALUACION_SERVICIO"( 
    "SK_DIM_EVALUACION_SERVICIO" SERIAL PRIMARY KEY,
    "COD_EVALUACION_SERVICIO" INT NOT NULL,
    "NOMBRE_EVALUACION" VARCHAR(25) NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_SINIESTRO" (
    "SK_DIM_SINIESTRO" SERIAL PRIMARY KEY,
    "NUMERO_SINIESTRO" INT NOT NULL,
    "DESCRIPCION_SINIESTRO" VARCHAR(25) NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."DIM_SUCURSAL" (
    "SK_DIM_SUCURSAL" SERIAL PRIMARY KEY,
    "COD_SUCURSAL" INT NOT NULL,
    "NOMBRE_SUCURSAL" VARCHAR(25) NOT NULL,
    "CODIGO_CIUDAD" VARCHAR(45) NOT NULL,
    "NOMBRE_CIUDAD" VARCHAR(45) NOT NULL,
    "CODIGO_PAIS" VARCHAR(45) NOT NULL,
    "NOMBRE_PAIS" VARCHAR(45) NOT NULL
);

CREATE TABLE "Modelo_Dimensional"."FACT_METAS" (
    "SK_FECHA_INICIO_META" INT NOT NULL,
    "SK_FECHA_FIN_META" INT NOT NULL,
    "SK_DIM_CLIENTE" INT NOT NULL,
    "SK_DIM_PRODUCTO" INT NOT NULL,
    "SK_DIM_CONTRATO" INT NOT NULL,
    "MONTO_META_INGRESO" REAL NOT NULL,
    "META_RENOVACION" INT NOT NULL,
    "META_ASEGURADOS" INT NOT NULL,
    FOREIGN KEY ("SK_FECHA_INICIO_META") REFERENCES "Modelo_Dimensional"."DIM_TIEMPO"("SK_DIM_TIEMPO"),
    FOREIGN KEY ("SK_FECHA_FIN_META") REFERENCES "Modelo_Dimensional"."DIM_TIEMPO"("SK_DIM_TIEMPO"),
    FOREIGN KEY ("SK_DIM_CLIENTE") REFERENCES "Modelo_Dimensional"."DIM_CLIENTE"("SK_DIM_CLIENTE"),
    FOREIGN KEY ("SK_DIM_PRODUCTO") REFERENCES "Modelo_Dimensional"."DIM_PRODUCTO"("SK_DIM_PRODUCTO"),
    FOREIGN KEY ("SK_DIM_CONTRATO") REFERENCES "Modelo_Dimensional"."DIM_CONTRATO"("SK_DIM_CONTRATO"),
    PRIMARY KEY ("SK_FECHA_INICIO_META", "SK_FECHA_FIN_META", "SK_DIM_CLIENTE", "SK_DIM_PRODUCTO", "SK_DIM_CONTRATO")
);

CREATE TABLE "Modelo_Dimensional"."FACT_EVALUACION_SERVICIO" (
    "SK_DIM_CLIENTE" INT NOT NULL,
    "SK_DIM_PRODUCTO" INT NOT NULL,
    "SK_DIM_EVALUACION_SERVICIO" INT NOT NULL,
    "CANTIDAD" INT NOT NULL,
    "RECOMIENDA_AMIGO" REAL NOT NULL,
    FOREIGN KEY ("SK_DIM_CLIENTE") REFERENCES "Modelo_Dimensional"."DIM_CLIENTE"("SK_DIM_CLIENTE"),
    FOREIGN KEY ("SK_DIM_PRODUCTO") REFERENCES "Modelo_Dimensional"."DIM_PRODUCTO"("SK_DIM_PRODUCTO"),
    FOREIGN KEY ("SK_DIM_EVALUACION_SERVICIO") REFERENCES "Modelo_Dimensional"."DIM_EVALUACION_SERVICIO"("SK_DIM_EVALUACION_SERVICIO"),
    PRIMARY KEY ("SK_DIM_CLIENTE", "SK_DIM_PRODUCTO", "SK_DIM_EVALUACION_SERVICIO")
);

CREATE TABLE "Modelo_Dimensional"."FACT_REGISTRO_CONTRATO" (
    "SK_FECHA_INICIO_CONTRATO" INT NOT NULL,
    "SK_FECHA_FIN_CONTRATO" INT NOT NULL,
    "SK_DIM_CLIENTE" INT NOT NULL,
    "SK_DIM_CONTRATO" INT NOT NULL,
    "SK_DIM_PRODUCTO" INT NOT NULL,
    "SK_DIM_ESTADO_CONTRATO" INT NOT NULL,
    "MONTO_CONTRATO" REAL NOT NULL,
    "CANTIDAD" INT NOT NULL,
    "CANTIDAD_CLIENTES" INT NOT NULL,
    "CANTIDAD_PRODUCTO" INT NOT NULL,
    "CANTIDAD_CONTRATO" INT NOT NULL,
    FOREIGN KEY ("SK_FECHA_INICIO_CONTRATO") REFERENCES "Modelo_Dimensional"."DIM_TIEMPO"("SK_DIM_TIEMPO"),
    FOREIGN KEY ("SK_FECHA_FIN_CONTRATO") REFERENCES "Modelo_Dimensional"."DIM_TIEMPO"("SK_DIM_TIEMPO"),
    FOREIGN KEY ("SK_DIM_CLIENTE") REFERENCES "Modelo_Dimensional"."DIM_CLIENTE"("SK_DIM_CLIENTE"),
    FOREIGN KEY ("SK_DIM_CONTRATO") REFERENCES "Modelo_Dimensional"."DIM_CONTRATO"("SK_DIM_CONTRATO"),
    FOREIGN KEY ("SK_DIM_PRODUCTO") REFERENCES "Modelo_Dimensional"."DIM_PRODUCTO"("SK_DIM_PRODUCTO"),
    FOREIGN KEY ("SK_DIM_ESTADO_CONTRATO") REFERENCES "Modelo_Dimensional"."DIM_ESTADO_CONTRATO"("SK_DIM_ESTADO_CONTRATO"),
    PRIMARY KEY ("SK_FECHA_INICIO_CONTRATO", "SK_FECHA_FIN_CONTRATO", "SK_DIM_CLIENTE", "SK_DIM_CONTRATO", "SK_DIM_PRODUCTO", "SK_DIM_ESTADO_CONTRATO")
);

CREATE TABLE "Modelo_Dimensional"."FACT_REGISTRO_SINIESTRO" (
    "SK_FECHA_SINIESTRO" INT NOT NULL,
    "SK_FECHA_RESPUESTA" INT NOT NULL,
    "SK_DIM_CLIENTE" INT NOT NULL,
    "SK_DIM_CONTRATO" INT NOT NULL,
    "SK_DIM_SUCURSAL" INT NOT NULL,
    "SK_DIM_PRODUCTO" INT NOT NULL,
    "SK_DIM_SINIESTRO" INT NOT NULL,
    "CANTIDAD" INT NOT NULL,
    "MONTO_RECONOCIDO" REAL NOT NULL,
    "MONTO_SOLICITADO" REAL NOT NULL,
    "ID_RECHAZO" CHAR(2) NOT NULL,
    FOREIGN KEY ("SK_FECHA_SINIESTRO") REFERENCES "Modelo_Dimensional"."DIM_TIEMPO"("SK_DIM_TIEMPO"),
    FOREIGN KEY ("SK_FECHA_RESPUESTA") REFERENCES "Modelo_Dimensional"."DIM_TIEMPO"("SK_DIM_TIEMPO"),
    FOREIGN KEY ("SK_DIM_CLIENTE") REFERENCES "Modelo_Dimensional"."DIM_CLIENTE"("SK_DIM_CLIENTE"),
    FOREIGN KEY ("SK_DIM_CONTRATO") REFERENCES "Modelo_Dimensional"."DIM_CONTRATO"("SK_DIM_CONTRATO"),
    FOREIGN KEY ("SK_DIM_SUCURSAL") REFERENCES "Modelo_Dimensional"."DIM_SUCURSAL"("SK_DIM_SUCURSAL"),
    FOREIGN KEY ("SK_DIM_PRODUCTO") REFERENCES "Modelo_Dimensional"."DIM_PRODUCTO"("SK_DIM_PRODUCTO"),
    FOREIGN KEY ("SK_DIM_SINIESTRO") REFERENCES "Modelo_Dimensional"."DIM_SINIESTRO"("SK_DIM_SINIESTRO"),
    PRIMARY KEY ("SK_FECHA_SINIESTRO", "SK_FECHA_RESPUESTA", "SK_DIM_CLIENTE", "SK_DIM_CONTRATO", "SK_DIM_SUCURSAL", "SK_DIM_PRODUCTO", "SK_DIM_SINIESTRO")
);