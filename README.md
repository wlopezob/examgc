# Examen Grupo Comercio
El examen esta dividio en dos carpetas:
* Examen01 : Contiene los problemas del 01 hasta el 03, desarrollado en PHP
* Examen02 : Contiene la aplicacion Web con SlimFramework y el gestor de dependencia composer, con base datos Mysql, dentro de la carpeta existen dos subcarpetas:
  - script: Contiene el modelo y script.sql de la base de datos en Mysql, ejecutar el script en la base de datos antes de ejecutar la aplicacion.
  - developersac: Es la carpeta de la aplicacion Web, realizar los siguientes pasos antes de ejecutarlo.
   1. Conexion.php: ubicado en la carpeta src, en la linea 16 modificar las credenciales de conexion a la base de datos Mysql
   2. Composer: Descargar todas las dependencias necesarias para ejecutar el proyecto, ejecutar la consola e ir a la carpeta: developersac, ejecutar los siguientes comandos:
    - composer install (puede ejecutar php composer.phar dependiendo de la instalacion del composer)
    - php -S 0.0.0.0:8080 -t public public/index.php (ejecutar la aplicacion y acceder directamente desde el navegador: localhost:8080)
    
