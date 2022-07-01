FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /target/original-Spring-Full-Security-1.0-SNAPSHOT.war app.war
RUN sh -c 'touch app.war'
EXPOSE 8443
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
