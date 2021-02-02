FROM openjdk:10

COPY target/spring-petclinic-2.4.2.jar /opt/nerd/spring-petclinic.jar
ADD https://get.nerd.vision/java/latest/nerdvision.jar /opt/nerd/nerdvision.jar

EXPOSE 8080

CMD ["java", "-javaagent:/opt/nerd/nerdvision.jar", "-jar", "/opt/nerd/spring-petclinic.jar"]
