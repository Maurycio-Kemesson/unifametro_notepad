# Etapa 1 - build
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Etapa 2 - runtime
FROM eclipse-temurin:17-jdk
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/target/unifametro_notepad_backend-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
