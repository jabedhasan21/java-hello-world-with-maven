FROM ibmjava:8-sdk-alpine AS build

COPY src src
COPY pom.xml .
RUN mvn -f pom.xml clean package install
COPY --from=build /target /opt/target

