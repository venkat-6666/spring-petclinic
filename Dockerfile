FROM openjdk:21
WORKDIR /app
COPY . /app
RUN mvn clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "/app/target/spring-petclinic.jar"]
