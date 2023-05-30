FROM openjdk:17
# Instala Maven

WORKDIR /
# Instala apt-utils
COPY ./target/*.jar ./app/target/auth-service-app.jar

# This is the active profile (dev, test, prod) to use for the application
ENV SPRING_PROFILES_ACTIVE=prod

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","./app/target/auth-service-app.jar"]
