FROM openjdk:17

ARG FILE_JAR=target/*.jar

ADD ${FILE_JAR} demo-docker.jar

ENTRYPOINT ["java", "-jar", "demo-docker.jar"]

EXPOSE 8888