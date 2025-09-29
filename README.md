# Foodtrack DB

Este repositorio contiene la definición de una base de datos para gestionar información de **foodtrucks**, sus ubicaciones, pedidos, productos y proveedores.

El proyecto se realizó con **PostgreSQL**, a través de DBeaver, y está versionado con **Git y GitHub** siguiendo buenas prácticas de **control de versiones**.

---

## Pasos realizados

### 1. En PosgreSQL (a través de DBeaver):

a. Análisis de los archivos .csv proporcionados:
. foodtrucks.csv(opens in a new tab)
. products.csv(opens in a new tab)
. orders.csv(opens in a new tab)
. order_items.csv(opens in a new tab)
. locations.csv(opens in a new tab)

b. Diseño de un modelo relacional a partir de los datos.

c. Creación de las tablas necesarias en PosgreSQL (a través de DBeaver): 
foodtrucks, products, orders, order_items, locations

==> Desarrollo de la base de datos

* Se definieron las siguientes tablas:

  * `foodtruck`
  * `locations`
  * `orders`
  * `orders_items`
  * `products`
* Se establecieron claves primarias y foráneas.
* Se aplicaron modificaciones posteriores con `ALTER TABLE` para relaciones y correcciones.
* Se agregaron registros de prueba (INSERT, UPDATE y DELETE).

### 2. Creación del repositorio en Github

* Se creó un repositorio público en GitHub llamado **foodtrack-db**.
* Se agregó un archivo inicial `README.md` con la descripción del caso.

### 3. Clonación del repositorio

* Desde Git Bash en Windows se ejecutó:

  ```bash
  git clone https://github.com/VaninaC2703/foodtrack-db.git
  cd foodtrack-db
  ```

### 4. Creación del archivo de script SQL **foodtrack.sql**

* Dentro de la carpeta del repositorio se creó el archivo:

  ```bash
  touch foodtrack.sql
  ```
* El archivo fue editado en **Visual Studio Code**, pegando el código SQL correspondiente.

### 5. Control de versiones con Git

* Por cada avance estructural (creación de tablas, relaciones, inserción de datos) se realizaron commits descriptivos.
* Ejemplo de comandos utilizados:

  ```bash
  git add foodtrack.sql
  git commit -m "Creación de tabla foodtruck"
  git push origin main
  ```
* Se repitió el ciclo hasta completar el script.

### 6. Verificación en GitHub

* Los cambios y commits fueron subidos al repositorio.
* En la pestaña **Commits** de GitHub se puede visualizar el historial del proyecto.

---

## Contenido del repositorio

* `README.md`: descripción del proyecto y pasos realizados.
* `foodtrack.sql`: script SQL con la creación de tablas, relaciones y datos de prueba.

---

## Autor

Proyecto realizado por **Vanina Cavallin** en su rol de Data Scientist.

d. Establecer claves primarias, foráneas y restricciones (NOT NULL, UNIQUE, etc.).

e. Guardar los scripts .sql en una carpeta /scripts
