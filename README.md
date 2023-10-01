# Argentina Programa - Proyecto 3
## Descripcion del proyecto 
Este proyecto es una aplicacion de servidor backend para una WebApp para Trailerflix, un catalogo de Shows y Peliculas.
Esta aplicacion contiene Restful API endpoints para consultar la base de datos de Trailerflix mediante peticiones HTTP y conseguir respuestas en formato JSON
El proyecto fue desarrollado con Node.JS, MySQL y Sequelize 

## Requisitos previos
Esta aplicacion utiliza Node.JS y MySQL, asi que se necesita de las siguientes configuraciones para su funcionamiento:

## Instalación
### 1. Clonar el proyecto a su entorno
1. Clona este repositorio:

   ```bash
   git clone https://github.com/MartinezMatiasMaximiliano/Projecto-3-NodeJS.git
   ```

2. Navega al directorio del proyecto:

   ```bash
   cd repo...
   ```

3. Instala las dependencias:

   ```bash
   npm install
   ```

4. Inicia el servidor:

   ```bash
   npm start
   o 
   npm run dev(para entorno de desarrollo)
   ```

La ruta base de la API sera `http://localhost:3000`.

### 2. Archivo `.env`
Crear un archivo de nombre `.env` en la raiz del proyecto, dentro agregar las siguientes variables de entorno:
### Configuración de la base de datos
```plaintext
DB_HOST=localhost
DB_PORT={puerto configurado para MySQL, 3306 por defecto}
DB_NAME={nombre de la schema}(trailerflix)
DB_USER={username de la conexion a MySQL}
DB_PASSWORD={contraseña MySQL}
```

### 3.Importar la base de datos MySQL
Esta aplicacion necesita de una base de datos local para funcionar. Para esto se encuentran los archivos necesarios en la carpeta MySQL del proyecto:

```plaintext
.../MySQL/trailerflix.sql
.../MySQL/trailerflix-backup.sql
```
Estos archivos contienen las opciones para importar la base de datos necesaria: El archivo `trailerflix.sql` contiene la Query para crear las tablas vacias, y el archivo `trailerflix-backup.sql` es para importar la base de datos y su contenido mediante la interfaz grafica MySQL Workbench.

En caso de que las vistas no se creen al importar el backup, el SQL requerido para crearla se encuentra en `SQLcatalogoView.sql`, esta vista es necesaria para buscar el catalogo

Crear un schema bajo el titulo de "trailerflix" e importar mediante la herramienta de importacion

Una vez clonado el proyecto, creado el archivo `.env` e importada la base de datos, el servidor esta listo para su uso.

## Endpoints
las consultas a la base de datos se hacen mediante Endpoints: 


|URI                           |  METHOD |  DESCRIPCION                |
|:-----------------------------|:-------:|:----------------------------|
|/catalogo                     |GET      |buscar todo el catalogo      |
|/catalogo/id/:id              |GET      |buscar catalogo por id       |
|/catalogo/titulo/:titulo      |GET      |buscar catalogo por titulo   |
|/catalogo/generos/:genero     |GET      |buscar catalogo por genero   | 
|/catalogo/categoria/:categoria|GET      |buscar catalogo por categoria|
|/categorias                   |GET      |buscar todas las categorias  |
|/actores                      |GET      |buscar todos los actores     |
|/actores/:nombre              |GET      |buscar actores por nombre    |
|/categoria                    |POST     |insertar una nueva categoria |

### Catalogo
#### Buscar todo el catalogo

- **URL**: `/catalogo`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
  - **Ejemplo de Respuesta**:

 ```json
[
 {
      "id": 1,
      "poster": ". . .",
      "titulo":  ". . .",
      "categoria":  ". . .",
      "genero":  ". . .",
      "resumen":  ". . .",
      "temporadas":  ". . .",
      "reparto":  ". . .",
      },
{
      "id": 2,

      },
 ]  
```

#### Buscar el catalogo por un Id numerico
- **URL**: `/catalogo/id/:id`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
  - **Ejemplo de Respuesta**:

 ```json
{
  "id": 1,
  "poster": "/posters/1.jpg",
  "titulo": "The Crown",
  "categoria": "Serie",
  "genero": "Drama,Hechos verídicos",
  "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
  "temporadas": 4,
  "reparto": "Claire Fox,Helena Bonham Carter,Matt Smith,Olivia Colman,Tobias Menzies,Vanesa Kirby",
  "trailer": null
}

 ```

#### Buscar el catalogo por Titulo
- **URL**: `/catalogo/titulo/:titulo`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
  - **Ejemplo de Respuesta**:

 ```json
{
  "id": 1,
  "poster": "/posters/1.jpg",
  "titulo": "The Crown",
  "categoria": "Serie",
  "genero": "Drama,Hechos verídicos",
  "resumen": "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",
  "temporadas": 4,
  "reparto": "Claire Fox,Helena Bonham Carter,Matt Smith,Olivia Colman,Tobias Menzies,Vanesa Kirby",
  "trailer": null
}
 ```

#### Buscar el catalogo por Genero
- **URL**: `/catalogo/generos/:genero`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
 #### Buscar el catalogo por una Categoria 
- **URL**: `/catalogo/categoria/:categoria`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK

### Categorias
#### Buscar todas las categorias
- **URL**: `/categorias`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
  - **Ejemplo de Respuesta**:

 ```json
[
  {
    "idCategoria": 1,
    "categoria": "Serie"
  },
  {
    "idCategoria": 2,
    "categoria": "Película"
  },
  {
    "idCategoria": 3,
    "categoria": "Documental"
  }
]
 ```

 #### Insertar una categoria
- **URL**: `/categoria`
- **Método**: `POST`
- **Cuerpo de la peticion**:
 ```json
[
    {
        "categoria":"nombre de categoria" 
    }
]
 ```
 El Id de la categoria es agregado automaticamente
- **Respuesta Exitosa**:
  - **Código**: 201 CREATED
  - **Ejemplo de Respuesta**:

 ```json
[
    {
        "message":"creado con exito",
        "categoria":"nombre de categoria" 
    }
]
 ```
### Actores

#### Buscar todos los actores
- **URL**: `/actores`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
  - **Ejemplo de Respuesta**:

 ```json
[
  {
    "idPersona": 1,
    "nombre": "Claire Fox"
  },
  {
    "idPersona": 2,
    "nombre": "Olivia Colman"
  },
  {
    "idPersona": 3,
    "nombre": "Matt Smith"
  },
  {
    "idPersona": 4,
    "nombre": "Tobias Menzies"
  },
]
 ```


#### Buscar un actor o actriz por su nombre
- **URL**: `/actores/:nombre`
- **Método**: `GET`
- **Respuesta Exitosa**:
  - **Código**: 200 OK
  - **Ejemplo de Respuesta**:

 ```json
[
  {
    "idPersona": 145,
    "nombre": "Matt Damon"
  },
  {
    "idPersona": 72,
    "nombre": "Matt LeBlanc"
  },
  {
    "idPersona": 3,
    "nombre": "Matt Smith"
  },
  {
    "idPersona": 71,
    "nombre": "Matthew Perry"
  }
]
 ```
## Sobre la base de datos
La base de datos de Trailerflix es una base de datos relacional con la siguiente estructura:
 ![ER](/MySQL/db1.png)

