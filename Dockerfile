FROM openjdk:21-slim
RUN apt update -y && apt install maven -y
WORKDIR /app
COPY . /app
RUN cd /app/src/ && mvn clean package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "/app/target/spring-petclinic.jar"]
