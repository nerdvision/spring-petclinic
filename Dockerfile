FROM openjdk:10

COPY target/sprint-petclinic*.jar /opt/nerd/sprint-petclinic.jar
ADD https://get.nerd.vision/java/latest/nerdvision.jar /opt/nerd/nerdvision.jar

EXPOSE 8080

CMD ["java", "-javaagent:/opt/nerd/nerdvision.jar", "-jar", "/opt/nerd/sprint-petclinic.jar"]
