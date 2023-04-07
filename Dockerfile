# Usar una imagen base que contenga Java Runtime Environment (JRE)
FROM eclipse-temurin:17 as jre-build

# Establecer el directorio de trabajo actual en el root del contenedor
WORKDIR /

# Copiar el archivo jar compilado de la aplicación en el contenedor
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto 8080 del contenedor
EXPOSE 8080

# Establecer el comando de entrada para ejecutar la aplicación Spring Boot en el contenedor
ENTRYPOINT ["java","-jar","app.jar"]