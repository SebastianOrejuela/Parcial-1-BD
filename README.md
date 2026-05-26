# Sistema de Turnos - Servicios LiMar

Este repositorio contiene el código SQL y la documentación para el despliegue de la base de datos del Parcial Práctico No. 1 de la asignatura Bases de Datos en la Universidad del Valle.

## Herramientas y Tecnologías Utilizadas
* **Docker:** Para el despliegue de contenedores.
* **PostgreSQL v14:** Motor de base de datos relacional.
* **pgAdmin 4:** Herramienta de administración y entorno gráfico.

## Archivos del Repositorio
* `codigo_parcial.sql`: Contiene las instrucciones DDL (creación de las tablas `Usuario` y `Turno`) y DML (inserción de 10 registros de prueba por tabla).

## Despliegue
Los contenedores fueron desplegados en puertos locales (5432 para Postgres y 5050 para pgAdmin) y conectados a través de la red interna de Docker (`host.docker.internal`).
