FROM maven:3.6.3-ibmjava-8-alpine AS build

COPY src src
COPY pom.xml .
RUN mvn -f pom.xml clean package install
RUN ls
RUN cd target
RUN ls

