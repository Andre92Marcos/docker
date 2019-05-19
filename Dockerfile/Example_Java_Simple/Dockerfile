FROM openjdk:8
ADD target/twg.selenium-*.jar /app.jar

ENTRYPOINT ["java", "-Xdebug", "-Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005", "-jar", "/app.jar"]