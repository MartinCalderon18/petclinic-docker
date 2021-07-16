FROM openjdk:8-jdk-alpine
EXPOSE 8080
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY target/spring-petclinic-2.4.2.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]