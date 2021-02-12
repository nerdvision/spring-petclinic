FROM openjdk:10

COPY target/spring-petclinic-2.4.2.jar /opt/nerd/spring-petclinic.jar
ADD https://get.nerd.vision/java/latest/nerdvision.jar /opt/nerd/nerdvision.jar
ADD https://dtdg.co/latest-java-tracer /opt/nerd/dd-java-agent.jar

EXPOSE 8080

CMD ["java", "-javaagent:/opt/nerd/dd-java-agent.jar", "-javaagent:/opt/nerd/nerdvision.jar", "-Ddd.profiling.enabled=true", "-Ddd.logs.injection=true", "-Ddd.service=spring.petclinic", "-Ddd.env=demo", "-jar", "/opt/nerd/spring-petclinic.jar"]
