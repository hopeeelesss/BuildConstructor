FROM maven:3.8.3-openjdk-17 AS build
COPY src /home/build_constructor_server/src
COPY pom.xml /home/build_constructor_server
WORKDIR /home/build_constructor_server
RUN mvn clean install -DskipTests=true

FROM eclipse-temurin:17.0.7_7-jre-jammy
RUN apt install curl
EXPOSE 8080
COPY --from=build /home/build_constructor_server/target/BuildConstructor-0.0.1-SNAPSHOT.jar /usr/local/lib/build_constructor_server.jar
ENTRYPOINT ["java", "-jar", "/usr/local/lib/build_constructor_server.jar"]