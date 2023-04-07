#!/bin/bash

# Crea la carpeta para el primer microservicio
mkdir -p service1/src/main/java/com/mics/service1
mkdir -p service1/src/main/resources
touch service1/src/main/java/com/mics/service1/Main.java
touch service1/src/main/java/com/mics/service1/Controller.java
touch service1/src/main/resources/application.properties
touch service1/Dockerfile

# Genera el contenido de los archivos del primer microservicio
cat <<EOT >> service1/src/main/java/com/mics/service1/Main.java
package com.mics.service1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Main {

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }

}
EOT

cat <<EOT >> service1/src/main/java/com/mics/service1/Controller.java
package com.mics.service1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/hello")
    public String hello() {
        return "Hello from Service 1!";
    }

}
EOT

cat <<EOT >> service1/src/main/resources/application.properties
server.port=8080
EOT

cat <<EOT >> service1/Dockerfile
FROM openjdk:17-alpine

WORKDIR /

COPY target/service1-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
EOT

# Crea la carpeta para el segundo microservicio
mkdir -p service2/src/main/java/com/mics/service2
mkdir -p service2/src/main/resources
touch service2/src/main/java/com/mics/service2/Main.java
touch service2/src/main/java/com/mics/service2/Controller.java
touch service2/src/main/resources/application.properties
touch service2/Dockerfile

# Genera el contenido de los archivos del segundo microservicio
cat <<EOT >> service2/src/main/java/com/mics/service2/Main.java
package com.mics.service2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Main {

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }

}
EOT

cat <<EOT >> service2/src/main/java/com/mics/service2/Controller.java
package com.mics.service2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/hello")
    public String hello() {
        return "Hello from Service 2!";
    }

}
EOT

cat <<EOT >> service2/src/main/resources/application.properties
server.port=8081
EOT

cat <<EOT >> service2/Dockerfile
FROM openjdk:17-alpine

WORKDIR /

COPY target/service2-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java","-jar","app.jar"]
EOT

# Crea el archivo docker-compose.yml
cat <<EOT >> docker-compose.yml
version: "3.9"
services:
  service1:
    build:
      context: ./service1
    ports:
      - "8080:8080"
  service2:
    build:
      context: ./service2
    ports:
      - "8081:8081"
EOT
