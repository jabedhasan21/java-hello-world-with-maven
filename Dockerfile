FROM maven as base
WORKDIR /app
COPY . .
RUN mvn clean package
CMD ["java", "-jar", "target/jb-hello-world-maven-0.2.0.jar"]