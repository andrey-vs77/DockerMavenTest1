FROM openjdk
MAINTAINER cdc895642
EXPOSE 5000
RUN apt-get update && apt-get install -y maven
COPY . /home/MavenTest
RUN cd /home/MavenTest && mvn install
CMD ["java", "-jar", "/home/MavenTest/target/maven-test-1.0-SNAPSHOT.jar"]