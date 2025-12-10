FROM eclipse-temurin:21-jdk
RUN apt update -y && apt install maven -y
WORKDIR /app
COPY . /app
RUN mvn clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "/app/target/spring-petclinic.jar"]
