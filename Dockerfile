FROM eclipse-temurin:17-jdk-alpine

ENV SPRING_DATASOURCE_HOST_NAME=localhost
ENV SPRING_DATASOURCE_PORT=27017
ENV SPRING_DATASOURCE_DATABASE_NAME=product-service

WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]