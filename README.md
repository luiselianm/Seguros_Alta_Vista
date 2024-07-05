<p align="center">
  <a href="https://www.postgresql.org/" target="blank">
    <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" width="150" />
  </a>

  <a href="https://www.microsoft.com/es-es/power-platform/products/power-bi/desktop" target="blank">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/New_Power_BI_Logo.svg/2048px-New_Power_BI_Logo.svg.png" width="150" />
  </a>
</p>

# Proyecto Seguros Alta Vista

Proyecto realizado en la materia de Inteligencia de Negocios en la UCAB

## Para correr el proyecto

1. Clonar el repositorio.

2. Crear la base de datos PostgreSQL dentro de PgAdmin.

3. Crear 2 schemas dentro de la base de datos creada ```SEGURO_DW_G28052110``` para el modelo dimensional y ```SEGURO_G28052110``` para el modelo relacional.

4. Ejecutar los creates y las seed del modelo relacional dentro de un Query Tool.

5. Crear la conexión a la base de datos dentro de cada proceso ETL.

6. Ejecutar el ```Job_Run_All_ETLs``` para llenar todas las dimensiones y las tablas de hechos.
   
