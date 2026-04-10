# Proyecto BBDD

Proyecto de diseño e implementación de una **base de datos relacional** a partir de archivos CSV con información de estudiantes y claustro, desarrollado en **PostgreSQL**.

---

## Objetivo

El objetivo del proyecto fue transformar una estructura plana de datos en un modelo relacional organizado, normalizado y preparado para consultas SQL.

A partir de varios archivos CSV, se trabajó en tres fases principales:

- limpieza y transformación de los datos con **pandas**
- diseño del **modelo entidad-relación** y del **modelo lógico**
- implementación de la base de datos en **PostgreSQL** mediante **pgAdmin**

---

## Datos de entrada

Los archivos utilizados como punto de partida fueron:

- `clase_1.csv`
- `clase_2.csv`
- `clase_3.csv`
- `clase_4.csv`
- `claustro.csv`

Los cuatro archivos de clase contenían información de estudiantes y compartían una estructura similar, por lo que se integraron en un único conjunto de datos.

El archivo `claustro.csv` se trató por separado al corresponder a una entidad diferente dentro del modelo.

---

## Proceso realizado

### 1. Limpieza y transformación
Durante esta fase se realizó:

- concatenación de los archivos de estudiantes
- carga separada de `claustro.csv`
- corrección de pequeñas inconsistencias en columnas y nombres
- transformación de proyectos de formato ancho a formato largo mediante `melt`
- preparación de tablas de referencia y tablas principales

### 2. Normalización
Se separaron los valores repetidos en tablas independientes para reducir redundancia, mejorar la consistencia del modelo y facilitar su mantenimiento.

Entre las tablas de apoyo generadas se encuentran:

- `campus`
- `modalidad`
- `promocion`
- `rol`
- `vertical`
- `tipo_proyecto`

### 3. Modelado
Se elaboró un **diagrama entidad-relación** para representar de forma conceptual las entidades principales y sus relaciones.

Además, se desarrolló un **modelo lógico final** alineado con la estructura implementada en PostgreSQL, incluyendo tablas principales, tablas de apoyo y relaciones mediante claves primarias y foráneas.

### 4. Implementación en PostgreSQL
La base de datos fue implementada en PostgreSQL mediante pgAdmin, con las tablas principales ya creadas y los datos cargados para su posterior demostración.

---

## Estructura de la base de datos

### Tablas principales
- `estudiante`
- `faculty`
- `calificacion`

### Tablas de apoyo
- `campus`
- `modalidad`
- `promocion`
- `rol`
- `vertical`
- `tipo_proyecto`

---

## Diagramas

Los diagramas del proyecto se encuentran en la carpeta `diagramas/`:

- `er_diagrama_final.pdf`
- `er_diagrama_simple.pdf`
- `modelo_logico_final.pdf`

---

## Notebook principal

El proceso de limpieza y transformación de los datos se encuentra en:

- `notebooks/proyect_SQL_cleanup (FINAL).ipynb`

---

## Scripts SQL

Los scripts SQL del proyecto se encuentran en la carpeta `sql/`:

- `01_create_tables.sql`
- `02_queries_demo.sql`

Estos archivos recogen la estructura general del proyecto y las consultas utilizadas como base para la demostración final.

---

## Queries de demostración

Para la demo final se plantearon consultas centradas en:

- estudiantes por promoción
- estudiantes por campus
- estudiantes por vertical
- proyectos con más calificaciones “Apto”
- proyectos con más calificaciones “No Apto”

Estas consultas permiten comprobar que la base ya está preparada para responder preguntas relevantes a partir de su estructura relacional.

---

## Presentación

Presentación editable en Canva:

[https://canva.link/d36afws5q9grnm8](https://canva.link/d36afws5q9grnm8)

---

## Estructura del repositorio

```text
proyecto-bbdd/
├── data/
├── diagramas/
├── notebooks/
├── sql/
├── .gitignore
└── README.md
