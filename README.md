# Curso de Introducción a Ruby on Rails

## CURSO 1 - Introducción a Ruby on Rails
En este curso vamos a explorar cómo construir aplicaciones con el framework para aplicaciones web: Ruby on Rails. Esto significa construir aplicaciones rápido. 
Al final de este curso, el desarrollador estará capacitado para construir una aplicación web significativa y desplegarla localmente.

Este curso no incluirá aún interacción con la base de datos. Se obtendrán los datos de web services que nos provean los datos necesarios para desarrollar la aplicación. 
### Módulo 1 - Configuración de Ambiente de Desarrollo
En este módulo vamos a instalar el software requerido para desarrollar aplicaciones en Ruby on Rails. Vamos a mostrar el uso de un editor comúnmente utilizado para el desarrollo de aplicaciones Ruby on Rails llamado “Sublime Text”.
Finalizamos este módulo familiarizándonos con el sistema de control de versiones “Git”que será luego utilizado en el curso para enviar nuestras tareas.

* Explicación:  Repositorio Github / Módulo 1. 
* Instalación del software para SO definido
* Editores e IDES para Ruby on Rails. 
* Introducción a Git.
* Repositorio Local Git.
* Repositorio Remoto Git.

### Módulo 2 - Introducción a Ruby
En este módulo vamos a explorar las distintas áreas del lenguaje de programación Ruby. 
Vamos a empezar con lo básico y continuar con tópicos más avanzados, como arrays y hashes. También vamos a invertir tiempo en explorar la programación orientada a objetos de Ruby, y finalizar el módulo demostrando cómo realizar una prueba unitaria. 

* Ruby Basics. 
* Flujos de control 
* Funciones.
* Bloques. 
* Archivos.
* Cadenas. 
* Arrays. 
* Rangos. 
* Hashes.
* Clases. 
* Herencia. 
* Módulos.
* Scopes. 
* Control de acceso. 
* Introducción a pruebas unitarias. 
* Introducción a RSpec. 
* Rspec Matchers.

### Módulo 3 - Introducción a Ruby on Rails
En este módulo vamos a familiarizarnos con los conceptos básicos detrás de Ruby on Rails, como CoC (Convention over configuration) y MVC (Model-View-Controller).
Vamosa  aprender sobre API Json con HTTParty, una gema de ruby. Posteriormente vamos a integrar esta habilidad de consumir una API JSON para utilizarlo como capa de datos en nuestra aplicación Rails. 

Finalmente, para concluir este módulo vamos a desplegar la aplicación localmente y vamos a escribir una prueba unitaria que verificará la funcionalidad deseada. 

* Explicación:  Repositorio Github / Módulo 2.
* Introducción a Rails. 
* Creando la primera aplicación. 
* Controlador y Vista. 
* Rutas. 
* Moviendo la lógica de negocios fuera de las vistas. 
* Helpers. 
* Introducción a HTTParty. 
* Bundler
* Integración de Rails & HTTParty. 
* CSS, Parámetros y Root Path. 
* Desplegando localmente.
* Pruebas de Caja Negra. 
* Debugging de Aplicaciones Rails. 
* Tarea de programación.

## COURSE 2
### Rails con Active Record y Action Pack
A esta altura ya sabemos cómo construir una aplicación web básica en Ruby on Rails. En el primer curso utilizamos servicios web externos como capa de datos. Pero todos sabemos que siempre es necesario tener conocimientos SQL para interactuar con nuestra propia base de datos relacional. Pero existe una forma más fácil de iniciar con SQL utilizando el framework ORM Active Record. En este curso seremos capaces de utilizar el lenguaje Ruby y el ORM Active Record para automatizar las interacciones con la base de datos y rápidamente construir la aplicación que queremos. 

En Rails con Active Record y Action Pack, vamos a explorar cómo interactuar con bases de datos relacionales utilizando Active Record, una gema de Ruby, que Rails utiliza por defecto para el acceso a la base de datos. Vamos a descubrir qué papel juega Active Record en el ciclo request-response, cuando un cliente(desde el navegador) solicita datos al servidor, y también como enviar datos al servidor. Por supuesto, cuando accedemos a los datos, la seguridad es de mucha importancia, por lo que hablaremos de algunas vulnerabilidades como SQL Injection, y también de la autenticación y autorización de los usuarios que acceden a los datos. 

### Módulo 1 - Introducción a Active Record. 
En este módulo, vamos a explorar la porción de Rails que interactúa con la base de datos. Vamos a empezar con las migraciones que nos permiten crear y modificar el esquema de la base de datos. Luego moveremos el foco a la utilización de la gema Active Record que Rails utiliza, que nos habilita a crear, obtener, actualizar y borrar datos de la base de datos.

* Explicación:  Repositorio Github / Módulo 1.
* Scaffolding
* Configuración de la base de datos y SQLite
* Introducción a los Migrations.
* Dispatch dinámico. 
* Métodos dinámicos.
* Métodos Fantasmas. 
* Introducción a Active Record
* Active Record CRUD.
* Assignment: CRUD Básico con Active Record. 

### Módulo 2 - Profundizando Active Record. 
## Profundizando Active Record
En este módulo, vamos a continuar explorando Active Record y conociendo como formas de codificar consultas avanzadas sin exponernos al riesgo del SQL Injection (También estudiaremos qué es SQL Injection). Vamos a conocer cómo expresar las relaciones entre entidades en Active Record y como validar los datos que están siendo guardados en la base de datos. 

* Seed de la base de datos. 
* Fragmentos SQL y Peligros del SQL Injection. 
* Sintaxis de condiciones hash y arrays. 
* Asociaciones one-to-one
* Asociaciones one-to-many
* Asociaciones many-to-many
* Asociaciones many-to-many complejas. 
* Active Record scopes. 
* Validaciones. 
* Transacciones de base de datos. 
* Tarea: Relaciones Active Record. 

### Módulo 3 - Introducción a Action Pack 
En este módulo vamos a introducir Action Pack de rails, que es una combinación de Action controller y Action View. Vamos a ver cómo REST ha influido en el ruteo de una aplicación Rails y también vamos a hablar parcialmente de los form helpers, y layouts. 
* Explicación:  Repositorio Github / Módulo 3.
* Introducción a Action Pack
* Rest & Rails
* Acciones Restful: Index
* Acciones Restful: Show and Destroy
* Acciones Restful: New and Create
* Parámetros duros en requests. 
* Partials. 
* Forms Helpers y Layout. 

### Módulo 4 - Seguridad y Recursos Anidados en Action Pack
En este módulo vamos a hablar sobre cómo lidiar con los recursos anidados en Rails. Vamos a hablar luego sobre la seguridad de la aplicación utilizando una combinación de user/password para propósitos de autenticación y autorización. El módulo finaliza mostrando cómo paginar los resultados y deployando la aplicación localmente. 
* Explicación:  Repositorio Github / Módulo 4.
* Construyendo una aplicación con muchos recursos. 
* Recursos anidados. 
* Autenticación. 
* Sesiones HTTP y Cookies. 
* Sesiones: Controller y View. 
* Autorización. 
* Paginación. 
* Despliegue de la aplicación. 
* Sidekiq
* Habilitación de SSL. 
