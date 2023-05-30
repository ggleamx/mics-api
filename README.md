 docker-compose build --no-cache

# Proyecto de Microservicios con Spring Boot
Este es un proyecto de ejemplo que utiliza la arquitectura de microservicios con Spring Boot y Docker. Consiste en dos microservicios: service1 y service2.

# Estructura del proyecto
* service1: contiene el código fuente y configuración del microservicio 1.
* service2: contiene el código fuente y configuración del microservicio 2.
* pom.xml: archivo de configuración de Maven del proyecto principal.
* docker-compose.yml: archivo de configuración de Docker Compose para crear los contenedores de los microservicios.

# Estructura de cada microservicio

* src/main/java/com/example/serviceX: paquete que contiene las clases de Java.
* src/main/resources/application.properties: archivo de configuración de Spring Boot.
* Dockerfile: archivo de configuración de Docker para construir la imagen del microservicio.

# Instrucciones para ejecutar el proyecto
Clonar el repositorio:

bash
Copy code
git clone https://github.com/tu-usuario/proyecto-microservicios.git
Ubicarse en la carpeta raíz del proyecto:

bash
Copy code
cd proyecto-microservicios
Construir los artefactos de cada microservicio con Maven:

bash
Copy code
./mvnw clean package
Crear los contenedores de Docker de cada microservicio con Docker Compose:

Copy code
docker-compose up
Acceder a los microservicios en los siguientes puertos:

service1: http://localhost:8080
service2: http://localhost:8081
Detener y eliminar los contenedores de Docker:

Copy code
docker-compose down
Tecnologías utilizadas
Java 17
Spring Boot 2.6.3
Maven 3.8.4
Docker 20.10.12
Docker Compose 1.29.2


